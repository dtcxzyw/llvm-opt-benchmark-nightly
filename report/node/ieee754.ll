Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ieee754?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v84base7ieee7543cosEd:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cd = load double, ptr %i.cc, align 8         ; 2 uses
  %i.ce = fmul double %i.am, %i.am                ; 6 uses
  %i.cf = fmul double %i.am, %i.ce                ; 2 uses
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.ce, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cg, double f0x3EC71DE357B1FE7D)
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ch, double f0xBF2A01A019C161D5)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ci, double f0x3F8111111110F8A6)
  %i.ck = fneg double %i.cj
  %i.cl = fmul double %i.cf, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cd, double 5.000000e-01, double %i.cl)
  %i.cn = fneg double %i.cd
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cm, double %i.cn)
  %i.cp = fneg double %i.cf
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double f0xBFC5555555555549, double %i.co)
  %i.cr = fsub double %i.am, %i.cq
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit15

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit15: ; preds = %bb.m, %bb.n
  %.0.i14 = phi double [ %i.cr, %bb.n ], [ %i.am, %bb.m ]
  %i.cs = fneg double %.0.i14
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit12

bb.o:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = load double, ptr %i.ct, align 8         ; 2 uses
  %i.cv = bitcast double %i.am to i64
  %i.cw = lshr i64 %i.cv, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 2147483647               ; 4 uses
  %i.cz = icmp samesign ult i32 %i.cy, 1044381696
  %i.da = fptosi double %i.am to i32
  %i.db = icmp eq i32 %i.da, 0
  %or.cond45 = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond45, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = fmul double %i.am, %i.am                ; 10 uses
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double f0xBDA8FAE9BE8838D4, double f0x3E21EE9EBDB4B1C4)
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dd, double f0xBE927E4F809C52AD)
  %i.df = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.de, double f0x3EFA01A019CB1590)
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.df, double f0xBF56C16C16C15177)
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dg, double f0x3FA555555555554C)
  %i.di = fmul double %i.dc, %i.dh                ; 2 uses
  %i.dj = icmp samesign ult i32 %i.cy, 1070805811
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dk = fneg double %i.cu
  %i.dl = fmul double %i.am, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.di, double %i.dl)
  %i.dn = fneg double %i.dm
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dc, double 5.000000e-01, double %i.dn)
  %i.dp = fsub double 1.000000e+00, %i.do
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit

bb.r:                                             ; preds = %bb.p
  %i.dq = icmp samesign ugt i32 %i.cy, 1072234496
  %i.dr = add nsw i32 %i.cy, -2097152
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 32
  %i.du = bitcast i64 %i.dt to double
  %.024.i = select i1 %i.dq, double 2.812500e-01, double %i.du ; 2 uses
  %i.dv = fneg double %.024.i
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dc, double 5.000000e-01, double %i.dv)
  %i.dx = fsub double 1.000000e+00, %.024.i
  %i.dy = fneg double %i.cu
  %i.dz = fmul double %i.am, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.di, double %i.dz)
  %i.eb = fsub double %i.ea, %i.dw
  %i.ec = fadd double %i.dx, %i.eb
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.0.i = phi double [ %i.ec, %bb.r ], [ %i.dp, %bb.q ], [ 1.000000e+00, %bb.o ]
  %i.ed = fneg double %.0.i
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit12

default.unreachable51:                            ; preds = %bb.h
  unreachable

bb.s:                                             ; preds = %bb.h
  %i.ee = bitcast double %i.am to i64
  %i.ef = and i64 %i.ee, 9205357638345293824
  %i.eg = icmp samesign ult i64 %i.ef, 4485585228861014016
  %i.eh = fptosi double %i.am to i32
  %i.ei = icmp eq i32 %i.eh, 0
  %or.cond47 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond47, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit12, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = load double, ptr %i.ej, align 8         ; 2 uses
  %i.el = fmul double %i.am, %i.am                ; 6 uses
  %i.em = fmul double %i.am, %i.el                ; 2 uses
  %i.en = tail call double @llvm.fmuladd.f64(double %i.el, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.el, double %i.en, double f0x3EC71DE357B1FE7D)
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.el, double %i.eo, double f0xBF2A01A019C161D5)
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.el, double %i.ep, double f0x3F8111111110F8A6)
  %i.er = fneg double %i.eq
  %i.es = fmul double %i.em, %i.er
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ek, double 5.000000e-01, double %i.es)
  %i.eu = fneg double %i.ek
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.el, double %i.et, double %i.eu)
  %i.ew = fneg double %i.em
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ew, double f0xBFC5555555555549, double %i.ev)
  %i.ey = fsub double %i.am, %i.ex
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit12

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit12: ; preds = %bb.s, %bb.i, %bb.b, %bb.t, %bb.l, %bb.k, %bb.e, %bb.d, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit15, %bb.g
  %.0 = phi double [ 1.000000e+00, %bb.i ], [ %i.aj, %bb.g ], [ 1.000000e+00, %bb.b ], [ %i.cs, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit15 ], [ %i.ed, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit ], [ %i.ah, %bb.e ], [ %i.v, %bb.d ], [ %i.bw, %bb.l ], [ %i.bj, %bb.k ], [ %i.ey, %bb.t ], [ %i.am, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define internal fastcc noundef i32 @_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd(double noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [20 x i32], align 16              ; 23 uses
  %i.b = alloca [20 x double], align 16           ; 28 uses
  %i.c = alloca [20 x double], align 16           ; 26 uses
  %i.d = alloca [20 x double], align 16           ; 22 uses
  %i.e = alloca [3 x double], align 16            ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.f = bitcast double %0 to i64                 ; 4 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 2 uses
  %i.i = and i32 %i.h, 2147483647                 ; 9 uses
  %i.j = icmp samesign ult i32 %i.i, 1072243196
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %0, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.k, align 8
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i32 %i.i, 1073928572
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.h, 0
  %.not113 = icmp eq i32 %i.i, 1073291771         ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = fadd double %0, f0xBFF921FB54400000      ; 3 uses
  br i1 %.not113, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fadd double %i.n, f0xBDD0B4611A626331    ; 2 uses
  store double %i.o, ptr %1, align 8
  %i.p = fsub double %i.n, %i.o
  %i.q = fadd double %i.p, f0xBDD0B4611A626331
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.q, ptr %i.r, align 8
  br label %bb.ba

bb.g:                                             ; preds = %bb.e
  %i.s = fadd double %i.n, f0xBDD0B4611A600000    ; 2 uses
  %i.t = fadd double %i.s, f0xBBA3198A2E037073    ; 2 uses
  store double %i.t, ptr %1, align 8
  %i.u = fsub double %i.s, %i.t
  %i.v = fadd double %i.u, f0xBBA3198A2E037073
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.v, ptr %i.w, align 8
  br label %bb.ba

bb.h:                                             ; preds = %bb.d
  %i.x = fadd double %0, f0x3FF921FB54400000      ; 3 uses
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fadd double %i.x, f0x3DD0B4611A626331    ; 2 uses
  store double %i.y, ptr %1, align 8
  %i.z = fsub double %i.x, %i.y
  %i.aa = fadd double %i.z, f0x3DD0B4611A626331
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aa, ptr %i.ab, align 8
  br label %bb.ba

bb.j:                                             ; preds = %bb.h
  %i.ac = fadd double %i.x, f0x3DD0B4611A600000   ; 2 uses
  %i.ad = fadd double %i.ac, f0x3BA3198A2E037073  ; 2 uses
  store double %i.ad, ptr %1, align 8
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fadd double %i.ae, f0x3BA3198A2E037073
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.af, ptr %i.ag, align 8
  br label %bb.ba

bb.k:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i32 %i.i, 1094263292
  br i1 %i.ah, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double f0x3FE45F306DC9C883, double 5.000000e-01)
  %i.ak = fptosi double %i.aj to i32              ; 5 uses
  %2 = sitofp i32 %i.ak to double                 ; 6 uses
  %i.al = fneg double %2
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FF921FB54400000, double %i.ai) ; 6 uses
  %i.an = fmul nnan double %2, f0x3DD0B4611A626331 ; 4 uses
  %3 = icmp slt i32 %i.ak, 32
  br i1 %3, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %4 = sext i32 %i.ak to i64
  %i.ao = getelementptr [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE8npio2_hw, i64 %4
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4
  %.not = icmp eq i32 %i.i, %i.aq
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = fsub double %i.am, %i.an
  br label %.sink.split

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.as = lshr i32 %i.i, 20                       ; 2 uses
  %i.at = fsub double %i.am, %i.an                ; 3 uses
  store double %i.at, ptr %1, align 8
  %.cast = bitcast double %i.at to i64
  %sum.shift = lshr i64 %.cast, 52
  %i.au = trunc nuw nsw i64 %sum.shift to i32
  %i.av = and i32 %i.au, 2047
  %i.aw = sub nsw i32 %i.as, %i.av
  %i.ax = icmp sgt i32 %i.aw, 16
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = fmul nnan double %2, f0x3DD0B4611A600000 ; 2 uses
  %i.az = fsub double %i.am, %i.ay                ; 5 uses
  %i.ba = fsub double %i.am, %i.az
  %i.bb = fsub double %i.ba, %i.ay
  %i.bc = fneg double %i.bb
  %i.bd = tail call double @llvm.fmuladd.f64(double %2, double f0x3BA3198A2E037073, double %i.bc) ; 2 uses
  %i.be = fsub double %i.az, %i.bd                ; 3 uses
  store double %i.be, ptr %1, align 8
  %.cast128 = bitcast double %i.be to i64
  %sum.shift111 = lshr i64 %.cast128, 52
  %i.bf = trunc nuw nsw i64 %sum.shift111 to i32
  %i.bg = and i32 %i.bf, 2047
  %i.bh = sub nsw i32 %i.as, %i.bg
  %i.bi = icmp sgt i32 %i.bh, 49
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = fmul nnan double %2, f0x3BA3198A2E000000 ; 2 uses
  %i.bk = fsub double %i.az, %i.bj                ; 3 uses
  %i.bl = fsub double %i.az, %i.bk
  %i.bm = fsub double %i.bl, %i.bj
  %i.bn = fneg double %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %2, double f0x397B839A252049C1, double %i.bn) ; 2 uses
  %i.bp = fsub double %i.bk, %i.bo
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.q
  %.sink = phi double [ %i.bp, %bb.q ], [ %i.ar, %bb.n ] ; 2 uses
  %.1106.ph = phi double [ %i.bk, %bb.q ], [ %i.am, %bb.n ]
  %.1.ph = phi double [ %i.bo, %bb.q ], [ %i.an, %bb.n ]
  store double %.sink, ptr %1, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.o, %bb.p
  %i.bq = phi double [ %i.be, %bb.p ], [ %i.at, %bb.o ], [ %.sink, %.sink.split ] ; 2 uses
  %.1106 = phi double [ %i.az, %bb.p ], [ %i.am, %bb.o ], [ %.1106.ph, %.sink.split ]
  %.1 = phi double [ %i.bd, %bb.p ], [ %i.an, %bb.o ], [ %.1.ph, %.sink.split ]
  %i.br = fsub double %.1106, %i.bq
  %i.bs = fsub double %i.br, %.1                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.bs, ptr %i.bt, align 8
  %i.bu = icmp slt i64 %i.f, 0
  br i1 %i.bu, label %bb.s, label %bb.ba

bb.s:                                             ; preds = %bb.r
  %i.bv = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bs, i64 1
  %i.bx = fneg <2 x double> %i.bw
  store <2 x double> %i.bx, ptr %1, align 8
  %i.by = sub nsw i32 0, %i.ak
  br label %bb.ba

bb.t:                                             ; preds = %bb.k
  %i.bz = icmp samesign ugt i32 %i.i, 2146435071
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = fsub double %0, %0                      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ca, ptr %i.cb, align 8
  store double %i.ca, ptr %1, align 8
  br label %bb.ba

bb.v:                                             ; preds = %bb.t
  %i.cc = and i64 %i.f, 4294967295
  %i.cd = lshr i32 %i.i, 20
  %i.ce = add nsw i32 %i.cd, -1046                ; 3 uses
  %i.cf = shl nsw i32 %i.ce, 20
  %i.cg = sub nsw i32 %i.i, %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 32
  %i.cj = or disjoint i64 %i.ci, %i.cc
  %i.ck = bitcast i64 %i.cj to double             ; 2 uses
  %i.cl = fptosi double %i.ck to i32
  %5 = sitofp i32 %i.cl to double                 ; 2 uses
  store double %5, ptr %i.e, align 16
  %i.cm = fsub double %i.ck, %5
  %i.cn = fmul double %i.cm, f0x4170000000000000  ; 2 uses
  %i.co = fptosi double %i.cn to i32
  %i.cp = sitofp i32 %i.co to double              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.cp, ptr %i.cq, align 8
  %i.cr = fsub double %i.cn, %i.cp
  %i.cs = fmul double %i.cr, f0x4170000000000000
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store double %i.cs, ptr %i.ct, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvar = phi i35 [ %indvar.next, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 3, %bb.v ] ; 35 uses
  %i.cu = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load double, ptr %i.cv, align 8
  %i.cx = fcmp oeq double %i.cw, 0.000000e+00
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvar.next = add i35 %indvar, 1
  br i1 %i.cx, label %bb.w, label %bb.x, !llvm.loop !5

bb.x:                                             ; preds = %bb.w
  %i.cy = trunc nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.cz = add nsw i32 %i.cy, -1                   ; 4 uses
  %i.da = trunc nsw i32 %i.ce to i16
  %.lhs.trunc.i = add nsw i16 %i.da, -3
  %i.db = sdiv i16 %.lhs.trunc.i, 24              ; 2 uses
  %.sext.i = zext nneg i16 %i.db to i32           ; 2 uses
  %.neg.i = mul nsw i32 %.sext.i, -24
  %.neg266.i = add nsw i32 %.neg.i, %i.ce         ; 6 uses
  %i.dc = add nsw i32 %.neg266.i, -24             ; 6 uses
  %.not27.i = icmp slt i64 %indvars.iv, -3
  br i1 %.not27.i, label %.preheader16.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.dd = sub nsw i32 %.sext.i, %i.cz             ; 2 uses
  %i.de = add i64 %indvars.iv, 4
  %wide.trip.count.i = and i64 %i.de, 4294967295  ; 2 uses
  %xtraiter = and i64 %indvars.iv, 1              ; 2 uses
  %i.df = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.df, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = sub nsw i64 %wide.trip.count.i, %xtraiter
  br label %.lr.ph.i

.preheader17.i.unr-lcssa:                         ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader17.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader17.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader17.i.unr-lcssa ]
  %.023729.i.epil.init = phi i32 [ %i.dd, %.lr.ph.preheader.i ], [ %i.iv, %.preheader17.i.unr-lcssa ] ; 2 uses
  %lcmp.mod270 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.dg = icmp slt i32 %.023729.i.epil.init, 0
  br i1 %i.dg, label %.preheader17.i.epilog-lcssa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dh = zext nneg i32 %.023729.i.epil.init to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = sitofp i32 %i.dj to double
  br label %.preheader17.i.epilog-lcssa

.preheader17.i.epilog-lcssa:                      ; preds = %bb.y, %.lr.ph.i.epil.preheader
  %i.dl = phi double [ %i.dk, %bb.y ], [ 0.000000e+00, %.lr.ph.i.epil.preheader ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store double %i.dl, ptr %i.dm, align 8
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %.preheader17.i.unr-lcssa, %.preheader17.i.epilog-lcssa
  %i.dn = add nuw i64 %indvars.iv, 3              ; 3 uses
  %.not273.not30.i = icmp sgt i64 %indvars.iv, 0
  br i1 %.not273.not30.i, label %.preheader16.us.preheader.i, label %.preheader16.preheader.i

.preheader16.preheader.i:                         ; preds = %.preheader17.i, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %.pre177 = and i64 %indvars.iv, 4294967295
  br label %.preheader15.i

.preheader16.us.preheader.i:                      ; preds = %.preheader17.i
  %wide.trip.count102.i = and i64 %indvars.iv, 4294967295 ; 2 uses
  %i.do = add nsw i64 %wide.trip.count102.i, -1   ; 5 uses
  %xtraiter271 = and i64 %indvars.iv, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.epil.preheader, label %.preheader16.us.preheader.i.new

.preheader16.us.preheader.i.new:                  ; preds = %.preheader16.us.preheader.i
  %unroll_iter275 = and i64 %indvars.iv, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader16.us.preheader.i.new
  %indvars.iv99.i = phi i64 [ 0, %.preheader16.us.preheader.i.new ], [ %indvars.iv.next100.i.1, %bb.z ] ; 4 uses
  %.032.us.i = phi double [ 0.000000e+00, %.preheader16.us.preheader.i.new ], [ %i.ef, %bb.z ]
  %niter276 = phi i64 [ 0, %.preheader16.us.preheader.i.new ], [ %niter276.next.1, %bb.z ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.i
  %i.dr = load double, ptr %i.dq, align 16
  %i.ds = trunc nuw nsw i64 %indvars.iv99.i to i32
  %i.dt = sub nuw i32 %i.cz, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dw, double %.032.us.i)
  %indvars.iv.next100.i = or disjoint i64 %indvars.iv99.i, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.i
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = trunc nuw nsw i64 %indvars.iv.next100.i to i32
  %i.eb = sub nuw i32 %i.cz, %i.ea
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ee, double %i.dx) ; 3 uses
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.z, !llvm.loop !6

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.z
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader16.us.preheader.i
  %indvars.iv99.i.epil.init = phi i64 [ 0, %.preheader16.us.preheader.i ], [ %indvars.iv.next100.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.032.us.i.epil.init = phi double [ 0.000000e+00, %.preheader16.us.preheader.i ], [ %i.ef, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod274 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.i.epil.init
  %i.eh = load double, ptr %i.eg, align 8
  %i.ei = trunc nuw nsw i64 %indvars.iv99.i.epil.init to i32
  %i.ej = sub nuw i32 %i.cz, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8
  %i.en = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.em, double %.032.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa269 = phi double [ %i.ef, %._crit_edge.us.i.unr-lcssa ], [ %i.en, %.epil.preheader ]
  store double %.lcssa269, ptr %i.d, align 16
  %xtraiter278 = and i64 %indvars.iv, 1
  %i.eo = icmp eq i64 %i.do, 0
  br i1 %i.eo, label %.epil.preheader277, label %._crit_edge.us.i.new

._crit_edge.us.i.new:                             ; preds = %._crit_edge.us.i
  %unroll_iter282 = and i64 %indvars.iv, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %._crit_edge.us.i.new
  %indvars.iv99.1.i = phi i64 [ 0, %._crit_edge.us.i.new ], [ %indvars.iv.next100.1.i.1, %bb.aa ] ; 4 uses
  %.032.us.1.i = phi double [ 0.000000e+00, %._crit_edge.us.i.new ], [ %i.fc, %bb.aa ]
  %niter283 = phi i64 [ 0, %._crit_edge.us.i.new ], [ %niter283.next.1, %bb.aa ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.1.i
  %i.eq = load double, ptr %i.ep, align 16
  %i.er = sub nsw i64 %indvars.iv, %indvars.iv99.1.i
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.eu, double %.032.us.1.i)
  %indvars.iv.next100.1.i = or disjoint i64 %indvars.iv99.1.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.1.i
  %i.ex = load double, ptr %i.ew, align 8
  %i.ey = sub nsw i64 %indvars.iv, %indvars.iv.next100.1.i
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.fb, double %i.ev) ; 3 uses
  %indvars.iv.next100.1.i.1 = add nuw nsw i64 %indvars.iv99.1.i, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %._crit_edge.us.1.i.unr-lcssa, label %bb.aa, !llvm.loop !6

._crit_edge.us.1.i.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %._crit_edge.us.1.i, label %.epil.preheader277

.epil.preheader277:                               ; preds = %._crit_edge.us.1.i.unr-lcssa, %._crit_edge.us.i
  %indvars.iv99.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %indvars.iv.next100.1.i.1, %._crit_edge.us.1.i.unr-lcssa ] ; 2 uses
  %.032.us.1.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.i ], [ %i.fc, %._crit_edge.us.1.i.unr-lcssa ]
  %lcmp.mod281 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.1.i.epil.init
  %i.fe = load double, ptr %i.fd, align 8
  %i.ff = sub nsw i64 %indvars.iv, %indvars.iv99.1.i.epil.init
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fi, double %.032.us.1.i.epil.init)
  br label %._crit_edge.us.1.i

._crit_edge.us.1.i:                               ; preds = %._crit_edge.us.1.i.unr-lcssa, %.epil.preheader277
  %.lcssa268 = phi double [ %i.fc, %._crit_edge.us.1.i.unr-lcssa ], [ %i.fj, %.epil.preheader277 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_0
