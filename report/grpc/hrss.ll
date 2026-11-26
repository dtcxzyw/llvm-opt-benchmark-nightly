Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/hrss?download=true
inline.NumInlined: 307
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@HRSS_poly3_mul:bb.a
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !20
  %i.jh = xor i64 %i.jg, %i.hc                    ; 2 uses
  %i.ji = xor i64 %i.jf, %i.hc
  %i.jj = xor i64 %i.jh, %i.gz
  %i.jk = and i64 %i.jj, %i.ji
  store i64 %i.jk, ptr %i.dv, align 8, !tbaa !20
  %i.jl = xor i64 %i.jf, %i.gz
  %i.jm = or i64 %i.jh, %i.jl
  store i64 %i.jm, ptr %i.je, align 8, !tbaa !20
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jo = load i64, ptr %i.en, align 8, !tbaa !20 ; 2 uses
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !20
  %i.jq = xor i64 %i.jp, %i.hc                    ; 2 uses
  %i.jr = xor i64 %i.jo, %i.hc
  %i.js = xor i64 %i.jq, %i.gz
  %i.jt = and i64 %i.js, %i.jr
  store i64 %i.jt, ptr %i.en, align 8, !tbaa !20
  %i.ju = xor i64 %i.jo, %i.gz
  %i.jv = or i64 %i.jq, %i.ju
  store i64 %i.jv, ptr %i.jn, align 8, !tbaa !20
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jx = load i64, ptr %i.ff, align 8, !tbaa !20 ; 2 uses
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !20
  %i.jz = xor i64 %i.jy, %i.hc                    ; 2 uses
  %i.ka = xor i64 %i.jx, %i.hc
  %i.kb = xor i64 %i.jz, %i.gz
  %i.kc = and i64 %i.kb, %i.ka
  store i64 %i.kc, ptr %i.ff, align 8, !tbaa !20
  %i.kd = xor i64 %i.jx, %i.gz
  %i.ke = or i64 %i.jz, %i.kd
  store i64 %i.ke, ptr %i.jw, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kg = load i64, ptr %i.fx, align 8, !tbaa !20 ; 2 uses
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !20
  %i.ki = xor i64 %i.kh, %i.hc                    ; 2 uses
  %i.kj = xor i64 %i.kg, %i.hc
  %i.kk = xor i64 %i.ki, %i.gz
  %i.kl = and i64 %i.kk, %i.kj
  store i64 %i.kl, ptr %i.fx, align 8, !tbaa !20
  %i.km = xor i64 %i.kg, %i.gz
  %i.kn = or i64 %i.ki, %i.km
  store i64 %i.kn, ptr %i.kf, align 8, !tbaa !20
  %i.ko = xor i64 %i.hc, %i.gx                    ; 2 uses
  %i.kp = xor i64 %i.hc, %i.gu
  %i.kq = xor i64 %i.ko, %i.gz
  %i.kr = xor i64 %i.gz, %i.gu
  %i.ks = or i64 %i.ko, %i.kr
  %i.kt = and i64 %i.kp, 2305843009213693951
  %i.ku = and i64 %i.kt, %i.kq
  store i64 %i.ku, ptr %i.gp, align 8, !tbaa !20
  %i.kv = and i64 %i.ks, 2305843009213693951
  store i64 %i.kv, ptr %i.ha, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL13poly3_mul_auxPK10poly3_spanS1_S1_S1_m(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 {
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
  %i.c = load ptr, ptr %3, align 8, !tbaa !17
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !17
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = and i64 %i.d, 1
  %i.m = sub nsw i64 0, %i.l
  %i.n = and i64 %i.g, 1
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 0, i64 %i.k          ; 2 uses
  %i.q = xor i64 %i.i, %i.m
  %i.r = and i64 %i.p, %i.q
  br label %bb.b

.loopexit:                                        ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  store i64 %i.al, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ar, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.au, ptr %i.w, align 8, !tbaa !20
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
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !28

bb.c:                                             ; preds = %bb.a
  %i.aw = lshr i64 %4, 1                          ; 29 uses
  %i.ax = sub i64 %4, %i.aw                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ay = load ptr, ptr %2, align 8, !tbaa !17    ; 4 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw ; 4 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.aw ; 4 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bf = load ptr, ptr %3, align 8, !tbaa !17    ; 4 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.aw ; 4 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18 ; 4 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.aw ; 4 uses
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.bn = load ptr, ptr %0, align 8, !tbaa !17    ; 7 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ax ; 3 uses
  store ptr %i.bp, ptr %8, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18 ; 7 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ax ; 3 uses
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !18
  %.val88 = load ptr, ptr %7, align 8             ; 4 uses
  %.val88164 = ptrtoaddr ptr %.val88 to i64       ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val89 = load ptr, ptr %i.bv, align 8          ; 4 uses
  %.val89163 = ptrtoaddr ptr %.val89 to i64       ; 3 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit94, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i64 %4, 52
  br i1 %min.iters.check, label %.lr.ph.i.preheader404, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.bw = sub i64 %.val88164, %.val89163
  %diff.check = icmp ugt i64 %i.bw, -16
  %11 = shl i64 %i.aw, 3                          ; 4 uses
  %i.bx = sub i64 %.val88164, %i.az               ; 2 uses
  %12 = sub i64 %11, %i.bx
  %diff.check165 = icmp ugt i64 %12, -16
  %conflict.rdx = or i1 %diff.check, %diff.check165
  %13 = add i64 %i.bx, -1
  %diff.check166 = icmp ult i64 %13, 15
  %conflict.rdx167 = or i1 %conflict.rdx, %diff.check166
  %i.by = sub i64 %.val88164, %i.bd               ; 2 uses
  %14 = sub i64 %11, %i.by
  %diff.check168 = icmp ugt i64 %14, -16
  %conflict.rdx169 = or i1 %conflict.rdx167, %diff.check168
  %15 = add i64 %i.by, -1
  %diff.check170 = icmp ult i64 %15, 15
  %conflict.rdx171 = or i1 %conflict.rdx169, %diff.check170
  %i.bz = sub i64 %.val89163, %i.az               ; 2 uses
  %16 = sub i64 %11, %i.bz
  %diff.check172 = icmp ugt i64 %16, -16
  %conflict.rdx173 = or i1 %conflict.rdx171, %diff.check172
  %17 = add i64 %i.bz, -1
  %diff.check174 = icmp ult i64 %17, 15
  %conflict.rdx175 = or i1 %conflict.rdx173, %diff.check174
  %i.ca = sub i64 %.val89163, %i.bd               ; 2 uses
  %18 = sub i64 %11, %i.ca
  %diff.check176 = icmp ugt i64 %18, -16
  %conflict.rdx177 = or i1 %conflict.rdx175, %diff.check176
  %19 = add i64 %i.ca, -1
  %diff.check178 = icmp ult i64 %19, 15
  %conflict.rdx179 = or i1 %conflict.rdx177, %diff.check178
  br i1 %conflict.rdx179, label %.lr.ph.i.preheader404, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 9223372036854775806     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %index
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %index
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %wide.load180 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !20 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index
  %wide.load181 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load182 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !20 ; 2 uses
  %i.ch = xor <2 x i64> %wide.load182, %wide.load ; 2 uses
  %i.ci = xor <2 x i64> %wide.load181, %wide.load180
  %i.cj = and <2 x i64> %i.ch, %i.ci
  store <2 x i64> %i.cj, ptr %i.cb, align 8, !tbaa !20
  %i.ck = xor <2 x i64> %wide.load182, %wide.load180
  %i.cl = xor <2 x i64> %i.ch, %wide.load181
  %i.cm = or <2 x i64> %i.cl, %i.ck
  store <2 x i64> %i.cm, ptr %i.cc, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.lr.ph.i91.preheader, label %.lr.ph.i.preheader404

.lr.ph.i.preheader404:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader404, %.lr.ph.i
  %.01.i = phi i64 [ %i.de, %.lr.ph.i ], [ %.01.i.ph, %.lr.ph.i.preheader404 ] ; 7 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %.01.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %.01.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.01.i
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01.i
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !20 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !20 ; 2 uses
  %i.cy = xor i64 %i.cx, %i.cr                    ; 2 uses
  %i.cz = xor i64 %i.cv, %i.ct
  %i.da = and i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.co, align 8, !tbaa !20
  %i.db = xor i64 %i.cx, %i.ct
  %i.dc = xor i64 %i.cy, %i.cv
  %i.dd = or i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cp, align 8, !tbaa !20
  %i.de = add nuw nsw i64 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.de, %i.aw
  br i1 %exitcond.not.i, label %.lr.ph.i91.preheader, label %.lr.ph.i, !llvm.loop !30

.lr.ph.i91.preheader:                             ; preds = %.lr.ph.i, %middle.block
  %min.iters.check202 = icmp ult i64 %4, 72
  br i1 %min.iters.check202, label %.lr.ph.i91.preheader403, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i91.preheader
  %i.df = sub i64 %i.bo, %i.bt
  %diff.check204 = icmp ugt i64 %i.df, -16
  %i.dg = shl i64 %4, 3                           ; 2 uses
  %i.dh = shl i64 %i.aw, 4                        ; 4 uses
  %i.di = add i64 %i.dg, %i.bo                    ; 2 uses
  %i.dj = sub i64 %i.di, %i.bg                    ; 2 uses
  %i.dk = sub i64 %i.dh, %i.dj
  %diff.check205 = icmp ugt i64 %i.dk, -16
  %conflict.rdx206 = or i1 %diff.check204, %diff.check205
  %i.dl = shl i64 %i.aw, 3                        ; 4 uses
  %i.dm = sub i64 %i.dl, %i.dj
  %diff.check207 = icmp ugt i64 %i.dm, -16
  %conflict.rdx208 = or i1 %conflict.rdx206, %diff.check207
  %i.dn = sub i64 %i.di, %i.bl                    ; 2 uses
  %i.do = sub i64 %i.dh, %i.dn
  %diff.check209 = icmp ugt i64 %i.do, -16
  %conflict.rdx210 = or i1 %conflict.rdx208, %diff.check209
  %i.dp = sub i64 %i.dl, %i.dn
  %diff.check211 = icmp ugt i64 %i.dp, -16
  %conflict.rdx212 = or i1 %conflict.rdx210, %diff.check211
  %i.dq = add i64 %i.dg, %i.bt                    ; 2 uses
  %i.dr = sub i64 %i.dq, %i.bg                    ; 2 uses
  %i.ds = sub i64 %i.dh, %i.dr
  %diff.check213 = icmp ugt i64 %i.ds, -16
  %conflict.rdx214 = or i1 %conflict.rdx212, %diff.check213
  %i.dt = sub i64 %i.dl, %i.dr
  %diff.check215 = icmp ugt i64 %i.dt, -16
  %conflict.rdx216 = or i1 %conflict.rdx214, %diff.check215
  %i.du = sub i64 %i.dq, %i.bl                    ; 2 uses
  %i.dv = sub i64 %i.dh, %i.du
  %diff.check217 = icmp ugt i64 %i.dv, -16
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  %i.dw = sub i64 %i.dl, %i.du
  %diff.check219 = icmp ugt i64 %i.dw, -16
  %conflict.rdx220 = or i1 %conflict.rdx218, %diff.check219
  br i1 %conflict.rdx220, label %.lr.ph.i91.preheader403, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck203
  %n.vec222 = and i64 %i.aw, 9223372036854775806  ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body223 ] ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index224
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index224
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index224
  %wide.load225 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !20
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index224
  %wide.load226 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !20 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index224
  %wide.load227 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !20 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index224
  %wide.load228 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !20 ; 2 uses
  %i.ed = xor <2 x i64> %wide.load228, %wide.load225 ; 2 uses
  %i.ee = xor <2 x i64> %wide.load227, %wide.load226
  %i.ef = and <2 x i64> %i.ed, %i.ee
  store <2 x i64> %i.ef, ptr %i.dx, align 8, !tbaa !20
  %i.eg = xor <2 x i64> %wide.load228, %wide.load226
  %i.eh = xor <2 x i64> %i.ed, %wide.load227
  %i.ei = or <2 x i64> %i.eh, %i.eg
  store <2 x i64> %i.ei, ptr %i.dy, align 8, !tbaa !20
  %index.next229 = add nuw i64 %index224, 2       ; 2 uses
  %i.ej = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.ej, label %middle.block230, label %vector.body223, !llvm.loop !31

middle.block230:                                  ; preds = %vector.body223
  %cmp.n231 = icmp eq i64 %i.aw, %n.vec222
  br i1 %cmp.n231, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit94, label %.lr.ph.i91.preheader403

.lr.ph.i91.preheader403:                          ; preds = %vector.memcheck203, %.lr.ph.i91.preheader, %middle.block230
  %.01.i92.ph = phi i64 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph.i91.preheader ], [ %n.vec222, %middle.block230 ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader403, %.lr.ph.i91
  %.01.i92 = phi i64 [ %i.fa, %.lr.ph.i91 ], [ %.01.i92.ph, %.lr.ph.i91.preheader403 ] ; 7 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.01.i92
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.01.i92
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.01.i92
  %i.en = load i64, ptr %i.em, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.01.i92
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !20 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.01.i92
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !20 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.01.i92
  %i.et = load i64, ptr %i.es, align 8, !tbaa !20 ; 2 uses
  %i.eu = xor i64 %i.et, %i.en                    ; 2 uses
  %i.ev = xor i64 %i.er, %i.ep
  %i.ew = and i64 %i.eu, %i.ev
  store i64 %i.ew, ptr %i.ek, align 8, !tbaa !20
  %i.ex = xor i64 %i.et, %i.ep
  %i.ey = xor i64 %i.eu, %i.er
  %i.ez = or i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.el, align 8, !tbaa !20
  %i.fa = add nuw nsw i64 %.01.i92, 1             ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %i.fa, %i.aw
  br i1 %exitcond.not.i93, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit94, label %.lr.ph.i91, !llvm.loop !32

_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit94:  ; preds = %.lr.ph.i91, %middle.block230, %bb.c
  %.not = icmp eq i64 %i.ax, %i.aw
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit94
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %i.aw
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !20
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.aw
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %i.aw
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.aw
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %4
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.aw
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %4
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.fn = load ptr, ptr %1, align 8, !tbaa !17
  %i.fo = shl i64 %i.ax, 1                        ; 9 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  store ptr %i.fp, ptr %9, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fo
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !18
  %i.fu = getelementptr [8 x i8], ptr %i.bn, i64 %i.aw ; 5 uses
  %i.fv = getelementptr [8 x i8], ptr %i.bs, i64 %i.aw ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.fw = and i64 %4, -2                          ; 5 uses
  %i.fx = getelementptr [8 x i8], ptr %i.bn, i64 %i.fw ; 5 uses
  store ptr %i.fx, ptr %10, align 8, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fz = getelementptr [8 x i8], ptr %i.bs, i64 %i.fw ; 5 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !18
  call fastcc void @_ZL13poly3_mul_auxPK10poly3_spanS1_S1_S1_m(ptr noundef %1, ptr noundef %9, ptr noundef %7, ptr noundef %8, i64 noundef %i.ax)
  call fastcc void @_ZL13poly3_mul_auxPK10poly3_spanS1_S1_S1_m(ptr noundef %10, ptr noundef %9, ptr noundef %5, ptr noundef %6, i64 noundef %i.ax)
  call fastcc void @_ZL13poly3_mul_auxPK10poly3_spanS1_S1_S1_m(ptr noundef %0, ptr noundef %9, ptr noundef %2, ptr noundef %3, i64 noundef %i.aw)
  %.not.i95 = icmp eq i64 %i.fw, 0
  br i1 %.not.i95, label %_ZL14poly3_span_subPK10poly3_spanS1_m.exit, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.e
  %i.ga = load ptr, ptr %1, align 8, !tbaa !17    ; 6 uses
  %i.gb = load ptr, ptr %i.fr, align 8, !tbaa !18 ; 6 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !17    ; 5 uses
  %i.gd = load ptr, ptr %i.br, align 8, !tbaa !18 ; 5 uses
  %min.iters.check254 = icmp ult i64 %4, 16
  br i1 %min.iters.check254, label %scalar.ph253.preheader, label %vector.memcheck255

scalar.ph253.preheader:                           ; preds = %vector.memcheck255, %.lr.ph.i96
  br label %scalar.ph253

vector.memcheck255:                               ; preds = %.lr.ph.i96
  %i.ge = shl i64 %i.aw, 4                        ; 4 uses
  %i.gf = getelementptr i8, ptr %i.ga, i64 %i.ge  ; 3 uses
  %i.gg = getelementptr i8, ptr %i.gb, i64 %i.ge  ; 3 uses
  %i.gh = getelementptr i8, ptr %i.gc, i64 %i.ge  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gd, i64 %i.ge  ; 2 uses
  %bound0 = icmp ult ptr %i.ga, %i.gg
  %bound1 = icmp ult ptr %i.gb, %i.gf
  %found.conflict = and i1 %bound0, %bound1
  %bound0256 = icmp ult ptr %i.ga, %i.gh
  %bound1257 = icmp ult ptr %i.gc, %i.gf
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict, %found.conflict258
  %bound0260 = icmp ult ptr %i.ga, %i.gi
  %bound1261 = icmp ult ptr %i.gd, %i.gf
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %i.gb, %i.gh
  %bound1265 = icmp ult ptr %i.gc, %i.gg
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %i.gb, %i.gi
  %bound1269 = icmp ult ptr %i.gd, %i.gg
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %scalar.ph253.preheader, label %vector.body273

vector.body273:                                   ; preds = %vector.memcheck255, %vector.body273
  %index274 = phi i64 [ %index.next279, %vector.body273 ], [ 0, %vector.memcheck255 ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index274 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index274 ; 2 uses
  %wide.load275 = load <2 x i64>, ptr %i.gj, align 8, !tbaa !20, !alias.scope !57, !noalias !58 ; 2 uses
  %wide.load276 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !20, !alias.scope !59, !noalias !60
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index274
  %wide.load277 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !20, !alias.scope !61 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %index274
  %wide.load278 = load <2 x i64>, ptr %i.gm, align 8, !tbaa !20, !alias.scope !62 ; 2 uses
  %i.gn = xor <2 x i64> %wide.load278, %wide.load276 ; 2 uses
  %i.go = xor <2 x i64> %wide.load278, %wide.load275
  %i.gp = xor <2 x i64> %i.gn, %wide.load277
  %i.gq = and <2 x i64> %i.gp, %i.go
  store <2 x i64> %i.gq, ptr %i.gj, align 8, !tbaa !20, !alias.scope !57, !noalias !58
  %i.gr = xor <2 x i64> %wide.load277, %wide.load275
  %i.gs = or <2 x i64> %i.gn, %i.gr
  store <2 x i64> %i.gs, ptr %i.gk, align 8, !tbaa !20, !alias.scope !59, !noalias !60
  %index.next279 = add nuw i64 %index274, 2       ; 2 uses
  %i.gt = icmp eq i64 %index.next279, %i.fw
  br i1 %i.gt, label %_ZL14poly3_span_subPK10poly3_spanS1_m.exit, label %vector.body273, !llvm.loop !38

scalar.ph253:                                     ; preds = %scalar.ph253.preheader, %scalar.ph253
  %.014.i = phi i64 [ %i.hi, %scalar.ph253 ], [ 0, %scalar.ph253.preheader ] ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.014.i ; 2 uses
end_hunk_0
