inline.NumInlined: 123
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_Blake2b_blake2_params_s = type { i8, i8, i8, i8, i32, i64, i8, i8, ptr, ptr }
%struct.Hacl_Hash_Blake2b_block_state_t_s = type { i8, i8, i8, %struct.Hacl_Streaming_Types_two_pointers_s }
%struct.Hacl_Streaming_Types_two_pointers_s = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_init(ptr noundef writeonly captures(none) initializes((0, 128)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 96
  store i64 7640891576956012808, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr i8, ptr %0, i64 72
  store i64 -4942790177534073029, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr i8, ptr %0, i64 80
  store i64 4354685564936845355, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %0, i64 88
  store i64 -6534734903238641935, ptr %i.f, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.c, align 8, !tbaa !10
  %i.g = getelementptr i8, ptr %0, i64 104
  store i64 -7276294671716946913, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr i8, ptr %0, i64 112
  store i64 2270897969802886507, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr i8, ptr %0, i64 120
  store i64 6620516959819538809, ptr %i.i, align 8, !tbaa !10
  %i.j = and i32 %2, 255
  %i.k = shl i32 %1, 8
  %i.l = and i32 %i.k, 65280
  %i.m = or disjoint i32 %i.l, %i.j
  %i.n = or disjoint i32 %i.m, 16842752
  %i.o = zext nneg i32 %i.n to i64
  %i.p = xor i64 %i.o, 7640891576956012808
  store i64 %i.p, ptr %0, align 8, !tbaa !10
  %i.q = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.a, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.v, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_update_multi(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i64 %3, i64 %4, ptr noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.a = shl i64 %indvars.iv.next, 7
  %i.b = and i64 %i.a, 4294967168
  %i.c = add i64 %3, %i.b                         ; 2 uses
  %7 = xor i64 %i.c, -1
  %8 = and i64 %3, %7
  %9 = lshr i64 %8, 63
  %i.d = add i64 %9, %4
  %i.e = shl i64 %indvars.iv, 7
  %i.f = and i64 %i.e, 4294967168
  %i.g = getelementptr i8, ptr %5, i64 %i.f
  tail call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.c, i64 %i.d, ptr noundef %i.g)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_block(ptr noundef captures(none) initializes((0, 128)) %0, ptr noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 %4, i64 %5, ptr noundef readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %.val15062 = load i64, ptr %6, align 1          ; 12 uses
  %i.a = getelementptr i8, ptr %6, i64 8
  %.val15061 = load i64, ptr %i.a, align 1        ; 12 uses
  %i.b = getelementptr i8, ptr %6, i64 16
  %.val15060 = load i64, ptr %i.b, align 1        ; 12 uses
  %i.c = getelementptr i8, ptr %6, i64 24
  %.val15059 = load i64, ptr %i.c, align 1        ; 12 uses
  %i.d = getelementptr i8, ptr %6, i64 32
  %.val15058 = load i64, ptr %i.d, align 1        ; 12 uses
  %i.e = getelementptr i8, ptr %6, i64 40
  %.val15057 = load i64, ptr %i.e, align 1        ; 12 uses
  %i.f = getelementptr i8, ptr %6, i64 48
  %.val15056 = load i64, ptr %i.f, align 1        ; 12 uses
  %i.g = getelementptr i8, ptr %6, i64 56
  %.val15055 = load i64, ptr %i.g, align 1        ; 12 uses
  %i.h = getelementptr i8, ptr %6, i64 64
  %.val15054 = load i64, ptr %i.h, align 1        ; 12 uses
  %i.i = getelementptr i8, ptr %6, i64 72
  %.val15053 = load i64, ptr %i.i, align 1        ; 12 uses
  %i.j = getelementptr i8, ptr %6, i64 80
  %.val15052 = load i64, ptr %i.j, align 1        ; 12 uses
  %i.k = getelementptr i8, ptr %6, i64 88
  %.val15051 = load i64, ptr %i.k, align 1        ; 12 uses
  %i.l = getelementptr i8, ptr %6, i64 96
  %.val15050 = load i64, ptr %i.l, align 1        ; 12 uses
  %i.m = getelementptr i8, ptr %6, i64 104
  %.val15049 = load i64, ptr %i.m, align 1        ; 12 uses
  %i.n = getelementptr i8, ptr %6, i64 112
  %.val15048 = load i64, ptr %i.n, align 1        ; 12 uses
  %i.o = getelementptr i8, ptr %6, i64 120
  %.val = load i64, ptr %i.o, align 1             ; 12 uses
  %. = sext i1 %2 to i64
  %.015047 = sext i1 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.p = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = xor i64 %i.q, %4
  %i.s = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10
  %i.u = xor i64 %i.t, %5
  %i.v = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10
  %i.x = xor i64 %i.w, %.
  %i.y = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10
  %i.aa = xor i64 %i.z, %.015047
  %i.ab = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !10
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ah = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ao = add i64 %i.an, %i.al
  %i.ap = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.at = add i64 %i.as, %i.aq
  %i.au = add i64 %i.ae, %.val15062               ; 2 uses
  %i.av = add i64 %i.aj, %.val15060               ; 2 uses
  %i.aw = add i64 %i.ao, %.val15058               ; 2 uses
  %i.ax = add i64 %i.at, %.val15056               ; 2 uses
  %i.ay = xor i64 %i.au, %i.r                     ; 2 uses
  %i.az = xor i64 %i.av, %i.u                     ; 2 uses
  %i.ba = xor i64 %i.aw, %i.x                     ; 2 uses
  %i.bb = xor i64 %i.ax, %i.aa                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32) ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32) ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32) ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32) ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.bi = add i64 %i.bh, %i.bc                    ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10
  %i.bl = add i64 %i.bk, %i.bd                    ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = add i64 %i.bn, %i.be                    ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 88        ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !10
  %i.br = add i64 %i.bq, %i.bf                    ; 2 uses
  %i.bs = xor i64 %i.bi, %i.ad                    ; 2 uses
  %i.bt = xor i64 %i.bl, %i.ai                    ; 2 uses
  %i.bu = xor i64 %i.bo, %i.an                    ; 2 uses
  %i.bv = xor i64 %i.br, %i.as                    ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 40) ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 40) ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 40) ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 40) ; 2 uses
  %i.ca = add i64 %i.bw, %i.au
  %i.cb = add i64 %i.bx, %i.av
  %i.cc = add i64 %i.by, %i.aw
  %i.cd = add i64 %i.bz, %i.ax
  %i.ce = add i64 %i.ca, %.val15061               ; 2 uses
  %i.cf = add i64 %i.cb, %.val15059               ; 2 uses
  %i.cg = add i64 %i.cc, %.val15057               ; 2 uses
  %i.ch = add i64 %i.cd, %.val15055               ; 2 uses
  %i.ci = xor i64 %i.ce, %i.bc                    ; 2 uses
  %i.cj = xor i64 %i.cf, %i.bd                    ; 2 uses
  %i.ck = xor i64 %i.cg, %i.be                    ; 2 uses
  %i.cl = xor i64 %i.ch, %i.bf                    ; 2 uses
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 48) ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 48) ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 48) ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 48) ; 2 uses
  %i.cq = add i64 %i.cm, %i.bi                    ; 2 uses
  %i.cr = add i64 %i.cn, %i.bl                    ; 2 uses
  %i.cs = add i64 %i.co, %i.bo                    ; 2 uses
  %i.ct = add i64 %i.cp, %i.br                    ; 2 uses
  %i.cu = xor i64 %i.cq, %i.bw                    ; 2 uses
  %i.cv = xor i64 %i.cr, %i.bx                    ; 2 uses
  %i.cw = xor i64 %i.cs, %i.by                    ; 2 uses
  %i.cx = xor i64 %i.ct, %i.bz                    ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 1) ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 1) ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 1) ; 2 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 1) ; 2 uses
  %i.dc = add i64 %i.cz, %i.ce
  %i.dd = add i64 %i.da, %i.cf
  %i.de = add i64 %i.db, %i.cg
  %i.df = add i64 %i.ch, %i.cy
  %i.dg = add i64 %i.dc, %.val15054               ; 2 uses
  %i.dh = add i64 %i.dd, %.val15052               ; 2 uses
  %i.di = add i64 %i.de, %.val15050               ; 2 uses
  %i.dj = add i64 %i.df, %.val15048               ; 2 uses
  %i.dk = xor i64 %i.dg, %i.cp                    ; 2 uses
  %i.dl = xor i64 %i.dh, %i.cm                    ; 2 uses
  %i.dm = xor i64 %i.di, %i.cn                    ; 2 uses
  %i.dn = xor i64 %i.dj, %i.co                    ; 2 uses
  %i.do = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 32) ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32) ; 2 uses
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 32) ; 2 uses
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 32) ; 2 uses
  %i.ds = add i64 %i.do, %i.cs                    ; 2 uses
  %i.dt = add i64 %i.dp, %i.ct                    ; 2 uses
  %i.du = add i64 %i.dq, %i.cq                    ; 2 uses
  %i.dv = add i64 %i.dr, %i.cr                    ; 2 uses
  %i.dw = xor i64 %i.ds, %i.cz                    ; 2 uses
  %i.dx = xor i64 %i.dt, %i.da                    ; 2 uses
  %i.dy = xor i64 %i.du, %i.db                    ; 2 uses
  %i.dz = xor i64 %i.dv, %i.cy                    ; 2 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 40) ; 2 uses
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 40) ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 40) ; 2 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 40) ; 2 uses
  %i.ee = add i64 %i.ea, %i.dg
  %i.ef = add i64 %i.eb, %i.dh
  %i.eg = add i64 %i.ec, %i.di
  %i.eh = add i64 %i.ed, %i.dj
  %i.ei = add i64 %i.ee, %.val15053               ; 2 uses
  %i.ej = add i64 %i.ef, %.val15051               ; 2 uses
  %i.ek = add i64 %i.eg, %.val15049               ; 2 uses
  %i.el = add i64 %i.eh, %.val                    ; 2 uses
  %i.em = xor i64 %i.ei, %i.do                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.dp                    ; 2 uses
  %i.eo = xor i64 %i.ek, %i.dq                    ; 2 uses
  %i.ep = xor i64 %i.el, %i.dr                    ; 2 uses
  %i.eq = tail call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 48) ; 2 uses
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 48) ; 2 uses
  %i.es = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 48) ; 2 uses
  %i.et = tail call i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 48) ; 2 uses
  %i.eu = add i64 %i.eq, %i.ds                    ; 2 uses
  %i.ev = add i64 %i.er, %i.dt                    ; 2 uses
  %i.ew = add i64 %i.es, %i.du                    ; 2 uses
  %i.ex = add i64 %i.et, %i.dv                    ; 2 uses
  %i.ey = xor i64 %i.eu, %i.ea                    ; 2 uses
  %i.ez = xor i64 %i.ev, %i.eb                    ; 2 uses
  %i.fa = xor i64 %i.ew, %i.ec                    ; 2 uses
  %i.fb = xor i64 %i.ex, %i.ed                    ; 2 uses
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 1) ; 2 uses
  %i.fd = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 1) ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 1) ; 2 uses
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 1) ; 2 uses
  %i.fg = add i64 %i.ff, %i.ei
  %i.fh = add i64 %i.fc, %i.ej
  %i.fi = add i64 %i.fd, %i.ek
  %i.fj = add i64 %i.fe, %i.el
  %i.fk = add i64 %i.fg, %.val15048               ; 2 uses
  %i.fl = add i64 %i.fh, %.val15058               ; 2 uses
  %i.fm = add i64 %i.fi, %.val15053               ; 2 uses
  %i.fn = add i64 %i.fj, %.val15049               ; 2 uses
end_hunk_0
begin_hunk_1_@update_block:bb.a
  %i.awf = tail call i64 @llvm.fshl.i64(i64 %i.awb, i64 %i.awb, i64 1) ; 2 uses
  %i.awg = tail call i64 @llvm.fshl.i64(i64 %i.awc, i64 %i.awc, i64 1) ; 2 uses
  %i.awh = tail call i64 @llvm.fshl.i64(i64 %i.awd, i64 %i.awd, i64 1) ; 2 uses
  %i.awi = add i64 %i.awh, %i.avk
  %i.awj = add i64 %i.awe, %i.avl
  %i.awk = add i64 %i.awf, %i.avm
  %i.awl = add i64 %i.awg, %i.avn
  %i.awm = add i64 %i.awi, %.val15048             ; 2 uses
  %i.awn = add i64 %i.awj, %.val15058             ; 2 uses
  %i.awo = add i64 %i.awk, %.val15053             ; 2 uses
  %i.awp = add i64 %i.awl, %.val15049             ; 2 uses
  %i.awq = xor i64 %i.awm, %i.avt                 ; 2 uses
  %i.awr = xor i64 %i.awn, %i.avu                 ; 2 uses
  %i.aws = xor i64 %i.awo, %i.avv                 ; 2 uses
  %i.awt = xor i64 %i.awp, %i.avs                 ; 2 uses
  %i.awu = tail call i64 @llvm.fshl.i64(i64 %i.awq, i64 %i.awq, i64 32) ; 2 uses
  %i.awv = tail call i64 @llvm.fshl.i64(i64 %i.awr, i64 %i.awr, i64 32) ; 2 uses
  %i.aww = tail call i64 @llvm.fshl.i64(i64 %i.aws, i64 %i.aws, i64 32) ; 2 uses
  %i.awx = tail call i64 @llvm.fshl.i64(i64 %i.awt, i64 %i.awt, i64 32) ; 2 uses
  %i.awy = add i64 %i.awu, %i.avy                 ; 2 uses
  %i.awz = add i64 %i.awv, %i.avz                 ; 2 uses
  %i.axa = add i64 %i.aww, %i.avw                 ; 2 uses
  %i.axb = add i64 %i.awx, %i.avx                 ; 2 uses
  %i.axc = xor i64 %i.awy, %i.awh                 ; 2 uses
  %i.axd = xor i64 %i.awz, %i.awe                 ; 2 uses
  %i.axe = xor i64 %i.axa, %i.awf                 ; 2 uses
  %i.axf = xor i64 %i.axb, %i.awg                 ; 2 uses
  %i.axg = tail call i64 @llvm.fshl.i64(i64 %i.axc, i64 %i.axc, i64 40) ; 2 uses
  %i.axh = tail call i64 @llvm.fshl.i64(i64 %i.axd, i64 %i.axd, i64 40) ; 2 uses
  %i.axi = tail call i64 @llvm.fshl.i64(i64 %i.axe, i64 %i.axe, i64 40) ; 2 uses
  %i.axj = tail call i64 @llvm.fshl.i64(i64 %i.axf, i64 %i.axf, i64 40) ; 2 uses
  %i.axk = add i64 %i.axg, %i.awm
  %i.axl = add i64 %i.axh, %i.awn
  %i.axm = add i64 %i.axi, %i.awo
  %i.axn = add i64 %i.axj, %i.awp
  %i.axo = add i64 %i.axk, %.val15052             ; 2 uses
  %i.axp = add i64 %i.axl, %.val15054             ; 2 uses
  %i.axq = add i64 %i.axm, %.val                  ; 2 uses
  %i.axr = add i64 %i.axn, %.val15056             ; 2 uses
  %i.axs = xor i64 %i.axo, %i.awu                 ; 2 uses
  %i.axt = xor i64 %i.axp, %i.awv                 ; 2 uses
  %i.axu = xor i64 %i.axq, %i.aww                 ; 2 uses
  %i.axv = xor i64 %i.axr, %i.awx                 ; 2 uses
  %i.axw = tail call i64 @llvm.fshl.i64(i64 %i.axs, i64 %i.axs, i64 48) ; 2 uses
  %i.axx = tail call i64 @llvm.fshl.i64(i64 %i.axt, i64 %i.axt, i64 48) ; 2 uses
  %i.axy = tail call i64 @llvm.fshl.i64(i64 %i.axu, i64 %i.axu, i64 48) ; 2 uses
  %i.axz = tail call i64 @llvm.fshl.i64(i64 %i.axv, i64 %i.axv, i64 48) ; 2 uses
  %i.aya = add i64 %i.axw, %i.awy                 ; 2 uses
  %i.ayb = add i64 %i.axx, %i.awz                 ; 2 uses
  %i.ayc = add i64 %i.axy, %i.axa                 ; 2 uses
  %i.ayd = add i64 %i.axz, %i.axb                 ; 2 uses
  %i.aye = xor i64 %i.aya, %i.axg                 ; 2 uses
  %i.ayf = xor i64 %i.ayb, %i.axh                 ; 2 uses
  %i.ayg = xor i64 %i.ayc, %i.axi                 ; 2 uses
  %i.ayh = xor i64 %i.ayd, %i.axj                 ; 2 uses
  %i.ayi = tail call i64 @llvm.fshl.i64(i64 %i.aye, i64 %i.aye, i64 1) ; 2 uses
  %i.ayj = tail call i64 @llvm.fshl.i64(i64 %i.ayf, i64 %i.ayf, i64 1) ; 2 uses
  %i.ayk = tail call i64 @llvm.fshl.i64(i64 %i.ayg, i64 %i.ayg, i64 1) ; 2 uses
  %i.ayl = tail call i64 @llvm.fshl.i64(i64 %i.ayh, i64 %i.ayh, i64 1) ; 2 uses
  %i.aym = add i64 %i.ayj, %i.axo
  %i.ayn = add i64 %i.ayk, %i.axp
  %i.ayo = add i64 %i.ayl, %i.axq
  %i.ayp = add i64 %i.ayi, %i.axr
  %i.ayq = add i64 %i.aym, %.val15061             ; 2 uses
  %i.ayr = add i64 %i.ayn, %.val15062             ; 2 uses
  %i.ays = add i64 %i.ayo, %.val15051             ; 2 uses
  %i.ayt = add i64 %i.ayp, %.val15057             ; 2 uses
  %i.ayu = xor i64 %i.ayq, %i.axz                 ; 2 uses
  %i.ayv = xor i64 %i.ayr, %i.axw                 ; 2 uses
  %i.ayw = xor i64 %i.ays, %i.axx                 ; 2 uses
  %i.ayx = xor i64 %i.ayt, %i.axy                 ; 2 uses
  %i.ayy = tail call i64 @llvm.fshl.i64(i64 %i.ayu, i64 %i.ayu, i64 32) ; 2 uses
  %i.ayz = tail call i64 @llvm.fshl.i64(i64 %i.ayv, i64 %i.ayv, i64 32) ; 2 uses
  %i.aza = tail call i64 @llvm.fshl.i64(i64 %i.ayw, i64 %i.ayw, i64 32) ; 2 uses
  %i.azb = tail call i64 @llvm.fshl.i64(i64 %i.ayx, i64 %i.ayx, i64 32) ; 2 uses
  %i.azc = add i64 %i.ayy, %i.ayc                 ; 2 uses
  %i.azd = add i64 %i.ayz, %i.ayd                 ; 2 uses
  %i.aze = add i64 %i.aza, %i.aya                 ; 2 uses
  %i.azf = add i64 %i.azb, %i.ayb                 ; 2 uses
  %i.azg = xor i64 %i.azc, %i.ayj                 ; 2 uses
  %i.azh = xor i64 %i.azd, %i.ayk                 ; 2 uses
  %i.azi = xor i64 %i.aze, %i.ayl                 ; 2 uses
  %i.azj = xor i64 %i.azf, %i.ayi                 ; 2 uses
  %i.azk = tail call i64 @llvm.fshl.i64(i64 %i.azg, i64 %i.azg, i64 40) ; 2 uses
  %i.azl = tail call i64 @llvm.fshl.i64(i64 %i.azh, i64 %i.azh, i64 40) ; 2 uses
  %i.azm = tail call i64 @llvm.fshl.i64(i64 %i.azi, i64 %i.azi, i64 40) ; 2 uses
  %i.azn = tail call i64 @llvm.fshl.i64(i64 %i.azj, i64 %i.azj, i64 40) ; 2 uses
  %i.azo = add i64 %i.azk, %i.ayq
  %i.azp = add i64 %i.azl, %i.ayr
  %i.azq = add i64 %i.azm, %i.ays
  %i.azr = add i64 %i.azn, %i.ayt
  %i.azs = add i64 %i.azo, %.val15050             ; 3 uses
  store i64 %i.azs, ptr %0, align 8, !tbaa !10
  %i.azt = add i64 %i.azp, %.val15060             ; 2 uses
  store i64 %i.azt, ptr %i.af, align 8, !tbaa !10
  %i.azu = add i64 %i.azq, %.val15055             ; 2 uses
  store i64 %i.azu, ptr %i.ak, align 8, !tbaa !10
  %i.azv = add i64 %i.azr, %.val15059             ; 2 uses
  store i64 %i.azv, ptr %i.ap, align 8, !tbaa !10
  %i.azw = xor i64 %i.azs, %i.ayy                 ; 2 uses
  %i.azx = xor i64 %i.azt, %i.ayz                 ; 2 uses
  %i.azy = xor i64 %i.azu, %i.aza                 ; 2 uses
  %i.azz = xor i64 %i.azv, %i.azb                 ; 2 uses
  %i.baa = tail call i64 @llvm.fshl.i64(i64 %i.azw, i64 %i.azw, i64 48) ; 2 uses
  %i.bab = tail call i64 @llvm.fshl.i64(i64 %i.azx, i64 %i.azx, i64 48) ; 2 uses
  %i.bac = tail call i64 @llvm.fshl.i64(i64 %i.azy, i64 %i.azy, i64 48) ; 2 uses
  %i.bad = tail call i64 @llvm.fshl.i64(i64 %i.azz, i64 %i.azz, i64 48) ; 2 uses
  %i.bae = add i64 %i.baa, %i.azc                 ; 2 uses
  %i.baf = add i64 %i.bab, %i.azd                 ; 2 uses
  %i.bag = add i64 %i.bac, %i.aze                 ; 2 uses
  %i.bah = add i64 %i.bad, %i.azf                 ; 2 uses
  %i.bai = xor i64 %i.bae, %i.azk                 ; 2 uses
  %i.baj = xor i64 %i.baf, %i.azl                 ; 2 uses
  %i.bak = xor i64 %i.bag, %i.azm                 ; 2 uses
  %i.bal = xor i64 %i.bah, %i.azn                 ; 2 uses
  %i.bam = tail call i64 @llvm.fshl.i64(i64 %i.bai, i64 %i.bai, i64 1)
  %i.ban = tail call i64 @llvm.fshl.i64(i64 %i.baj, i64 %i.baj, i64 1)
  %i.bao = tail call i64 @llvm.fshl.i64(i64 %i.bak, i64 %i.bak, i64 1)
  %i.bap = tail call i64 @llvm.fshl.i64(i64 %i.bal, i64 %i.bal, i64 1)
  store i64 %i.bap, ptr %i.ab, align 8, !tbaa !10
  store i64 %i.bam, ptr %i.ah, align 8, !tbaa !10
  store i64 %i.ban, ptr %i.am, align 8, !tbaa !10
  store i64 %i.bao, ptr %i.ar, align 8, !tbaa !10
  store i64 %i.bag, ptr %i.bg, align 8, !tbaa !10
  store i64 %i.bah, ptr %i.bj, align 8, !tbaa !10
  store i64 %i.bae, ptr %i.bm, align 8, !tbaa !10
  store i64 %i.baf, ptr %i.bp, align 8, !tbaa !10
  store i64 %i.bab, ptr %i.p, align 8, !tbaa !10
  store i64 %i.bac, ptr %i.s, align 8, !tbaa !10
  store i64 %i.bad, ptr %i.v, align 8, !tbaa !10
  store i64 %i.baa, ptr %i.y, align 8, !tbaa !10
  %i.baq = getelementptr i8, ptr %1, i64 32       ; 3 uses
  %i.bar = load i64, ptr %1, align 8, !tbaa !10
  %i.bas = xor i64 %i.azs, %i.bar                 ; 2 uses
  store i64 %i.bas, ptr %1, align 8, !tbaa !10
  %i.bat = getelementptr i8, ptr %1, i64 8        ; 3 uses
  %i.bau = load i64, ptr %i.bat, align 8, !tbaa !10
  %i.bav = load i64, ptr %i.af, align 8, !tbaa !10
  %i.baw = xor i64 %i.bav, %i.bau                 ; 2 uses
  store i64 %i.baw, ptr %i.bat, align 8, !tbaa !10
  %i.bax = getelementptr i8, ptr %1, i64 16       ; 3 uses
  %i.bay = load i64, ptr %i.bax, align 8, !tbaa !10
  %i.baz = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.bba = xor i64 %i.baz, %i.bay                 ; 2 uses
  store i64 %i.bba, ptr %i.bax, align 8, !tbaa !10
  %i.bbb = getelementptr i8, ptr %1, i64 24       ; 3 uses
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !10
  %i.bbd = load i64, ptr %i.ap, align 8, !tbaa !10
  %i.bbe = xor i64 %i.bbd, %i.bbc                 ; 2 uses
  store i64 %i.bbe, ptr %i.bbb, align 8, !tbaa !10
  %i.bbf = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.bbg = xor i64 %i.bbf, %i.bas
  store i64 %i.bbg, ptr %1, align 8, !tbaa !10
  %i.bbh = load i64, ptr %i.bj, align 8, !tbaa !10
  %i.bbi = xor i64 %i.bbh, %i.baw
  store i64 %i.bbi, ptr %i.bat, align 8, !tbaa !10
  %i.bbj = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bbk = xor i64 %i.bbj, %i.bba
  store i64 %i.bbk, ptr %i.bax, align 8, !tbaa !10
  %i.bbl = load i64, ptr %i.bp, align 8, !tbaa !10
  %i.bbm = xor i64 %i.bbl, %i.bbe
  store i64 %i.bbm, ptr %i.bbb, align 8, !tbaa !10
  %i.bbn = load i64, ptr %i.baq, align 8, !tbaa !10
  %i.bbo = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.bbp = xor i64 %i.bbo, %i.bbn                 ; 2 uses
  store i64 %i.bbp, ptr %i.baq, align 8, !tbaa !10
  %i.bbq = getelementptr i8, ptr %1, i64 40       ; 3 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !10
  %i.bbs = load i64, ptr %i.ah, align 8, !tbaa !10
  %i.bbt = xor i64 %i.bbs, %i.bbr                 ; 2 uses
  store i64 %i.bbt, ptr %i.bbq, align 8, !tbaa !10
  %i.bbu = getelementptr i8, ptr %1, i64 48       ; 3 uses
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !10
  %i.bbw = load i64, ptr %i.am, align 8, !tbaa !10
  %i.bbx = xor i64 %i.bbw, %i.bbv                 ; 2 uses
  store i64 %i.bbx, ptr %i.bbu, align 8, !tbaa !10
  %i.bby = getelementptr i8, ptr %1, i64 56       ; 3 uses
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !10
  %i.bca = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.bcb = xor i64 %i.bca, %i.bbz                 ; 2 uses
  store i64 %i.bcb, ptr %i.bby, align 8, !tbaa !10
  %i.bcc = load i64, ptr %i.p, align 8, !tbaa !10
  %i.bcd = xor i64 %i.bcc, %i.bbp
  store i64 %i.bcd, ptr %i.baq, align 8, !tbaa !10
  %i.bce = load i64, ptr %i.s, align 8, !tbaa !10
  %i.bcf = xor i64 %i.bce, %i.bbt
  store i64 %i.bcf, ptr %i.bbq, align 8, !tbaa !10
  %i.bcg = load i64, ptr %i.v, align 8, !tbaa !10
  %i.bch = xor i64 %i.bcg, %i.bbx
  store i64 %i.bch, ptr %i.bbu, align 8, !tbaa !10
  %i.bci = load i64, ptr %i.y, align 8, !tbaa !10
  %i.bcj = xor i64 %i.bci, %i.bcb
  store i64 %i.bcj, ptr %i.bby, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_update_last(i32 noundef %0, ptr noundef captures(none) initializes((0, 128)) %1, ptr noundef captures(none) %2, i1 noundef zeroext %3, i64 %4, i64 %5, i32 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr i8, ptr %7, i64 %i.b
  %i.d = zext i32 %6 to i64                       ; 2 uses
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.f, i64 %i.d, i1 false)
  %i.g = add i64 %4, %i.b                         ; 2 uses
  %8 = xor i64 %i.g, -1
  %9 = and i64 %4, %8
  %10 = lshr i64 %9, 63
  %i.h = add i64 %10, %5
  call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %3, i64 %i.g, i64 %i.h, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_finish(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %2, i64 32
  %i.d = load <2 x i64>, ptr %2, align 8, !tbaa !10
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr i8, ptr %2, i64 16
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !10
  store <2 x i64> %i.g, ptr %i.e, align 16
  %i.h = load <2 x i64>, ptr %i.c, align 8, !tbaa !10
  store <2 x i64> %i.h, ptr %i.b, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr i8, ptr %2, i64 48
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !10
  store <2 x i64> %i.k, ptr %i.i, align 16
  %i.l = zext i32 %0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.l, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.02.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 1, !tbaa !14 ; 3 uses
  %.sroa.4.0.insert.ext = zext i8 %.sroa.02.0.copyload to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.01.0.insert.ext = zext i8 %.sroa.43.0.copyload to i16
  %i.a = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.01.0.insert.ext
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %malloc_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 17 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #16
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %malloc_raw.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 9 uses
  %cond.i = icmp eq ptr %i.h, null
  br i1 %cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i8 %.sroa.43.0.copyload, 0    ; 2 uses
  %.0185.i = select i1 %.not.i, i64 0, i64 128
  %i.i = zext i1 %1 to i8
  store i16 %i.a, ptr %i.h, align 8
  %.sroa.0109.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 %i.i, ptr %.sroa.0109.sroa.4.0..sroa_idx.i, align 2, !tbaa !15
  %.sroa.0109.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0109.sroa.5.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %.sroa.0109.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0109.sroa.6.0..sroa_idx.i, align 8, !tbaa !17
  %.sroa.0109.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0109.sroa.7.0..sroa_idx.i, align 8, !tbaa !17
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4110.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.0185.i, ptr %.sroa.5111.0..sroa_idx.i, align 8, !tbaa !10
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #16
  tail call void @free(ptr noundef nonnull %i.f) #16
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %malloc_raw.exit

bb.g:                                             ; preds = %bb.e
  %i.j = zext i8 %.sroa.43.0.copyload to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr readonly align 1 %2, i64 %i.j, i1 false)
  %i.k = shl nuw nsw i64 %i.j, 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.pre-phi.i = phi i64 [ %i.k, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.l = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1181.0.copyload.i = load ptr, ptr %.sroa.1181.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !20
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %i.n = getelementptr i8, ptr %i.f, i64 64
  %i.o = getelementptr i8, ptr %i.f, i64 96
  store i64 7640891576956012808, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr i8, ptr %i.f, i64 72
  store i64 -4942790177534073029, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr i8, ptr %i.f, i64 80
  store i64 4354685564936845355, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %i.f, i64 88
  store i64 -6534734903238641935, ptr %i.r, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.o, align 8, !tbaa !10
  %i.s = getelementptr i8, ptr %i.f, i64 104
  store i64 -7276294671716946913, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %i.f, i64 112
  store i64 2270897969802886507, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %i.f, i64 120
  store i64 6620516959819538809, ptr %i.u, align 8, !tbaa !10
  %i.v = zext i8 %.sroa.0.0.copyload.i to i64
  %i.w = zext i8 %.sroa.5.0.copyload.i to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %i.y = zext i8 %.sroa.6.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 24
  %i.aa = zext i32 %.sroa.7.0.copyload.i to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = or disjoint i64 %.pre-phi.i, %i.v
  %i.ad = add nuw nsw i64 %i.x, %i.ac
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = xor i64 %i.af, 7640891576956012808
  %i.ah = xor i64 %.sroa.8.0.copyload.i, -4942790177534073029
  %i.ai = xor i64 %i.l, 4354685564936845355
  %i.aj = getelementptr i8, ptr %i.f, i64 8
  %i.ak = getelementptr i8, ptr %i.f, i64 16
  %i.al = getelementptr i8, ptr %i.f, i64 24
  %i.am = load <2 x i64>, ptr %.sroa.1181.0.copyload.i, align 1
  %i.an = xor <2 x i64> %i.am, <i64 5840696475078001361, i64 -7276294671716946913>
  %i.ao = getelementptr i8, ptr %i.f, i64 48
  %i.ap = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.aq = xor <2 x i64> %i.ap, <i64 2270897969802886507, i64 6620516959819538809>
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !10
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !10
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !10
  store i64 -6534734903238641935, ptr %i.al, align 8, !tbaa !10
  store <2 x i64> %i.an, ptr %i.m, align 8, !tbaa !10
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !10
  br label %malloc_raw.exit

malloc_raw.exit:                                  ; preds = %.critedge.i, %._crit_edge.i, %bb.f, %bb.a
  %.3.i = phi ptr [ null, %bb.a ], [ null, %.critedge.i ], [ %i.h, %._crit_edge.i ], [ null, %bb.f ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_key(ptr noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 64, ptr %2, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !20
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !20
  %i.c = call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc() local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %0 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 64, i8 0, i8 1, i8 1>, ptr %0, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx.i, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !20
  %i.c = call noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key_and_params(ptr noundef captures(none) initializes((32, 40)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %.sroa.8121.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i)
  %.sroa.6129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7130.0.copyload.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !17 ; 14 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8131.0.copyload.i = load ptr, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !20 ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i64                      ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.8131.0.copyload.i, i64 %i.d
  %i.f = sub nsw i64 128, %i.d
  %i.g = and i64 %i.f, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8131.0.copyload.i, ptr readonly align 1 %2, i64 %i.d, i1 false)
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.h = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1186.0.copyload.i = load ptr, ptr %.sroa.1186.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 32
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 64
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 96
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 72
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 80
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 88
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 104
  %i.p = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 112
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  %i.r = xor i64 %i.h, 4354685564936845355
  %i.s = load <2 x i64>, ptr %1, align 8
  store i64 7640891576956012808, ptr %i.j, align 8, !tbaa !10
  store i64 -4942790177534073029, ptr %i.l, align 8, !tbaa !10
  store i64 4354685564936845355, ptr %i.m, align 8, !tbaa !10
  store i64 -6534734903238641935, ptr %i.n, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.k, align 8, !tbaa !10
  store i64 -7276294671716946913, ptr %i.o, align 8, !tbaa !10
  store i64 2270897969802886507, ptr %i.p, align 8, !tbaa !10
  store i64 6620516959819538809, ptr %i.q, align 8, !tbaa !10
  %i.t = xor <2 x i64> %i.s, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.u = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  %i.v = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 24
  %i.w = load <2 x i64>, ptr %.sroa.1186.0.copyload.i, align 1
  %i.x = xor <2 x i64> %i.w, <i64 5840696475078001361, i64 -7276294671716946913>
  %i.y = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  %i.z = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.aa = xor <2 x i64> %i.z, <i64 2270897969802886507, i64 6620516959819538809>
  store <2 x i64> %i.t, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !10
  store i64 %i.r, ptr %i.u, align 8, !tbaa !10
  store i64 -6534734903238641935, ptr %i.v, align 8, !tbaa !10
  store <2 x i64> %i.x, ptr %i.i, align 8, !tbaa !10
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !10
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, 0
  %..i = select i1 %.not.i, i64 0, i64 128
  %.sroa.9132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, i64 13, i1 false)
  store ptr %.sroa.7130.0.copyload.i, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !17
  store ptr %.sroa.8131.0.copyload.i, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !20
  store i64 %..i, ptr %.sroa.9132.0..sroa_idx.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key(ptr noundef captures(none) initializes((32, 40)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.8121.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i)
  %.sroa.6129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7130.0.copyload.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !17 ; 17 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8131.0.copyload.i = load ptr, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !20 ; 3 uses
  %i.a = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.sroa.0.0.copyload.i to i64     ; 4 uses
  %i.c = getelementptr i8, ptr %.sroa.8131.0.copyload.i, i64 %i.b
  %i.d = sub nsw i64 128, %i.b
  %i.e = and i64 %i.d, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8131.0.copyload.i, ptr readonly align 1 %1, i64 %i.b, i1 false)
  %i.f = shl nuw nsw i64 %i.b, 8
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %..i = phi i64 [ 128, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.1.insert.ext.pre-phi = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.insert.ext = zext i8 %.sroa.4.0.copyload.i to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.ext.pre-phi, %.sroa.0.0.insert.ext
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 32
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 64
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 96
  store i64 7640891576956012808, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 72
  store i64 -4942790177534073029, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 80
  store i64 4354685564936845355, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 88
  store i64 -6534734903238641935, ptr %i.l, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.i, align 8, !tbaa !10
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 104
  store i64 -7276294671716946913, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 112
  store i64 2270897969802886507, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  store i64 6620516959819538809, ptr %i.o, align 8, !tbaa !10
  %i.p = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  store i64 %i.p, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !10
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  store i64 4354685564936845355, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.g, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 40
  store i64 -7276294671716946913, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  store i64 2270897969802886507, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 56
  store i64 6620516959819538809, ptr %i.v, align 8, !tbaa !10
  %.sroa.9132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, i64 13, i1 false)
  store ptr %.sroa.7130.0.copyload.i, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !17
  store ptr %.sroa.8131.0.copyload.i, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !20
  store i64 %..i, ptr %.sroa.9132.0..sroa_idx.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset(ptr noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #9 {
_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key.exit:
  %.sroa.8121.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i.i)
  %.sroa.6129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i64
  %i.a = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  %.sroa.9132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x ptr>, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  %.sroa.7130.0.copyload.i.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !17 ; 16 uses
  %i.c = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 32
  %i.d = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 64
  %i.e = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 96
  store i64 7640891576956012808, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 72
  store i64 -4942790177534073029, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 80
  store i64 4354685564936845355, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 88
  store i64 -6534734903238641935, ptr %i.h, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.e, align 8, !tbaa !10
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 104
  store i64 -7276294671716946913, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 112
  store i64 2270897969802886507, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 120
  store i64 6620516959819538809, ptr %i.k, align 8, !tbaa !10
  store i64 %i.a, ptr %.sroa.7130.0.copyload.i.i, align 8, !tbaa !10
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 8
  store i64 -4942790177534073029, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 16
  store i64 4354685564936845355, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 24
  store i64 -6534734903238641935, ptr %i.n, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.c, align 8, !tbaa !10
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 40
  store i64 -7276294671716946913, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 48
  store i64 2270897969802886507, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 56
  store i64 6620516959819538809, ptr %i.q, align 8, !tbaa !10
  store i8 0, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, i64 13, i1 false)
  store <2 x ptr> %i.b, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  store i64 0, ptr %.sroa.9132.0..sroa_idx.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_Blake2b_update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0130 = alloca %struct.Hacl_Hash_Blake2b_block_state_t_s, align 8 ; 2 uses
  %.sroa.053 = alloca %struct.Hacl_Hash_Blake2b_block_state_t_s, align 8 ; 2 uses
  %.sroa.3153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.3153.0.copyload = load i64, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !10 ; 8 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3153.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3153.0.copyload, 127      ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.3153.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 3 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0185 = select i1 %or.cond, i32 128, i32 %i.g  ; 2 uses
  %i.h = sub nuw nsw i32 128, %.0185              ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4143.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  %. = select i1 %or.cond, i64 128, i64 %i.d
  %i.i = getelementptr i8, ptr %.sroa.4143.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = add i64 %.sroa.3153.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, i64 24, i1 false), !tbaa.struct !25
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0185, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0125.0.copyload = load i64, ptr %0, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4126.0.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5127.0.copyload = load ptr, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.6128.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  %i.l = and i64 %i.a, 127                        ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = trunc nuw nsw i64 %i.l to i32
  %.0188 = select i1 %i.m, i32 128, i32 %i.n
  %i.o = sub i32 %2, %.0188                       ; 2 uses
  %i.p = lshr i32 %i.o, 7                         ; 2 uses
  %i.q = and i32 %i.o, -128                       ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.lr.ph.i201, %.lr.ph.preheader.i
  %indvars.iv.i202 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i203, %.lr.ph.i201 ] ; 2 uses
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i202, 1 ; 3 uses
  %i.u = shl i64 %indvars.iv.next.i203, 7
  %i.v = add i64 %i.u, %.sroa.3153.0.copyload     ; 2 uses
  %3 = xor i64 %i.v, -1
  %4 = and i64 %.sroa.3153.0.copyload, %3
  %5 = lshr i64 %4, 63
  %i.w = shl i64 %indvars.iv.i202, 7
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  tail call fastcc void @update_block(ptr noundef %.sroa.4126.0.copyload, ptr noundef %.sroa.5127.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.v, i64 %5, ptr noundef readonly %i.x)
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i203, %wide.trip.count.i
  br i1 %exitcond.not.i204, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, label %.lr.ph.i201, !llvm.loop !12

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205: ; preds = %.lr.ph.i201, %bb.e
  %i.y = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6128.0.copyload, ptr align 1 %i.t, i64 %i.y, i1 false)
  %i.z = add i64 %.sroa.3153.0.copyload, %i.a
  store i64 %.sroa.0125.0.copyload, ptr %0, align 8
  store ptr %.sroa.4126.0.copyload, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.5127.0.copyload, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !17
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !20 ; 5 uses
  %.197 = select i1 %or.cond, i64 128, i64 %i.d
  %i.ac = getelementptr i8, ptr %.sroa.466.0.copyload, i64 %.197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %1, i64 %i.aa, i1 false)
  %i.ad = add i64 %.sroa.3153.0.copyload, %i.aa   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, i64 24, i1 false), !tbaa.struct !25
  store ptr %.sroa.466.0.copyload, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !20
  store i64 %i.ad, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !10
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %i.ae = and i64 %i.ad, 127                      ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = icmp ne i64 %i.ad, 0
  %or.cond12 = and i1 %i.ag, %i.af
  %i.ah = trunc nuw nsw i64 %i.ae to i32
  %.0190 = select i1 %or.cond12, i32 128, i32 %i.ah ; 2 uses
  %i.ai = icmp eq i32 %.0190, 0
  br i1 %i.ai, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.f
  %i.aj = zext nneg i32 %.0190 to i64
  %i.ak = sub i64 %i.ad, %i.aj                    ; 3 uses
  %i.al = add i64 %i.ak, 128
  %i.am = sub i64 -129, %i.ak
  %6 = and i64 %i.ak, %i.am
  %7 = lshr i64 %6, 63
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.al, i64 %7, ptr noundef readonly %.sroa.466.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213: ; preds = %.lr.ph.i209, %bb.f
  %i.an = sub i32 %2, %i.h                        ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = and i64 %i.ao, 127                      ; 2 uses
  %.not224 = icmp eq i64 %i.ap, 0
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %.0191 = select i1 %.not224, i32 128, i32 %i.aq
  %i.ar = sub i32 %i.an, %.0191                   ; 2 uses
  %i.as = lshr i32 %i.ar, 7                       ; 2 uses
  %i.at = and i32 %i.ar, -128                     ; 2 uses
  %i.au = sub i32 %i.an, %i.at
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.av
  %.not.i216 = icmp eq i32 %i.as, 0
  br i1 %.not.i216, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, label %.lr.ph.preheader.i217

.lr.ph.preheader.i217:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213
  %wide.trip.count.i218 = zext nneg i32 %i.as to i64
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219, %.lr.ph.preheader.i217
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.preheader.i217 ], [ %indvars.iv.next.i221, %.lr.ph.i219 ] ; 2 uses
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 3 uses
  %i.ax = shl i64 %indvars.iv.next.i221, 7
  %i.ay = add i64 %i.ax, %i.ad                    ; 2 uses
  %8 = xor i64 %i.ay, -1
  %9 = and i64 %i.ad, %8
  %10 = lshr i64 %9, 63
  %i.az = shl i64 %indvars.iv.i220, 7
  %i.ba = getelementptr i8, ptr %i.ab, i64 %i.az
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.ay, i64 %10, ptr noundef readonly %i.ba)
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i218
  br i1 %exitcond.not.i222, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, label %.lr.ph.i219, !llvm.loop !12

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223: ; preds = %.lr.ph.i219, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213
  %i.bb = zext i32 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.466.0.copyload, ptr align 1 %i.aw, i64 %i.bb, i1 false)
  %i.bc = add i64 %i.ad, %i.ao
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.451.0.copyload, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, %bb.c
  %.sroa.4143.0.copyload.sink = phi ptr [ %.sroa.4143.0.copyload, %bb.c ], [ %.sroa.466.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223 ], [ %.sroa.6128.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bc, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223 ], [ %i.z, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205 ]
  store ptr %.sroa.4143.0.copyload.sink, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !20
  store i64 %.sink, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2b_digest(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [16 x i64], align 16              ; 3 uses
  %i.d = alloca [16 x i64], align 16              ; 8 uses
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.460.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !14
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.561.0.copyload = load i8, ptr %.sroa.561.0..sroa_idx, align 2, !tbaa !15
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.450.0.copyload = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !17
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.551.0.copyload = load ptr, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !20
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.652.0.copyload = load i64, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !10 ; 5 uses
  %i.e = and i64 %.sroa.652.0.copyload, 127       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.652.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.h     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.450.0.copyload, i64 128, i1 false)
  %i.i = and i32 %.0, 127                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
  %i.l = zext nneg i32 %i.i to i64
  %.067 = select i1 %or.cond3, i64 128, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 3 uses
  %2 = sub i64 %.sroa.652.0.copyload, %i.m
  %i.n = trunc i8 %.sroa.561.0.copyload to i1
  %i.o = getelementptr i8, ptr %.sroa.551.0.copyload, i64 %i.m
  %i.p = sub nsw i64 0, %.067
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.q, i64 %i.m, i1 false)
  %3 = xor i64 %.sroa.652.0.copyload, -1
  %4 = and i64 %2, %3
  %5 = lshr i64 %4, 63
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.n, i64 %.sroa.652.0.copyload, i64 %5, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load <2 x i64>, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %i.t, ptr %i.a, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 16, !tbaa !10
  store <2 x i64> %i.w, ptr %i.u, align 16
  %i.x = load <2 x i64>, ptr %i.s, align 16, !tbaa !10
  store <2 x i64> %i.x, ptr %i.r, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !10
  store <2 x i64> %i.aa, ptr %i.y, align 16
  %i.ab = zext i8 %.sroa.460.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.ab, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.sroa.4.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2b_info(ptr noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !15
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
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_copy(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.068.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.469.0.copyload = load i8, ptr %.sroa.469.0..sroa_idx, align 1, !tbaa !14
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.570.0.copyload = load i8, ptr %.sroa.570.0..sroa_idx, align 2, !tbaa !15
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.772.0.copyload = load ptr, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !17
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.873.0.copyload = load ptr, ptr %.sroa.873.0..sroa_idx, align 8, !tbaa !20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !10
  %i.a = and i8 %.sroa.570.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.873.0.copyload, i64 128, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #16
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.772.0.copyload, i64 128, i1 false)
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 7 uses
  %cond = icmp eq ptr %i.h, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i8 %i.a to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = zext i8 %.sroa.469.0.copyload to i64
  %i.l = shl nuw nsw i64 %i.k, 8
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = zext i8 %.sroa.068.0.copyload to i64
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.h, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #16
  tail call void @free(ptr noundef nonnull %i.f) #16
  tail call void @free(ptr noundef nonnull %i.b) #16
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
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca [128 x i8], align 16                ; 6 uses
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %7 = alloca [128 x i8], align 16                ; 6 uses
  %i.b = alloca [16 x i64], align 16              ; 24 uses
  %i.c = alloca [16 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, i8 0, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 7640891576956012808, ptr %i.e, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 -4942790177534073029, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 4354685564936845355, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 -6534734903238641935, ptr %i.i, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.f, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 -7276294671716946913, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 2270897969802886507, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 6620516959819538809, ptr %i.l, align 8, !tbaa !10
  %i.m = and i32 %1, 255
  %i.n = shl i32 %5, 8
  %i.o = and i32 %i.n, 65280
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = or disjoint i32 %i.p, 16842752
  %i.r = zext nneg i32 %i.q to i64
  %i.s = xor i64 %i.r, 7640891576956012808
  store i64 %i.s, ptr %i.b, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -4942790177534073029, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 4354685564936845355, ptr %i.u, align 16, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -6534734903238641935, ptr %i.v, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.d, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 -7276294671716946913, ptr %i.w, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 2270897969802886507, ptr %i.x, align 16, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 6620516959819538809, ptr %i.y, align 8, !tbaa !10
  %.not.i = icmp eq i32 %5, 0
  br i1 %.not.i, label %16, label %8

8:                                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %9 = zext i32 %5 to i64                         ; 3 uses
  %10 = icmp ugt i32 %5, 127
  %11 = sub nsw i64 128, %9
  %12 = select i1 %10, i64 0, i64 %11
  %13 = getelementptr i8, ptr %7, i64 %9
  call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %7, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %9, i1 false)
  %14 = icmp eq i32 %3, 0                         ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext %14, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %7)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %7, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %14, label %update.exit, label %15

15:                                               ; preds = %8
  call fastcc void @update_blocks(i32 noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 128, ptr noundef readonly %2)
  br label %update.exit

16:                                               ; preds = %bb.a
  %17 = lshr i32 %3, 7                            ; 2 uses
  %18 = and i32 %3, 127                           ; 2 uses
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %17, 0
  %or.cond.i = and i1 %19, %20                    ; 2 uses
  %21 = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %17, %21                  ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %16
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %22 = shl i64 %indvars.iv.next.i.i, 7
  %23 = and i64 %22, 4294967168
  %24 = shl i64 %indvars.iv.i.i, 7
  %25 = and i64 %24, 4294967168
  %26 = getelementptr i8, ptr %2, i64 %25
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext false, i1 noundef zeroext false, i64 %23, i64 0, ptr noundef readonly %26)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !12

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %6, i8 0, i64 128, i1 false)
  %27 = zext i32 %3 to i64                        ; 2 uses
  %28 = getelementptr i8, ptr %2, i64 %27
  %29 = zext nneg i32 %18 to i64
  %30 = select i1 %or.cond.i, i64 128, i64 %29    ; 2 uses
  %31 = sub nsw i64 0, %30
  %32 = getelementptr i8, ptr %28, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr readonly align 1 %32, i64 %30, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext true, i1 noundef zeroext false, i64 %27, i64 0, ptr noundef nonnull %6)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %6, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %update.exit

update.exit:                                      ; preds = %8, %15, %update_blocks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %33 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %34 = load <2 x i64>, ptr %i.b, align 16, !tbaa !10
  store <2 x i64> %34, ptr %i.a, align 16
  %35 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %36 = load <2 x i64>, ptr %i.u, align 16, !tbaa !10
  store <2 x i64> %36, ptr %35, align 16
  %37 = load <2 x i64>, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %37, ptr %33, align 16
  %38 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %39 = load <2 x i64>, ptr %i.x, align 16, !tbaa !10
  store <2 x i64> %39, ptr %38, align 16
  %40 = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %40, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key_and_params(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly byval(%struct.Hacl_Hash_Blake2b_blake2_params_s) align 8 captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca [128 x i8], align 16                ; 6 uses
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %6 = alloca [128 x i8], align 16                ; 6 uses
  %i.b = alloca [16 x i64], align 16              ; 21 uses
  %i.c = alloca [16 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, i8 0, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 7640891576956012808, ptr %i.e, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 -4942790177534073029, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 4354685564936845355, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 -6534734903238641935, ptr %i.i, align 8, !tbaa !10
  store i64 5840696475078001361, ptr %i.f, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 -7276294671716946913, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 2270897969802886507, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 6620516959819538809, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i16, ptr %i.q, align 8
  %i.s = zext i16 %i.r to i64
  %i.t = xor i64 %i.s, 4354685564936845355
  %i.u = load <2 x i64>, ptr %3, align 8
  %i.v = load i64, ptr %3, align 8                ; 2 uses
  %7 = lshr i64 %i.v, 8                           ; 2 uses
  %8 = trunc i64 %7 to i8                         ; 2 uses
  %i.w = xor <2 x i64> %i.u, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load <2 x i64>, ptr %i.n, align 1
  %i.aa = xor <2 x i64> %i.z, <i64 5840696475078001361, i64 -7276294671716946913>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.p, align 1
  %i.ad = xor <2 x i64> %i.ac, <i64 2270897969802886507, i64 6620516959819538809>
  store <2 x i64> %i.w, ptr %i.b, align 16, !tbaa !10
  store i64 %i.t, ptr %i.x, align 16, !tbaa !10
  store i64 -6534734903238641935, ptr %i.y, align 8, !tbaa !10
  store <2 x i64> %i.aa, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %i.ad, ptr %i.ab, align 16, !tbaa !10
  %.not.i = icmp eq i8 %8, 0
  br i1 %.not.i, label %17, label %9

9:                                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %10 = and i64 %7, 255                           ; 3 uses
  %11 = icmp slt i8 %8, 0
  %12 = sub nsw i64 128, %10
  %13 = select i1 %11, i64 0, i64 %12
  %14 = getelementptr i8, ptr %6, i64 %10
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %13, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %6, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %10, i1 false)
  %15 = icmp eq i32 %2, 0                         ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext %15, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %6)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %6, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %15, label %update.exit, label %16

16:                                               ; preds = %9
  call fastcc void @update_blocks(i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 128, ptr noundef readonly %1)
  br label %update.exit

17:                                               ; preds = %bb.a
  %18 = lshr i32 %2, 7                            ; 2 uses
  %19 = and i32 %2, 127                           ; 2 uses
  %20 = icmp eq i32 %19, 0
  %21 = icmp ne i32 %18, 0
  %or.cond.i = and i1 %20, %21                    ; 2 uses
  %22 = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %18, %22                  ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %17
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %23 = shl i64 %indvars.iv.next.i.i, 7
  %24 = and i64 %23, 4294967168
  %25 = shl i64 %indvars.iv.i.i, 7
  %26 = and i64 %25, 4294967168
  %27 = getelementptr i8, ptr %1, i64 %26
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext false, i1 noundef zeroext false, i64 %24, i64 0, ptr noundef readonly %27)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !12

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %28 = zext i32 %2 to i64                        ; 2 uses
  %29 = getelementptr i8, ptr %1, i64 %28
  %30 = zext nneg i32 %19 to i64
  %31 = select i1 %or.cond.i, i64 128, i64 %30    ; 2 uses
  %32 = sub nsw i64 0, %31
  %33 = getelementptr i8, ptr %29, i64 %32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr readonly align 1 %33, i64 %31, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext true, i1 noundef zeroext false, i64 %28, i64 0, ptr noundef nonnull %5)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %5, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %update.exit

update.exit:                                      ; preds = %9, %16, %update_blocks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %34 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %35 = load <2 x i64>, ptr %i.b, align 16, !tbaa !10
  store <2 x i64> %35, ptr %i.a, align 16
  %36 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %37 = load <2 x i64>, ptr %i.x, align 16, !tbaa !10
  store <2 x i64> %37, ptr %36, align 16
  %38 = load <2 x i64>, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %38, ptr %34, align 16
  %39 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %40 = load <2 x i64>, ptr %i.ab, align 16, !tbaa !10
  store <2 x i64> %40, ptr %39, align 16
  %41 = and i64 %i.v, 255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %41, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_blocks(i32 noundef %0, ptr noundef nonnull captures(none) initializes((0, 128)) %1, ptr noundef nonnull captures(none) %2, i64 %3, ptr noundef readonly captures(none) %4) unnamed_addr #5 {
  %6 = alloca [128 x i8], align 16                ; 6 uses
  %7 = lshr i32 %0, 7                             ; 2 uses
  %8 = and i32 %0, 127                            ; 2 uses
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %7, 0
  %or.cond = and i1 %9, %10                       ; 2 uses
  %11 = sext i1 %or.cond to i32
  %.023 = add nsw i32 %7, %11                     ; 2 uses
  %.not.i = icmp eq i32 %.023, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %5
  %wide.trip.count.i = zext nneg i32 %.023 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %12 = shl i64 %indvars.iv.next.i, 7
  %13 = and i64 %12, 4294967168
  %14 = add i64 %13, %3                           ; 2 uses
  %15 = xor i64 %14, -1
  %16 = and i64 %3, %15
  %17 = lshr i64 %16, 63
  %18 = shl i64 %indvars.iv.i, 7
  %19 = and i64 %18, 4294967168
  %20 = getelementptr i8, ptr %4, i64 %19
  tail call fastcc void @update_block(ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 %14, i64 %17, ptr noundef readonly %20)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit, label %.lr.ph.i, !llvm.loop !12

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit:  ; preds = %.lr.ph.i, %5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %6, i8 0, i64 128, i1 false)
  %21 = zext i32 %0 to i64                        ; 2 uses
  %22 = getelementptr i8, ptr %4, i64 %21
  %23 = zext nneg i32 %8 to i64
  %24 = select i1 %or.cond, i64 128, i64 %23      ; 2 uses
  %25 = sub nsw i64 0, %24
  %26 = getelementptr i8, ptr %22, i64 %25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr readonly align 1 %26, i64 %24, i1 false)
  %27 = add i64 %3, %21                           ; 2 uses
  %28 = xor i64 %27, -1
  %29 = and i64 %3, %28
  %30 = lshr i64 %29, 63
  call fastcc void @update_block(ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext true, i1 noundef zeroext false, i64 %27, i64 %30, ptr noundef nonnull %6)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %6, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"_Bool", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 long", !19, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !19, i64 0}
!22 = !{!23, !8, i64 1}
!23 = !{!"Hacl_Hash_Blake2b_blake2_params_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !7, i64 4, !11, i64 8, !8, i64 16, !8, i64 17, !21, i64 24, !21, i64 32}
!24 = !{!19, !19, i64 0}
!25 = !{i64 0, i64 1, !14, i64 1, i64 1, !14, i64 2, i64 1, !15, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !20, i64 32, i64 8, !10}
!26 = !{!23, !21, i64 24}
!27 = !{!23, !21, i64 32}
end_hunk_1
