Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/sha1?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @rhash_sha1_init(ptr nofree noundef writeonly captures(none) initializes((64, 92)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1009589776, ptr %i.c, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rhash_sha1_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63                         ; 2 uses
  %i.e = add i64 %i.b, %2
  store i64 %i.e, ptr %i.a, align 8, !tbaa !9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i32 64, %i.d
  %i.g = and i64 %i.b, 63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = zext nneg i32 %i.f to i64                ; 4 uses
  %.not43 = icmp ult i64 %2, %i.i
  %i.j = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %1, i64 %i.j, i1 false)
  br i1 %.not43, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @rhash_sha1_process_block(ptr noundef nonnull %i.k, ptr noundef nonnull %0)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.m = sub nuw i64 %2, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.137 = phi ptr [ %i.l, %bb.c ], [ %1, %bb.a ]  ; 3 uses
  %.1 = phi i64 [ %i.m, %bb.c ], [ %2, %bb.a ]    ; 3 uses
  %i.n = icmp ugt i64 %.1, 63
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %.13749 = ptrtoaddr ptr %.137 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = and i64 %.13749, 3
  %4 = icmp eq i64 %3, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.246 = phi i64 [ %.1, %.lr.ph ], [ %i.q, %bb.g ]
  %.23845 = phi ptr [ %.137, %.lr.ph ], [ %i.p, %bb.g ] ; 3 uses
  br i1 %4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %.23845, i64 64, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi ptr [ %0, %bb.f ], [ %.23845, %bb.e ]
  tail call fastcc void @rhash_sha1_process_block(ptr noundef nonnull %i.o, ptr noundef %.0)
  %i.p = getelementptr inbounds nuw i8, ptr %.23845, i64 64 ; 2 uses
  %i.q = add i64 %.246, -64                       ; 3 uses
  %i.r = icmp ugt i64 %i.q, 63
  br i1 %i.r, label %bb.e, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.238.lcssa = phi ptr [ %.137, %bb.d ], [ %i.p, %bb.g ]
  %.2.lcssa = phi i64 [ %.1, %bb.d ], [ %i.q, %bb.g ] ; 2 uses
  %.not44 = icmp eq i64 %.2.lcssa, 0
  br i1 %.not44, label %.critedge, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr align 1 %.238.lcssa, i64 %.2.lcssa, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rhash_sha1_process_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !12
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)  ; 2 uses
  %i.l = and i32 %i.e, %i.c
  %i.m = xor i32 %i.c, -1
  %i.n = and i32 %i.g, %i.m
  %i.o = or i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 5)
  %i.q = add i32 %i.p, 1518500249
  %i.r = add i32 %i.q, %i.i
  %i.s = add i32 %i.r, %i.o
  %i.t = add i32 %i.s, %i.k                       ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)  ; 2 uses
  %i.x = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30) ; 3 uses
  %i.y = and i32 %i.x, %i.a
  %i.z = xor i32 %i.a, -1
  %i.aa = and i32 %i.e, %i.z
  %i.ab = or i32 %i.y, %i.aa
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 5)
  %i.ad = add i32 %i.g, 1518500249
  %i.ae = add i32 %i.ad, %i.ab
  %i.af = add i32 %i.ae, %i.w
  %i.ag = add i32 %i.af, %i.ac                    ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 3 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30) ; 3 uses
  %i.al = and i32 %i.t, %i.ak
  %i.am = xor i32 %i.t, -1
  %i.an = and i32 %i.x, %i.am
  %i.ao = or i32 %i.al, %i.an
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 5)
  %i.aq = add i32 %i.e, 1518500249
  %i.ar = add i32 %i.aq, %i.aj
  %i.as = add i32 %i.ar, %i.ao
  %i.at = add i32 %i.as, %i.ap                    ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av) ; 3 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 30) ; 3 uses
  %i.ay = and i32 %i.ag, %i.ax
  %i.az = xor i32 %i.ag, -1
  %i.ba = and i32 %i.ak, %i.az
  %i.bb = or i32 %i.ay, %i.ba
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 5)
  %i.bd = add i32 %i.x, 1518500249
  %i.be = add i32 %i.bd, %i.aw
  %i.bf = add i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.bc                    ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi) ; 3 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 30) ; 3 uses
  %i.bl = and i32 %i.at, %i.bk
  %i.bm = xor i32 %i.at, -1
  %i.bn = and i32 %i.ax, %i.bm
  %i.bo = or i32 %i.bl, %i.bn
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 5)
  %i.bq = add i32 %i.ak, 1518500249
  %i.br = add i32 %i.bq, %i.bj
  %i.bs = add i32 %i.br, %i.bo
  %i.bt = add i32 %i.bs, %i.bp                    ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv) ; 3 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 30) ; 3 uses
  %i.by = and i32 %i.bg, %i.bx
  %i.bz = xor i32 %i.bg, -1
  %i.ca = and i32 %i.bk, %i.bz
  %i.cb = or i32 %i.by, %i.ca
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 5)
  %i.cd = add i32 %i.ax, 1518500249
  %i.ce = add i32 %i.cd, %i.bw
  %i.cf = add i32 %i.ce, %i.cb
  %i.cg = add i32 %i.cf, %i.cc                    ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci) ; 3 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 30) ; 3 uses
  %i.cl = and i32 %i.bt, %i.ck
  %i.cm = xor i32 %i.bt, -1
  %i.cn = and i32 %i.bx, %i.cm
  %i.co = or i32 %i.cl, %i.cn
  %i.cp = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 5)
  %i.cq = add i32 %i.cj, 1518500249
  %i.cr = add i32 %i.cq, %i.bk
  %i.cs = add i32 %i.cr, %i.co
  %i.ct = add i32 %i.cs, %i.cp                    ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv) ; 3 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 30) ; 3 uses
  %i.cy = and i32 %i.cg, %i.cx
  %i.cz = xor i32 %i.cg, -1
  %i.da = and i32 %i.ck, %i.cz
  %i.db = or i32 %i.cy, %i.da
  %i.dc = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 5)
  %i.dd = add i32 %i.cw, 1518500249
  %i.de = add i32 %i.dd, %i.bx
  %i.df = add i32 %i.de, %i.db
  %i.dg = add i32 %i.df, %i.dc                    ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di) ; 4 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 30) ; 3 uses
  %i.dl = and i32 %i.ct, %i.dk
  %i.dm = xor i32 %i.ct, -1
  %i.dn = and i32 %i.cx, %i.dm
  %i.do = or i32 %i.dl, %i.dn
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 5)
  %i.dq = add i32 %i.dj, 1518500249
  %i.dr = add i32 %i.dq, %i.ck
  %i.ds = add i32 %i.dr, %i.do
  %i.dt = add i32 %i.ds, %i.dp                    ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %i.dw = tail call i32 @llvm.bswap.i32(i32 %i.dv) ; 4 uses
  %i.dx = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 30) ; 3 uses
  %i.dy = and i32 %i.dg, %i.dx
  %i.dz = xor i32 %i.dg, -1
  %i.ea = and i32 %i.dk, %i.dz
  %i.eb = or i32 %i.dy, %i.ea
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 5)
  %i.ed = add i32 %i.dw, 1518500249
  %i.ee = add i32 %i.ed, %i.cx
  %i.ef = add i32 %i.ee, %i.eb
  %i.eg = add i32 %i.ef, %i.ec                    ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !12
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei) ; 4 uses
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 30) ; 3 uses
  %i.el = and i32 %i.dt, %i.ek
  %i.em = xor i32 %i.dt, -1
  %i.en = and i32 %i.dx, %i.em
  %i.eo = or i32 %i.el, %i.en
  %i.ep = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 5)
  %i.eq = add i32 %i.ej, 1518500249
  %i.er = add i32 %i.eq, %i.dk
  %i.es = add i32 %i.er, %i.eo
  %i.et = add i32 %i.es, %i.ep                    ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !12
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev) ; 4 uses
  %i.ex = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 30) ; 3 uses
  %i.ey = and i32 %i.eg, %i.ex
  %i.ez = xor i32 %i.eg, -1
  %i.fa = and i32 %i.ek, %i.ez
  %i.fb = or i32 %i.ey, %i.fa
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.et, i32 %i.et, i32 5)
  %i.fd = add i32 %i.ew, 1518500249
  %i.fe = add i32 %i.fd, %i.dx
  %i.ff = add i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.fc                    ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !12
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi) ; 4 uses
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 30) ; 3 uses
end_hunk_0
