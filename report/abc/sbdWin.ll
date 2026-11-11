Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdWin?download=true
inline.NumInlined: 191
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"Pivot = %4d. Divs = %4d.  \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SAT with %d vars and %d cubes.\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"UNSAT.\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @Sbd_ManSatSolver(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 13 uses
  %i.b = alloca [3 x i32], align 4                ; 11 uses
  %i.c = alloca [3 x i32], align 4                ; 13 uses
  %i.d = alloca [3 x i32], align 4                ; 11 uses
  %i.e = alloca [3 x i32], align 4                ; 13 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 1, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr i8, ptr %4, i64 4          ; 5 uses
  %.val220 = load i32, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.i = getelementptr i8, ptr %6, i64 4          ; 5 uses
  %.val219 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.j = sub i32 %.val220, %.val219               ; 4 uses
  %i.k = getelementptr i8, ptr %5, i64 8          ; 4 uses
  %.val235 = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val235, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12   ; 3 uses
  %i.o = add nsw i32 %.val219, %.val220
  %i.p = getelementptr i8, ptr %7, i64 4          ; 4 uses
  %.val216 = load i32, ptr %i.p, align 4, !tbaa !16
  %i.q = add nsw i32 %i.o, %.val216               ; 3 uses
  %i.r = icmp eq ptr %0, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @sat_solver_new() #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @sat_solver_restart(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0182 = phi ptr [ %i.s, %bb.b ], [ %0, %bb.c ] ; 26 uses
  %.val215 = load i32, ptr %i.h, align 4, !tbaa !16
  %.val214 = load i32, ptr %i.i, align 4, !tbaa !16
  %.val213 = load i32, ptr %i.p, align 4, !tbaa !16
  %i.t = add i32 %.val215, 100
  %i.u = add i32 %i.t, %.val214
  %i.v = add i32 %i.u, %.val213
  tail call void @sat_solver_setnvars(ptr noundef %.0182, i32 noundef %i.v) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.x = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.f, ptr noundef nonnull %i.w) #13 ; 0 uses
  %.val212267 = load i32, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.y = icmp sgt i32 %.val212267, 1
  br i1 %i.y, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr i8, ptr %4, i64 8
  %i.aa = getelementptr i8, ptr %1, i64 32
  %i.ab = getelementptr i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 4 uses
  br label %bb.e

.critedge.preheader:                              ; preds = %bb.h, %bb.d
  %.val211269 = phi i32 [ %.val212267, %bb.d ], [ %.val212, %bb.h ] ; 2 uses
  %i.ai = icmp slt i32 %i.j, %.val211269
  br i1 %i.ai, label %.lr.ph271, label %.critedge2

.lr.ph271:                                        ; preds = %.critedge.preheader
  %i.aj = getelementptr i8, ptr %4, i64 8
  %i.ak = getelementptr i8, ptr %1, i64 32
  %i.al = getelementptr i8, ptr %2, i64 8
  %.not197 = icmp eq i32 %8, 0                    ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %i.as = sext i32 %i.j to i64
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.val234 = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val234, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12 ; 3 uses
  %.val237 = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %.val237, i64 %i.av
  %.val238 = load i64, ptr %i.aw, align 4         ; 6 uses
  %i.ax = and i64 %.val238, 2684354559
  %narrow.i.not = icmp eq i64 %i.ax, 2684354559
  br i1 %narrow.i.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val233 = load ptr, ptr %i.k, align 8, !tbaa !17 ; 3 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val233, i64 %i.av
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12 ; 2 uses
  %i.ba = trunc i64 %.val238 to i32               ; 2 uses
  %i.bb = and i32 %i.ba, 536870911                ; 2 uses
  %i.bc = sub nsw i32 %i.au, %i.bb                ; 2 uses
  %.val232 = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.val232, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bg = lshr i64 %.val238, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 536870911                ; 2 uses
  %i.bj = sub nsw i32 %i.au, %i.bi                ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val232, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !12 ; 3 uses
  %i.bn = icmp sgt i32 %i.bf, -1                  ; 2 uses
  %i.bo = lshr i32 %i.bf, 1
  %spec.select = select i1 %i.bn, i32 %i.bo, i32 %i.bc
  %i.bp = icmp sgt i32 %i.bm, -1                  ; 2 uses
  %i.bq = lshr i32 %i.bm, 1
  %i.br = select i1 %i.bp, i32 %i.bq, i32 %i.bj
  %i.bs = sext i32 %spec.select to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %.val233, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12 ; 2 uses
  %i.bv = sext i32 %i.br to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val233, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = lshr i32 %i.ba, 29
  %i.bz = select i1 %i.bn, i32 %i.bf, i32 0
  %.v = xor i32 %i.bz, %i.by
  %i.ca = and i32 %.v, 1                          ; 2 uses
  %i.cb = lshr i64 %.val238, 61
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = select i1 %i.bp, i32 %i.bm, i32 0
  %.v264 = xor i32 %i.cd, %i.cc
  %i.ce = and i32 %.v264, 1                       ; 2 uses
  %i.cf = and i64 %.val238, 2147483648
  %.not.i.i = icmp eq i64 %i.cf, 0
  %i.cg = and i64 %.val238, 536870911
  %i.ch = icmp ne i64 %i.cg, 536870911
  %narrow.i.not.i.not284 = and i1 %.not.i.i, %i.ch
  %.not265 = icmp samesign ult i32 %i.bb, %i.bi
  %or.cond = select i1 %narrow.i.not.i.not284, i1 %.not265, i1 false
  %i.ci = shl nsw i32 %i.bx, 1                    ; 4 uses
  br i1 %or.cond, label %bb.g, label %Gia_ObjIsXor.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cj = xor i32 %i.ce, %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ck = shl nsw i32 %i.az, 1
  %i.cl = or disjoint i32 %i.cj, %i.ck            ; 3 uses
  %i.cm = xor i32 %i.cl, 1                        ; 2 uses
  store i32 %i.cm, ptr %i.e, align 4, !tbaa !12
  %i.cn = shl nsw i32 %i.bu, 1                    ; 3 uses
  %i.co = or disjoint i32 %i.cn, 1                ; 2 uses
  store i32 %i.co, ptr %i.af, align 4, !tbaa !12
  %i.cp = or disjoint i32 %i.ci, 1                ; 2 uses
  store i32 %i.cp, ptr %i.ag, align 4, !tbaa !12
  %i.cq = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ah) #13 ; 0 uses
  store i32 %i.cm, ptr %i.e, align 4, !tbaa !12
  store i32 %i.cn, ptr %i.af, align 4, !tbaa !12
  store i32 %i.ci, ptr %i.ag, align 4, !tbaa !12
  %i.cr = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ah) #13 ; 0 uses
  store i32 %i.cl, ptr %i.e, align 4, !tbaa !12
  store i32 %i.co, ptr %i.af, align 4, !tbaa !12
  store i32 %i.ci, ptr %i.ag, align 4, !tbaa !12
  %i.cs = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ah) #13 ; 0 uses
  store i32 %i.cl, ptr %i.e, align 4, !tbaa !12
  store i32 %i.cn, ptr %i.af, align 4, !tbaa !12
  store i32 %i.cp, ptr %i.ag, align 4, !tbaa !12
  %i.ct = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ah) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.h

Gia_ObjIsXor.exit.thread:                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.cu = shl nsw i32 %i.az, 1                    ; 2 uses
  %i.cv = or disjoint i32 %i.cu, 1                ; 2 uses
  store i32 %i.cv, ptr %i.d, align 4, !tbaa !12
  %i.cw = shl nsw i32 %i.bu, 1
  %i.cx = or disjoint i32 %i.ca, %i.cw            ; 2 uses
  store i32 %i.cx, ptr %i.ac, align 4, !tbaa !12
  %i.cy = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ad) #13 ; 0 uses
  store i32 %i.cv, ptr %i.d, align 4, !tbaa !12
  %i.cz = or disjoint i32 %i.ce, %i.ci            ; 2 uses
  store i32 %i.cz, ptr %i.ac, align 4, !tbaa !12
  %i.da = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ad) #13 ; 0 uses
  store i32 %i.cu, ptr %i.d, align 4, !tbaa !12
  %i.db = xor i32 %i.cx, 1
  store i32 %i.db, ptr %i.ac, align 4, !tbaa !12
  %i.dc = xor i32 %i.cz, 1
  store i32 %i.dc, ptr %i.ad, align 4, !tbaa !12
  %i.dd = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ae) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %Gia_ObjIsXor.exit.thread, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val212 = load i32, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.de = sext i32 %.val212 to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.e, label %.critedge.preheader, !llvm.loop !41

bb.i:                                             ; preds = %.lr.ph271, %.critedge
  %indvars.iv289 = phi i64 [ %i.as, %.lr.ph271 ], [ %indvars.iv.next290, %.critedge ] ; 2 uses
  %.val228 = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.dg = getelementptr inbounds [4 x i8], ptr %.val228, i64 %indvars.iv289
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !12 ; 3 uses
  %.val236 = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [12 x i8], ptr %.val236, i64 %i.di
  %.val227 = load ptr, ptr %i.k, align 8, !tbaa !17 ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %.val227, i64 %i.di
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12
  %.val210 = load i32, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  %i.dm = add nsw i32 %.val210, %i.dl             ; 2 uses
  %.val240 = load i64, ptr %i.dj, align 4         ; 5 uses
  %i.dn = trunc i64 %.val240 to i32               ; 2 uses
  %i.do = and i32 %i.dn, 536870911                ; 2 uses
  %i.dp = sub nsw i32 %i.dh, %i.do                ; 2 uses
  %.val226 = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.val226, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !12 ; 3 uses
  %i.dt = lshr i64 %.val240, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = and i32 %i.du, 536870911                ; 2 uses
  %i.dw = sub nsw i32 %i.dh, %i.dv                ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val226, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !12 ; 3 uses
  %i.ea = lshr i32 %i.ds, 1
  %i.eb = icmp slt i32 %i.ds, 0
  %spec.select262 = select i1 %i.eb, i32 %i.dp, i32 %i.ea
  %i.ec = lshr i32 %i.dz, 1
  %i.ed = icmp slt i32 %i.dz, 0
  %i.ee = select i1 %i.ed, i32 %i.dw, i32 %i.ec
  %i.ef = sext i32 %spec.select262 to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.val227, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !12 ; 2 uses
  %i.ei = sext i32 %i.ee to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val227, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12 ; 2 uses
  %i.el = icmp slt i32 %i.eh, %i.j
  %i.em = select i1 %i.el, i32 0, i32 %.val210
  %i.en = add nsw i32 %i.em, %i.eh                ; 2 uses
  %i.eo = icmp slt i32 %i.ek, %i.j
  %i.ep = select i1 %i.eo, i32 0, i32 %.val210
  %i.eq = add nsw i32 %i.ep, %i.ek                ; 2 uses
  %i.er = icmp ne i32 %i.en, %i.n                 ; 2 uses
  %i.es = icmp ne i32 %i.eq, %i.n                 ; 2 uses
  %i.et = select i1 %.not197, i1 true, i1 %i.er
  %.0178 = select i1 %i.et, i32 %i.en, i32 %i.q   ; 2 uses
  %i.eu = select i1 %.not197, i1 true, i1 %i.es
  %.0177 = select i1 %i.eu, i32 %i.eq, i32 %i.q
  %i.ev = lshr i32 %i.dn, 29
  %.not300 = xor i1 %i.er, true
  %i.ew = select i1 %.not197, i1 %.not300, i1 false
  %i.ex = zext i1 %i.ew to i32
  %i.ey = call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.ez = xor i32 %i.ey, %i.ev
  %i.fa = and i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, %i.ex                    ; 2 uses
  %i.fc = lshr i64 %.val240, 61
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %.not301 = xor i1 %i.es, true
  %i.fe = select i1 %.not197, i1 %.not301, i1 false
  %i.ff = zext i1 %i.fe to i32
  %i.fg = call i32 @llvm.smax.i32(i32 %i.dz, i32 0)
  %i.fh = xor i32 %i.fg, %i.fd
  %i.fi = and i32 %i.fh, 1
  %i.fj = xor i32 %i.fi, %i.ff                    ; 2 uses
  %i.fk = and i64 %.val240, 2147483648
  %.not.i.i256 = icmp eq i64 %i.fk, 0
  %i.fl = and i64 %.val240, 536870911
  %i.fm = icmp ne i64 %i.fl, 536870911
  %narrow.i.not.i257.not286 = and i1 %.not.i.i256, %i.fm
  %.not263 = icmp samesign ult i32 %i.do, %i.dv
  %or.cond266 = select i1 %narrow.i.not.i257.not286, i1 %.not263, i1 false
  %i.fn = shl nsw i32 %.0177, 1                   ; 4 uses
  br i1 %or.cond266, label %bb.j, label %Gia_ObjIsXor.exit258.thread

bb.j:                                             ; preds = %bb.i
  %i.fo = xor i32 %i.fj, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.fp = shl nsw i32 %i.dm, 1
  %i.fq = or disjoint i32 %i.fo, %i.fp            ; 3 uses
  %i.fr = xor i32 %i.fq, 1                        ; 2 uses
  store i32 %i.fr, ptr %i.c, align 4, !tbaa !12
  %i.fs = shl nsw i32 %.0178, 1                   ; 3 uses
  %i.ft = or disjoint i32 %i.fs, 1                ; 2 uses
  store i32 %i.ft, ptr %i.ap, align 4, !tbaa !12
  %i.fu = or disjoint i32 %i.fn, 1                ; 2 uses
  store i32 %i.fu, ptr %i.aq, align 4, !tbaa !12
  %i.fv = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ar) #13 ; 0 uses
  store i32 %i.fr, ptr %i.c, align 4, !tbaa !12
  store i32 %i.fs, ptr %i.ap, align 4, !tbaa !12
  store i32 %i.fn, ptr %i.aq, align 4, !tbaa !12
  %i.fw = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ar) #13 ; 0 uses
  store i32 %i.fq, ptr %i.c, align 4, !tbaa !12
  store i32 %i.ft, ptr %i.ap, align 4, !tbaa !12
  store i32 %i.fn, ptr %i.aq, align 4, !tbaa !12
  %i.fx = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ar) #13 ; 0 uses
  store i32 %i.fq, ptr %i.c, align 4, !tbaa !12
  store i32 %i.fs, ptr %i.ap, align 4, !tbaa !12
  store i32 %i.fu, ptr %i.aq, align 4, !tbaa !12
  %i.fy = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ar) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.critedge

Gia_ObjIsXor.exit258.thread:                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.fz = shl nsw i32 %i.dm, 1                    ; 2 uses
  %i.ga = or disjoint i32 %i.fz, 1                ; 2 uses
  store i32 %i.ga, ptr %i.b, align 4, !tbaa !12
  %i.gb = shl nsw i32 %.0178, 1
  %i.gc = or disjoint i32 %i.fb, %i.gb            ; 2 uses
  store i32 %i.gc, ptr %i.am, align 4, !tbaa !12
  %i.gd = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.b, ptr noundef nonnull %i.an) #13 ; 0 uses
  store i32 %i.ga, ptr %i.b, align 4, !tbaa !12
  %i.ge = or disjoint i32 %i.fj, %i.fn            ; 2 uses
  store i32 %i.ge, ptr %i.am, align 4, !tbaa !12
  %i.gf = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.b, ptr noundef nonnull %i.an) #13 ; 0 uses
  store i32 %i.fz, ptr %i.b, align 4, !tbaa !12
  %i.gg = xor i32 %i.gc, 1
  store i32 %i.gg, ptr %i.am, align 4, !tbaa !12
  %i.gh = xor i32 %i.ge, 1
  store i32 %i.gh, ptr %i.an, align 4, !tbaa !12
  %i.gi = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ao) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %Gia_ObjIsXor.exit258.thread
  %indvars.iv.next290 = add nsw i64 %indvars.iv289, 1 ; 2 uses
  %.val211 = load i32, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.gj = sext i32 %.val211 to i64
  %i.gk = icmp slt i64 %indvars.iv.next290, %i.gj
  br i1 %i.gk, label %bb.i, label %.critedge2, !llvm.loop !42

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  %.val211.lcssa = phi i32 [ %.val211269, %.critedge.preheader ], [ %.val211, %.critedge ]
  %.val207 = load i32, ptr %i.p, align 4, !tbaa !16 ; 2 uses
  %i.gl = icmp sgt i32 %.val207, 0
  br i1 %i.gl, label %.lr.ph276, label %bb.t

.lr.ph276:                                        ; preds = %.critedge2
  %.val205 = load i32, ptr %i.i, align 4, !tbaa !16
  %i.gm = call i32 @llvm.umax.i32(i32 %.val207, i32 16) ; 2 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 2
  %i.gp = call noalias ptr @malloc(i64 noundef %i.go) #14
  %i.gq = add nsw i32 %.val205, %.val211.lcssa
  %i.gr = getelementptr i8, ptr %7, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph276, %Vec_IntPush.exit
  %indvars.iv294 = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next295, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv292 = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next293, %Vec_IntPush.exit ] ; 7 uses
  %storemerge281 = phi ptr [ %i.gp, %.lr.ph276 ], [ %storemerge282, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i279 = phi i32 [ %i.gm, %.lr.ph276 ], [ %spec.select.sink.i278, %Vec_IntPush.exit ] ; 3 uses
  %.0176275 = phi i32 [ %i.gq, %.lr.ph276 ], [ %i.hp, %Vec_IntPush.exit ] ; 2 uses
  %.val222 = load ptr, ptr %i.gr, align 8, !tbaa !17
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.val222, i64 %indvars.iv294
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !12
  %.val221 = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.val221, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !12 ; 2 uses
  %i.ha = shl nsw i32 %.0176275, 1                ; 4 uses
  %i.hb = trunc nsw i64 %indvars.iv292 to i32
  %i.hc = icmp eq i32 %spec.select.sink.i279, %i.hb
  br i1 %i.hc, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %i.hd = icmp samesign ult i64 %indvars.iv292, 16
  br i1 %i.hd, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.not9.i.i = icmp eq ptr %storemerge281, null
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.he = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge281, i64 noundef 64) #15
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.hf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.l
  %i.hg = icmp samesign ult i64 %indvars.iv292, 1073741823
  %indvars.iv292.tr = trunc nsw i64 %indvars.iv292 to i32
  %i.hh = shl nsw i32 %indvars.iv292.tr, 1
  %spec.select.i = select i1 %i.hg, i32 %i.hh, i32 2147483647 ; 4 uses
  %i.hi = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv292, %i.hi
  br i1 %.not.i9.i, label %bb.q, label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.p
  %.not9.i10.i = icmp eq ptr %storemerge281, null
  %i.hj = zext nneg i32 %spec.select.i to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hl = call ptr @realloc(ptr noundef nonnull %storemerge281, i64 noundef %i.hk) #15
  br label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.q
  %i.hm = call noalias ptr @malloc(i64 noundef %i.hk) #14
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.o, %bb.n, %bb.s, %bb.r, %bb.k, %bb.p
  %storemerge282 = phi ptr [ %storemerge281, %bb.k ], [ %storemerge281, %bb.p ], [ %i.hf, %bb.o ], [ %i.he, %bb.n ], [ %i.hl, %bb.r ], [ %i.hm, %bb.s ] ; 5 uses
  %spec.select.sink.i278 = phi i32 [ %spec.select.sink.i279, %bb.k ], [ %spec.select.sink.i279, %bb.p ], [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i, %bb.r ], [ %spec.select.i, %bb.s ]
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %storemerge282, i64 %indvars.iv292
  store i32 %i.ha, ptr %i.hn, align 4, !tbaa !12
  %.val = load i32, ptr %i.i, align 4, !tbaa !16
  %i.ho = add nsw i32 %.val, %i.gz
  %i.hp = add nsw i32 %.0176275, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hq = shl nsw i32 %i.gz, 1                    ; 3 uses
  %i.hr = or disjoint i32 %i.hq, 1                ; 2 uses
  store i32 %i.hr, ptr %i.a, align 4, !tbaa !12
  %i.hs = shl nsw i32 %i.ho, 1                    ; 3 uses
  %i.ht = or disjoint i32 %i.hs, 1                ; 2 uses
  store i32 %i.ht, ptr %i.gs, align 4, !tbaa !12
  %i.hu = or disjoint i32 %i.ha, 1                ; 2 uses
  store i32 %i.hu, ptr %i.gt, align 4, !tbaa !12
  %i.hv = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gu) #13 ; 0 uses
  store i32 %i.hr, ptr %i.a, align 4, !tbaa !12
  store i32 %i.hs, ptr %i.gs, align 4, !tbaa !12
  store i32 %i.ha, ptr %i.gt, align 4, !tbaa !12
  %i.hw = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gu) #13 ; 0 uses
  store i32 %i.hq, ptr %i.a, align 4, !tbaa !12
  store i32 %i.ht, ptr %i.gs, align 4, !tbaa !12
  store i32 %i.ha, ptr %i.gt, align 4, !tbaa !12
  %i.hx = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gu) #13 ; 0 uses
  store i32 %i.hq, ptr %i.a, align 4, !tbaa !12
  store i32 %i.hs, ptr %i.gs, align 4, !tbaa !12
  store i32 %i.hu, ptr %i.gt, align 4, !tbaa !12
  %i.hy = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gu) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %.val203 = load i32, ptr %i.p, align 4, !tbaa !16
  %i.hz = sext i32 %.val203 to i64
  %i.ia = icmp slt i64 %indvars.iv.next295, %i.hz
  br i1 %i.ia, label %bb.k, label %Vec_IntFree.exit, !llvm.loop !43

Vec_IntFree.exit:                                 ; preds = %Vec_IntPush.exit
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %storemerge282, i64 %indvars.iv.next293
  %i.ic = call i32 @sat_solver_addclause(ptr noundef %.0182, ptr noundef nonnull %storemerge282, ptr noundef nonnull %i.ib) #13
  call void @free(ptr noundef nonnull %storemerge282) #13
  %.not196 = icmp eq i32 %i.ic, 0
  br i1 %.not196, label %.sink.split, label %.critedge202

bb.t:                                             ; preds = %.critedge2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.critedge202, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.id = shl nsw i32 %i.n, 1                     ; 2 uses
end_hunk_0
