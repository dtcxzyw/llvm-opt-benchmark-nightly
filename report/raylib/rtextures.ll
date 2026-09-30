Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@qoi_encode:bb.a
  br i1 %i.n, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i32 400000000, %i.d
  %.not = icmp ult i32 %i.g, %i.o
  br i1 %.not, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.p = mul i32 %i.g, %i.d
  %narrow = add nuw nsw i8 %i.j, 1
  %i.q = zext nneg i8 %narrow to i32
  %i.r = mul i32 %i.p, %i.q
  %i.s = add i32 %i.r, 22
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #53 ; 21 uses
  %.not185 = icmp eq ptr %i.u, null
  br i1 %.not185, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <4 x i8> <i8 113, i8 111, i8 105, i8 102>, ptr %i.u, align 1
  %i.v = load i32, ptr %1, align 4                ; 5 uses
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i32 %i.v, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.v, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = trunc i32 %i.v to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = trunc nuw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = lshr i32 %i.ah, 16
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = lshr i32 %i.ah, 8
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = trunc i32 %i.ah to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = load i8, ptr %i.i, align 4              ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.at, ptr %i.au, align 1
  %i.av = load i8, ptr %i.l, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %i.av, ptr %i.aw, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.ax = mul i32 %i.ah, %i.v
  %i.ay = zext i8 %i.at to i32                    ; 2 uses
  %i.az = mul i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.bb = sub nsw i32 %i.az, %i.ay
  %i.bc = icmp eq i8 %i.at, 4
  %i.bd = zext i8 %i.at to i64
  %i.be = zext i32 %i.bb to i64
  %i.bf = zext nneg i32 %i.az to i64
  br label %bb.i

.preheader.loopexit:                              ; preds = %bb.y
  %i.bg = sext i32 %.2212 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0210.lcssa = phi i64 [ 14, %bb.h ], [ %i.bg, %.preheader.loopexit ] ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %.0210.lcssa
  store i64 72057594037927936, ptr %scevgep, align 1
  %i.bh = trunc nsw i64 %.0210.lcssa to i32
  %i.bi = add i32 %i.bh, 8
  store i32 %i.bi, ptr %2, align 4
  br label %bb.z

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %.sroa.0.0219 = phi i8 [ 0, %.lr.ph ], [ %i.bk, %bb.y ] ; 2 uses
  %.sroa.7.0218 = phi i8 [ 0, %.lr.ph ], [ %i.bm, %bb.y ] ; 2 uses
  %.sroa.9.0217 = phi i8 [ 0, %.lr.ph ], [ %i.bo, %bb.y ] ; 2 uses
  %.sroa.11.0216 = phi i8 [ -1, %.lr.ph ], [ %.sroa.26.1, %bb.y ] ; 3 uses
  %.0170214 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.y ] ; 5 uses
  %.0210213 = phi i32 [ 14, %.lr.ph ], [ %.2212, %bb.y ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bm = load i8, ptr %i.bl, align 1             ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1             ; 6 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.26.1 = phi i8 [ %i.bq, %bb.j ], [ %.sroa.11.0216, %bb.i ] ; 5 uses
  %.sroa.26.0.insert.ext = zext i8 %.sroa.26.1 to i32 ; 2 uses
  %.sroa.26.0.insert.shift = shl nuw i32 %.sroa.26.0.insert.ext, 24
  %.sroa.19.0.insert.ext = zext i8 %i.bo to i32   ; 2 uses
  %.sroa.19.0.insert.shift = shl nuw nsw i32 %.sroa.19.0.insert.ext, 16
  %.sroa.19.0.insert.insert = or disjoint i32 %.sroa.26.0.insert.shift, %.sroa.19.0.insert.shift
  %.sroa.12.0.insert.ext = zext i8 %i.bm to i32   ; 2 uses
  %.sroa.12.0.insert.shift = shl nuw nsw i32 %.sroa.12.0.insert.ext, 8
  %.sroa.12.0.insert.insert = or disjoint i32 %.sroa.19.0.insert.insert, %.sroa.12.0.insert.shift
  %.sroa.066.0.insert.ext = zext i8 %i.bk to i32  ; 2 uses
  %.sroa.066.0.insert.insert = or disjoint i32 %.sroa.12.0.insert.insert, %.sroa.066.0.insert.ext ; 2 uses
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0216 to i32
  %.sroa.11.0.insert.shift = shl nuw i32 %.sroa.11.0.insert.ext, 24
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.0217 to i32
  %.sroa.9.0.insert.shift = shl nuw nsw i32 %.sroa.9.0.insert.ext, 16
  %.sroa.9.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.shift, %.sroa.11.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0218 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0219 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.0.0.insert.ext
  %i.br = icmp eq i32 %.sroa.066.0.insert.insert, %.sroa.0.0.insert.insert
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = add nsw i32 %.0170214, 1                ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 62
  %i.bu = icmp eq i64 %indvars.iv, %i.be
  %or.cond187 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond187, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc i32 %.0170214 to i8
  %i.bw = or i8 %i.bv, -64
  %i.bx = add nsw i32 %.0210213, 1
  %i.by = sext i32 %.0210213 to i64
  %i.bz = getelementptr inbounds i8, ptr %i.u, i64 %i.by
  store i8 %i.bw, ptr %i.bz, align 1
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.ca = icmp sgt i32 %.0170214, 0
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = trunc i32 %.0170214 to i8
  %i.cc = add i8 %i.cb, 63
  %i.cd = or i8 %i.cc, -64
  %i.ce = add nsw i32 %.0210213, 1
  %i.cf = sext i32 %.0210213 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.u, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1211 = phi i32 [ %i.ce, %bb.o ], [ %.0210213, %bb.n ] ; 10 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %.0170214, %bb.n ] ; 5 uses
  %i.ch = mul nuw nsw i32 %.sroa.066.0.insert.ext, 3
  %i.ci = mul nuw nsw i32 %.sroa.12.0.insert.ext, 5
  %i.cj = add nuw nsw i32 %i.ci, %i.ch
  %i.ck = mul nuw nsw i32 %.sroa.19.0.insert.ext, 7
  %i.cl = add nuw nsw i32 %i.cj, %i.ck
  %i.cm = mul nuw nsw i32 %.sroa.26.0.insert.ext, 11
  %i.cn = add nuw nsw i32 %i.cl, %i.cm
  %i.co = and i32 %i.cn, 63                       ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, %.sroa.066.0.insert.insert
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = trunc nuw nsw i32 %i.co to i8
  %i.cu = add nsw i32 %.1211, 1
  %i.cv = sext i32 %.1211 to i64
  %i.cw = getelementptr inbounds i8, ptr %i.u, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  store i8 %i.bk, ptr %i.cq, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.bm, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %i.bo, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  store i8 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx, align 1
  %i.cx = icmp eq i8 %.sroa.26.1, %.sroa.11.0216
  br i1 %i.cx, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cy = sub i8 %i.bk, %.sroa.0.0219             ; 3 uses
  %i.cz = sub i8 %i.bm, %.sroa.7.0218             ; 5 uses
  %i.da = sub i8 %i.bo, %.sroa.9.0217             ; 2 uses
  %i.db = add i8 %i.cy, 2
  %or.cond6 = icmp ult i8 %i.db, 4
  %i.dc = add i8 %i.cz, 2
  %i.dd = icmp ult i8 %i.dc, 4
  %or.cond12 = select i1 %or.cond6, i1 %i.dd, i1 false
  %i.de = add i8 %i.da, 2                         ; 2 uses
  %i.df = icmp ult i8 %i.de, 4
  %or.cond18 = select i1 %or.cond12, i1 %i.df, i1 false
  br i1 %or.cond18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = shl nsw i8 %i.cy, 4
  %i.dh = add nsw i8 %i.dg, 32
  %i.di = shl nsw i8 %i.cz, 2
  %i.dj = add nsw i8 %i.di, 8
  %i.dk = or i8 %i.dh, %i.dj
  %i.dl = or disjoint i8 %i.dk, %i.de
  %i.dm = or i8 %i.dl, 64
  %i.dn = add nsw i32 %.1211, 1
  %i.do = sext i32 %.1211 to i64
  %i.dp = getelementptr inbounds i8, ptr %i.u, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dq = sub i8 %i.da, %i.cz
  %i.dr = sub i8 %i.cy, %i.cz                     ; 2 uses
  %i.ds = add i8 %i.dr, 8
  %or.cond21 = icmp ult i8 %i.ds, 16
  %i.dt = add i8 %i.cz, 32                        ; 2 uses
  %i.du = icmp ult i8 %i.dt, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.du, i1 false
  %i.dv = add i8 %i.dq, 8                         ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.dw, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %4 = or disjoint i8 %i.dt, -128
  %i.dx = sext i32 %.1211 to i64
  %i.dy = getelementptr i8, ptr %i.u, i64 %i.dx   ; 2 uses
  store i8 %4, ptr %i.dy, align 1
  %i.dz = shl nsw i8 %i.dr, 4
  %i.ea = or disjoint i8 %i.dv, %i.dz
  %i.eb = xor i8 %i.ea, -128
  %i.ec = add nsw i32 %.1211, 2
  %i.ed = getelementptr i8, ptr %i.dy, i64 1
  store i8 %i.eb, ptr %i.ed, align 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ee = sext i32 %.1211 to i64
  %i.ef = getelementptr i8, ptr %i.u, i64 %i.ee   ; 4 uses
  store i8 -2, ptr %i.ef, align 1
  %i.eg = getelementptr i8, ptr %i.ef, i64 1
  store i8 %i.bk, ptr %i.eg, align 1
  %i.eh = getelementptr i8, ptr %i.ef, i64 2
  store i8 %i.bm, ptr %i.eh, align 1
  %i.ei = add nsw i32 %.1211, 4
  %i.ej = getelementptr i8, ptr %i.ef, i64 3
  store i8 %i.bo, ptr %i.ej, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.ek = sext i32 %.1211 to i64
  %i.el = getelementptr i8, ptr %i.u, i64 %i.ek   ; 5 uses
  store i8 -1, ptr %i.el, align 1
  %i.em = getelementptr i8, ptr %i.el, i64 1
  store i8 %i.bk, ptr %i.em, align 1
  %i.en = getelementptr i8, ptr %i.el, i64 2
  store i8 %i.bm, ptr %i.en, align 1
  %i.eo = getelementptr i8, ptr %i.el, i64 3
  store i8 %i.bo, ptr %i.eo, align 1
  %i.ep = add nsw i32 %.1211, 5
  %i.eq = getelementptr i8, ptr %i.el, i64 4
  store i8 %.sroa.26.1, ptr %i.eq, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bx, %bb.m ], [ %.0210213, %bb.l ], [ %i.cu, %bb.q ], [ %i.dn, %bb.t ], [ %i.ec, %bb.v ], [ %i.ei, %bb.w ], [ %i.ep, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.bs, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.er = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.er, label %bb.i, label %.preheader.loopexit

bb.z:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.preheader
  %.0172 = phi ptr [ null, %bb.a ], [ %i.u, %.preheader ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  ret ptr %.0172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoi_decode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca [64 x %union.qoi_rgba_t], align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 3
  %i.d = and i32 %3, -5
  %i.e = icmp ne i32 %i.d, 0
  %or.cond5 = and i1 %i.c, %i.e
  %i.f = icmp slt i32 %1, 22
  %or.cond7 = or i1 %i.f, %or.cond5
  br i1 %or.cond7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.h, 24
  %i.s = shl nuw nsw i32 %i.k, 16
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %i.n, 8
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)  ; 3 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = icmp eq i32 %i.y, 0
  %i.al = icmp eq i32 %i.ab, 0
  %or.cond124 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond124, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = zext nneg i8 %i.af to i32
  %i.an = add i8 %i.af, -5
  %or.cond116 = icmp ult i8 %i.an, -2
  br i1 %or.cond116, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp ugt i8 %i.ai, 1
  %i.ap = icmp ne i32 %i.w, 1903126886
  %or.cond9 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond9, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i32 400000000, %i.z
  %.not = icmp ult i32 %i.ac, %i.aq
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i32 %3, 0
  %spec.select = select i1 %i.ar, i32 %i.am, i32 %3 ; 3 uses
  %i.as = mul i32 %i.ac, %i.z
  %i.at = mul i32 %i.as, %spec.select             ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #53 ; 4 uses
  %.not115 = icmp eq ptr %i.av, null
  br i1 %.not115, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %i.aw = add nsw i32 %1, -8
  %i.ax = icmp sgt i32 %i.at, 0
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ay = icmp eq i32 %spec.select, 4
  %i.az = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.0102131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 2 uses
  %.sroa.0.0129 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.w ] ; 5 uses
  %.sroa.13.0128 = phi i8 [ 0, %.lr.ph ], [ %.sroa.13.2, %bb.w ] ; 5 uses
  %.sroa.22.0127 = phi i8 [ 0, %.lr.ph ], [ %.sroa.22.2, %bb.w ] ; 5 uses
  %.sroa.31.0126 = phi i8 [ -1, %.lr.ph ], [ %.sroa.31.2, %bb.w ] ; 6 uses
  %.0121125 = phi i32 [ 14, %.lr.ph ], [ %.2123, %bb.w ] ; 8 uses
  %i.ba = icmp sgt i32 %.0102131, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %.0102131, -1
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp slt i32 %.0121125, %i.aw
  br i1 %i.bc, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %.0121125, 1                ; 6 uses
  %i.be = sext i32 %.0121125 to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.be     ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 6 uses
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  switch i8 %i.bg, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %i.bf, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = add nsw i32 %.0121125, 4
  %i.bo = getelementptr i8, ptr %i.bf, i64 3
  %i.bp = load i8, ptr %i.bo, align 1
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bq = sext i32 %i.bd to i64
  %i.br = getelementptr inbounds i8, ptr %0, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr i8, ptr %i.bf, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %i.bf, i64 3
end_hunk_0
