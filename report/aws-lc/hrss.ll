Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/hrss?download=true
inline.NumInlined: 316
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@HRSS_poly3_mul:bb.a
  %i.ic = or i64 %i.hx, %i.ib
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ie = load i64, ptr %i.bt, align 8, !tbaa !17 ; 2 uses
  %i.if = load i64, ptr %i.id, align 8, !tbaa !17
  %i.ig = xor i64 %i.if, %i.hc                    ; 2 uses
  %i.ih = xor i64 %i.ie, %i.hc
  %i.ii = xor i64 %i.ig, %i.gz
  %i.ij = and i64 %i.ii, %i.ih
  store i64 %i.ij, ptr %i.bt, align 8, !tbaa !17
  %i.ik = xor i64 %i.ie, %i.gz
  %i.il = or i64 %i.ig, %i.ik
  store i64 %i.il, ptr %i.id, align 8, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.in = load i64, ptr %i.cl, align 8, !tbaa !17 ; 2 uses
  %i.io = load i64, ptr %i.im, align 8, !tbaa !17
  %i.ip = xor i64 %i.io, %i.hc                    ; 2 uses
  %i.iq = xor i64 %i.in, %i.hc
  %i.ir = xor i64 %i.ip, %i.gz
  %i.is = and i64 %i.ir, %i.iq
  store i64 %i.is, ptr %i.cl, align 8, !tbaa !17
  %i.it = xor i64 %i.in, %i.gz
  %i.iu = or i64 %i.ip, %i.it
  store i64 %i.iu, ptr %i.im, align 8, !tbaa !17
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.iw = load i64, ptr %i.dd, align 8, !tbaa !17 ; 2 uses
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !17
  %i.iy = xor i64 %i.ix, %i.hc                    ; 2 uses
  %i.iz = xor i64 %i.iw, %i.hc
  %i.ja = xor i64 %i.iy, %i.gz
  %i.jb = and i64 %i.ja, %i.iz
  store i64 %i.jb, ptr %i.dd, align 8, !tbaa !17
  %i.jc = xor i64 %i.iw, %i.gz
  %i.jd = or i64 %i.iy, %i.jc
  store i64 %i.jd, ptr %i.iv, align 8, !tbaa !17
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.jf = load i64, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !17
  %i.jh = xor i64 %i.jg, %i.hc                    ; 2 uses
  %i.ji = xor i64 %i.jf, %i.hc
  %i.jj = xor i64 %i.jh, %i.gz
  %i.jk = and i64 %i.jj, %i.ji
  store i64 %i.jk, ptr %i.dv, align 8, !tbaa !17
  %i.jl = xor i64 %i.jf, %i.gz
  %i.jm = or i64 %i.jh, %i.jl
  store i64 %i.jm, ptr %i.je, align 8, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jo = load i64, ptr %i.en, align 8, !tbaa !17 ; 2 uses
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !17
  %i.jq = xor i64 %i.jp, %i.hc                    ; 2 uses
  %i.jr = xor i64 %i.jo, %i.hc
  %i.js = xor i64 %i.jq, %i.gz
  %i.jt = and i64 %i.js, %i.jr
  store i64 %i.jt, ptr %i.en, align 8, !tbaa !17
  %i.ju = xor i64 %i.jo, %i.gz
  %i.jv = or i64 %i.jq, %i.ju
  store i64 %i.jv, ptr %i.jn, align 8, !tbaa !17
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jx = load i64, ptr %i.ff, align 8, !tbaa !17 ; 2 uses
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !17
  %i.jz = xor i64 %i.jy, %i.hc                    ; 2 uses
  %i.ka = xor i64 %i.jx, %i.hc
  %i.kb = xor i64 %i.jz, %i.gz
  %i.kc = and i64 %i.kb, %i.ka
  store i64 %i.kc, ptr %i.ff, align 8, !tbaa !17
  %i.kd = xor i64 %i.jx, %i.gz
  %i.ke = or i64 %i.jz, %i.kd
  store i64 %i.ke, ptr %i.jw, align 8, !tbaa !17
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kg = load i64, ptr %i.fx, align 8, !tbaa !17 ; 2 uses
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !17
  %i.ki = xor i64 %i.kh, %i.hc                    ; 2 uses
  %i.kj = xor i64 %i.kg, %i.hc
  %i.kk = xor i64 %i.ki, %i.gz
  %i.kl = and i64 %i.kk, %i.kj
  store i64 %i.kl, ptr %i.fx, align 8, !tbaa !17
  %i.km = xor i64 %i.kg, %i.gz
  %i.kn = or i64 %i.ki, %i.km
  store i64 %i.kn, ptr %i.kf, align 8, !tbaa !17
  %i.ko = xor i64 %i.hc, %i.gx                    ; 2 uses
  %i.kp = xor i64 %i.hc, %i.gu
  %i.kq = xor i64 %i.ko, %i.gz
  %i.kr = xor i64 %i.gz, %i.gu
  %i.ks = or i64 %i.ko, %i.kr
  %i.kt = and i64 %i.kp, 2305843009213693951
  %i.ku = and i64 %i.kt, %i.kq
  store i64 %i.ku, ptr %i.gp, align 8, !tbaa !17
  %i.kv = and i64 %i.ks, 2305843009213693951
  store i64 %i.kv, ptr %i.ha, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @poly3_mul_aux(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.poly3_span, align 8         ; 5 uses
  %6 = alloca %struct.poly3_span, align 8         ; 5 uses
  %7 = alloca %struct.poly3_span, align 8         ; 6 uses
  %8 = alloca %struct.poly3_span, align 8         ; 5 uses
  %9 = alloca %struct.poly3_span, align 8         ; 7 uses
  %10 = alloca %struct.poly3_span, align 8        ; 5 uses
  %i.a = icmp eq i64 %4, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.a, label %.peel.next, label %bb.c

.peel.next:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !14
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !14
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = and i64 %i.d, 1
  %i.m = sub nsw i64 0, %i.l
  %i.n = and i64 %i.g, 1
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 0, i64 %i.k          ; 2 uses
  %i.q = xor i64 %i.i, %i.m
  %i.r = and i64 %i.p, %i.q
  br label %bb.b

.loopexit:                                        ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  store i64 %i.al, ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ar, ptr %i.t, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.au, ptr %i.w, align 8, !tbaa !17
  br label %bb.f

bb.b:                                             ; preds = %.peel.next, %bb.b
  %.0132.in = phi i64 [ %i.d, %.peel.next ], [ %.0132, %bb.b ]
  %.081131.in = phi i64 [ %i.g, %.peel.next ], [ %.081131, %bb.b ] ; 2 uses
  %.082130 = phi i64 [ 1, %.peel.next ], [ %i.av, %bb.b ] ; 4 uses
  %.0119129 = phi i64 [ 0, %.peel.next ], [ %i.au, %bb.b ] ; 2 uses
  %.0120128 = phi i64 [ %i.p, %.peel.next ], [ %i.ao, %bb.b ] ; 2 uses
  %.0122127 = phi i64 [ 0, %.peel.next ], [ %i.ar, %bb.b ]
  %.0124126 = phi i64 [ %i.r, %.peel.next ], [ %i.al, %bb.b ]
  %.081131 = lshr i64 %.081131.in, 1
  %.0132 = lshr i64 %.0132.in, 1                  ; 2 uses
  %i.x = and i64 %.081131.in, 2
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 0, i64 %i.k          ; 3 uses
  %i.aa = and i64 %.0132, 1
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = xor i64 %i.i, %i.ab
  %i.ad = and i64 %i.z, %i.ac                     ; 2 uses
  %i.ae = shl i64 %i.ad, %.082130                 ; 2 uses
  %i.af = sub nuw nsw i64 64, %.082130            ; 2 uses
  %i.ag = lshr i64 %i.ad, %i.af                   ; 2 uses
  %i.ah = shl i64 %i.z, %.082130                  ; 2 uses
  %i.ai = lshr i64 %i.z, %i.af                    ; 2 uses
  %i.aj = xor i64 %i.ah, %.0124126                ; 2 uses
  %i.ak = xor i64 %i.ae, %.0120128
  %i.al = and i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = xor i64 %i.ah, %.0120128
  %i.an = xor i64 %i.aj, %i.ae
  %i.ao = or i64 %i.an, %i.am                     ; 2 uses
  %i.ap = xor i64 %i.ai, %.0122127                ; 2 uses
  %i.aq = xor i64 %i.ag, %.0119129
  %i.ar = and i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = xor i64 %i.ai, %.0119129
  %i.at = xor i64 %i.ap, %i.ag
  %i.au = or i64 %i.at, %i.as                     ; 2 uses
  %i.av = add nuw nsw i64 %.082130, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !26

bb.c:                                             ; preds = %bb.a
  %i.aw = lshr i64 %4, 1                          ; 29 uses
  %i.ax = sub i64 %4, %i.aw                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ay = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw ; 4 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !15  ; 4 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.aw ; 4 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.bf = load ptr, ptr %3, align 8, !tbaa !14    ; 4 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.aw ; 4 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 4 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.aw ; 4 uses
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bn = load ptr, ptr %0, align 8, !tbaa !14    ; 7 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ax ; 3 uses
  store ptr %i.bp, ptr %8, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !15 ; 7 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ax ; 3 uses
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !15
  %.val88 = load ptr, ptr %7, align 8             ; 4 uses
  %.val88147 = ptrtoaddr ptr %.val88 to i64       ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val89 = load ptr, ptr %i.bv, align 8          ; 4 uses
  %.val89146 = ptrtoaddr ptr %.val89 to i64       ; 3 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %poly3_span_add.exit94, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i64 %4, 52
  br i1 %min.iters.check, label %.lr.ph.i.preheader369, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.bw = sub i64 %.val88147, %.val89146
  %diff.check = icmp ugt i64 %i.bw, -16
  %11 = shl i64 %i.aw, 3                          ; 4 uses
  %12 = sub i64 %.val88147, %i.az                 ; 2 uses
  %i.bx = sub i64 %11, %12
  %diff.check148 = icmp ugt i64 %i.bx, -16
  %conflict.rdx = or i1 %diff.check, %diff.check148
  %i.by = add i64 %12, -1
  %diff.check149 = icmp ult i64 %i.by, 15
  %conflict.rdx150 = or i1 %conflict.rdx, %diff.check149
  %i.bz = sub i64 %.val88147, %i.bd               ; 2 uses
  %i.ca = sub i64 %11, %i.bz
  %diff.check151 = icmp ugt i64 %i.ca, -16
  %conflict.rdx152 = or i1 %conflict.rdx150, %diff.check151
  %i.cb = add i64 %i.bz, -1
  %diff.check153 = icmp ult i64 %i.cb, 15
  %conflict.rdx154 = or i1 %conflict.rdx152, %diff.check153
  %i.cc = sub i64 %.val89146, %i.az               ; 2 uses
  %i.cd = sub i64 %11, %i.cc
  %diff.check155 = icmp ugt i64 %i.cd, -16
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  %i.ce = add i64 %i.cc, -1
  %diff.check157 = icmp ult i64 %i.ce, 15
  %conflict.rdx158 = or i1 %conflict.rdx156, %diff.check157
  %i.cf = sub i64 %.val89146, %i.bd               ; 2 uses
  %i.cg = sub i64 %11, %i.cf
  %diff.check159 = icmp ugt i64 %i.cg, -16
  %conflict.rdx160 = or i1 %conflict.rdx158, %diff.check159
  %i.ch = add i64 %i.cf, -1
  %diff.check161 = icmp ult i64 %i.ch, 15
  %conflict.rdx162 = or i1 %conflict.rdx160, %diff.check161
  br i1 %conflict.rdx162, label %.lr.ph.i.preheader369, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 9223372036854775806     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %index
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %index
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x i64>, ptr %i.ck, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %wide.load163 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !17 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index
  %wide.load164 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load165 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !17 ; 2 uses
  %i.co = xor <2 x i64> %wide.load165, %wide.load ; 2 uses
  %i.cp = xor <2 x i64> %wide.load164, %wide.load163
  %i.cq = and <2 x i64> %i.co, %i.cp
  store <2 x i64> %i.cq, ptr %i.ci, align 8, !tbaa !17
  %i.cr = xor <2 x i64> %wide.load165, %wide.load163
  %i.cs = xor <2 x i64> %i.co, %wide.load164
  %i.ct = or <2 x i64> %i.cs, %i.cr
  store <2 x i64> %i.ct, ptr %i.cj, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.lr.ph.i91.preheader, label %.lr.ph.i.preheader369

.lr.ph.i.preheader369:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader369, %.lr.ph.i
  %.01.i = phi i64 [ %i.dl, %.lr.ph.i ], [ %.01.i.ph, %.lr.ph.i.preheader369 ] ; 7 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %.01.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %.01.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.01.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !17 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !17 ; 2 uses
  %i.df = xor i64 %i.de, %i.cy                    ; 2 uses
  %i.dg = xor i64 %i.dc, %i.da
  %i.dh = and i64 %i.df, %i.dg
  store i64 %i.dh, ptr %i.cv, align 8, !tbaa !17
  %i.di = xor i64 %i.de, %i.da
  %i.dj = xor i64 %i.df, %i.dc
  %i.dk = or i64 %i.dj, %i.di
  store i64 %i.dk, ptr %i.cw, align 8, !tbaa !17
  %i.dl = add nuw nsw i64 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dl, %i.aw
  br i1 %exitcond.not.i, label %.lr.ph.i91.preheader, label %.lr.ph.i, !llvm.loop !28

.lr.ph.i91.preheader:                             ; preds = %.lr.ph.i, %middle.block
  %min.iters.check185 = icmp ult i64 %4, 72
  br i1 %min.iters.check185, label %.lr.ph.i91.preheader368, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i91.preheader
  %i.dm = sub i64 %i.bo, %i.bt
  %diff.check167 = icmp ugt i64 %i.dm, -16
  %i.dn = shl i64 %4, 3                           ; 2 uses
  %i.do = shl i64 %i.aw, 4                        ; 4 uses
  %i.dp = add i64 %i.dn, %i.bo                    ; 2 uses
  %i.dq = sub i64 %i.dp, %i.bg                    ; 2 uses
  %13 = sub i64 %i.do, %i.dq
  %diff.check205 = icmp ugt i64 %13, -16
  %conflict.rdx206 = or i1 %diff.check167, %diff.check205
  %i.dr = shl i64 %i.aw, 3                        ; 4 uses
  %i.ds = sub i64 %i.dr, %i.dq
  %diff.check170 = icmp ugt i64 %i.ds, -16
  %conflict.rdx171 = or i1 %conflict.rdx206, %diff.check170
  %i.dt = sub i64 %i.dp, %i.bl                    ; 2 uses
  %i.du = sub i64 %i.do, %i.dt
  %diff.check172 = icmp ugt i64 %i.du, -16
  %conflict.rdx173 = or i1 %conflict.rdx171, %diff.check172
  %i.dv = sub i64 %i.dr, %i.dt
  %diff.check174 = icmp ugt i64 %i.dv, -16
  %conflict.rdx175 = or i1 %conflict.rdx173, %diff.check174
  %i.dw = add i64 %i.dn, %i.bt                    ; 2 uses
  %i.dx = sub i64 %i.dw, %i.bg                    ; 2 uses
  %i.dy = sub i64 %i.do, %i.dx
  %diff.check176 = icmp ugt i64 %i.dy, -16
  %conflict.rdx177 = or i1 %conflict.rdx175, %diff.check176
  %i.dz = sub i64 %i.dr, %i.dx
  %diff.check178 = icmp ugt i64 %i.dz, -16
  %conflict.rdx179 = or i1 %conflict.rdx177, %diff.check178
  %i.ea = sub i64 %i.dw, %i.bl                    ; 2 uses
  %i.eb = sub i64 %i.do, %i.ea
  %diff.check180 = icmp ugt i64 %i.eb, -16
  %conflict.rdx181 = or i1 %conflict.rdx179, %diff.check180
  %i.ec = sub i64 %i.dr, %i.ea
  %diff.check182 = icmp ugt i64 %i.ec, -16
  %conflict.rdx183 = or i1 %conflict.rdx181, %diff.check182
  br i1 %conflict.rdx183, label %.lr.ph.i91.preheader368, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck166
  %n.vec187 = and i64 %i.aw, 9223372036854775806  ; 3 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index189
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index189
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index189
  %wide.load190 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !17
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index189
  %wide.load191 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !17 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index189
  %wide.load192 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !17 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index189
  %wide.load193 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !17 ; 2 uses
  %i.ej = xor <2 x i64> %wide.load193, %wide.load190 ; 2 uses
  %i.ek = xor <2 x i64> %wide.load192, %wide.load191
  %i.el = and <2 x i64> %i.ej, %i.ek
  store <2 x i64> %i.el, ptr %i.ed, align 8, !tbaa !17
  %i.em = xor <2 x i64> %wide.load193, %wide.load191
  %i.en = xor <2 x i64> %i.ej, %wide.load192
  %i.eo = or <2 x i64> %i.en, %i.em
  store <2 x i64> %i.eo, ptr %i.ee, align 8, !tbaa !17
  %index.next194 = add nuw i64 %index189, 2       ; 2 uses
  %i.ep = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.ep, label %middle.block195, label %vector.body188, !llvm.loop !29

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.aw, %n.vec187
  br i1 %cmp.n196, label %poly3_span_add.exit94, label %.lr.ph.i91.preheader368

.lr.ph.i91.preheader368:                          ; preds = %vector.memcheck166, %.lr.ph.i91.preheader, %middle.block195
  %.01.i92.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph.i91.preheader ], [ %n.vec187, %middle.block195 ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader368, %.lr.ph.i91
  %.01.i92 = phi i64 [ %i.fg, %.lr.ph.i91 ], [ %.01.i92.ph, %.lr.ph.i91.preheader368 ] ; 7 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.01.i92
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.01.i92
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.01.i92
  %i.et = load i64, ptr %i.es, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.01.i92
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !17 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.01.i92
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !17 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.01.i92
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !17 ; 2 uses
  %i.fa = xor i64 %i.ez, %i.et                    ; 2 uses
  %i.fb = xor i64 %i.ex, %i.ev
  %i.fc = and i64 %i.fa, %i.fb
  store i64 %i.fc, ptr %i.eq, align 8, !tbaa !17
  %i.fd = xor i64 %i.ez, %i.ev
  %i.fe = xor i64 %i.fa, %i.ex
  %i.ff = or i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %i.er, align 8, !tbaa !17
  %i.fg = add nuw nsw i64 %.01.i92, 1             ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %i.fg, %i.aw
  br i1 %exitcond.not.i93, label %poly3_span_add.exit94, label %.lr.ph.i91, !llvm.loop !30

poly3_span_add.exit94:                            ; preds = %.lr.ph.i91, %middle.block195, %bb.c
  %.not = icmp eq i64 %i.ax, %i.aw
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %poly3_span_add.exit94
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !17
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %i.aw
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !17
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.aw
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %i.aw
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !17
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.aw
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !17
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %4
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.aw
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %4
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %poly3_span_add.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ft = load ptr, ptr %1, align 8, !tbaa !14
  %i.fu = shl i64 %i.ax, 1                        ; 9 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu
  store ptr %i.fv, ptr %9, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fu
  store ptr %i.fz, ptr %i.fw, align 8, !tbaa !15
  %i.ga = getelementptr [8 x i8], ptr %i.bn, i64 %i.aw ; 5 uses
  %i.gb = getelementptr [8 x i8], ptr %i.bs, i64 %i.aw ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.gc = and i64 %4, -2                          ; 5 uses
  %i.gd = getelementptr [8 x i8], ptr %i.bn, i64 %i.gc ; 5 uses
  store ptr %i.gd, ptr %10, align 8, !tbaa !14
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gf = getelementptr [8 x i8], ptr %i.bs, i64 %i.gc ; 5 uses
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !15
  call fastcc void @poly3_mul_aux(ptr noundef %1, ptr noundef %9, ptr noundef %7, ptr noundef %8, i64 noundef %i.ax)
  call fastcc void @poly3_mul_aux(ptr noundef %10, ptr noundef %9, ptr noundef %5, ptr noundef %6, i64 noundef %i.ax)
  call fastcc void @poly3_mul_aux(ptr noundef %0, ptr noundef %9, ptr noundef %2, ptr noundef %3, i64 noundef %i.aw)
  %.not.i95 = icmp eq i64 %i.gc, 0
  br i1 %.not.i95, label %poly3_span_sub.exit, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.e
  %i.gg = load ptr, ptr %1, align 8, !tbaa !14    ; 6 uses
  %i.gh = load ptr, ptr %i.fx, align 8, !tbaa !15 ; 6 uses
  %i.gi = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.gj = load ptr, ptr %i.br, align 8, !tbaa !15 ; 5 uses
  %min.iters.check219 = icmp ult i64 %4, 16
  br i1 %min.iters.check219, label %scalar.ph218.preheader, label %vector.memcheck220

scalar.ph218.preheader:                           ; preds = %vector.memcheck220, %.lr.ph.i96
  br label %scalar.ph218

vector.memcheck220:                               ; preds = %.lr.ph.i96
  %i.gk = shl i64 %i.aw, 4                        ; 4 uses
  %i.gl = getelementptr i8, ptr %i.gg, i64 %i.gk  ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gh, i64 %i.gk  ; 3 uses
  %i.gn = getelementptr i8, ptr %i.gi, i64 %i.gk  ; 2 uses
  %i.go = getelementptr i8, ptr %i.gj, i64 %i.gk  ; 2 uses
  %bound0 = icmp ult ptr %i.gg, %i.gm
  %bound1 = icmp ult ptr %i.gh, %i.gl
  %found.conflict = and i1 %bound0, %bound1
  %bound0221 = icmp ult ptr %i.gg, %i.gn
  %bound1222 = icmp ult ptr %i.gi, %i.gl
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %found.conflict, %found.conflict223
  %bound0225 = icmp ult ptr %i.gg, %i.go
  %bound1226 = icmp ult ptr %i.gj, %i.gl
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.gh, %i.gn
  %bound1230 = icmp ult ptr %i.gi, %i.gm
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.gh, %i.go
  %bound1234 = icmp ult ptr %i.gj, %i.gm
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  br i1 %conflict.rdx236, label %scalar.ph218.preheader, label %vector.body238

vector.body238:                                   ; preds = %vector.memcheck220, %vector.body238
  %index239 = phi i64 [ %index.next244, %vector.body238 ], [ 0, %vector.memcheck220 ] ; 5 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index239 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index239 ; 2 uses
  %wide.load240 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !17, !alias.scope !55, !noalias !56 ; 2 uses
  %wide.load241 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !17, !alias.scope !57, !noalias !58
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %index239
  %wide.load242 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !17, !alias.scope !59 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %index239
  %wide.load243 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !17, !alias.scope !60 ; 2 uses
  %i.gt = xor <2 x i64> %wide.load243, %wide.load241 ; 2 uses
  %i.gu = xor <2 x i64> %wide.load243, %wide.load240
  %i.gv = xor <2 x i64> %i.gt, %wide.load242
  %i.gw = and <2 x i64> %i.gv, %i.gu
  store <2 x i64> %i.gw, ptr %i.gp, align 8, !tbaa !17, !alias.scope !55, !noalias !56
  %i.gx = xor <2 x i64> %wide.load242, %wide.load240
  %i.gy = or <2 x i64> %i.gt, %i.gx
  store <2 x i64> %i.gy, ptr %i.gq, align 8, !tbaa !17, !alias.scope !57, !noalias !58
  %index.next244 = add nuw i64 %index239, 2       ; 2 uses
  %i.gz = icmp eq i64 %index.next244, %i.gc
  br i1 %i.gz, label %poly3_span_sub.exit, label %vector.body238, !llvm.loop !36

scalar.ph218:                                     ; preds = %scalar.ph218.preheader, %scalar.ph218
  %.014.i = phi i64 [ %i.ho, %scalar.ph218 ], [ 0, %scalar.ph218.preheader ] ; 5 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.014.i ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.014.i ; 2 uses
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !17 ; 2 uses
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !17
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.014.i
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !17 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.014.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !17 ; 2 uses
  %i.hi = xor i64 %i.hh, %i.hd                    ; 2 uses
  %i.hj = xor i64 %i.hh, %i.hc
  %i.hk = xor i64 %i.hi, %i.hf
  %i.hl = and i64 %i.hk, %i.hj
  store i64 %i.hl, ptr %i.ha, align 8, !tbaa !17
  %i.hm = xor i64 %i.hf, %i.hc
  %i.hn = or i64 %i.hi, %i.hm
  store i64 %i.hn, ptr %i.hb, align 8, !tbaa !17
  %i.ho = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %i.ho, %i.gc
  br i1 %exitcond.not.i97, label %poly3_span_sub.exit, label %scalar.ph218, !llvm.loop !37

poly3_span_sub.exit:                              ; preds = %vector.body238, %scalar.ph218, %bb.e
end_hunk_0
