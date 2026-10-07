Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 142
begin_hunk_0_@_ZL8unfilterPhPKhjjj:bb.a
  %i.e = lshr i32 %2, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = zext i32 %4 to i64
  %i.h = mul nuw nsw i64 %i.g, %i.f               ; 34 uses
  %i.i = and i32 %2, 7
  %i.j = mul i32 %4, %i.i
  %i.k = add i32 %i.j, 7
  %i.l = lshr i32 %i.k, 3
  %i.m = zext nneg i32 %i.l to i64                ; 34 uses
  %i.n = add nuw nsw i64 %i.h, %i.m               ; 60 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 14 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %_ZL16unfilterScanlinePhPKhS1_mhm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.not409511.i = icmp eq i32 %i.c, 0             ; 5 uses
  %i.q = icmp ugt i32 %i.b, 31                    ; 2 uses
  %i.r = icmp eq i32 %i.c, 3                      ; 2 uses
  %i.s = icmp ne i32 %i.c, 1
  %i.t = add nuw nsw i64 %i.d, 1                  ; 10 uses
  %i.u = icmp samesign ult i64 %i.t, %i.n
  %or.cond568.i = and i1 %i.s, %i.u               ; 2 uses
  %i.v = add nuw nsw i64 %i.d, 2                  ; 5 uses
  %i.w = icmp samesign ult i64 %i.v, %i.n         ; 2 uses
  %i.x = add nuw nsw i64 %i.d, 3                  ; 13 uses
  %i.y = icmp samesign ult i64 %i.x, %i.n         ; 2 uses
  %.not410514.i = icmp eq i64 %i.n, %i.d          ; 3 uses
  %.not419553.i = icmp eq i64 %i.n, 0             ; 3 uses
  %wide.trip.count = zext i32 %3 to i64           ; 14 uses
  %i.z = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.aa = mul i64 %i.n, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.h
  %scevgep151 = getelementptr i8, ptr %1, i64 1
  %i.ad = mul i64 %i.o, %i.z
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.m
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.h
  %scevgep152 = getelementptr i8, ptr %i.ag, i64 1
  %scevgep163 = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ai = mul i64 %i.n, %i.ah                     ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.m
  %scevgep164 = getelementptr i8, ptr %i.ak, i64 %i.h ; 2 uses
  %scevgep165 = getelementptr i8, ptr %1, i64 %i.t
  %i.al = mul i64 %i.o, %i.ah
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %i.m
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.h
  %scevgep166 = getelementptr i8, ptr %i.ao, i64 1
  %i.ap = add i64 %i.ai, %i.m
  %i.aq = add i64 %i.ap, %i.h
  %i.ar = sub i64 %i.aq, %i.d
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.ar
  %i.as = add nuw nsw i64 %i.h, %i.m
  %i.at = sub nsw i64 %i.as, %i.d                 ; 21 uses
  %i.au = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.av = mul i64 %i.n, %i.au
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %scevgep206 = getelementptr i8, ptr %i.aw, i64 %i.d
  %scevgep207 = getelementptr i8, ptr %1, i64 1
  %i.ax = mul i64 %i.o, %i.au
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.d
  %scevgep208 = getelementptr i8, ptr %i.az, i64 1
  %i.ba = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bb = mul i64 %i.n, %i.ba
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.m
  %scevgep241 = getelementptr i8, ptr %i.bd, i64 %i.h
  %scevgep242 = getelementptr i8, ptr %1, i64 1
  %i.be = mul i64 %i.o, %i.ba
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.m
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.h
  %scevgep243 = getelementptr i8, ptr %i.bh, i64 1
  %i.bi = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bj = mul i64 %i.n, %i.bi
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.m
  %scevgep276 = getelementptr i8, ptr %i.bl, i64 %i.h ; 2 uses
  %scevgep277 = getelementptr i8, ptr %1, i64 1
  %i.bm = mul i64 %i.o, %i.bi
  %i.bn = getelementptr i8, ptr %1, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.m
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.h
  %scevgep278 = getelementptr i8, ptr %i.bp, i64 1
  %scevgep321 = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.bq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.br = mul i64 %i.n, %i.bq                     ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.m
  %scevgep322 = getelementptr i8, ptr %i.bt, i64 %i.h ; 2 uses
  %scevgep323 = getelementptr i8, ptr %1, i64 %i.t
  %i.bu = mul i64 %i.o, %i.bq
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.m
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.h
  %scevgep324 = getelementptr i8, ptr %i.bx, i64 1
  %i.by = add i64 %i.br, %i.m
  %i.bz = add i64 %i.by, %i.h
  %i.ca = sub i64 %i.bz, %i.d
  %scevgep325 = getelementptr i8, ptr %0, i64 %i.ca
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.cc = mul i64 %i.n, %i.cb
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %scevgep365 = getelementptr i8, ptr %i.cd, i64 %i.d
  %scevgep366 = getelementptr i8, ptr %1, i64 1
  %i.ce = mul i64 %i.o, %i.cb
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.d
  %scevgep367 = getelementptr i8, ptr %i.cg, i64 1
  %i.ch = add nuw nsw i64 %i.h, %i.m              ; 2 uses
  %scevgep438 = getelementptr i8, ptr %0, i64 %i.d ; 12 uses
  %i.ci = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.cj = mul i64 %i.n, %i.ci                     ; 5 uses
  %i.ck = add nsw i64 %i.ch, -4
  %i.cl = sub i64 %i.ck, %i.d
  %i.cm = and i64 %i.cl, -4                       ; 8 uses
  %i.cn = getelementptr i8, ptr %0, i64 %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.d
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cm
  %scevgep439 = getelementptr i8, ptr %i.cp, i64 1 ; 12 uses
  %scevgep440 = getelementptr i8, ptr %0, i64 %i.t ; 12 uses
  %i.cq = add i64 %i.cj, %i.d
  %i.cr = add i64 %i.cq, %i.cm                    ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %scevgep441 = getelementptr i8, ptr %i.cs, i64 2 ; 12 uses
  %scevgep442 = getelementptr i8, ptr %0, i64 %i.v ; 12 uses
  %i.ct = getelementptr i8, ptr %0, i64 %i.cr
  %scevgep443 = getelementptr i8, ptr %i.ct, i64 3 ; 12 uses
  %scevgep444 = getelementptr i8, ptr %0, i64 %i.x ; 12 uses
  %i.cu = getelementptr i8, ptr %0, i64 %i.cj
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.d
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cm
  %scevgep445 = getelementptr i8, ptr %i.cw, i64 4 ; 12 uses
  %scevgep446 = getelementptr i8, ptr %1, i64 %i.t ; 4 uses
  %i.cx = mul i64 %i.o, %i.ci
  %i.cy = getelementptr i8, ptr %1, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.d
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cm
  %scevgep447 = getelementptr i8, ptr %i.da, i64 5 ; 4 uses
  %i.db = add i64 %i.cj, %i.cm                    ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 %i.db
  %scevgep448 = getelementptr i8, ptr %i.dc, i64 1 ; 4 uses
  %i.dd = add i64 %i.cm, %i.d                     ; 2 uses
  %scevgep451 = getelementptr i8, ptr %0, i64 1   ; 4 uses
  %i.de = getelementptr i8, ptr %0, i64 %i.db
  %scevgep452 = getelementptr i8, ptr %i.de, i64 2 ; 4 uses
  %scevgep455 = getelementptr i8, ptr %0, i64 2   ; 4 uses
  %i.df = add i64 %i.cj, %i.cm                    ; 2 uses
  %i.dg = getelementptr i8, ptr %0, i64 %i.df
  %scevgep456 = getelementptr i8, ptr %i.dg, i64 3 ; 4 uses
  %i.dh = add i64 %i.cm, %i.d                     ; 2 uses
  %scevgep459 = getelementptr i8, ptr %0, i64 3   ; 4 uses
  %i.di = getelementptr i8, ptr %0, i64 %i.df
  %scevgep460 = getelementptr i8, ptr %i.di, i64 4 ; 4 uses
  %i.dj = add nuw nsw i64 %i.h, %i.m
  %i.dk = add nsw i64 %i.dj, -4
  %i.dl = sub i64 %i.dk, %i.d                     ; 7 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 10 uses
  %i.do = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dp = mul i64 %i.n, %i.do
  %i.dq = getelementptr i8, ptr %0, i64 %i.dp
  %scevgep688 = getelementptr i8, ptr %i.dq, i64 %i.d ; 2 uses
  %scevgep689 = getelementptr i8, ptr %1, i64 1
  %i.dr = mul i64 %i.o, %i.do
  %i.ds = getelementptr i8, ptr %1, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.d
  %scevgep690 = getelementptr i8, ptr %i.dt, i64 1
  %scevgep733 = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.du = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dv = mul i64 %i.n, %i.du                     ; 2 uses
  %i.dw = getelementptr i8, ptr %0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.m
  %scevgep734 = getelementptr i8, ptr %i.dx, i64 %i.h ; 2 uses
  %scevgep735 = getelementptr i8, ptr %1, i64 %i.t
  %i.dy = mul i64 %i.o, %i.du
  %i.dz = getelementptr i8, ptr %1, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.m
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.h
  %scevgep736 = getelementptr i8, ptr %i.eb, i64 1
  %i.ec = add i64 %i.dv, %i.m
  %i.ed = add i64 %i.ec, %i.h
  %i.ee = sub i64 %i.ed, %i.d
  %scevgep737 = getelementptr i8, ptr %0, i64 %i.ee
  %i.ef = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.eg = mul i64 %i.n, %i.ef
  %i.eh = getelementptr i8, ptr %0, i64 %i.eg
  %scevgep777 = getelementptr i8, ptr %i.eh, i64 %i.d
  %scevgep778 = getelementptr i8, ptr %1, i64 1
  %i.ei = mul i64 %i.o, %i.ef
  %i.ej = getelementptr i8, ptr %1, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.d
  %scevgep779 = getelementptr i8, ptr %i.ek, i64 1
  %i.el = add nuw nsw i64 %i.h, %i.m
  %scevgep854 = getelementptr i8, ptr %0, i64 %i.d ; 16 uses
  %i.em = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.en = mul i64 %i.n, %i.em                     ; 4 uses
  %i.eo = add i64 %i.en, %i.d
  %i.ep = and i64 %i.dl, -4                       ; 9 uses
  %i.eq = add i64 %i.eo, %i.ep                    ; 2 uses
  %i.er = getelementptr i8, ptr %0, i64 %i.eq
  %scevgep856.a = getelementptr i8, ptr %i.er, i64 1 ; 16 uses
  %i.es = getelementptr i8, ptr %0, i64 %i.t      ; 16 uses
  %scevgep857.a = getelementptr i8, ptr %0, i64 %i.eq
  %scevgep858.a = getelementptr i8, ptr %scevgep857.a, i64 2 ; 16 uses
  %scevgep858 = getelementptr i8, ptr %0, i64 %i.v ; 16 uses
  %i.et = add i64 %i.en, %i.d
  %5 = add i64 %i.et, %i.ep                       ; 2 uses
  %scevgep859.a = getelementptr i8, ptr %0, i64 %5
  %scevgep860.a = getelementptr i8, ptr %scevgep859.a, i64 3 ; 16 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.x      ; 16 uses
  %6 = getelementptr i8, ptr %0, i64 %5
  %scevgep861 = getelementptr i8, ptr %6, i64 4   ; 16 uses
  %scevgep862 = getelementptr i8, ptr %1, i64 %i.t ; 4 uses
  %i.ev = mul i64 %i.o, %i.em
  %i.ew = getelementptr i8, ptr %1, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.d
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ep
  %scevgep863 = getelementptr i8, ptr %i.ey, i64 5 ; 4 uses
  %i.ez = add i64 %i.en, %i.ep                    ; 2 uses
  %i.fa = getelementptr i8, ptr %0, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 1      ; 4 uses
  %scevgep865 = getelementptr i8, ptr %0, i64 1   ; 4 uses
  %7 = getelementptr i8, ptr %0, i64 %i.ez
  %scevgep866 = getelementptr i8, ptr %7, i64 2   ; 4 uses
  %scevgep867 = getelementptr i8, ptr %0, i64 2   ; 4 uses
  %i.fc = add i64 %i.en, %i.ep                    ; 2 uses
  %i.fd = getelementptr i8, ptr %0, i64 %i.fc
  %scevgep868 = getelementptr i8, ptr %i.fd, i64 3 ; 4 uses
  %scevgep869 = getelementptr i8, ptr %0, i64 3   ; 4 uses
  %8 = getelementptr i8, ptr %0, i64 %i.fc
  %scevgep870 = getelementptr i8, ptr %8, i64 4   ; 4 uses
  %9 = add i64 %i.ep, %i.d                        ; 4 uses
  %10 = or i64 %i.dl, 3
  %11 = add nsw i64 %wide.trip.count, -1          ; 2 uses
  %12 = mul i64 %i.n, %11
  %13 = getelementptr i8, ptr %0, i64 %12
  %scevgep1188 = getelementptr i8, ptr %13, i64 %i.d ; 2 uses
  %scevgep1189 = getelementptr i8, ptr %1, i64 1
  %14 = mul i64 %i.o, %11
  %15 = getelementptr i8, ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 %i.d
  %scevgep870.a = getelementptr i8, ptr %16, i64 1
  %i.fe = add nuw nsw i64 %i.h, %i.m
  %17 = add nuw nsw i64 %i.h, %i.m
  %i.ff = add nuw nsw i64 %i.h, %i.m
  %18 = add nuw nsw i64 %i.h, %i.m
  %19 = add nuw nsw i64 %i.h, %i.m
  %20 = add nuw nsw i64 %i.h, %i.m
  %21 = add nuw nsw i64 %i.h, %i.m
  %22 = add nuw nsw i64 %i.h, %i.m
  %23 = add nuw nsw i64 %i.h, %i.m
  %24 = add nuw nsw i64 %i.h, %i.m
  %25 = add nuw nsw i64 %i.h, %i.m
  %26 = add nuw nsw i64 %i.h, %i.m
  %27 = add nuw nsw i64 %i.h, %i.m
  %28 = add nuw nsw i64 %i.h, %i.m
  %min.iters.check1199 = icmp ult i32 %i.b, 64
  %bound01192 = icmp ult ptr %0, %scevgep870.a
  %bound11193 = icmp ult ptr %scevgep1189, %scevgep1188
  %found.conflict1194 = and i1 %bound01192, %bound11193
  %min.iters.check1201 = icmp ult i32 %i.b, 1024
  %29 = and i64 %i.d, 120
  %n.vec1203 = and i64 %i.d, 536870784            ; 4 uses
  %cmp.n1216 = icmp eq i64 %n.vec1203, %i.d
  %min.epilog.iters.check1221 = icmp eq i64 %29, 0
  %n.vec1223 = and i64 %i.d, 536870904            ; 3 uses
  %cmp.n1230 = icmp eq i64 %n.vec1223, %i.d
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check1117 = icmp ult i64 %i.dl, 12
  %bound0886 = icmp ult ptr %scevgep854, %scevgep858.a
  %bound1887 = icmp ult ptr %i.es, %scevgep856.a
  %found.conflict888 = and i1 %bound0886, %bound1887
  %bound0889 = icmp ult ptr %scevgep854, %scevgep860.a
  %bound1890 = icmp ult ptr %scevgep858, %scevgep856.a
  %found.conflict891 = and i1 %bound0889, %bound1890
  %conflict.rdx892 = or i1 %found.conflict888, %found.conflict891
  %bound0893 = icmp ult ptr %scevgep854, %scevgep861
  %bound1894 = icmp ult ptr %i.eu, %scevgep856.a
  %found.conflict895 = and i1 %bound0893, %bound1894
  %conflict.rdx896 = or i1 %conflict.rdx892, %found.conflict895
  %bound0897 = icmp ult ptr %scevgep854, %scevgep863
  %bound1898 = icmp ult ptr %scevgep862, %scevgep856.a
  %found.conflict899 = and i1 %bound0897, %bound1898
  %conflict.rdx900 = or i1 %conflict.rdx896, %found.conflict899
  %bound0901 = icmp ult ptr %scevgep854, %i.fb
  %bound1902 = icmp ult ptr %0, %scevgep856.a
  %found.conflict903 = and i1 %bound0901, %bound1902
  %conflict.rdx904 = or i1 %conflict.rdx900, %found.conflict903
  %bound0905 = icmp ult ptr %scevgep854, %scevgep866
  %bound1906 = icmp ult ptr %scevgep865, %scevgep856.a
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx908 = or i1 %conflict.rdx904, %found.conflict907
  %bound0909 = icmp ult ptr %scevgep854, %scevgep868
  %bound1910 = icmp ult ptr %scevgep867, %scevgep856.a
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx912 = or i1 %conflict.rdx908, %found.conflict911
  %bound0913 = icmp ult ptr %scevgep854, %scevgep870
  %bound1914 = icmp ult ptr %scevgep869, %scevgep856.a
  %found.conflict915 = and i1 %bound0913, %bound1914
  %conflict.rdx916 = or i1 %conflict.rdx912, %found.conflict915
  %bound0949 = icmp ult ptr %i.es, %scevgep860.a
  %bound1950 = icmp ult ptr %scevgep858, %scevgep858.a
  %found.conflict951 = and i1 %bound0949, %bound1950
  %bound0953 = icmp ult ptr %i.es, %scevgep861
  %bound1954 = icmp ult ptr %i.eu, %scevgep858.a
  %found.conflict955 = and i1 %bound0953, %bound1954
  %invariant.op = or i1 %found.conflict951, %found.conflict955
  %bound01192.a = icmp ult ptr %i.es, %scevgep863
  %bound11193.a = icmp ult ptr %scevgep862, %scevgep858.a
  %found.conflict1194.a = and i1 %bound01192.a, %bound11193.a
  %invariant.op1315 = or i1 %invariant.op, %found.conflict1194.a
  %bound0961 = icmp ult ptr %i.es, %i.fb
  %bound1962 = icmp ult ptr %0, %scevgep858.a
  %found.conflict963 = and i1 %bound0961, %bound1962
  %invariant.op1316 = or i1 %invariant.op1315, %found.conflict963
  %bound0965 = icmp ult ptr %i.es, %scevgep866
  %bound1966 = icmp ult ptr %scevgep865, %scevgep858.a
  %found.conflict967 = and i1 %bound0965, %bound1966
  %invariant.op1317 = or i1 %invariant.op1316, %found.conflict967
  %min.iters.check1117.a = icmp ult ptr %i.es, %scevgep868
  %bound1970 = icmp ult ptr %scevgep867, %scevgep858.a
  %found.conflict971 = and i1 %min.iters.check1117.a, %bound1970
  %invariant.op1318 = or i1 %invariant.op1317, %found.conflict971
  %bound0973 = icmp ult ptr %i.es, %scevgep870
  %bound1974 = icmp ult ptr %scevgep869, %scevgep858.a
  %found.conflict975 = and i1 %bound0973, %bound1974
  %invariant.op1319 = or i1 %invariant.op1318, %found.conflict975
  %bound0949.a = icmp ult ptr %scevgep858, %scevgep861
  %bound1950.a = icmp ult ptr %i.eu, %scevgep860.a
  %found.conflict951.a = and i1 %bound0949.a, %bound1950.a
  %bound0953.a = icmp ult ptr %scevgep858, %scevgep863
  %bound1954.a = icmp ult ptr %scevgep862, %scevgep860.a
  %found.conflict955.a = and i1 %bound0953.a, %bound1954.a
  %invariant.op1320 = or i1 %found.conflict951.a, %found.conflict955.a
  %bound1958 = icmp ult ptr %scevgep858, %i.fb
  %bound11018 = icmp ult ptr %0, %scevgep860.a
  %found.conflict1019 = and i1 %bound1958, %bound11018
  %invariant.op1321 = or i1 %invariant.op1320, %found.conflict1019
  %bound01021 = icmp ult ptr %scevgep858, %scevgep866
  %bound11022 = icmp ult ptr %scevgep865, %scevgep860.a
  %found.conflict1023 = and i1 %bound01021, %bound11022
  %invariant.op1322 = or i1 %invariant.op1321, %found.conflict1023
  %bound01025 = icmp ult ptr %scevgep858, %scevgep868
  %bound11026 = icmp ult ptr %scevgep867, %scevgep860.a
  %found.conflict1027 = and i1 %bound01025, %bound11026
  %invariant.op1323 = or i1 %invariant.op1322, %found.conflict1027
  %bound01081.a = icmp ult ptr %scevgep858, %scevgep870
  %bound11082.a = icmp ult ptr %scevgep869, %scevgep860.a
  %found.conflict1031 = and i1 %bound01081.a, %bound11082.a
  %invariant.op1324 = or i1 %invariant.op1323, %found.conflict1031
  %bound01065 = icmp ult ptr %i.eu, %scevgep863
  %bound11066 = icmp ult ptr %scevgep862, %scevgep861
  %found.conflict1067 = and i1 %bound01065, %bound11066
  %bound01069 = icmp ult ptr %i.eu, %i.fb
  %bound11070 = icmp ult ptr %0, %scevgep861
  %found.conflict1071 = and i1 %bound01069, %bound11070
  %invariant.op1325 = or i1 %found.conflict1067, %found.conflict1071
  %bound01073 = icmp ult ptr %i.eu, %scevgep866
  %bound11074 = icmp ult ptr %scevgep865, %scevgep861
  %found.conflict1075 = and i1 %bound01073, %bound11074
  %invariant.op1326 = or i1 %invariant.op1325, %found.conflict1075
  %bound01077 = icmp ult ptr %i.eu, %scevgep868
  %bound11078 = icmp ult ptr %scevgep867, %scevgep861
  %found.conflict1079 = and i1 %bound01077, %bound11078
  %invariant.op1327 = or i1 %invariant.op1326, %found.conflict1079
  %bound01081 = icmp ult ptr %i.eu, %scevgep870
  %bound11082 = icmp ult ptr %scevgep869, %scevgep861
  %found.conflict1083 = and i1 %bound01081, %bound11082
  %op.rdx1272 = or i1 %invariant.op1327, %found.conflict1083
  %min.iters.check1119 = icmp ult i64 %i.dl, 60
  %i.fg = and i64 %i.dn, 12
  %n.vec1121 = and i64 %i.dn, 9223372036854775792 ; 4 uses
  %i.fh = shl i64 %n.vec1121, 2                   ; 4 uses
  %i.fi = add i64 %i.x, %i.fh
  %i.fj = add i64 %i.fh, %i.d                     ; 2 uses
  %cmp.n1147 = icmp eq i64 %i.dn, %n.vec1121
  %min.epilog.iters.check1155 = icmp eq i64 %i.fg, 0
  %n.vec1157 = and i64 %i.dn, 9223372036854775804 ; 3 uses
  %i.fk = shl i64 %n.vec1157, 2                   ; 4 uses
  %i.fl = add i64 %i.x, %i.fk
  %i.fm = add i64 %i.fk, %i.d                     ; 2 uses
  %cmp.n1183 = icmp eq i64 %i.dn, %n.vec1157
  %i.fn = sub i64 %i.p, %i.a
  %invariant.op.a = add i64 %i.fn, 32
  %i.fo = add nsw i32 %i.c, -1
  %diff.check813 = icmp ult i32 %i.fo, 31
  %min.iters.check783 = icmp ult i32 %i.b, 64
  %bound0780 = icmp ult ptr %0, %scevgep779
  %bound1781 = icmp ult ptr %scevgep778, %scevgep777
  %found.conflict782 = and i1 %bound0780, %bound1781
  %min.iters.check785 = icmp ult i32 %i.b, 1024
  %i.fp = and i64 %i.d, 120
  %n.vec787 = and i64 %i.d, 536870784             ; 4 uses
  %cmp.n796 = icmp eq i64 %n.vec787, %i.d
  %min.epilog.iters.check801 = icmp eq i64 %i.fp, 0
  %n.vec803 = and i64 %i.d, 536870904             ; 3 uses
  %cmp.n809 = icmp eq i64 %n.vec803, %i.d
  %xtraiter1298 = and i64 %i.d, 7                 ; 2 uses
  %lcmp.mod1299.not = icmp eq i64 %xtraiter1298, 0
  %min.iters.check745 = icmp ult i64 %i.at, 8
  %bound0738 = icmp ult ptr %scevgep733, %scevgep736
  %bound1739 = icmp ult ptr %scevgep735, %scevgep734
  %found.conflict740 = and i1 %bound0738, %bound1739
  %bound0741 = icmp ult ptr %scevgep733, %scevgep737
  %bound1742 = icmp ult ptr %0, %scevgep734
  %found.conflict743 = and i1 %bound0741, %bound1742
  %conflict.rdx744 = or i1 %found.conflict740, %found.conflict743
  %min.iters.check747 = icmp ult i64 %i.at, 64
  %i.fq = and i64 %i.at, 56
  %n.vec749 = and i64 %i.at, -64                  ; 5 uses
  %i.fr = add i64 %n.vec749, %i.d
  %cmp.n758 = icmp eq i64 %i.at, %n.vec749
  %min.epilog.iters.check764 = icmp eq i64 %i.fq, 0
  %n.vec766 = and i64 %i.at, -8                   ; 4 uses
  %i.fs = add i64 %n.vec766, %i.d
  %cmp.n773 = icmp eq i64 %i.at, %n.vec766
  %min.iters.check699 = icmp ult i32 %i.b, 64
  %bound0692 = icmp ult ptr %0, %scevgep690
  %bound1693 = icmp ult ptr %scevgep689, %scevgep688
  %found.conflict694 = and i1 %bound0692, %bound1693
  %min.iters.check701 = icmp ult i32 %i.b, 1024
  %i.ft = and i64 %i.d, 120
  %n.vec703 = and i64 %i.d, 536870784             ; 4 uses
  %cmp.n716 = icmp eq i64 %n.vec703, %i.d
  %min.epilog.iters.check721 = icmp eq i64 %i.ft, 0
  %n.vec723 = and i64 %i.d, 536870904             ; 3 uses
  %cmp.n730 = icmp eq i64 %n.vec723, %i.d
  %xtraiter1304 = and i64 %i.d, 3                 ; 2 uses
  %lcmp.mod1305.not = icmp eq i64 %xtraiter1304, 0
  %min.iters.check630 = icmp ult i64 %i.dl, 12
  %bound0463 = icmp ult ptr %scevgep438, %scevgep441
  %bound1464 = icmp ult ptr %scevgep440, %scevgep439
  %found.conflict465 = and i1 %bound0463, %bound1464
  %bound0466 = icmp ult ptr %scevgep438, %scevgep443
  %bound1467 = icmp ult ptr %scevgep442, %scevgep439
  %found.conflict468 = and i1 %bound0466, %bound1467
  %conflict.rdx469 = or i1 %found.conflict465, %found.conflict468
  %bound0470 = icmp ult ptr %scevgep438, %scevgep445
  %bound1471 = icmp ult ptr %scevgep444, %scevgep439
  %found.conflict472 = and i1 %bound0470, %bound1471
  %conflict.rdx473 = or i1 %conflict.rdx469, %found.conflict472
  %bound0474 = icmp ult ptr %scevgep438, %scevgep447
  %bound1475 = icmp ult ptr %scevgep446, %scevgep439
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %conflict.rdx473, %found.conflict476
  %bound0478 = icmp ult ptr %scevgep438, %scevgep448
  %bound1479 = icmp ult ptr %0, %scevgep439
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0486 = icmp ult ptr %scevgep438, %scevgep452
  %bound1487 = icmp ult ptr %scevgep451, %scevgep439
  %found.conflict488 = and i1 %bound0486, %bound1487
  %invariant.op1358 = or i1 %conflict.rdx481, %found.conflict488
  %bound0494 = icmp ult ptr %scevgep438, %scevgep456
  %bound1495 = icmp ult ptr %scevgep455, %scevgep439
  %found.conflict496 = and i1 %bound0494, %bound1495
  %bound0502 = icmp ult ptr %scevgep438, %scevgep460
  %bound1503 = icmp ult ptr %scevgep459, %scevgep439
  %found.conflict504 = and i1 %bound0502, %bound1503
  %bound0510 = icmp ult ptr %scevgep440, %scevgep443
  %bound1511 = icmp ult ptr %scevgep442, %scevgep441
  %found.conflict512 = and i1 %bound0510, %bound1511
  %bound0514 = icmp ult ptr %scevgep440, %scevgep445
  %bound1515 = icmp ult ptr %scevgep444, %scevgep441
  %found.conflict516 = and i1 %bound0514, %bound1515
  %invariant.op1359 = or i1 %found.conflict512, %found.conflict516
  %bound0518 = icmp ult ptr %scevgep440, %scevgep447
  %bound1519 = icmp ult ptr %scevgep446, %scevgep441
  %found.conflict520 = and i1 %bound0518, %bound1519
  %invariant.op1360 = or i1 %invariant.op1359, %found.conflict520
  %bound0522 = icmp ult ptr %scevgep440, %scevgep448
  %bound1523 = icmp ult ptr %0, %scevgep441
  %found.conflict524 = and i1 %bound0522, %bound1523
  %invariant.op1361 = or i1 %invariant.op1360, %found.conflict524
  %bound0530 = icmp ult ptr %scevgep440, %scevgep452
  %bound1531 = icmp ult ptr %scevgep451, %scevgep441
  %found.conflict532 = and i1 %bound0530, %bound1531
  %bound0538 = icmp ult ptr %scevgep440, %scevgep456
  %bound1539 = icmp ult ptr %scevgep455, %scevgep441
  %found.conflict540 = and i1 %bound0538, %bound1539
  %bound0546 = icmp ult ptr %scevgep440, %scevgep460
  %bound1547 = icmp ult ptr %scevgep459, %scevgep441
  %found.conflict548 = and i1 %bound0546, %bound1547
  %bound0554 = icmp ult ptr %scevgep442, %scevgep445
  %bound1555 = icmp ult ptr %scevgep444, %scevgep443
  %found.conflict556 = and i1 %bound0554, %bound1555
  %bound0558 = icmp ult ptr %scevgep442, %scevgep447
  %bound1559 = icmp ult ptr %scevgep446, %scevgep443
  %found.conflict560 = and i1 %bound0558, %bound1559
  %invariant.op1362 = or i1 %found.conflict556, %found.conflict560
  %bound0562 = icmp ult ptr %scevgep442, %scevgep448
  %bound1563 = icmp ult ptr %0, %scevgep443
  %found.conflict564 = and i1 %bound0562, %bound1563
  %invariant.op1363 = or i1 %invariant.op1362, %found.conflict564
  %bound0570 = icmp ult ptr %scevgep442, %scevgep452
  %bound1571 = icmp ult ptr %scevgep451, %scevgep443
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0578 = icmp ult ptr %scevgep442, %scevgep456
  %bound1579 = icmp ult ptr %scevgep455, %scevgep443
  %found.conflict580 = and i1 %bound0578, %bound1579
  %bound0586 = icmp ult ptr %scevgep442, %scevgep460
  %bound1587 = icmp ult ptr %scevgep459, %scevgep443
  %found.conflict588 = and i1 %bound0586, %bound1587
  %bound0594 = icmp ult ptr %scevgep444, %scevgep447
  %bound1595 = icmp ult ptr %scevgep446, %scevgep445
  %found.conflict596 = and i1 %bound0594, %bound1595
  %bound0598 = icmp ult ptr %scevgep444, %scevgep448
  %bound1599 = icmp ult ptr %0, %scevgep445
  %found.conflict600 = and i1 %bound0598, %bound1599
  %invariant.op1364 = or i1 %found.conflict596, %found.conflict600
  %bound0606 = icmp ult ptr %scevgep444, %scevgep452
  %bound1607 = icmp ult ptr %scevgep451, %scevgep445
  %found.conflict608 = and i1 %bound0606, %bound1607
  %bound0614 = icmp ult ptr %scevgep444, %scevgep456
  %bound1615 = icmp ult ptr %scevgep455, %scevgep445
  %found.conflict616 = and i1 %bound0614, %bound1615
  %bound0622 = icmp ult ptr %scevgep444, %scevgep460
  %bound1623 = icmp ult ptr %scevgep459, %scevgep445
  %found.conflict624 = and i1 %bound0622, %bound1623
  %min.iters.check632 = icmp ult i64 %i.dl, 60
  %i.fu = and i64 %i.dn, 12
  %n.vec634 = and i64 %i.dn, 9223372036854775792  ; 4 uses
  %i.fv = shl i64 %n.vec634, 2                    ; 4 uses
  %i.fw = add i64 %i.x, %i.fv
  %i.fx = add i64 %i.fv, %i.d                     ; 2 uses
  %cmp.n652 = icmp eq i64 %i.dn, %n.vec634
  %min.epilog.iters.check660 = icmp eq i64 %i.fu, 0
  %n.vec662 = and i64 %i.dn, 9223372036854775804  ; 3 uses
  %i.fy = shl i64 %n.vec662, 2                    ; 4 uses
  %i.fz = add i64 %i.x, %i.fy
  %i.ga = add i64 %i.fy, %i.d                     ; 2 uses
  %cmp.n683 = icmp eq i64 %i.dn, %n.vec662
  %i.gb = sub i64 %i.p, %i.a
  %invariant.op1365 = add i64 %i.gb, 32
  %min.iters.check371 = icmp ult i32 %i.b, 64
  %bound0368 = icmp ult ptr %0, %scevgep367
  %bound1369 = icmp ult ptr %scevgep366, %scevgep365
  %found.conflict370 = and i1 %bound0368, %bound1369
  %min.iters.check373 = icmp ult i32 %i.b, 1024
  %i.gc = and i64 %i.d, 120
  %n.vec375 = and i64 %i.d, 536870784             ; 4 uses
  %cmp.n384 = icmp eq i64 %n.vec375, %i.d
  %min.epilog.iters.check389 = icmp eq i64 %i.gc, 0
  %n.vec391 = and i64 %i.d, 536870904             ; 3 uses
  %cmp.n397 = icmp eq i64 %n.vec391, %i.d
  %xtraiter1310 = and i64 %i.d, 7                 ; 2 uses
  %lcmp.mod1311.not = icmp eq i64 %xtraiter1310, 0
  %min.iters.check333 = icmp ult i64 %i.at, 8
  %bound0326 = icmp ult ptr %scevgep321, %scevgep324
  %bound1327 = icmp ult ptr %scevgep323, %scevgep322
  %found.conflict328 = and i1 %bound0326, %bound1327
  %bound0329 = icmp ult ptr %scevgep321, %scevgep325
  %bound1330 = icmp ult ptr %0, %scevgep322
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx332 = or i1 %found.conflict328, %found.conflict331
  %min.iters.check335 = icmp ult i64 %i.at, 64
  %i.gd = and i64 %i.at, 56
  %n.vec337 = and i64 %i.at, -64                  ; 5 uses
  %i.ge = add i64 %n.vec337, %i.d
  %cmp.n346 = icmp eq i64 %i.at, %n.vec337
  %min.epilog.iters.check352 = icmp eq i64 %i.gd, 0
  %n.vec354 = and i64 %i.at, -8                   ; 4 uses
  %i.gf = add i64 %n.vec354, %i.d
  %cmp.n361 = icmp eq i64 %i.at, %n.vec354
  %min.iters.check287 = icmp samesign ult i64 %i.n, 8
  %bound0280 = icmp ult ptr %0, %scevgep278
  %bound1281 = icmp ult ptr %scevgep277, %scevgep276
  %found.conflict282 = and i1 %bound0280, %bound1281
  %min.iters.check289 = icmp samesign ult i64 %i.n, 128
  %i.gg = and i64 %i.n, 120
  %n.vec291 = and i64 %i.n, 4611686018427387776   ; 4 uses
  %cmp.n304 = icmp eq i64 %i.n, %n.vec291
  %min.epilog.iters.check309 = icmp eq i64 %i.gg, 0
  %n.vec311 = and i64 %i.n, 4611686018427387896   ; 3 uses
  %cmp.n318 = icmp eq i64 %i.n, %n.vec311
  %xtraiter1316 = and i64 %21, 7                  ; 2 uses
  %lcmp.mod1317.not = icmp eq i64 %xtraiter1316, 0
  %min.iters.check247 = icmp samesign ult i64 %i.n, 8
  %bound0244 = icmp ult ptr %0, %scevgep243
  %bound1245 = icmp ult ptr %scevgep242, %scevgep241
  %found.conflict246 = and i1 %bound0244, %bound1245
  %min.iters.check249 = icmp samesign ult i64 %i.n, 128
  %i.gh = and i64 %i.n, 120
  %n.vec251 = and i64 %i.n, 4611686018427387776   ; 4 uses
  %cmp.n260 = icmp eq i64 %i.n, %n.vec251
  %min.epilog.iters.check265 = icmp eq i64 %i.gh, 0
  %n.vec267 = and i64 %i.n, 4611686018427387896   ; 3 uses
  %cmp.n273 = icmp eq i64 %i.n, %n.vec267
  %xtraiter1319 = and i64 %23, 7                  ; 2 uses
  %lcmp.mod1320.not = icmp eq i64 %xtraiter1319, 0
  %min.iters.check212 = icmp ult i32 %i.b, 64
  %bound0209 = icmp ult ptr %0, %scevgep208
  %bound1210 = icmp ult ptr %scevgep207, %scevgep206
  %found.conflict211 = and i1 %bound0209, %bound1210
  %min.iters.check214 = icmp ult i32 %i.b, 1024
  %i.gi = and i64 %i.d, 120
  %n.vec216 = and i64 %i.d, 536870784             ; 4 uses
  %cmp.n225 = icmp eq i64 %n.vec216, %i.d
  %min.epilog.iters.check230 = icmp eq i64 %i.gi, 0
  %n.vec232 = and i64 %i.d, 536870904             ; 3 uses
  %cmp.n238 = icmp eq i64 %n.vec232, %i.d
  %xtraiter1322 = and i64 %i.d, 7                 ; 2 uses
  %lcmp.mod1323.not = icmp eq i64 %xtraiter1322, 0
  %min.iters.check174 = icmp ult i64 %i.at, 8
  %bound0168 = icmp ult ptr %scevgep163, %scevgep166
  %bound1169 = icmp ult ptr %scevgep165, %scevgep164
  %found.conflict170 = and i1 %bound0168, %bound1169
  %bound0171 = icmp ult ptr %scevgep163, %scevgep167
  %bound1172 = icmp ult ptr %0, %scevgep164
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx = or i1 %found.conflict170, %found.conflict173
  %min.iters.check176 = icmp ult i64 %i.at, 64
  %i.gj = and i64 %i.at, 56
  %n.vec178 = and i64 %i.at, -64                  ; 5 uses
  %i.gk = add i64 %n.vec178, %i.d
  %cmp.n187 = icmp eq i64 %i.at, %n.vec178
  %min.epilog.iters.check193 = icmp eq i64 %i.gj, 0
  %n.vec195 = and i64 %i.at, -8                   ; 4 uses
  %i.gl = add i64 %n.vec195, %i.d
  %cmp.n202 = icmp eq i64 %i.at, %n.vec195
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  %bound0 = icmp ult ptr %0, %scevgep152
  %bound1 = icmp ult ptr %scevgep151, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check153 = icmp samesign ult i64 %i.n, 128
  %i.gm = and i64 %i.n, 120
  %n.vec = and i64 %i.n, 4611686018427387776      ; 4 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.gm, 0
  %n.vec157 = and i64 %i.n, 4611686018427387896   ; 3 uses
  %cmp.n161 = icmp eq i64 %i.n, %n.vec157
  %xtraiter1328 = and i64 %27, 7                  ; 2 uses
  %lcmp.mod1329.not = icmp eq i64 %xtraiter1328, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %.02771 = phi ptr [ null, %.lr.ph ], [ %i.gv, %.loopexit ] ; 104 uses
  %i.gn = mul i64 %i.n, %indvars.iv
  %i.go = add i64 %i.gn, %i.a                     ; 2 uses
  %i.gp = mul i64 %i.n, %indvars.iv
  %i.gq = add i64 %i.gp, %i.a
  %.02771402 = ptrtoaddr ptr %.02771 to i64       ; 3 uses
  %i.gr = mul i64 %i.n, %indvars.iv
  %i.gs = mul i64 %i.o, %indvars.iv
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 %i.gr ; 180 uses
  %i.gw = getelementptr i8, ptr %i.gt, i64 1      ; 134 uses
  switch i8 %i.gu, label %_ZL16unfilterScanlinePhPKhS1_mhm.exit [
    i8 0, label %.preheader.i
    i8 1, label %.preheader462.i
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

.preheader462.i:                                  ; preds = %bb.b
  br i1 %.not409511.i, label %.preheader460.i, label %iter.check227

iter.check227:                                    ; preds = %.preheader462.i
  %brmerge = select i1 %min.iters.check212, i1 true, i1 %found.conflict211
  br i1 %brmerge, label %.lr.ph558.i.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %iter.check227
  br i1 %min.iters.check214, label %vec.epilog.ph231, label %vector.body217

vector.body217:                                   ; preds = %vector.main.loop.iter.check213, %vector.body217
  %index218 = phi i64 [ %index.next223, %vector.body217 ], [ 0, %vector.main.loop.iter.check213 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index218 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  %wide.load219 = load <32 x i8>, ptr %i.gx, align 1, !tbaa !29, !alias.scope !962
  %wide.load220 = load <32 x i8>, ptr %i.gy, align 1, !tbaa !29, !alias.scope !962
  %wide.load221 = load <32 x i8>, ptr %i.gz, align 1, !tbaa !29, !alias.scope !962
  %wide.load222 = load <32 x i8>, ptr %i.ha, align 1, !tbaa !29, !alias.scope !962
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index218 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  store <32 x i8> %wide.load219, ptr %i.hb, align 1, !tbaa !29, !alias.scope !963, !noalias !962
  store <32 x i8> %wide.load220, ptr %i.hc, align 1, !tbaa !29, !alias.scope !963, !noalias !962
  store <32 x i8> %wide.load221, ptr %i.hd, align 1, !tbaa !29, !alias.scope !963, !noalias !962
  store <32 x i8> %wide.load222, ptr %i.he, align 1, !tbaa !29, !alias.scope !963, !noalias !962
  %index.next223 = add nuw i64 %index218, 128     ; 2 uses
  %i.hf = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.hf, label %middle.block224, label %vector.body217, !llvm.loop !860

middle.block224:                                  ; preds = %vector.body217
  br i1 %cmp.n225, label %.preheader460.i, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block224
  br i1 %min.epilog.iters.check230, label %.lr.ph558.i.preheader, label %vec.epilog.ph231, !prof !93

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check229
  %vec.epilog.resume.val226 = phi i64 [ %n.vec216, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check213 ]
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph231
  %index234 = phi i64 [ %vec.epilog.resume.val226, %vec.epilog.ph231 ], [ %index.next236, %vec.epilog.vector.body233 ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index234
  %wide.load235 = load <8 x i8>, ptr %i.hg, align 1, !tbaa !29, !alias.scope !962
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index234
  store <8 x i8> %wide.load235, ptr %i.hh, align 1, !tbaa !29, !alias.scope !963, !noalias !962
  %index.next236 = add nuw i64 %index234, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next236, %n.vec232
  br i1 %i.hi, label %vec.epilog.middle.block237, label %vec.epilog.vector.body233, !llvm.loop !861

vec.epilog.middle.block237:                       ; preds = %vec.epilog.vector.body233
  br i1 %cmp.n238, label %.preheader460.i, label %.lr.ph558.i.preheader

.lr.ph558.i.preheader:                            ; preds = %iter.check227, %vec.epilog.iter.check229, %vec.epilog.middle.block237
  %.1557.i.ph = phi i64 [ 0, %iter.check227 ], [ %n.vec232, %vec.epilog.middle.block237 ], [ %n.vec216, %vec.epilog.iter.check229 ] ; 3 uses
  br i1 %lcmp.mod1323.not, label %.lr.ph558.i.prol.loopexit, label %.lr.ph558.i.prol

.lr.ph558.i.prol:                                 ; preds = %.lr.ph558.i.preheader, %.lr.ph558.i.prol
  %.1557.i.prol = phi i64 [ %i.hm, %.lr.ph558.i.prol ], [ %.1557.i.ph, %.lr.ph558.i.preheader ] ; 3 uses
  %prol.iter1324 = phi i64 [ %prol.iter1324.next, %.lr.ph558.i.prol ], [ 0, %.lr.ph558.i.preheader ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.1557.i.prol
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !29
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.1557.i.prol
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !29
  %i.hm = add nuw nsw i64 %.1557.i.prol, 1        ; 2 uses
  %prol.iter1324.next = add i64 %prol.iter1324, 1 ; 2 uses
  %prol.iter1324.cmp.not = icmp eq i64 %prol.iter1324.next, %xtraiter1322
  br i1 %prol.iter1324.cmp.not, label %.lr.ph558.i.prol.loopexit, label %.lr.ph558.i.prol, !llvm.loop !862

.lr.ph558.i.prol.loopexit:                        ; preds = %.lr.ph558.i.prol, %.lr.ph558.i.preheader
  %.1557.i.unr = phi i64 [ %.1557.i.ph, %.lr.ph558.i.preheader ], [ %i.hm, %.lr.ph558.i.prol ]
  %i.hn = sub nsw i64 %.1557.i.ph, %i.d
  %i.ho = icmp ugt i64 %i.hn, -8
  br i1 %i.ho, label %.preheader460.i, label %.lr.ph558.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not419553.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %brmerge1367 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge1367, label %.lr.ph565.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  %wide.load = load <32 x i8>, ptr %i.hp, align 1, !tbaa !29, !alias.scope !964
  %wide.load154 = load <32 x i8>, ptr %i.hq, align 1, !tbaa !29, !alias.scope !964
  %wide.load155 = load <32 x i8>, ptr %i.hr, align 1, !tbaa !29, !alias.scope !964
  %wide.load156 = load <32 x i8>, ptr %i.hs, align 1, !tbaa !29, !alias.scope !964
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 96
  store <32 x i8> %wide.load, ptr %i.ht, align 1, !tbaa !29, !alias.scope !965, !noalias !964
  store <32 x i8> %wide.load154, ptr %i.hu, align 1, !tbaa !29, !alias.scope !965, !noalias !964
  store <32 x i8> %wide.load155, ptr %i.hv, align 1, !tbaa !29, !alias.scope !965, !noalias !964
  store <32 x i8> %wide.load156, ptr %i.hw, align 1, !tbaa !29, !alias.scope !965, !noalias !964
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !866

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph565.i.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index158
  %wide.load159 = load <8 x i8>, ptr %i.hy, align 1, !tbaa !29, !alias.scope !964
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index158
  store <8 x i8> %wide.load159, ptr %i.hz, align 1, !tbaa !29, !alias.scope !965, !noalias !964
  %index.next160 = add nuw i64 %index158, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next160, %n.vec157
  br i1 %i.ia, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !867

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n161, label %.loopexit, label %.lr.ph565.i.preheader

.lr.ph565.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0382564.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec157, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod1329.not, label %.lr.ph565.i.prol.loopexit, label %.lr.ph565.i.prol

.lr.ph565.i.prol:                                 ; preds = %.lr.ph565.i.preheader, %.lr.ph565.i.prol
  %.0382564.i.prol = phi i64 [ %i.ie, %.lr.ph565.i.prol ], [ %.0382564.i.ph, %.lr.ph565.i.preheader ] ; 3 uses
  %prol.iter1330 = phi i64 [ %prol.iter1330.next, %.lr.ph565.i.prol ], [ 0, %.lr.ph565.i.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.0382564.i.prol
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !29
  %i.id = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0382564.i.prol
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !29
  %i.ie = add nuw nsw i64 %.0382564.i.prol, 1     ; 2 uses
  %prol.iter1330.next = add i64 %prol.iter1330, 1 ; 2 uses
  %prol.iter1330.cmp.not = icmp eq i64 %prol.iter1330.next, %xtraiter1328
  br i1 %prol.iter1330.cmp.not, label %.lr.ph565.i.prol.loopexit, label %.lr.ph565.i.prol, !llvm.loop !868

.lr.ph565.i.prol.loopexit:                        ; preds = %.lr.ph565.i.prol, %.lr.ph565.i.preheader
  %.0382564.i.unr = phi i64 [ %.0382564.i.ph, %.lr.ph565.i.preheader ], [ %i.ie, %.lr.ph565.i.prol ]
  %i.if = sub nsw i64 %.0382564.i.ph, %28
  %i.ig = icmp ugt i64 %i.if, -8
  br i1 %i.ig, label %.loopexit, label %.lr.ph565.i

.lr.ph565.i:                                      ; preds = %.lr.ph565.i.prol.loopexit, %.lr.ph565.i
  %.0382564.i = phi i64 [ %i.jm, %.lr.ph565.i ], [ %.0382564.i.unr, %.lr.ph565.i.prol.loopexit ] ; 10 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.0382564.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !29
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0382564.i
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !29
  %i.ik = add nuw nsw i64 %.0382564.i, 1          ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !29
  %i.in = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ik
  store i8 %i.im, ptr %i.in, align 1, !tbaa !29
  %i.io = add nuw nsw i64 %.0382564.i, 2          ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !29
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.io
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !29
  %i.is = add nuw nsw i64 %.0382564.i, 3          ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !29
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.is
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !29
  %i.iw = add nuw nsw i64 %.0382564.i, 4          ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !29
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.iw
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !29
  %i.ja = add nuw nsw i64 %.0382564.i, 5          ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !29
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !29
  %i.je = add nuw nsw i64 %.0382564.i, 6          ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !29
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !29
  %i.ji = add nuw nsw i64 %.0382564.i, 7          ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !29
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !29
  %i.jm = add nuw nsw i64 %.0382564.i, 8          ; 2 uses
  %.not423.i.7 = icmp eq i64 %i.jm, %i.n
  br i1 %.not423.i.7, label %.loopexit, label %.lr.ph565.i, !llvm.loop !869

.preheader460.i:                                  ; preds = %.lr.ph558.i.prol.loopexit, %.lr.ph558.i, %middle.block224, %vec.epilog.middle.block237, %.preheader462.i
  br i1 %.not410514.i, label %.loopexit, label %iter.check190

iter.check190:                                    ; preds = %.preheader460.i
  %brmerge1368 = select i1 %min.iters.check174, i1 true, i1 %conflict.rdx
  br i1 %brmerge1368, label %.lr.ph562.i.preheader, label %vector.main.loop.iter.check175

vector.main.loop.iter.check175:                   ; preds = %iter.check190
  br i1 %min.iters.check176, label %vec.epilog.ph194, label %vector.body179

vector.body179:                                   ; preds = %vector.main.loop.iter.check175, %vector.body179
  %index180 = phi i64 [ %index.next185, %vector.body179 ], [ 0, %vector.main.loop.iter.check175 ] ; 3 uses
  %i.jn = add i64 %index180, %i.d                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %wide.load181 = load <32 x i8>, ptr %i.jo, align 1, !tbaa !29, !alias.scope !966
  %wide.load182 = load <32 x i8>, ptr %i.jp, align 1, !tbaa !29, !alias.scope !966
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index180 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %wide.load183 = load <32 x i8>, ptr %i.jq, align 1, !tbaa !29, !alias.scope !967
  %wide.load184 = load <32 x i8>, ptr %i.jr, align 1, !tbaa !29, !alias.scope !967
  %i.js = add <32 x i8> %wide.load183, %wide.load181
  %i.jt = add <32 x i8> %wide.load184, %wide.load182
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jn ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store <32 x i8> %i.js, ptr %i.ju, align 1, !tbaa !29, !alias.scope !968, !noalias !969
  store <32 x i8> %i.jt, ptr %i.jv, align 1, !tbaa !29, !alias.scope !968, !noalias !969
  %index.next185 = add nuw i64 %index180, 64      ; 2 uses
  %i.jw = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.jw, label %middle.block186, label %vector.body179, !llvm.loop !874

middle.block186:                                  ; preds = %vector.body179
  br i1 %cmp.n187, label %.loopexit, label %vec.epilog.iter.check192

vec.epilog.iter.check192:                         ; preds = %middle.block186
  br i1 %min.epilog.iters.check193, label %.lr.ph562.i.preheader, label %vec.epilog.ph194, !prof !85

vec.epilog.ph194:                                 ; preds = %vector.main.loop.iter.check175, %vec.epilog.iter.check192
  %vec.epilog.resume.val188 = phi i64 [ %n.vec178, %vec.epilog.iter.check192 ], [ 0, %vector.main.loop.iter.check175 ]
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph194
  %index197 = phi i64 [ %vec.epilog.resume.val188, %vec.epilog.ph194 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 3 uses
  %i.jx = add i64 %index197, %i.d                 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.jx
  %wide.load198 = load <8 x i8>, ptr %i.jy, align 1, !tbaa !29, !alias.scope !966
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index197
  %wide.load199 = load <8 x i8>, ptr %i.jz, align 1, !tbaa !29, !alias.scope !967
  %i.ka = add <8 x i8> %wide.load199, %wide.load198
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jx
  store <8 x i8> %i.ka, ptr %i.kb, align 1, !tbaa !29, !alias.scope !968, !noalias !969
  %index.next200 = add nuw i64 %index197, 8       ; 2 uses
  %i.kc = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.kc, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !875

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  br i1 %cmp.n202, label %.loopexit, label %.lr.ph562.i.preheader

.lr.ph562.i.preheader:                            ; preds = %iter.check190, %vec.epilog.iter.check192, %vec.epilog.middle.block201
  %.2561.i.ph = phi i64 [ %i.d, %iter.check190 ], [ %i.gl, %vec.epilog.middle.block201 ], [ %i.gk, %vec.epilog.iter.check192 ] ; 4 uses
  %.0383560.i.ph = phi i64 [ 0, %iter.check190 ], [ %n.vec195, %vec.epilog.middle.block201 ], [ %n.vec178, %vec.epilog.iter.check192 ] ; 2 uses
  %i.kd = sub i64 %25, %.2561.i.ph
  %xtraiter1325 = and i64 %i.kd, 3                ; 2 uses
  %lcmp.mod1326.not = icmp eq i64 %xtraiter1325, 0
  br i1 %lcmp.mod1326.not, label %.lr.ph562.i.prol.loopexit, label %.lr.ph562.i.prol

.lr.ph562.i.prol:                                 ; preds = %.lr.ph562.i.preheader, %.lr.ph562.i.prol
  %.2561.i.prol = phi i64 [ %i.kk, %.lr.ph562.i.prol ], [ %.2561.i.ph, %.lr.ph562.i.preheader ] ; 3 uses
  %.0383560.i.prol = phi i64 [ %i.kl, %.lr.ph562.i.prol ], [ %.0383560.i.ph, %.lr.ph562.i.preheader ] ; 2 uses
  %prol.iter1327 = phi i64 [ %prol.iter1327.next, %.lr.ph562.i.prol ], [ 0, %.lr.ph562.i.preheader ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.2561.i.prol
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !29
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0383560.i.prol
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !29
  %i.ki = add i8 %i.kh, %i.kf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.2561.i.prol
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !29
  %i.kk = add i64 %.2561.i.prol, 1                ; 2 uses
  %i.kl = add nuw i64 %.0383560.i.prol, 1         ; 2 uses
  %prol.iter1327.next = add i64 %prol.iter1327, 1 ; 2 uses
  %prol.iter1327.cmp.not = icmp eq i64 %prol.iter1327.next, %xtraiter1325
  br i1 %prol.iter1327.cmp.not, label %.lr.ph562.i.prol.loopexit, label %.lr.ph562.i.prol, !llvm.loop !876

.lr.ph562.i.prol.loopexit:                        ; preds = %.lr.ph562.i.prol, %.lr.ph562.i.preheader
  %.2561.i.unr = phi i64 [ %.2561.i.ph, %.lr.ph562.i.preheader ], [ %i.kk, %.lr.ph562.i.prol ]
  %.0383560.i.unr = phi i64 [ %.0383560.i.ph, %.lr.ph562.i.preheader ], [ %i.kl, %.lr.ph562.i.prol ]
  %i.km = sub i64 %.2561.i.ph, %26
  %i.kn = icmp ugt i64 %i.km, -4
  br i1 %i.kn, label %.loopexit, label %.lr.ph562.i

.lr.ph558.i:                                      ; preds = %.lr.ph558.i.prol.loopexit, %.lr.ph558.i
  %.1557.i = phi i64 [ %i.lt, %.lr.ph558.i ], [ %.1557.i.unr, %.lr.ph558.i.prol.loopexit ] ; 10 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.1557.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !29
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.1557.i
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !29
  %i.kr = add nuw nsw i64 %.1557.i, 1             ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !29
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.kr
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !29
  %i.kv = add nuw nsw i64 %.1557.i, 2             ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !29
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.kv
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !29
  %i.kz = add nuw nsw i64 %.1557.i, 3             ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !29
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.kz
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !29
  %i.ld = add nuw nsw i64 %.1557.i, 4             ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !29
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ld
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !29
  %i.lh = add nuw nsw i64 %.1557.i, 5             ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !29
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.lh
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !29
  %i.ll = add nuw nsw i64 %.1557.i, 6             ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !29
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ll
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !29
  %i.lp = add nuw nsw i64 %.1557.i, 7             ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !29
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.lp
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !29
  %i.lt = add nuw nsw i64 %.1557.i, 8             ; 2 uses
  %.not421.i.7 = icmp eq i64 %i.lt, %i.d
  br i1 %.not421.i.7, label %.preheader460.i, label %.lr.ph558.i, !llvm.loop !877

.lr.ph562.i:                                      ; preds = %.lr.ph562.i.prol.loopexit, %.lr.ph562.i
  %.2561.i = phi i64 [ %i.my, %.lr.ph562.i ], [ %.2561.i.unr, %.lr.ph562.i.prol.loopexit ] ; 6 uses
  %.0383560.i = phi i64 [ %i.mz, %.lr.ph562.i ], [ %.0383560.i.unr, %.lr.ph562.i.prol.loopexit ] ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.2561.i
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !29
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0383560.i
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !29
  %i.ly = add i8 %i.lx, %i.lv
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.2561.i
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !29
  %i.ma = add i64 %.2561.i, 1                     ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !29
  %i.md = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0383560.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !29
  %i.mg = add i8 %i.mf, %i.mc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ma
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !29
  %i.mi = add i64 %.2561.i, 2                     ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !29
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0383560.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !29
  %i.mo = add i8 %i.mn, %i.mk
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.mi
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !29
  %i.mq = add i64 %.2561.i, 3                     ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !29
  %i.mt = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0383560.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 3
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !29
  %i.mw = add i8 %i.mv, %i.ms
  %i.mx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.mq
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !29
  %i.my = add i64 %.2561.i, 4                     ; 2 uses
  %i.mz = add nuw i64 %.0383560.i, 4
  %.not422.i.3 = icmp eq i64 %i.my, %i.n
  br i1 %.not422.i.3, label %.loopexit, label %.lr.ph562.i, !llvm.loop !878

bb.c:                                             ; preds = %bb.b
  %.not418.i = icmp eq ptr %.02771, null
  br i1 %.not418.i, label %.preheader463.i, label %.preheader465.i

.preheader465.i:                                  ; preds = %bb.c
  br i1 %.not419553.i, label %.loopexit, label %iter.check306

iter.check306:                                    ; preds = %.preheader465.i
  br i1 %min.iters.check287, label %.lr.ph552.i.preheader, label %vector.memcheck275

vector.memcheck275:                               ; preds = %iter.check306
  %scevgep279 = getelementptr i8, ptr %.02771, i64 %i.n
  %bound0283 = icmp ult ptr %0, %scevgep279
  %bound1284 = icmp ult ptr %.02771, %scevgep276
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %found.conflict282, %found.conflict285
  br i1 %conflict.rdx286, label %.lr.ph552.i.preheader, label %vector.main.loop.iter.check288

vector.main.loop.iter.check288:                   ; preds = %vector.memcheck275
  br i1 %min.iters.check289, label %vec.epilog.ph310, label %vector.body292

vector.body292:                                   ; preds = %vector.main.loop.iter.check288, %vector.body292
  %index293 = phi i64 [ %index.next302, %vector.body292 ], [ 0, %vector.main.loop.iter.check288 ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index293 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 96
  %wide.load294 = load <32 x i8>, ptr %i.na, align 1, !tbaa !29, !alias.scope !970
  %wide.load295 = load <32 x i8>, ptr %i.nb, align 1, !tbaa !29, !alias.scope !970
  %wide.load296 = load <32 x i8>, ptr %i.nc, align 1, !tbaa !29, !alias.scope !970
  %wide.load297 = load <32 x i8>, ptr %i.nd, align 1, !tbaa !29, !alias.scope !970
  %i.ne = getelementptr inbounds nuw i8, ptr %.02771, i64 %index293 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 96
  %wide.load298 = load <32 x i8>, ptr %i.ne, align 1, !tbaa !29, !alias.scope !971
  %wide.load299 = load <32 x i8>, ptr %i.nf, align 1, !tbaa !29, !alias.scope !971
  %wide.load300 = load <32 x i8>, ptr %i.ng, align 1, !tbaa !29, !alias.scope !971
  %wide.load301 = load <32 x i8>, ptr %i.nh, align 1, !tbaa !29, !alias.scope !971
  %i.ni = add <32 x i8> %wide.load298, %wide.load294
  %i.nj = add <32 x i8> %wide.load299, %wide.load295
  %i.nk = add <32 x i8> %wide.load300, %wide.load296
  %i.nl = add <32 x i8> %wide.load301, %wide.load297
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index293 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 64
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 96
  store <32 x i8> %i.ni, ptr %i.nm, align 1, !tbaa !29, !alias.scope !972, !noalias !973
  store <32 x i8> %i.nj, ptr %i.nn, align 1, !tbaa !29, !alias.scope !972, !noalias !973
  store <32 x i8> %i.nk, ptr %i.no, align 1, !tbaa !29, !alias.scope !972, !noalias !973
  store <32 x i8> %i.nl, ptr %i.np, align 1, !tbaa !29, !alias.scope !972, !noalias !973
  %index.next302 = add nuw i64 %index293, 128     ; 2 uses
  %i.nq = icmp eq i64 %index.next302, %n.vec291
  br i1 %i.nq, label %middle.block303, label %vector.body292, !llvm.loop !883

middle.block303:                                  ; preds = %vector.body292
  br i1 %cmp.n304, label %.loopexit, label %vec.epilog.iter.check308

vec.epilog.iter.check308:                         ; preds = %middle.block303
  br i1 %min.epilog.iters.check309, label %.lr.ph552.i.preheader, label %vec.epilog.ph310, !prof !93

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check288, %vec.epilog.iter.check308
  %vec.epilog.resume.val305 = phi i64 [ %n.vec291, %vec.epilog.iter.check308 ], [ 0, %vector.main.loop.iter.check288 ]
  br label %vec.epilog.vector.body312

vec.epilog.vector.body312:                        ; preds = %vec.epilog.vector.body312, %vec.epilog.ph310
  %index313 = phi i64 [ %vec.epilog.resume.val305, %vec.epilog.ph310 ], [ %index.next316, %vec.epilog.vector.body312 ] ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index313
  %wide.load314 = load <8 x i8>, ptr %i.nr, align 1, !tbaa !29, !alias.scope !970
  %i.ns = getelementptr inbounds nuw i8, ptr %.02771, i64 %index313
  %wide.load315 = load <8 x i8>, ptr %i.ns, align 1, !tbaa !29, !alias.scope !971
  %i.nt = add <8 x i8> %wide.load315, %wide.load314
  %i.nu = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index313
  store <8 x i8> %i.nt, ptr %i.nu, align 1, !tbaa !29, !alias.scope !972, !noalias !973
  %index.next316 = add nuw i64 %index313, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next316, %n.vec311
  br i1 %i.nv, label %vec.epilog.middle.block317, label %vec.epilog.vector.body312, !llvm.loop !884

vec.epilog.middle.block317:                       ; preds = %vec.epilog.vector.body312
  br i1 %cmp.n318, label %.loopexit, label %.lr.ph552.i.preheader

.lr.ph552.i.preheader:                            ; preds = %iter.check306, %vector.memcheck275, %vec.epilog.iter.check308, %vec.epilog.middle.block317
  %.3551.i.ph = phi i64 [ 0, %iter.check306 ], [ 0, %vector.memcheck275 ], [ %n.vec291, %vec.epilog.iter.check308 ], [ %n.vec311, %vec.epilog.middle.block317 ] ; 3 uses
  br i1 %lcmp.mod1317.not, label %.lr.ph552.i.prol.loopexit, label %.lr.ph552.i.prol

.lr.ph552.i.prol:                                 ; preds = %.lr.ph552.i.preheader, %.lr.ph552.i.prol
  %.3551.i.prol = phi i64 [ %i.oc, %.lr.ph552.i.prol ], [ %.3551.i.ph, %.lr.ph552.i.preheader ] ; 4 uses
  %prol.iter1318 = phi i64 [ %prol.iter1318.next, %.lr.ph552.i.prol ], [ 0, %.lr.ph552.i.preheader ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.3551.i.prol
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !29
  %i.ny = getelementptr inbounds nuw i8, ptr %.02771, i64 %.3551.i.prol
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !29
  %i.oa = add i8 %i.nz, %i.nx
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.3551.i.prol
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !29
  %i.oc = add nuw nsw i64 %.3551.i.prol, 1        ; 2 uses
  %prol.iter1318.next = add i64 %prol.iter1318, 1 ; 2 uses
  %prol.iter1318.cmp.not = icmp eq i64 %prol.iter1318.next, %xtraiter1316
  br i1 %prol.iter1318.cmp.not, label %.lr.ph552.i.prol.loopexit, label %.lr.ph552.i.prol, !llvm.loop !885

.lr.ph552.i.prol.loopexit:                        ; preds = %.lr.ph552.i.prol, %.lr.ph552.i.preheader
  %.3551.i.unr = phi i64 [ %.3551.i.ph, %.lr.ph552.i.preheader ], [ %i.oc, %.lr.ph552.i.prol ]
  %i.od = sub nsw i64 %.3551.i.ph, %22
  %i.oe = icmp ugt i64 %i.od, -8
  br i1 %i.oe, label %.loopexit, label %.lr.ph552.i

.preheader463.i:                                  ; preds = %bb.c
  br i1 %.not419553.i, label %.loopexit, label %iter.check262

iter.check262:                                    ; preds = %.preheader463.i
  %brmerge1369 = select i1 %min.iters.check247, i1 true, i1 %found.conflict246
  br i1 %brmerge1369, label %.lr.ph555.i.preheader, label %vector.main.loop.iter.check248

vector.main.loop.iter.check248:                   ; preds = %iter.check262
  br i1 %min.iters.check249, label %vec.epilog.ph266, label %vector.body252

vector.body252:                                   ; preds = %vector.main.loop.iter.check248, %vector.body252
  %index253 = phi i64 [ %index.next258, %vector.body252 ], [ 0, %vector.main.loop.iter.check248 ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index253 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 96
  %wide.load254 = load <32 x i8>, ptr %i.of, align 1, !tbaa !29, !alias.scope !974
  %wide.load255 = load <32 x i8>, ptr %i.og, align 1, !tbaa !29, !alias.scope !974
  %wide.load256 = load <32 x i8>, ptr %i.oh, align 1, !tbaa !29, !alias.scope !974
  %wide.load257 = load <32 x i8>, ptr %i.oi, align 1, !tbaa !29, !alias.scope !974
  %i.oj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index253 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 32
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 96
  store <32 x i8> %wide.load254, ptr %i.oj, align 1, !tbaa !29, !alias.scope !975, !noalias !974
  store <32 x i8> %wide.load255, ptr %i.ok, align 1, !tbaa !29, !alias.scope !975, !noalias !974
  store <32 x i8> %wide.load256, ptr %i.ol, align 1, !tbaa !29, !alias.scope !975, !noalias !974
  store <32 x i8> %wide.load257, ptr %i.om, align 1, !tbaa !29, !alias.scope !975, !noalias !974
  %index.next258 = add nuw i64 %index253, 128     ; 2 uses
  %i.on = icmp eq i64 %index.next258, %n.vec251
  br i1 %i.on, label %middle.block259, label %vector.body252, !llvm.loop !889

middle.block259:                                  ; preds = %vector.body252
  br i1 %cmp.n260, label %.loopexit, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block259
  br i1 %min.epilog.iters.check265, label %.lr.ph555.i.preheader, label %vec.epilog.ph266, !prof !93

vec.epilog.ph266:                                 ; preds = %vector.main.loop.iter.check248, %vec.epilog.iter.check264
  %vec.epilog.resume.val261 = phi i64 [ %n.vec251, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check248 ]
  br label %vec.epilog.vector.body268

vec.epilog.vector.body268:                        ; preds = %vec.epilog.vector.body268, %vec.epilog.ph266
  %index269 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph266 ], [ %index.next271, %vec.epilog.vector.body268 ] ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index269
  %wide.load270 = load <8 x i8>, ptr %i.oo, align 1, !tbaa !29, !alias.scope !974
  %i.op = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index269
  store <8 x i8> %wide.load270, ptr %i.op, align 1, !tbaa !29, !alias.scope !975, !noalias !974
  %index.next271 = add nuw i64 %index269, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next271, %n.vec267
  br i1 %i.oq, label %vec.epilog.middle.block272, label %vec.epilog.vector.body268, !llvm.loop !890

vec.epilog.middle.block272:                       ; preds = %vec.epilog.vector.body268
  br i1 %cmp.n273, label %.loopexit, label %.lr.ph555.i.preheader

.lr.ph555.i.preheader:                            ; preds = %iter.check262, %vec.epilog.iter.check264, %vec.epilog.middle.block272
  %.4554.i.ph = phi i64 [ 0, %iter.check262 ], [ %n.vec267, %vec.epilog.middle.block272 ], [ %n.vec251, %vec.epilog.iter.check264 ] ; 3 uses
  br i1 %lcmp.mod1320.not, label %.lr.ph555.i.prol.loopexit, label %.lr.ph555.i.prol

.lr.ph555.i.prol:                                 ; preds = %.lr.ph555.i.preheader, %.lr.ph555.i.prol
  %.4554.i.prol = phi i64 [ %i.ou, %.lr.ph555.i.prol ], [ %.4554.i.ph, %.lr.ph555.i.preheader ] ; 3 uses
  %prol.iter1321 = phi i64 [ %prol.iter1321.next, %.lr.ph555.i.prol ], [ 0, %.lr.ph555.i.preheader ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.4554.i.prol
  %i.os = load i8, ptr %i.or, align 1, !tbaa !29
  %i.ot = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.4554.i.prol
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !29
  %i.ou = add nuw nsw i64 %.4554.i.prol, 1        ; 2 uses
  %prol.iter1321.next = add i64 %prol.iter1321, 1 ; 2 uses
  %prol.iter1321.cmp.not = icmp eq i64 %prol.iter1321.next, %xtraiter1319
  br i1 %prol.iter1321.cmp.not, label %.lr.ph555.i.prol.loopexit, label %.lr.ph555.i.prol, !llvm.loop !891

.lr.ph555.i.prol.loopexit:                        ; preds = %.lr.ph555.i.prol, %.lr.ph555.i.preheader
  %.4554.i.unr = phi i64 [ %.4554.i.ph, %.lr.ph555.i.preheader ], [ %i.ou, %.lr.ph555.i.prol ]
  %i.ov = sub nsw i64 %.4554.i.ph, %24
  %i.ow = icmp ugt i64 %i.ov, -8
  br i1 %i.ow, label %.loopexit, label %.lr.ph555.i

.lr.ph552.i:                                      ; preds = %.lr.ph552.i.prol.loopexit, %.lr.ph552.i
  %.3551.i = phi i64 [ %i.ra, %.lr.ph552.i ], [ %.3551.i.unr, %.lr.ph552.i.prol.loopexit ] ; 11 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.3551.i
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !29
  %i.oz = getelementptr inbounds nuw i8, ptr %.02771, i64 %.3551.i
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !29
  %i.pb = add i8 %i.pa, %i.oy
  %i.pc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.3551.i
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !29
  %i.pd = add nuw nsw i64 %.3551.i, 1             ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !29
  %i.pg = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.pd
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !29
  %i.pi = add i8 %i.ph, %i.pf
  %i.pj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.pd
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !29
  %i.pk = add nuw nsw i64 %.3551.i, 2             ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !29
  %i.pn = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.pk
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !29
  %i.pp = add i8 %i.po, %i.pm
  %i.pq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.pk
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !29
  %i.pr = add nuw nsw i64 %.3551.i, 3             ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !29
  %i.pu = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.pr
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !29
  %i.pw = add i8 %i.pv, %i.pt
  %i.px = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.pr
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !29
  %i.py = add nuw nsw i64 %.3551.i, 4             ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !29
  %i.qb = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.py
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !29
  %i.qd = add i8 %i.qc, %i.qa
  %i.qe = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.py
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !29
  %i.qf = add nuw nsw i64 %.3551.i, 5             ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !29
  %i.qi = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.qf
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !29
  %i.qk = add i8 %i.qj, %i.qh
  %i.ql = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.qf
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !29
  %i.qm = add nuw nsw i64 %.3551.i, 6             ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !29
  %i.qp = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.qm
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !29
  %i.qr = add i8 %i.qq, %i.qo
  %i.qs = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.qm
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !29
  %i.qt = add nuw nsw i64 %.3551.i, 7             ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !29
  %i.qw = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.qt
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !29
  %i.qy = add i8 %i.qx, %i.qv
  %i.qz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.qt
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !29
  %i.ra = add nuw nsw i64 %.3551.i, 8             ; 2 uses
  %.not420.i.7 = icmp eq i64 %i.ra, %i.n
  br i1 %.not420.i.7, label %.loopexit, label %.lr.ph552.i, !llvm.loop !892

.lr.ph555.i:                                      ; preds = %.lr.ph555.i.prol.loopexit, %.lr.ph555.i
  %.4554.i = phi i64 [ %i.sg, %.lr.ph555.i ], [ %.4554.i.unr, %.lr.ph555.i.prol.loopexit ] ; 10 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.4554.i
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !29
  %i.rd = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.4554.i
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !29
  %i.re = add nuw nsw i64 %.4554.i, 1             ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !29
  %i.rh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.re
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !29
  %i.ri = add nuw nsw i64 %.4554.i, 2             ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !29
  %i.rl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ri
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !29
  %i.rm = add nuw nsw i64 %.4554.i, 3             ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !29
  %i.rp = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.rm
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !29
  %i.rq = add nuw nsw i64 %.4554.i, 4             ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !29
  %i.rt = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.rq
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !29
  %i.ru = add nuw nsw i64 %.4554.i, 5             ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ru
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !29
  %i.rx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ru
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !29
  %i.ry = add nuw nsw i64 %.4554.i, 6             ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !29
  %i.sb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ry
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !29
  %i.sc = add nuw nsw i64 %.4554.i, 7             ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !29
  %i.sf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.sc
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !29
  %i.sg = add nuw nsw i64 %.4554.i, 8             ; 2 uses
  %.not419.i.7 = icmp eq i64 %i.sg, %i.n
  br i1 %.not419.i.7, label %.loopexit, label %.lr.ph555.i, !llvm.loop !893

bb.d:                                             ; preds = %bb.b
  %.not413.i = icmp eq ptr %.02771, null
  br i1 %.not413.i, label %.preheader469.i, label %.preheader477.i

.preheader477.i:                                  ; preds = %bb.d
  br i1 %.not409511.i, label %.loopexit472.i, label %iter.check718

iter.check718:                                    ; preds = %.preheader477.i
  br i1 %min.iters.check699, label %.lr.ph520.i.preheader, label %vector.memcheck687

vector.memcheck687:                               ; preds = %iter.check718
  %scevgep691 = getelementptr i8, ptr %.02771, i64 %i.d
  %bound0695 = icmp ult ptr %0, %scevgep691
  %bound1696 = icmp ult ptr %.02771, %scevgep688
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %found.conflict694, %found.conflict697
  br i1 %conflict.rdx698, label %.lr.ph520.i.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %vector.memcheck687
  br i1 %min.iters.check701, label %vec.epilog.ph722, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next714, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index705 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 96
  %wide.load706 = load <32 x i8>, ptr %i.sh, align 1, !tbaa !29, !alias.scope !976
  %wide.load707 = load <32 x i8>, ptr %i.si, align 1, !tbaa !29, !alias.scope !976
  %wide.load708 = load <32 x i8>, ptr %i.sj, align 1, !tbaa !29, !alias.scope !976
  %wide.load709 = load <32 x i8>, ptr %i.sk, align 1, !tbaa !29, !alias.scope !976
  %i.sl = getelementptr inbounds nuw i8, ptr %.02771, i64 %index705 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 96
  %wide.load710 = load <32 x i8>, ptr %i.sl, align 1, !tbaa !29, !alias.scope !977
  %wide.load711 = load <32 x i8>, ptr %i.sm, align 1, !tbaa !29, !alias.scope !977
  %wide.load712 = load <32 x i8>, ptr %i.sn, align 1, !tbaa !29, !alias.scope !977
  %wide.load713 = load <32 x i8>, ptr %i.so, align 1, !tbaa !29, !alias.scope !977
  %i.sp = lshr <32 x i8> %wide.load710, splat (i8 1)
  %i.sq = lshr <32 x i8> %wide.load711, splat (i8 1)
  %i.sr = lshr <32 x i8> %wide.load712, splat (i8 1)
  %i.ss = lshr <32 x i8> %wide.load713, splat (i8 1)
  %i.st = add <32 x i8> %i.sp, %wide.load706
  %i.su = add <32 x i8> %i.sq, %wide.load707
  %i.sv = add <32 x i8> %i.sr, %wide.load708
  %i.sw = add <32 x i8> %i.ss, %wide.load709
  %i.sx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index705 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 96
  store <32 x i8> %i.st, ptr %i.sx, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  store <32 x i8> %i.su, ptr %i.sy, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  store <32 x i8> %i.sv, ptr %i.sz, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  store <32 x i8> %i.sw, ptr %i.ta, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  %index.next714 = add nuw i64 %index705, 128     ; 2 uses
  %i.tb = icmp eq i64 %index.next714, %n.vec703
  br i1 %i.tb, label %middle.block715, label %vector.body704, !llvm.loop !898

middle.block715:                                  ; preds = %vector.body704
  br i1 %cmp.n716, label %._crit_edge521.i, label %vec.epilog.iter.check720

vec.epilog.iter.check720:                         ; preds = %middle.block715
  br i1 %min.epilog.iters.check721, label %.lr.ph520.i.preheader, label %vec.epilog.ph722, !prof !93

vec.epilog.ph722:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check720
  %vec.epilog.resume.val717 = phi i64 [ %n.vec703, %vec.epilog.iter.check720 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body724

vec.epilog.vector.body724:                        ; preds = %vec.epilog.vector.body724, %vec.epilog.ph722
  %index725 = phi i64 [ %vec.epilog.resume.val717, %vec.epilog.ph722 ], [ %index.next728, %vec.epilog.vector.body724 ] ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index725
  %wide.load726 = load <8 x i8>, ptr %i.tc, align 1, !tbaa !29, !alias.scope !976
  %i.td = getelementptr inbounds nuw i8, ptr %.02771, i64 %index725
  %wide.load727 = load <8 x i8>, ptr %i.td, align 1, !tbaa !29, !alias.scope !977
  %i.te = lshr <8 x i8> %wide.load727, splat (i8 1)
  %i.tf = add <8 x i8> %i.te, %wide.load726
  %i.tg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index725
  store <8 x i8> %i.tf, ptr %i.tg, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  %index.next728 = add nuw i64 %index725, 8       ; 2 uses
  %i.th = icmp eq i64 %index.next728, %n.vec723
  br i1 %i.th, label %vec.epilog.middle.block729, label %vec.epilog.vector.body724, !llvm.loop !899

end_hunk_0
begin_hunk_1_@_ZL8unfilterPhPKhjjj:bb.a

bb.e:                                             ; preds = %._crit_edge521.i
  br i1 %i.r, label %.preheader473.i, label %bb.f

.preheader473.i:                                  ; preds = %bb.e
  br i1 %i.w, label %.lr.ph530.i, label %.loopexit472.i

.lr.ph530.i:                                      ; preds = %.preheader473.i, %.lr.ph530.i
  %i.yz = phi i64 [ %i.aaq, %.lr.ph530.i ], [ 5, %.preheader473.i ] ; 3 uses
  %.7529.i = phi i64 [ %i.aao, %.lr.ph530.i ], [ 3, %.preheader473.i ] ; 6 uses
  %.1385528.i = phi i64 [ %i.aap, %.lr.ph530.i ], [ 0, %.preheader473.i ] ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.7529.i
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !29
  %i.zc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.1385528.i ; 3 uses
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !29
  %i.ze = getelementptr inbounds nuw i8, ptr %.02771, i64 %.7529.i
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !29
  %i.zg = add nuw nsw i64 %.7529.i, 1             ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !29
  %i.zj = getelementptr i8, ptr %i.zc, i64 1
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !29
  %i.zl = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.zg
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !29
  %i.zn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.yz
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !29
  %i.zp = getelementptr i8, ptr %i.zc, i64 2
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !29
  %i.zr = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.yz
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !29
  %i.zt = zext i8 %i.zd to i16
  %i.zu = zext i8 %i.zf to i16
  %i.zv = add nuw nsw i16 %i.zu, %i.zt
  %i.zw = lshr i16 %i.zv, 1
  %i.zx = trunc nuw i16 %i.zw to i8
  %i.zy = add i8 %i.zb, %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.7529.i
  store i8 %i.zy, ptr %i.zz, align 1, !tbaa !29
  %i.aaa = zext i8 %i.zk to i16
  %i.aab = zext i8 %i.zm to i16
  %i.aac = add nuw nsw i16 %i.aab, %i.aaa
  %i.aad = lshr i16 %i.aac, 1
  %i.aae = trunc nuw i16 %i.aad to i8
  %i.aaf = add i8 %i.zi, %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.zg
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !29
  %i.aah = zext i8 %i.zq to i16
  %i.aai = zext i8 %i.zs to i16
  %i.aaj = add nuw nsw i16 %i.aai, %i.aah
  %i.aak = lshr i16 %i.aaj, 1
  %i.aal = trunc nuw i16 %i.aak to i8
  %i.aam = add i8 %i.zo, %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.yz
  store i8 %i.aam, ptr %i.aan, align 1, !tbaa !29
  %i.aao = add nuw nsw i64 %.7529.i, 3            ; 2 uses
  %i.aap = add nuw nsw i64 %.1385528.i, 3         ; 2 uses
  %i.aaq = add nuw nsw i64 %.7529.i, 5            ; 2 uses
  %i.aar = icmp samesign ult i64 %i.aaq, %i.n
  br i1 %i.aar, label %.lr.ph530.i, label %.loopexit472.i, !llvm.loop !913

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond568.i, label %.lr.ph525.i, label %.loopexit472.i

.lr.ph525.i:                                      ; preds = %bb.f, %.lr.ph525.i
  %i.aas = phi i64 [ %i.abv, %.lr.ph525.i ], [ 3, %bb.f ] ; 3 uses
  %.8524.i = phi i64 [ %i.abt, %.lr.ph525.i ], [ 2, %bb.f ] ; 5 uses
  %.2386523.i = phi i64 [ %i.abu, %.lr.ph525.i ], [ 0, %bb.f ] ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.8524.i
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !29
  %i.aav = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.2386523.i ; 2 uses
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !29
  %i.aax = getelementptr inbounds nuw i8, ptr %.02771, i64 %.8524.i
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !29
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aas
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !29
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 1
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !29
  %i.abd = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aas
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !29
  %i.abf = zext i8 %i.aaw to i16
  %i.abg = zext i8 %i.aay to i16
  %i.abh = add nuw nsw i16 %i.abg, %i.abf
  %i.abi = lshr i16 %i.abh, 1
  %i.abj = trunc nuw i16 %i.abi to i8
  %i.abk = add i8 %i.aau, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.8524.i
  store i8 %i.abk, ptr %i.abl, align 1, !tbaa !29
  %i.abm = zext i8 %i.abc to i16
  %i.abn = zext i8 %i.abe to i16
  %i.abo = add nuw nsw i16 %i.abn, %i.abm
  %i.abp = lshr i16 %i.abo, 1
  %i.abq = trunc nuw i16 %i.abp to i8
  %i.abr = add i8 %i.aba, %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aas
  store i8 %i.abr, ptr %i.abs, align 1, !tbaa !29
  %i.abt = add nuw nsw i64 %.8524.i, 2            ; 2 uses
  %i.abu = add nuw nsw i64 %.2386523.i, 2         ; 2 uses
  %i.abv = add nuw nsw i64 %.8524.i, 3            ; 2 uses
  %i.abw = icmp samesign ult i64 %i.abv, %i.n
  br i1 %i.abw, label %.lr.ph525.i, label %.loopexit472.i, !llvm.loop !914

.loopexit472.i:                                   ; preds = %.lr.ph525.i, %.lr.ph530.i, %.lr.ph535.i, %middle.block651, %vec.epilog.middle.block682, %bb.f, %.preheader473.i, %.preheader471.i, %.preheader477.i
  %.3387.i = phi i64 [ 0, %bb.f ], [ %i.yw, %.lr.ph535.i ], [ 0, %.preheader477.i ], [ 0, %.preheader471.i ], [ 0, %.preheader473.i ], [ %i.aap, %.lr.ph530.i ], [ %i.fy, %vec.epilog.middle.block682 ], [ %i.fv, %middle.block651 ], [ %i.abu, %.lr.ph525.i ] ; 7 uses
  %.9.i = phi i64 [ %i.d, %bb.f ], [ %i.yv, %.lr.ph535.i ], [ 0, %.preheader477.i ], [ %i.d, %.preheader471.i ], [ 3, %.preheader473.i ], [ %i.aao, %.lr.ph530.i ], [ %i.ga, %vec.epilog.middle.block682 ], [ %i.fx, %middle.block651 ], [ %i.abt, %.lr.ph525.i ] ; 9 uses
  %.not417538.i = icmp eq i64 %.9.i, %i.n
  br i1 %.not417538.i, label %.loopexit, label %iter.check421

iter.check421:                                    ; preds = %.loopexit472.i
  %i.abx = sub i64 %i.ch, %.9.i                   ; 7 uses
  %min.iters.check405 = icmp ult i64 %i.abx, 8
  br i1 %min.iters.check405, label %.lr.ph542.i.preheader, label %vector.memcheck399

vector.memcheck399:                               ; preds = %iter.check421
  %.reass1366 = add i64 %indvars.iv, %invariant.op1365
  %diff.check = icmp ult i64 %.reass1366, 31
  %i.aby = sub i64 %.3387.i, %.9.i
  %diff.check400 = icmp ugt i64 %i.aby, -32
  %conflict.rdx401 = or i1 %diff.check, %diff.check400
  %i.abz = sub i64 %.02771402, %i.gq
  %diff.check403 = icmp ugt i64 %i.abz, -32
  %conflict.rdx404 = or i1 %conflict.rdx401, %diff.check403
  br i1 %conflict.rdx404, label %.lr.ph542.i.preheader, label %vector.main.loop.iter.check406

vector.main.loop.iter.check406:                   ; preds = %vector.memcheck399
  %min.iters.check407 = icmp ult i64 %i.abx, 32
  br i1 %min.iters.check407, label %vec.epilog.ph425, label %vector.ph408

vector.ph408:                                     ; preds = %vector.main.loop.iter.check406
  %i.aca = and i64 %i.abx, 24
  %n.vec409 = and i64 %i.abx, -32                 ; 5 uses
  %i.acb = add i64 %.9.i, %n.vec409
  %i.acc = add i64 %.3387.i, %n.vec409
  %i.acd = getelementptr i8, ptr %i.gv, i64 %.3387.i
  br label %vector.body410

vector.body410:                                   ; preds = %vector.ph408, %vector.body410
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next415, %vector.body410 ] ; 3 uses
  %i.ace = add i64 %.9.i, %index411               ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ace
  %wide.load412 = load <32 x i8>, ptr %i.acf, align 1, !tbaa !29
  %i.acg = getelementptr i8, ptr %i.acd, i64 %index411
  %wide.load413 = load <32 x i8>, ptr %i.acg, align 1, !tbaa !29
  %i.ach = zext <32 x i8> %wide.load413 to <32 x i16>
  %i.aci = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.ace
  %wide.load414 = load <32 x i8>, ptr %i.aci, align 1, !tbaa !29
  %i.acj = zext <32 x i8> %wide.load414 to <32 x i16>
  %i.ack = add nuw nsw <32 x i16> %i.acj, %i.ach
  %i.acl = lshr <32 x i16> %i.ack, splat (i16 1)
  %i.acm = trunc nuw <32 x i16> %i.acl to <32 x i8>
  %i.acn = add <32 x i8> %wide.load412, %i.acm
  %i.aco = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ace
  store <32 x i8> %i.acn, ptr %i.aco, align 1, !tbaa !29
  %index.next415 = add nuw i64 %index411, 32      ; 2 uses
  %i.acp = icmp eq i64 %index.next415, %n.vec409
  br i1 %i.acp, label %middle.block416, label %vector.body410, !llvm.loop !915

middle.block416:                                  ; preds = %vector.body410
  %cmp.n417 = icmp eq i64 %i.abx, %n.vec409
  br i1 %cmp.n417, label %.loopexit, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block416
  %min.epilog.iters.check424 = icmp eq i64 %i.aca, 0
  br i1 %min.epilog.iters.check424, label %.lr.ph542.i.preheader, label %vec.epilog.ph425, !prof !53

vec.epilog.ph425:                                 ; preds = %vector.main.loop.iter.check406, %vec.epilog.iter.check423
  %vec.epilog.resume.val418 = phi i64 [ %n.vec409, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check406 ]
  %n.vec426 = and i64 %i.abx, -8                  ; 4 uses
  %i.acq = add i64 %.9.i, %n.vec426
  %i.acr = add i64 %.3387.i, %n.vec426
  %i.acs = getelementptr i8, ptr %i.gv, i64 %.3387.i
  br label %vec.epilog.vector.body427

vec.epilog.vector.body427:                        ; preds = %vec.epilog.vector.body427, %vec.epilog.ph425
  %index428 = phi i64 [ %vec.epilog.resume.val418, %vec.epilog.ph425 ], [ %index.next432, %vec.epilog.vector.body427 ] ; 3 uses
  %i.act = add i64 %.9.i, %index428               ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.act
  %wide.load429 = load <8 x i8>, ptr %i.acu, align 1, !tbaa !29
  %i.acv = getelementptr i8, ptr %i.acs, i64 %index428
  %wide.load430 = load <8 x i8>, ptr %i.acv, align 1, !tbaa !29
  %i.acw = zext <8 x i8> %wide.load430 to <8 x i16>
  %i.acx = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.act
  %wide.load431 = load <8 x i8>, ptr %i.acx, align 1, !tbaa !29
  %i.acy = zext <8 x i8> %wide.load431 to <8 x i16>
  %i.acz = add nuw nsw <8 x i16> %i.acy, %i.acw
  %i.ada = lshr <8 x i16> %i.acz, splat (i16 1)
  %i.adb = trunc nuw <8 x i16> %i.ada to <8 x i8>
  %i.adc = add <8 x i8> %wide.load429, %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.act
  store <8 x i8> %i.adc, ptr %i.add, align 1, !tbaa !29
  %index.next432 = add nuw i64 %index428, 8       ; 2 uses
  %i.ade = icmp eq i64 %index.next432, %n.vec426
  br i1 %i.ade, label %vec.epilog.middle.block433, label %vec.epilog.vector.body427, !llvm.loop !916

vec.epilog.middle.block433:                       ; preds = %vec.epilog.vector.body427
  %cmp.n434 = icmp eq i64 %i.abx, %n.vec426
  br i1 %cmp.n434, label %.loopexit, label %.lr.ph542.i.preheader

.lr.ph542.i.preheader:                            ; preds = %iter.check421, %vector.memcheck399, %vec.epilog.iter.check423, %vec.epilog.middle.block433
  %.10540.i.ph = phi i64 [ %.9.i, %iter.check421 ], [ %.9.i, %vector.memcheck399 ], [ %i.acb, %vec.epilog.iter.check423 ], [ %i.acq, %vec.epilog.middle.block433 ] ; 4 uses
  %.4388539.i.ph = phi i64 [ %.3387.i, %iter.check421 ], [ %.3387.i, %vector.memcheck399 ], [ %i.acc, %vec.epilog.iter.check423 ], [ %i.acr, %vec.epilog.middle.block433 ] ; 2 uses
  %i.adf = sub i64 %i.ff, %.10540.i.ph
  %xtraiter1307 = and i64 %i.adf, 3               ; 2 uses
  %lcmp.mod1308.not = icmp eq i64 %xtraiter1307, 0
  br i1 %lcmp.mod1308.not, label %.lr.ph542.i.prol.loopexit, label %.lr.ph542.i.prol

.lr.ph542.i.prol:                                 ; preds = %.lr.ph542.i.preheader, %.lr.ph542.i.prol
  %.10540.i.prol = phi i64 [ %i.adt, %.lr.ph542.i.prol ], [ %.10540.i.ph, %.lr.ph542.i.preheader ] ; 4 uses
  %.4388539.i.prol = phi i64 [ %i.adu, %.lr.ph542.i.prol ], [ %.4388539.i.ph, %.lr.ph542.i.preheader ] ; 2 uses
  %prol.iter1309 = phi i64 [ %prol.iter1309.next, %.lr.ph542.i.prol ], [ 0, %.lr.ph542.i.preheader ]
  %i.adg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.10540.i.prol
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !29
  %i.adi = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.4388539.i.prol
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !29
  %i.adk = zext i8 %i.adj to i16
  %i.adl = getelementptr inbounds nuw i8, ptr %.02771, i64 %.10540.i.prol
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !29
  %i.adn = zext i8 %i.adm to i16
  %i.ado = add nuw nsw i16 %i.adn, %i.adk
  %i.adp = lshr i16 %i.ado, 1
  %i.adq = trunc nuw i16 %i.adp to i8
  %i.adr = add i8 %i.adh, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.10540.i.prol
  store i8 %i.adr, ptr %i.ads, align 1, !tbaa !29
  %i.adt = add i64 %.10540.i.prol, 1              ; 2 uses
  %i.adu = add i64 %.4388539.i.prol, 1            ; 2 uses
  %prol.iter1309.next = add i64 %prol.iter1309, 1 ; 2 uses
  %prol.iter1309.cmp.not = icmp eq i64 %prol.iter1309.next, %xtraiter1307
  br i1 %prol.iter1309.cmp.not, label %.lr.ph542.i.prol.loopexit, label %.lr.ph542.i.prol, !llvm.loop !917

.lr.ph542.i.prol.loopexit:                        ; preds = %.lr.ph542.i.prol, %.lr.ph542.i.preheader
  %.10540.i.unr = phi i64 [ %.10540.i.ph, %.lr.ph542.i.preheader ], [ %i.adt, %.lr.ph542.i.prol ]
  %.4388539.i.unr = phi i64 [ %.4388539.i.ph, %.lr.ph542.i.preheader ], [ %i.adu, %.lr.ph542.i.prol ]
  %i.adv = sub i64 %.10540.i.ph, %18
  %i.adw = icmp ugt i64 %i.adv, -4
  br i1 %i.adw, label %.loopexit, label %.lr.ph542.i

.lr.ph542.i:                                      ; preds = %.lr.ph542.i.prol.loopexit, %.lr.ph542.i
  %.10540.i = phi i64 [ %i.agd, %.lr.ph542.i ], [ %.10540.i.unr, %.lr.ph542.i.prol.loopexit ] ; 7 uses
  %.4388539.i = phi i64 [ %i.age, %.lr.ph542.i ], [ %.4388539.i.unr, %.lr.ph542.i.prol.loopexit ] ; 5 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.10540.i
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !29
  %i.adz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.4388539.i
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !29
  %i.aeb = zext i8 %i.aea to i16
  %i.aec = getelementptr inbounds nuw i8, ptr %.02771, i64 %.10540.i
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !29
  %i.aee = zext i8 %i.aed to i16
  %i.aef = add nuw nsw i16 %i.aee, %i.aeb
  %i.aeg = lshr i16 %i.aef, 1
  %i.aeh = trunc nuw i16 %i.aeg to i8
  %i.aei = add i8 %i.ady, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.10540.i
  store i8 %i.aei, ptr %i.aej, align 1, !tbaa !29
  %i.aek = add i64 %.10540.i, 1                   ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !29
  %i.aen = getelementptr i8, ptr %i.gv, i64 %.4388539.i
  %i.aeo = getelementptr i8, ptr %i.aen, i64 1
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !29
  %i.aeq = zext i8 %i.aep to i16
  %i.aer = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aek
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !29
  %i.aet = zext i8 %i.aes to i16
  %i.aeu = add nuw nsw i16 %i.aet, %i.aeq
  %i.aev = lshr i16 %i.aeu, 1
  %i.aew = trunc nuw i16 %i.aev to i8
  %i.aex = add i8 %i.aem, %i.aew
  %i.aey = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aek
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !29
  %i.aez = add i64 %.10540.i, 2                   ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aez
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !29
  %i.afc = getelementptr i8, ptr %i.gv, i64 %.4388539.i
  %i.afd = getelementptr i8, ptr %i.afc, i64 2
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !29
  %i.aff = zext i8 %i.afe to i16
  %i.afg = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aez
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !29
  %i.afi = zext i8 %i.afh to i16
  %i.afj = add nuw nsw i16 %i.afi, %i.aff
  %i.afk = lshr i16 %i.afj, 1
  %i.afl = trunc nuw i16 %i.afk to i8
  %i.afm = add i8 %i.afb, %i.afl
  %i.afn = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aez
  store i8 %i.afm, ptr %i.afn, align 1, !tbaa !29
  %i.afo = add i64 %.10540.i, 3                   ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !29
  %i.afr = getelementptr i8, ptr %i.gv, i64 %.4388539.i
  %i.afs = getelementptr i8, ptr %i.afr, i64 3
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !29
  %i.afu = zext i8 %i.aft to i16
  %i.afv = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.afo
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !29
  %i.afx = zext i8 %i.afw to i16
  %i.afy = add nuw nsw i16 %i.afx, %i.afu
  %i.afz = lshr i16 %i.afy, 1
  %i.aga = trunc nuw i16 %i.afz to i8
  %i.agb = add i8 %i.afq, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.afo
  store i8 %i.agb, ptr %i.agc, align 1, !tbaa !29
  %i.agd = add i64 %.10540.i, 4                   ; 2 uses
  %i.age = add i64 %.4388539.i, 4
  %.not417.i.3 = icmp eq i64 %i.agd, %i.n
  br i1 %.not417.i.3, label %.loopexit, label %.lr.ph542.i, !llvm.loop !918

.preheader467.i:                                  ; preds = %.lr.ph545.i.prol.loopexit, %.lr.ph545.i, %middle.block383, %vec.epilog.middle.block396, %.preheader469.i
  br i1 %.not410514.i, label %.loopexit, label %iter.check349

iter.check349:                                    ; preds = %.preheader467.i
  %brmerge1371 = select i1 %min.iters.check333, i1 true, i1 %conflict.rdx332
  br i1 %brmerge1371, label %.lr.ph549.i.preheader, label %vector.main.loop.iter.check334

vector.main.loop.iter.check334:                   ; preds = %iter.check349
  br i1 %min.iters.check335, label %vec.epilog.ph353, label %vector.body338

vector.body338:                                   ; preds = %vector.main.loop.iter.check334, %vector.body338
  %index339 = phi i64 [ %index.next344, %vector.body338 ], [ 0, %vector.main.loop.iter.check334 ] ; 3 uses
  %i.agf = add i64 %index339, %i.d                ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.agf ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 32
  %wide.load340 = load <32 x i8>, ptr %i.agg, align 1, !tbaa !29, !alias.scope !983
  %wide.load341 = load <32 x i8>, ptr %i.agh, align 1, !tbaa !29, !alias.scope !983
  %i.agi = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index339 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 32
  %wide.load342 = load <32 x i8>, ptr %i.agi, align 1, !tbaa !29, !alias.scope !984
  %wide.load343 = load <32 x i8>, ptr %i.agj, align 1, !tbaa !29, !alias.scope !984
  %i.agk = lshr <32 x i8> %wide.load342, splat (i8 1)
  %i.agl = lshr <32 x i8> %wide.load343, splat (i8 1)
  %i.agm = add <32 x i8> %i.agk, %wide.load340
  %i.agn = add <32 x i8> %i.agl, %wide.load341
  %i.ago = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.agf ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 32
  store <32 x i8> %i.agm, ptr %i.ago, align 1, !tbaa !29, !alias.scope !985, !noalias !986
  store <32 x i8> %i.agn, ptr %i.agp, align 1, !tbaa !29, !alias.scope !985, !noalias !986
  %index.next344 = add nuw i64 %index339, 64      ; 2 uses
  %i.agq = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.agq, label %middle.block345, label %vector.body338, !llvm.loop !923

middle.block345:                                  ; preds = %vector.body338
  br i1 %cmp.n346, label %.loopexit, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block345
  br i1 %min.epilog.iters.check352, label %.lr.ph549.i.preheader, label %vec.epilog.ph353, !prof !85

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check334, %vec.epilog.iter.check351
  %vec.epilog.resume.val347 = phi i64 [ %n.vec337, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check334 ]
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val347, %vec.epilog.ph353 ], [ %index.next359, %vec.epilog.vector.body355 ] ; 3 uses
  %i.agr = add i64 %index356, %i.d                ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.agr
  %wide.load357 = load <8 x i8>, ptr %i.ags, align 1, !tbaa !29, !alias.scope !983
  %i.agt = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index356
  %wide.load358 = load <8 x i8>, ptr %i.agt, align 1, !tbaa !29, !alias.scope !984
  %i.agu = lshr <8 x i8> %wide.load358, splat (i8 1)
  %i.agv = add <8 x i8> %i.agu, %wide.load357
  %i.agw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.agr
  store <8 x i8> %i.agv, ptr %i.agw, align 1, !tbaa !29, !alias.scope !985, !noalias !986
  %index.next359 = add nuw i64 %index356, 8       ; 2 uses
  %i.agx = icmp eq i64 %index.next359, %n.vec354
  br i1 %i.agx, label %vec.epilog.middle.block360, label %vec.epilog.vector.body355, !llvm.loop !924

vec.epilog.middle.block360:                       ; preds = %vec.epilog.vector.body355
  br i1 %cmp.n361, label %.loopexit, label %.lr.ph549.i.preheader

.lr.ph549.i.preheader:                            ; preds = %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block360
  %.12548.i.ph = phi i64 [ %i.d, %iter.check349 ], [ %i.gf, %vec.epilog.middle.block360 ], [ %i.ge, %vec.epilog.iter.check351 ] ; 4 uses
  %.0389547.i.ph = phi i64 [ 0, %iter.check349 ], [ %n.vec354, %vec.epilog.middle.block360 ], [ %n.vec337, %vec.epilog.iter.check351 ] ; 2 uses
  %i.agy = sub i64 %19, %.12548.i.ph
  %xtraiter1313 = and i64 %i.agy, 3               ; 2 uses
  %lcmp.mod1314.not = icmp eq i64 %xtraiter1313, 0
  br i1 %lcmp.mod1314.not, label %.lr.ph549.i.prol.loopexit, label %.lr.ph549.i.prol

.lr.ph549.i.prol:                                 ; preds = %.lr.ph549.i.preheader, %.lr.ph549.i.prol
  %.12548.i.prol = phi i64 [ %i.ahg, %.lr.ph549.i.prol ], [ %.12548.i.ph, %.lr.ph549.i.preheader ] ; 3 uses
  %.0389547.i.prol = phi i64 [ %i.ahh, %.lr.ph549.i.prol ], [ %.0389547.i.ph, %.lr.ph549.i.preheader ] ; 2 uses
  %prol.iter1315 = phi i64 [ %prol.iter1315.next, %.lr.ph549.i.prol ], [ 0, %.lr.ph549.i.preheader ]
  %i.agz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.12548.i.prol
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !29
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0389547.i.prol
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !29
  %i.ahd = lshr i8 %i.ahc, 1
  %i.ahe = add i8 %i.ahd, %i.aha
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.12548.i.prol
  store i8 %i.ahe, ptr %i.ahf, align 1, !tbaa !29
  %i.ahg = add i64 %.12548.i.prol, 1              ; 2 uses
  %i.ahh = add nuw i64 %.0389547.i.prol, 1        ; 2 uses
  %prol.iter1315.next = add i64 %prol.iter1315, 1 ; 2 uses
  %prol.iter1315.cmp.not = icmp eq i64 %prol.iter1315.next, %xtraiter1313
  br i1 %prol.iter1315.cmp.not, label %.lr.ph549.i.prol.loopexit, label %.lr.ph549.i.prol, !llvm.loop !925

.lr.ph549.i.prol.loopexit:                        ; preds = %.lr.ph549.i.prol, %.lr.ph549.i.preheader
  %.12548.i.unr = phi i64 [ %.12548.i.ph, %.lr.ph549.i.preheader ], [ %i.ahg, %.lr.ph549.i.prol ]
  %.0389547.i.unr = phi i64 [ %.0389547.i.ph, %.lr.ph549.i.preheader ], [ %i.ahh, %.lr.ph549.i.prol ]
  %i.ahi = sub i64 %.12548.i.ph, %20
  %i.ahj = icmp ugt i64 %i.ahi, -4
  br i1 %i.ahj, label %.loopexit, label %.lr.ph549.i

.lr.ph545.i:                                      ; preds = %.lr.ph545.i.prol.loopexit, %.lr.ph545.i
  %.11544.i = phi i64 [ %i.aip, %.lr.ph545.i ], [ %.11544.i.unr, %.lr.ph545.i.prol.loopexit ] ; 10 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.11544.i
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !29
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.11544.i
  store i8 %i.ahl, ptr %i.ahm, align 1, !tbaa !29
  %i.ahn = add nuw nsw i64 %.11544.i, 1           ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !29
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ahn
  store i8 %i.ahp, ptr %i.ahq, align 1, !tbaa !29
  %i.ahr = add nuw nsw i64 %.11544.i, 2           ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ahr
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !29
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ahr
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !29
  %i.ahv = add nuw nsw i64 %.11544.i, 3           ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !29
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ahv
  store i8 %i.ahx, ptr %i.ahy, align 1, !tbaa !29
  %i.ahz = add nuw nsw i64 %.11544.i, 4           ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ahz
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !29
  %i.aic = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ahz
  store i8 %i.aib, ptr %i.aic, align 1, !tbaa !29
  %i.aid = add nuw nsw i64 %.11544.i, 5           ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aid
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !29
  %i.aig = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aid
  store i8 %i.aif, ptr %i.aig, align 1, !tbaa !29
  %i.aih = add nuw nsw i64 %.11544.i, 6           ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aih
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !29
  %i.aik = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aih
  store i8 %i.aij, ptr %i.aik, align 1, !tbaa !29
  %i.ail = add nuw nsw i64 %.11544.i, 7           ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !29
  %i.aio = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ail
  store i8 %i.ain, ptr %i.aio, align 1, !tbaa !29
  %i.aip = add nuw nsw i64 %.11544.i, 8           ; 2 uses
  %.not414.i.7 = icmp eq i64 %i.aip, %i.d
  br i1 %.not414.i.7, label %.preheader467.i, label %.lr.ph545.i, !llvm.loop !926

.lr.ph549.i:                                      ; preds = %.lr.ph549.i.prol.loopexit, %.lr.ph549.i
  %.12548.i = phi i64 [ %i.ajy, %.lr.ph549.i ], [ %.12548.i.unr, %.lr.ph549.i.prol.loopexit ] ; 6 uses
  %.0389547.i = phi i64 [ %i.ajz, %.lr.ph549.i ], [ %.0389547.i.unr, %.lr.ph549.i.prol.loopexit ] ; 5 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.12548.i
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !29
  %i.ais = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0389547.i
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !29
  %i.aiu = lshr i8 %i.ait, 1
  %i.aiv = add i8 %i.aiu, %i.air
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.12548.i
  store i8 %i.aiv, ptr %i.aiw, align 1, !tbaa !29
  %i.aix = add i64 %.12548.i, 1                   ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aix
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !29
  %i.aja = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0389547.i
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 1
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !29
  %i.ajd = lshr i8 %i.ajc, 1
  %i.aje = add i8 %i.ajd, %i.aiz
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aix
  store i8 %i.aje, ptr %i.ajf, align 1, !tbaa !29
  %i.ajg = add i64 %.12548.i, 2                   ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ajg
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !29
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0389547.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 2
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !29
  %i.ajm = lshr i8 %i.ajl, 1
  %i.ajn = add i8 %i.ajm, %i.aji
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ajg
  store i8 %i.ajn, ptr %i.ajo, align 1, !tbaa !29
  %i.ajp = add i64 %.12548.i, 3                   ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ajp
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !29
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0389547.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !29
  %i.ajv = lshr i8 %i.aju, 1
  %i.ajw = add i8 %i.ajv, %i.ajr
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ajp
  store i8 %i.ajw, ptr %i.ajx, align 1, !tbaa !29
  %i.ajy = add i64 %.12548.i, 4                   ; 2 uses
  %i.ajz = add nuw i64 %.0389547.i, 4
  %.not415.i.3 = icmp eq i64 %i.ajy, %i.n
  br i1 %.not415.i.3, label %.loopexit, label %.lr.ph549.i, !llvm.loop !927

bb.g:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.02771, null
  br i1 %.not.i, label %.preheader480.i, label %.preheader488.i

.preheader488.i:                                  ; preds = %bb.g
  br i1 %.not409511.i, label %.loopexit483.i, label %iter.check1218

iter.check1218:                                   ; preds = %.preheader488.i
  br i1 %min.iters.check1199, label %.lr.ph.i.preheader, label %vector.memcheck1187

vector.memcheck1187:                              ; preds = %iter.check1218
  %scevgep1191 = getelementptr i8, ptr %.02771, i64 %i.d
  %bound01195 = icmp ult ptr %0, %scevgep1191
  %bound11196 = icmp ult ptr %.02771, %scevgep1188
  %found.conflict1197 = and i1 %bound01195, %bound11196
  %conflict.rdx1198 = or i1 %found.conflict1194, %found.conflict1197
  br i1 %conflict.rdx1198, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1200

vector.main.loop.iter.check1200:                  ; preds = %vector.memcheck1187
  br i1 %min.iters.check1201, label %vec.epilog.ph1222, label %vector.body1204

vector.body1204:                                  ; preds = %vector.main.loop.iter.check1200, %vector.body1204
  %index1205 = phi i64 [ %index.next1214, %vector.body1204 ], [ 0, %vector.main.loop.iter.check1200 ] ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index1205 ; 4 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 32
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aka, i64 64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 96
  %wide.load1206 = load <32 x i8>, ptr %i.aka, align 1, !tbaa !29, !alias.scope !987
  %wide.load1207 = load <32 x i8>, ptr %i.akb, align 1, !tbaa !29, !alias.scope !987
  %wide.load1208 = load <32 x i8>, ptr %i.akc, align 1, !tbaa !29, !alias.scope !987
  %wide.load1209 = load <32 x i8>, ptr %i.akd, align 1, !tbaa !29, !alias.scope !987
  %i.ake = getelementptr inbounds nuw i8, ptr %.02771, i64 %index1205 ; 4 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 32
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 64
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ake, i64 96
  %wide.load1210 = load <32 x i8>, ptr %i.ake, align 1, !tbaa !29, !alias.scope !988
  %wide.load1211 = load <32 x i8>, ptr %i.akf, align 1, !tbaa !29, !alias.scope !988
  %wide.load1212 = load <32 x i8>, ptr %i.akg, align 1, !tbaa !29, !alias.scope !988
  %wide.load1213 = load <32 x i8>, ptr %i.akh, align 1, !tbaa !29, !alias.scope !988
  %i.aki = add <32 x i8> %wide.load1210, %wide.load1206
  %i.akj = add <32 x i8> %wide.load1211, %wide.load1207
  %i.akk = add <32 x i8> %wide.load1212, %wide.load1208
  %i.akl = add <32 x i8> %wide.load1213, %wide.load1209
  %i.akm = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index1205 ; 4 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 32
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akm, i64 64
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akm, i64 96
  store <32 x i8> %i.aki, ptr %i.akm, align 1, !tbaa !29, !alias.scope !989, !noalias !990
  store <32 x i8> %i.akj, ptr %i.akn, align 1, !tbaa !29, !alias.scope !989, !noalias !990
  store <32 x i8> %i.akk, ptr %i.ako, align 1, !tbaa !29, !alias.scope !989, !noalias !990
  store <32 x i8> %i.akl, ptr %i.akp, align 1, !tbaa !29, !alias.scope !989, !noalias !990
  %index.next1214 = add nuw i64 %index1205, 128   ; 2 uses
  %i.akq = icmp eq i64 %index.next1214, %n.vec1203
  br i1 %i.akq, label %middle.block1215, label %vector.body1204, !llvm.loop !932

middle.block1215:                                 ; preds = %vector.body1204
  br i1 %cmp.n1216, label %._crit_edge.i, label %vec.epilog.iter.check1220

vec.epilog.iter.check1220:                        ; preds = %middle.block1215
  br i1 %min.epilog.iters.check1221, label %.lr.ph.i.preheader, label %vec.epilog.ph1222, !prof !93

vec.epilog.ph1222:                                ; preds = %vector.main.loop.iter.check1200, %vec.epilog.iter.check1220
  %vec.epilog.resume.val1217 = phi i64 [ %n.vec1203, %vec.epilog.iter.check1220 ], [ 0, %vector.main.loop.iter.check1200 ]
  br label %vec.epilog.vector.body1224

vec.epilog.vector.body1224:                       ; preds = %vec.epilog.vector.body1224, %vec.epilog.ph1222
  %index1225 = phi i64 [ %vec.epilog.resume.val1217, %vec.epilog.ph1222 ], [ %index.next1228, %vec.epilog.vector.body1224 ] ; 4 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index1225
  %wide.load1226 = load <8 x i8>, ptr %i.akr, align 1, !tbaa !29, !alias.scope !987
  %i.aks = getelementptr inbounds nuw i8, ptr %.02771, i64 %index1225
  %wide.load1227 = load <8 x i8>, ptr %i.aks, align 1, !tbaa !29, !alias.scope !988
  %i.akt = add <8 x i8> %wide.load1227, %wide.load1226
  %i.aku = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index1225
  store <8 x i8> %i.akt, ptr %i.aku, align 1, !tbaa !29, !alias.scope !989, !noalias !990
  %index.next1228 = add nuw i64 %index1225, 8     ; 2 uses
  %i.akv = icmp eq i64 %index.next1228, %n.vec1223
  br i1 %i.akv, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1224, !llvm.loop !933

vec.epilog.middle.block1229:                      ; preds = %vec.epilog.vector.body1224
  br i1 %cmp.n1230, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check1218, %vector.memcheck1187, %vec.epilog.iter.check1220, %vec.epilog.middle.block1229
  %.13490.i.ph = phi i64 [ 0, %iter.check1218 ], [ 0, %vector.memcheck1187 ], [ %n.vec1203, %vec.epilog.iter.check1220 ], [ %n.vec1223, %vec.epilog.middle.block1229 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.13490.i.prol = phi i64 [ %i.alc, %.lr.ph.i.prol ], [ %.13490.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.akw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.13490.i.prol
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !29
  %i.aky = getelementptr inbounds nuw i8, ptr %.02771, i64 %.13490.i.prol
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !29
  %i.ala = add i8 %i.akz, %i.akx
  %i.alb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.13490.i.prol
  store i8 %i.ala, ptr %i.alb, align 1, !tbaa !29
  %i.alc = add nuw nsw i64 %.13490.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !934

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.13490.i.unr = phi i64 [ %.13490.i.ph, %.lr.ph.i.preheader ], [ %i.alc, %.lr.ph.i.prol ]
  %i.ald = sub nsw i64 %.13490.i.ph, %i.d
  %i.ale = icmp ugt i64 %i.ald, -8
  br i1 %i.ale, label %._crit_edge.i, label %.lr.ph.i

.preheader480.i:                                  ; preds = %bb.g
  br i1 %.not409511.i, label %.preheader478.i, label %iter.check798

iter.check798:                                    ; preds = %.preheader480.i
  %brmerge1372 = select i1 %min.iters.check783, i1 true, i1 %found.conflict782
  br i1 %brmerge1372, label %.lr.ph513.i.preheader, label %vector.main.loop.iter.check784

vector.main.loop.iter.check784:                   ; preds = %iter.check798
  br i1 %min.iters.check785, label %vec.epilog.ph802, label %vector.body788

vector.body788:                                   ; preds = %vector.main.loop.iter.check784, %vector.body788
  %index789 = phi i64 [ %index.next794, %vector.body788 ], [ 0, %vector.main.loop.iter.check784 ] ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index789 ; 4 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 32
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 64
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 96
  %wide.load790 = load <32 x i8>, ptr %i.alf, align 1, !tbaa !29, !alias.scope !991
  %wide.load791 = load <32 x i8>, ptr %i.alg, align 1, !tbaa !29, !alias.scope !991
  %wide.load792 = load <32 x i8>, ptr %i.alh, align 1, !tbaa !29, !alias.scope !991
  %wide.load793 = load <32 x i8>, ptr %i.ali, align 1, !tbaa !29, !alias.scope !991
  %i.alj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index789 ; 4 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 32
  %i.all = getelementptr inbounds nuw i8, ptr %i.alj, i64 64
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alj, i64 96
  store <32 x i8> %wide.load790, ptr %i.alj, align 1, !tbaa !29, !alias.scope !992, !noalias !991
  store <32 x i8> %wide.load791, ptr %i.alk, align 1, !tbaa !29, !alias.scope !992, !noalias !991
  store <32 x i8> %wide.load792, ptr %i.all, align 1, !tbaa !29, !alias.scope !992, !noalias !991
  store <32 x i8> %wide.load793, ptr %i.alm, align 1, !tbaa !29, !alias.scope !992, !noalias !991
  %index.next794 = add nuw i64 %index789, 128     ; 2 uses
  %i.aln = icmp eq i64 %index.next794, %n.vec787
  br i1 %i.aln, label %middle.block795, label %vector.body788, !llvm.loop !938

middle.block795:                                  ; preds = %vector.body788
  br i1 %cmp.n796, label %.preheader478.i, label %vec.epilog.iter.check800

vec.epilog.iter.check800:                         ; preds = %middle.block795
  br i1 %min.epilog.iters.check801, label %.lr.ph513.i.preheader, label %vec.epilog.ph802, !prof !93

vec.epilog.ph802:                                 ; preds = %vector.main.loop.iter.check784, %vec.epilog.iter.check800
  %vec.epilog.resume.val797 = phi i64 [ %n.vec787, %vec.epilog.iter.check800 ], [ 0, %vector.main.loop.iter.check784 ]
  br label %vec.epilog.vector.body804

vec.epilog.vector.body804:                        ; preds = %vec.epilog.vector.body804, %vec.epilog.ph802
  %index805 = phi i64 [ %vec.epilog.resume.val797, %vec.epilog.ph802 ], [ %index.next807, %vec.epilog.vector.body804 ] ; 3 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index805
  %wide.load806 = load <8 x i8>, ptr %i.alo, align 1, !tbaa !29, !alias.scope !991
  %i.alp = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index805
  store <8 x i8> %wide.load806, ptr %i.alp, align 1, !tbaa !29, !alias.scope !992, !noalias !991
  %index.next807 = add nuw i64 %index805, 8       ; 2 uses
  %i.alq = icmp eq i64 %index.next807, %n.vec803
  br i1 %i.alq, label %vec.epilog.middle.block808, label %vec.epilog.vector.body804, !llvm.loop !939

vec.epilog.middle.block808:                       ; preds = %vec.epilog.vector.body804
  br i1 %cmp.n809, label %.preheader478.i, label %.lr.ph513.i.preheader

.lr.ph513.i.preheader:                            ; preds = %iter.check798, %vec.epilog.iter.check800, %vec.epilog.middle.block808
  %.19512.i.ph = phi i64 [ 0, %iter.check798 ], [ %n.vec803, %vec.epilog.middle.block808 ], [ %n.vec787, %vec.epilog.iter.check800 ] ; 3 uses
  br i1 %lcmp.mod1299.not, label %.lr.ph513.i.prol.loopexit, label %.lr.ph513.i.prol

.lr.ph513.i.prol:                                 ; preds = %.lr.ph513.i.preheader, %.lr.ph513.i.prol
  %.19512.i.prol = phi i64 [ %i.alu, %.lr.ph513.i.prol ], [ %.19512.i.ph, %.lr.ph513.i.preheader ] ; 3 uses
  %prol.iter1300 = phi i64 [ %prol.iter1300.next, %.lr.ph513.i.prol ], [ 0, %.lr.ph513.i.preheader ]
  %i.alr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.19512.i.prol
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !29
  %i.alt = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.19512.i.prol
  store i8 %i.als, ptr %i.alt, align 1, !tbaa !29
  %i.alu = add nuw nsw i64 %.19512.i.prol, 1      ; 2 uses
  %prol.iter1300.next = add i64 %prol.iter1300, 1 ; 2 uses
  %prol.iter1300.cmp.not = icmp eq i64 %prol.iter1300.next, %xtraiter1298
  br i1 %prol.iter1300.cmp.not, label %.lr.ph513.i.prol.loopexit, label %.lr.ph513.i.prol, !llvm.loop !940

.lr.ph513.i.prol.loopexit:                        ; preds = %.lr.ph513.i.prol, %.lr.ph513.i.preheader
  %.19512.i.unr = phi i64 [ %.19512.i.ph, %.lr.ph513.i.preheader ], [ %i.alu, %.lr.ph513.i.prol ]
  %i.alv = sub nsw i64 %.19512.i.ph, %i.d
  %i.alw = icmp ugt i64 %i.alv, -8
  br i1 %i.alw, label %.preheader478.i, label %.lr.ph513.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.13490.i = phi i64 [ %i.aoa, %.lr.ph.i ], [ %.13490.i.unr, %.lr.ph.i.prol.loopexit ] ; 11 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.13490.i
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !29
  %i.alz = getelementptr inbounds nuw i8, ptr %.02771, i64 %.13490.i
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !29
  %i.amb = add i8 %i.ama, %i.aly
  %i.amc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.13490.i
  store i8 %i.amb, ptr %i.amc, align 1, !tbaa !29
  %i.amd = add nuw nsw i64 %.13490.i, 1           ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.amd
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !29
  %i.amg = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.amd
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !29
  %i.ami = add i8 %i.amh, %i.amf
  %i.amj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.amd
  store i8 %i.ami, ptr %i.amj, align 1, !tbaa !29
  %i.amk = add nuw nsw i64 %.13490.i, 2           ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.amk
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !29
  %i.amn = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.amk
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !29
  %i.amp = add i8 %i.amo, %i.amm
  %i.amq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.amk
  store i8 %i.amp, ptr %i.amq, align 1, !tbaa !29
  %i.amr = add nuw nsw i64 %.13490.i, 3           ; 3 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !29
  %i.amu = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.amr
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !29
  %i.amw = add i8 %i.amv, %i.amt
  %i.amx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.amr
  store i8 %i.amw, ptr %i.amx, align 1, !tbaa !29
  %i.amy = add nuw nsw i64 %.13490.i, 4           ; 3 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.amy
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !29
  %i.anb = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.amy
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !29
  %i.and = add i8 %i.anc, %i.ana
  %i.ane = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.amy
  store i8 %i.and, ptr %i.ane, align 1, !tbaa !29
  %i.anf = add nuw nsw i64 %.13490.i, 5           ; 3 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.anf
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !29
  %i.ani = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.anf
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !29
  %i.ank = add i8 %i.anj, %i.anh
  %i.anl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.anf
  store i8 %i.ank, ptr %i.anl, align 1, !tbaa !29
  %i.anm = add nuw nsw i64 %.13490.i, 6           ; 3 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.anm
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !29
  %i.anp = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.anm
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !29
  %i.anr = add i8 %i.anq, %i.ano
  %i.ans = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.anm
  store i8 %i.anr, ptr %i.ans, align 1, !tbaa !29
  %i.ant = add nuw nsw i64 %.13490.i, 7           ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ant
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !29
  %i.anw = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.ant
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !29
  %i.any = add i8 %i.anx, %i.anv
  %i.anz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ant
  store i8 %i.any, ptr %i.anz, align 1, !tbaa !29
  %i.aoa = add nuw nsw i64 %.13490.i, 8           ; 2 uses
  %.not411.i.7 = icmp eq i64 %i.aoa, %i.d
  br i1 %.not411.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !941

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block1229, %middle.block1215
  br i1 %i.q, label %.preheader482.i, label %bb.h

.preheader482.i:                                  ; preds = %._crit_edge.i
  br i1 %i.y, label %iter.check1152, label %.loopexit483.i

iter.check1152:                                   ; preds = %.preheader482.i
  br i1 %min.iters.check1117, label %.lr.ph503.i.preheader, label %vector.memcheck853

vector.memcheck853:                               ; preds = %iter.check1152
  %scevgep871 = getelementptr i8, ptr %.02771, i64 %i.d ; 4 uses
  %i.aob = getelementptr i8, ptr %.02771, i64 %9
  %scevgep873.a = getelementptr i8, ptr %i.aob, i64 1 ; 4 uses
  %i.aoc = getelementptr i8, ptr %.02771, i64 %i.t ; 4 uses
  %30 = getelementptr i8, ptr %.02771, i64 %9
  %scevgep874 = getelementptr i8, ptr %30, i64 2  ; 4 uses
  %scevgep875 = getelementptr i8, ptr %.02771, i64 %i.v ; 4 uses
  %i.aod = getelementptr i8, ptr %.02771, i64 %9
  %scevgep877.a = getelementptr i8, ptr %i.aod, i64 3 ; 4 uses
  %i.aoe = getelementptr i8, ptr %.02771, i64 %i.x ; 4 uses
  %31 = getelementptr i8, ptr %.02771, i64 %9
  %scevgep878 = getelementptr i8, ptr %31, i64 4  ; 4 uses
  %i.aof = getelementptr i8, ptr %.02771, i64 %i.ep
  %scevgep879 = getelementptr i8, ptr %i.aof, i64 1 ; 4 uses
  %scevgep880 = getelementptr i8, ptr %.02771, i64 1 ; 4 uses
  %i.aog = getelementptr i8, ptr %.02771, i64 %i.ep
  %scevgep881 = getelementptr i8, ptr %i.aog, i64 2 ; 4 uses
  %scevgep881.a = getelementptr i8, ptr %.02771, i64 2 ; 4 uses
  %scevgep883 = getelementptr i8, ptr %.02771, i64 %10 ; 4 uses
  %scevgep883.a = getelementptr i8, ptr %.02771, i64 3 ; 4 uses
  %i.aoh = getelementptr i8, ptr %.02771, i64 %i.ep
  %scevgep885 = getelementptr i8, ptr %i.aoh, i64 4 ; 4 uses
  %bound0917 = icmp ult ptr %scevgep854, %scevgep873.a
  %bound1918 = icmp ult ptr %scevgep871, %scevgep856.a
  %found.conflict919 = and i1 %bound0917, %bound1918
  %conflict.rdx920 = or i1 %conflict.rdx916, %found.conflict919
  %bound0921 = icmp ult ptr %scevgep854, %scevgep874
  %bound1922 = icmp ult ptr %i.aoc, %scevgep856.a
  %found.conflict923 = and i1 %bound0921, %bound1922
  %conflict.rdx924 = or i1 %conflict.rdx920, %found.conflict923
  %bound0925 = icmp ult ptr %scevgep854, %scevgep877.a
  %bound1926 = icmp ult ptr %scevgep875, %scevgep856.a
  %found.conflict927 = and i1 %bound0925, %bound1926
  %conflict.rdx928 = or i1 %conflict.rdx924, %found.conflict927
  %bound0929 = icmp ult ptr %scevgep854, %scevgep878
  %bound1930 = icmp ult ptr %i.aoe, %scevgep856.a
  %found.conflict931 = and i1 %bound0929, %bound1930
  %conflict.rdx932 = or i1 %conflict.rdx928, %found.conflict931
  %bound0933 = icmp ult ptr %scevgep854, %scevgep879
  %bound1934 = icmp ult ptr %.02771, %scevgep856.a
  %found.conflict935 = and i1 %bound0933, %bound1934
  %conflict.rdx936 = or i1 %conflict.rdx932, %found.conflict935
  %bound0937 = icmp ult ptr %scevgep854, %scevgep881
  %bound1938 = icmp ult ptr %scevgep880, %scevgep856.a
  %found.conflict939 = and i1 %bound0937, %bound1938
  %conflict.rdx940 = or i1 %conflict.rdx936, %found.conflict939
  %bound0941 = icmp ult ptr %scevgep854, %scevgep883
  %bound1942 = icmp ult ptr %scevgep881.a, %scevgep856.a
  %found.conflict943 = and i1 %bound0941, %bound1942
  %conflict.rdx944 = or i1 %conflict.rdx940, %found.conflict943
  %bound0945 = icmp ult ptr %scevgep854, %scevgep885
  %bound1946 = icmp ult ptr %scevgep883.a, %scevgep856.a
  %found.conflict947 = and i1 %bound0945, %bound1946
  %conflict.rdx948 = or i1 %conflict.rdx944, %found.conflict947
  %conflict.rdx976.reass = or i1 %conflict.rdx948, %invariant.op1319
  %bound0977 = icmp ult ptr %i.es, %scevgep873.a
  %bound1978 = icmp ult ptr %scevgep871, %scevgep858.a
  %found.conflict979 = and i1 %bound0977, %bound1978
  %conflict.rdx980 = or i1 %conflict.rdx976.reass, %found.conflict979
  %bound0981 = icmp ult ptr %i.es, %scevgep874
  %bound1982 = icmp ult ptr %i.aoc, %scevgep858.a
  %found.conflict983 = and i1 %bound0981, %bound1982
  %conflict.rdx984 = or i1 %conflict.rdx980, %found.conflict983
  %bound0985 = icmp ult ptr %i.es, %scevgep877.a
  %bound1986 = icmp ult ptr %scevgep875, %scevgep858.a
  %found.conflict987 = and i1 %bound0985, %bound1986
  %conflict.rdx988 = or i1 %conflict.rdx984, %found.conflict987
  %bound0989 = icmp ult ptr %i.es, %scevgep878
  %bound1990 = icmp ult ptr %i.aoe, %scevgep858.a
  %found.conflict991 = and i1 %bound0989, %bound1990
  %conflict.rdx992 = or i1 %conflict.rdx988, %found.conflict991
  %bound0993 = icmp ult ptr %i.es, %scevgep879
  %bound1994 = icmp ult ptr %.02771, %scevgep858.a
  %found.conflict995 = and i1 %bound0993, %bound1994
  %conflict.rdx996 = or i1 %conflict.rdx992, %found.conflict995
  %bound0997 = icmp ult ptr %i.es, %scevgep881
  %bound1998 = icmp ult ptr %scevgep880, %scevgep858.a
  %found.conflict999 = and i1 %bound0997, %bound1998
  %conflict.rdx1000 = or i1 %conflict.rdx996, %found.conflict999
  %bound01001 = icmp ult ptr %i.es, %scevgep883
  %bound11002 = icmp ult ptr %scevgep881.a, %scevgep858.a
  %found.conflict1003 = and i1 %bound01001, %bound11002
  %conflict.rdx1004 = or i1 %conflict.rdx1000, %found.conflict1003
  %bound01005 = icmp ult ptr %i.es, %scevgep885
  %bound11006 = icmp ult ptr %scevgep883.a, %scevgep858.a
  %found.conflict1007 = and i1 %bound01005, %bound11006
  %conflict.rdx1008 = or i1 %conflict.rdx1004, %found.conflict1007
  %conflict.rdx1032.reass = or i1 %conflict.rdx1008, %invariant.op1324
  %bound01033 = icmp ult ptr %scevgep858, %scevgep873.a
  %bound11034 = icmp ult ptr %scevgep871, %scevgep860.a
  %found.conflict1035 = and i1 %bound01033, %bound11034
  %conflict.rdx1036 = or i1 %conflict.rdx1032.reass, %found.conflict1035
  %bound01037 = icmp ult ptr %scevgep858, %scevgep874
  %bound11038 = icmp ult ptr %i.aoc, %scevgep860.a
  %found.conflict1039 = and i1 %bound01037, %bound11038
  %conflict.rdx1040 = or i1 %conflict.rdx1036, %found.conflict1039
  %bound01041 = icmp ult ptr %scevgep858, %scevgep877.a
  %bound11042 = icmp ult ptr %scevgep875, %scevgep860.a
  %found.conflict1043 = and i1 %bound01041, %bound11042
  %conflict.rdx1044 = or i1 %conflict.rdx1040, %found.conflict1043
  %bound01045 = icmp ult ptr %scevgep858, %scevgep878
  %bound11046 = icmp ult ptr %i.aoe, %scevgep860.a
  %found.conflict1047 = and i1 %bound01045, %bound11046
  %conflict.rdx1048 = or i1 %conflict.rdx1044, %found.conflict1047
  %bound01049 = icmp ult ptr %scevgep858, %scevgep879
  %bound11050 = icmp ult ptr %.02771, %scevgep860.a
  %found.conflict1051 = and i1 %bound01049, %bound11050
  %conflict.rdx1052 = or i1 %conflict.rdx1048, %found.conflict1051
  %bound01053 = icmp ult ptr %scevgep858, %scevgep881
  %bound11054 = icmp ult ptr %scevgep880, %scevgep860.a
  %found.conflict1055 = and i1 %bound01053, %bound11054
  %conflict.rdx1056 = or i1 %conflict.rdx1052, %found.conflict1055
  %bound01057 = icmp ult ptr %scevgep858, %scevgep883
  %bound11058 = icmp ult ptr %scevgep881.a, %scevgep860.a
  %found.conflict1059 = and i1 %bound01057, %bound11058
  %conflict.rdx1060 = or i1 %conflict.rdx1056, %found.conflict1059
  %bound01061 = icmp ult ptr %scevgep858, %scevgep885
  %bound11062 = icmp ult ptr %scevgep883.a, %scevgep860.a
  %found.conflict1063 = and i1 %bound01061, %bound11062
  %conflict.rdx1064 = or i1 %conflict.rdx1060, %found.conflict1063
  %conflict.rdx1084.reass = or i1 %conflict.rdx1064, %op.rdx1272
  %bound01085 = icmp ult ptr %i.eu, %scevgep873.a
  %bound11086 = icmp ult ptr %scevgep871, %scevgep861
  %found.conflict1087 = and i1 %bound01085, %bound11086
  %conflict.rdx1088 = or i1 %conflict.rdx1084.reass, %found.conflict1087
  %bound01089 = icmp ult ptr %i.eu, %scevgep874
  %bound11090 = icmp ult ptr %i.aoc, %scevgep861
  %found.conflict1091 = and i1 %bound01089, %bound11090
  %conflict.rdx1092 = or i1 %conflict.rdx1088, %found.conflict1091
  %bound01093 = icmp ult ptr %i.eu, %scevgep877.a
  %bound11094 = icmp ult ptr %scevgep875, %scevgep861
  %found.conflict1095 = and i1 %bound01093, %bound11094
  %conflict.rdx1096 = or i1 %conflict.rdx1092, %found.conflict1095
  %bound01097 = icmp ult ptr %i.eu, %scevgep878
  %bound11098 = icmp ult ptr %i.aoe, %scevgep861
  %found.conflict1099 = and i1 %bound01097, %bound11098
  %conflict.rdx1100 = or i1 %conflict.rdx1096, %found.conflict1099
  %bound01101 = icmp ult ptr %i.eu, %scevgep879
  %bound11102 = icmp ult ptr %.02771, %scevgep861
  %found.conflict1103 = and i1 %bound01101, %bound11102
  %conflict.rdx1104 = or i1 %conflict.rdx1100, %found.conflict1103
  %bound01105 = icmp ult ptr %i.eu, %scevgep881
  %bound11106 = icmp ult ptr %scevgep880, %scevgep861
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %conflict.rdx1108 = or i1 %conflict.rdx1104, %found.conflict1107
  %bound01109 = icmp ult ptr %i.eu, %scevgep883
  %bound11110 = icmp ult ptr %scevgep881.a, %scevgep861
  %found.conflict1111 = and i1 %bound01109, %bound11110
  %conflict.rdx1112 = or i1 %conflict.rdx1108, %found.conflict1111
  %bound01113 = icmp ult ptr %i.eu, %scevgep885
  %bound11114 = icmp ult ptr %scevgep883.a, %scevgep861
  %found.conflict1115 = and i1 %bound01113, %bound11114
  %op.rdx1273 = or i1 %conflict.rdx1112, %found.conflict1115
  br i1 %op.rdx1273, label %.lr.ph503.i.preheader, label %vector.main.loop.iter.check1118

vector.main.loop.iter.check1118:                  ; preds = %vector.memcheck853
  br i1 %min.iters.check1119, label %vec.epilog.ph1156, label %vector.body1122

vector.body1122:                                  ; preds = %vector.main.loop.iter.check1118, %vector.body1122
  %index1123 = phi i64 [ %index.next1145, %vector.body1122 ], [ 0, %vector.main.loop.iter.check1118 ] ; 2 uses
  %i.aoi = shl nuw i64 %index1123, 2              ; 3 uses
  %i.aoj = add nuw i64 %i.aoi, %i.d               ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.aoj
  %wide.vec1124 = load <64 x i8>, ptr %i.aok, align 1, !tbaa !29, !alias.scope !993 ; 4 uses
  %strided.vec1125 = shufflevector <64 x i8> %wide.vec1124, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1126 = shufflevector <64 x i8> %wide.vec1124, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1127 = shufflevector <64 x i8> %wide.vec1124, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1128 = shufflevector <64 x i8> %wide.vec1124, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.aol = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aoi
  %wide.vec1129 = load <64 x i8>, ptr %i.aol, align 1, !tbaa !29 ; 4 uses
  %strided.vec1130 = shufflevector <64 x i8> %wide.vec1129, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 2 uses
  %strided.vec1131 = shufflevector <64 x i8> %wide.vec1129, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %strided.vec1132 = shufflevector <64 x i8> %wide.vec1129, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %strided.vec1133 = shufflevector <64 x i8> %wide.vec1129, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aoj
  %wide.vec1134 = load <64 x i8>, ptr %i.aom, align 1, !tbaa !29 ; 4 uses
  %strided.vec1135 = shufflevector <64 x i8> %wide.vec1134, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 2 uses
  %strided.vec1136 = shufflevector <64 x i8> %wide.vec1134, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %strided.vec1137 = shufflevector <64 x i8> %wide.vec1134, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %strided.vec1138 = shufflevector <64 x i8> %wide.vec1134, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aoi
  %wide.vec1139 = load <64 x i8>, ptr %i.aon, align 1, !tbaa !29 ; 4 uses
  %strided.vec1140 = shufflevector <64 x i8> %wide.vec1139, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 2 uses
  %strided.vec1141 = shufflevector <64 x i8> %wide.vec1139, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %strided.vec1142 = shufflevector <64 x i8> %wide.vec1139, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %strided.vec1143 = shufflevector <64 x i8> %wide.vec1139, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.aoo = zext <16 x i8> %strided.vec1135 to <16 x i32> ; 2 uses
  %i.aop = zext <16 x i8> %strided.vec1140 to <16 x i32> ; 3 uses
  %i.aoq = sub nsw <16 x i32> %i.aoo, %i.aop
  %i.aor = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aoq, i1 true) ; 2 uses
  %i.aos = zext <16 x i8> %strided.vec1130 to <16 x i32> ; 2 uses
  %i.aot = sub nsw <16 x i32> %i.aos, %i.aop
  %i.aou = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aot, i1 true) ; 2 uses
  %i.aov = add nuw nsw <16 x i32> %i.aoo, %i.aos
  %i.aow = shl nuw nsw <16 x i32> %i.aop, splat (i32 1)
  %i.aox = sub nsw <16 x i32> %i.aov, %i.aow
  %i.aoy = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aox, i1 true)
  %i.aoz = icmp samesign ult <16 x i32> %i.aou, %i.aor
  %i.apa = select <16 x i1> %i.aoz, <16 x i8> %strided.vec1135, <16 x i8> %strided.vec1130
  %i.apb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.aou, <16 x i32> %i.aor)
  %i.apc = icmp samesign ult <16 x i32> %i.aoy, %i.apb
  %i.apd = select <16 x i1> %i.apc, <16 x i8> %strided.vec1140, <16 x i8> %i.apa
  %i.ape = add <16 x i8> %i.apd, %strided.vec1125
  %i.apf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.aoj
  %i.apg = zext <16 x i8> %strided.vec1136 to <16 x i32> ; 2 uses
  %i.aph = zext <16 x i8> %strided.vec1141 to <16 x i32> ; 3 uses
  %i.api = sub nsw <16 x i32> %i.apg, %i.aph
  %i.apj = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.api, i1 true) ; 2 uses
  %i.apk = zext <16 x i8> %strided.vec1131 to <16 x i32> ; 2 uses
  %i.apl = sub nsw <16 x i32> %i.apk, %i.aph
  %i.apm = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.apl, i1 true) ; 2 uses
  %i.apn = add nuw nsw <16 x i32> %i.apg, %i.apk
  %i.apo = shl nuw nsw <16 x i32> %i.aph, splat (i32 1)
  %i.app = sub nsw <16 x i32> %i.apn, %i.apo
  %i.apq = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.app, i1 true)
  %i.apr = icmp samesign ult <16 x i32> %i.apm, %i.apj
  %i.aps = select <16 x i1> %i.apr, <16 x i8> %strided.vec1136, <16 x i8> %strided.vec1131
  %i.apt = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.apm, <16 x i32> %i.apj)
  %i.apu = icmp samesign ult <16 x i32> %i.apq, %i.apt
  %i.apv = select <16 x i1> %i.apu, <16 x i8> %strided.vec1141, <16 x i8> %i.aps
  %i.apw = add <16 x i8> %i.apv, %strided.vec1126
  %i.apx = zext <16 x i8> %strided.vec1137 to <16 x i32> ; 2 uses
  %i.apy = zext <16 x i8> %strided.vec1142 to <16 x i32> ; 3 uses
  %i.apz = sub nsw <16 x i32> %i.apx, %i.apy
  %i.aqa = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.apz, i1 true) ; 2 uses
  %i.aqb = zext <16 x i8> %strided.vec1132 to <16 x i32> ; 2 uses
  %i.aqc = sub nsw <16 x i32> %i.aqb, %i.apy
  %i.aqd = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aqc, i1 true) ; 2 uses
  %i.aqe = add nuw nsw <16 x i32> %i.apx, %i.aqb
  %i.aqf = shl nuw nsw <16 x i32> %i.apy, splat (i32 1)
  %i.aqg = sub nsw <16 x i32> %i.aqe, %i.aqf
  %i.aqh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aqg, i1 true)
  %i.aqi = icmp samesign ult <16 x i32> %i.aqd, %i.aqa
  %i.aqj = select <16 x i1> %i.aqi, <16 x i8> %strided.vec1137, <16 x i8> %strided.vec1132
  %i.aqk = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.aqd, <16 x i32> %i.aqa)
  %i.aql = icmp samesign ult <16 x i32> %i.aqh, %i.aqk
  %i.aqm = select <16 x i1> %i.aql, <16 x i8> %strided.vec1142, <16 x i8> %i.aqj
  %i.aqn = add <16 x i8> %i.aqm, %strided.vec1127
  %i.aqo = zext <16 x i8> %strided.vec1138 to <16 x i32> ; 2 uses
  %i.aqp = zext <16 x i8> %strided.vec1143 to <16 x i32> ; 3 uses
  %i.aqq = sub nsw <16 x i32> %i.aqo, %i.aqp
  %i.aqr = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aqq, i1 true) ; 2 uses
  %i.aqs = zext <16 x i8> %strided.vec1133 to <16 x i32> ; 2 uses
  %i.aqt = sub nsw <16 x i32> %i.aqs, %i.aqp
  %i.aqu = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aqt, i1 true) ; 2 uses
  %i.aqv = add nuw nsw <16 x i32> %i.aqo, %i.aqs
  %i.aqw = shl nuw nsw <16 x i32> %i.aqp, splat (i32 1)
  %i.aqx = sub nsw <16 x i32> %i.aqv, %i.aqw
  %i.aqy = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aqx, i1 true)
  %i.aqz = icmp samesign ult <16 x i32> %i.aqu, %i.aqr
  %i.ara = select <16 x i1> %i.aqz, <16 x i8> %strided.vec1138, <16 x i8> %strided.vec1133
  %i.arb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.aqu, <16 x i32> %i.aqr)
  %i.arc = icmp samesign ult <16 x i32> %i.aqy, %i.arb
  %i.ard = select <16 x i1> %i.arc, <16 x i8> %strided.vec1143, <16 x i8> %i.ara
  %i.are = add <16 x i8> %i.ard, %strided.vec1128
  %i.arf = shufflevector <16 x i8> %i.ape, <16 x i8> %i.apw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.arg = shufflevector <16 x i8> %i.aqn, <16 x i8> %i.are, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1144 = shufflevector <32 x i8> %i.arf, <32 x i8> %i.arg, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec1144, ptr %i.apf, align 1, !tbaa !29
  %index.next1145 = add nuw i64 %index1123, 16    ; 2 uses
  %i.arh = icmp eq i64 %index.next1145, %n.vec1121
  br i1 %i.arh, label %middle.block1146, label %vector.body1122, !llvm.loop !944

middle.block1146:                                 ; preds = %vector.body1122
  br i1 %cmp.n1147, label %.loopexit483.i, label %vec.epilog.iter.check1154

vec.epilog.iter.check1154:                        ; preds = %middle.block1146
  br i1 %min.epilog.iters.check1155, label %.lr.ph503.i.preheader, label %vec.epilog.ph1156, !prof !50

vec.epilog.ph1156:                                ; preds = %vector.main.loop.iter.check1118, %vec.epilog.iter.check1154
  %vec.epilog.resume.val1148 = phi i64 [ %n.vec1121, %vec.epilog.iter.check1154 ], [ 0, %vector.main.loop.iter.check1118 ]
  br label %vec.epilog.vector.body1158

vec.epilog.vector.body1158:                       ; preds = %vec.epilog.vector.body1158, %vec.epilog.ph1156
  %index1159 = phi i64 [ %vec.epilog.resume.val1148, %vec.epilog.ph1156 ], [ %index.next1181, %vec.epilog.vector.body1158 ] ; 2 uses
  %i.ari = shl nuw i64 %index1159, 2              ; 3 uses
  %i.arj = add nuw i64 %i.ari, %i.d               ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.arj
  %wide.vec1160 = load <16 x i8>, ptr %i.ark, align 1, !tbaa !29, !alias.scope !993 ; 4 uses
  %strided.vec1161 = shufflevector <16 x i8> %wide.vec1160, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1162 = shufflevector <16 x i8> %wide.vec1160, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1163 = shufflevector <16 x i8> %wide.vec1160, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1164 = shufflevector <16 x i8> %wide.vec1160, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.arl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ari
  %wide.vec1165 = load <16 x i8>, ptr %i.arl, align 1, !tbaa !29 ; 4 uses
  %strided.vec1166 = shufflevector <16 x i8> %wide.vec1165, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1167 = shufflevector <16 x i8> %wide.vec1165, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1168 = shufflevector <16 x i8> %wide.vec1165, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec1169 = shufflevector <16 x i8> %wide.vec1165, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.arj
  %wide.vec1170 = load <16 x i8>, ptr %i.arm, align 1, !tbaa !29 ; 4 uses
  %strided.vec1171 = shufflevector <16 x i8> %wide.vec1170, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1172 = shufflevector <16 x i8> %wide.vec1170, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1173 = shufflevector <16 x i8> %wide.vec1170, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec1174 = shufflevector <16 x i8> %wide.vec1170, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.ari
  %wide.vec1175 = load <16 x i8>, ptr %i.arn, align 1, !tbaa !29 ; 4 uses
  %strided.vec1176 = shufflevector <16 x i8> %wide.vec1175, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1177 = shufflevector <16 x i8> %wide.vec1175, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1178 = shufflevector <16 x i8> %wide.vec1175, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec1179 = shufflevector <16 x i8> %wide.vec1175, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.aro = zext <4 x i8> %strided.vec1171 to <4 x i32> ; 2 uses
  %i.arp = zext <4 x i8> %strided.vec1176 to <4 x i32> ; 3 uses
  %i.arq = sub nsw <4 x i32> %i.aro, %i.arp
  %i.arr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.arq, i1 true) ; 2 uses
  %i.ars = zext <4 x i8> %strided.vec1166 to <4 x i32> ; 2 uses
  %i.art = sub nsw <4 x i32> %i.ars, %i.arp
  %i.aru = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.art, i1 true) ; 2 uses
  %i.arv = add nuw nsw <4 x i32> %i.aro, %i.ars
  %i.arw = shl nuw nsw <4 x i32> %i.arp, splat (i32 1)
  %i.arx = sub nsw <4 x i32> %i.arv, %i.arw
  %i.ary = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.arx, i1 true)
  %i.arz = icmp samesign ult <4 x i32> %i.aru, %i.arr
  %i.asa = select <4 x i1> %i.arz, <4 x i8> %strided.vec1171, <4 x i8> %strided.vec1166
  %i.asb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aru, <4 x i32> %i.arr)
  %i.asc = icmp samesign ult <4 x i32> %i.ary, %i.asb
  %i.asd = select <4 x i1> %i.asc, <4 x i8> %strided.vec1176, <4 x i8> %i.asa
  %i.ase = add <4 x i8> %i.asd, %strided.vec1161
  %i.asf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.arj
  %i.asg = zext <4 x i8> %strided.vec1172 to <4 x i32> ; 2 uses
  %i.ash = zext <4 x i8> %strided.vec1177 to <4 x i32> ; 3 uses
  %i.asi = sub nsw <4 x i32> %i.asg, %i.ash
  %i.asj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.asi, i1 true) ; 2 uses
  %i.ask = zext <4 x i8> %strided.vec1167 to <4 x i32> ; 2 uses
  %i.asl = sub nsw <4 x i32> %i.ask, %i.ash
  %i.asm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.asl, i1 true) ; 2 uses
  %i.asn = add nuw nsw <4 x i32> %i.asg, %i.ask
  %i.aso = shl nuw nsw <4 x i32> %i.ash, splat (i32 1)
  %i.asp = sub nsw <4 x i32> %i.asn, %i.aso
  %i.asq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.asp, i1 true)
  %i.asr = icmp samesign ult <4 x i32> %i.asm, %i.asj
  %i.ass = select <4 x i1> %i.asr, <4 x i8> %strided.vec1172, <4 x i8> %strided.vec1167
  %i.ast = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.asm, <4 x i32> %i.asj)
  %i.asu = icmp samesign ult <4 x i32> %i.asq, %i.ast
  %i.asv = select <4 x i1> %i.asu, <4 x i8> %strided.vec1177, <4 x i8> %i.ass
  %i.asw = add <4 x i8> %i.asv, %strided.vec1162
  %i.asx = zext <4 x i8> %strided.vec1173 to <4 x i32> ; 2 uses
  %i.asy = zext <4 x i8> %strided.vec1178 to <4 x i32> ; 3 uses
  %i.asz = sub nsw <4 x i32> %i.asx, %i.asy
  %i.ata = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.asz, i1 true) ; 2 uses
  %i.atb = zext <4 x i8> %strided.vec1168 to <4 x i32> ; 2 uses
  %i.atc = sub nsw <4 x i32> %i.atb, %i.asy
  %i.atd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.atc, i1 true) ; 2 uses
  %i.ate = add nuw nsw <4 x i32> %i.asx, %i.atb
  %i.atf = shl nuw nsw <4 x i32> %i.asy, splat (i32 1)
  %i.atg = sub nsw <4 x i32> %i.ate, %i.atf
  %i.ath = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.atg, i1 true)
  %i.ati = icmp samesign ult <4 x i32> %i.atd, %i.ata
  %i.atj = select <4 x i1> %i.ati, <4 x i8> %strided.vec1173, <4 x i8> %strided.vec1168
  %i.atk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.atd, <4 x i32> %i.ata)
  %i.atl = icmp samesign ult <4 x i32> %i.ath, %i.atk
  %i.atm = select <4 x i1> %i.atl, <4 x i8> %strided.vec1178, <4 x i8> %i.atj
  %i.atn = add <4 x i8> %i.atm, %strided.vec1163
end_hunk_1
begin_hunk_2_@_ZL8unfilterPhPKhjjj:bb.a
vector.ph822:                                     ; preds = %vector.main.loop.iter.check820
  %i.baq = and i64 %i.bal, 24
  %n.vec823 = and i64 %i.bal, -32                 ; 5 uses
  %i.bar = add i64 %.17.i, %n.vec823
  %i.bas = add i64 %.3393.i, %n.vec823
  %i.bat = getelementptr i8, ptr %.02771, i64 %.3393.i
  br label %vector.body824

vector.body824:                                   ; preds = %vector.ph822, %vector.body824
  %index825 = phi i64 [ 0, %vector.ph822 ], [ %index.next830, %vector.body824 ] ; 3 uses
  %i.bau = add i64 %.17.i, %index825              ; 4 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bau
  %wide.load826 = load <32 x i8>, ptr %i.bav, align 1, !tbaa !29
  %i.baw = sub i64 %i.bau, %i.d
  %i.bax = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.baw
  %wide.load827 = load <32 x i8>, ptr %i.bax, align 1, !tbaa !29 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bau
  %wide.load828 = load <32 x i8>, ptr %i.bay, align 1, !tbaa !29 ; 2 uses
  %i.baz = getelementptr i8, ptr %i.bat, i64 %index825
  %wide.load829 = load <32 x i8>, ptr %i.baz, align 1, !tbaa !29 ; 2 uses
  %i.bba = zext <32 x i8> %wide.load828 to <32 x i32> ; 2 uses
  %i.bbb = zext <32 x i8> %wide.load829 to <32 x i32> ; 3 uses
  %i.bbc = sub nsw <32 x i32> %i.bba, %i.bbb
  %i.bbd = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.bbc, i1 true) ; 2 uses
  %i.bbe = zext <32 x i8> %wide.load827 to <32 x i32> ; 2 uses
  %i.bbf = sub nsw <32 x i32> %i.bbe, %i.bbb
  %i.bbg = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.bbf, i1 true) ; 2 uses
  %i.bbh = add nuw nsw <32 x i32> %i.bba, %i.bbe
  %i.bbi = shl nuw nsw <32 x i32> %i.bbb, splat (i32 1)
  %i.bbj = sub nsw <32 x i32> %i.bbh, %i.bbi
  %i.bbk = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.bbj, i1 true)
  %i.bbl = icmp samesign ult <32 x i32> %i.bbg, %i.bbd
  %i.bbm = select <32 x i1> %i.bbl, <32 x i8> %wide.load828, <32 x i8> %wide.load827
  %i.bbn = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.bbg, <32 x i32> %i.bbd)
  %i.bbo = icmp samesign ult <32 x i32> %i.bbk, %i.bbn
  %i.bbp = select <32 x i1> %i.bbo, <32 x i8> %wide.load829, <32 x i8> %i.bbm
  %i.bbq = add <32 x i8> %i.bbp, %wide.load826
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bau
  store <32 x i8> %i.bbq, ptr %i.bbr, align 1, !tbaa !29
  %index.next830 = add nuw i64 %index825, 32      ; 2 uses
  %i.bbs = icmp eq i64 %index.next830, %n.vec823
  br i1 %i.bbs, label %middle.block831, label %vector.body824, !llvm.loop !949

middle.block831:                                  ; preds = %vector.body824
  %cmp.n832 = icmp eq i64 %i.bal, %n.vec823
  br i1 %cmp.n832, label %.loopexit, label %vec.epilog.iter.check838

vec.epilog.iter.check838:                         ; preds = %middle.block831
  %min.epilog.iters.check839 = icmp eq i64 %i.baq, 0
  br i1 %min.epilog.iters.check839, label %.lr.ph510.i.preheader, label %vec.epilog.ph840, !prof !53

vec.epilog.ph840:                                 ; preds = %vector.main.loop.iter.check820, %vec.epilog.iter.check838
  %vec.epilog.resume.val833 = phi i64 [ %n.vec823, %vec.epilog.iter.check838 ], [ 0, %vector.main.loop.iter.check820 ]
  %n.vec841 = and i64 %i.bal, -8                  ; 4 uses
  %i.bbt = add i64 %.17.i, %n.vec841
  %i.bbu = add i64 %.3393.i, %n.vec841
  %i.bbv = getelementptr i8, ptr %.02771, i64 %.3393.i
  br label %vec.epilog.vector.body842

vec.epilog.vector.body842:                        ; preds = %vec.epilog.vector.body842, %vec.epilog.ph840
  %index843 = phi i64 [ %vec.epilog.resume.val833, %vec.epilog.ph840 ], [ %index.next848, %vec.epilog.vector.body842 ] ; 3 uses
  %i.bbw = add i64 %.17.i, %index843              ; 4 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bbw
  %wide.load844 = load <8 x i8>, ptr %i.bbx, align 1, !tbaa !29
  %i.bby = sub i64 %i.bbw, %i.d
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bby
  %wide.load845 = load <8 x i8>, ptr %i.bbz, align 1, !tbaa !29 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bbw
  %wide.load846 = load <8 x i8>, ptr %i.bca, align 1, !tbaa !29 ; 2 uses
  %i.bcb = getelementptr i8, ptr %i.bbv, i64 %index843
  %wide.load847 = load <8 x i8>, ptr %i.bcb, align 1, !tbaa !29 ; 2 uses
  %i.bcc = zext <8 x i8> %wide.load846 to <8 x i32> ; 2 uses
  %i.bcd = zext <8 x i8> %wide.load847 to <8 x i32> ; 3 uses
  %i.bce = sub nsw <8 x i32> %i.bcc, %i.bcd
  %i.bcf = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bce, i1 true) ; 2 uses
  %i.bcg = zext <8 x i8> %wide.load845 to <8 x i32> ; 2 uses
  %i.bch = sub nsw <8 x i32> %i.bcg, %i.bcd
  %i.bci = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bch, i1 true) ; 2 uses
  %i.bcj = add nuw nsw <8 x i32> %i.bcc, %i.bcg
  %i.bck = shl nuw nsw <8 x i32> %i.bcd, splat (i32 1)
  %i.bcl = sub nsw <8 x i32> %i.bcj, %i.bck
  %i.bcm = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bcl, i1 true)
  %i.bcn = icmp samesign ult <8 x i32> %i.bci, %i.bcf
  %i.bco = select <8 x i1> %i.bcn, <8 x i8> %wide.load846, <8 x i8> %wide.load845
  %i.bcp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bci, <8 x i32> %i.bcf)
  %i.bcq = icmp samesign ult <8 x i32> %i.bcm, %i.bcp
  %i.bcr = select <8 x i1> %i.bcq, <8 x i8> %wide.load847, <8 x i8> %i.bco
  %i.bcs = add <8 x i8> %i.bcr, %wide.load844
  %i.bct = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bbw
  store <8 x i8> %i.bcs, ptr %i.bct, align 1, !tbaa !29
  %index.next848 = add nuw i64 %index843, 8       ; 2 uses
  %i.bcu = icmp eq i64 %index.next848, %n.vec841
  br i1 %i.bcu, label %vec.epilog.middle.block849, label %vec.epilog.vector.body842, !llvm.loop !950

vec.epilog.middle.block849:                       ; preds = %vec.epilog.vector.body842
  %cmp.n850 = icmp eq i64 %i.bal, %n.vec841
  br i1 %cmp.n850, label %.loopexit, label %.lr.ph510.i.preheader

.lr.ph510.i.preheader:                            ; preds = %iter.check836, %vector.memcheck811, %vec.epilog.iter.check838, %vec.epilog.middle.block849
  %.18508.i.ph = phi i64 [ %.17.i, %iter.check836 ], [ %.17.i, %vector.memcheck811 ], [ %i.bar, %vec.epilog.iter.check838 ], [ %i.bbt, %vec.epilog.middle.block849 ]
  %.4394507.i.ph = phi i64 [ %.3393.i, %iter.check836 ], [ %.3393.i, %vector.memcheck811 ], [ %i.bas, %vec.epilog.iter.check838 ], [ %i.bbu, %vec.epilog.middle.block849 ]
  br label %.lr.ph510.i

.lr.ph510.i:                                      ; preds = %.lr.ph510.i.preheader, %.lr.ph510.i
  %.18508.i = phi i64 [ %i.bdt, %.lr.ph510.i ], [ %.18508.i.ph, %.lr.ph510.i.preheader ] ; 5 uses
  %.4394507.i = phi i64 [ %i.bdu, %.lr.ph510.i ], [ %.4394507.i.ph, %.lr.ph510.i.preheader ] ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.18508.i
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !29
  %i.bcx = sub i64 %.18508.i, %i.d
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bcx
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !29 ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %.02771, i64 %.18508.i
  %i.bdb = load i8, ptr %i.bda, align 1, !tbaa !29 ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.02771, i64 %.4394507.i
  %i.bdd = load i8, ptr %i.bdc, align 1, !tbaa !29 ; 2 uses
  %i.bde = zext i8 %i.bdb to i32                  ; 2 uses
  %i.bdf = zext i8 %i.bdd to i32                  ; 3 uses
  %i.bdg = sub nsw i32 %i.bde, %i.bdf
  %i.bdh = tail call i32 @llvm.abs.i32(i32 %i.bdg, i1 true) ; 2 uses
  %i.bdi = zext i8 %i.bcz to i32                  ; 2 uses
  %i.bdj = sub nsw i32 %i.bdi, %i.bdf
  %i.bdk = tail call i32 @llvm.abs.i32(i32 %i.bdj, i1 true) ; 2 uses
  %i.bdl = add nuw nsw i32 %i.bde, %i.bdi
  %i.bdm = shl nuw nsw i32 %i.bdf, 1
  %i.bdn = sub nsw i32 %i.bdl, %i.bdm
  %i.bdo = tail call i32 @llvm.abs.i32(i32 %i.bdn, i1 true)
  %i.bdp = icmp samesign ult i32 %i.bdk, %i.bdh
  %.032.i440.v.i = select i1 %i.bdp, i8 %i.bdb, i8 %i.bcz
  %.0.in.i441.i = tail call i32 @llvm.umin.i32(i32 %i.bdk, i32 %i.bdh)
  %i.bdq = icmp samesign ult i32 %i.bdo, %.0.in.i441.i
  %.v446.i = select i1 %i.bdq, i8 %i.bdd, i8 %.032.i440.v.i
  %i.bdr = add i8 %.v446.i, %i.bcw
  %i.bds = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.18508.i
  store i8 %i.bdr, ptr %i.bds, align 1, !tbaa !29
  %i.bdt = add i64 %.18508.i, 1                   ; 2 uses
  %i.bdu = add i64 %.4394507.i, 1
  %.not412.i = icmp eq i64 %i.bdt, %i.n
  br i1 %.not412.i, label %.loopexit, label %.lr.ph510.i, !llvm.loop !951

.preheader478.i:                                  ; preds = %.lr.ph513.i.prol.loopexit, %.lr.ph513.i, %middle.block795, %vec.epilog.middle.block808, %.preheader480.i
  br i1 %.not410514.i, label %.loopexit, label %iter.check761

iter.check761:                                    ; preds = %.preheader478.i
  %brmerge1373 = select i1 %min.iters.check745, i1 true, i1 %conflict.rdx744
  br i1 %brmerge1373, label %.lr.ph517.i.preheader, label %vector.main.loop.iter.check746

vector.main.loop.iter.check746:                   ; preds = %iter.check761
  br i1 %min.iters.check747, label %vec.epilog.ph765, label %vector.body750

vector.body750:                                   ; preds = %vector.main.loop.iter.check746, %vector.body750
  %index751 = phi i64 [ %index.next756, %vector.body750 ], [ 0, %vector.main.loop.iter.check746 ] ; 3 uses
  %i.bdv = add i64 %index751, %i.d                ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bdv ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 32
  %wide.load752 = load <32 x i8>, ptr %i.bdw, align 1, !tbaa !29, !alias.scope !994
  %wide.load753 = load <32 x i8>, ptr %i.bdx, align 1, !tbaa !29, !alias.scope !994
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index751 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 32
  %wide.load754 = load <32 x i8>, ptr %i.bdy, align 1, !tbaa !29, !alias.scope !995
  %wide.load755 = load <32 x i8>, ptr %i.bdz, align 1, !tbaa !29, !alias.scope !995
  %i.bea = add <32 x i8> %wide.load754, %wide.load752
  %i.beb = add <32 x i8> %wide.load755, %wide.load753
  %i.bec = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bdv ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 32
  store <32 x i8> %i.bea, ptr %i.bec, align 1, !tbaa !29, !alias.scope !996, !noalias !997
  store <32 x i8> %i.beb, ptr %i.bed, align 1, !tbaa !29, !alias.scope !996, !noalias !997
  %index.next756 = add nuw i64 %index751, 64      ; 2 uses
  %i.bee = icmp eq i64 %index.next756, %n.vec749
  br i1 %i.bee, label %middle.block757, label %vector.body750, !llvm.loop !956

middle.block757:                                  ; preds = %vector.body750
  br i1 %cmp.n758, label %.loopexit, label %vec.epilog.iter.check763

vec.epilog.iter.check763:                         ; preds = %middle.block757
  br i1 %min.epilog.iters.check764, label %.lr.ph517.i.preheader, label %vec.epilog.ph765, !prof !85

vec.epilog.ph765:                                 ; preds = %vector.main.loop.iter.check746, %vec.epilog.iter.check763
  %vec.epilog.resume.val759 = phi i64 [ %n.vec749, %vec.epilog.iter.check763 ], [ 0, %vector.main.loop.iter.check746 ]
  br label %vec.epilog.vector.body767

vec.epilog.vector.body767:                        ; preds = %vec.epilog.vector.body767, %vec.epilog.ph765
  %index768 = phi i64 [ %vec.epilog.resume.val759, %vec.epilog.ph765 ], [ %index.next771, %vec.epilog.vector.body767 ] ; 3 uses
  %i.bef = add i64 %index768, %i.d                ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bef
  %wide.load769 = load <8 x i8>, ptr %i.beg, align 1, !tbaa !29, !alias.scope !994
  %i.beh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %index768
  %wide.load770 = load <8 x i8>, ptr %i.beh, align 1, !tbaa !29, !alias.scope !995
  %i.bei = add <8 x i8> %wide.load770, %wide.load769
  %i.bej = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bef
  store <8 x i8> %i.bei, ptr %i.bej, align 1, !tbaa !29, !alias.scope !996, !noalias !997
  %index.next771 = add nuw i64 %index768, 8       ; 2 uses
  %i.bek = icmp eq i64 %index.next771, %n.vec766
  br i1 %i.bek, label %vec.epilog.middle.block772, label %vec.epilog.vector.body767, !llvm.loop !957

vec.epilog.middle.block772:                       ; preds = %vec.epilog.vector.body767
  br i1 %cmp.n773, label %.loopexit, label %.lr.ph517.i.preheader

.lr.ph517.i.preheader:                            ; preds = %iter.check761, %vec.epilog.iter.check763, %vec.epilog.middle.block772
  %.0516.i.ph = phi i64 [ 0, %iter.check761 ], [ %n.vec766, %vec.epilog.middle.block772 ], [ %n.vec749, %vec.epilog.iter.check763 ] ; 2 uses
  %.20515.i.ph = phi i64 [ %i.d, %iter.check761 ], [ %i.fs, %vec.epilog.middle.block772 ], [ %i.fr, %vec.epilog.iter.check763 ] ; 4 uses
  %i.bel = sub i64 %i.fe, %.20515.i.ph
  %xtraiter1301 = and i64 %i.bel, 3               ; 2 uses
  %lcmp.mod1302.not = icmp eq i64 %xtraiter1301, 0
  br i1 %lcmp.mod1302.not, label %.lr.ph517.i.prol.loopexit, label %.lr.ph517.i.prol

.lr.ph517.i.prol:                                 ; preds = %.lr.ph517.i.preheader, %.lr.ph517.i.prol
  %.0516.i.prol = phi i64 [ %i.bet, %.lr.ph517.i.prol ], [ %.0516.i.ph, %.lr.ph517.i.preheader ] ; 2 uses
  %.20515.i.prol = phi i64 [ %i.bes, %.lr.ph517.i.prol ], [ %.20515.i.ph, %.lr.ph517.i.preheader ] ; 3 uses
  %prol.iter1303 = phi i64 [ %prol.iter1303.next, %.lr.ph517.i.prol ], [ 0, %.lr.ph517.i.preheader ]
  %i.bem = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.20515.i.prol
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !29
  %i.beo = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0516.i.prol
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !29
  %i.beq = add i8 %i.bep, %i.ben
  %i.ber = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.20515.i.prol
  store i8 %i.beq, ptr %i.ber, align 1, !tbaa !29
  %i.bes = add i64 %.20515.i.prol, 1              ; 2 uses
  %i.bet = add nuw i64 %.0516.i.prol, 1           ; 2 uses
  %prol.iter1303.next = add i64 %prol.iter1303, 1 ; 2 uses
  %prol.iter1303.cmp.not = icmp eq i64 %prol.iter1303.next, %xtraiter1301
  br i1 %prol.iter1303.cmp.not, label %.lr.ph517.i.prol.loopexit, label %.lr.ph517.i.prol, !llvm.loop !958

.lr.ph517.i.prol.loopexit:                        ; preds = %.lr.ph517.i.prol, %.lr.ph517.i.preheader
  %.0516.i.unr = phi i64 [ %.0516.i.ph, %.lr.ph517.i.preheader ], [ %i.bet, %.lr.ph517.i.prol ]
  %.20515.i.unr = phi i64 [ %.20515.i.ph, %.lr.ph517.i.preheader ], [ %i.bes, %.lr.ph517.i.prol ]
  %i.beu = sub i64 %.20515.i.ph, %17
  %i.bev = icmp ugt i64 %i.beu, -4
  br i1 %i.bev, label %.loopexit, label %.lr.ph517.i

.lr.ph513.i:                                      ; preds = %.lr.ph513.i.prol.loopexit, %.lr.ph513.i
  %.19512.i = phi i64 [ %i.bgb, %.lr.ph513.i ], [ %.19512.i.unr, %.lr.ph513.i.prol.loopexit ] ; 10 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.19512.i
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !29
  %i.bey = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.19512.i
  store i8 %i.bex, ptr %i.bey, align 1, !tbaa !29
  %i.bez = add nuw nsw i64 %.19512.i, 1           ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bez
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !29
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bez
  store i8 %i.bfb, ptr %i.bfc, align 1, !tbaa !29
  %i.bfd = add nuw nsw i64 %.19512.i, 2           ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bfd
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !29
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bfd
  store i8 %i.bff, ptr %i.bfg, align 1, !tbaa !29
  %i.bfh = add nuw nsw i64 %.19512.i, 3           ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bfh
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !29
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bfh
  store i8 %i.bfj, ptr %i.bfk, align 1, !tbaa !29
  %i.bfl = add nuw nsw i64 %.19512.i, 4           ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bfl
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !29
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bfl
  store i8 %i.bfn, ptr %i.bfo, align 1, !tbaa !29
  %i.bfp = add nuw nsw i64 %.19512.i, 5           ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bfp
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !29
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bfp
  store i8 %i.bfr, ptr %i.bfs, align 1, !tbaa !29
  %i.bft = add nuw nsw i64 %.19512.i, 6           ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bft
  %i.bfv = load i8, ptr %i.bfu, align 1, !tbaa !29
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bft
  store i8 %i.bfv, ptr %i.bfw, align 1, !tbaa !29
  %i.bfx = add nuw nsw i64 %.19512.i, 7           ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bfx
  %i.bfz = load i8, ptr %i.bfy, align 1, !tbaa !29
  %i.bga = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bfx
  store i8 %i.bfz, ptr %i.bga, align 1, !tbaa !29
  %i.bgb = add nuw nsw i64 %.19512.i, 8           ; 2 uses
  %.not409.i.7 = icmp eq i64 %i.bgb, %i.d
  br i1 %.not409.i.7, label %.preheader478.i, label %.lr.ph513.i, !llvm.loop !959

.lr.ph517.i:                                      ; preds = %.lr.ph517.i.prol.loopexit, %.lr.ph517.i
  %.0516.i = phi i64 [ %i.bhh, %.lr.ph517.i ], [ %.0516.i.unr, %.lr.ph517.i.prol.loopexit ] ; 5 uses
  %.20515.i = phi i64 [ %i.bhg, %.lr.ph517.i ], [ %.20515.i.unr, %.lr.ph517.i.prol.loopexit ] ; 6 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.20515.i
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !29
  %i.bge = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0516.i
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !29
  %i.bgg = add i8 %i.bgf, %i.bgd
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.20515.i
  store i8 %i.bgg, ptr %i.bgh, align 1, !tbaa !29
  %i.bgi = add i64 %.20515.i, 1                   ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bgi
  %i.bgk = load i8, ptr %i.bgj, align 1, !tbaa !29
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0516.i
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 1
  %i.bgn = load i8, ptr %i.bgm, align 1, !tbaa !29
  %i.bgo = add i8 %i.bgn, %i.bgk
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bgi
  store i8 %i.bgo, ptr %i.bgp, align 1, !tbaa !29
  %i.bgq = add i64 %.20515.i, 2                   ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bgq
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !29
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0516.i
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 2
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !29
  %i.bgw = add i8 %i.bgv, %i.bgs
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bgq
  store i8 %i.bgw, ptr %i.bgx, align 1, !tbaa !29
  %i.bgy = add i64 %.20515.i, 3                   ; 2 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.bgy
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !29
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.0516.i
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bhb, i64 3
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !29
  %i.bhe = add i8 %i.bhd, %i.bha
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.bgy
  store i8 %i.bhe, ptr %i.bhf, align 1, !tbaa !29
  %i.bhg = add i64 %.20515.i, 4                   ; 2 uses
  %i.bhh = add nuw i64 %.0516.i, 4
  %.not410.i.3 = icmp eq i64 %i.bhg, %i.n
  br i1 %.not410.i.3, label %.loopexit, label %.lr.ph517.i, !llvm.loop !960

.loopexit:                                        ; preds = %.lr.ph510.i, %.lr.ph517.i.prol.loopexit, %.lr.ph517.i, %.lr.ph542.i.prol.loopexit, %.lr.ph542.i, %.lr.ph549.i.prol.loopexit, %.lr.ph549.i, %.lr.ph552.i.prol.loopexit, %.lr.ph552.i, %.lr.ph555.i.prol.loopexit, %.lr.ph555.i, %.lr.ph562.i.prol.loopexit, %.lr.ph562.i, %.lr.ph565.i.prol.loopexit, %.lr.ph565.i, %middle.block831, %vec.epilog.middle.block849, %middle.block757, %vec.epilog.middle.block772, %middle.block416, %vec.epilog.middle.block433, %middle.block345, %vec.epilog.middle.block360, %middle.block303, %vec.epilog.middle.block317, %middle.block259, %vec.epilog.middle.block272, %middle.block186, %vec.epilog.middle.block201, %middle.block, %vec.epilog.middle.block, %.preheader467.i, %.loopexit472.i, %.preheader463.i, %.preheader465.i, %.preheader478.i, %.preheader460.i, %.preheader.i, %.loopexit483.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZL16unfilterScanlinePhPKhS1_mhm.exit, label %bb.b, !llvm.loop !961

_ZL16unfilterScanlinePhPKhS1_mhm.exit:            ; preds = %.loopexit, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 36, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr nofree noundef nonnull captures(none) initializes((0, 28)) %0, ptr nofree noundef nonnull captures(none) initializes((0, 28)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %3, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #9 {
bb.a:
  %i.a = add i32 %5, 7
  %i.b = lshr i32 %i.a, 3
  store i32 %i.b, ptr %0, align 4, !tbaa !30
  %i.c = add i32 %6, 7
  %i.d = lshr i32 %i.c, 3                         ; 4 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !30
  %i.e = load i32, ptr %0, align 4, !tbaa !30
  %i.f = icmp eq i32 %i.e, 0
  %spec.store.select = select i1 %i.f, i32 0, i32 %i.d ; 2 uses
  store i32 %spec.store.select, ptr %1, align 4, !tbaa !30
  %i.g = icmp eq i32 %spec.store.select, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = add i32 %5, 3
  %i.i = lshr i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 %i.d, ptr %i.k, align 4, !tbaa !30
  %i.l = load i32, ptr %i.j, align 4, !tbaa !30
  %i.m = icmp eq i32 %i.l, 0
  %spec.store.select.1 = select i1 %i.m, i32 0, i32 %i.d ; 2 uses
  store i32 %spec.store.select.1, ptr %i.k, align 4, !tbaa !30
  %i.n = icmp eq i32 %spec.store.select.1, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = add i32 %5, 3
  %i.p = lshr i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !30
  %i.r = add i32 %6, 3
  %i.s = lshr i32 %i.r, 3                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !30
  %i.u = load i32, ptr %i.q, align 4, !tbaa !30
  %i.v = icmp eq i32 %i.u, 0
  %spec.store.select.2 = select i1 %i.v, i32 0, i32 %i.s ; 2 uses
  store i32 %spec.store.select.2, ptr %i.t, align 4, !tbaa !30
  %i.w = icmp eq i32 %spec.store.select.2, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 4, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = add i32 %5, 1
  %i.y = lshr i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !30
  %i.aa = add i32 %6, 3
  %i.ab = lshr i32 %i.aa, 2                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !30
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !30
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.store.select.3 = select i1 %i.ae, i32 0, i32 %i.ab ; 2 uses
  store i32 %spec.store.select.3, ptr %i.ac, align 4, !tbaa !30
  %i.af = icmp eq i32 %spec.store.select.3, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = add i32 %5, 1
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !30
  %i.aj = add i32 %6, 1
  %i.ak = lshr i32 %i.aj, 2                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !30
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !30
  %i.an = icmp eq i32 %i.am, 0
  %spec.store.select.4 = select i1 %i.an, i32 0, i32 %i.ak ; 2 uses
  store i32 %spec.store.select.4, ptr %i.al, align 4, !tbaa !30
  %i.ao = icmp eq i32 %spec.store.select.4, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 4, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = lshr i32 %5, 1
end_hunk_2
