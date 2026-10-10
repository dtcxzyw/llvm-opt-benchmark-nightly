Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fmopl?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@OPLCreate:bb.a
  store ptr %i.h, ptr @AMS_TABLE, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit.sink.split.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #14 ; 2 uses
  store ptr %i.j, ptr @VIB_TABLE, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.d) #13
  br label %.loopexit.sink.split.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noalias dereferenceable_or_null(32772) ptr @g_malloc(i64 noundef 32772) #14 ; 4 uses
  store ptr %i.l, ptr @ENV_CURVE, align 8
  %i.m = load ptr, ptr @TL_TABLE, align 8         ; 7 uses
  br label %bb.h

.preheader73.i.i:                                 ; preds = %bb.h
  %scevgep.i.i = getelementptr nuw i8, ptr %i.m, i64 16380 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %scevgep.i.i, i8 0, i64 16388, i1 false)
  %scevgep.i = getelementptr i8, ptr %i.m, i64 49148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %scevgep.i, i8 0, i64 16388, i1 false)
  %i.n = load ptr, ptr @SIN_TABLE, align 8        ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8192
  store ptr %scevgep.i.i, ptr %i.o, align 8
  store ptr %scevgep.i.i, ptr %i.n, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.g
  %indvars.iv.i.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 5 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fmul nnan double %i.q, 2.343750e-02
  %i.s = fdiv double %i.r, 2.000000e+01
  %i.t = tail call double @pow(double noundef 1.000000e+01, double noundef %i.s) #13
  %i.u = fdiv double f0x418FFFFFF8000000, %i.t
  %i.v = fptosi double %i.u to i32                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 2 uses
  store i32 %i.v, ptr %i.w, align 4
  %i.x = sub i32 0, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32768
  store i32 %i.x, ptr %i.y, align 4
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 4094
  br i1 %exitcond.not.i.i, label %.preheader73.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.aa = uitofp nneg i32 %i.z to double
  %i.ab = fmul nnan double %i.aa, 2.343750e-02
  %i.ac = fdiv double %i.ab, 2.000000e+01
  %i.ad = tail call double @pow(double noundef 1.000000e+01, double noundef %i.ac) #13
  %i.ae = fdiv double f0x418FFFFFF8000000, %i.ad
  %i.af = fptosi double %i.ae to i32              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i ; 2 uses
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = sub i32 0, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32768
  store i32 %i.ah, ptr %i.ai, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.h

.preheader72.i.i:                                 ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 16384 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.preheader73.i.i
  %indvars.iv86.i.i = phi i64 [ 1, %.preheader73.i.i ], [ %indvars.iv.next87.i.i, %bb.j ] ; 5 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv86.i.i to i32
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fmul nnan double %i.al, f0x401921FB54442D18
  %i.an = fmul nnan double %i.am, f0x3F40000000000000
  %i.ao = tail call double @sin(double noundef %i.an) #13
  %i.ap = fdiv double 1.000000e+00, %i.ao
  %i.aq = tail call double @log10(double noundef %i.ap) #13
  %i.ar = fmul double %i.aq, 2.000000e+01
  %i.as = fdiv double %i.ar, 2.343750e-02
  %i.at = fptosi double %i.as to i32              ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = sub nuw nsw i64 1024, %indvars.iv86.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aw
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv86.i.i ; 2 uses
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = add i32 %i.at, 8192
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ba ; 2 uses
  %i.bc = sub nuw nsw i64 2048, %indvars.iv86.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8192
  store ptr %i.bb, ptr %i.be, align 8
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond89.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, 513
  br i1 %exitcond89.not.i.i, label %.preheader72.i.i, label %bb.j, !llvm.loop !11

bb.k:                                             ; preds = %bb.o, %.preheader72.i.i
  %indvars.iv90.i.i = phi i64 [ 0, %.preheader72.i.i ], [ %indvars.iv.next91.i.i.1, %bb.o ] ; 9 uses
  %i.bf = icmp samesign ult i64 %indvars.iv90.i.i, 1024
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv90.i.i
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = phi ptr [ %i.bh, %bb.l ], [ %i.aj, %bb.k ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv90.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16384
  store ptr %i.bi, ptr %i.bk, align 8
  %i.bl = and i64 %indvars.iv90.i.i, 1022
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 32768
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = and i64 %indvars.iv90.i.i, 512
  %.not.i.i = icmp eq i64 %i.bp, 0
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.bn, ptr %i.aj
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 49152
  store ptr %spec.select.i.i, ptr %i.bq, align 8
  %indvars.iv.next91.i.i = or disjoint i64 %indvars.iv90.i.i, 1 ; 3 uses
  %i.br = icmp samesign ult i64 %indvars.iv90.i.i, 1024
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next91.i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = phi ptr [ %i.bt, %bb.n ], [ %i.aj, %bb.m ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next91.i.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16384
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = and i64 %indvars.iv.next91.i.i, 1023
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32768
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = and i64 %indvars.iv90.i.i, 512
  %.not.i.i.1 = icmp eq i64 %i.cb, 0
  %spec.select.i.i.1 = select i1 %.not.i.i.1, ptr %i.bz, ptr %i.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 49152
  store ptr %spec.select.i.i.1, ptr %i.cc, align 8
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond93.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, 2048
  br i1 %exitcond93.not.i.i.1, label %.preheader71.i.i, label %bb.k, !llvm.loop !12

.preheader71.i.i:                                 ; preds = %bb.o, %.preheader71.i.i
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i.1, %.preheader71.i.i ], [ 0, %bb.o ] ; 4 uses
  %i.cd = trunc i64 %indvars.iv94.i.i to i32      ; 2 uses
  %i.ce = sub nuw nsw i32 4095, %i.cd
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = fmul nnan double %i.cf, f0x3F30000000000000
  %i.ch = tail call double @pow(double noundef %i.cg, double noundef 8.000000e+00) #13
  %i.ci = fmul double %i.ch, 4.096000e+03
  %i.cj = fptosi double %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv94.i.i ; 2 uses
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16384
  store i32 %i.cd, ptr %i.cl, align 4
  %indvars.iv.next95.i.i = or disjoint i64 %indvars.iv94.i.i, 1 ; 2 uses
  %i.cm = trunc i64 %indvars.iv.next95.i.i to i32 ; 2 uses
  %i.cn = sub nuw nsw i32 4095, %i.cm
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = fmul nnan double %i.co, f0x3F30000000000000
  %i.cq = tail call double @pow(double noundef %i.cp, double noundef 8.000000e+00) #13
  %i.cr = fmul double %i.cq, 4.096000e+03
  %i.cs = fptosi double %i.cr to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next95.i.i ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16384
  store i32 %i.cm, ptr %i.cu, align 4
  %indvars.iv.next95.i.i.1 = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %exitcond97.not.i.i.1 = icmp eq i64 %indvars.iv.next95.i.i.1, 4096
  br i1 %exitcond97.not.i.i.1, label %bb.p, label %.preheader71.i.i, !llvm.loop !13

bb.p:                                             ; preds = %.preheader71.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 32768
  store i32 4095, ptr %i.cv, align 4
  %i.cw = load ptr, ptr @AMS_TABLE, align 8
  br label %bb.q

.preheader.i.i:                                   ; preds = %bb.q
  %i.cx = load ptr, ptr @VIB_TABLE, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv98.i.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next99.i.i, %bb.q ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv98.i.i to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fmul nnan double %i.cz, f0x401921FB54442D18
  %i.db = fmul nnan double %i.da, f0x3F60000000000000
  %i.dc = tail call double @sin(double noundef %i.db) #13
  %i.dd = fadd double %i.dc, 1.000000e+00
  %i.de = fmul double %i.dd, 5.000000e-01         ; 2 uses
  %2 = fmul double %i.de, f0x4045555555555555
  %3 = fptosi double %2 to i32
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv98.i.i ; 2 uses
  store i32 %3, ptr %4, align 4
  %5 = fmul double %i.de, f0x4069999999999999
  %6 = fptosi double %5 to i32
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 2048
  store i32 %6, ptr %i.df, align 4
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, 512
  br i1 %exitcond101.not.i.i, label %.preheader.i.i, label %bb.q, !llvm.loop !14

bb.r:                                             ; preds = %bb.r, %.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next103.i.i, %bb.r ] ; 3 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv102.i.i to i32
  %i.dh = uitofp nneg i32 %i.dg to double
  %i.di = fmul nnan double %i.dh, f0x401921FB54442D18
  %i.dj = fmul nnan double %i.di, f0x3F60000000000000
  %i.dk = tail call double @sin(double noundef %i.dj) #13
  %i.dl = fmul double %i.dk, 1.536000e+01
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv102.i.i ; 2 uses
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> <double 7.000000e-02, double 1.400000e-01>, <2 x double> splat (double 2.560000e+02))
  %i.dq = fptosi <2 x double> %i.dp to <2 x i32>  ; 2 uses
  %i.dr = extractelement <2 x i32> %i.dq, i64 0
  store i32 %i.dr, ptr %i.dm, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 2048
  %i.dt = extractelement <2 x i32> %i.dq, i64 1
  store i32 %i.dt, ptr %i.ds, align 4
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next103.i.i, 512
  br i1 %exitcond105.not.i.i, label %.loopexit, label %bb.r, !llvm.loop !15

.loopexit.sink.split.sink.split.i.i:              ; preds = %bb.f, %bb.d
  %.sink109.i.i = phi ptr [ %i.f, %bb.f ], [ %i.d, %bb.d ]
  %.sink.ph.i.i = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  tail call void @free(ptr noundef nonnull %.sink109.i.i) #13
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.sink.split.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.d, %bb.c ], [ %.sink.ph.i.i, %.loopexit.sink.split.sink.split.i.i ]
  tail call void @free(ptr noundef nonnull %.sink.i.i) #13
  br label %OPL_LockTable.exit

OPL_LockTable.exit:                               ; preds = %bb.b, %.loopexit.sink.split.i.i
  store i32 %i.a, ptr @num_lock, align 4
  br label %OPLResetChip.exit

.loopexit:                                        ; preds = %bb.r, %bb.a
  %calloc = tail call dereferenceable_or_null(7200) ptr @calloc(i64 1, i64 7200) ; 36 uses
  %i.du = icmp eq ptr %calloc, null
  br i1 %i.du, label %OPLResetChip.exit, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %i.dv = getelementptr inbounds nuw i8, ptr %calloc, i64 4824
  %i.dw = getelementptr inbounds nuw i8, ptr %calloc, i64 48 ; 4 uses
  store ptr %i.dv, ptr %i.dw, align 8
  store i32 %0, ptr %calloc, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 %1, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %calloc, i64 56 ; 4 uses
  store i32 9, ptr %i.dy, align 8
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %.pre27.i = sitofp i32 %0 to double             ; 3 uses
  %i.dz = sitofp i32 %1 to double                 ; 2 uses
  %i.ea = fdiv double %.pre27.i, %i.dz
  %i.eb = fdiv double %i.ea, 7.200000e+01
  %i.ec = select i1 %.not.i, double 0.000000e+00, double %i.eb ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store double %i.ec, ptr %i.ed, align 8
  %i.ee = fdiv double %.pre27.i, 7.200000e+01
  %i.ef = fdiv double 1.000000e+00, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store double %i.ef, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %calloc, i64 368
  %i.ei = getelementptr inbounds nuw i8, ptr %calloc, i64 64
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ej = add nuw i64 %index, 4                   ; 2 uses
  %i.ek = and <4 x i32> %vec.ind, splat (i32 3)
  %i.el = uitofp nneg <4 x i32> %i.ek to <4 x double>
  %i.em = tail call nnan <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.el, <4 x double> splat (double 2.500000e-01), <4 x double> splat (double 1.000000e+00))
  %i.en = fmul <4 x double> %broadcast.splat, %i.em
  %i.eo = lshr <4 x i32> %vec.ind, splat (i32 2)
  %i.ep = add nsw <4 x i32> %i.eo, splat (i32 -1)
  %i.eq = shl nuw nsw <4 x i32> splat (i32 1), %i.ep
  %i.er = uitofp nneg <4 x i32> %i.eq to <4 x double>
  %i.es = fmul <4 x double> %i.en, %i.er
  %i.et = fmul <4 x double> %i.es, splat (double f0x41B0000000000000) ; 2 uses
  %i.eu = fdiv <4 x double> %i.et, splat (double 1.412800e+05)
  %i.ev = fptosi <4 x double> %i.eu to <4 x i32>
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  store <4 x i32> %i.ev, ptr %i.ew, align 4
  %i.ex = fdiv <4 x double> %i.et, splat (double 1.956000e+06)
  %i.ey = fptosi <4 x double> %i.ex to <4 x i32>
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ej
  store <4 x i32> %i.ey, ptr %i.ez, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.fa = icmp eq i64 %index.next, 56
  br i1 %i.fa, label %init_timetables.exit.i, label %vector.body, !llvm.loop !16

init_timetables.exit.i:                           ; preds = %vector.body
  %i.fb = fmul double %i.ec, 1.638400e+04
  %i.fc = fmul double %i.fb, f0x41B0000000000000
  %i.fd = getelementptr inbounds nuw i8, ptr %calloc, i64 304
  %i.fe = fdiv double %i.fc, 1.956000e+06
  %i.ff = fptosi double %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %calloc, i64 608
  store <4 x i32> splat (i32 268435455), ptr %i.fd, align 8
  %i.fh = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.fi, ptr %i.fg, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %calloc, i64 320
  %i.fk = getelementptr inbounds nuw i8, ptr %calloc, i64 624
  store <4 x i32> splat (i32 268435455), ptr %i.fj, align 8
  store <4 x i32> %i.fi, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %calloc, i64 336
  %i.fm = getelementptr inbounds nuw i8, ptr %calloc, i64 640
  store <4 x i32> splat (i32 268435455), ptr %i.fl, align 8
  store <4 x i32> %i.fi, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %calloc, i64 352
  %i.fo = getelementptr inbounds nuw i8, ptr %calloc, i64 656
  store <4 x i32> splat (i32 268435455), ptr %i.fn, align 8
  store <4 x i32> %i.fi, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %calloc, i64 672
  %broadcast.splatinsert40 = insertelement <4 x double> poison, double %i.ec, i64 0
  %broadcast.splat41 = shufflevector <4 x double> %broadcast.splatinsert40, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %init_timetables.exit.i
  %index43 = phi i64 [ 0, %init_timetables.exit.i ], [ %index.next45, %vector.body42 ] ; 2 uses
  %vec.ind44 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %init_timetables.exit.i ], [ %vec.ind.next46, %vector.body42 ] ; 2 uses
  %i.fq = uitofp nneg <4 x i32> %vec.ind44 to <4 x double>
  %i.fr = fmul <4 x double> %broadcast.splat41, %i.fq
  %i.fs = fmul <4 x double> %i.fr, splat (double 1.600000e+01)
  %i.ft = fmul <4 x double> %i.fs, splat (double 1.280000e+02)
  %i.fu = fmul <4 x double> %i.ft, splat (double 5.000000e-01)
  %i.fv = fptoui <4 x double> %i.fu to <4 x i32>
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index43
  store <4 x i32> %i.fv, ptr %i.fw, align 4
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %vec.ind.next46 = add <4 x i32> %vec.ind44, splat (i32 4)
  %i.fx = icmp eq i64 %index.next45, 1024
  br i1 %i.fx, label %middle.block47, label %vector.body42, !llvm.loop !17

middle.block47:                                   ; preds = %vector.body42
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.s

bb.s:                                             ; preds = %middle.block47
  %i.fy = insertelement <2 x double> <double poison, double f0x41F0000000000000>, double %.pre27.i, i64 0
  %i.fz = insertelement <2 x double> <double 3.600000e+06, double poison>, double %i.dz, i64 1
  %i.ga = fdiv nnan <2 x double> %i.fy, %i.fz     ; 2 uses
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = fmul nnan <2 x double> %i.gb, <double 3.700000e+00, double 6.400000e+00>
  %i.gd = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x double> %i.gd, %i.gc
  %i.gf = fptosi <2 x double> %i.ge to <2 x i32>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %middle.block47, %bb.s
  %i.gg = phi <2 x i32> [ %i.gf, %bb.s ], [ zeroinitializer, %middle.block47 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %calloc, i64 4788
  %i.gi = extractelement <2 x i32> %i.gg, i64 0
  store i32 %i.gi, ptr %i.gh, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %calloc, i64 4796
  %i.gk = extractelement <2 x i32> %i.gg, i64 1
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %calloc, i64 28
  store i32 0, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %calloc, i64 25 ; 5 uses
  store i8 0, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %calloc, i64 4800
  store i8 0, ptr %i.gn, align 8
  %i.go = load ptr, ptr @SIN_TABLE, align 8       ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i28 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i29, %bb.t ] ; 3 uses
  %i.gp = load ptr, ptr %i.dw, align 8
  %i.gq = getelementptr inbounds nuw [264 x i8], ptr %i.gp, i64 %indvars.iv.i.i28
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  store ptr %i.go, ptr %i.gr, align 8
  %i.gs = load ptr, ptr %i.dw, align 8
  %i.gt = getelementptr inbounds nuw [264 x i8], ptr %i.gs, i64 %indvars.iv.i.i28
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 200
  store ptr %i.go, ptr %i.gu, align 8
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.gv = load i32, ptr %i.dy, align 8
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i.i29, %i.gw
  br i1 %i.gx, label %bb.t, label %OPLWriteReg.exit.i, !llvm.loop !0

OPLWriteReg.exit.i:                               ; preds = %bb.t
  %.pre.i30 = load i8, ptr %i.gm, align 1         ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store i32 1024, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %calloc, i64 36
  store i32 4096, ptr %i.gz, align 4
  %.not.i204.i.i = icmp sgt i8 %.pre.i30, -1
  %i.ha = getelementptr inbounds nuw i8, ptr %calloc, i64 26 ; 3 uses
  br i1 %.not.i204.i.i, label %OPL_STATUS_RESET.exit206.thread245.i.i, label %bb.u
end_hunk_0
