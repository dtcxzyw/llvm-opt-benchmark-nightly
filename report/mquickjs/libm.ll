Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/libm?download=true
inline.NumInlined: 96
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_exp:bb.a
bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i32 %i.e, 1043333120
  %i.ab = fadd double %0, 1.000000e+300
  %i.ac = fcmp ogt double %i.ab, 1.000000e+00
  %or.cond = and i1 %i.ac, %i.aa
  br i1 %or.cond, label %bb.k, label %.split45

bb.k:                                             ; preds = %bb.j
  %i.ad = fadd double %0, 1.000000e+00
  br label %bb.l

.thread49:                                        ; preds = %bb.g, %bb.i
  %i.ae = zext nneg i32 %i.d to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @halF, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !15
  %i.ah = tail call double @llvm.fmuladd.f64(double %0, double f0x3FF71547652B82FE, double %i.ag)
  %i.ai = fptosi double %i.ah to i32              ; 3 uses
  %i.aj = sitofp i32 %i.ai to double              ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double f0x3FE62E42FEE00000, double %0) ; 2 uses
  %i.am = fmul nnan double %i.aj, f0x3DEA39EF35793C76 ; 2 uses
  %i.an = fsub double %i.al, %i.am                ; 2 uses
  %i.ao = icmp eq i32 %i.ai, 0
  br i1 %i.ao, label %.split45, label %.split

.split:                                           ; preds = %.thread56, %.thread49
  %i.ap = phi double [ %i.z, %.thread56 ], [ %i.an, %.thread49 ]
  %.062 = phi i32 [ %i.y, %.thread56 ], [ %i.ai, %.thread49 ]
  %.03761 = phi double [ %i.w, %.thread56 ], [ %i.am, %.thread49 ]
  %.03960 = phi double [ %i.u, %.thread56 ], [ %i.al, %.thread49 ]
  %i.aq = tail call fastcc double @kernel_exp(double noundef %i.ap, double noundef 0.000000e+00, double noundef %.03761, double noundef %.03960, i32 noundef %.062) #8
  br label %bb.l

.split45:                                         ; preds = %bb.j, %.thread49
  %.04255 = phi double [ %i.an, %.thread49 ], [ %0, %bb.j ] ; 2 uses
  %i.ar = tail call fastcc double @kernel_exp(double noundef %.04255, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %.04255, i32 noundef 0) #8
  br label %bb.l

bb.l:                                             ; preds = %.split45, %.split, %bb.g, %bb.f, %bb.k, %bb.e, %bb.d
  %.043 = phi double [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.ad, %bb.k ], [ +inf, %bb.f ], [ 0.000000e+00, %bb.g ], [ %i.aq, %.split ], [ %i.ar, %.split45 ]
  ret double %.043
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @kernel_exp(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = fmul double %0, %0                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 3, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.0910.i = phi double [ f0x3E66376972BEA4D0, %bb.a ], [ %i.d, %bb.b ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @P, i64 %indvars.iv.i
  %i.c = load double, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call double @llvm.fmuladd.f64(double %.0910.i, double %i.a, double %i.c) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %eval_poly.exit, label %bb.b, !llvm.loop !0

eval_poly.exit:                                   ; preds = %bb.b
  %i.e = fneg double %i.a
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.d, double %0) ; 2 uses
  %i.g = fmul double %0, %i.f
  %i.h = fadd double %i.f, -2.000000e+00
  %i.i = fdiv double %i.g, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %0, double %1, double %1)
  %i.k = fsub double %i.i, %i.j
  %i.l = fadd double %2, %i.k
  %i.m = fsub double %3, %i.l
  %i.n = fadd double %i.m, 1.000000e+00           ; 2 uses
  %i.o = bitcast double %i.n to i64               ; 2 uses
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = shl i32 %4, 20
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 1048576
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %eval_poly.exit
  %i.u = tail call double @js_scalbn(double noundef %i.n, i32 noundef %4) #8
  br label %bb.e

bb.d:                                             ; preds = %eval_poly.exit
  %i.v = and i64 %i.o, 4294967295
  %i.w = zext nneg i32 %i.s to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, %i.v
  %i.z = bitcast i64 %i.y to double
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi double [ %i.u, %bb.c ], [ %i.z, %bb.d ]
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_log2(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc double @js_log_internal(double noundef %0, i32 noundef 0) #8
  ret double %i.a
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @js_log_internal(double noundef %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = bitcast double %0 to i64                 ; 4 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32                ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.c to i32
  %i.h = and i32 %i.e, 2147483647
  %i.i = or i32 %i.h, %i.g
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i64 %i.c, 0
  br i1 %i.k, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.c, 9218868437227405311
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fadd double %0, %0
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c
  call fastcc void @kernel_log2(ptr noundef %i.a, ptr noundef %i.b, double noundef %0) #8
  %i.n = load double, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.o = load double, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  %i.p = fadd double %i.n, %i.o                   ; 2 uses
  %i.q = icmp eq i32 %1, 0
  br i1 %i.q, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = bitcast double %i.p to i64
  %i.s = and i64 %i.r, -4294967296
  %i.t = bitcast i64 %i.s to double               ; 5 uses
  %i.u = icmp eq i32 %1, 1
  %i.v = fsub double %i.t, %i.n
  %i.w = fsub double %i.o, %i.v                   ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = fmul double %i.t, f0x3FE62E4300000000
  %i.y = fmul double %i.t, f0xBE205C610CA86C39
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FE62E42FEFA39EF, double %i.y)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = fmul double %i.t, f0x3FD3441300000000
  %i.ab = fmul double %i.t, f0x3E7427DE7FBCC47C
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FD34413509F79FF, double %i.ab)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.024 = phi double [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %.023 = phi double [ %i.z, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = fadd double %.024, %.023
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.j, %bb.e
  %.0 = phi double [ %i.m, %bb.e ], [ -inf, %bb.b ], [ +qnan, %bb.c ], [ %i.ad, %bb.j ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_log(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc double @js_log_internal(double noundef %0, i32 noundef 1) #8
  ret double %i.a
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_log10(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc double @js_log_internal(double noundef %0, i32 noundef 2) #8
  ret double %i.a
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_pow(double noundef %0, double noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = bitcast double %0 to i64                 ; 5 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32                ; 2 uses
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  %i.g = bitcast double %1 to i64                 ; 9 uses
  %i.h = lshr i64 %i.g, 32                        ; 3 uses
  %i.i = trunc nuw i64 %i.h to i32                ; 3 uses
  %i.j = trunc i64 %i.g to i32                    ; 6 uses
  %i.k = and i32 %i.e, 2147483647                 ; 8 uses
  %i.l = and i32 %i.i, 2147483647                 ; 12 uses
  %i.m = or i32 %i.l, %i.j
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 2146435072
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.k, 2146435072
  %i.q = icmp ne i32 %i.f, 0
  %or.cond = and i1 %i.q, %i.p
  %i.r = icmp samesign ugt i32 %i.l, 2146435072
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.r
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.l, 2146435072             ; 2 uses
  %i.t = icmp ne i32 %i.j, 0
  %or.cond5 = and i1 %i.t, %i.s
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.u = fadd double %0, %1
  br label %bb.bh

bb.f:                                             ; preds = %bb.d
  %i.v = icmp slt i64 %i.c, 0                     ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.w = icmp samesign ugt i32 %i.l, 1128267775
  br i1 %i.w, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp samesign ugt i32 %i.l, 1072693247
  br i1 %i.x, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = lshr i32 %i.l, 20                        ; 2 uses
  %i.z = icmp samesign ugt i32 %i.l, 1094713343
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = sub nuw nsw i32 1075, %i.y              ; 2 uses
  %i.ab = lshr i32 %i.j, %i.aa                    ; 2 uses
  %i.ac = shl i32 %i.ab, %i.aa
  %i.ad = icmp eq i32 %i.ac, %i.j
  br i1 %i.ad, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.ab, 1
  %i.af = sub nuw nsw i32 2, %i.ae
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %2 = icmp eq i32 %i.j, 0
  br i1 %2, label %bb.m, label %.thread196

bb.m:                                             ; preds = %bb.l
  %i.ag = sub nsw i32 1043, %i.y                  ; 2 uses
  %i.ah = lshr i32 %i.l, %i.ag                    ; 2 uses
  %i.ai = shl i32 %i.ah, %i.ag
  %i.aj = icmp eq i32 %i.ai, %i.l
  br i1 %i.aj, label %bb.n, label %.thread198

bb.n:                                             ; preds = %bb.m
  %i.ak = and i32 %i.ah, 1
  %i.al = sub nuw nsw i32 2, %i.ak
  br label %.thread198

bb.o:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.h, %bb.f
  %.0183 = phi i32 [ 0, %bb.f ], [ %i.af, %bb.k ], [ 0, %bb.j ], [ 0, %bb.h ], [ 2, %bb.g ] ; 2 uses
  %3 = icmp eq i32 %i.j, 0
  br i1 %3, label %bb.p, label %.thread196

bb.p:                                             ; preds = %bb.o
  br i1 %i.s, label %bb.q, label %.thread198

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i32 %i.k, -1072693248
  %i.an = or i32 %i.am, %i.f
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = fsub double %1, %1
  br label %bb.bh

bb.s:                                             ; preds = %bb.q
  %i.aq = icmp samesign ugt i32 %i.k, 1072693247
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ar = icmp sgt i64 %i.g, -1
  %i.as = select i1 %i.ar, double %1, double 0.000000e+00
  br label %bb.bh

bb.u:                                             ; preds = %bb.s
  %i.at = icmp slt i64 %i.g, 0
  %i.au = fneg double %1
  %i.av = select i1 %i.at, double %i.au, double 0.000000e+00
  br label %bb.bh

.thread198:                                       ; preds = %bb.m, %bb.n, %bb.p
  %.0183195200 = phi i32 [ %.0183, %bb.p ], [ 0, %bb.m ], [ %i.al, %bb.n ]
  %i.aw = icmp eq i32 %i.l, 1072693248
  br i1 %i.aw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.thread198
  %i.ax = icmp slt i64 %i.g, 0
  br i1 %i.ax, label %bb.w, label %bb.bh

bb.w:                                             ; preds = %bb.v
  %i.ay = fdiv double 1.000000e+00, %0
  br label %bb.bh

bb.x:                                             ; preds = %.thread198
  %i.az = icmp eq i64 %i.h, 1073741824
  br i1 %i.az, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ba = fmul double %0, %0
  br label %bb.bh

bb.z:                                             ; preds = %bb.x
  %i.bb = icmp eq i64 %i.h, 1071644672
  %i.bc = icmp sgt i64 %i.c, -1
  %or.cond11 = and i1 %i.bc, %i.bb
  br i1 %or.cond11, label %bb.aa, label %.thread196

bb.aa:                                            ; preds = %bb.z
  %i.bd = tail call noundef double @llvm.sqrt.f64(double %0)
  br label %bb.bh

.thread196:                                       ; preds = %bb.l, %bb.z, %bb.o
  %.0183194 = phi i32 [ %.0183195200, %bb.z ], [ %.0183, %bb.o ], [ 0, %bb.l ] ; 4 uses
  %i.be = tail call double @llvm.fabs.f64(double %0) ; 4 uses
  %4 = icmp eq i32 %i.f, 0
  br i1 %4, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %.thread196
  switch i32 %i.e, label %bb.ah [
    i32 -1048576, label %bb.ac
    i32 -1074790400, label %bb.ac
    i32 -2147483648, label %bb.ac
    i32 2146435072, label %bb.ac
    i32 1072693248, label %bb.ac
    i32 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.bf = icmp slt i64 %i.g, 0
  %i.bg = fdiv double 1.000000e+00, %i.be
  %.0180 = select i1 %i.bf, double %i.bg, double %i.be ; 5 uses
  br i1 %i.v, label %bb.ad, label %bb.bh

bb.ad:                                            ; preds = %bb.ac
  %i.bh = add nsw i32 %i.k, -1072693248
  %i.bi = or i32 %.0183194, %i.bh
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bk = fsub double %.0180, %.0180              ; 2 uses
  %i.bl = fdiv double %i.bk, %i.bk
  br label %bb.bh

bb.af:                                            ; preds = %bb.ad
  %i.bm = icmp eq i32 %.0183194, 1
  br i1 %i.bm, label %bb.ag, label %bb.bh

bb.ag:                                            ; preds = %bb.af
  %i.bn = fneg double %.0180
  br label %bb.bh

bb.ah:                                            ; preds = %bb.ab, %.thread196
  %isnotneg = icmp sgt i64 %i.c, -1
  %i.bo = zext i1 %isnotneg to i32                ; 2 uses
  %i.bp = or i32 %.0183194, %i.bo
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.br = fsub double %0, %0                      ; 2 uses
  %i.bs = fdiv double %i.br, %i.br
  br label %bb.bh

bb.aj:                                            ; preds = %bb.ah
  %i.bt = add nsw i32 %.0183194, -1
  %i.bu = or i32 %i.bt, %i.bo
  %i.bv = icmp eq i32 %i.bu, 0
  %spec.store.select = select i1 %i.bv, double -1.000000e+00, double 1.000000e+00 ; 9 uses
  %i.bw = icmp samesign ugt i32 %i.l, 1105199104
  br i1 %i.bw, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.bx = icmp samesign ugt i32 %i.l, 1139802112
  br i1 %i.bx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.by = icmp samesign ult i32 %i.k, 1072693248
  br i1 %i.by, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bz = icmp slt i64 %i.g, 0
  %i.ca = select i1 %i.bz, double +inf, double 0.000000e+00
  br label %bb.bh

bb.an:                                            ; preds = %bb.al
  %i.cb = icmp sgt i32 %i.i, 0
  %i.cc = select i1 %i.cb, double +inf, double 0.000000e+00
  br label %bb.bh

bb.ao:                                            ; preds = %bb.ak
  %i.cd = icmp samesign ult i32 %i.k, 1072693247
  br i1 %i.cd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ce = icmp slt i64 %i.g, 0
  %i.cf = fmul nnan double %spec.store.select, 1.000000e+300
  %i.cg = fmul nnan double %i.cf, 1.000000e+300
  %i.ch = fmul nnan double %spec.store.select, 1.000000e-300
  %i.ci = fmul nnan double %i.ch, 1.000000e-300
  %i.cj = select i1 %i.ce, double %i.cg, double %i.ci
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ao
  %i.ck = icmp samesign ugt i32 %i.k, 1072693248
  br i1 %i.ck, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cl = icmp sgt i32 %i.i, 0
  %i.cm = fmul nnan double %spec.store.select, 1.000000e+300
  %i.cn = fmul nnan double %i.cm, 1.000000e+300
  %i.co = fmul nnan double %spec.store.select, 1.000000e-300
  %i.cp = fmul nnan double %i.co, 1.000000e-300
  %i.cq = select i1 %i.cl, double %i.cn, double %i.cp
  br label %bb.bh

bb.as:                                            ; preds = %bb.aq
  %i.cr = fadd double %i.be, -1.000000e+00        ; 5 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fneg double %i.cr                       ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double 2.500000e-01, double f0x3FD5555555555555)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cu, double 5.000000e-01)
  %i.cw = fmul double %i.cs, %i.cv
  %i.cx = fmul double %i.cr, f0x3FF7154760000000  ; 2 uses
  %i.cy = fmul double %i.cw, f0xBFF71547652B82FE
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cr, double f0x3E54AE0BF85DDF44, double %i.cy) ; 2 uses
  %i.da = fadd double %i.cx, %i.cz
  %i.db = bitcast double %i.da to i64
  %i.dc = and i64 %i.db, -4294967296
  %i.dd = bitcast i64 %i.dc to double             ; 2 uses
  %i.de = fsub double %i.dd, %i.cx
  %i.df = fsub double %i.cz, %i.de
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  call fastcc void @kernel_log2(ptr noundef %i.a, ptr noundef %i.b, double noundef %i.be) #8
  %.pre = load double, ptr %i.a, align 8, !tbaa !15
  %.pre201 = load double, ptr %i.b, align 8, !tbaa !15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dg = phi double [ %.pre201, %bb.at ], [ %i.df, %bb.as ]
  %i.dh = phi double [ %.pre, %bb.at ], [ %i.dd, %bb.as ] ; 2 uses
  %i.di = and i64 %i.g, -4294967296
  %i.dj = bitcast i64 %i.di to double             ; 2 uses
  %i.dk = fsub double %1, %i.dj
  %i.dl = fmul double %1, %i.dg
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dh, double %i.dl) ; 5 uses
  %i.dn = fmul double %i.dh, %i.dj                ; 5 uses
  %i.do = fadd double %i.dn, %i.dm                ; 3 uses
  %i.dp = bitcast double %i.do to i64             ; 4 uses
  %i.dq = lshr i64 %i.dp, 32
  %i.dr = trunc nuw i64 %i.dq to i32              ; 6 uses
  %i.ds = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dt = icmp sgt i32 %i.dr, 1083179007
  br i1 %i.dt, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.du = add nsw i32 %i.dr, -1083179008
  %i.dv = or i32 %i.du, %i.ds
  %.not192 = icmp eq i32 %i.dv, 0
  br i1 %.not192, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dw = fmul nnan double %spec.store.select, 1.000000e+300
  %i.dx = fmul nnan double %i.dw, 1.000000e+300
  br label %bb.bh

bb.ax:                                            ; preds = %bb.av
  %i.dy = fadd double %i.dm, f0x3C971547652B82FE
  %i.dz = fsub double %i.do, %i.dn
  %i.ea = fcmp ogt double %i.dy, %i.dz
  br i1 %i.ea, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.eb = fmul nnan double %spec.store.select, 1.000000e+300
  %i.ec = fmul nnan double %i.eb, 1.000000e+300
  br label %bb.bh

bb.az:                                            ; preds = %bb.au
  %i.ed = and i32 %i.dr, 2147482624
  %i.ee = icmp samesign ugt i32 %i.ed, 1083231231
  br i1 %i.ee, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ef = add nsw i32 %i.dr, 1064252416
  %i.eg = or i32 %i.ef, %i.ds
  %.not = icmp eq i32 %i.eg, 0
  br i1 %.not, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eh = fmul nnan double %spec.store.select, 1.000000e-300
  %i.ei = fmul nnan double %i.eh, 1.000000e-300
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ba
  %i.ej = fsub double %i.do, %i.dn
  %i.ek = fcmp ugt double %i.dm, %i.ej
  br i1 %i.ek, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.el = fmul nnan double %spec.store.select, 1.000000e-300
  %i.em = fmul nnan double %i.el, 1.000000e-300
  br label %bb.bh

bb.be:                                            ; preds = %bb.az, %bb.bc, %bb.ax
  %i.en = and i32 %i.dr, 2147483647               ; 2 uses
  %i.eo = icmp samesign ugt i32 %i.en, 1071644672
  br i1 %i.eo, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ep = lshr i32 %i.en, 20
  %i.eq = add nsw i32 %i.ep, -1022
  %i.er = lshr i32 1048576, %i.eq
  %i.es = add nsw i32 %i.er, %i.dr                ; 3 uses
  %i.et = lshr i32 %i.es, 20
end_hunk_0
