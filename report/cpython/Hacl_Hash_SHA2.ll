inline.NumInlined: 200
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !6
  %i.a = getelementptr i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 4, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %0, 6                           ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv, 6
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  tail call fastcc void @sha256_update(ptr noundef %i.c, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sha256_update(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 {
bb.a:
  %.sroa.05961.0.copyload = load i32, ptr %1, align 4 ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 12 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.val5495 = load i32, ptr %0, align 1
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %.val5495) ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val5494 = load i32, ptr %i.b, align 1
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %.val5494) ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val5493 = load i32, ptr %i.d, align 1
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %.val5493) ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 12
  %.val5492 = load i32, ptr %i.f, align 1
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.val5492) ; 7 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val5491 = load i32, ptr %i.h, align 1
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.val5491) ; 7 uses
  %i.j = getelementptr i8, ptr %0, i64 20
  %.val5490 = load i32, ptr %i.j, align 1
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %.val5490) ; 7 uses
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val5489 = load i32, ptr %i.l, align 1
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %.val5489) ; 7 uses
  %i.n = getelementptr i8, ptr %0, i64 28
  %.val5488 = load i32, ptr %i.n, align 1
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %.val5488) ; 7 uses
  %i.p = getelementptr i8, ptr %0, i64 32
  %.val5487 = load i32, ptr %i.p, align 1
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %.val5487) ; 7 uses
  %i.r = getelementptr i8, ptr %0, i64 36
  %.val5486 = load i32, ptr %i.r, align 1
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %.val5486) ; 8 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  %.val5485 = load i32, ptr %i.t, align 1
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %.val5485) ; 8 uses
  %i.v = getelementptr i8, ptr %0, i64 44
  %.val5484 = load i32, ptr %i.v, align 1
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %.val5484) ; 8 uses
  %i.x = getelementptr i8, ptr %0, i64 48
  %.val5483 = load i32, ptr %i.x, align 1
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %.val5483) ; 8 uses
  %i.z = getelementptr i8, ptr %0, i64 52
  %.val5482 = load i32, ptr %i.z, align 1
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %.val5482) ; 8 uses
  %i.ab = getelementptr i8, ptr %0, i64 56
  %.val5481 = load i32, ptr %i.ab, align 1
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %.val5481) ; 13 uses
  %i.ad = getelementptr i8, ptr %0, i64 60
  %.val = load i32, ptr %i.ad, align 1
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %.val) ; 13 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %.sroa.8.0.copyload, i32 %.sroa.8.0.copyload, i32 26)
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %.sroa.8.0.copyload, i32 %.sroa.8.0.copyload, i32 21)
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %.sroa.8.0.copyload, i32 %.sroa.8.0.copyload, i32 7)
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = xor i32 %i.ai, %i.af
  %i.ak = and i32 %.sroa.9.0.copyload, %.sroa.8.0.copyload
  %i.al = xor i32 %.sroa.8.0.copyload, -1
  %i.am = and i32 %.sroa.10.0.copyload, %i.al
  %i.an = or i32 %i.am, %i.ak
  %i.ao = add i32 %i.aj, 1116352408
  %i.ap = add i32 %i.ao, %.sroa.11.0.copyload
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = add i32 %i.aq, %i.a                     ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %.sroa.05961.0.copyload, i32 %.sroa.05961.0.copyload, i32 30)
  %i.at = tail call i32 @llvm.fshl.i32(i32 %.sroa.05961.0.copyload, i32 %.sroa.05961.0.copyload, i32 19)
  %i.au = tail call i32 @llvm.fshl.i32(i32 %.sroa.05961.0.copyload, i32 %.sroa.05961.0.copyload, i32 10)
  %i.av = xor i32 %i.at, %i.au
  %i.aw = xor i32 %i.av, %i.as
  %i.ax = and i32 %.sroa.5.0.copyload, %.sroa.05961.0.copyload
  %i.ay = xor i32 %.sroa.5.0.copyload, %.sroa.05961.0.copyload
  %i.az = and i32 %i.ay, %.sroa.6.0.copyload
  %i.ba = xor i32 %i.az, %i.ax
  %i.bb = add i32 %i.ba, %i.aw
  %i.bc = add i32 %i.bb, %i.ar                    ; 12 uses
  %i.bd = add i32 %i.ar, %.sroa.7.0.copyload      ; 11 uses
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 26)
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 21)
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 7)
  %i.bh = xor i32 %i.bf, %i.bg
  %i.bi = xor i32 %i.bh, %i.be
  %i.bj = and i32 %i.bd, %.sroa.8.0.copyload
  %i.bk = xor i32 %i.bd, -1
  %i.bl = and i32 %.sroa.9.0.copyload, %i.bk
  %i.bm = or i32 %i.bj, %i.bl
  %i.bn = add i32 %.sroa.10.0.copyload, 1899447441
  %i.bo = add i32 %i.bn, %i.c
  %i.bp = add i32 %i.bo, %i.bm
  %i.bq = add i32 %i.bp, %i.bi                    ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 30)
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 19)
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 10)
  %i.bu = xor i32 %i.bs, %i.bt
  %i.bv = xor i32 %i.bu, %i.br
  %i.bw = and i32 %i.bc, %.sroa.05961.0.copyload
  %i.bx = xor i32 %i.bc, %.sroa.05961.0.copyload
  %i.by = and i32 %i.bx, %.sroa.5.0.copyload
  %i.bz = xor i32 %i.by, %i.bw
  %i.ca = add i32 %i.bv, %i.bz
  %i.cb = add i32 %i.ca, %i.bq                    ; 12 uses
  %i.cc = add i32 %i.bq, %.sroa.6.0.copyload      ; 11 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 26)
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 21)
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 7)
  %i.cg = xor i32 %i.ce, %i.cf
  %i.ch = xor i32 %i.cg, %i.cd
  %i.ci = and i32 %i.cc, %i.bd
  %i.cj = xor i32 %i.cc, -1
  %i.ck = and i32 %.sroa.8.0.copyload, %i.cj
  %i.cl = or i32 %i.ci, %i.ck
  %i.cm = add i32 %.sroa.9.0.copyload, -1245643825
  %i.cn = add i32 %i.cm, %i.e
  %i.co = add i32 %i.cn, %i.cl
  %i.cp = add i32 %i.co, %i.ch                    ; 2 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 30)
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 19)
  %i.cs = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 10)
  %i.ct = xor i32 %i.cr, %i.cs
  %i.cu = xor i32 %i.ct, %i.cq
  %i.cv = and i32 %i.cb, %i.bc
  %i.cw = xor i32 %i.cb, %i.bc
  %i.cx = and i32 %i.cw, %.sroa.05961.0.copyload
  %i.cy = xor i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cu, %i.cy
  %i.da = add i32 %i.cz, %i.cp                    ; 12 uses
  %i.db = add i32 %i.cp, %.sroa.5.0.copyload      ; 11 uses
  %i.dc = tail call i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 26)
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 21)
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 7)
  %i.df = xor i32 %i.dd, %i.de
  %i.dg = xor i32 %i.df, %i.dc
  %i.dh = and i32 %i.db, %i.cc
  %i.di = xor i32 %i.db, -1
  %i.dj = and i32 %i.bd, %i.di
  %i.dk = or i32 %i.dh, %i.dj
  %i.dl = add i32 %.sroa.8.0.copyload, -373957723
  %i.dm = add i32 %i.dl, %i.g
  %i.dn = add i32 %i.dm, %i.dk
  %i.do = add i32 %i.dn, %i.dg                    ; 2 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 30)
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 19)
  %i.dr = tail call i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 10)
  %i.ds = xor i32 %i.dq, %i.dr
  %i.dt = xor i32 %i.ds, %i.dp
  %i.du = and i32 %i.da, %i.cb
  %i.dv = xor i32 %i.da, %i.cb
  %i.dw = and i32 %i.dv, %i.bc
  %i.dx = xor i32 %i.dw, %i.du
  %i.dy = add i32 %i.dt, %i.dx
  %i.dz = add i32 %i.dy, %i.do                    ; 12 uses
  %i.ea = add i32 %i.do, %.sroa.05961.0.copyload  ; 11 uses
  %i.eb = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 26)
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 21)
  %i.ed = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 7)
  %i.ee = xor i32 %i.ec, %i.ed
  %i.ef = xor i32 %i.ee, %i.eb
  %i.eg = and i32 %i.ea, %i.db
  %i.eh = xor i32 %i.ea, -1
  %i.ei = and i32 %i.cc, %i.eh
  %i.ej = or i32 %i.eg, %i.ei
  %i.ek = add i32 %i.bd, 961987163
  %i.el = add i32 %i.ek, %i.i
  %i.em = add i32 %i.el, %i.ej
  %i.en = add i32 %i.em, %i.ef                    ; 2 uses
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 30)
  %i.ep = tail call i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 19)
  %i.eq = tail call i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 10)
  %i.er = xor i32 %i.ep, %i.eq
  %i.es = xor i32 %i.er, %i.eo
  %i.et = and i32 %i.dz, %i.da
  %i.eu = xor i32 %i.dz, %i.da
  %i.ev = and i32 %i.eu, %i.cb
  %i.ew = xor i32 %i.ev, %i.et
  %i.ex = add i32 %i.es, %i.ew
  %i.ey = add i32 %i.ex, %i.en                    ; 12 uses
  %i.ez = add i32 %i.en, %i.bc                    ; 11 uses
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 26)
  %i.fb = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 21)
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 7)
end_hunk_0
begin_hunk_1_@sha256_update:bb.a
  %i.cdo = add i32 %i.cdj, %i.cdn
  %i.cdp = add i32 %i.cdo, %i.cde                 ; 12 uses
  %i.cdq = add i32 %i.cde, %i.bzt                 ; 11 uses
  %i.cdr = tail call i32 @llvm.fshl.i32(i32 %i.cdq, i32 %i.cdq, i32 26)
  %i.cds = tail call i32 @llvm.fshl.i32(i32 %i.cdq, i32 %i.cdq, i32 21)
  %i.cdt = tail call i32 @llvm.fshl.i32(i32 %i.cdq, i32 %i.cdq, i32 7)
  %i.cdu = xor i32 %i.cds, %i.cdt
  %i.cdv = xor i32 %i.cdu, %i.cdr
  %i.cdw = and i32 %i.cdq, %i.ccr
  %i.cdx = xor i32 %i.cdq, -1
  %i.cdy = and i32 %i.cbs, %i.cdx
  %i.cdz = or i32 %i.cdw, %i.cdy
  %i.cea = add i32 %i.bqv, -1866530822
  %i.ceb = add i32 %i.cea, %i.cat
  %i.cec = add i32 %i.ceb, %i.cdz
  %i.ced = add i32 %i.cec, %i.cdv                 ; 2 uses
  %i.cee = tail call i32 @llvm.fshl.i32(i32 %i.cdp, i32 %i.cdp, i32 30)
  %i.cef = tail call i32 @llvm.fshl.i32(i32 %i.cdp, i32 %i.cdp, i32 19)
  %i.ceg = tail call i32 @llvm.fshl.i32(i32 %i.cdp, i32 %i.cdp, i32 10)
  %i.ceh = xor i32 %i.cef, %i.ceg
  %i.cei = xor i32 %i.ceh, %i.cee
  %i.cej = and i32 %i.cdp, %i.ccq
  %i.cek = xor i32 %i.cdp, %i.ccq
  %i.cel = and i32 %i.cek, %i.cbr
  %i.cem = xor i32 %i.cel, %i.cej
  %i.cen = add i32 %i.cei, %i.cem
  %i.ceo = add i32 %i.cen, %i.ced                 ; 12 uses
  %i.cep = add i32 %i.ced, %i.cas                 ; 11 uses
  %i.ceq = tail call i32 @llvm.fshl.i32(i32 %i.cep, i32 %i.cep, i32 26)
  %i.cer = tail call i32 @llvm.fshl.i32(i32 %i.cep, i32 %i.cep, i32 21)
  %i.ces = tail call i32 @llvm.fshl.i32(i32 %i.cep, i32 %i.cep, i32 7)
  %i.cet = xor i32 %i.cer, %i.ces
  %i.ceu = xor i32 %i.cet, %i.ceq
  %i.cev = and i32 %i.cep, %i.cdq
  %i.cew = xor i32 %i.cep, -1
  %i.cex = and i32 %i.ccr, %i.cew
  %i.cey = or i32 %i.cev, %i.cex
  %i.cez = add i32 %i.bri, -1538233109
  %i.cfa = add i32 %i.cez, %i.cbs
  %i.cfb = add i32 %i.cfa, %i.cey
  %i.cfc = add i32 %i.cfb, %i.ceu                 ; 2 uses
  %i.cfd = tail call i32 @llvm.fshl.i32(i32 %i.ceo, i32 %i.ceo, i32 30)
  %i.cfe = tail call i32 @llvm.fshl.i32(i32 %i.ceo, i32 %i.ceo, i32 19)
  %i.cff = tail call i32 @llvm.fshl.i32(i32 %i.ceo, i32 %i.ceo, i32 10)
  %i.cfg = xor i32 %i.cfe, %i.cff
  %i.cfh = xor i32 %i.cfg, %i.cfd
  %i.cfi = and i32 %i.ceo, %i.cdp
  %i.cfj = xor i32 %i.ceo, %i.cdp
  %i.cfk = and i32 %i.cfj, %i.ccq
  %i.cfl = xor i32 %i.cfk, %i.cfi
  %i.cfm = add i32 %i.cfh, %i.cfl
  %i.cfn = add i32 %i.cfm, %i.cfc                 ; 11 uses
  %i.cfo = add i32 %i.cfc, %i.cbr                 ; 10 uses
  %i.cfp = tail call i32 @llvm.fshl.i32(i32 %i.cfo, i32 %i.cfo, i32 26)
  %i.cfq = tail call i32 @llvm.fshl.i32(i32 %i.cfo, i32 %i.cfo, i32 21)
  %i.cfr = tail call i32 @llvm.fshl.i32(i32 %i.cfo, i32 %i.cfo, i32 7)
  %i.cfs = xor i32 %i.cfq, %i.cfr
  %i.cft = xor i32 %i.cfs, %i.cfp
  %i.cfu = and i32 %i.cfo, %i.cep
  %i.cfv = xor i32 %i.cfo, -1
  %i.cfw = and i32 %i.cdq, %i.cfv
  %i.cfx = or i32 %i.cfu, %i.cfw
  %i.cfy = add i32 %i.aul, -1090935817
  %i.cfz = add i32 %i.cfy, %i.brs
  %i.cga = add i32 %i.cfz, %i.boi
  %i.cgb = add i32 %i.cga, %i.brn
  %i.cgc = add i32 %i.cgb, %i.ccr
  %i.cgd = add i32 %i.cgc, %i.cfx
  %i.cge = add i32 %i.cgd, %i.cft                 ; 2 uses
  %i.cgf = tail call i32 @llvm.fshl.i32(i32 %i.cfn, i32 %i.cfn, i32 30)
  %i.cgg = tail call i32 @llvm.fshl.i32(i32 %i.cfn, i32 %i.cfn, i32 19)
  %i.cgh = tail call i32 @llvm.fshl.i32(i32 %i.cfn, i32 %i.cfn, i32 10)
  %i.cgi = xor i32 %i.cgg, %i.cgh
  %i.cgj = xor i32 %i.cgi, %i.cgf
  %i.cgk = and i32 %i.cfn, %i.ceo
  %i.cgl = xor i32 %i.cfn, %i.ceo
  %i.cgm = and i32 %i.cgl, %i.cdp
  %i.cgn = xor i32 %i.cgm, %i.cgk
  %i.cgo = add i32 %i.cgj, %i.cgn
  %i.cgp = add i32 %i.cgo, %i.cge                 ; 9 uses
  %i.cgq = add i32 %i.cge, %i.ccq                 ; 9 uses
  %i.cgr = tail call i32 @llvm.fshl.i32(i32 %i.cgq, i32 %i.cgq, i32 26)
  %i.cgs = tail call i32 @llvm.fshl.i32(i32 %i.cgq, i32 %i.cgq, i32 21)
  %i.cgt = tail call i32 @llvm.fshl.i32(i32 %i.cgq, i32 %i.cgq, i32 7)
  %i.cgu = xor i32 %i.cgs, %i.cgt
  %i.cgv = xor i32 %i.cgu, %i.cgr
  %i.cgw = and i32 %i.cgq, %i.cfo
  %i.cgx = xor i32 %i.cgq, -1
  %i.cgy = and i32 %i.cep, %i.cgx
  %i.cgz = or i32 %i.cgw, %i.cgy
  %i.cha = add i32 %i.auy, -965641998
  %i.chb = add i32 %i.cha, %i.bsc
  %i.chc = add i32 %i.chb, %i.bov
  %i.chd = add i32 %i.chc, %i.brx
  %i.che = add i32 %i.chd, %i.cdq
  %i.chf = add i32 %i.che, %i.cgz
  %i.chg = add i32 %i.chf, %i.cgv                 ; 2 uses
  %i.chh = tail call i32 @llvm.fshl.i32(i32 %i.cgp, i32 %i.cgp, i32 30)
  %i.chi = tail call i32 @llvm.fshl.i32(i32 %i.cgp, i32 %i.cgp, i32 19)
  %i.chj = tail call i32 @llvm.fshl.i32(i32 %i.cgp, i32 %i.cgp, i32 10)
  %i.chk = xor i32 %i.chi, %i.chj
  %i.chl = xor i32 %i.chk, %i.chh
  %i.chm = and i32 %i.cgp, %i.cfn
  %i.chn = xor i32 %i.cgp, %i.cfn
  %i.cho = and i32 %i.chn, %i.ceo
  %i.chp = xor i32 %i.cho, %i.chm
  %i.chq = add i32 %i.chl, %i.chp
  %i.chr = add i32 %i.chq, %i.chg
  %i.chs = add i32 %i.chg, %i.cdp
  %i.cht = add i32 %i.chr, %.sroa.05961.0.copyload
  store i32 %i.cht, ptr %1, align 4, !tbaa !6
  %i.chu = add i32 %i.cgp, %.sroa.5.0.copyload
  store i32 %i.chu, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !6
  %i.chv = add i32 %i.cfn, %.sroa.6.0.copyload
  store i32 %i.chv, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !6
  %i.chw = add i32 %i.ceo, %.sroa.7.0.copyload
  store i32 %i.chw, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !6
  %i.chx = add i32 %i.chs, %.sroa.8.0.copyload
  store i32 %i.chx, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !6
  %i.chy = add i32 %i.cgq, %.sroa.9.0.copyload
  store i32 %i.chy, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !6
  %i.chz = add i32 %i.cfo, %.sroa.10.0.copyload
  store i32 %i.chz, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !6
  %i.cia = add i32 %i.cep, %.sroa.11.0.copyload
  store i32 %i.cia, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = add i32 %1, -56
  %i.c = icmp ult i32 %i.b, -65                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.d = shl i64 %0, 3
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = zext i32 %1 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %2, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %i.a, i64 %i.f
  store i8 -128, ptr %i.g, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.e, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef %3)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load <4 x i32>, ptr %0, align 4, !tbaa !6
  %i.c = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.b)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <4 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.e = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.d)
  store <4 x i32> %i.c, ptr %1, align 1
  store <4 x i32> %i.e, ptr %.sroa.8.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %0, align 4, !tbaa !6
  %i.a = getelementptr i8, ptr %0, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.a, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %0, 6                           ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 6
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  tail call fastcc void @sha256_update(ptr noundef readonly %i.c, ptr noundef %2)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = add i32 %1, -56
  %i.c = icmp ult i32 %i.b, -65                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.d = shl i64 %0, 3
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = zext i32 %1 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %2, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %i.a, i64 %i.f
  store i8 -128, ptr %i.g, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.e, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef %3)
  br i1 %i.c, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i, ptr noundef %3)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !6
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h)
  %i.j = load <4 x i32>, ptr %0, align 4, !tbaa !6
  %i.k = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.j)
  store <4 x i32> %i.k, ptr %1, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.c, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.f, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.i, ptr %.sroa.10.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_init(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #0 {
bb.a:
  store i64 7640891576956012808, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %0, i64 32
  store i64 5840696475078001361, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.g, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %0, 7                           ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv, 7
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  tail call fastcc void @sha512_update(ptr noundef %i.c, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sha512_update(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 {
bb.a:
  %.sroa.07462.0.copyload = load i64, ptr %1, align 8 ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 12 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.val6841 = load i64, ptr %0, align 1
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.val6841) ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val6840 = load i64, ptr %i.b, align 1
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.val6840) ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val6839 = load i64, ptr %i.d, align 1
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %.val6839) ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val6838 = load i64, ptr %i.f, align 1
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %.val6838) ; 7 uses
  %i.h = getelementptr i8, ptr %0, i64 32
  %.val6837 = load i64, ptr %i.h, align 1
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.val6837) ; 7 uses
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val6836 = load i64, ptr %i.j, align 1
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %.val6836) ; 7 uses
  %i.l = getelementptr i8, ptr %0, i64 48
  %.val6835 = load i64, ptr %i.l, align 1
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %.val6835) ; 7 uses
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val6834 = load i64, ptr %i.n, align 1
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %.val6834) ; 7 uses
  %i.p = getelementptr i8, ptr %0, i64 64
  %.val6833 = load i64, ptr %i.p, align 1
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %.val6833) ; 7 uses
  %i.r = getelementptr i8, ptr %0, i64 72
  %.val6832 = load i64, ptr %i.r, align 1
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %.val6832) ; 8 uses
  %i.t = getelementptr i8, ptr %0, i64 80
  %.val6831 = load i64, ptr %i.t, align 1
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %.val6831) ; 8 uses
  %i.v = getelementptr i8, ptr %0, i64 88
  %.val6830 = load i64, ptr %i.v, align 1
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %.val6830) ; 8 uses
  %i.x = getelementptr i8, ptr %0, i64 96
  %.val6829 = load i64, ptr %i.x, align 1
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %.val6829) ; 8 uses
  %i.z = getelementptr i8, ptr %0, i64 104
  %.val6828 = load i64, ptr %i.z, align 1
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %.val6828) ; 8 uses
  %i.ab = getelementptr i8, ptr %0, i64 112
  %.val6827 = load i64, ptr %i.ab, align 1
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %.val6827) ; 13 uses
  %i.ad = getelementptr i8, ptr %0, i64 120
  %.val = load i64, ptr %i.ad, align 1
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %.val) ; 13 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %.sroa.8.0.copyload, i64 %.sroa.8.0.copyload, i64 50)
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %.sroa.8.0.copyload, i64 %.sroa.8.0.copyload, i64 46)
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %.sroa.8.0.copyload, i64 %.sroa.8.0.copyload, i64 23)
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = xor i64 %i.ai, %i.af
  %i.ak = and i64 %.sroa.9.0.copyload, %.sroa.8.0.copyload
  %i.al = xor i64 %.sroa.8.0.copyload, -1
  %i.am = and i64 %.sroa.10.0.copyload, %i.al
  %i.an = or i64 %i.am, %i.ak
  %i.ao = add i64 %i.aj, 4794697086780616226
  %i.ap = add i64 %i.ao, %.sroa.11.0.copyload
  %i.aq = add i64 %i.ap, %i.an
  %i.ar = add i64 %i.aq, %i.a                     ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %.sroa.07462.0.copyload, i64 %.sroa.07462.0.copyload, i64 36)
  %i.at = tail call i64 @llvm.fshl.i64(i64 %.sroa.07462.0.copyload, i64 %.sroa.07462.0.copyload, i64 30)
  %i.au = tail call i64 @llvm.fshl.i64(i64 %.sroa.07462.0.copyload, i64 %.sroa.07462.0.copyload, i64 25)
  %i.av = xor i64 %i.at, %i.au
  %i.aw = xor i64 %i.av, %i.as
  %i.ax = and i64 %.sroa.5.0.copyload, %.sroa.07462.0.copyload
  %i.ay = xor i64 %.sroa.5.0.copyload, %.sroa.07462.0.copyload
  %i.az = and i64 %i.ay, %.sroa.6.0.copyload
  %i.ba = xor i64 %i.az, %i.ax
  %i.bb = add i64 %i.ba, %i.aw
  %i.bc = add i64 %i.bb, %i.ar                    ; 12 uses
  %i.bd = add i64 %i.ar, %.sroa.7.0.copyload      ; 11 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 50)
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 46)
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 23)
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = xor i64 %i.bh, %i.be
  %i.bj = and i64 %i.bd, %.sroa.8.0.copyload
  %i.bk = xor i64 %i.bd, -1
  %i.bl = and i64 %.sroa.9.0.copyload, %i.bk
  %i.bm = or i64 %i.bj, %i.bl
  %i.bn = add i64 %.sroa.10.0.copyload, 8158064640168781261
  %i.bo = add i64 %i.bn, %i.c
  %i.bp = add i64 %i.bo, %i.bm
  %i.bq = add i64 %i.bp, %i.bi                    ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 36)
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 30)
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 25)
  %i.bu = xor i64 %i.bs, %i.bt
  %i.bv = xor i64 %i.bu, %i.br
  %i.bw = and i64 %i.bc, %.sroa.07462.0.copyload
  %i.bx = xor i64 %i.bc, %.sroa.07462.0.copyload
  %i.by = and i64 %i.bx, %.sroa.5.0.copyload
  %i.bz = xor i64 %i.by, %i.bw
  %i.ca = add i64 %i.bv, %i.bz
  %i.cb = add i64 %i.ca, %i.bq                    ; 12 uses
  %i.cc = add i64 %i.bq, %.sroa.6.0.copyload      ; 11 uses
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 50)
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 46)
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.cg = xor i64 %i.ce, %i.cf
  %i.ch = xor i64 %i.cg, %i.cd
  %i.ci = and i64 %i.cc, %i.bd
  %i.cj = xor i64 %i.cc, -1
  %i.ck = and i64 %.sroa.8.0.copyload, %i.cj
  %i.cl = or i64 %i.ci, %i.ck
  %i.cm = add i64 %.sroa.9.0.copyload, -5349999486874862801
  %i.cn = add i64 %i.cm, %i.e
  %i.co = add i64 %i.cn, %i.cl
  %i.cp = add i64 %i.co, %i.ch                    ; 2 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 36)
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 30)
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 25)
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = xor i64 %i.ct, %i.cq
  %i.cv = and i64 %i.cb, %i.bc
  %i.cw = xor i64 %i.cb, %i.bc
  %i.cx = and i64 %i.cw, %.sroa.07462.0.copyload
  %i.cy = xor i64 %i.cx, %i.cv
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = add i64 %i.cz, %i.cp                    ; 12 uses
  %i.db = add i64 %i.cp, %.sroa.5.0.copyload      ; 11 uses
  %i.dc = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 50)
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 46)
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 23)
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = xor i64 %i.df, %i.dc
  %i.dh = and i64 %i.db, %i.cc
  %i.di = xor i64 %i.db, -1
  %i.dj = and i64 %i.bd, %i.di
  %i.dk = or i64 %i.dh, %i.dj
  %i.dl = add i64 %.sroa.8.0.copyload, -1606136188198331460
  %i.dm = add i64 %i.dl, %i.g
  %i.dn = add i64 %i.dm, %i.dk
  %i.do = add i64 %i.dn, %i.dg                    ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 36)
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 30)
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 25)
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = xor i64 %i.ds, %i.dp
  %i.du = and i64 %i.da, %i.cb
  %i.dv = xor i64 %i.da, %i.cb
  %i.dw = and i64 %i.dv, %i.bc
  %i.dx = xor i64 %i.dw, %i.du
  %i.dy = add i64 %i.dt, %i.dx
  %i.dz = add i64 %i.dy, %i.do                    ; 12 uses
  %i.ea = add i64 %i.do, %.sroa.07462.0.copyload  ; 11 uses
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 50)
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 46)
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 23)
  %i.ee = xor i64 %i.ec, %i.ed
  %i.ef = xor i64 %i.ee, %i.eb
  %i.eg = and i64 %i.ea, %i.db
  %i.eh = xor i64 %i.ea, -1
  %i.ei = and i64 %i.cc, %i.eh
  %i.ej = or i64 %i.eg, %i.ei
  %i.ek = add i64 %i.bd, 4131703408338449720
  %i.el = add i64 %i.ek, %i.i
  %i.em = add i64 %i.el, %i.ej
  %i.en = add i64 %i.em, %i.ef                    ; 2 uses
  %i.eo = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 36)
  %i.ep = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 30)
  %i.eq = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 25)
  %i.er = xor i64 %i.ep, %i.eq
  %i.es = xor i64 %i.er, %i.eo
  %i.et = and i64 %i.dz, %i.da
  %i.eu = xor i64 %i.dz, %i.da
  %i.ev = and i64 %i.eu, %i.cb
  %i.ew = xor i64 %i.ev, %i.et
  %i.ex = add i64 %i.es, %i.ew
  %i.ey = add i64 %i.ex, %i.en                    ; 12 uses
  %i.ez = add i64 %i.en, %i.bc                    ; 11 uses
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 50)
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 46)
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 23)
end_hunk_1
begin_hunk_2_@sha512_update:bb.a
  %i.dcn = tail call i64 @llvm.fshl.i64(i64 %i.dby, i64 %i.dby, i64 36)
  %i.dco = tail call i64 @llvm.fshl.i64(i64 %i.dby, i64 %i.dby, i64 30)
  %i.dcp = tail call i64 @llvm.fshl.i64(i64 %i.dby, i64 %i.dby, i64 25)
  %i.dcq = xor i64 %i.dco, %i.dcp
  %i.dcr = xor i64 %i.dcq, %i.dcn
  %i.dcs = and i64 %i.daz, %i.dby
  %i.dct = xor i64 %i.daz, %i.dby
  %i.dcu = and i64 %i.dct, %i.daa
  %i.dcv = xor i64 %i.dcu, %i.dcs
  %i.dcw = add i64 %i.dcv, %i.dcr
  %i.dcx = add i64 %i.dcw, %i.dcm                 ; 11 uses
  %i.dcy = add i64 %i.dcm, %i.czb                 ; 10 uses
  %i.dcz = tail call i64 @llvm.fshl.i64(i64 %i.dcy, i64 %i.dcy, i64 50)
  %i.dda = tail call i64 @llvm.fshl.i64(i64 %i.dcy, i64 %i.dcy, i64 46)
  %i.ddb = tail call i64 @llvm.fshl.i64(i64 %i.dcy, i64 %i.dcy, i64 23)
  %i.ddc = xor i64 %i.dda, %i.ddb
  %i.ddd = xor i64 %i.ddc, %i.dcz
  %i.dde = and i64 %i.dbz, %i.dcy
  %i.ddf = xor i64 %i.dcy, -1
  %i.ddg = and i64 %i.dba, %i.ddf
  %i.ddh = or i64 %i.ddg, %i.dde
  %i.ddi = add i64 %i.brv, 6902733635092675308
  %i.ddj = add i64 %i.ddi, %i.cpc
  %i.ddk = add i64 %i.ddj, %i.cls
  %i.ddl = add i64 %i.ddk, %i.cox
  %i.ddm = add i64 %i.ddl, %i.dab
  %i.ddn = add i64 %i.ddm, %i.ddd
  %i.ddo = add i64 %i.ddn, %i.ddh                 ; 2 uses
  %i.ddp = tail call i64 @llvm.fshl.i64(i64 %i.dcx, i64 %i.dcx, i64 36)
  %i.ddq = tail call i64 @llvm.fshl.i64(i64 %i.dcx, i64 %i.dcx, i64 30)
  %i.ddr = tail call i64 @llvm.fshl.i64(i64 %i.dcx, i64 %i.dcx, i64 25)
  %i.dds = xor i64 %i.ddq, %i.ddr
  %i.ddt = xor i64 %i.dds, %i.ddp
  %i.ddu = and i64 %i.dby, %i.dcx
  %i.ddv = xor i64 %i.dby, %i.dcx
  %i.ddw = and i64 %i.ddv, %i.daz
  %i.ddx = xor i64 %i.ddw, %i.ddu
  %i.ddy = add i64 %i.ddx, %i.ddt
  %i.ddz = add i64 %i.ddy, %i.ddo                 ; 9 uses
  %i.dea = add i64 %i.ddo, %i.daa                 ; 9 uses
  %i.deb = tail call i64 @llvm.fshl.i64(i64 %i.dea, i64 %i.dea, i64 50)
  %i.dec = tail call i64 @llvm.fshl.i64(i64 %i.dea, i64 %i.dea, i64 46)
  %i.ded = tail call i64 @llvm.fshl.i64(i64 %i.dea, i64 %i.dea, i64 23)
  %i.dee = xor i64 %i.dec, %i.ded
  %i.def = xor i64 %i.dee, %i.deb
  %i.deg = and i64 %i.dcy, %i.dea
  %i.deh = xor i64 %i.dea, -1
  %i.dei = and i64 %i.dbz, %i.deh
  %i.dej = or i64 %i.dei, %i.deg
  %i.dek = add i64 %i.bsi, 7801388544844847127
  %i.del = add i64 %i.dek, %i.cpm
  %i.dem = add i64 %i.del, %i.cmf
  %i.den = add i64 %i.dem, %i.cph
  %i.deo = add i64 %i.den, %i.dba
  %i.dep = add i64 %i.deo, %i.def
  %i.deq = add i64 %i.dep, %i.dej                 ; 2 uses
  %i.der = tail call i64 @llvm.fshl.i64(i64 %i.ddz, i64 %i.ddz, i64 36)
  %i.des = tail call i64 @llvm.fshl.i64(i64 %i.ddz, i64 %i.ddz, i64 30)
  %i.det = tail call i64 @llvm.fshl.i64(i64 %i.ddz, i64 %i.ddz, i64 25)
  %i.deu = xor i64 %i.des, %i.det
  %i.dev = xor i64 %i.deu, %i.der
  %i.dew = and i64 %i.dcx, %i.ddz
  %i.dex = xor i64 %i.dcx, %i.ddz
  %i.dey = and i64 %i.dex, %i.dby
  %i.dez = xor i64 %i.dey, %i.dew
  %i.dfa = add i64 %i.dez, %i.dev
  %i.dfb = add i64 %i.dfa, %i.deq
  %i.dfc = add i64 %i.deq, %i.daz
  %i.dfd = add i64 %i.dfb, %.sroa.07462.0.copyload
  store i64 %i.dfd, ptr %1, align 8, !tbaa !13
  %i.dfe = add i64 %i.ddz, %.sroa.5.0.copyload
  store i64 %i.dfe, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  %i.dff = add i64 %i.dcx, %.sroa.6.0.copyload
  store i64 %i.dff, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !13
  %i.dfg = add i64 %i.dby, %.sroa.7.0.copyload
  store i64 %i.dfg, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !13
  %i.dfh = add i64 %i.dfc, %.sroa.8.0.copyload
  store i64 %i.dfh, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !13
  %i.dfi = add i64 %i.dea, %.sroa.9.0.copyload
  store i64 %i.dfi, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !13
  %i.dfj = add i64 %i.dcy, %.sroa.10.0.copyload
  store i64 %i.dfj, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !13
  %i.dfk = add i64 %i.dbz, %.sroa.11.0.copyload
  store i64 %i.dfk, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last(i64 %0, i64 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = add i32 %2, -112
  %i.c = icmp ult i32 %i.b, -129                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %1, i64 %0, i64 3)
  %i.e = shl i64 %0, 3
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.e)
  %i.h = zext i32 %2 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %3, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  store i8 -128, ptr %i.i, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.f, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.g, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef %4)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  store i64 %i.b, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.k, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.n, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.q, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.t, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.w, ptr %.sroa.11.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_init(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #0 {
bb.a:
  store i64 -3766243637369397544, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %0, i64 8
  store i64 7105036623409894663, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %0, i64 16
  store i64 -7973340178411365097, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %0, i64 24
  store i64 1526699215303891257, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %0, i64 32
  store i64 7436329637833083697, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %0, i64 40
  store i64 -8163818279084223215, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %0, i64 48
  store i64 -2662702644619276377, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %0, i64 56
  store i64 5167115440072839076, ptr %i.g, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %0, 7                           ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.b = shl nuw nsw i64 %indvars.iv.i, 7
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  tail call fastcc void @sha512_update(ptr noundef readonly %i.c, ptr noundef %2)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64 %0, i64 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = add i32 %2, -112
  %i.c = icmp ult i32 %i.b, -129                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %1, i64 %0, i64 3)
  %i.e = shl i64 %0, 3
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.e)
  %i.h = zext i32 %2 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %3, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  store i8 -128, ptr %i.i, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.f, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.g, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef %4)
  br i1 %i.c, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i, ptr noundef %4)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  store i64 %i.b, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.k, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.n, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.q, ptr %.sroa.9.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_256() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #17 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.c, align 4, !tbaa !6
  %i.f = getelementptr i8, ptr %i.c, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.f, align 4, !tbaa !6
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_copy_256(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !19
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8, !tbaa !13
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #17 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.424.0.copyload, i64 64, i1 false)
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #17 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.023.0.copyload, i64 32, i1 false)
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.525.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_256(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %.sroa.03.0.copyload, align 4, !tbaa !6
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 4, !tbaa !6
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_256(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_224_256(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext range(i8 0, 4) i8 @update_224_256(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.3110.0.copyload = load i64, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = sub i64 2305843009213693951, %.sroa.3110.0.copyload
  %i.c = icmp ult i64 %i.b, %i.a
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3110.0.copyload, 63       ; 4 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = icmp ne i64 %.sroa.3110.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 4 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0142 = select i1 %or.cond, i32 64, i32 %i.g   ; 2 uses
  %i.h = sub nuw nsw i32 64, %.0142               ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %or.cond, i64 64, i64 %i.d
  %i.i = add i64 %.sroa.3110.0.copyload, %i.a
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !19
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr i8, ptr %.sroa.4100.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.a, i1 false)
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !21
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.0142, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.083.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 3 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.484.0.copyload = load ptr, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %or.cond158 = xor i1 %i.e, %or.cond
  br i1 %or.cond158, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  tail call fastcc void @sha256_update(ptr noundef readonly %.sroa.484.0.copyload, ptr noundef %.sroa.083.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit: ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = and i64 %i.a, 63                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = trunc nuw nsw i64 %i.m to i32
  %.0145 = select i1 %i.n, i32 64, i32 %i.o
  %i.p = sub i32 %2, %.0145                       ; 2 uses
  %i.q = and i32 %i.p, -64                        ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = lshr i32 %i.p, 6                         ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160, %.lr.ph.preheader.i
  %indvars.iv.i161 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i162, %.lr.ph.i160 ] ; 2 uses
  %i.v = shl nuw nsw i64 %indvars.iv.i161, 6
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  tail call fastcc void @sha256_update(ptr noundef readonly %i.w, ptr noundef %.sroa.083.0.copyload)
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i
  br i1 %exitcond.not.i163, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164, label %.lr.ph.i160, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164: ; preds = %.lr.ph.i160, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit
  %i.x = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.484.0.copyload, ptr align 1 %i.t, i64 %i.x, i1 false)
  %i.y = add i64 %.sroa.3110.0.copyload, %i.a
  store ptr %.sroa.083.0.copyload, ptr %0, align 8, !tbaa !16
  store ptr %.sroa.484.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z      ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 4 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.446.0.copyload = load ptr, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.154 = select i1 %or.cond, i64 64, i64 %i.d
  %i.ab = getelementptr i8, ptr %.sroa.446.0.copyload, i64 %.154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %1, i64 %i.z, i1 false)
  %i.ac = add i64 %.sroa.3110.0.copyload, %i.z    ; 3 uses
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !16
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ac, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %bb.f
  tail call fastcc void @sha256_update(ptr noundef readonly %.sroa.446.0.copyload, ptr noundef %.sroa.045.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170: ; preds = %.lr.ph.i166.preheader, %bb.f
  %i.ae = sub i32 %2, %i.h                        ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = and i64 %i.af, 63                       ; 2 uses
  %.not179 = icmp eq i64 %i.ag, 0
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.0148 = select i1 %.not179, i32 64, i32 %i.ah
  %i.ai = sub i32 %i.ae, %.0148                   ; 2 uses
  %i.aj = and i32 %i.ai, -64                      ; 2 uses
  %i.ak = sub i32 %i.ae, %i.aj
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.an = lshr i32 %i.ai, 6                       ; 2 uses
  %.not.i171 = icmp eq i32 %i.an, 0
  br i1 %.not.i171, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178, label %.lr.ph.preheader.i172

.lr.ph.preheader.i172:                            ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170
  %wide.trip.count.i173 = zext nneg i32 %i.an to i64
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174, %.lr.ph.preheader.i172
  %indvars.iv.i175 = phi i64 [ 0, %.lr.ph.preheader.i172 ], [ %indvars.iv.next.i176, %.lr.ph.i174 ] ; 2 uses
  %i.ao = shl nuw nsw i64 %indvars.iv.i175, 6
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao
  tail call fastcc void @sha256_update(ptr noundef readonly %i.ap, ptr noundef %.sroa.045.0.copyload)
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count.i173
  br i1 %exitcond.not.i177, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178, label %.lr.ph.i174, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178: ; preds = %.lr.ph.i174, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170
  %i.aq = zext i32 %i.ak to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.446.0.copyload, ptr align 1 %i.am, i64 %i.aq, i1 false)
  %i.ar = add i64 %i.ac, %i.af
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !16
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178, %bb.c
  %.sink = phi i64 [ %i.i, %bb.c ], [ %i.ar, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178 ], [ %i.y, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164 ]
  store i64 %.sink, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_256(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 3 uses
  %i.c = and i64 %.sroa.5.0.copyload, 63          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.f      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.copyload, i64 32, i1 false)
  %i.g = and i32 %.0, 63                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.023 = select i1 %or.cond3, i64 64, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.023
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = icmp samesign ugt i32 %.0, 55            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.p = shl i64 %.sroa.5.0.copyload, 3
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.r, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.o, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.q, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.o, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.u = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.t)
  store <4 x i32> %i.u, ptr %1, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load <4 x i32>, ptr %i.s, align 16, !tbaa !6
  %i.w = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.v)
  store <4 x i32> %i.w, ptr %.sroa.8.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_256(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_256(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.b, align 16, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.c, align 16, !tbaa !6
  %i.d = and i32 %2, 63                           ; 2 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = lshr i32 %2, 6                           ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv.i, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  call fastcc void @sha256_update(ptr noundef readonly %i.h, ptr noundef nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 %i.e
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k
  %i.m = icmp samesign ugt i32 %i.d, 55           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.n = shl nuw nsw i64 %i.e, 3
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.l, i64 %i.j, i1 false)
  %i.p = getelementptr i8, ptr %i.a, i64 %i.j
  store i8 -128, ptr %i.p, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.m, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.o, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.q = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.r = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.q)
  store <4 x i32> %i.r, ptr %0, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load <4 x i32>, ptr %i.c, align 16, !tbaa !6
  %i.t = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.s)
  store <4 x i32> %i.t, ptr %.sroa.8.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_224() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #17 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %i.c, align 4, !tbaa !6
  %i.f = getelementptr i8, ptr %i.c, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.f, align 4, !tbaa !6
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_224(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %.sroa.03.0.copyload, align 4, !tbaa !6
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.a, align 4, !tbaa !6
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_224(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_224_256(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_224(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 3 uses
  %i.c = and i64 %.sroa.5.0.copyload, 63          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.f      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.copyload, i64 32, i1 false)
  %i.g = and i32 %.0, 63                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.023 = select i1 %or.cond3, i64 64, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.023
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = icmp samesign ugt i32 %.0, 55            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.p = shl i64 %.sroa.5.0.copyload, 3
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.r, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.o, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.q, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.o, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i32, ptr %i.s, align 16, !tbaa !6
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !6
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.ac = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ab)
  store <4 x i32> %i.ac, ptr %1, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.u, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.x, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.aa, ptr %.sroa.10.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_224(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload.i) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload.i) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_224(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %i.b, align 16, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.c, align 16, !tbaa !6
  %i.d = and i32 %2, 63                           ; 2 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = lshr i32 %2, 6                           ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv.i.i, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  call fastcc void @sha256_update(ptr noundef readonly %i.h, ptr noundef nonnull %i.b)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit, label %.lr.ph.i.i, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 %i.e
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k
  %i.m = icmp samesign ugt i32 %i.d, 55           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.n = shl nuw nsw i64 %i.e, 3
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.l, i64 %i.j, i1 false)
  %i.p = getelementptr i8, ptr %i.a, i64 %i.j
  store i8 -128, ptr %i.p, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.m, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.o, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit
  %.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.s = load i32, ptr %i.c, align 16, !tbaa !6
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = load i32, ptr %i.r, align 4, !tbaa !6
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = load i32, ptr %i.q, align 8, !tbaa !6
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.z = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.y)
  store <4 x i32> %i.z, ptr %0, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.t, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.v, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.x, ptr %.sroa.10.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_512() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #17 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store i64 7640891576956012808, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.c, i64 8
  store i64 -4942790177534073029, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %i.c, i64 16
  store i64 4354685564936845355, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr i8, ptr %i.c, i64 24
  store i64 -6534734903238641935, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %i.c, i64 32
  store i64 5840696475078001361, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.c, i64 40
  store i64 -7276294671716946913, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr i8, ptr %i.c, i64 48
  store i64 2270897969802886507, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr i8, ptr %i.c, i64 56
  store i64 6620516959819538809, ptr %i.l, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_copy_512(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !19
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8, !tbaa !13
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.a, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.424.0.copyload, i64 128, i1 false)
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #17 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.023.0.copyload, i64 64, i1 false)
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.525.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_512(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7640891576956012808, ptr %.sroa.03.0.copyload, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 8
  store i64 -4942790177534073029, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store i64 4354685564936845355, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %.sroa.03.0.copyload, i64 24
  store i64 -6534734903238641935, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %.sroa.03.0.copyload, i64 32
  store i64 5840696475078001361, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %.sroa.03.0.copyload, i64 40
  store i64 -7276294671716946913, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %.sroa.03.0.copyload, i64 48
  store i64 2270897969802886507, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %.sroa.03.0.copyload, i64 56
  store i64 6620516959819538809, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_512(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_384_512(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext range(i8 0, 4) i8 @update_384_512(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.3110.0.copyload = load i64, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3110.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3110.0.copyload, 127      ; 4 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = icmp ne i64 %.sroa.3110.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 4 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0142 = select i1 %or.cond, i32 128, i32 %i.g  ; 2 uses
  %i.h = sub nuw nsw i32 128, %.0142              ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %or.cond, i64 128, i64 %i.d
  %i.i = add i64 %.sroa.3110.0.copyload, %i.a
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !19
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr i8, ptr %.sroa.4100.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.a, i1 false)
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !21
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.0142, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.083.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 3 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.484.0.copyload = load ptr, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %or.cond158 = xor i1 %i.e, %or.cond
  br i1 %or.cond158, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  tail call fastcc void @sha512_update(ptr noundef readonly %.sroa.484.0.copyload, ptr noundef %.sroa.083.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit: ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = and i64 %i.a, 127                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = trunc nuw nsw i64 %i.m to i32
  %.0145 = select i1 %i.n, i32 128, i32 %i.o
  %i.p = sub i32 %2, %.0145                       ; 2 uses
  %i.q = and i32 %i.p, -128                       ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = lshr i32 %i.p, 7                         ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160, %.lr.ph.preheader.i
  %indvars.iv.i161 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i162, %.lr.ph.i160 ] ; 2 uses
  %i.v = shl nuw nsw i64 %indvars.iv.i161, 7
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  tail call fastcc void @sha512_update(ptr noundef readonly %i.w, ptr noundef %.sroa.083.0.copyload)
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i
  br i1 %exitcond.not.i163, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164, label %.lr.ph.i160, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164: ; preds = %.lr.ph.i160, %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit
  %i.x = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.484.0.copyload, ptr align 1 %i.t, i64 %i.x, i1 false)
  %i.y = add i64 %.sroa.3110.0.copyload, %i.a
  store ptr %.sroa.083.0.copyload, ptr %0, align 8, !tbaa !22
  store ptr %.sroa.484.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z      ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 4 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.446.0.copyload = load ptr, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.154 = select i1 %or.cond, i64 128, i64 %i.d
  %i.ab = getelementptr i8, ptr %.sroa.446.0.copyload, i64 %.154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %1, i64 %i.z, i1 false)
  %i.ac = add i64 %.sroa.3110.0.copyload, %i.z    ; 3 uses
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !22
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ac, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %bb.f
  tail call fastcc void @sha512_update(ptr noundef readonly %.sroa.446.0.copyload, ptr noundef %.sroa.045.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170: ; preds = %.lr.ph.i166.preheader, %bb.f
  %i.ae = sub i32 %2, %i.h                        ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = and i64 %i.af, 127                      ; 2 uses
  %.not179 = icmp eq i64 %i.ag, 0
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.0148 = select i1 %.not179, i32 128, i32 %i.ah
  %i.ai = sub i32 %i.ae, %.0148                   ; 2 uses
  %i.aj = and i32 %i.ai, -128                     ; 2 uses
  %i.ak = sub i32 %i.ae, %i.aj
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.an = lshr i32 %i.ai, 7                       ; 2 uses
  %.not.i171 = icmp eq i32 %i.an, 0
  br i1 %.not.i171, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit178, label %.lr.ph.preheader.i172

.lr.ph.preheader.i172:                            ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170
  %wide.trip.count.i173 = zext nneg i32 %i.an to i64
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174, %.lr.ph.preheader.i172
  %indvars.iv.i175 = phi i64 [ 0, %.lr.ph.preheader.i172 ], [ %indvars.iv.next.i176, %.lr.ph.i174 ] ; 2 uses
  %i.ao = shl nuw nsw i64 %indvars.iv.i175, 7
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao
  tail call fastcc void @sha512_update(ptr noundef readonly %i.ap, ptr noundef %.sroa.045.0.copyload)
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count.i173
  br i1 %exitcond.not.i177, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit178, label %.lr.ph.i174, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit178: ; preds = %.lr.ph.i174, %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170
  %i.aq = zext i32 %i.ak to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.446.0.copyload, ptr align 1 %i.am, i64 %i.aq, i1 false)
  %i.ar = add i64 %i.ac, %i.af
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !22
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164, %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit178, %bb.c
  %.sink = phi i64 [ %i.i, %bb.c ], [ %i.ar, %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit178 ], [ %i.y, %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164 ]
  store i64 %.sink, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_512(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 13 uses
  %.sroa.025.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.c = and i64 %.sroa.5.0.copyload, 127         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.f     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.025.0.copyload, i64 64, i1 false)
  %i.g = and i32 %.0, 127                         ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.028 = select i1 %or.cond3, i64 128, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 4 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.028
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = sub i64 %.sroa.5.0.copyload, %i.k
  %i.p = xor i64 %.sroa.5.0.copyload, -1
  %i.q = and i64 %i.o, %i.p
  %i.r = lshr i64 %i.q, 63
  %i.s = icmp samesign ugt i32 %.0, 111           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %.sroa.5.0.copyload, i64 3)
  %i.u = shl i64 %.sroa.5.0.copyload, 3
  %i.v = shl nuw nsw i64 %i.t, 56
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.x = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.x, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.v, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.w, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.y = load i64, ptr %i.b, align 16, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call noundef i64 @llvm.bswap.i64(i64 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !13
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !13
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = tail call noundef i64 @llvm.bswap.i64(i64 %i.at)
  store i64 %i.z, ptr %1, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ao, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ar, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.au, ptr %.sroa.11.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_512(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_512(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 7640891576956012808, ptr %i.b, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 -4942790177534073029, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 4354685564936845355, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 -6534734903238641935, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 5840696475078001361, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 -7276294671716946913, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 2270897969802886507, ptr %i.h, align 16, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store i64 6620516959819538809, ptr %i.i, align 8, !tbaa !13
  %i.j = and i32 %2, 127                          ; 2 uses
  %i.k = zext i32 %2 to i64                       ; 2 uses
  %i.l = lshr i32 %2, 7                           ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.m = shl nuw nsw i64 %indvars.iv.i, 7
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  call fastcc void @sha512_update(ptr noundef readonly %i.n, ptr noundef nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  %i.o = getelementptr i8, ptr %1, i64 %i.k
  %i.p = zext nneg i32 %i.j to i64                ; 3 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q
  %i.s = icmp samesign ugt i32 %i.j, 111          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = shl nuw nsw i64 %i.k, 3
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.r, i64 %i.p, i1 false)
  %i.v = getelementptr i8, ptr %i.a, i64 %i.p
  store i8 -128, ptr %i.v, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 0, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.u, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = load i64, ptr %i.b, align 16, !tbaa !13
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = load i64, ptr %i.c, align 8, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = load i64, ptr %i.d, align 16, !tbaa !13
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = load i64, ptr %i.f, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !13
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = load i64, ptr %i.h, align 16, !tbaa !13
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ai)
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !13
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  store i64 %i.x, ptr %0, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %.sroa.11.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_384() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #17 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store i64 -3766243637369397544, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.c, i64 8
  store i64 7105036623409894663, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %i.c, i64 16
  store i64 -7973340178411365097, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr i8, ptr %i.c, i64 24
  store i64 1526699215303891257, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %i.c, i64 32
  store i64 7436329637833083697, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.c, i64 40
  store i64 -8163818279084223215, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr i8, ptr %i.c, i64 48
  store i64 -2662702644619276377, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr i8, ptr %i.c, i64 56
  store i64 5167115440072839076, ptr %i.l, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_384(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -3766243637369397544, ptr %.sroa.03.0.copyload, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 8
  store i64 7105036623409894663, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store i64 -7973340178411365097, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %.sroa.03.0.copyload, i64 24
  store i64 1526699215303891257, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %.sroa.03.0.copyload, i64 32
  store i64 7436329637833083697, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %.sroa.03.0.copyload, i64 40
  store i64 -8163818279084223215, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %.sroa.03.0.copyload, i64 48
  store i64 -2662702644619276377, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %.sroa.03.0.copyload, i64 56
  store i64 5167115440072839076, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_384(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_384_512(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_384(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 11 uses
  %.sroa.025.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.c = and i64 %.sroa.5.0.copyload, 127         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.f     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.025.0.copyload, i64 64, i1 false)
  %i.g = and i32 %.0, 127                         ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.028 = select i1 %or.cond3, i64 128, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 4 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.028
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = sub i64 %.sroa.5.0.copyload, %i.k
  %i.p = xor i64 %.sroa.5.0.copyload, -1
  %i.q = and i64 %i.o, %i.p
  %i.r = lshr i64 %i.q, 63
  %i.s = icmp samesign ugt i32 %.0, 111           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %.sroa.5.0.copyload, i64 3)
  %i.u = shl i64 %.sroa.5.0.copyload, 3
  %i.v = shl nuw nsw i64 %i.t, 56
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.x = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.x, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.v, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.w, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.y = load i64, ptr %i.b, align 16, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call noundef i64 @llvm.bswap.i64(i64 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !13
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an)
  store i64 %i.z, ptr %1, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ao, ptr %.sroa.9.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_384(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload.i) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload.i) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_384(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 -3766243637369397544, ptr %i.b, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 7105036623409894663, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 -7973340178411365097, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 1526699215303891257, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 7436329637833083697, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 -8163818279084223215, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 -2662702644619276377, ptr %i.h, align 16, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 5167115440072839076, ptr %i.i, align 8, !tbaa !13
  %i.j = and i32 %2, 127                          ; 2 uses
  %i.k = zext i32 %2 to i64                       ; 2 uses
  %i.l = lshr i32 %2, 7                           ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.m = shl nuw nsw i64 %indvars.iv.i.i, 7
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  call fastcc void @sha512_update(ptr noundef readonly %i.n, ptr noundef nonnull %i.b)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks.exit, label %.lr.ph.i.i, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.o = getelementptr i8, ptr %1, i64 %i.k
  %i.p = zext nneg i32 %i.j to i64                ; 3 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q
  %i.s = icmp samesign ugt i32 %i.j, 111          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = shl nuw nsw i64 %i.k, 3
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.r, i64 %i.p, i1 false)
  %i.v = getelementptr i8, ptr %i.a, i64 %i.p
  store i8 -128, ptr %i.v, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 0, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.u, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks.exit
  %.sroa.gep18.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = load i64, ptr %i.b, align 16, !tbaa !13
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = load i64, ptr %i.c, align 8, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = load i64, ptr %i.d, align 16, !tbaa !13
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = load i64, ptr %i.f, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !13
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  store i64 %i.x, ptr %0, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = distinct !{!15, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 int", !18, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!18, !18, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 long", !18, i64 0}
end_hunk_2
