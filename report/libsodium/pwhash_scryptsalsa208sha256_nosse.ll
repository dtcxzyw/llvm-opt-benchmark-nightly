Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/pwhash_scryptsalsa208sha256_nosse?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind ssp uwtable
define hidden range(i32 -1, 1) i32 @escrypt_kdf_nosse(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %6 to i64                       ; 13 uses
  %i.b = zext i32 %7 to i64                       ; 7 uses
  %i.c = icmp ugt i64 %9, 137438953440
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #6
  store i32 27, ptr %i.d, align 4
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = mul nuw i64 %i.b, %i.a
  %i.f = icmp ugt i64 %i.e, 1073741823
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #6
  store i32 27, ptr %i.g, align 4
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i64 %5, 4294967295
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #6
  store i32 27, ptr %i.i, align 4
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.j = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %5)
  %i.k = icmp samesign ugt i64 %i.j, 1
  %i.l = icmp samesign ult i64 %5, 2
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @__errno_location() #6
  store i32 22, ptr %i.m, align 4
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %6, 0
  %i.o = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.n, %i.o
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @__errno_location() #6
  store i32 22, ptr %i.p, align 4
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.q = udiv i64 144115188075855871, %i.b
  %i.r = icmp samesign ult i64 %i.q, %i.a
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = udiv i64 144115188075855871, %i.a
  %i.t = icmp samesign ugt i64 %5, %i.s
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = tail call ptr @__errno_location() #6
  store i32 12, ptr %i.u, align 4
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.v = shl nuw nsw i64 %i.a, 7                  ; 7 uses
  %i.w = mul i64 %i.v, %i.b                       ; 4 uses
  %i.x = mul i64 %i.v, %5                         ; 3 uses
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call ptr @__errno_location() #6
  store i32 12, ptr %i.aa, align 4
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ab = shl nuw nsw i64 %i.a, 8                 ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 64
  %i.ad = add i64 %i.y, %i.ac                     ; 3 uses
  %.not = icmp ugt i64 %i.ad, %i.ab
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = tail call ptr @__errno_location() #6
  store i32 12, ptr %i.ae, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.af = getelementptr i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %i.ag, %i.ad
  br i1 %i.ah, label %bb.s, label %.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call i32 @escrypt_free_region(ptr noundef nonnull %0) #7
  %.not72 = icmp eq i32 %i.ai, 0
  br i1 %.not72, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call ptr @escrypt_alloc_region(ptr noundef nonnull %0, i64 noundef %i.ad) #7
  %.not73 = icmp eq ptr %i.aj, null
  br i1 %.not73, label %bb.u, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 7 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.w   ; 5 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x   ; 19 uses
  tail call void @escrypt_PBKDF2_SHA256(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef 1, ptr noundef %i.al, i64 noundef %i.w) #7
  %i.ao = shl nuw nsw i64 %i.a, 5                 ; 11 uses
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.ao ; 13 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ab  ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %i.v
  %i.as = getelementptr i8, ptr %i.ar, i64 -64
  %i.at = add nsw i64 %5, -1                      ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.v
  %i.av = getelementptr i8, ptr %i.au, i64 -64
  %i.aw = add nuw nsw i64 %5, %i.b
  %i.ax = shl nuw nsw i64 %i.aw, 7
  %i.ay = add nuw nsw i64 %i.ax, 256
  %i.az = mul i64 %i.ay, %i.a
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.az
  br label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph, %smix.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %smix.exit ] ; 2 uses
  %i.ba = mul i64 %i.v, %indvars.iv
  %i.bb = getelementptr i8, ptr %i.al, i64 %i.ba  ; 5 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.memcheck107
  %index112 = phi i64 [ 0, %vector.memcheck107 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.bc = shl nuw nsw i64 %index112, 2
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %wide.load113 = load <4 x i32>, ptr %i.bd, align 1
  %wide.load114 = load <4 x i32>, ptr %i.be, align 1
  %i.bf = getelementptr [4 x i8], ptr %i.an, i64 %index112 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store <4 x i32> %wide.load113, ptr %i.bf, align 4
  store <4 x i32> %wide.load114, ptr %i.bg, align 4
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next115, %i.ao
  br i1 %i.bh, label %.preheader75.i, label %vector.body111, !llvm.loop !5

.preheader75.i:                                   ; preds = %vector.body111, %.preheader75.i
  %.06677.i = phi i64 [ %i.bn, %.preheader75.i ], [ 0, %vector.body111 ] ; 3 uses
  %i.bi = mul i64 %.06677.i, %i.ao
  %i.bj = getelementptr [4 x i8], ptr %i.am, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bj, ptr noundef nonnull readonly align 1 %i.an, i64 noundef range(i64 4, 549755813761) %i.v, i1 noundef false) #7
  tail call fastcc void @blockmix_salsa8(ptr noundef nonnull %i.an, ptr noundef %i.ap, ptr noundef %i.aq, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.bk = or disjoint i64 %.06677.i, 1
  %i.bl = mul i64 %i.bk, %i.ao
  %i.bm = getelementptr [4 x i8], ptr %i.am, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bm, ptr noundef nonnull readonly align 1 %i.ap, i64 noundef range(i64 4, 549755813761) %i.v, i1 noundef false) #7
  tail call fastcc void @blockmix_salsa8(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, ptr noundef %i.aq, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.bn = add nuw nsw i64 %.06677.i, 2            ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bn, %5
  br i1 %i.bo, label %.preheader75.i, label %.preheader74.i, !llvm.loop !6

.preheader74.i:                                   ; preds = %.preheader75.i, %blkxor.exit73.i
  %.16778.i = phi i64 [ %i.en, %blkxor.exit73.i ], [ 0, %.preheader75.i ]
  %i.bp = load i64, ptr %i.as, align 4
  %i.bq = and i64 %i.bp, %i.at                    ; 2 uses
  %i.br = mul i64 %i.bq, %i.ao
  %i.bs = getelementptr [4 x i8], ptr %i.am, i64 %i.br ; 6 uses
  %10 = add i64 %i.bq, %i.b
  %i.bt = shl i64 %10, 7
  %i.bu = add i64 %i.bt, 128
  %i.bv = mul i64 %i.bu, %i.a
  %scevgep90 = getelementptr i8, ptr %i.al, i64 %i.bv
  %bound091 = icmp ult ptr %i.an, %scevgep90
  %bound192 = icmp ult ptr %i.bs, %i.ap
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %scalar.ph94, label %vector.body97

vector.body97:                                    ; preds = %.preheader74.i, %vector.body97
  %index98 = phi i64 [ %index.next103, %vector.body97 ], [ 0, %.preheader74.i ] ; 3 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bs, i64 %index98 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.bw, align 4, !alias.scope !22
  %wide.load100 = load <4 x i32>, ptr %i.bx, align 4, !alias.scope !22
  %i.by = getelementptr [4 x i8], ptr %i.an, i64 %index98 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %wide.load101 = load <4 x i32>, ptr %i.by, align 4, !alias.scope !23, !noalias !22
  %wide.load102 = load <4 x i32>, ptr %i.bz, align 4, !alias.scope !23, !noalias !22
  %i.ca = xor <4 x i32> %wide.load101, %wide.load99
  %i.cb = xor <4 x i32> %wide.load102, %wide.load100
  store <4 x i32> %i.ca, ptr %i.by, align 4, !alias.scope !23, !noalias !22
  store <4 x i32> %i.cb, ptr %i.bz, align 4, !alias.scope !23, !noalias !22
  %index.next103 = add nuw i64 %index98, 8        ; 2 uses
  %i.cc = icmp eq i64 %index.next103, %i.ao
  br i1 %i.cc, label %blkxor.exit.i, label %vector.body97, !llvm.loop !10

scalar.ph94:                                      ; preds = %.preheader74.i, %scalar.ph94
  %.06.i.i = phi i64 [ %i.da, %scalar.ph94 ], [ 0, %.preheader74.i ] ; 6 uses
  %i.cd = getelementptr [4 x i8], ptr %i.bs, i64 %.06.i.i
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr [4 x i8], ptr %i.an, i64 %.06.i.i ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = xor i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = or disjoint i64 %.06.i.i, 1             ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.bs, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr [4 x i8], ptr %i.an, i64 %i.ci ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = xor i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4
  %i.co = or disjoint i64 %.06.i.i, 2             ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bs, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr [4 x i8], ptr %i.an, i64 %i.co ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = xor i32 %i.cs, %i.cq
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = or disjoint i64 %.06.i.i, 3             ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.bs, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr [4 x i8], ptr %i.an, i64 %i.cu ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = xor i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 4
  %i.da = add nuw nsw i64 %.06.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.da, %i.ao
  br i1 %exitcond.not.i.i.3, label %blkxor.exit.i, label %scalar.ph94, !llvm.loop !11

blkxor.exit.i:                                    ; preds = %vector.body97, %scalar.ph94
  tail call fastcc void @blockmix_salsa8(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ap, ptr noundef %i.aq, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.db = load i64, ptr %i.av, align 4
  %i.dc = and i64 %i.db, %i.at                    ; 2 uses
  %i.dd = mul i64 %i.dc, %i.ao
  %i.de = getelementptr [4 x i8], ptr %i.am, i64 %i.dd ; 6 uses
  %11 = add i64 %i.dc, %i.b
  %i.df = shl i64 %11, 7
  %i.dg = add i64 %i.df, 128
  %i.dh = mul i64 %i.dg, %i.a
  %scevgep85 = getelementptr i8, ptr %i.al, i64 %i.dh
  %bound0 = icmp ult ptr %i.ap, %scevgep85
  %bound1 = icmp ult ptr %i.de, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %blkxor.exit.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %blkxor.exit.i ] ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %wide.load = load <4 x i32>, ptr %i.di, align 4, !alias.scope !24
  %wide.load86 = load <4 x i32>, ptr %i.dj, align 4, !alias.scope !24
  %i.dk = getelementptr [4 x i8], ptr %i.ap, i64 %index ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16     ; 2 uses
  %wide.load87 = load <4 x i32>, ptr %i.dk, align 4, !alias.scope !25, !noalias !24
  %wide.load88 = load <4 x i32>, ptr %i.dl, align 4, !alias.scope !25, !noalias !24
  %i.dm = xor <4 x i32> %wide.load87, %wide.load
  %i.dn = xor <4 x i32> %wide.load88, %wide.load86
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !alias.scope !25, !noalias !24
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !alias.scope !25, !noalias !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %i.ao
  br i1 %i.do, label %blkxor.exit73.i, label %vector.body, !llvm.loop !15

scalar.ph:                                        ; preds = %blkxor.exit.i, %scalar.ph
  %.06.i71.i = phi i64 [ %i.em, %scalar.ph ], [ 0, %blkxor.exit.i ] ; 6 uses
  %i.dp = getelementptr [4 x i8], ptr %i.de, i64 %.06.i71.i
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = getelementptr [4 x i8], ptr %i.ap, i64 %.06.i71.i ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = xor i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %i.dr, align 4
  %i.du = or disjoint i64 %.06.i71.i, 1           ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.de, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = getelementptr [4 x i8], ptr %i.ap, i64 %i.du ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = xor i32 %i.dy, %i.dw
  store i32 %i.dz, ptr %i.dx, align 4
  %i.ea = or disjoint i64 %.06.i71.i, 2           ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %i.de, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = getelementptr [4 x i8], ptr %i.ap, i64 %i.ea ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = xor i32 %i.ee, %i.ec
  store i32 %i.ef, ptr %i.ed, align 4
  %i.eg = or disjoint i64 %.06.i71.i, 3           ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.de, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = getelementptr [4 x i8], ptr %i.ap, i64 %i.eg ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = xor i32 %i.ek, %i.ei
  store i32 %i.el, ptr %i.ej, align 4
  %i.em = add nuw nsw i64 %.06.i71.i, 4           ; 2 uses
  %exitcond.not.i72.i.3 = icmp eq i64 %i.em, %i.ao
  br i1 %exitcond.not.i72.i.3, label %blkxor.exit73.i, label %scalar.ph, !llvm.loop !16

blkxor.exit73.i:                                  ; preds = %vector.body, %scalar.ph
  tail call fastcc void @blockmix_salsa8(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, ptr noundef %i.aq, i64 noundef range(i64 1, 4294967296) %i.a)
  %i.en = add nuw nsw i64 %.16778.i, 2            ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, %5
  br i1 %i.eo, label %.preheader74.i, label %.preheader.i, !llvm.loop !17

.preheader.i:                                     ; preds = %blkxor.exit73.i, %.preheader.i
  %.179.i = phi i64 [ %i.fi, %.preheader.i ], [ 0, %blkxor.exit73.i ] ; 6 uses
  %i.ep = shl nuw nsw i64 %.179.i, 2
  %i.eq = getelementptr i8, ptr %i.bb, i64 %i.ep
  %i.er = getelementptr [4 x i8], ptr %i.an, i64 %.179.i
  %i.es = load i32, ptr %i.er, align 4
  store i32 %i.es, ptr %i.eq, align 1
  %i.et = or disjoint i64 %.179.i, 1              ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = getelementptr i8, ptr %i.bb, i64 %i.eu
  %i.ew = getelementptr [4 x i8], ptr %i.an, i64 %i.et
  %i.ex = load i32, ptr %i.ew, align 4
  store i32 %i.ex, ptr %i.ev, align 1
  %i.ey = or disjoint i64 %.179.i, 2              ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = getelementptr i8, ptr %i.bb, i64 %i.ez
  %i.fb = getelementptr [4 x i8], ptr %i.an, i64 %i.ey
  %i.fc = load i32, ptr %i.fb, align 4
  store i32 %i.fc, ptr %i.fa, align 1
  %i.fd = or disjoint i64 %.179.i, 3              ; 2 uses
  %i.fe = shl nuw nsw i64 %i.fd, 2
  %i.ff = getelementptr i8, ptr %i.bb, i64 %i.fe
  %i.fg = getelementptr [4 x i8], ptr %i.an, i64 %i.fd
  %i.fh = load i32, ptr %i.fg, align 4
  store i32 %i.fh, ptr %i.ff, align 1
  %i.fi = add nuw nsw i64 %.179.i, 4              ; 2 uses
  %exitcond80.not.i.3 = icmp eq i64 %i.fi, %i.ao
  br i1 %exitcond80.not.i.3, label %smix.exit, label %.preheader.i, !llvm.loop !18

smix.exit:                                        ; preds = %.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %vector.memcheck107, !llvm.loop !19

._crit_edge:                                      ; preds = %smix.exit
  tail call void @escrypt_PBKDF2_SHA256(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.al, i64 noundef %i.w, i64 noundef 1, ptr noundef %8, i64 noundef %9) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge, %bb.q, %bb.o, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.063 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %bb.s ], [ 0, %._crit_edge ], [ -1, %bb.t ]
  ret i32 %.063
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

declare i32 @escrypt_free_region(ptr noundef) local_unnamed_addr #2

declare ptr @escrypt_alloc_region(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @escrypt_PBKDF2_SHA256(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc void @blockmix_salsa8(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 1, 4294967296) %3) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i64 %3, 1
  %.idx = shl nuw nsw i64 %3, 7
  %i.b = getelementptr i8, ptr %0, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.c, i64 noundef range(i64 4, 549755813761) 64, i1 noundef false) #7
  %.idx20 = shl nuw nsw i64 %3, 6
  %i.d = getelementptr i8, ptr %2, i64 4          ; 4 uses
  %i.e = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.f = getelementptr i8, ptr %2, i64 12         ; 4 uses
  %i.g = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.h = getelementptr i8, ptr %2, i64 20         ; 4 uses
  %i.i = getelementptr i8, ptr %2, i64 24         ; 4 uses
  %i.j = getelementptr i8, ptr %2, i64 28         ; 4 uses
  %i.k = getelementptr i8, ptr %2, i64 32         ; 4 uses
  %i.l = getelementptr i8, ptr %2, i64 36         ; 4 uses
  %i.m = getelementptr i8, ptr %2, i64 40         ; 4 uses
  %i.n = getelementptr i8, ptr %2, i64 44         ; 4 uses
  %i.o = getelementptr i8, ptr %2, i64 48         ; 4 uses
  %i.p = getelementptr i8, ptr %2, i64 52         ; 4 uses
  %i.q = getelementptr i8, ptr %2, i64 56         ; 4 uses
  %i.r = getelementptr i8, ptr %2, i64 60         ; 4 uses
  br label %blkxor.exit

blkxor.exit:                                      ; preds = %bb.a, %blkxor.exit
  %.026 = phi i64 [ 0, %bb.a ], [ %i.es, %blkxor.exit ] ; 3 uses
  %.idx24 = shl nuw nsw i64 %.026, 6
  %i.s = getelementptr i8, ptr %0, i64 %.idx24    ; 32 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = load i32, ptr %2, align 4
  %i.v = xor i32 %i.u, %i.t
  store i32 %i.v, ptr %2, align 4
  %i.w = getelementptr i8, ptr %i.s, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = load i32, ptr %i.d, align 4
  %i.z = xor i32 %i.y, %i.x
  store i32 %i.z, ptr %i.d, align 4
  %i.aa = getelementptr i8, ptr %i.s, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = xor i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.e, align 4
  %i.ae = getelementptr i8, ptr %i.s, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = xor i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.f, align 4
  %i.ai = getelementptr i8, ptr %i.s, i64 16
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = load i32, ptr %i.g, align 4
  %i.al = xor i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.g, align 4
  %i.am = getelementptr i8, ptr %i.s, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.h, align 4
  %i.ap = xor i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.h, align 4
  %i.aq = getelementptr i8, ptr %i.s, i64 24
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = load i32, ptr %i.i, align 4
  %i.at = xor i32 %i.as, %i.ar
  store i32 %i.at, ptr %i.i, align 4
  %i.au = getelementptr i8, ptr %i.s, i64 28
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.j, align 4
  %i.ax = xor i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.j, align 4
  %i.ay = getelementptr i8, ptr %i.s, i64 32
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = load i32, ptr %i.k, align 4
  %i.bb = xor i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.k, align 4
  %i.bc = getelementptr i8, ptr %i.s, i64 36
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = load i32, ptr %i.l, align 4
  %i.bf = xor i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.l, align 4
  %i.bg = getelementptr i8, ptr %i.s, i64 40
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.m, align 4
  %i.bj = xor i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %i.m, align 4
end_hunk_0
