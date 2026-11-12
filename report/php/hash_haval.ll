Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_haval?download=true
inline.NumInlined: 23
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@PHP_3HAVALTransform:.preheader112.preheader
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr @M6, i64 %indvars.iv124
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !23
  %i.gd = sext i16 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !13
  %i.gg = and i32 %i.gf, %i.fl
  %i.gh = xor i32 %i.ga, %i.gg
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr @M0, i64 %indvars.iv124
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !23
  %i.gk = sext i16 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !13 ; 2 uses
  %i.gn = and i32 %i.gm, %i.fl
  %i.go = xor i32 %i.gh, %i.gn
  %i.gp = xor i32 %i.go, %i.gm                    ; 2 uses
  %i.gq = tail call i32 @llvm.fshl.i32(i32 %i.gp, i32 %i.gp, i32 25)
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr @M7, i64 %indvars.iv124
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !23
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !13 ; 2 uses
  %i.gw = tail call i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 21)
  %i.gx = add i32 %i.gq, %i.gw
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @I3, i64 %indvars.iv124
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !23
  %i.ha = sext i16 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !13
  %i.hd = add i32 %i.gx, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @K3, i64 %indvars.iv124
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !13
  %i.hg = add i32 %i.hd, %i.hf
  %i.hh = and i64 %indvars.iv124, 7
  %i.hi = xor i64 %i.hh, 7
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hi
  store i32 %i.hg, ptr %i.hj, align 4, !tbaa !13
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, 32
  br i1 %exitcond127.not, label %.preheader.preheader, label %.preheader110, !llvm.loop !26

.preheader.preheader:                             ; preds = %.preheader110
  %i.hk = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.hl = load <4 x i32>, ptr %0, align 4, !tbaa !13
  %i.hm = add <4 x i32> %i.hl, %i.hk
  store <4 x i32> %i.hm, ptr %0, align 4, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load <4 x i32>, ptr %i.hn, align 16, !tbaa !13
  %i.hq = load <4 x i32>, ptr %i.ho, align 4, !tbaa !13
  %i.hr = add <4 x i32> %i.hq, %i.hp
  store <4 x i32> %i.hr, ptr %i.ho, align 4, !tbaa !13
  call void @explicit_bzero(ptr noundef nonnull %i.b, i64 noundef 128) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL160Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 160, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL160Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %i.e
  %i.j = or disjoint i8 %i.i, 1
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  %i.k = lshr i16 %i.g, 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 127                        ; 5 uses
  %i.t = icmp samesign ult i32 %i.s, 118
  %.v = select i1 %i.t, i32 118, i32 246
  %i.u = sub nsw i32 %.v, %i.s                    ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = shl nsw i32 %i.u, 3                      ; 2 uses
  %i.x = add i32 %i.w, %i.q                       ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !13
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %i.ab = zext i1 %i.y to i32
  %i.ac = lshr i32 %i.u, 29
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !13
  %i.af = sub nuw nsw i32 128, %i.s               ; 2 uses
  %.not.i = icmp ult i32 %i.u, %i.af
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  tail call void %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #6, !inline_history !22
  %i.am = add nuw nsw i64 %i.ag, 127
  %i.an = icmp samesign ult i64 %i.am, %i.v
  br i1 %i.an, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ag, %bb.a ] ; 3 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.ao(ptr noundef nonnull %1, ptr noundef nonnull %i.ap) #6, !inline_history !22
  %i.aq = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.ar = add nuw nsw i64 %.033.i, 255
  %i.as = icmp samesign ult i64 %i.ar, %i.v
  br i1 %i.as, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.at = zext nneg i32 %i.s to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.a ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i
  %i.aw = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ax = sub i64 %i.v, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !13  ; 3 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.az, 127                      ; 4 uses
  %i.bb = add i32 %i.ay, 80
  store i32 %i.bb, ptr %i.o, align 8, !tbaa !13
  %i.bc = icmp ugt i32 %i.ay, -81
  %i.bd = load i32, ptr %i.z, align 4, !tbaa !13
  %i.be = zext i1 %i.bc to i32
  %i.bf = add i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.z, align 4, !tbaa !13
  %.not.i39 = icmp samesign ult i32 %i.ba, 118
  br i1 %.not.i39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bg = sub nuw nsw i32 128, %i.ba
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  tail call void %i.bl(ptr noundef nonnull %1, ptr noundef nonnull %i.au) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit44

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bm = zext nneg i32 %i.ba to i64
  br label %PHP_HAVALUpdate.exit44

PHP_HAVALUpdate.exit44:                           ; preds = %bb.d, %bb.c
  %.030.i40 = phi i64 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.1.i41 = phi i64 [ 0, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i41
  %i.bp = sub nuw nsw i64 10, %.1.i41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13 ; 5 uses
  %i.bu = and i32 %i.bt, 520192
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ca = load i32, ptr %i.bq, align 4, !tbaa !13 ; 5 uses
  %i.cb = and i32 %i.ca, -33554432
  %i.cc = load i32, ptr %i.br, align 8, !tbaa !13 ; 5 uses
  %i.cd = and i32 %i.cc, 33030144
  %i.ce = or disjoint i32 %i.cd, %i.cb
  %i.cf = or disjoint i32 %i.ce, %i.bu
  %i.cg = lshr exact i32 %i.cf, 12
  %i.ch = add i32 %i.cg, %i.bw
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !13
  %i.ci = and i32 %i.ca, 33030144
  %i.cj = and i32 %i.cc, 520192
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = and i32 %i.bt, 4032
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = lshr exact i32 %i.cm, 6
  %i.co = and i32 %i.ca, 520192
  %i.cp = and i32 %i.cc, 4032
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = and i32 %i.bt, 63
  %i.cs = or disjoint i32 %i.cq, %i.cr
  %i.ct = and i32 %i.ca, 4032
  %i.cu = and i32 %i.cc, 63
  %i.cv = or disjoint i32 %i.cu, %i.ct
  %i.cw = and i32 %i.bt, -33554432
  %i.cx = or disjoint i32 %i.cv, %i.cw            ; 2 uses
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 7)
  %i.cz = and i32 %i.ca, 63
  %i.da = and i32 %i.cc, -33554432
  %i.db = or disjoint i32 %i.da, %i.cz
  %i.dc = and i32 %i.bt, 33030144
  %i.dd = or disjoint i32 %i.db, %i.dc            ; 2 uses
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 13)
  %i.df = load <4 x i32>, ptr %1, align 8, !tbaa !13
  %i.dg = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.cy, i64 1
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.cs, i64 2
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.cn, i64 3
  %i.dk = add <4 x i32> %i.dj, %i.df              ; 2 uses
  store <4 x i32> %i.dk, ptr %1, align 8, !tbaa !13
  %i.dl = bitcast <4 x i32> %i.dk to <16 x i8>
  %i.dm = extractelement <16 x i8> %i.dl, i64 0
  store i8 %i.dm, ptr %0, align 1, !tbaa !21
  %i.dn = load i32, ptr %1, align 8, !tbaa !13
  %i.do = lshr i32 %i.dn, 8
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !21
  %i.dr = load i32, ptr %1, align 8, !tbaa !13
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %1, align 8, !tbaa !13
  %i.dw = lshr i32 %i.dv, 24
  %i.dx = trunc nuw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !21
  %i.dz = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !21
  %i.ec = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.ed = lshr i32 %i.ec, 8
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !21
  %i.eg = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %2 = load i32, ptr %i.bz, align 4, !tbaa !13
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %4, ptr %i.ek, align 1, !tbaa !21
  %i.el = load i32, ptr %i.by, align 8, !tbaa !13
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.em, ptr %i.en, align 1, !tbaa !21
  %i.eo = load i32, ptr %i.by, align 8, !tbaa !13
  %i.ep = lshr i32 %i.eo, 8
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !21
  %i.es = load i32, ptr %i.by, align 8, !tbaa !13
  %i.et = lshr i32 %i.es, 16
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !21
  %5 = load i32, ptr %i.by, align 8, !tbaa !13
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %7, ptr %i.ew, align 1, !tbaa !21
  %i.ex = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !21
  %i.fa = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.fb = lshr i32 %i.fa, 8
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !21
  %i.fe = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.ff = lshr i32 %i.fe, 16
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !21
  %8 = load i32, ptr %i.bx, align 4, !tbaa !13
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %10, ptr %i.fi, align 1, !tbaa !21
  %i.fj = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !21
  %i.fm = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.fn = lshr i32 %i.fm, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !21
  %i.fq = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !21
  %i.fu = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.fv = lshr i32 %i.fu, 24
  %i.fw = trunc nuw i32 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL192Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 192, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL192Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %i.e
  %i.j = or disjoint i8 %i.i, 1
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  %i.k = lshr i16 %i.g, 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 127                        ; 5 uses
  %i.t = icmp samesign ult i32 %i.s, 118
  %.v = select i1 %i.t, i32 118, i32 246
  %i.u = sub nsw i32 %.v, %i.s                    ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = shl nsw i32 %i.u, 3                      ; 2 uses
  %i.x = add i32 %i.w, %i.q                       ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !13
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %i.ab = zext i1 %i.y to i32
  %i.ac = lshr i32 %i.u, 29
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !13
  %i.af = sub nuw nsw i32 128, %i.s               ; 2 uses
  %.not.i = icmp ult i32 %i.u, %i.af
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  tail call void %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #6, !inline_history !22
  %i.am = add nuw nsw i64 %i.ag, 127
  %i.an = icmp samesign ult i64 %i.am, %i.v
  br i1 %i.an, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ag, %bb.a ] ; 3 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.ao(ptr noundef nonnull %1, ptr noundef nonnull %i.ap) #6, !inline_history !22
  %i.aq = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.ar = add nuw nsw i64 %.033.i, 255
  %i.as = icmp samesign ult i64 %i.ar, %i.v
  br i1 %i.as, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.at = zext nneg i32 %i.s to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.a ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i
  %i.aw = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ax = sub i64 %i.v, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !13  ; 3 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.az, 127                      ; 4 uses
  %i.bb = add i32 %i.ay, 80
  store i32 %i.bb, ptr %i.o, align 8, !tbaa !13
  %i.bc = icmp ugt i32 %i.ay, -81
  %i.bd = load i32, ptr %i.z, align 4, !tbaa !13
  %i.be = zext i1 %i.bc to i32
  %i.bf = add i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.z, align 4, !tbaa !13
  %.not.i33 = icmp samesign ult i32 %i.ba, 118
  br i1 %.not.i33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bg = sub nuw nsw i32 128, %i.ba
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  tail call void %i.bl(ptr noundef nonnull %1, ptr noundef nonnull %i.au) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit38

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bm = zext nneg i32 %i.ba to i64
  br label %PHP_HAVALUpdate.exit38

PHP_HAVALUpdate.exit38:                           ; preds = %bb.d, %bb.c
  %.030.i34 = phi i64 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.1.i35 = phi i64 [ 0, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i35
  %i.bp = sub nuw nsw i64 10, %.1.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !13 ; 4 uses
  %i.bz = extractelement <2 x i32> %i.by, i64 1   ; 4 uses
  %i.ca = and i32 %i.bz, -67108864
  %i.cb = extractelement <2 x i32> %i.by, i64 0   ; 4 uses
  %i.cc = and i32 %i.cb, 65011712
  %i.cd = or disjoint i32 %i.cc, %i.ca
  %i.ce = lshr exact i32 %i.cd, 21
  %i.cf = add i32 %i.ce, %i.bs
  store i32 %i.cf, ptr %i.br, align 4, !tbaa !13
  %i.cg = and i32 %i.bz, 65011712
  %i.ch = and i32 %i.cb, 2031616
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = lshr exact i32 %i.ci, 16
  %i.ck = add i32 %i.bu, %i.cj
  store i32 %i.ck, ptr %i.bt, align 8, !tbaa !13
  %i.cl = and i32 %i.bz, 2031616
  %i.cm = and i32 %i.cb, 64512
  %i.cn = or disjoint i32 %i.cm, %i.cl
  %i.co = lshr exact i32 %i.cn, 10
  %i.cp = and <2 x i32> %i.by, splat (i32 992)
  %i.cq = and <2 x i32> %i.by, <i32 31, i32 64512>
  %i.cr = shufflevector <2 x i32> %i.cq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = or disjoint <2 x i32> %i.cr, %i.cp      ; 2 uses
  %i.ct = extractelement <2 x i32> %i.cs, i64 0
  %i.cu = lshr exact i32 %i.ct, 5
  %i.cv = and i32 %i.bz, 31
  %i.cw = and i32 %i.cb, -67108864
  %i.cx = or disjoint i32 %i.cw, %i.cv            ; 2 uses
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 6)
  %i.cz = load <4 x i32>, ptr %1, align 8, !tbaa !13
  %i.da = shufflevector <2 x i32> %i.cs, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cy, i64 0
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cu, i64 2
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.co, i64 3
  %i.de = add <4 x i32> %i.cz, %i.dd              ; 2 uses
  store <4 x i32> %i.de, ptr %1, align 8, !tbaa !13
  %i.df = bitcast <4 x i32> %i.de to <16 x i8>
  %i.dg = extractelement <16 x i8> %i.df, i64 0
  store i8 %i.dg, ptr %0, align 1, !tbaa !21
  %i.dh = load i32, ptr %1, align 8, !tbaa !13
  %i.di = lshr i32 %i.dh, 8
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !21
  %i.dl = load i32, ptr %1, align 8, !tbaa !13
  %i.dm = lshr i32 %i.dl, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !21
  %i.dp = load i32, ptr %1, align 8, !tbaa !13
  %i.dq = lshr i32 %i.dp, 24
  %i.dr = trunc nuw i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !21
  %i.dt = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !21
  %i.dw = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !21
  %i.ea = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !21
  %2 = load i32, ptr %i.bx, align 4, !tbaa !13
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %4, ptr %i.ee, align 1, !tbaa !21
  %i.ef = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !21
  %i.ei = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !21
  %i.em = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.en = lshr i32 %i.em, 16
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !21
  %5 = load i32, ptr %i.bw, align 8, !tbaa !13
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %7, ptr %i.eq, align 1, !tbaa !21
  %i.er = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.es, ptr %i.et, align 1, !tbaa !21
  %i.eu = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !21
  %i.ey = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !21
  %8 = load i32, ptr %i.bv, align 4, !tbaa !13
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %10, ptr %i.fc, align 1, !tbaa !21
  %i.fd = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !21
  %i.fg = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !21
  %i.fk = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %i.fo = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.fp = lshr i32 %i.fo, 24
  %i.fq = trunc nuw i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !21
  %i.fs = load i32, ptr %i.br, align 4, !tbaa !13
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !21
  %i.fv = load i32, ptr %i.br, align 4, !tbaa !13
  %i.fw = lshr i32 %i.fv, 8
  %i.fx = trunc i32 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !21
  %i.fz = load i32, ptr %i.br, align 4, !tbaa !13
  %i.ga = lshr i32 %i.fz, 16
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %i.gd = load i32, ptr %i.br, align 4, !tbaa !13
  %i.ge = lshr i32 %i.gd, 24
  %i.gf = trunc nuw i32 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL224Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 224, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL224Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %i.e
  %i.j = or disjoint i8 %i.i, 1
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  %i.k = lshr i16 %i.g, 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 127                        ; 5 uses
  %i.t = icmp samesign ult i32 %i.s, 118
  %.v = select i1 %i.t, i32 118, i32 246
  %i.u = sub nsw i32 %.v, %i.s                    ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = shl nsw i32 %i.u, 3                      ; 2 uses
  %i.x = add i32 %i.w, %i.q                       ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !13
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %i.ab = zext i1 %i.y to i32
  %i.ac = lshr i32 %i.u, 29
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !13
  %i.af = sub nuw nsw i32 128, %i.s               ; 2 uses
  %.not.i = icmp ult i32 %i.u, %i.af
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  tail call void %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #6, !inline_history !22
  %i.am = add nuw nsw i64 %i.ag, 127
  %i.an = icmp samesign ult i64 %i.am, %i.v
  br i1 %i.an, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ag, %bb.a ] ; 3 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.ao(ptr noundef nonnull %1, ptr noundef nonnull %i.ap) #6, !inline_history !22
  %i.aq = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.ar = add nuw nsw i64 %.033.i, 255
  %i.as = icmp samesign ult i64 %i.ar, %i.v
  br i1 %i.as, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.at = zext nneg i32 %i.s to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.a ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i
  %i.aw = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ax = sub i64 %i.v, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !13  ; 3 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.az, 127                      ; 4 uses
  %i.bb = add i32 %i.ay, 80
  store i32 %i.bb, ptr %i.o, align 8, !tbaa !13
  %i.bc = icmp ugt i32 %i.ay, -81
  %i.bd = load i32, ptr %i.z, align 4, !tbaa !13
  %i.be = zext i1 %i.bc to i32
  %i.bf = add i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.z, align 4, !tbaa !13
  %.not.i27 = icmp samesign ult i32 %i.ba, 118
  br i1 %.not.i27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bg = sub nuw nsw i32 128, %i.ba
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  tail call void %i.bl(ptr noundef nonnull %1, ptr noundef nonnull %i.au) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit32

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bm = zext nneg i32 %i.ba to i64
  br label %PHP_HAVALUpdate.exit32

PHP_HAVALUpdate.exit32:                           ; preds = %bb.d, %bb.c
  %.030.i28 = phi i64 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.1.i29 = phi i64 [ 0, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i29
  %i.bp = sub nuw nsw i64 10, %.1.i29
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !13 ; 7 uses
  %i.bs = and i32 %i.br, 15
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.by = lshr i32 %i.br, 4
  %i.bz = lshr i32 %i.br, 9
  %i.ca = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.cb = insertelement <2 x i32> %i.ca, i32 %i.by, i64 1
  %i.cc = and <2 x i32> %i.cb, <i32 15, i32 31>
  %i.cd = load <2 x i32>, ptr %i.bx, align 8, !tbaa !13
  %i.ce = add <2 x i32> %i.cd, %i.cc
  store <2 x i32> %i.ce, ptr %i.bx, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ci = lshr i32 %i.br, 13
  %i.cj = lshr i32 %i.br, 18
  %i.ck = lshr i32 %i.br, 22
  %i.cl = lshr i32 %i.br, 27
  %i.cm = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.ck, i64 1
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.cj, i64 2
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.ci, i64 3
  %i.cq = and <4 x i32> %i.cp, <i32 -1, i32 31, i32 15, i32 31>
  %i.cr = load <4 x i32>, ptr %1, align 8, !tbaa !13
  %i.cs = add <4 x i32> %i.cr, %i.cq              ; 2 uses
  store <4 x i32> %i.cs, ptr %1, align 8, !tbaa !13
  %i.ct = bitcast <4 x i32> %i.cs to <16 x i8>
  %i.cu = extractelement <16 x i8> %i.ct, i64 0
  store i8 %i.cu, ptr %0, align 1, !tbaa !21
  %i.cv = load i32, ptr %1, align 8, !tbaa !13
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !21
  %i.cz = load i32, ptr %1, align 8, !tbaa !13
  %i.da = lshr i32 %i.cz, 16
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !21
  %i.dd = load i32, ptr %1, align 8, !tbaa !13
  %i.de = lshr i32 %i.dd, 24
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !21
  %i.dh = load i32, ptr %i.ch, align 4, !tbaa !13
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !21
  %i.dk = load i32, ptr %i.ch, align 4, !tbaa !13
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !21
  %i.do = load i32, ptr %i.ch, align 4, !tbaa !13
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !21
  %2 = load i32, ptr %i.ch, align 4, !tbaa !13
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %4, ptr %i.ds, align 1, !tbaa !21
  %i.dt = load i32, ptr %i.cg, align 8, !tbaa !13
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !21
  %i.dw = load i32, ptr %i.cg, align 8, !tbaa !13
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !21
  %i.ea = load i32, ptr %i.cg, align 8, !tbaa !13
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !21
  %5 = load i32, ptr %i.cg, align 8, !tbaa !13
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %7, ptr %i.ee, align 1, !tbaa !21
  %i.ef = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !21
  %i.ei = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !21
  %i.em = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.en = lshr i32 %i.em, 16
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !21
  %8 = load i32, ptr %i.cf, align 4, !tbaa !13
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %10, ptr %i.eq, align 1, !tbaa !21
  %i.er = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.es, ptr %i.et, align 1, !tbaa !21
  %i.eu = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !21
  %i.ey = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !21
  %11 = load i32, ptr %i.bx, align 8, !tbaa !13
  %12 = lshr i32 %11, 24
  %13 = trunc nuw i32 %12 to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %13, ptr %i.fc, align 1, !tbaa !21
  %i.fd = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !21
  %i.fg = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !21
  %i.fk = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %14 = load i32, ptr %i.bw, align 4, !tbaa !13
  %15 = lshr i32 %14, 24
  %16 = trunc nuw i32 %15 to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %16, ptr %i.fo, align 1, !tbaa !21
  %i.fp = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !21
  %i.fs = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !21
  %i.fw = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = trunc i32 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !21
  %i.ga = load i32, ptr %i.bt, align 8, !tbaa !13
  %i.gb = lshr i32 %i.ga, 24
  %i.gc = trunc nuw i32 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL256Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 256, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL256Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %i.e
  %i.j = or disjoint i8 %i.i, 1
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  %i.k = lshr i16 %i.g, 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 127                        ; 5 uses
  %i.t = icmp samesign ult i32 %i.s, 118
  %.v = select i1 %i.t, i32 118, i32 246
  %i.u = sub nsw i32 %.v, %i.s                    ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = shl nsw i32 %i.u, 3                      ; 2 uses
  %i.x = add i32 %i.w, %i.q                       ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !13
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %i.ab = zext i1 %i.y to i32
  %i.ac = lshr i32 %i.u, 29
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !13
  %i.af = sub nuw nsw i32 128, %i.s               ; 2 uses
  %.not.i = icmp ult i32 %i.u, %i.af
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  tail call void %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #6, !inline_history !22
  %i.am = add nuw nsw i64 %i.ag, 127
  %i.an = icmp samesign ult i64 %i.am, %i.v
  br i1 %i.an, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ag, %bb.a ] ; 3 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.ao(ptr noundef nonnull %1, ptr noundef nonnull %i.ap) #6, !inline_history !22
  %i.aq = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.ar = add nuw nsw i64 %.033.i, 255
  %i.as = icmp samesign ult i64 %i.ar, %i.v
  br i1 %i.as, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.at = zext nneg i32 %i.s to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.a ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i
  %i.aw = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ax = sub i64 %i.v, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !13  ; 3 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.az, 127                      ; 4 uses
  %i.bb = add i32 %i.ay, 80
  store i32 %i.bb, ptr %i.o, align 8, !tbaa !13
  %i.bc = icmp ugt i32 %i.ay, -81
  %i.bd = load i32, ptr %i.z, align 4, !tbaa !13
  %i.be = zext i1 %i.bc to i32
  %i.bf = add i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.z, align 4, !tbaa !13
  %.not.i13 = icmp samesign ult i32 %i.ba, 118
  br i1 %.not.i13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bg = sub nuw nsw i32 128, %i.ba
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  tail call void %i.bl(ptr noundef nonnull %1, ptr noundef nonnull %i.au) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit18

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bm = zext nneg i32 %i.ba to i64
  br label %PHP_HAVALUpdate.exit18

PHP_HAVALUpdate.exit18:                           ; preds = %bb.d, %bb.c
  %.030.i14 = phi i64 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.1.i15 = phi i64 [ 0, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i15
  %i.bp = sub nuw nsw i64 10, %.1.i15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bq = load i32, ptr %1, align 8, !tbaa !13
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %0, align 1, !tbaa !21
  %i.bs = load i32, ptr %1, align 8, !tbaa !13
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !21
  %i.bw = load i32, ptr %1, align 8, !tbaa !13
  %i.bx = lshr i32 %i.bw, 16
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !21
  %i.ca = load i32, ptr %1, align 8, !tbaa !13
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !21
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !21
  %i.cm = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cn = lshr i32 %i.cm, 16
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !21
  %2 = load i32, ptr %i.ce, align 4, !tbaa !13
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %4, ptr %i.cq, align 1, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !13
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !21
  %i.cv = load i32, ptr %i.cr, align 8, !tbaa !13
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !21
  %i.cz = load i32, ptr %i.cr, align 8, !tbaa !13
  %i.da = lshr i32 %i.cz, 16
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !21
  %5 = load i32, ptr %i.cr, align 8, !tbaa !13
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %7, ptr %i.dd, align 1, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !13
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !21
  %i.di = load i32, ptr %i.de, align 4, !tbaa !13
  %i.dj = lshr i32 %i.di, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !21
  %i.dm = load i32, ptr %i.de, align 4, !tbaa !13
  %i.dn = lshr i32 %i.dm, 16
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !21
  %8 = load i32, ptr %i.de, align 4, !tbaa !13
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %10, ptr %i.dq, align 1, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !13
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %i.dr, align 8, !tbaa !13
  %i.dw = lshr i32 %i.dv, 8
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !21
  %i.dz = load i32, ptr %i.dr, align 8, !tbaa !13
  %i.ea = lshr i32 %i.dz, 16
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !21
  %11 = load i32, ptr %i.dr, align 8, !tbaa !13
  %12 = lshr i32 %11, 24
  %13 = trunc nuw i32 %12 to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %13, ptr %i.ed, align 1, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !21
  %i.ei = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !21
  %i.em = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.en = lshr i32 %i.em, 16
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !21
  %14 = load i32, ptr %i.ee, align 4, !tbaa !13
  %15 = lshr i32 %14, 24
  %16 = trunc nuw i32 %15 to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %16, ptr %i.eq, align 1, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !13
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !21
  %i.ev = load i32, ptr %i.er, align 8, !tbaa !13
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !21
  %i.ez = load i32, ptr %i.er, align 8, !tbaa !13
  %i.fa = lshr i32 %i.ez, 16
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !21
  %17 = load i32, ptr %i.er, align 8, !tbaa !13
  %18 = lshr i32 %17, 24
  %19 = trunc nuw i32 %18 to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %19, ptr %i.fd, align 1, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !13
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !21
  %i.fi = load i32, ptr %i.fe, align 4, !tbaa !13
  %i.fj = lshr i32 %i.fi, 8
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !21
  %i.fm = load i32, ptr %i.fe, align 4, !tbaa !13
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !21
  %20 = load i32, ptr %i.fe, align 4, !tbaa !13
  %21 = lshr i32 %20, 24
  %22 = trunc nuw i32 %21 to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %22, ptr %i.fq, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_4HAVAL128Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 4, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 128, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_4HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_4HAVALTransform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
.preheader172.preheader:
  %i.a = alloca [8 x i32], align 16               ; 41 uses
  %i.b = alloca [32 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = load <4 x i32>, ptr %1, align 1
  store <4 x i32> %i.c, ptr %i.b, align 16, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <4 x i32>, ptr %i.d, align 1
  store <4 x i32> %i.f, ptr %i.e, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load <4 x i32>, ptr %i.g, align 1
  store <4 x i32> %i.i, ptr %i.h, align 16, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load <4 x i32>, ptr %i.j, align 1
  store <4 x i32> %i.l, ptr %i.k, align 16, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load <4 x i32>, ptr %i.m, align 1
  store <4 x i32> %i.o, ptr %i.n, align 16, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.r = load <4 x i32>, ptr %i.p, align 1
  store <4 x i32> %i.r, ptr %i.q, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.u = load <4 x i32>, ptr %i.s, align 1
  store <4 x i32> %i.u, ptr %i.t, align 16, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.x = load <4 x i32>, ptr %i.v, align 1
  store <4 x i32> %i.x, ptr %i.w, align 16, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa !13
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.preheader, %.preheader172
  %indvars.iv = phi i64 [ 0, %.preheader172.preheader ], [ %indvars.iv.next, %.preheader172 ] ; 11 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @M3, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !23
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @M1, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !23
  %i.af = sext i16 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = and i32 %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @M5, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !23
  %i.al = sext i16 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @M6, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !23
  %i.aq = sext i16 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = and i32 %i.as, %i.an
  %i.au = xor i32 %i.at, %i.ai
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @M4, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !23
  %i.ax = sext i16 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @M2, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !23
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = and i32 %i.be, %i.az
  %i.bg = xor i32 %i.au, %i.bf
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @M0, i64 %indvars.iv
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !23
  %i.bj = sext i16 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13 ; 2 uses
  %i.bm = and i32 %i.bl, %i.ac
  %i.bn = xor i32 %i.bg, %i.bm
  %i.bo = xor i32 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 25)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @M7, i64 %indvars.iv
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !23
  %i.bs = sext i16 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13 ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 21)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.by = add i32 %i.bx, %i.bv
  %i.bz = add i32 %i.by, %i.bp
  %i.ca = and i64 %indvars.iv, 7
  %i.cb = xor i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cb
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader171, label %.preheader172, !llvm.loop !27

.preheader171:                                    ; preds = %.preheader172, %.preheader171
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.preheader171 ], [ 0, %.preheader172 ] ; 12 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @M6, i64 %indvars.iv181
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !23
  %i.cf = sext i16 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr @M1, i64 %indvars.iv181
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !23
  %i.ck = sext i16 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13 ; 4 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @M0, i64 %indvars.iv181
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !23
  %i.cp = sext i16 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @M2, i64 %indvars.iv181
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !23
  %i.cu = sext i16 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @M5, i64 %indvars.iv181
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !23
  %i.cz = sext i16 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !13 ; 2 uses
  %i.dc = and i32 %i.db, %i.cw                    ; 2 uses
  %i.dd = and i32 %i.dc, %i.cm
  %i.de = and i32 %i.cw, %i.ch
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @M3, i64 %indvars.iv181
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !23
  %i.dh = sext i16 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13
  %i.dk = and i32 %i.dj, %i.cm
  %i.dl = and i32 %i.db, %i.cr
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @M4, i64 %indvars.iv181
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !23
  %i.do = sext i16 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !13 ; 2 uses
  %i.dr = and i32 %i.dq, %i.cm
  %i.ds = xor i32 %i.cr, -1
  %i.dt = and i32 %i.ch, %i.ds
  %i.du = and i32 %i.dt, %i.cm
  %i.dv = xor i32 %i.du, %i.de
  %i.dw = xor i32 %i.dv, %i.dd
  %i.dx = xor i32 %i.dw, %i.dl
  %i.dy = xor i32 %i.dx, %i.dk
  %i.dz = xor i32 %i.dy, %i.dr
  %i.ea = xor i32 %i.dz, %i.dc
  %i.eb = xor i32 %i.ea, %i.dq                    ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 25)
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @M7, i64 %indvars.iv181
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !23
  %i.ef = sext i16 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !13 ; 2 uses
  %i.ei = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 21)
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr @I2, i64 %indvars.iv181
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !23
  %i.el = sext i16 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !13
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @K2, i64 %indvars.iv181
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !13
  %i.eq = add i32 %i.en, %i.ei
  %i.er = add i32 %i.eq, %i.ep
  %i.es = add i32 %i.er, %i.ec
  %i.et = and i64 %indvars.iv181, 7
  %i.eu = xor i64 %i.et, 7
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu
  store i32 %i.es, ptr %i.ev, align 4, !tbaa !13
end_hunk_0
