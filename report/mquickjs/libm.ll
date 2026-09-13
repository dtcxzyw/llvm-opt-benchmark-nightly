Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/libm?download=true
inline.NumInlined: 96
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_trunc
define dso_local double @js_trunc(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 6 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047                       ; 4 uses
  %i.e = icmp samesign ult i32 %i.d, 1023
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, 4503599627370495
  %i.g = icmp eq i32 %i.d, 0
  %i.h = icmp eq i64 %i.f, 0
  %or.cond.i = and i1 %i.h, %i.g
  %i.i = and i64 %i.a, -9223372036854775808
  %spec.select = select i1 %or.cond.i, i64 %i.a, i64 %i.i
  br label %rint_sf64.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i32 %i.d, 1075
  br i1 %i.j, label %bb.d, label %rint_sf64.exit

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw nsw i32 1075, %i.d
  %i.l = zext nneg i32 %i.k to i64
  %.neg = shl nsw i64 -1, %i.l
  %i.m = and i64 %.neg, %i.a
  br label %rint_sf64.exit

rint_sf64.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.1.i = phi i64 [ %spec.select, %bb.b ], [ %i.a, %bb.c ], [ %i.m, %bb.d ]
  %i.n = bitcast i64 %.1.i to double
  ret double %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local double @js_round_inf(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc double @rint_sf64(double noundef %0, i32 noundef 5) #8
  ret double %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @js_fabs(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local double @js_scalbn(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  switch i32 %i.e, label %.thread [
    i32 0, label %bb.b
    i32 2047, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i32
  %i.g = and i32 %i.c, 2147483647
  %i.h = or i32 %i.g, %i.f
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fmul double %0, f0x4350000000000000      ; 3 uses
  %i.k = bitcast double %i.j to i64
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = lshr i32 %i.m, 20
  %i.o = and i32 %i.n, 2047
  %i.p = add nsw i32 %i.o, -54
  %i.q = icmp slt i32 %1, -50000
  br i1 %i.q, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = fmul double %i.j, 1.000000e-300
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.s = fadd double %0, %0
  br label %bb.n

.thread:                                          ; preds = %bb.a, %bb.c
  %.03444 = phi i32 [ %i.c, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.03543 = phi i32 [ %i.e, %bb.a ], [ %i.p, %bb.c ]
  %.03642 = phi double [ %0, %bb.a ], [ %i.j, %bb.c ] ; 5 uses
  %i.t = add nsw i32 %.03543, %1                  ; 5 uses
  %i.u = icmp sgt i32 %i.t, 2046
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.v = tail call double @llvm.copysign.f64(double 1.000000e+300, double %.03642)
  %i.w = fmul nnan double %i.v, 1.000000e+300
  br label %bb.n

bb.g:                                             ; preds = %.thread
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %.03444, -2146435073
  %i.z = shl nuw nsw i32 %i.t, 20
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = bitcast double %.03642 to i64
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = zext i32 %i.aa to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = or disjoint i64 %i.ae, %i.ac
  %i.ag = bitcast i64 %i.af to double
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp slt i32 %i.t, -53
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sgt i32 %1, 50000
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call double @llvm.copysign.f64(double 1.000000e+300, double %.03642)
  %i.ak = fmul nnan double %i.aj, 1.000000e+300
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.al = tail call double @llvm.copysign.f64(double 1.000000e-300, double %.03642)
  %i.am = fmul nnan double %i.al, 1.000000e-300
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.an = and i32 %.03444, -2146435073
  %i.ao = shl nsw i32 %i.t, 20
  %i.ap = add nsw i32 %i.ao, 56623104
  %i.aq = or i32 %i.ap, %i.an
  %i.ar = bitcast double %.03642 to i64
  %i.as = and i64 %i.ar, 4294967295
  %i.at = zext i32 %i.aq to i64
  %i.au = shl nuw i64 %i.at, 32
  %i.av = or disjoint i64 %i.au, %i.as
  %i.aw = bitcast i64 %i.av to double
  %i.ax = fmul double %i.aw, f0x3C90000000000000
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.h, %bb.f, %bb.e, %bb.d
  %.0 = phi double [ %i.ax, %bb.m ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.ag, %bb.h ], [ %i.ak, %bb.k ], [ %i.am, %bb.l ], [ %0, %bb.b ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @js_sqrt(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.sqrt.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local i32 @js_rem_pio2(double noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 13 uses
  %i.c = bitcast double %0 to i64                 ; 6 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = and i32 %i.e, 2147483647                 ; 5 uses
  %i.g = icmp samesign ult i32 %i.f, 1072243196
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %0, ptr %1, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !15
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i32 %i.f, 1094263292
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.k = icmp samesign ult i32 %i.f, 1073928572   ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3FE45F306DC9C883, double 5.000000e-01)
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %2 = uitofp nneg i32 %i.m to double
  %.046 = select i1 %i.k, double 1.000000e+00, double %2 ; 3 uses
  %.045 = select i1 %i.k, i32 1, i32 %i.m         ; 2 uses
  %i.n = fneg double %.046                        ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double f0x3FF921FB54400000, double %i.j) ; 3 uses
  %i.p = fmul nnan double %.046, f0x3DD0B4611A626331 ; 2 uses
  %i.q = fsub double %i.o, %i.p                   ; 2 uses
  %i.r = lshr i32 %i.f, 20                        ; 2 uses
  %i.s = bitcast double %i.q to i64
  %sum.shift58 = lshr i64 %i.s, 52
  %i.t = trunc nuw nsw i64 %sum.shift58 to i32
  %i.u = and i32 %i.t, 2047
  %i.v = sub nsw i32 %i.r, %i.u
  %.not59 = icmp sgt i32 %i.v, 16
  br i1 %.not59, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %invariant.op = sub nsw i32 %i.r, 49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.w = phi double [ %i.aa, %bb.e ], [ %i.o, %.lr.ph.preheader ]
  %i.x = phi i1 [ true, %bb.e ], [ false, %.lr.ph.preheader ]
  %indvars.iv60 = phi i64 [ 2, %bb.e ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @pio2_tab, i64 %indvars.iv60
  %i.z = load double, ptr %i.y, align 8, !tbaa !15
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.n, double %i.z, double %i.w) ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @pio2_t_tab, i64 %indvars.iv60
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  %i.ad = fmul double %.046, %i.ac                ; 3 uses
  %i.ae = fsub double %i.aa, %i.ad                ; 3 uses
  br i1 %i.x, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.af = bitcast double %i.ae to i64
  %sum.shift = lshr i64 %i.af, 52
  %i.ag = trunc nuw nsw i64 %sum.shift to i32
  %i.ah = and i32 %i.ag, 2047
  %.not = icmp slt i32 %i.ah, %invariant.op
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %bb.d
  %.lcssa52 = phi double [ %i.q, %bb.d ], [ %i.ae, %.lr.ph ], [ %i.ae, %bb.e ] ; 3 uses
  %.lcssa51 = phi double [ %i.o, %bb.d ], [ %i.aa, %.lr.ph ], [ %i.aa, %bb.e ]
  %.lcssa50 = phi double [ %i.p, %bb.d ], [ %i.ad, %.lr.ph ], [ %i.ad, %bb.e ]
  store double %.lcssa52, ptr %1, align 8, !tbaa !15
  %i.ai = fsub double %.lcssa51, %.lcssa52
  %i.aj = fsub double %i.ai, %.lcssa50            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = icmp slt i64 %i.c, 0
  br i1 %i.al, label %bb.f, label %bb.s

bb.f:                                             ; preds = %._crit_edge
  %i.am = insertelement <2 x double> poison, double %.lcssa52, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = fneg <2 x double> %i.an
  store <2 x double> %i.ao, ptr %1, align 8, !tbaa !15
  %i.ap = sub nsw i32 0, %.045
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.aq = icmp samesign ugt i32 %i.f, 2146435071
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = fsub double %0, %0                      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ar, ptr %i.as, align 8, !tbaa !15
  store double %i.ar, ptr %1, align 8, !tbaa !15
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.at = lshr i64 %i.c, 52                       ; 2 uses
  %i.au = and i64 %i.at, 2047
  %i.av = trunc nuw nsw i64 %i.at to i32
  %i.aw = sub nsw i32 51, %i.av
  %i.ax = and i32 %i.aw, 63                       ; 3 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %.not.i.i = icmp ne i32 %i.ax, 0
  %i.az = sub nuw nsw i32 64, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  br label %bb.j

bb.j:                                             ; preds = %get_u64_at_bit.exit.i, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %get_u64_at_bit.exit.i ] ; 3 uses
  %i.bb = shl nuw nsw i64 %indvars.iv.i, 6
  %i.bc = sub nsw i64 %i.bb, %i.au                ; 2 uses
  %i.bd = add nsw i64 %i.bc, 2099
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @T, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bh = lshr i64 %i.bg, %i.ay                   ; 2 uses
  %i.bi = icmp slt i64 %i.bc, -947
  %or.cond.i.i = and i1 %.not.i.i, %i.bi
  br i1 %or.cond.i.i, label %bb.k, label %get_u64_at_bit.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = shl i64 %i.bk, %i.ba
  %i.bm = or i64 %i.bl, %i.bh
  br label %get_u64_at_bit.exit.i

get_u64_at_bit.exit.i:                            ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.bm, %bb.k ], [ %i.bh, %bb.j ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %.0.i.i, ptr %i.bn, align 8, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %bb.l, label %bb.j, !llvm.loop !19

bb.l:                                             ; preds = %get_u64_at_bit.exit.i
  %i.bo = lshr i64 %i.c, 63                       ; 2 uses
  %i.bp = and i64 %i.c, 4503599627370495
  %i.bq = or disjoint i64 %i.bp, 4503599627370496 ; 3 uses
  %i.br = load i64, ptr %i.a, align 16, !tbaa !17
  %i.bs = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %i.bq, i64 noundef %i.br) #8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bv = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %i.bq, i64 noundef %i.bu) #8
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.bx = add i64 %i.bw, %i.bs                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = zext i1 %i.by to i64
  %i.ca = add i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = load i64, ptr %i.cb, align 16, !tbaa !17
  %i.cd = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %i.bq, i64 noundef %i.cc) #8 ; 0 uses
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !17
  %i.cf = add i64 %i.ca, %i.ce                    ; 3 uses
  %i.cg = lshr i64 %i.cf, 61
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 1                        ; 2 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.bx, i64 2) ; 2 uses
  %i.ck = shl i64 %i.bx, 2                        ; 3 uses
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = xor i64 %i.bo, 1
  %i.cm = sub i64 0, %i.ck
  %i.cn = icmp ne i64 %i.ck, 0
  %i.co = sext i1 %i.cn to i64
  %spec.select.i = sub i64 %i.co, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i64 [ %i.bo, %bb.l ], [ %i.cl, %bb.m ]
  %.sroa.14.0.i = phi i64 [ %i.cj, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ck, %bb.l ], [ %i.cm, %bb.m ]
  %i.cp = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef -3958705157555305932) #8
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !17
  %i.cr = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %.sroa.14.0.i, i64 noundef -4267615245585081135) #8 ; 2 uses
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ct = xor i64 %i.cs, -1
  %i.cu = icmp ugt i64 %i.cq, %i.ct
  %i.cv = add i64 %i.cr, %i.cp                    ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cr
  %i.cx = zext i1 %i.cu to i64                    ; 2 uses
  %i.cy = add i64 %i.cv, %i.cx                    ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = or i1 %i.cw, %i.cz
  %i.db = zext i1 %i.da to i64
  %i.dc = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %.sroa.14.0.i, i64 noundef -3958705157555305932) #8
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.de = add i64 %i.cy, %i.dd                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = zext i1 %i.df to i64
  %i.dh = add i64 %i.dc, %i.db
  %i.di = add i64 %i.dh, %i.dg                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %rem_pio2_large.exit

bb.p:                                             ; preds = %bb.n
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 true) ; 4 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.de, i64 %i.dk) ; 2 uses
  %i.dm = shl i64 %i.de, %i.dk
  %i.dn = lshr i64 %i.dl, 11
  %i.do = and i64 %i.dn, 4503599627370495
  %i.dp = shl i64 %i.dl, 42
  %i.dq = and i64 %i.dp, 9002801208229888
  %i.dr = lshr i64 %i.dm, 22
  %i.ds = or disjoint i64 %i.dq, %i.dr            ; 3 uses
  %i.dt = shl nuw i64 %.0.i, 63                   ; 2 uses
  %i.du = shl nuw nsw i64 %i.dk, 52
  %i.dv = or disjoint i64 %i.do, %i.du
  %i.dw = or disjoint i64 %i.dv, %i.dt
  %i.dx = xor i64 %i.dw, 4607182418800017408
  store i64 %i.dx, ptr %1, align 8, !tbaa !15
  %i.dy = icmp eq i64 %i.ds, 0
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
