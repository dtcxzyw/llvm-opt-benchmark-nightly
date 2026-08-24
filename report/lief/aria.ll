Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/aria?download=true
inline.NumInlined: 23
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@aria_fo_xor:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = xor i32 %i.g, %i.e                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  %i.m = xor i32 %i.l, %i.j                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = xor i32 %i.q, %i.o                       ; 4 uses
  %i.s = and i32 %i.c, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i32
  %i.x = lshr i32 %i.c, 8
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.ad, %i.w
  %i.af = lshr i32 %i.c, 16
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.ae, %i.al
  %i.an = lshr i32 %i.c, 24
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = or disjoint i32 %i.am, %i.as            ; 3 uses
  %i.au = and i32 %i.h, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i32
  %i.az = lshr i32 %i.h, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = or disjoint i32 %i.bf, %i.ay
  %i.bh = lshr i32 %i.h, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 16
  %i.bo = or disjoint i32 %i.bg, %i.bn
  %i.bp = lshr i32 %i.h, 24
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw i32 %i.bt, 24
  %i.bv = or disjoint i32 %i.bo, %i.bu            ; 3 uses
  %i.bw = and i32 %i.m, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i32
  %i.cb = lshr i32 %i.m, 8
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.ca
  %i.cj = lshr i32 %i.m, 16
  %i.ck = and i32 %i.cj, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.ci, %i.cp
  %i.cr = lshr i32 %i.m, 24
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !11
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 24
  %i.cx = or disjoint i32 %i.cq, %i.cw
  %i.cy = and i32 %i.r, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !11
  %i.dc = zext i8 %i.db to i32
  %i.dd = lshr i32 %i.r, 8
  %i.de = and i32 %i.dd, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = or disjoint i32 %i.dj, %i.dc
  %i.dl = lshr i32 %i.r, 16
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dk, %i.dr
  %i.dt = lshr i32 %i.r, 24
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 24
  %i.dz = or disjoint i32 %i.ds, %i.dy            ; 2 uses
  %i.ea = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 16) ; 2 uses
  %i.eb = tail call i32 @llvm.bswap.i32(i32 %i.cx) ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 16) ; 3 uses
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.dz) ; 2 uses
  %i.ee = xor i32 %i.ec, %i.bv
  %i.ef = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 16) ; 2 uses
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.ee) ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 16)
  %i.ei = xor i32 %i.eh, %i.ef
  %i.ej = xor i32 %i.ei, %i.ed                    ; 5 uses
  %i.ek = xor i32 %i.dz, %i.ec                    ; 3 uses
  %i.el = tail call i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 16)
  %i.em = tail call i32 @llvm.bswap.i32(i32 %i.ea) ; 2 uses
  %i.en = tail call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 16)
  %i.eo = xor i32 %i.en, %i.ef                    ; 2 uses
  %i.ep = xor i32 %i.ej, %i.ek
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep) ; 2 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 16)
  %i.es = tail call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 16)
  %i.et = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.ev = load i32, ptr %3, align 4, !tbaa !8
  %i.ew = xor i32 %i.ev, %i.er
  %i.ex = xor i32 %i.ew, %i.ea
  store i32 %i.ex, ptr %0, align 4, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8
  %i.fa = xor i32 %i.ez, %i.el
  %i.fb = xor i32 %i.fa, %i.at
  %i.fc = xor i32 %i.fb, %i.ej
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !8
  %i.fg = xor i32 %i.eu, %i.ff
  %i.fh = xor i32 %i.fg, %i.es
  %i.fi = xor i32 %i.fh, %i.ed
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !8
  %i.fm = xor i32 %i.fl, %i.et
  %i.fn = xor i32 %i.fm, %i.eo
  %i.fo = xor i32 %i.fn, %i.ec
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !8
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_aria_setkey_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @mbedtls_aria_setkey_enc(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 4, !tbaa !9       ; 4 uses
  %.not45 = icmp eq i8 %i.b, 0
  br i1 %.not45, label %.loopexit, label %.preheader40.lr.ph

.preheader40.lr.ph:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = zext i8 %i.b to i64
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.lr.ph, %.preheader40
  %indvars.iv47 = phi i64 [ 0, %.preheader40.lr.ph ], [ %indvars.iv.next48, %.preheader40 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.d, %.preheader40.lr.ph ], [ %indvars.iv.next, %.preheader40 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv47 ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.g = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.h = load <4 x i32>, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> %i.h, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> %i.g, ptr %i.f, align 4, !tbaa !8
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next48, %indvars.iv.next
  br i1 %i.i, label %.preheader40, label %.preheader, !llvm.loop !14

.preheader:                                       ; preds = %.preheader40
  %.not57 = icmp eq i8 %i.b, 1
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count = zext i8 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv52 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next53, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv52 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !8    ; 4 uses
  %i.p = load i32, ptr %i.k, align 4, !tbaa !8    ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !8    ; 2 uses
  %i.r = load i32, ptr %i.m, align 4, !tbaa !8
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 2 uses
  %i.t = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 16) ; 3 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.q)  ; 2 uses
  %i.v = xor i32 %i.t, %i.o
  %i.w = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 16) ; 2 uses
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.v)  ; 2 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 16)
  %i.z = xor i32 %i.w, %i.y
  %i.aa = xor i32 %i.z, %i.u                      ; 5 uses
  %i.ab = xor i32 %i.t, %i.q                      ; 3 uses
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 16)
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.ae = xor i32 %i.w, %i.ad                     ; 2 uses
  %i.af = xor i32 %i.ac, %i.p
  %i.ag = xor i32 %i.af, %i.aa
  store i32 %i.ag, ptr %i.l, align 4, !tbaa !8
  %i.ah = xor i32 %i.aa, %i.ab
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah) ; 2 uses
  %i.aj = xor i32 %i.ai, %i.o
  %i.ak = xor i32 %i.ai, %i.o
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.ak, i32 16)
  store i32 %i.al, ptr %i.k, align 4, !tbaa !8
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 16)
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ao = xor i32 %i.ae, %i.an
  %i.ap = xor i32 %i.ao, %i.t
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !8
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ar = xor i32 %i.aq, %i.am
  %i.as = xor i32 %i.ar, %i.u
  store i32 %i.as, ptr %i.m, align 4, !tbaa !8
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !15

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @mbedtls_aria_crypt_ecb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.0.copyload.i38 = load i32, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i37 = load i32, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i36 = load i32, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0.copyload.i = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i8, ptr %0, align 4, !tbaa !9
  %i.f = zext i8 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.085 = phi i32 [ %i.kq, %bb.c ], [ %.0.copyload.i38, %bb.a ]
  %.084 = phi i32 [ %i.km, %bb.c ], [ %.0.copyload.i37, %bb.a ]
  %.083 = phi i32 [ %i.kx, %bb.c ], [ %.0.copyload.i36, %bb.a ]
  %.082 = phi i32 [ %i.ku, %bb.c ], [ %.0.copyload.i, %bb.a ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 8 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = xor i32 %i.h, %.085                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = xor i32 %i.k, %.084                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = xor i32 %i.n, %.083                      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = xor i32 %i.q, %.082                      ; 4 uses
  %i.s = and i32 %i.i, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i32
  %i.x = lshr i32 %i.i, 8
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.ad, %i.w
  %i.af = lshr i32 %i.i, 16
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.ae, %i.al
  %i.an = lshr i32 %i.i, 24
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = or disjoint i32 %i.am, %i.as            ; 3 uses
  %i.au = and i32 %i.l, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i32
  %i.az = lshr i32 %i.l, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = or disjoint i32 %i.bf, %i.ay
  %i.bh = lshr i32 %i.l, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 16
  %i.bo = or disjoint i32 %i.bg, %i.bn
  %i.bp = lshr i32 %i.l, 24
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw i32 %i.bt, 24
  %i.bv = or disjoint i32 %i.bo, %i.bu            ; 3 uses
  %i.bw = and i32 %i.o, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i32
  %i.cb = lshr i32 %i.o, 8
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.ca
  %i.cj = lshr i32 %i.o, 16
  %i.ck = and i32 %i.cj, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.ci, %i.cp
  %i.cr = lshr i32 %i.o, 24
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !11
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 24
  %i.cx = or disjoint i32 %i.cq, %i.cw
  %i.cy = and i32 %i.r, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !11
  %i.dc = zext i8 %i.db to i32
  %i.dd = lshr i32 %i.r, 8
  %i.de = and i32 %i.dd, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = or disjoint i32 %i.dj, %i.dc
  %i.dl = lshr i32 %i.r, 16
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
end_hunk_0
