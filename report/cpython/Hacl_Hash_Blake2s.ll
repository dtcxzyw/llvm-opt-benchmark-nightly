Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2s?download=true
inline.NumInlined: 101
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_Blake2b_blake2_params_s = type { i8, i8, i8, i8, i32, i64, i8, i8, ptr, ptr }
%struct.Hacl_Hash_Blake2s_block_state_t_s = type { i8, i8, i8, %struct.K____uint32_t___uint32_t__s }
%struct.K____uint32_t___uint32_t__s = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_init(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr i8, ptr %0, i64 52
  store i32 -1694144372, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr i8, ptr %0, i64 56
  store i32 528734635, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr i8, ptr %0, i64 60
  store i32 1541459225, ptr %i.d, align 4, !tbaa !10
  %i.e = and i32 %2, 255
  %i.f = shl i32 %1, 8
  %i.g = and i32 %i.f, 65280
  %i.h = or disjoint i32 %i.g, %i.e
  %i.i = xor i32 %i.h, 1795745383
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  %i.j = getelementptr i8, ptr %0, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr i8, ptr %0, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.k, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_update_multi(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %5 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.a = shl i64 %indvars.iv.next, 6
  %i.b = and i64 %i.a, 4294967232
  %i.c = add i64 %3, %i.b
  %i.d = shl i64 %indvars.iv, 6
  %i.e = and i64 %i.d, 4294967232
  %i.f = getelementptr i8, ptr %4, i64 %i.e
  tail call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.c, ptr noundef %i.f)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_block(ptr nofree noundef captures(none) initializes((0, 64)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 64
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !24

.rtvec:                                           ; preds = %bb.a
  %.val12609 = load i32, ptr %5, align 1          ; 10 uses
  %i.e = getelementptr i8, ptr %5, i64 4
  %.val12608 = load i32, ptr %i.e, align 1        ; 10 uses
  %i.f = getelementptr i8, ptr %5, i64 8
  %.val12607 = load i32, ptr %i.f, align 1        ; 10 uses
  %i.g = getelementptr i8, ptr %5, i64 12
  %.val12606 = load i32, ptr %i.g, align 1        ; 10 uses
  %i.h = getelementptr i8, ptr %5, i64 16
  %.val12605 = load i32, ptr %i.h, align 1        ; 10 uses
  %i.i = getelementptr i8, ptr %5, i64 20
  %.val12604 = load i32, ptr %i.i, align 1        ; 10 uses
  %i.j = getelementptr i8, ptr %5, i64 24
  %.val12603 = load i32, ptr %i.j, align 1        ; 10 uses
  %i.k = getelementptr i8, ptr %5, i64 28
  %.val12602 = load i32, ptr %i.k, align 1        ; 10 uses
  %i.l = getelementptr i8, ptr %5, i64 32
  %.val12601 = load i32, ptr %i.l, align 1        ; 10 uses
  %i.m = getelementptr i8, ptr %5, i64 36
  %.val12600 = load i32, ptr %i.m, align 1        ; 10 uses
  %i.n = getelementptr i8, ptr %5, i64 40
  %i.o = getelementptr i8, ptr %5, i64 44
  %i.p = getelementptr i8, ptr %5, i64 48
  %.val12597 = load i32, ptr %i.p, align 1        ; 10 uses
  %i.q = getelementptr i8, ptr %5, i64 52
  %.val12596 = load i32, ptr %i.q, align 1        ; 10 uses
  %i.r = getelementptr i8, ptr %5, i64 56
  %.val12595 = load i32, ptr %i.r, align 1        ; 10 uses
  %i.s = getelementptr i8, ptr %5, i64 60
  %.val = load i32, ptr %i.s, align 1             ; 10 uses
  %. = sext i1 %2 to i32
  %.012594 = sext i1 %3 to i32
  %i.t = trunc i64 %4 to i32
  %i.u = lshr i64 %4, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 44        ; 2 uses
  %i.al = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %.val12598 = load i32, ptr %i.o, align 1        ; 10 uses
  %.val12599 = load i32, ptr %i.n, align 1        ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  %i.am = load i32, ptr %i.w, align 4, !tbaa !10
  %i.an = xor i32 %i.am, %i.t
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !10
  %i.ap = xor i32 %i.ao, %i.v
  %i.aq = load i32, ptr %i.y, align 4, !tbaa !10
  %i.ar = xor i32 %i.aq, %.
  %i.as = load i32, ptr %i.z, align 4, !tbaa !10
  %i.at = xor i32 %i.as, %.012594
  %i.au = load i32, ptr %0, align 4, !tbaa !10
  %i.av = load i32, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.aw = add i32 %i.av, %i.au
  %i.ax = load i32, ptr %i.ab, align 4, !tbaa !10
  %i.ay = load i32, ptr %i.ac, align 4, !tbaa !10 ; 2 uses
  %i.az = add i32 %i.ay, %i.ax
  %i.ba = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.bb = load i32, ptr %i.ae, align 4, !tbaa !10 ; 2 uses
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = load i32, ptr %i.af, align 4, !tbaa !10
  %i.be = load i32, ptr %i.ag, align 4, !tbaa !10 ; 2 uses
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = add i32 %i.aw, %.val12609               ; 2 uses
  %i.bh = add i32 %i.az, %.val12607               ; 2 uses
  %i.bi = add i32 %i.bc, %.val12605               ; 2 uses
  %i.bj = add i32 %i.bf, %.val12603               ; 2 uses
  %i.bk = xor i32 %i.bg, %i.an                    ; 2 uses
  %i.bl = xor i32 %i.bh, %i.ap                    ; 2 uses
  %i.bm = xor i32 %i.bi, %i.ar                    ; 2 uses
  %i.bn = xor i32 %i.bj, %i.at                    ; 2 uses
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 16) ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 16) ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 16) ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 16) ; 2 uses
  %i.bs = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.bt = add i32 %i.bs, %i.bo                    ; 2 uses
  %i.bu = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.bv = add i32 %i.bu, %i.bp                    ; 2 uses
  %i.bw = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.bx = add i32 %i.bw, %i.bq                    ; 2 uses
  %i.by = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.bz = add i32 %i.by, %i.br                    ; 2 uses
  %i.ca = xor i32 %i.bt, %i.av                    ; 2 uses
  %i.cb = xor i32 %i.bv, %i.ay                    ; 2 uses
  %i.cc = xor i32 %i.bx, %i.bb                    ; 2 uses
  %i.cd = xor i32 %i.bz, %i.be                    ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 20) ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 20) ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 20) ; 2 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 20) ; 2 uses
  %i.ci = add i32 %i.ce, %i.bg
  %i.cj = add i32 %i.cf, %i.bh
  %i.ck = add i32 %i.cg, %i.bi
  %i.cl = add i32 %i.ch, %i.bj
  %i.cm = add i32 %i.ci, %.val12608               ; 2 uses
  %i.cn = add i32 %i.cj, %.val12606               ; 2 uses
  %i.co = add i32 %i.ck, %.val12604               ; 2 uses
  %i.cp = add i32 %i.cl, %.val12602               ; 2 uses
  %i.cq = xor i32 %i.cm, %i.bo                    ; 2 uses
  %i.cr = xor i32 %i.cn, %i.bp                    ; 2 uses
  %i.cs = xor i32 %i.co, %i.bq                    ; 2 uses
  %i.ct = xor i32 %i.cp, %i.br                    ; 2 uses
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 24) ; 2 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 24) ; 2 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 24) ; 2 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 24) ; 2 uses
  %i.cy = add i32 %i.cu, %i.bt                    ; 2 uses
  %i.cz = add i32 %i.cv, %i.bv                    ; 2 uses
  %i.da = add i32 %i.cw, %i.bx                    ; 2 uses
  %i.db = add i32 %i.cx, %i.bz                    ; 2 uses
  %i.dc = xor i32 %i.cy, %i.ce                    ; 2 uses
  %i.dd = xor i32 %i.cz, %i.cf                    ; 2 uses
  %i.de = xor i32 %i.da, %i.cg                    ; 2 uses
  %i.df = xor i32 %i.db, %i.ch                    ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 25) ; 2 uses
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 25) ; 2 uses
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 25) ; 2 uses
  %i.dj = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 25) ; 2 uses
  %i.dk = add i32 %i.dh, %i.cm
  %i.dl = add i32 %i.di, %i.cn
  %i.dm = add i32 %i.dj, %i.co
  %i.dn = add i32 %i.cp, %i.dg
  %i.do = add i32 %i.dk, %.val12601               ; 2 uses
  %i.dp = add i32 %i.dl, %.val12599               ; 2 uses
  %i.dq = add i32 %i.dm, %.val12597               ; 2 uses
  %i.dr = add i32 %i.dn, %.val12595               ; 2 uses
  %i.ds = xor i32 %i.do, %i.cx                    ; 2 uses
  %i.dt = xor i32 %i.dp, %i.cu                    ; 2 uses
  %i.du = xor i32 %i.dq, %i.cv                    ; 2 uses
  %i.dv = xor i32 %i.dr, %i.cw                    ; 2 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.ds, i32 %i.ds, i32 16) ; 2 uses
  %i.dx = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 16) ; 2 uses
  %i.dy = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 16) ; 2 uses
  %i.dz = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 16) ; 2 uses
  %i.ea = add i32 %i.dw, %i.da                    ; 2 uses
  %i.eb = add i32 %i.dx, %i.db                    ; 2 uses
  %i.ec = add i32 %i.dy, %i.cy                    ; 2 uses
  %i.ed = add i32 %i.dz, %i.cz                    ; 2 uses
  %i.ee = xor i32 %i.ea, %i.dh                    ; 2 uses
  %i.ef = xor i32 %i.eb, %i.di                    ; 2 uses
  %i.eg = xor i32 %i.ec, %i.dj                    ; 2 uses
  %i.eh = xor i32 %i.ed, %i.dg                    ; 2 uses
  %i.ei = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 20) ; 2 uses
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.ef, i32 %i.ef, i32 20) ; 2 uses
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 20) ; 2 uses
  %i.el = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 20) ; 2 uses
  %i.em = add i32 %i.ei, %i.do
  %i.en = add i32 %i.ej, %i.dp
  %i.eo = add i32 %i.ek, %i.dq
  %i.ep = add i32 %i.el, %i.dr
  %i.eq = add i32 %i.em, %.val12600               ; 2 uses
  %i.er = add i32 %i.en, %.val12598               ; 2 uses
  %i.es = add i32 %i.eo, %.val12596               ; 2 uses
  %i.et = add i32 %i.ep, %.val                    ; 2 uses
  %i.eu = xor i32 %i.eq, %i.dw                    ; 2 uses
  %i.ev = xor i32 %i.er, %i.dx                    ; 2 uses
  %i.ew = xor i32 %i.es, %i.dy                    ; 2 uses
  %i.ex = xor i32 %i.et, %i.dz                    ; 2 uses
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 24) ; 2 uses
  %i.ez = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 24) ; 2 uses
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 24) ; 2 uses
  %i.fb = tail call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 24) ; 2 uses
  %i.fc = add i32 %i.ey, %i.ea                    ; 2 uses
  %i.fd = add i32 %i.ez, %i.eb                    ; 2 uses
  %i.fe = add i32 %i.fa, %i.ec                    ; 2 uses
  %i.ff = add i32 %i.fb, %i.ed                    ; 2 uses
  %i.fg = xor i32 %i.fc, %i.ei                    ; 2 uses
  %i.fh = xor i32 %i.fd, %i.ej                    ; 2 uses
  %i.fi = xor i32 %i.fe, %i.ek                    ; 2 uses
  %i.fj = xor i32 %i.ff, %i.el                    ; 2 uses
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.fg, i32 %i.fg, i32 25) ; 2 uses
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 25) ; 2 uses
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 25) ; 2 uses
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 25) ; 2 uses
  %i.fo = add i32 %i.fn, %i.eq
  %i.fp = add i32 %i.fk, %i.er
  %i.fq = add i32 %i.fl, %i.es
  %i.fr = add i32 %i.fm, %i.et
  %i.fs = add i32 %i.fo, %.val12595               ; 2 uses
  %i.ft = add i32 %i.fp, %.val12605               ; 2 uses
  %i.fu = add i32 %i.fq, %.val12600               ; 2 uses
  %i.fv = add i32 %i.fr, %.val12596               ; 2 uses
  %i.fw = xor i32 %i.fs, %i.ez                    ; 2 uses
  %i.fx = xor i32 %i.ft, %i.fa                    ; 2 uses
  %i.fy = xor i32 %i.fu, %i.fb                    ; 2 uses
  %i.fz = xor i32 %i.fv, %i.ey                    ; 2 uses
  %i.ga = tail call i32 @llvm.fshl.i32(i32 %i.fw, i32 %i.fw, i32 16) ; 2 uses
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_key:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !19
  %i.c = call ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc() local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %0 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 32, i8 0, i8 1, i8 1>, ptr %0, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx.i, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !19
  %i.c = call noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_reset_with_key_and_params(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @reset_raw(ptr noundef %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @reset_raw(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %.sroa.8120 = alloca [13 x i8], align 1         ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !12 ; 2 uses
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4126.0.copyload = load i8, ptr %.sroa.4126.0..sroa_idx, align 1, !tbaa !12
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5127.0.copyload = load i8, ptr %.sroa.5127.0..sroa_idx, align 2, !tbaa !14
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx, i64 13, i1 false)
  %.sroa.7129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7129.0.copyload = load ptr, ptr %.sroa.7129.0..sroa_idx, align 8, !tbaa !17 ; 5 uses
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8130.0.copyload = load ptr, ptr %.sroa.8130.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i64                      ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.8130.0.copyload, i64 %i.d
  %i.f = sub nsw i64 64, %i.d
  %i.g = and i64 %i.f, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8130.0.copyload, ptr align 1 %2, i64 %i.d, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 8
  %i.h = zext i16 %.sroa.10.0.copyload to i32
  %i.i = shl nuw i32 %i.h, 16
  %.sroa.1285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1285.0.copyload = load ptr, ptr %.sroa.1285.0..sroa_idx, align 8, !tbaa !19
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !19
  %i.j = getelementptr i8, ptr %.sroa.7129.0.copyload, i64 16
  %i.k = getelementptr i8, ptr %.sroa.7129.0.copyload, i64 32
  %i.l = getelementptr i8, ptr %.sroa.7129.0.copyload, i64 48
  %i.m = trunc i64 %.sroa.8.0.copyload to i32
  %i.n = lshr i64 %.sroa.8.0.copyload, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = xor i32 %i.i, %i.o
  %i.q = load <2 x i32>, ptr %1, align 8
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.k, align 4, !tbaa !10
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.l, align 4, !tbaa !10
  %i.r = insertelement <4 x i32> poison, i32 %i.m, i64 2
  %i.s = insertelement <4 x i32> %i.r, i32 %i.p, i64 3
  %i.t = shufflevector <2 x i32> %i.q, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.v = xor <4 x i32> %i.u, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  %i.w = load <2 x i32>, ptr %.sroa.1285.0.copyload, align 1
  %i.x = load <2 x i32>, ptr %.sroa.14.0.copyload, align 1
  %i.y = shufflevector <2 x i32> %i.w, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.z = xor <4 x i32> %i.y, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.v, ptr %.sroa.7129.0.copyload, align 4, !tbaa !10
  store <4 x i32> %i.z, ptr %i.j, align 4, !tbaa !10
  %.not = icmp eq i8 %.sroa.0.0.copyload, 0
  %. = select i1 %.not, i64 0, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !12
  store i8 %.sroa.4126.0.copyload, ptr %.sroa.4126.0..sroa_idx, align 1, !tbaa !12
  store i8 %.sroa.5127.0.copyload, ptr %.sroa.5127.0..sroa_idx, align 2, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120, i64 13, i1 false)
  store ptr %.sroa.7129.0.copyload, ptr %.sroa.7129.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.8130.0.copyload, ptr %.sroa.8130.0..sroa_idx, align 8, !tbaa !19
  store i64 %., ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_reset_with_key(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.8120.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !12 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !12 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8120.i)
  %.sroa.6128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7129.0.copyload.i = load ptr, ptr %.sroa.7129.0..sroa_idx.i, align 8, !tbaa !17 ; 8 uses
  %.sroa.8130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8130.0.copyload.i = load ptr, ptr %.sroa.8130.0..sroa_idx.i, align 8, !tbaa !19 ; 3 uses
  %i.a = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.sroa.0.0.copyload.i to i64     ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.8130.0.copyload.i, i64 %i.b
  %i.d = sub nsw i64 64, %i.b
  %i.e = and i64 %i.d, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8130.0.copyload.i, ptr readonly align 1 %1, i64 %i.b, i1 false)
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %..i = phi i64 [ 0, %bb.a ], [ 64, %bb.b ]
  %.sroa.0.1.insert.ext = zext i8 %.sroa.0.0.copyload.i to i32
  %.sroa.0.1.insert.shift = shl nuw nsw i32 %.sroa.0.1.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.4.0.copyload.i to i32
  %.sroa.0.1.insert.insert = or disjoint i32 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %i.f = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 52
  store i32 -1694144372, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 56
  store i32 528734635, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 60
  store i32 1541459225, ptr %i.i, align 4, !tbaa !10
  %i.j = xor i32 %.sroa.0.1.insert.insert, 1795745383
  store i32 %i.j, ptr %.sroa.7129.0.copyload.i, align 4, !tbaa !10
  %i.k = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.l, align 4, !tbaa !10
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !12
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !12
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i, i64 13, i1 false)
  store ptr %.sroa.7129.0.copyload.i, ptr %.sroa.7129.0..sroa_idx.i, align 8, !tbaa !17
  store ptr %.sroa.8130.0.copyload.i, ptr %.sroa.8130.0..sroa_idx.i, align 8, !tbaa !19
  store i64 %..i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8120.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_reset(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #9 {
_Py_LibHacl_Hacl_Hash_Blake2s_reset_with_key.exit:
  %.sroa.8120.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8120.i.i)
  %.sroa.6128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i32
  %i.a = xor i32 %.sroa.0.0.insert.ext.i, 1795745383
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x ptr>, ptr %.sroa.7129.0..sroa_idx.i.i, align 8, !tbaa !25
  %.sroa.7129.0.copyload.i.i = load ptr, ptr %.sroa.7129.0..sroa_idx.i.i, align 8, !tbaa !17 ; 7 uses
  %i.c = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 52
  store i32 -1694144372, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 56
  store i32 528734635, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 60
  store i32 1541459225, ptr %i.f, align 4, !tbaa !10
  store i32 %i.a, ptr %.sroa.7129.0.copyload.i.i, align 4, !tbaa !10
  %i.g = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.h, align 4, !tbaa !10
  store i8 0, ptr %0, align 8, !tbaa !12
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i.i, i64 13, i1 false)
  store <2 x ptr> %i.b, ptr %.sroa.7129.0..sroa_idx.i.i, align 8, !tbaa !25
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8120.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_Blake2s_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0122 = alloca %struct.Hacl_Hash_Blake2s_block_state_t_s, align 8 ; 2 uses
  %.sroa.049 = alloca %struct.Hacl_Hash_Blake2s_block_state_t_s, align 8 ; 2 uses
  %.sroa.3145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.3145.0.copyload = load i64, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !21 ; 7 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3145.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3145.0.copyload, 63       ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.3145.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 3 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0177 = select i1 %or.cond, i32 64, i32 %i.g   ; 2 uses
  %i.h = sub nuw nsw i32 64, %.0177               ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0122, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4135.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %. = select i1 %or.cond, i64 64, i64 %i.d
  %i.i = getelementptr i8, ptr %.sroa.4135.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = add i64 %.sroa.3145.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0122, i64 24, i1 false), !tbaa.struct !26
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0177, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0117.0.copyload = load i64, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.6120.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.l = and i64 %i.a, 63                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = trunc nuw nsw i64 %i.l to i32
  %.0182 = select i1 %i.m, i32 64, i32 %i.n
  %i.o = sub i32 %2, %.0182                       ; 2 uses
  %i.p = lshr i32 %i.o, 6                         ; 2 uses
  %i.q = and i32 %i.o, -64                        ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph.i191, %.lr.ph.preheader.i
  %indvars.iv.i192 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i193, %.lr.ph.i191 ] ; 2 uses
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 3 uses
  %i.u = shl nuw nsw i64 %indvars.iv.next.i193, 6
  %i.v = add i64 %i.u, %.sroa.3145.0.copyload
  %i.w = shl nuw nsw i64 %indvars.iv.i192, 6
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  tail call fastcc void @update_block(ptr noundef %.sroa.4118.0.copyload, ptr noundef %.sroa.5119.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.v, ptr noundef readonly %i.x)
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %wide.trip.count.i
  br i1 %exitcond.not.i194, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195, label %.lr.ph.i191, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195: ; preds = %.lr.ph.i191, %bb.e
  %i.y = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6120.0.copyload, ptr align 1 %i.t, i64 %i.y, i1 false)
  %i.z = add i64 %.sroa.3145.0.copyload, %i.a
  store i64 %.sroa.0117.0.copyload, ptr %0, align 8
  store ptr %.sroa.4118.0.copyload, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.5119.0.copyload, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !17
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.462.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.189 = select i1 %or.cond, i64 64, i64 %i.d
  %i.ac = getelementptr i8, ptr %.sroa.462.0.copyload, i64 %.189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %1, i64 %i.aa, i1 false)
  %i.ad = add i64 %.sroa.3145.0.copyload, %i.aa   ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, i64 24, i1 false), !tbaa.struct !26
  store ptr %.sroa.462.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ad, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %i.ae = and i64 %i.ad, 63                       ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = icmp ne i64 %i.ad, 0
  %or.cond12 = and i1 %i.ag, %i.af
  %i.ah = trunc nuw nsw i64 %i.ae to i32
  %.0180 = select i1 %or.cond12, i32 64, i32 %i.ah ; 2 uses
  %i.ai = icmp eq i32 %.0180, 0
  br i1 %i.ai, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.f
  %i.aj = zext nneg i32 %.0180 to i64
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = add i64 %i.ak, 64
  tail call fastcc void @update_block(ptr noundef %.sroa.447.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.al, ptr noundef readonly %.sroa.462.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201

_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201: ; preds = %.lr.ph.i197, %bb.f
  %i.am = sub nuw i32 %2, %i.h                    ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = and i64 %i.an, 63                       ; 2 uses
  %.not210 = icmp eq i64 %i.ao, 0
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.0179 = select i1 %.not210, i32 64, i32 %i.ap
  %i.aq = sub i32 %i.am, %.0179                   ; 2 uses
  %i.ar = lshr i32 %i.aq, 6                       ; 2 uses
  %i.as = and i32 %i.aq, -64                      ; 2 uses
  %i.at = sub i32 %i.am, %i.as
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.au
  %.not.i202 = icmp eq i32 %i.ar, 0
  br i1 %.not.i202, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209, label %.lr.ph.preheader.i203

.lr.ph.preheader.i203:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201
  %wide.trip.count.i204 = zext nneg i32 %i.ar to i64
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %.lr.ph.i205, %.lr.ph.preheader.i203
  %indvars.iv.i206 = phi i64 [ 0, %.lr.ph.preheader.i203 ], [ %indvars.iv.next.i207, %.lr.ph.i205 ] ; 2 uses
  %indvars.iv.next.i207 = add nuw nsw i64 %indvars.iv.i206, 1 ; 3 uses
  %i.aw = shl nuw nsw i64 %indvars.iv.next.i207, 6
  %i.ax = add i64 %i.aw, %i.ad
  %i.ay = shl nuw nsw i64 %indvars.iv.i206, 6
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ay
  tail call fastcc void @update_block(ptr noundef %.sroa.447.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.ax, ptr noundef readonly %i.az)
  %exitcond.not.i208 = icmp eq i64 %indvars.iv.next.i207, %wide.trip.count.i204
  br i1 %exitcond.not.i208, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209, label %.lr.ph.i205, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209: ; preds = %.lr.ph.i205, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201
  %i.ba = zext i32 %i.at to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.462.0.copyload, ptr align 1 %i.av, i64 %i.ba, i1 false)
  %i.bb = add i64 %i.ad, %i.an
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.447.0.copyload, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209, %bb.c
  %.sroa.4135.0.copyload.sink = phi ptr [ %.sroa.4135.0.copyload, %bb.c ], [ %.sroa.462.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209 ], [ %.sroa.6120.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bb, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209 ], [ %i.z, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195 ]
  store ptr %.sroa.4135.0.copyload.sink, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !19
  store i64 %.sink, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2s_digest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 3 uses
  %i.d = alloca [16 x i32], align 16              ; 6 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.457.0.copyload = load i8, ptr %.sroa.457.0..sroa_idx, align 1, !tbaa !12
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.558.0.copyload = load i8, ptr %.sroa.558.0..sroa_idx, align 2, !tbaa !14
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !17
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.548.0.copyload = load ptr, ptr %.sroa.548.0..sroa_idx, align 8, !tbaa !19
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.649.0.copyload = load i64, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  %i.e = and i64 %.sroa.649.0.copyload, 63        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.649.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.h      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.447.0.copyload, i64 64, i1 false)
  %i.i = and i32 %.0, 63                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
  %i.l = zext nneg i32 %i.i to i64
  %.064 = select i1 %or.cond3, i64 64, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.n = trunc i8 %.sroa.558.0.copyload to i1
  %i.o = getelementptr i8, ptr %.sroa.548.0.copyload, i64 %i.m
  %i.p = sub nsw i64 0, %.064
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.q, i64 %i.m, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.n, i64 noundef %.sroa.649.0.copyload, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load <4 x i32>, ptr %i.d, align 16, !tbaa !10
  store <4 x i32> %i.t, ptr %i.a, align 16
  %i.u = load <4 x i32>, ptr %i.s, align 16, !tbaa !10
  store <4 x i32> %i.u, ptr %i.r, align 16
  %i.v = zext i8 %.sroa.457.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.v, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.sroa.4.0.copyload = load i8, ptr %.sroa.457.0..sroa_idx, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2s_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !14
  %i.a = and i8 %.sroa.5.0.copyload, 1
  %.sroa.3.0.insert.ext = zext nneg i8 %i.a to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.4.0.copyload to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.04.0.insert.ext = zext i8 %.sroa.0.0.copyload to i24
  %.sroa.04.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.04.0.insert.ext
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #17
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #17
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #17
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.068.0.copyload = load i8, ptr %0, align 8, !tbaa !12
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.469.0.copyload = load i8, ptr %.sroa.469.0..sroa_idx, align 1, !tbaa !12
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.570.0.copyload = load i8, ptr %.sroa.570.0..sroa_idx, align 2, !tbaa !14
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.772.0.copyload = load ptr, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !17
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.873.0.copyload = load ptr, ptr %.sroa.873.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !21
  %i.a = and i8 %.sroa.570.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #18 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.873.0.copyload, i64 64, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 16, i64 noundef 4) #18 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 16, i64 noundef 4) #18 ; 4 uses
end_hunk_1
begin_hunk_2_@_Py_LibHacl_Hacl_Hash_Blake2s_copy:bb.a
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #17
  tail call void @free(ptr noundef nonnull %i.f) #17
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.critedge, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_hash_with_key(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 -1694144372, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 528734635, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 1541459225, ptr %i.h, align 4, !tbaa !10
  %i.i = and i32 %1, 255
  %i.j = shl i32 %5, 8
  %i.k = and i32 %i.j, 65280
  %i.l = or disjoint i32 %i.k, %i.i
  %i.m = xor i32 %i.l, 1795745383
  store i32 %i.m, ptr %i.b, align 16, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.o, align 4, !tbaa !10
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %5, ptr noundef %4, i32 noundef %3, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load <4 x i32>, ptr %i.b, align 16, !tbaa !10
  store <4 x i32> %i.q, ptr %i.a, align 16
  %i.r = load <4 x i32>, ptr %i.d, align 16, !tbaa !10
  store <4 x i32> %i.r, ptr %i.p, align 16
  %i.s = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.s, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update(ptr nofree noundef nonnull captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #15 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp ugt i32 %2, 63
  %i.f = sub nsw i64 64, %i.d
  %i.g = select i1 %i.e, i64 0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.c, i64 %i.d
  call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.g, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.d, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.i, i1 noundef zeroext false, i64 noundef 64, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %4, 6                           ; 2 uses
  %i.k = and i32 %4, 63                           ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i = and i1 %i.l, %i.m                  ; 2 uses
  %i.n = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.j, %i.n                ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.o = shl nuw nsw i64 %indvars.iv.next.i.i, 6
  %i.p = and i64 %i.o, 4294967232
  %i.q = add nuw nsw i64 %i.p, 64
  %i.r = shl nuw nsw i64 %indvars.iv.i.i, 6
  %i.s = and i64 %i.r, 4294967232
  %i.t = getelementptr i8, ptr %5, i64 %i.s
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.q, ptr noundef readonly %i.t)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !0

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.u = zext i32 %4 to i64                       ; 2 uses
  %i.v = getelementptr i8, ptr %5, i64 %i.u
  %i.w = zext nneg i32 %i.k to i64
  %i.x = select i1 %or.cond.i, i64 64, i64 %i.w   ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.z, i64 %i.x, i1 false)
  %i.aa = add nuw nsw i64 %i.u, 64
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.aa, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ab = lshr i32 %4, 6                          ; 2 uses
  %i.ac = and i32 %4, 63                          ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = icmp ne i32 %i.ab, 0
  %or.cond.i16 = and i1 %i.ad, %i.ae              ; 2 uses
  %i.af = sext i1 %or.cond.i16 to i32
  %.023.i17 = add nsw i32 %i.ab, %i.af            ; 2 uses
  %.not.i.i18 = icmp eq i32 %.023.i17, 0
  br i1 %.not.i.i18, label %update_blocks.exit25, label %.lr.ph.preheader.i.i19

.lr.ph.preheader.i.i19:                           ; preds = %bb.d
  %wide.trip.count.i.i20 = zext nneg i32 %.023.i17 to i64
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.preheader.i.i19
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.preheader.i.i19 ], [ %indvars.iv.next.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 3 uses
  %i.ag = shl nuw nsw i64 %indvars.iv.next.i.i23, 6
  %i.ah = and i64 %i.ag, 4294967232
  %i.ai = shl nuw nsw i64 %indvars.iv.i.i22, 6
  %i.aj = and i64 %i.ai, 4294967232
  %i.ak = getelementptr i8, ptr %5, i64 %i.aj
  tail call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.ah, ptr noundef readonly %i.ak)
  %exitcond.not.i.i24 = icmp eq i64 %indvars.iv.next.i.i23, %wide.trip.count.i.i20
  br i1 %exitcond.not.i.i24, label %update_blocks.exit25, label %.lr.ph.i.i21, !llvm.loop !0

update_blocks.exit25:                             ; preds = %.lr.ph.i.i21, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.al = zext i32 %4 to i64                      ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %i.an = zext nneg i32 %i.ac to i64
  %i.ao = select i1 %or.cond.i16, i64 64, i64 %i.an ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.aq, i64 %i.ao, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.al, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %update_blocks.exit25, %update_blocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_hash_with_key_and_params(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.Hacl_Hash_Blake2b_blake2_params_s) align 8 captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 12 uses
  %i.c = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.e, align 16, !tbaa !10
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = load i8, ptr %3, align 8, !tbaa !29      ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw i32 %i.s, 16
  %i.u = or disjoint i32 %i.p, %i.l
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = lshr i64 %i.z, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 16
  %i.ah = xor i32 %i.v, 1779033703
  %i.ai = xor i32 %i.x, -1150833019
  %i.aj = xor i32 %i.aa, 1013904242
  %i.ak = xor i32 %i.ag, %i.ac
  %i.al = xor i32 %i.ak, -1521486534
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ap = load <2 x i32>, ptr %i.h, align 1
  %i.aq = load <2 x i32>, ptr %i.j, align 1
  %i.ar = shufflevector <2 x i32> %i.ap, <2 x i32> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = xor <4 x i32> %i.ar, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store i32 %i.ah, ptr %i.b, align 16, !tbaa !10
  store i32 %i.ai, ptr %i.am, align 4, !tbaa !10
  store i32 %i.aj, ptr %i.an, align 8, !tbaa !10
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !10
  store <4 x i32> %i.as, ptr %i.d, align 16, !tbaa !10
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %i.o, ptr noundef %4, i32 noundef %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load <4 x i32>, ptr %i.b, align 16, !tbaa !10
  store <4 x i32> %i.au, ptr %i.a, align 16
  %i.av = load <4 x i32>, ptr %i.d, align 16, !tbaa !10
  store <4 x i32> %i.av, ptr %i.at, align 16
  %i.aw = zext i8 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.aw, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !11}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
!13 = !{!"_Bool", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"Hacl_Hash_Blake2b_blake2_params_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !9, i64 4, !20, i64 8, !8, i64 16, !8, i64 17, !18, i64 24, !18, i64 32}
!23 = !{!22, !8, i64 1}
!24 = !{!"branch_weights", i32 1, i32 1048575}
!25 = !{!15, !15, i64 0}
!26 = !{i64 0, i64 1, !12, i64 1, i64 1, !12, i64 2, i64 1, !14, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !19, i64 32, i64 8, !21}
!27 = !{!22, !18, i64 24}
!28 = !{!22, !18, i64 32}
!29 = !{!22, !8, i64 0}
!30 = !{!22, !9, i64 4}
!31 = !{!22, !20, i64 8}
end_hunk_2
