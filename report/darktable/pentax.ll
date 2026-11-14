Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/pentax?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6LibRaw9PentaxISOEt:bb.a
.fold.split77:                                    ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split61, %.fold.split60, %.fold.split59, %.fold.split58, %.fold.split57, %.fold.split56, %.fold.split55, %.fold.split54, %.fold.split53, %.fold.split52, %.fold.split51, %.fold.split50, %.fold.split49, %.fold.split48, %.fold.split47, %.fold.split46, %.fold.split45, %.fold.split44, %.fold.split43, %.fold.split42, %.fold.split41, %.fold.split40, %.fold.split39, %.fold.split38, %.fold.split37, %.fold.split36, %.fold.split35, %.fold.split34, %.fold.split33, %.fold.split32, %.fold.split31, %.fold.split30, %.fold.split29, %.fold.split28, %.fold.split27, %.fold.split26, %.fold.split25, %.fold.split24, %.fold.split23, %.fold.split22, %.fold.split21, %.fold.split20, %.fold.split19, %.fold.split18, %.fold.split17, %.fold.split16, %.fold.split15, %.fold.split14, %.fold.split13, %.fold.split12, %.fold.split11, %.fold.split10, %.fold.split9, %.fold.split
  %.lcssa = phi i64 [ 0, %bb.a ], [ 69, %.fold.split76 ], [ 1, %.fold.split ], [ 2, %.fold.split9 ], [ 3, %.fold.split10 ], [ 4, %.fold.split11 ], [ 5, %.fold.split12 ], [ 6, %.fold.split13 ], [ 7, %.fold.split14 ], [ 8, %.fold.split15 ], [ 9, %.fold.split16 ], [ 10, %.fold.split17 ], [ 11, %.fold.split18 ], [ 12, %.fold.split19 ], [ 13, %.fold.split20 ], [ 14, %.fold.split21 ], [ 15, %.fold.split22 ], [ 16, %.fold.split23 ], [ 17, %.fold.split24 ], [ 18, %.fold.split25 ], [ 19, %.fold.split26 ], [ 20, %.fold.split27 ], [ 21, %.fold.split28 ], [ 22, %.fold.split29 ], [ 23, %.fold.split30 ], [ 24, %.fold.split31 ], [ 25, %.fold.split32 ], [ 26, %.fold.split33 ], [ 27, %.fold.split34 ], [ 28, %.fold.split35 ], [ 29, %.fold.split36 ], [ 30, %.fold.split37 ], [ 31, %.fold.split38 ], [ 32, %.fold.split39 ], [ 33, %.fold.split40 ], [ 34, %.fold.split41 ], [ 35, %.fold.split42 ], [ 36, %.fold.split43 ], [ 37, %.fold.split44 ], [ 38, %.fold.split45 ], [ 39, %.fold.split46 ], [ 40, %.fold.split47 ], [ 41, %.fold.split48 ], [ 42, %.fold.split49 ], [ 43, %.fold.split50 ], [ 44, %.fold.split51 ], [ 45, %.fold.split52 ], [ 46, %.fold.split53 ], [ 47, %.fold.split54 ], [ 48, %.fold.split55 ], [ 49, %.fold.split56 ], [ 50, %.fold.split57 ], [ 51, %.fold.split58 ], [ 52, %.fold.split59 ], [ 53, %.fold.split60 ], [ 54, %.fold.split61 ], [ 55, %.fold.split62 ], [ 56, %.fold.split63 ], [ 57, %.fold.split64 ], [ 58, %.fold.split65 ], [ 59, %.fold.split66 ], [ 60, %.fold.split67 ], [ 61, %.fold.split68 ], [ 62, %.fold.split69 ], [ 63, %.fold.split70 ], [ 64, %.fold.split71 ], [ 65, %.fold.split72 ], [ 66, %.fold.split73 ], [ 67, %.fold.split74 ], [ 68, %.fold.split75 ], [ 70, %.fold.split77 ]
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6LibRaw9PentaxISOEt.value, i64 %.lcssa
  %i.b = load double, ptr %i.a, align 8, !tbaa !108
  %i.c = fptrunc reassoc nsz arcp contract afn double %i.b to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %i.c, %bb.b ], [ 6.553500e+04, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float %.sink, ptr %i.d, align 8, !tbaa !109
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14PentaxLensInfoEyj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.umax.i32(i32 %2, i32 128)
  %i.b = add i32 %i.a, 1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.c, i64 noundef 1) ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 2 uses
  %i.g = zext i32 %2 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.d, i64 noundef %i.g, i64 noundef 1), !call_target !91 ; 0 uses
  %i.l = icmp ult i64 %1, 76700
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.f [
    i64 76706, label %bb.c
    i64 76701, label %bb.c
    i64 76700, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.n = load i8, ptr %i.m, align 1, !tbaa !92
  %.off = add i8 %i.n, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.d, align 1, !tbaa !92
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !92
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  store i64 %i.x, ptr %i.o, align 8, !tbaa !93
  br label %bb.o

bb.f:                                             ; preds = %bb.c, %bb.b
  switch i32 %2, label %bb.m [
    i32 90, label %bb.g
    i32 91, label %bb.i
    i32 80, label %bb.k
    i32 128, label %bb.k
    i32 168, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !93
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !92
  %i.ad = and i8 %i.ac, 15
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !92
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ae, %i.ah
  %i.aj = shl nuw nsw i64 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !92
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  store i64 %i.an, ptr %i.y, align 8, !tbaa !93
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !93
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !92
  %i.at = and i8 %i.as, 15
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !92
  %i.ax = zext i8 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.au, %i.ax
  %i.az = shl nuw nsw i64 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !92
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  store i64 %i.bd, ptr %i.ao, align 8, !tbaa !93
  br label %bb.o

bb.k:                                             ; preds = %bb.f, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !93
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !92
  %i.bj = and i8 %i.bi, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = zext i8 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bk, %i.bn
  %i.bp = shl nuw nsw i64 %i.bo, 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !92
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, %i.bs
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !93
  br label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !93
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.d, align 1, !tbaa !92
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !92
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bz, %i.cc
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !92
  %i.ch = zext i8 %i.cg to i64
  %i.ci = or disjoint i64 %i.ce, %i.ch
  store i64 %i.ci, ptr %i.bu, align 8, !tbaa !93
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.d, %bb.n, %bb.m, %bb.k, %bb.l, %bb.i, %bb.j, %bb.g, %bb.h
  %.not75 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.l ]
  %.0 = phi i64 [ 3, %bb.e ], [ 3, %bb.d ], [ 4, %bb.n ], [ 4, %bb.m ], [ 15, %bb.k ], [ 13, %bb.h ], [ 13, %bb.g ], [ 12, %bb.j ], [ 12, %bb.i ], [ 15, %bb.l ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !92  ; 2 uses
  %.not72 = icmp eq i8 %i.cl, 0
  br i1 %.not72, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !94
  %i.co = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.co, 1.000000e-01
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = zext i8 %i.cl to i32                    ; 2 uses
  %i.cr = lshr i32 %i.cq, 2
  %i.cs = mul nuw nsw i32 %i.cr, 10
  %i.ct = uitofp nneg i32 %i.cs to float
  %i.cu = and i32 %i.cq, 3
  %i.cv = add nsw i32 %i.cu, -2
  %i.cw = sitofp i32 %i.cv to float               ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.cx, 6.400000e+01
  %mul = fmul reassoc nsz arcp contract afn float %i.cw, 2.000000e+00
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %mul)
  %i.cy = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.ct
  store float %i.cz, ptr %i.cm, align 8, !tbaa !94
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 10 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !92  ; 3 uses
  %.not73 = icmp ult i8 %i.db, 16
  br i1 %.not73, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = lshr i8 %i.db, 4
  %i.dd = uitofp nneg i8 %i.dc to float
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, 2.500000e-01 ; 2 uses
  %3 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.de)
  %or.cond.i.i79 = fcmp reassoc nsz arcp contract afn ogt float %3, 6.400000e+01
  %exp284 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.de)
  %i.df = select reassoc nsz arcp contract afn i1 %or.cond.i.i79, float 0.000000e+00, float %exp284
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store float %i.df, ptr %i.dg, align 8, !tbaa !110
  %.pre = load i8, ptr %i.da, align 1, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dh = phi i8 [ %.pre, %bb.s ], [ %i.db, %bb.r ]
  %i.di = and i8 %i.dh, 15                        ; 2 uses
  %.not74 = icmp eq i8 %i.di, 0
  br i1 %.not74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %narrow = add nuw nsw i8 %i.di, 10
  %i.dj = uitofp nneg i8 %narrow to float
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 2.500000e-01 ; 2 uses
  %4 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dk)
  %or.cond.i.i80 = fcmp reassoc nsz arcp contract afn ogt float %4, 6.400000e+01
  %exp286 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.dk)
  %i.dl = select reassoc nsz arcp contract afn i1 %or.cond.i.i80, float 0.000000e+00, float %exp286
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1500
  store float %i.dl, ptr %i.dm, align 4, !tbaa !111
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not75, label %bb.aa, label %switch.lookup

switch.lookup:                                    ; preds = %bb.v
  %i.dn = load i8, ptr %i.cj, align 1, !tbaa !92
  %i.do = and i8 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.dq = zext nneg i8 %i.do to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6LibRaw14PentaxLensInfoEyj, i64 %i.dq
  %switch.load = load float, ptr %switch.gep, align 4
  store float %switch.load, ptr %i.dp, align 8, !tbaa !112
  %i.dr = load i8, ptr %i.cj, align 1, !tbaa !92
  %i.ds = and i8 %i.dr, 112                       ; 2 uses
  %.not77 = icmp eq i8 %i.ds, 0
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %switch.lookup
  %i.dt = lshr exact i8 %i.ds, 4
  %i.du = xor i8 %i.dt, 7
  %i.dv = uitofp nneg i8 %i.du to float
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, 5.000000e-01
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, 5.000000e+00
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1512
  store float %i.dx, ptr %i.dy, align 8, !tbaa !113
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %switch.lookup
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cj, i64 3 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !92
  %i.eb = and i8 %i.ea, -8
  %i.ec = uitofp i8 %i.eb to float
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1504
  store float %i.ec, ptr %i.ed, align 8, !tbaa !114
  %i.ee = load i8, ptr %i.dz, align 1, !tbaa !92
  %i.ef = and i8 %i.ee, 7
  %i.eg = uitofp nneg i8 %i.ef to float
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1508
  store float %i.eg, ptr %i.eh, align 4, !tbaa !115
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !92  ; 2 uses
  %i.ek = icmp ugt i8 %i.ej, 1
  br i1 %i.ek, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.em = load float, ptr %i.el, align 8, !tbaa !110
  %i.en = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.em)
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.en, f0x3F333333
  br i1 %i.eo, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ep = and i8 %i.ej, 127
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = add nsw i32 %i.eq, -1
  %i.es = sitofp reassoc nsz arcp contract afn i32 %i.er to float
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, 3.125000e-02 ; 2 uses
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.et)
  %or.cond.i.i81 = fcmp reassoc nsz arcp contract afn ogt float %i.eu, 6.400000e+01
  %exp288 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.et)
  %i.ev = select reassoc nsz arcp contract afn i1 %or.cond.i.i81, float 0.000000e+00, float %exp288
  store float %i.ev, ptr %i.el, align 8, !tbaa !110
  br label %.critedge

bb.aa:                                            ; preds = %bb.v
  %.not76 = icmp eq i64 %1, 77430
  br i1 %.not76, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !92  ; 2 uses
  %i.ey = icmp ugt i8 %i.ex, 1
  br i1 %i.ey, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !110
  %i.fb = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp reassoc nsz arcp contract afn olt float %i.fb, f0x3F333333
  br i1 %i.fc, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.fd = and i8 %i.ex, 127
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = add nsw i32 %i.fe, -1
  %i.fg = sitofp reassoc nsz arcp contract afn i32 %i.ff to float
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, 3.125000e-02 ; 2 uses
  %i.fi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fh)
  %or.cond.i.i82 = fcmp reassoc nsz arcp contract afn ogt float %i.fi, 6.400000e+01
  %exp290 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fh)
  %i.fj = select reassoc nsz arcp contract afn i1 %or.cond.i.i82, float 0.000000e+00, float %exp290
  store float %i.fj, ptr %i.ez, align 8, !tbaa !110
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.d)
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw21parsePentaxMakernotesExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  %i.b = alloca i8, align 1                       ; 10 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  switch i32 %2, label %bb.an [
    i32 5, label %bb.b
    i32 8, label %bb.c
    i32 13, label %bb.d
    i32 14, label %bb.e
    i32 15, label %bb.g
    i32 16, label %bb.n
    i32 19, label %bb.o
    i32 20, label %bb.p
    i32 23, label %bb.q
    i32 27, label %bb.r
    i32 28, label %bb.s
    i32 29, label %bb.t
    i32 52, label %bb.u
    i32 55, label %bb.v
    i32 56, label %bb.z
    i32 57, label %bb.aa
    i32 60, label %bb.ab
    i32 63, label %bb.af
    i32 71, label %bb.ag
    i32 77, label %bb.ah
    i32 92, label %bb.ak
    i32 105, label %bb.al
    i32 114, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 %i.e, ptr %i.f, align 8, !tbaa !118
  tail call void @_ZN6LibRaw21setPentaxBodyFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.e)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4130
  store i16 %i.g, ptr %i.h, align 2, !tbaa !119
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4100
  store i16 %i.i, ptr %i.j, align 4, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %i.i, ptr %i.k, align 2, !tbaa !95
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 %i.l, ptr %i.m, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5102
  store i16 %i.l, ptr %i.n, align 2, !tbaa !121
  %i.o = icmp eq i32 %4, 2
  br i1 %i.o, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4108
  store i16 %i.p, ptr %i.q, align 4, !tbaa !122
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  switch i32 %3, label %.loopexit [
    i32 4, label %bb.h
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4116 ; 2 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !123
  %.not158 = icmp eq i32 %i.r, 0
  br i1 %.not158, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.s, align 4, !tbaa !123
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i32 3, ptr %i.t, align 8, !tbaa !124
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4116 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !123
  %i.x = icmp eq i16 %i.u, -1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 -1, ptr %i.w, align 4, !tbaa !123
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i32 2, ptr %i.y, align 8, !tbaa !124
  br label %.loopexit

bb.n:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4120
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !125
  br label %.loopexit

bb.o:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ac = uitofp reassoc nsz arcp contract afn i16 %i.ab to float
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, 1.000000e-01
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.ad, ptr %i.ae, align 4, !tbaa !126
  br label %.loopexit

bb.p:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw9PentaxISOEt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef zeroext %i.af)
  br label %.loopexit

bb.q:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.ag, ptr %i.ah, align 4, !tbaa !127
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  %i.ai = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = uitofp reassoc nsz arcp contract afn i16 %i.ai to float
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 3.906250e-03
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.ak, ptr %i.al, align 4, !tbaa !128
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.an = uitofp reassoc nsz arcp contract afn i16 %i.am to float
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, 3.906250e-03
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store float %i.ao, ptr %i.ap, align 4, !tbaa !128
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.aq = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ar = uitofp reassoc nsz arcp contract afn i32 %i.aq to float
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, f0x3C23D70A
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store float %i.as, ptr %i.at, align 8, !tbaa !94
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !79 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.bb = load i8, ptr %i.a, align 1, !tbaa !92
  store i8 %i.bb, ptr %i.av, align 8, !tbaa !92
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !79 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.bh = load i8, ptr %i.a, align 1, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4097
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !92
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !79 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.bo = load i8, ptr %i.a, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4098
  store i8 %i.bo, ptr %i.bp, align 2, !tbaa !92
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !79 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4099
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !92
  %i.bx = load i8, ptr %i.av, align 8, !tbaa !92
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.by, ptr %i.bz, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  %i.ca = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4856 ; 3 uses
  switch i16 %i.ca, label %bb.y [
    i16 0, label %bb.w
    i16 1, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  store i16 1, ptr %i.cb, align 8, !tbaa !129
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  store i16 2, ptr %i.cb, align 8, !tbaa !129
  br label %.loopexit

bb.y:                                             ; preds = %bb.v
  store i16 255, ptr %i.cb, align 8, !tbaa !129
  br label %.loopexit

bb.z:                                             ; preds = %bb.a
  %i.cc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !131
  %i.ce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.ce, ptr %i.cf, align 8, !tbaa !132
  br label %.loopexit

bb.aa:                                            ; preds = %bb.a
  %i.cg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !133
  %i.ci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ci, ptr %i.cj, align 4, !tbaa !134
  br label %.loopexit

bb.ab:                                            ; preds = %bb.a
  %i.ck = icmp eq i32 %4, 4
  %i.cl = icmp eq i32 %3, 7
  %or.cond = and i1 %i.cl, %i.ck
  br i1 %or.cond, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.cm = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cn = and i32 %i.cm, 2047                     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4116 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !123
  %.not157 = icmp eq i32 %i.cn, 0
  br i1 %.not157, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 -1, ptr %i.co, align 4, !tbaa !123
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i32 1, ptr %i.cp, align 8, !tbaa !124
  br label %.loopexit

bb.af:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !79 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr), !call_target !135
  %i.cw = shl i32 %i.cv, 8
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !79 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx), !call_target !135
  %i.dc = or i32 %i.db, %i.cw
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !93
  br label %.loopexit

bb.ag:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !79 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !81
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg), !call_target !135
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to float
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store float %i.dl, ptr %i.dm, align 8, !tbaa !136
  br label %.loopexit

bb.ah:                                            ; preds = %bb.a
  %i.dn = icmp eq i32 %3, 9
  br i1 %i.dn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.do = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 9)
  %i.dp = fptrunc reassoc nsz arcp contract afn double %i.do to float
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 3.906250e-03
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store float %i.dq, ptr %i.dr, align 8, !tbaa !137
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !79 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt), !call_target !135
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = sitofp reassoc nsz arcp contract afn i16 %i.dy to float
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, f0x3E2AAAAB
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store float %i.ea, ptr %i.eb, align 8, !tbaa !137
  br label %.loopexit

bb.ak:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !79 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !81
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed), !call_target !135 ; 0 uses
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !79 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !81
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef i32 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ei), !call_target !135
  %i.en = trunc i32 %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 5108
  store i16 %i.en, ptr %i.eo, align 4, !tbaa !138
  br label %.loopexit

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 4122
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !79 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !81
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.ew = load i8, ptr %i.b, align 1, !tbaa !92
  store i8 %i.ew, ptr %i.eq, align 2, !tbaa !92
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !79 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !81
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.fc = load i8, ptr %i.b, align 1, !tbaa !92
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4123
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !92
  %i.fe = load ptr, ptr %i.ep, align 8, !tbaa !79 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !81
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef i32 %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.fj = load i8, ptr %i.b, align 1, !tbaa !92
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4124
  store i8 %i.fj, ptr %i.fk, align 4, !tbaa !92
  %i.fl = load ptr, ptr %i.ep, align 8, !tbaa !79 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !81
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef i32 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1), !call_target !91 ; 0 uses
  %i.fq = load i8, ptr %i.b, align 1, !tbaa !92
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4125
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

bb.am:                                            ; preds = %bb.a
  %i.fs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 4126
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !139
  br label %.loopexit

bb.an:                                            ; preds = %bb.a
  %i.fu = icmp eq i32 %2, 126
  %i.fv = icmp eq i32 %5, 0                       ; 6 uses
  %or.cond3 = and i1 %i.fu, %i.fv
  br i1 %or.cond3, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fw = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.fy = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.fz = shufflevector <4 x i32> %i.fy, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.fz, ptr %i.fx, align 4, !tbaa !99
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an
  %i.ga = icmp eq i32 %2, 128
  br i1 %i.ga, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !79 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !81
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = tail call noundef i32 %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.gc), !call_target !135
  %i.gh = shl i32 %i.gg, 16
  %i.gi = ashr exact i32 %i.gh, 16
  switch i32 %i.gi, label %.loopexit [
    i32 0, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 3, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i16 1333, ptr %i.gj, align 4, !tbaa !140
  br label %.loopexit

bb.as:                                            ; preds = %bb.aq
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i16 1500, ptr %i.gk, align 4, !tbaa !140
  br label %.loopexit

bb.at:                                            ; preds = %bb.aq
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i16 1777, ptr %i.gl, align 4, !tbaa !140
  br label %.loopexit

bb.au:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i16 1000, ptr %i.gm, align 4, !tbaa !140
  br label %.loopexit

bb.av:                                            ; preds = %bb.ap
  %i.gn = icmp eq i32 %2, 512
  %or.cond5 = and i1 %i.gn, %i.fv
  br i1 %or.cond5, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.av
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.gp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gq = zext i16 %i.gp to i32
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !99
  %i.gr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gs = zext i16 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 136676
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !99
  %i.gu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gv = zext i16 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !99
  %i.gx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gy = zext i16 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !99
  br label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.ha = icmp eq i32 %2, 513
  %or.cond7 = and i1 %i.ha, %i.fv
  br i1 %or.cond7, label %.preheader165, label %bb.ax

.preheader165:                                    ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.hc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hd = uitofp reassoc nsz arcp contract afn i16 %i.hc to float
  store float %i.hd, ptr %i.hb, align 4, !tbaa !128
  %i.he = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hf = uitofp reassoc nsz arcp contract afn i16 %i.he to float
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.hf, ptr %i.hg, align 8, !tbaa !128
  %i.hh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hi = uitofp reassoc nsz arcp contract afn i16 %i.hh to float
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.hi, ptr %i.hj, align 8, !tbaa !128
  %i.hk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hl = uitofp reassoc nsz arcp contract afn i16 %i.hk to float
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.hl, ptr %i.hm, align 4, !tbaa !128
  br label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.hn = icmp eq i32 %2, 515
  %or.cond9 = and i1 %i.hn, %i.fv
  br i1 %or.cond9, label %.preheader168, label %bb.ay

.preheader168:                                    ; preds = %bb.ax
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 153284
  %i.hp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hq = sitofp reassoc nsz arcp contract afn i16 %i.hp to float
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, f0x39000000
  store float %i.hr, ptr %i.ho, align 4, !tbaa !128
  %i.hs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ht = sitofp reassoc nsz arcp contract afn i16 %i.hs to float
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, f0x39000000
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 153288
  store float %i.hu, ptr %i.hv, align 8, !tbaa !128
  %i.hw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hx = sitofp reassoc nsz arcp contract afn i16 %i.hw to float
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, f0x39000000
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 153292
  store float %i.hy, ptr %i.hz, align 4, !tbaa !128
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 153300
  %i.ib = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ic = sitofp reassoc nsz arcp contract afn i16 %i.ib to float
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, f0x39000000
  store float %i.id, ptr %i.ia, align 4, !tbaa !128
  %i.ie = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.if = sitofp reassoc nsz arcp contract afn i16 %i.ie to float
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, f0x39000000
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 153304
  store float %i.ig, ptr %i.ih, align 8, !tbaa !128
  %i.ii = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ij = sitofp reassoc nsz arcp contract afn i16 %i.ii to float
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, f0x39000000
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 153308
  store float %i.ik, ptr %i.il, align 4, !tbaa !128
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 153316
  %i.in = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.io = sitofp reassoc nsz arcp contract afn i16 %i.in to float
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, f0x39000000
  store float %i.ip, ptr %i.im, align 4, !tbaa !128
  %i.iq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ir = sitofp reassoc nsz arcp contract afn i16 %i.iq to float
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, f0x39000000
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 153320
  store float %i.is, ptr %i.it, align 8, !tbaa !128
  %i.iu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iv = sitofp reassoc nsz arcp contract afn i16 %i.iu to float
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, f0x39000000
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 153324
  store float %i.iw, ptr %i.ix, align 4, !tbaa !128
  br label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  switch i32 %2, label %bb.bf [
    i32 517, label %bb.az
    i32 519, label %bb.bd
  ]

bb.az:                                            ; preds = %bb.ay
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 5 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !141 ; 2 uses
  %i.ja = icmp slt i32 %i.iz, 4
  br i1 %i.ja, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 4 uses
  %i.jc = sext i32 %i.iz to i64
  %i.jd = getelementptr inbounds [24 x i8], ptr %i.jb, i64 %i.jc ; 3 uses
  store i32 517, ptr %i.jd, align 8, !tbaa !143
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.jg = load i16, ptr %i.jf, align 8, !tbaa !144
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store i16 %i.jg, ptr %i.jh, align 4, !tbaa !145
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 %4, ptr %i.ji, align 4, !tbaa !146
  %i.jj = add i32 %4, 1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.jk, i64 noundef 1) ; 2 uses
  %i.jm = load i32, ptr %i.iy, align 8, !tbaa !141
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [24 x i8], ptr %i.jb, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store ptr %i.jl, ptr %i.jp, align 8, !tbaa !147
  %i.jq = load ptr, ptr %i.je, align 8, !tbaa !79 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !146
  %i.jt = zext i32 %i.js to i64
  %i.ju = load ptr, ptr %i.jq, align 8, !tbaa !81
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = tail call noundef i32 %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef %i.jl, i64 noundef %i.jt, i64 noundef 1), !call_target !91 ; 0 uses
  %i.jy = add i32 %4, -11
  %or.cond11 = icmp ult i32 %i.jy, 14
  %.pre = load i32, ptr %i.iy, align 8, !tbaa !141 ; 2 uses
  br i1 %or.cond11, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jz = sext i32 %.pre to i64
  %i.ka = getelementptr inbounds [24 x i8], ptr %i.jb, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !147 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 3 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !92
  %i.kf = lshr i8 %i.ke, 4
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4128
  store i8 %i.kf, ptr %i.kg, align 8, !tbaa !148
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !92
  %i.ki = and i8 %i.kh, 15
  %i.kj = zext nneg i8 %i.ki to i16
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !120
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.km = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.kl)
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i16 %i.km, ptr %i.kn, align 2, !tbaa !120
  %i.ko = load i32, ptr %i.iy, align 8, !tbaa !141 ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [24 x i8], ptr %i.jb, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !147
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 10
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !92
  %i.kv = and i8 %i.ku, 15
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 4129
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !149
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.kx = phi i32 [ %i.ko, %bb.bb ], [ %.pre, %bb.ba ]
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.iy, align 8, !tbaa !141
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ay
  %i.kz = icmp ult i32 %4, 65535
  br i1 %i.kz, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !74
  tail call void @_ZN6LibRaw14PentaxLensInfoEyj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.lb, i32 noundef %4)
  br label %.loopexit

bb.bf:                                            ; preds = %bb.ay
  %i.lc = add i32 %2, -525                        ; 6 uses
  %or.cond13 = icmp ult i32 %i.lc, 8
  br i1 %or.cond13, label %.preheader170, label %bb.bw

.preheader170:                                    ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 4 uses
  %i.le = zext nneg i32 %i.lc to i64              ; 4 uses
  %i.lf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.lg = zext i16 %i.lf to i32
  %i.lh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list1E, i64 8), align 8, !tbaa !151 ; 2 uses
  %i.li = icmp ult i32 %i.lc, %i.lh
  br i1 %i.li, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.preheader170
  %i.lj = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.le
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.bh:                                            ; preds = %.preheader170
  %.not.i = icmp eq i32 %i.lh, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lm = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152 ; 2 uses
  %.not6.i = icmp eq ptr %i.lm, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.0.i = phi i32 [ %i.ll, %bb.bg ], [ %i.ln, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ]
  %i.lo = sext i32 %.0.i to i64
  %i.lp = getelementptr inbounds [16 x i8], ptr %i.ld, i64 %i.lo
  store i32 %i.lg, ptr %i.lp, align 8, !tbaa !99
  %i.lq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.lr = zext i16 %i.lq to i32
  %i.ls = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list1E, i64 8), align 8, !tbaa !151 ; 2 uses
  %i.lt = icmp ult i32 %i.lc, %i.ls
  br i1 %i.lt, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %.not.i.1 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.1, label %_ZNK21libraw_static_table_tixEj.exit.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lu = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152 ; 2 uses
  %.not6.i.1 = icmp eq ptr %i.lu, null
  br i1 %.not6.i.1, label %_ZNK21libraw_static_table_tixEj.exit.1, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit.1

bb.bn:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.lw = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.le
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit.1

_ZNK21libraw_static_table_tixEj.exit.1:           ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.0.i.1 = phi i32 [ %i.ly, %bb.bn ], [ %i.lv, %bb.bm ], [ 0, %bb.bl ], [ 0, %bb.bk ]
  %i.lz = sext i32 %.0.i.1 to i64
  %i.ma = getelementptr inbounds [16 x i8], ptr %i.ld, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  store i32 %i.lr, ptr %i.mb, align 4, !tbaa !99
  %i.mc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.md = zext i16 %i.mc to i32
  %i.me = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list1E, i64 8), align 8, !tbaa !151 ; 2 uses
  %i.mf = icmp ult i32 %i.lc, %i.me
  br i1 %i.mf, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit.1
  %.not.i.2 = icmp eq i32 %i.me, 0
  br i1 %.not.i.2, label %_ZNK21libraw_static_table_tixEj.exit.2, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mg = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152 ; 2 uses
  %.not6.i.2 = icmp eq ptr %i.mg, null
  br i1 %.not6.i.2, label %_ZNK21libraw_static_table_tixEj.exit.2, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit.2

bb.br:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit.1
  %i.mi = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.le
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit.2

_ZNK21libraw_static_table_tixEj.exit.2:           ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.0.i.2 = phi i32 [ %i.mk, %bb.br ], [ %i.mh, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bo ]
  %i.ml = sext i32 %.0.i.2 to i64
  %i.mm = getelementptr inbounds [16 x i8], ptr %i.ld, i64 %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i32 %i.md, ptr %i.mn, align 4, !tbaa !99
  %i.mo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mp = zext i16 %i.mo to i32
  %i.mq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list1E, i64 8), align 8, !tbaa !151 ; 2 uses
  %i.mr = icmp ult i32 %i.lc, %i.mq
  br i1 %i.mr, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit.2
  %.not.i.3 = icmp eq i32 %i.mq, 0
  br i1 %.not.i.3, label %_ZNK21libraw_static_table_tixEj.exit.3, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ms = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152 ; 2 uses
  %.not6.i.3 = icmp eq ptr %i.ms, null
  br i1 %.not6.i.3, label %_ZNK21libraw_static_table_tixEj.exit.3, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit.3

bb.bv:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit.2
  %i.mu = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list1E, align 8, !tbaa !152
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.le
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit.3

_ZNK21libraw_static_table_tixEj.exit.3:           ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.0.i.3 = phi i32 [ %i.mw, %bb.bv ], [ %i.mt, %bb.bu ], [ 0, %bb.bt ], [ 0, %bb.bs ]
  %i.mx = sext i32 %.0.i.3 to i64
  %i.my = getelementptr inbounds [16 x i8], ptr %i.ld, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i32 %i.mp, ptr %i.mz, align 8, !tbaa !99
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bf
  %i.na = icmp eq i32 %2, 541
  %i.nb = icmp eq i32 %4, 18
  %or.cond15 = and i1 %i.na, %i.nb
  %i.nc = icmp eq i32 %3, 7
  %or.cond17 = and i1 %i.nc, %or.cond15
  %or.cond19 = and i1 %i.fv, %or.cond17
  br i1 %or.cond19, label %.preheader173, label %bb.bx

.preheader173:                                    ; preds = %bb.bw
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 153284
  %i.ne = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nf = sitofp reassoc nsz arcp contract afn i16 %i.ne to float
  %i.ng = fmul reassoc nsz arcp contract afn float %i.nf, f0x39000000
  store float %i.ng, ptr %i.nd, align 4, !tbaa !128
  %i.nh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ni = sitofp reassoc nsz arcp contract afn i16 %i.nh to float
  %i.nj = fmul reassoc nsz arcp contract afn float %i.ni, f0x39000000
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 153288
  store float %i.nj, ptr %i.nk, align 8, !tbaa !128
  %i.nl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nm = sitofp reassoc nsz arcp contract afn i16 %i.nl to float
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nm, f0x39000000
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 153292
  store float %i.nn, ptr %i.no, align 4, !tbaa !128
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 153300
  %i.nq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nr = sitofp reassoc nsz arcp contract afn i16 %i.nq to float
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nr, f0x39000000
  store float %i.ns, ptr %i.np, align 4, !tbaa !128
  %i.nt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nu = sitofp reassoc nsz arcp contract afn i16 %i.nt to float
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, f0x39000000
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 153304
  store float %i.nv, ptr %i.nw, align 8, !tbaa !128
  %i.nx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ny = sitofp reassoc nsz arcp contract afn i16 %i.nx to float
  %i.nz = fmul reassoc nsz arcp contract afn float %i.ny, f0x39000000
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 153308
  store float %i.nz, ptr %i.oa, align 4, !tbaa !128
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 153316
  %i.oc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.od = sitofp reassoc nsz arcp contract afn i16 %i.oc to float
  %i.oe = fmul reassoc nsz arcp contract afn float %i.od, f0x39000000
  store float %i.oe, ptr %i.ob, align 4, !tbaa !128
  %i.of = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.og = sitofp reassoc nsz arcp contract afn i16 %i.of to float
  %i.oh = fmul reassoc nsz arcp contract afn float %i.og, f0x39000000
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 153320
  store float %i.oh, ptr %i.oi, align 8, !tbaa !128
  %i.oj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ok = sitofp reassoc nsz arcp contract afn i16 %i.oj to float
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, f0x39000000
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 153324
  store float %i.ol, ptr %i.om, align 4, !tbaa !128
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.on = icmp eq i32 %2, 543
  br i1 %i.on, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !118
  switch i64 %i.op, label %bb.bz [
    i64 77970, label %.loopexit
    i64 77760, label %.loopexit
    i64 77980, label %.loopexit
    i64 78400, label %.loopexit
  ]

bb.bz:                                            ; preds = %bb.by
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !79 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !81
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = tail call noundef i32 %i.ou(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i64 noundef 11, i32 noundef 1), !call_target !105 ; 0 uses
  %i.ow = load ptr, ptr %i.oq, align 8, !tbaa !79 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !81
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 56
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = tail call noundef i32 %i.oz(ptr noundef nonnull align 8 dereferenceable(8) %i.ow), !call_target !135 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 4116 ; 2 uses
  store i32 %i.pa, ptr %i.pb, align 4, !tbaa !123
  %.not156 = icmp eq i32 %i.pa, 0
  br i1 %.not156, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 -1, ptr %i.pb, align 4, !tbaa !123
  br label %.loopexit

bb.cb:                                            ; preds = %bb.bz
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i32 4, ptr %i.pc, align 8, !tbaa !124
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bx
  %i.pd = icmp eq i32 %2, 544
  %or.cond21 = and i1 %i.pd, %i.fv
  br i1 %or.cond21, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !79 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !81
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = tail call noundef i64 %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.pf), !call_target !155
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 381768
  store i64 %i.pj, ptr %i.pk, align 8, !tbaa !156
  br label %.loopexit

bb.ce:                                            ; preds = %bb.cc
  switch i32 %2, label %.loopexit [
    i32 545, label %bb.cf
    i32 533, label %bb.ch
    i32 553, label %bb.ci
    i32 557, label %bb.cj
    i32 569, label %bb.db
    i32 581, label %bb.dc
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.pl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.pm = add i16 %i.pl, -1
  %or.cond23 = icmp ult i16 %i.pm, 64
  br i1 %or.cond23, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %bb.cf
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 191320
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %wide.trip.count = zext nneg i16 %i.pl to i64
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph185, %bb.cg
  %indvars.iv = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next, %bb.cg ] ; 2 uses
  %i.pp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.pq = zext i16 %i.pp to i32
  %i.pr = sub nsw i32 53190, %i.pq
  %i.ps = uitofp reassoc nsz arcp contract afn i32 %i.pr to float
  %i.pt = getelementptr inbounds nuw [20 x i8], ptr %i.pn, i64 %indvars.iv ; 5 uses
  store float %i.ps, ptr %i.pt, align 4, !tbaa !128
  %i.pu = load ptr, ptr %i.po, align 8, !tbaa !79 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !81
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = tail call noundef i32 %i.px(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, i64 noundef 2, i32 noundef 1), !call_target !105 ; 0 uses
  %i.pz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qa = uitofp reassoc nsz arcp contract afn i16 %i.pz to float
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  store float %i.qa, ptr %i.qb, align 4, !tbaa !128
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store float 8.192000e+03, ptr %i.qc, align 4, !tbaa !128
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store float 8.192000e+03, ptr %i.qd, align 4, !tbaa !128
  %i.qe = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qf = uitofp reassoc nsz arcp contract afn i16 %i.qe to float
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store float %i.qf, ptr %i.qg, align 4, !tbaa !128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.cg, !llvm.loop !116

bb.ch:                                            ; preds = %bb.ce
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !79 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !81
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = tail call noundef i32 %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, i64 noundef 16, i32 noundef 1), !call_target !105 ; 0 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.qo = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qp = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.qn, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.qo) #9 ; 0 uses
  br label %.loopexit

bb.ci:                                            ; preds = %bb.ce
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 5110
  %i.qr = tail call i32 @llvm.umin.i32(i32 %4, i32 64)
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !79
  %i.qv = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.qq, i64 noundef %i.qs, ptr noundef %i.qu) ; 0 uses
  br label %.loopexit

bb.cj:                                            ; preds = %bb.ce
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !79 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !81
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 56
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = tail call noundef i32 %i.ra(ptr noundef nonnull align 8 dereferenceable(8) %i.qx), !call_target !135 ; 0 uses
  %i.rc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list2E, i64 8), align 8, !tbaa !151
  %i.rd = icmp sgt i32 %i.rc, 0
  br i1 %i.rd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.cj
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 4 uses
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph, %.loopexit178
  %.0183 = phi i32 [ 0, %.lr.ph ], [ %i.tk, %.loopexit178 ]
  %i.rf = load ptr, ptr %i.qw, align 8, !tbaa !79 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !81
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 56
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = tail call noundef i32 %i.ri(ptr noundef nonnull align 8 dereferenceable(8) %i.rf), !call_target !135 ; 7 uses
  %i.rk = icmp sgt i32 %i.rj, -1
  %i.rl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list2E, i64 8), align 8 ; 2 uses
  %i.rm = icmp slt i32 %i.rj, %i.rl
  %or.cond164 = select i1 %i.rk, i1 %i.rm, i1 false
  br i1 %or.cond164, label %.preheader177, label %.loopexit178

.preheader177:                                    ; preds = %bb.ck
  %i.rn = zext nneg i32 %i.rj to i64              ; 4 uses
  %i.ro = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.rp = zext i16 %i.ro to i32
  %i.rq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list2E, i64 8), align 8, !tbaa !151 ; 2 uses
  %i.rr = icmp ult i32 %i.rj, %i.rq
  br i1 %i.rr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.preheader177
  %i.rs = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list2E, align 8, !tbaa !152
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.rn
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit162

bb.cm:                                            ; preds = %.preheader177
  %.not.i159 = icmp eq i32 %i.rq, 0
  br i1 %.not.i159, label %_ZNK21libraw_static_table_tixEj.exit162, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rv = load ptr, ptr @_ZN6LibRaw15Pentax_wb_list2E, align 8, !tbaa !152 ; 2 uses
  %.not6.i160 = icmp eq ptr %i.rv, null
  br i1 %.not6.i160, label %_ZNK21libraw_static_table_tixEj.exit162, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !99
  br label %_ZNK21libraw_static_table_tixEj.exit162

_ZNK21libraw_static_table_tixEj.exit162:          ; preds = %bb.cl, %bb.cm, %bb.cn, %bb.co
  %.0.i161 = phi i32 [ %i.ru, %bb.cl ], [ %i.rw, %bb.co ], [ 0, %bb.cn ], [ 0, %bb.cm ]
  %i.rx = sext i32 %.0.i161 to i64
  %i.ry = getelementptr inbounds [16 x i8], ptr %i.re, i64 %i.rx
  store i32 %i.rp, ptr %i.ry, align 8, !tbaa !99
  %i.rz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.sa = zext i16 %i.rz to i32
  %i.sb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw15Pentax_wb_list2E, i64 8), align 8, !tbaa !151 ; 2 uses
  %i.sc = icmp ult i32 %i.rj, %i.sb
  br i1 %i.sc, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit162
  %.not.i159.1 = icmp eq i32 %i.sb, 0
end_hunk_0
