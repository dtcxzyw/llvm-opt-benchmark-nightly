Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fmopl?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@YM3812UpdateOne:bb.a
  %i.vs = phi i32 [ %.pre56, %bb.ce ], [ %.pre56, %bb.cd ], [ %i.ae, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %i.vt = phi ptr [ %.pre54, %bb.ce ], [ %.pre54, %bb.cd ], [ %i.af, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.vo, i32 -268435456)
  %.0.i = tail call range(i32 -268435456, 268427265) i32 @llvm.smin.i32(i32 %spec.select.i, i32 268427264)
  %i.vu = lshr i32 %.0.i, 13
  %i.vv = trunc i32 %i.vu to i16
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.vv, ptr %i.vw, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !9

._crit_edge48:                                    ; preds = %OPL_CALC_RH.exit, %bb.c
  %.029.lcssa = phi i32 [ %i.b, %bb.c ], [ %i.ag, %OPL_CALC_RH.exit ]
  %.028.lcssa = phi i32 [ %i.d, %bb.c ], [ %i.al, %OPL_CALC_RH.exit ]
  store i32 %.029.lcssa, ptr %i.a, align 8
  store i32 %.028.lcssa, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @OPLCreate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @num_lock, align 4
  %i.b = add i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr @num_lock, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @cur_chip, align 8
  %i.d = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #14 ; 5 uses
  store ptr %i.d, ptr @TL_TABLE, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %OPL_LockTable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #14 ; 4 uses
  store ptr %i.f, ptr @SIN_TABLE, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #14 ; 3 uses
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
  br i1 %exitcond89.not.i.i, label %.preheader72.i.i, label %bb.j, !llvm.loop !10

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
  br i1 %exitcond93.not.i.i.1, label %.preheader71.i.i, label %bb.k, !llvm.loop !11

.preheader71.i.i:                                 ; preds = %bb.o, %.preheader71.i.i
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i.1, %.preheader71.i.i ], [ 0, %bb.o ] ; 4 uses
  %i.cd = trunc i64 %indvars.iv94.i.i to i32      ; 2 uses
  %i.ce = sub nsw i32 4095, %i.cd
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
  %i.cn = sub nsw i32 4095, %i.cm
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
  br i1 %exitcond97.not.i.i.1, label %bb.p, label %.preheader71.i.i, !llvm.loop !12

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
  %i.df = fmul double %i.de, f0x4045555555555555
  %i.dg = fptosi double %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv98.i.i ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = fmul double %i.de, f0x4069999999999999
  %i.dj = fptosi double %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2048
  store i32 %i.dj, ptr %i.dk, align 4
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, 512
  br i1 %exitcond101.not.i.i, label %.preheader.i.i, label %bb.q, !llvm.loop !13

bb.r:                                             ; preds = %bb.r, %.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next103.i.i, %bb.r ] ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv102.i.i to i32
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fmul nnan double %i.dm, f0x401921FB54442D18
  %i.do = fmul nnan double %i.dn, f0x3F60000000000000
  %i.dp = tail call double @sin(double noundef %i.do) #13
  %i.dq = fmul double %i.dp, 1.536000e+01
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv102.i.i ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> <double 7.000000e-02, double 1.400000e-01>, <2 x double> splat (double 2.560000e+02))
  %i.dv = fptosi <2 x double> %i.du to <2 x i32>  ; 2 uses
  %i.dw = extractelement <2 x i32> %i.dv, i64 0
  store i32 %i.dw, ptr %i.dr, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 2048
  %i.dy = extractelement <2 x i32> %i.dv, i64 1
  store i32 %i.dy, ptr %i.dx, align 4
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next103.i.i, 512
  br i1 %exitcond105.not.i.i, label %.loopexit, label %bb.r, !llvm.loop !14

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
  %i.dz = load i32, ptr @num_lock, align 4
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @num_lock, align 4
  br label %OPLResetChip.exit

.loopexit:                                        ; preds = %bb.r, %bb.a
  %calloc = tail call dereferenceable_or_null(7200) ptr @calloc(i64 1, i64 7200) ; 36 uses
  %i.eb = icmp eq ptr %calloc, null
  br i1 %i.eb, label %OPLResetChip.exit, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %i.ec = getelementptr inbounds nuw i8, ptr %calloc, i64 4824
  %i.ed = getelementptr inbounds nuw i8, ptr %calloc, i64 48 ; 4 uses
  store ptr %i.ec, ptr %i.ed, align 8
  store i32 %0, ptr %calloc, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 %1, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %calloc, i64 56 ; 4 uses
  store i32 9, ptr %i.ef, align 8
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %.pre27.i = sitofp i32 %0 to double             ; 3 uses
  %i.eg = sitofp i32 %1 to double                 ; 2 uses
  %i.eh = fdiv double %.pre27.i, %i.eg
  %i.ei = fdiv double %i.eh, 7.200000e+01
  %i.ej = select i1 %.not.i, double 0.000000e+00, double %i.ei ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store double %i.ej, ptr %i.ek, align 8
  %i.el = fdiv double %.pre27.i, 7.200000e+01
  %i.em = fdiv double 1.000000e+00, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store double %i.em, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %calloc, i64 368 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %calloc, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false)
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ej, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.eq = add nuw i64 %index, 4                   ; 2 uses
  %i.er = and <4 x i32> %vec.ind, splat (i32 3)
  %i.es = uitofp nneg <4 x i32> %i.er to <4 x double>
  %i.et = tail call nnan <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.es, <4 x double> splat (double 2.500000e-01), <4 x double> splat (double 1.000000e+00))
  %i.eu = fmul <4 x double> %broadcast.splat, %i.et
  %i.ev = lshr <4 x i32> %vec.ind, splat (i32 2)
  %i.ew = add nsw <4 x i32> %i.ev, splat (i32 -1)
  %i.ex = shl nuw nsw <4 x i32> splat (i32 1), %i.ew
  %i.ey = uitofp nneg <4 x i32> %i.ex to <4 x double>
  %i.ez = fmul <4 x double> %i.eu, %i.ey
  %i.fa = fmul <4 x double> %i.ez, splat (double f0x41B0000000000000) ; 2 uses
  %i.fb = fdiv <4 x double> %i.fa, splat (double 1.412800e+05)
  %i.fc = fptosi <4 x double> %i.fb to <4 x i32>
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eq
  store <4 x i32> %i.fc, ptr %i.fd, align 4
  %i.fe = fdiv <4 x double> %i.fa, splat (double 1.956000e+06)
  %i.ff = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.eq
  store <4 x i32> %i.ff, ptr %i.fg, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.fh = icmp eq i64 %index.next, 56
  br i1 %i.fh, label %init_timetables.exit.i, label %vector.body, !llvm.loop !15

init_timetables.exit.i:                           ; preds = %vector.body
  %i.fi = fmul double %i.ej, 1.638400e+04
  %i.fj = fmul double %i.fi, f0x41B0000000000000
  %i.fk = getelementptr inbounds nuw i8, ptr %calloc, i64 304
  %i.fl = fdiv double %i.fj, 1.956000e+06
  %i.fm = fptosi double %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %calloc, i64 608
  store <4 x i32> splat (i32 268435455), ptr %i.fk, align 8
  %i.fo = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.fp, ptr %i.fn, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %calloc, i64 320
  %i.fr = getelementptr inbounds nuw i8, ptr %calloc, i64 624
  store <4 x i32> splat (i32 268435455), ptr %i.fq, align 8
  store <4 x i32> %i.fp, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %calloc, i64 336
  %i.ft = getelementptr inbounds nuw i8, ptr %calloc, i64 640
  store <4 x i32> splat (i32 268435455), ptr %i.fs, align 8
  store <4 x i32> %i.fp, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %calloc, i64 352
  %i.fv = getelementptr inbounds nuw i8, ptr %calloc, i64 656
  store <4 x i32> splat (i32 268435455), ptr %i.fu, align 8
  store <4 x i32> %i.fp, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %calloc, i64 672
  %broadcast.splatinsert40 = insertelement <4 x double> poison, double %i.ej, i64 0
  %broadcast.splat41 = shufflevector <4 x double> %broadcast.splatinsert40, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %init_timetables.exit.i
  %index43 = phi i64 [ 0, %init_timetables.exit.i ], [ %index.next45, %vector.body42 ] ; 2 uses
  %vec.ind44 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %init_timetables.exit.i ], [ %vec.ind.next46, %vector.body42 ] ; 2 uses
  %i.fx = uitofp nneg <4 x i32> %vec.ind44 to <4 x double>
  %i.fy = fmul <4 x double> %broadcast.splat41, %i.fx
  %i.fz = fmul <4 x double> %i.fy, splat (double 1.600000e+01)
  %i.ga = fmul <4 x double> %i.fz, splat (double 1.280000e+02)
  %i.gb = fmul <4 x double> %i.ga, splat (double 5.000000e-01)
  %i.gc = fptoui <4 x double> %i.gb to <4 x i32>
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %index43
  store <4 x i32> %i.gc, ptr %i.gd, align 4
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %vec.ind.next46 = add <4 x i32> %vec.ind44, splat (i32 4)
  %i.ge = icmp eq i64 %index.next45, 1024
  br i1 %i.ge, label %middle.block47, label %vector.body42, !llvm.loop !19

middle.block47:                                   ; preds = %vector.body42
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.s

bb.s:                                             ; preds = %middle.block47
  %i.gf = insertelement <2 x double> <double poison, double f0x41F0000000000000>, double %.pre27.i, i64 0
  %i.gg = insertelement <2 x double> <double 3.600000e+06, double poison>, double %i.eg, i64 1
  %i.gh = fdiv nnan <2 x double> %i.gf, %i.gg     ; 4 uses
  %i.gi = fmul nnan <2 x double> %i.gh, <double poison, double 3.700000e+00>
  %i.gj = extractelement <2 x double> %i.gh, i64 0
  %shift = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.gh, %shift
  %i.gk = extractelement <2 x double> %foldExtExtBinop, i64 0
end_hunk_0
