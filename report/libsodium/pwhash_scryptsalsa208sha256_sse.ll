Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/pwhash_scryptsalsa208sha256_sse?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind ssp uwtable
define hidden range(i32 -1, 1) i32 @escrypt_kdf_sse(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %6 to i64                       ; 12 uses
  %i.b = zext i32 %7 to i64                       ; 4 uses
  %i.c = icmp ugt i64 %9, 137438953440
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #5
  store i32 27, ptr %i.d, align 4
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.e = mul nuw i64 %i.b, %i.a
  %i.f = icmp ugt i64 %i.e, 1073741823
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #5
  store i32 27, ptr %i.g, align 4
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i64 %5, 4294967295
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #5
  store i32 27, ptr %i.i, align 4
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.j = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %5)
  %i.k = icmp samesign ugt i64 %i.j, 1
  %i.l = icmp samesign ult i64 %5, 2
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @__errno_location() #5
  store i32 22, ptr %i.m, align 4
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %6, 0
  %i.o = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.n, %i.o
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @__errno_location() #5
  store i32 22, ptr %i.p, align 4
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.q = udiv i64 144115188075855871, %i.b
  %i.r = icmp samesign ult i64 %i.q, %i.a
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = udiv i64 144115188075855871, %i.a
  %i.t = icmp samesign ugt i64 %5, %i.s
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = tail call ptr @__errno_location() #5
  store i32 12, ptr %i.u, align 4
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.v = shl nuw nsw i64 %i.a, 7                  ; 11 uses
  %i.w = mul i64 %i.v, %i.b                       ; 4 uses
  %i.x = mul i64 %i.v, %5                         ; 3 uses
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call ptr @__errno_location() #5
  store i32 12, ptr %i.aa, align 4
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.ab = shl nuw nsw i64 %i.a, 8                 ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 64
  %i.ad = add i64 %i.y, %i.ac                     ; 3 uses
  %.not = icmp ugt i64 %i.ad, %i.ab
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = tail call ptr @__errno_location() #5
  store i32 12, ptr %i.ae, align 4
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.af = getelementptr i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %i.ag, %i.ad
  br i1 %i.ah, label %bb.s, label %.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call i32 @escrypt_free_region(ptr noundef nonnull %0) #6
  %.not72 = icmp eq i32 %i.ai, 0
  br i1 %.not72, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call ptr @escrypt_alloc_region(ptr noundef nonnull %0, i64 noundef %i.ad) #6
  %.not73 = icmp eq ptr %i.aj, null
  br i1 %.not73, label %bb.w, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.w   ; 5 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x   ; 6 uses
  tail call void @escrypt_PBKDF2_SHA256(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef 1, ptr noundef %i.al, i64 noundef %i.w) #6
  %i.ao = shl nuw nsw i64 %i.a, 1                 ; 2 uses
  %i.ap = add nsw i64 %5, -1                      ; 3 uses
  %i.aq = icmp samesign ugt i64 %5, 2
  %i.ar = ptrtoint ptr %i.am to i64               ; 5 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = add i64 %i.v, %i.as
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = getelementptr i8, ptr %i.an, i64 %i.v   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -64
  %i.ax = getelementptr i8, ptr %i.av, i64 -16
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %smix.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %smix.exit ] ; 2 uses
  %i.ay = mul i64 %i.v, %indvars.iv
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay  ; 2 uses
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.i, %bb.u
  %.085.i = phi i64 [ 0, %bb.u ], [ %i.cw, %.preheader82.i ] ; 2 uses
  %.idx.i = shl nuw i64 %.085.i, 6                ; 2 uses
  %i.ba = getelementptr i8, ptr %i.am, i64 %.idx.i ; 16 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %.idx.i ; 16 uses
  %i.bc = load i32, ptr %i.bb, align 1
  store i32 %i.bc, ptr %i.ba, align 4
  %i.bd = getelementptr i8, ptr %i.bb, i64 20
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = getelementptr i8, ptr %i.ba, i64 4
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %i.bb, i64 40
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = getelementptr i8, ptr %i.ba, i64 8
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %i.bb, i64 60
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %i.ba, i64 12
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %i.bb, i64 16
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = getelementptr i8, ptr %i.ba, i64 16
  store i32 %i.bn, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %i.bb, i64 36
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = getelementptr i8, ptr %i.ba, i64 20
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr i8, ptr %i.bb, i64 56
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = getelementptr i8, ptr %i.ba, i64 24
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr i8, ptr %i.bb, i64 12
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = getelementptr i8, ptr %i.ba, i64 28
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = getelementptr i8, ptr %i.bb, i64 32
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = getelementptr i8, ptr %i.ba, i64 32
  store i32 %i.bz, ptr %i.ca, align 4
  %i.cb = getelementptr i8, ptr %i.bb, i64 52
  %i.cc = load i32, ptr %i.cb, align 1
  %i.cd = getelementptr i8, ptr %i.ba, i64 36
  store i32 %i.cc, ptr %i.cd, align 4
  %i.ce = getelementptr i8, ptr %i.bb, i64 8
  %i.cf = load i32, ptr %i.ce, align 1
  %i.cg = getelementptr i8, ptr %i.ba, i64 40
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr i8, ptr %i.bb, i64 28
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = getelementptr i8, ptr %i.ba, i64 44
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %i.bb, i64 48
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = getelementptr i8, ptr %i.ba, i64 48
  store i32 %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr i8, ptr %i.bb, i64 4
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = getelementptr i8, ptr %i.ba, i64 52
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %i.bb, i64 24
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = getelementptr i8, ptr %i.ba, i64 56
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.bb, i64 44
  %i.cu = load i32, ptr %i.ct, align 1
  %i.cv = getelementptr i8, ptr %i.ba, i64 60
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = add nuw nsw i64 %.085.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cw, %i.ao
  br i1 %exitcond.not.i, label %.preheader81.i, label %.preheader82.i, !llvm.loop !5

.preheader81.i:                                   ; preds = %.preheader82.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader81.i, %.lr.ph.i
  %.17687.i = phi i64 [ %i.de, %.lr.ph.i ], [ 1, %.preheader81.i ] ; 3 uses
  %.07786.i = phi ptr [ %i.dd, %.lr.ph.i ], [ %i.am, %.preheader81.i ]
  %i.cx = mul i64 %.17687.i, %i.v
  %i.cy = add i64 %i.cx, %i.ar
  %i.cz = inttoptr i64 %i.cy to ptr               ; 2 uses
  tail call fastcc void @blockmix_salsa8(ptr noundef %.07786.i, ptr noundef %i.cz, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.da = add nuw nsw i64 %.17687.i, 1
  %i.db = mul i64 %i.da, %i.v
  %i.dc = add i64 %i.db, %i.ar
  %i.dd = inttoptr i64 %i.dc to ptr               ; 3 uses
  tail call fastcc void @blockmix_salsa8(ptr noundef %i.cz, ptr noundef %i.dd, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.de = add nuw nsw i64 %.17687.i, 2            ; 3 uses
  %i.df = icmp samesign ult i64 %i.de, %i.ap
  br i1 %i.df, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !6

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.dg = mul i64 %i.de, %i.v
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader81.i
  %.077.lcssa.i = phi ptr [ %i.dd, %._crit_edge.loopexit.i ], [ %i.am, %.preheader81.i ]
  %.176.lcssa.i = phi i64 [ %i.dg, %._crit_edge.loopexit.i ], [ %i.v, %.preheader81.i ]
  %i.dh = add i64 %.176.lcssa.i, %i.ar
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  tail call fastcc void @blockmix_salsa8(ptr noundef %.077.lcssa.i, ptr noundef %i.di, i64 noundef range(i64 1, 4294967296) %i.a)
  tail call fastcc void @blockmix_salsa8(ptr noundef %i.di, ptr noundef %i.an, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.dj = load i32, ptr %i.aw, align 16
  %i.dk = load <2 x i32>, ptr %i.ax, align 16
  %i.dl = extractelement <2 x i32> %i.dk, i64 1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw i64 %i.dm, 32
  %i.do = zext i32 %i.dj to i64
  %i.dp = or disjoint i64 %i.dn, %i.do
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %._crit_edge.i
  %.pn91.i = phi i64 [ %i.dp, %._crit_edge.i ], [ %i.ea, %bb.v ]
  %.290.i = phi i64 [ 0, %._crit_edge.i ], [ %i.eb, %bb.v ]
  %.074.i = and i64 %.pn91.i, %i.ap
  %i.dq = mul i64 %.074.i, %i.v
  %i.dr = add i64 %i.dq, %i.ar
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = tail call fastcc i32 @blockmix_salsa8_xor(ptr noundef nonnull %i.an, ptr noundef %i.ds, ptr noundef %i.au, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.du = zext i32 %i.dt to i64
  %i.dv = and i64 %i.ap, %i.du
  %i.dw = mul i64 %i.dv, %i.v
  %i.dx = add i64 %i.dw, %i.ar
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = tail call fastcc i32 @blockmix_salsa8_xor(ptr noundef %i.au, ptr noundef %i.dy, ptr noundef nonnull %i.an, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add nuw nsw i64 %.290.i, 2              ; 2 uses
  %i.ec = icmp samesign ult i64 %i.eb, %5
  br i1 %i.ec, label %bb.v, label %.preheader.i, !llvm.loop !7

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %.193.i = phi i64 [ %i.fz, %.preheader.i ], [ 0, %bb.v ] ; 2 uses
  %.idx98.i = shl nuw i64 %.193.i, 6              ; 2 uses
  %i.ed = getelementptr i8, ptr %i.an, i64 %.idx98.i ; 16 uses
  %i.ee = getelementptr i8, ptr %i.az, i64 %.idx98.i ; 16 uses
  %i.ef = load i32, ptr %i.ed, align 4
  store i32 %i.ef, ptr %i.ee, align 1
  %i.eg = getelementptr i8, ptr %i.ee, i64 20
  %i.eh = getelementptr i8, ptr %i.ed, i64 4
  %i.ei = load i32, ptr %i.eh, align 4
  store i32 %i.ei, ptr %i.eg, align 1
  %i.ej = getelementptr i8, ptr %i.ee, i64 40
  %i.ek = getelementptr i8, ptr %i.ed, i64 8
  %i.el = load i32, ptr %i.ek, align 4
  store i32 %i.el, ptr %i.ej, align 1
  %i.em = getelementptr i8, ptr %i.ee, i64 60
  %i.en = getelementptr i8, ptr %i.ed, i64 12
  %i.eo = load i32, ptr %i.en, align 4
  store i32 %i.eo, ptr %i.em, align 1
  %i.ep = getelementptr i8, ptr %i.ee, i64 16
  %i.eq = getelementptr i8, ptr %i.ed, i64 16
  %i.er = load i32, ptr %i.eq, align 4
  store i32 %i.er, ptr %i.ep, align 1
  %i.es = getelementptr i8, ptr %i.ee, i64 36
  %i.et = getelementptr i8, ptr %i.ed, i64 20
  %i.eu = load i32, ptr %i.et, align 4
  store i32 %i.eu, ptr %i.es, align 1
  %i.ev = getelementptr i8, ptr %i.ee, i64 56
  %i.ew = getelementptr i8, ptr %i.ed, i64 24
  %i.ex = load i32, ptr %i.ew, align 4
  store i32 %i.ex, ptr %i.ev, align 1
  %i.ey = getelementptr i8, ptr %i.ee, i64 12
  %i.ez = getelementptr i8, ptr %i.ed, i64 28
  %i.fa = load i32, ptr %i.ez, align 4
  store i32 %i.fa, ptr %i.ey, align 1
  %i.fb = getelementptr i8, ptr %i.ee, i64 32
  %i.fc = getelementptr i8, ptr %i.ed, i64 32
  %i.fd = load i32, ptr %i.fc, align 4
  store i32 %i.fd, ptr %i.fb, align 1
  %i.fe = getelementptr i8, ptr %i.ee, i64 52
  %i.ff = getelementptr i8, ptr %i.ed, i64 36
  %i.fg = load i32, ptr %i.ff, align 4
  store i32 %i.fg, ptr %i.fe, align 1
  %i.fh = getelementptr i8, ptr %i.ee, i64 8
  %i.fi = getelementptr i8, ptr %i.ed, i64 40
  %i.fj = load i32, ptr %i.fi, align 4
  store i32 %i.fj, ptr %i.fh, align 1
  %i.fk = getelementptr i8, ptr %i.ee, i64 28
  %i.fl = getelementptr i8, ptr %i.ed, i64 44
  %i.fm = load i32, ptr %i.fl, align 4
  store i32 %i.fm, ptr %i.fk, align 1
  %i.fn = getelementptr i8, ptr %i.ee, i64 48
  %i.fo = getelementptr i8, ptr %i.ed, i64 48
  %i.fp = load i32, ptr %i.fo, align 4
  store i32 %i.fp, ptr %i.fn, align 1
  %i.fq = getelementptr i8, ptr %i.ee, i64 4
  %i.fr = getelementptr i8, ptr %i.ed, i64 52
  %i.fs = load i32, ptr %i.fr, align 4
  store i32 %i.fs, ptr %i.fq, align 1
  %i.ft = getelementptr i8, ptr %i.ee, i64 24
  %i.fu = getelementptr i8, ptr %i.ed, i64 56
  %i.fv = load i32, ptr %i.fu, align 4
  store i32 %i.fv, ptr %i.ft, align 1
  %i.fw = getelementptr i8, ptr %i.ee, i64 44
  %i.fx = getelementptr i8, ptr %i.ed, i64 60
  %i.fy = load i32, ptr %i.fx, align 4
  store i32 %i.fy, ptr %i.fw, align 1
  %i.fz = add nuw nsw i64 %.193.i, 1              ; 2 uses
  %exitcond96.not.i = icmp eq i64 %i.fz, %i.ao
  br i1 %exitcond96.not.i, label %smix.exit, label %.preheader.i, !llvm.loop !8

smix.exit:                                        ; preds = %.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
end_hunk_0
