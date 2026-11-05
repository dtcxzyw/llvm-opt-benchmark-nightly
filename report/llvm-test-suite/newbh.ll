Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newbh?download=true
inline.NumInlined: 19
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@old_main:.preheader118.preheader
  %.sroa.3.0.i = phi i64 [ %i.bs, %bb.e ], [ %.sroa.024.0.i, %bb.d ] ; 2 uses
  %i.bt = fadd double %i.au, 2.000000e+00
  %i.bu = fmul double %i.bt, 2.500000e-01         ; 3 uses
  %i.bv = fcmp oge double %i.bu, 0.000000e+00
  %i.bw = fcmp olt double %i.bu, 1.000000e+00
  %or.cond5.i = and i1 %i.bv, %i.bw
  br i1 %or.cond5.i, label %bb.g, label %intcoord.exit

bb.g:                                             ; preds = %bb.f
  %i.bx = fmul nnan double %i.bu, f0x41D0000000000000
  %i.by = tail call double @llvm.floor.f64(double %i.bx)
  %i.bz = fptosi double %i.by to i32
  br label %intcoord.exit

intcoord.exit:                                    ; preds = %bb.f, %bb.g
  %.sroa.5.8.insert.insert.i = phi i32 [ %i.bz, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.3.0.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.3.0.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.ca = lshr i32 %.sroa.0.0.extract.trunc.i, 27
  %i.cb = and i32 %i.ca, 4
  %i.cc = lshr i32 %.sroa.2.0.extract.trunc.i, 28
  %i.cd = and i32 %i.cc, 2
  %.1.1.i = or disjoint i32 %i.cb, %i.cd
  %i.ce = lshr i32 %.sroa.5.8.insert.insert.i, 29
  %.lobit = and i32 %i.ce, 1
  %.1.2.i = or disjoint i32 %.lobit, %.1.1.i
  %i.cf = shl nuw nsw i32 %.1.2.i, 3
  %i.cg = lshr i32 %.sroa.0.0.extract.trunc.i, 26
  %i.ch = and i32 %i.cg, 4
  %i.ci = lshr i32 %.sroa.2.0.extract.trunc.i, 27
  %i.cj = and i32 %i.ci, 2
  %.1.1.i107 = or disjoint i32 %i.cj, %i.ch
  %i.ck = lshr i32 %.sroa.5.8.insert.insert.i, 28
  %.lobit110 = and i32 %i.ck, 1
  %.1.2.i109 = or disjoint i32 %.1.1.i107, %.lobit110
  %i.cl = or disjoint i32 %.1.2.i109, %i.cf
  %i.cm = sdiv i32 %i.cl, %i.ag                   ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !9
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cn ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %.099132, i64 136
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !37
  store ptr %.099132, ptr %i.cr, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %.099132, i64 40
  store i32 %i.cm, ptr %i.cu, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %.099132, i64 128
  %.099 = load ptr, ptr %i.cv, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %.099, null
  br i1 %.not, label %.preheader111, label %.preheader113, !llvm.loop !60

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv160 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next161, %bb.h ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv160
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !9
  %i.cy = trunc nuw nsw i64 %indvars.iv160 to i32
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cy, i32 noundef %i.cx) ; 0 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv160
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !32
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.dd = load i32, ptr @NumNodes, align 4, !tbaa !9
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next161, %i.de
  br i1 %i.df, label %bb.h, label %.preheader.preheader, !llvm.loop !61

.preheader.preheader:                             ; preds = %bb.h, %.preheader111
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0135 = phi double [ %i.dg, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %.1134 = phi i32 [ %i.dh, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  tail call void @stepsystem(ptr noundef nonnull %i.d, i32 noundef %.1134)
  %i.dg = fadd double %.0135, 1.250000e-02        ; 2 uses
  %i.dh = add nuw nsw i32 %.1134, 1
  %i.di = fcmp olt double %i.dg, 2.001250e+00
  %i.dj = icmp samesign ult i32 %.1134, 9
  %i.dk = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %i.dk, label %.preheader, label %bb.i, !llvm.loop !62

bb.i:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.d
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @uniform_testdata(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.datapoints) align 8 captures(none) initializes((0, 48)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !67 {
.preheader100:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.b = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #21 ; 7 uses
  store i16 1, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %1, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr null, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %1, ptr %i.e, align 4, !tbaa !40
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader100
  %i.g = sitofp i32 %3 to double
  %i.h = fmul nnan double %i.g, 1.230000e+02
  %i.i = uitofp nneg i32 %2 to double
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.preheader99

.preheader99:                                     ; preds = %.lr.ph, %.preheader97
  %i.m = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cb, %.preheader97 ]
  %i.n = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ap, %.preheader97 ]
  %.091115 = phi double [ %i.h, %.lr.ph ], [ %i.bj, %.preheader97 ]
  %.093114 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %.preheader97 ]
  %.094113 = phi ptr [ %i.b, %.lr.ph ], [ %i.q, %.preheader97 ]
  %i.o = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ao, %.preheader97 ]
  %i.p = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ca, %.preheader97 ]
  %i.q = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #21 ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 %1, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store ptr null, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 %1, ptr %i.t, align 4, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %.094113, i64 128
  store ptr %i.q, ptr %i.u, align 8, !tbaa !35
  store i16 1, ptr %i.q, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store double %i.j, ptr %i.v, align 8, !tbaa !41
  %i.w = tail call double (double, ...) @my_rand(double noundef %.091115) #20 ; 2 uses
  %i.x = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef f0x3FEFF7CED916872B, double noundef %i.w) #20
  %i.y = tail call double @pow(double noundef %i.x, double noundef f0xBFE5555555555555) #20, !tbaa !9
  %i.z = fadd double %i.y, -1.000000e+00
  %i.aa = tail call double @sqrt(double noundef %i.z) #20, !tbaa !9 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ac = tail call double (double, ...) @my_rand(double noundef %i.w) #20 ; 2 uses
  %i.ad = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef f0x3FEFF7CED916872B, double noundef %i.ac) #20
  %i.ae = fmul double %i.ad, 4.000000e+00
  store double %i.ae, ptr %i.ab, align 8, !tbaa !29
  %i.af = tail call double (double, ...) @my_rand(double noundef %i.ac) #20 ; 2 uses
  %i.ag = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef f0x3FEFF7CED916872B, double noundef %i.af) #20
  %i.ah = fmul double %i.ag, 4.000000e+00
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store double %i.ah, ptr %i.ai, align 8, !tbaa !29
  %i.aj = tail call double (double, ...) @my_rand(double noundef %i.af) #20 ; 2 uses
  %i.ak = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef f0x3FEFF7CED916872B, double noundef %i.aj) #20 ; 3 uses
  %i.al = fmul double %i.ak, 4.000000e+00         ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store double %i.al, ptr %i.am, align 8, !tbaa !29
  %i.an = load <2 x double>, ptr %i.ab, align 8, !tbaa !29
  %i.ao = fadd <2 x double> %i.o, %i.an           ; 2 uses
  %i.ap = fadd double %i.n, %i.al                 ; 2 uses
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader99, %.preheader98
  %.2 = phi double [ %i.as, %.preheader98 ], [ %i.aj, %.preheader99 ]
  %i.aq = tail call double (double, ...) @my_rand(double noundef %.2) #20 ; 2 uses
  %i.ar = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.aq) #20 ; 5 uses
  %i.as = tail call double (double, ...) @my_rand(double noundef %i.aq) #20 ; 3 uses
  %i.at = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 1.000000e-01, double noundef %i.as) #20
  %i.au = fmul double %i.ar, %i.ar
  %i.av = fneg double %i.ar
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ar, double 1.000000e+00)
  %i.ax = tail call double @pow(double noundef %i.aw, double noundef 3.500000e+00) #20, !tbaa !9
  %i.ay = fmul double %i.au, %i.ax
  %i.az = fcmp ogt double %i.at, %i.ay
  br i1 %i.az, label %.preheader98, label %bb.a, !llvm.loop !64

bb.a:                                             ; preds = %.preheader98
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double 1.000000e+00)
  %i.bb = tail call double @pow(double noundef %i.ba, double noundef 2.500000e-01) #20, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %bb.a
  %.3 = phi double [ %i.as, %bb.a ], [ %i.bj, %.preheader ]
  %i.bf = tail call double (double, ...) @my_rand(double noundef %.3) #20 ; 2 uses
  %i.bg = tail call double (double, double, double, ...) @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %i.bf) #20
  store double %i.bg, ptr %i.bc, align 8, !tbaa !29
  %i.bh = tail call double (double, ...) @my_rand(double noundef %i.bf) #20 ; 2 uses
  %i.bi = tail call double (double, double, double, ...) @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %i.bh) #20
  store double %i.bi, ptr %i.bd, align 8, !tbaa !29
  %i.bj = tail call double (double, ...) @my_rand(double noundef %i.bh) #20 ; 3 uses
  %i.bk = tail call double (double, double, double, ...) @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %i.bj) #20 ; 4 uses
  store double %i.bk, ptr %i.be, align 8, !tbaa !29
  %i.bl = load <2 x double>, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %4 = extractelement <2 x double> %i.bl, i64 0   ; 2 uses
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %4, double 0.000000e+00)
  %i.bm = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %5)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %i.bn) ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 1.000000e+00
  br i1 %i.bp, label %.preheader, label %.preheader97, !llvm.loop !65

.preheader97:                                     ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.br = fmul double %i.ar, f0x3FF6A09E667F3BCD
  %i.bs = fdiv double %i.br, %i.bb
  %i.bt = fmul double %i.bs, f0x3FF4D8D7A58FA312
  %i.bu = tail call double @sqrt(double noundef %i.bo) #20, !tbaa !9
  %i.bv = fdiv double %i.bt, %i.bu                ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bx, %i.bl          ; 2 uses
  store <2 x double> %i.by, ptr %i.bc, align 8, !tbaa !29
  %i.bz = fmul double %i.bv, %i.bk                ; 2 uses
  store double %i.bz, ptr %i.bq, align 8, !tbaa !29
  %i.ca = fadd <2 x double> %i.p, %i.by           ; 2 uses
  %i.cb = fadd double %i.m, %i.bz                 ; 2 uses
  %i.cc = add nuw nsw i32 %.093114, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader99, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %.preheader97
  store <2 x double> %i.ao, ptr %0, align 8
  store double %i.ap, ptr %i.k, align 8
  store <2 x double> %i.ca, ptr %i.a, align 8
  store double %i.cb, ptr %i.l, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader100
  %.094.lcssa = phi ptr [ %i.b, %.preheader100 ], [ %i.q, %._crit_edge.loopexit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.094.lcssa, i64 128
  store ptr null, ptr %i.cd, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.094.lcssa, ptr %i.ch, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 !guid !71 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !42 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !29
  %i.i = load double, ptr %1, align 8, !tbaa !29
  %i.j = fsub double %i.d, %i.i
  %i.k = fdiv double %i.j, %i.b                   ; 3 uses
  %i.l = fcmp oge double %i.k, 0.000000e+00
  %i.m = fcmp olt double %i.k, 1.000000e+00
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = fmul nnan double %i.k, f0x41D0000000000000
  %i.o = tail call double @llvm.floor.f64(double %i.n)
  %i.p = fptosi double %i.o to i32
  %i.q = zext nneg i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.024.0 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.8.0 = phi i64 [ 4294967296, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !29
  %i.t = fsub double %i.f, %i.s
  %i.u = fdiv double %i.t, %i.b                   ; 3 uses
  %i.v = fcmp oge double %i.u, 0.000000e+00
  %i.w = fcmp olt double %i.u, 1.000000e+00
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = fmul nnan double %i.u, f0x41D0000000000000
  %i.y = tail call double @llvm.floor.f64(double %i.x)
  %i.z = fptosi double %i.y to i32
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = or disjoint i64 %i.ab, %.sroa.024.0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.ac, %bb.d ], [ %.sroa.024.0, %bb.c ]
  %.sroa.8.1 = phi i64 [ %.sroa.8.0, %bb.d ], [ 0, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !29
  %i.af = fsub double %i.h, %i.ae
  %i.ag = fdiv double %i.af, %i.b                 ; 3 uses
  %i.ah = fcmp oge double %i.ag, 0.000000e+00
  %i.ai = fcmp olt double %i.ag, 1.000000e+00
  %or.cond5 = and i1 %i.ah, %i.ai
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = fmul nnan double %i.ag, f0x41D0000000000000
  %i.ak = tail call double @llvm.floor.f64(double %i.aj)
  %i.al = fptosi double %i.ak to i32
  %i.am = zext nneg i32 %i.al to i64
  %i.an = or i64 %.sroa.8.1, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.5.8.insert.insert = phi i64 [ %i.an, %bb.f ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.3.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 8) i32 @old_subindex(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #7 !guid !72 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32
  %i.a = and i32 %2, %.sroa.0.0.extract.trunc
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 0, i32 4
  %i.c = and i32 %2, %.sroa.2.0.extract.trunc
  %.not.1 = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.1, i32 0, i32 2
  %.1.1 = or disjoint i32 %i.d, %i.b
  %i.e = and i32 %2, %.sroa.3.8.extract.trunc
  %.not.2 = icmp ne i32 %i.e, 0
  %i.f = zext i1 %.not.2 to i32
  %.1.2 = or disjoint i32 %.1.1, %i.f
  ret i32 %.1.2
}

; Function Attrs: nounwind uwtable
define dso_local void @stepsystem(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !73 {
bb.a:
  %2 = alloca %struct.hgstruct, align 8           ; 8 uses
  %3 = alloca %struct.hgstruct, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @freetree(ptr noundef nonnull %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr @nbody, align 4, !tbaa !9
  %i.d = tail call ptr @maketree(ptr poison, i32 noundef %i.c, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %i.e = load i32, ptr @NumNodes, align 4, !tbaa !9 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %computegrav.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !42 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = fmul double %i.h, %i.h
  %i.n = zext nneg i32 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %grav.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.n, %.lr.ph.i ], [ %indvars.iv.next.i, %grav.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %.not1112.i.i = icmp eq ptr %i.q, null
  br i1 %.not1112.i.i, label %grav.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.q, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %.013.i.i, ptr %2, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %3, ptr noundef %i.o, double noundef %i.m, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %2, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.s = load double, ptr %i.k, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 120
  store double %i.s, ptr %i.t, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa !29
end_hunk_0
begin_hunk_1_@freetree:bb.a
  tail call void @freetree(ptr noundef nonnull %i.s)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.t = load i16, ptr %0, align 8, !tbaa !49
  %i.u = icmp eq i16 %i.t, 1                      ; 2 uses
  %bp_free_list.cp_free_list.i = select i1 %i.u, ptr @bp_free_list, ptr @cp_free_list ; 2 uses
  %..i = select i1 %i.u, i64 128, i64 112
  %i.v = load ptr, ptr %bp_free_list.cp_free_list.i, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !51
  store ptr %0, ptr %bp_free_list.cp_free_list.i, align 8, !tbaa !51
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.b, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @my_free(ptr noundef %0) local_unnamed_addr #12 !guid !83 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !49
  %i.b = icmp eq i16 %i.a, 1                      ; 2 uses
  %bp_free_list.cp_free_list = select i1 %i.b, ptr @bp_free_list, ptr @cp_free_list ; 2 uses
  %. = select i1 %i.b, i64 128, i64 112
  %i.c = load ptr, ptr %bp_free_list.cp_free_list, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store ptr %i.c, ptr %i.d, align 8, !tbaa !51
  store ptr %0, ptr %bp_free_list.cp_free_list, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ubody_alloc(i32 noundef %0) local_unnamed_addr #13 !guid !84 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #21 ; 5 uses
  store i16 1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr null, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %0, ptr %i.d, align 4, !tbaa !40
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @cell_alloc(i32 noundef %0) local_unnamed_addr #14 !guid !85 {
bb.a:
  %i.a = load ptr, ptr @cp_free_list, align 8, !tbaa !50 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  store ptr %i.c, ptr @cp_free_list, align 8, !tbaa !50
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07 = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  store i16 2, ptr %.07, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  store i32 %0, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !tbaa !50
  ret ptr %.07
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

declare double @my_rand(...) local_unnamed_addr #2

declare double @xrand(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind uwtable
define dso_local void @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 !guid !86 {
bb.a:
  %5 = alloca %struct.hgstruct, align 8           ; 8 uses
  %6 = alloca %struct.hgstruct, align 8           ; 4 uses
  %.not1112 = icmp eq ptr %2, null
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.d = fmul double %0, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.013 = phi ptr [ %2, %.lr.ph ], [ %i.j, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %.013, ptr %5, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %6, ptr noundef %1, double noundef %i.d, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %5, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.f = load double, ptr %i.b, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 120
  store double %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %.013, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gravstep(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 !guid !87 {
bb.a:
  %5 = alloca %struct.hgstruct, align 8           ; 8 uses
  %6 = alloca %struct.hgstruct, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = fmul double %0, %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %6, ptr noundef %1, double noundef %i.e, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %5, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.f = load double, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: nounwind uwtable
define dso_local void @hackgrav(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !88 {
bb.a:
  %3 = alloca %struct.hgstruct, align 8           ; 8 uses
  %4 = alloca %struct.hgstruct, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = fmul double %1, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %4, ptr noundef %2, double noundef %i.e, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %3, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.f = load double, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare void @walksub(ptr dead_on_unwind writable sret(%struct.hgstruct) align 8, ptr noundef, double noundef, double noundef, ptr noundef byval(%struct.hgstruct) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @gravsub(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.hgstruct) align 8 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef byval(%struct.hgstruct) align 8 captures(none) %2) local_unnamed_addr #17 !guid !89 {
.preheader32.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = fsub double %i.d, %i.f                   ; 3 uses
  %i.j = load <2 x double>, ptr %i.a, align 8, !tbaa !29
  %i.k = load <2 x double>, ptr %i.b, align 8, !tbaa !29
  %i.l = fsub <2 x double> %i.j, %i.k             ; 3 uses
  %3 = extractelement <2 x double> %i.l, i64 0    ; 2 uses
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %3, double 0.000000e+00)
  %i.m = extractelement <2 x double> %i.l, i64 1  ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %4)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.n)
  %i.p = fadd double %i.o, f0x3F647AE147AE147C    ; 2 uses
  %i.q = tail call double @sqrt(double noundef %i.p) #20, !tbaa !9
  %i.r = load double, ptr %i.g, align 8, !tbaa !57
  %i.s = fdiv double %i.r, %i.q                   ; 2 uses
  %i.t = fdiv double %i.s, %i.p                   ; 2 uses
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.l
  %i.x = fmul double %i.t, %i.i
  %i.y = load <4 x double>, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.z = insertelement <4 x double> poison, double %i.s, i64 0
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x double> %i.z, <4 x double> %i.aa, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ac = insertelement <4 x double> %i.ab, double %i.x, i64 3 ; 2 uses
  %i.ad = fsub <4 x double> %i.y, %i.ac
  %i.ae = fadd <4 x double> %i.y, %i.ac
  %i.af = shufflevector <4 x double> %i.ad, <4 x double> %i.ae, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x double> %i.af, ptr %i.h, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i16 0, 2) i16 @subdivp(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr nofree noundef readonly byval(%struct.hgstruct) align 8 captures(none) %3) local_unnamed_addr #6 !guid !90 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !49
  %i.b = icmp eq i16 %i.a, 1
  br i1 %i.b, label %bb.b, label %.preheader19

.preheader19:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.c, align 8, !tbaa !29
  %i.f = load double, ptr %i.d, align 8, !tbaa !29
  %i.g = fsub double %i.e, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !29
  %i.l = fsub double %i.i, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !29
  %i.q = fsub double %i.n, %i.p                   ; 2 uses
  %4 = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double 0.000000e+00)
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %4)
  %i.s = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.r)
  %i.t = fmul double %2, %i.s
  %i.u = fcmp olt double %i.t, %1
  %i.v = zext i1 %i.u to i16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader19
  %.018 = phi i16 [ %i.v, %.preheader19 ], [ 0, %bb.a ]
  ret i16 %.018
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @expandbox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 %2, i32 %3) local_unnamed_addr #11 !guid !92 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !42 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %1, align 8, !tbaa !29  ; 3 uses
  %i.h = fsub double %i.b, %i.g
  %i.i = fdiv double %i.h, %i.e                   ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00
  %i.k = fcmp olt double %i.i, 1.000000e+00
  %or.cond.i = and i1 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !29
  %i.n = load <2 x double>, ptr %i.f, align 8, !tbaa !29 ; 3 uses
  %i.o = fsub <2 x double> %i.m, %i.n
  %i.p = insertelement <2 x double> poison, double %i.e, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q             ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fcmp oge double %i.s, 0.000000e+00
  %i.u = fcmp olt <2 x double> %i.r, splat (double 1.000000e+00) ; 2 uses
  %i.v = extractelement <2 x i1> %i.u, i64 0
  %or.cond3.i = and i1 %i.t, %i.v
  %i.w = extractelement <2 x double> %i.r, i64 1
  %i.x = fcmp oge double %i.w, 0.000000e+00
  %i.y = extractelement <2 x i1> %i.u, i64 1
  %or.cond5.i = and i1 %i.x, %i.y
  %i.z = select i1 %or.cond5.i, i1 %or.cond3.i, i1 false
  %narrow21.i = select i1 %i.z, i1 %or.cond.i, i1 false
  br i1 %narrow21.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = fcmp olt double %i.e, 1.000000e+03
  br i1 %i.ad, label %.preheader53.preheader.preheader, label %._crit_edge88

.preheader53.preheader.preheader:                 ; preds = %.lr.ph
  %i.ae = extractelement <2 x double> %i.n, i64 1 ; 2 uses
  %i.af = extractelement <2 x double> %i.n, i64 0 ; 2 uses
  br label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %.preheader53.preheader.preheader, %.backedge
  %i.ag = phi double [ %i.bl, %.backedge ], [ %i.e, %.preheader53.preheader.preheader ] ; 6 uses
  %i.ah = phi double [ %.be86, %.backedge ], [ %i.g, %.preheader53.preheader.preheader ] ; 3 uses
  %i.ai = phi double [ %.be85, %.backedge ], [ %i.af, %.preheader53.preheader.preheader ] ; 3 uses
  %i.aj = phi double [ %.be, %.backedge ], [ %i.ae, %.preheader53.preheader.preheader ] ; 3 uses
  %i.ak = phi double [ %i.ay, %.backedge ], [ %i.g, %.preheader53.preheader.preheader ]
  %i.al = phi double [ %i.be, %.backedge ], [ %i.af, %.preheader53.preheader.preheader ]
  %i.am = phi double [ %i.bj, %.backedge ], [ %i.ae, %.preheader53.preheader.preheader ]
  %i.an = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ai, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> splat (double 5.000000e-01), <2 x double> %i.aq) ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ag, double 5.000000e-01, double %i.aj) ; 2 uses
  %i.at = load double, ptr %i.a, align 8, !tbaa !29
  %i.au = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  %i.av = fcmp olt double %i.at, %i.au
  br i1 %i.av, label %bb.b, label %.preheader.1

._crit_edge88:                                    ; preds = %.backedge, %.lr.ph
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 999) ; 0 uses
  tail call void @abort() #22
  unreachable

bb.b:                                             ; preds = %.preheader53.preheader
  %i.ax = fsub double %i.ah, %i.ag                ; 3 uses
  store double %i.ax, ptr %1, align 8, !tbaa !29
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader53.preheader, %bb.b
  %i.ay = phi double [ %i.ak, %.preheader53.preheader ], [ %i.ax, %bb.b ] ; 4 uses
  %i.az = phi double [ %i.ah, %.preheader53.preheader ], [ %i.ax, %bb.b ]
  %i.ba = load double, ptr %i.ab, align 8, !tbaa !29
  %i.bb = extractelement <2 x double> %i.ar, i64 1 ; 2 uses
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.c, label %.preheader.2

bb.c:                                             ; preds = %.preheader.1
  %i.bd = fsub double %i.ai, %i.ag                ; 3 uses
  store double %i.bd, ptr %i.f, align 8, !tbaa !29
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.c, %.preheader.1
  %i.be = phi double [ %i.bd, %bb.c ], [ %i.al, %.preheader.1 ] ; 4 uses
  %i.bf = phi double [ %i.bd, %bb.c ], [ %i.ai, %.preheader.1 ]
  %i.bg = load double, ptr %i.ac, align 8, !tbaa !29
  %i.bh = fcmp olt double %i.bg, %i.as
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.2
  %i.bi = fsub double %i.aj, %i.ag                ; 3 uses
  store double %i.bi, ptr %i.l, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.2
  %i.bj = phi double [ %i.bi, %bb.d ], [ %i.am, %.preheader.2 ] ; 4 uses
  %i.bk = phi double [ %i.bi, %bb.d ], [ %i.aj, %.preheader.2 ]
  %i.bl = fmul nnan double %i.ag, 2.000000e+00    ; 8 uses
  store double %i.bl, ptr %i.d, align 8, !tbaa !42
  %i.bm = load ptr, ptr %i.aa, align 8, !tbaa !28
  %.not38 = icmp eq ptr %i.bm, null
  br i1 %.not38, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr @cp_free_list, align 8, !tbaa !50 ; 3 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54
  store ptr %i.bp, ptr @cp_free_list, align 8, !tbaa !50
  br label %cell_alloc.exit

bb.h:                                             ; preds = %bb.f
  %i.bq = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #21
  br label %cell_alloc.exit

cell_alloc.exit:                                  ; preds = %bb.g, %bb.h
  %.07.i = phi ptr [ %i.bn, %bb.g ], [ %i.bq, %bb.h ] ; 4 uses
  store i16 2, ptr %.07.i, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store i32 0, ptr %i.br, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i8 0, i64 64, i1 false), !tbaa !50
  %i.bt = fsub double %i.au, %i.ay
  %i.bu = fdiv double %i.bt, %i.bl                ; 3 uses
  %i.bv = fcmp ult double %i.bu, 0.000000e+00
  %i.bw = fcmp uge double %i.bu, 1.000000e+00
  %or.cond.i40.not = or i1 %i.bv, %i.bw           ; 2 uses
  br i1 %or.cond.i40.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %cell_alloc.exit
  %i.bx = fmul nnan double %i.bu, f0x41D0000000000000
  %i.by = tail call double @llvm.floor.f64(double %i.bx)
  %i.bz = fptosi double %i.by to i32
  %i.ca = lshr i32 %i.bz, 27
  %i.cb = and i32 %i.ca, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %cell_alloc.exit
  %.sroa.0.0.i = phi i32 [ %i.cb, %bb.i ], [ 0, %cell_alloc.exit ]
  %i.cc = fsub double %i.bb, %i.be
  %i.cd = fdiv double %i.cc, %i.bl                ; 3 uses
  %i.ce = fcmp oge double %i.cd, 0.000000e+00
  %i.cf = fcmp olt double %i.cd, 1.000000e+00
  %or.cond3.i41 = and i1 %i.ce, %i.cf
  br i1 %or.cond3.i41, label %bb.k, label %intcoord1.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cg = fsub double %i.as, %i.bj
  %i.ch = fdiv double %i.cg, %i.bl                ; 3 uses
  %i.ci = fcmp ult double %i.ch, 0.000000e+00
  %i.cj = fcmp uge double %i.ch, 1.000000e+00
  %or.cond5.i42.not60 = or i1 %i.ci, %i.cj
  %or.cond = or i1 %or.cond5.i42.not60, %or.cond.i40.not
  br i1 %or.cond, label %intcoord1.exit.thread, label %.split

intcoord1.exit.thread:                            ; preds = %bb.j, %bb.k
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1) ; 0 uses
  tail call void @abort() #22
  unreachable

.split:                                           ; preds = %bb.k
  %i.cl = fmul nnan double %i.cd, f0x41D0000000000000
  %i.cm = tail call double @llvm.floor.f64(double %i.cl)
  %i.cn = fptosi double %i.cm to i32
  %i.co = fmul nnan double %i.ch, f0x41D0000000000000
  %i.cp = tail call double @llvm.floor.f64(double %i.co)
  %i.cq = fptosi double %i.cp to i32
  %i.cr = lshr i32 %i.cn, 28
  %i.cs = and i32 %i.cr, 2
  %.1.1.i = or disjoint i32 %i.cs, %.sroa.0.0.i
  %i.ct = lshr i32 %i.cq, 29
  %.lobit = and i32 %i.ct, 1
  %.1.2.i = or disjoint i32 %.1.1.i, %.lobit
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.cv = zext nneg i32 %.1.2.i to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !50
  store ptr %.07.i, ptr %i.aa, align 8, !tbaa !28
end_hunk_1
