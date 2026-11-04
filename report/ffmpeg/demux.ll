Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/demux?download=true
inline.NumInlined: 90
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ff_reduce_index

declare i32 @av_add_index_entry(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_rfps_add_frame(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !141  ; 4 uses
  %i.e = icmp ne i64 %2, -9223372036854775808     ; 2 uses
  %i.f = icmp ne i64 %i.d, -9223372036854775808
  %i.g = icmp sgt i64 %2, %i.d
  %i.h = and i1 %i.f, %i.g
  %or.cond98 = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond98, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %2, %i.d                         ; 4 uses
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %2, 9222809086901354495     ; 2 uses
  %i.l = add nsw i64 %2, -9223090561878065151
  %i.m = select i1 %i.k, i64 %i.l, i64 %2
  %i.n = sitofp nsz i64 %i.m to double
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r
  %i.t = fmul nsz double %i.s, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142  ; 2 uses
  %.not95 = icmp eq ptr %i.v, null
  br i1 %.not95, label %bb.d, label %.preheader102

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noalias ptr @av_mallocz(i64 noundef 12768) #15 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !142
  %.not96.not = icmp eq ptr %i.w, null
  br i1 %.not96.not, label %.critedge, label %.preheader102

.preheader102:                                    ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 6384
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 9576
  br label %bb.f

bb.e:                                             ; preds = %.loopexit101
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !143 ; 2 uses
  %i.af = sub nuw nsw i64 9223372036854775807, %i.i
  %.not97 = icmp sgt i64 %i.ae, %i.af
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !144 ; 2 uses
  br i1 %.not97, label %._crit_edge, label %bb.n

bb.f:                                             ; preds = %.preheader102, %.loopexit101
  %indvars.iv = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next, %.loopexit101 ] ; 12 uses
  %indvars108 = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !146 ; 2 uses
  %i.ai = fcmp nsz olt double %i.ah, 1.000000e+10
  br i1 %i.ai, label %bb.g, label %.loopexit101

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = icmp samesign ult i64 %indvars.iv, 360
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = mul nuw nsw i32 %i.ak, 1001
  %i.am = add nuw nsw i32 %i.al, 1001
  br label %get_std_framerate.exit

bb.i:                                             ; preds = %bb.g
  %i.an = icmp samesign ult i64 %indvars.iv, 390
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = mul nuw nsw i32 %indvars108, 12012
  %i.ap = add nsw i32 %i.ao, -3951948
  br label %get_std_framerate.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp samesign ult i64 %indvars.iv, 393
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 80, ptr %i.a, align 4, !tbaa !55
  store i32 120, ptr %i.z, align 4, !tbaa !55
  store i32 240, ptr %i.aa, align 4, !tbaa !55
  %i.ar = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 -1560
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = mul nsw i32 %i.at, 12012
  br label %get_std_framerate.exit

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr [4 x i8], ptr @constinit, i64 %indvars.iv
  %i.aw = getelementptr i8, ptr %i.av, i64 -1572
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !55
  %i.ay = mul nsw i32 %i.ax, 12000
  br label %get_std_framerate.exit

get_std_framerate.exit:                           ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i = phi i32 [ %i.am, %bb.h ], [ %i.ap, %bb.j ], [ %i.au, %bb.l ], [ %i.ay, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = sitofp nsz i32 %.0.i to double
  %i.ba = fmul nsz double %i.t, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !146
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !146
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !146
  %i.bh = fdiv nsz double %i.ba, 1.201200e+04     ; 3 uses
  %i.bi = tail call i64 @llvm.llrint.i64.f64(double %i.bh)
  %i.bj = sitofp nsz i64 %i.bi to double
  %i.bk = fadd nsz double %i.bh, 5.000000e-01
  %i.bl = tail call i64 @llvm.llrint.i64.f64(double %i.bk)
  %i.bm = sitofp nsz i64 %i.bl to double
  %i.bn = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bm, i64 1
  %i.br = fsub nsz <2 x double> %i.bo, %i.bq      ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = fadd nsz double %i.bs, %i.bc
  store double %i.bt, ptr %i.bb, align 8, !tbaa !146
  %i.bu = fadd nsz <2 x double> %i.br, <double -0.000000e+00, double 5.000000e-01> ; 3 uses
  %i.bv = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bg, i64 1
  %i.bx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bu, <2 x double> %i.bw) ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  store double %i.by, ptr %i.ag, align 8, !tbaa !146
  %i.bz = extractelement <2 x double> %i.bu, i64 1
  %i.ca = fadd nsz double %i.bz, %i.be
  store double %i.ca, ptr %i.bd, align 8, !tbaa !146
  %i.cb = extractelement <2 x double> %i.bx, i64 1
  store double %i.cb, ptr %i.bf, align 8, !tbaa !146
  br label %.loopexit101

.loopexit101:                                     ; preds = %get_std_framerate.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 399
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !250

bb.n:                                             ; preds = %bb.e
  %i.cc = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.cc, ptr %.phi.trans.insert, align 8, !tbaa !144
  %i.cd = add nsw i64 %i.ae, %i.i
  store i64 %i.cd, ptr %i.ad, align 8, !tbaa !143
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.n
  %i.ce = phi i32 [ %i.cc, %bb.n ], [ %.pre, %bb.e ] ; 3 uses
  %i.cf = srem i32 %i.ce, 10
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.ch = sitofp nsz i32 %i.ce to double
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 6384
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 9576
  %i.ck = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.r
  %indvars.iv109 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next110, %bb.r ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv109 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !146 ; 2 uses
  %i.co = fcmp nsz olt double %i.cn, 1.000000e+10
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv109
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !146
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv109
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !146
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv109 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !146
  %i.cv = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cq, i64 1
  %i.cx = fdiv nsz <2 x double> %i.cw, %i.cl      ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cn, i64 1
  %i.da = fdiv nsz <2 x double> %i.cz, %i.cl
  %i.db = fneg nsz <2 x double> %i.cx
  %i.dc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.cx, <2 x double> %i.da)
  %3 = fcmp nsz ogt <2 x double> %i.dc, splat (double 4.000000e-02) ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %or.cond3 = select i1 %5, i1 %4, i1 false
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double 2.000000e+10, ptr %i.cm, align 8, !tbaa !146
  store double 2.000000e+10, ptr %i.ct, align 8, !tbaa !146
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next110, 399
  br i1 %exitcond112.not, label %.loopexit, label %bb.o, !llvm.loop !251

.loopexit:                                        ; preds = %bb.r, %._crit_edge
  %i.dd = icmp sgt i32 %i.ce, 3
  %i.de = icmp slt i64 %i.d, 9222809086901354496
  %i.df = xor i1 %i.k, %i.de
  %or.cond = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.s, label %.thread

bb.s:                                             ; preds = %.loopexit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !147
  %i.di = tail call i64 @av_gcd(i64 noundef %i.dh, i64 noundef %i.i) #18
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !147
  br label %.thread

bb.t:                                             ; preds = %bb.a
  br i1 %i.e, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.s, %.loopexit, %bb.b, %bb.t
  store i64 %2, ptr %i.c, align 8, !tbaa !141
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.t, %.thread
  %.1 = phi i32 [ 0, %bb.t ], [ -12, %bb.d ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.llrint.i64.f64(double) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_gcd(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @ff_rfps_calculate(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 9 uses
  %i.b = alloca [3 x i32], align 4                ; 9 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 7 uses
  %i.e = alloca [3 x i32], align 4                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70   ; 2 uses
  %.not163 = icmp eq i32 %i.g, 0
  br i1 %.not163, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.cb, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.cb
  %i.t = phi i32 [ %i.g, %.lr.ph ], [ %i.lv, %bb.cb ]
  %indvars.iv168 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next169, %bb.cb ] ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73   ; 19 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.cb

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 856 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 248 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !151
  %i.ag = and i32 %i.af, 16
  %.not22.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not22.i, i64 4294967297, i64 4294967298
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.insert.ext.i = phi i64 [ 4294967297, %bb.c ], [ %i.ah, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 100 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !152
  %.not23.i = icmp eq i32 %i.aj, 0
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 4
  %i.al = tail call i64 @av_mul_q(i64 %i.ak, i64 %.sroa.04.0.insert.ext.i) #18 ; 2 uses
  %.sroa.01.0.insert.insert.i.i = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32) ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %.sroa.01.0.insert.insert.i.i to i32
  %.sroa.7.0.extract.shift.i = lshr i64 %.sroa.01.0.insert.insert.i.i, 32
  %.sroa.7.0.extract.trunc.i = trunc nuw i64 %.sroa.7.0.extract.shift.i to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.i, align 8, !tbaa !153
  %i.an = and i32 %i.am, 1
  %.not24.i = icmp eq i32 %i.an, 0
  br i1 %.not24.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.01.0.copyload.i = load i32, ptr %i.ao, align 8, !tbaa !55
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.7.0.i = phi i32 [ %.sroa.7.0.extract.trunc.i, %bb.f ], [ %.sroa.7.0.copyload.i, %bb.h ], [ 1, %bb.g ]
  %.sroa.01.0.i = phi i32 [ %.sroa.01.0.extract.trunc.i, %bb.f ], [ %.sroa.01.0.copyload.i, %bb.h ], [ 0, %bb.g ]
  %i.ap = sext i32 %.sroa.7.0.i to i64            ; 2 uses
  %i.aq = sext i32 %.sroa.01.0.i to i64           ; 2 uses
  %i.ar = mul nsw i64 %i.aq, 101
  %.not25.i = icmp sle i64 %i.ar, %i.ap
  %i.as = mul nsw i64 %i.aq, 5
  %i.at = icmp sgt i64 %i.as, %i.ap
  %or.cond.i = select i1 %.not25.i, i1 true, i1 %i.at
  br i1 %or.cond.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !154
  %i.aw = icmp eq i32 %i.av, 1983148141
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !90
  switch i32 %i.ay, label %tb_unreliable.exit [
    i32 2, label %bb.l
    i32 97, label %bb.l
    i32 172, label %bb.l
    i32 27, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !144
  %i.bd = icmp sgt i32 %i.bc, 15
  br i1 %i.bd, label %bb.m, label %tb_unreliable.exit

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !147 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !100
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !101
  %i.bl = sext i32 %i.bk to i64                   ; 3 uses
  %i.bm = mul nsw i64 %i.bl, 500
  %i.bn = sdiv i64 %i.bj, %i.bm
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 1)
  %i.bo = icmp sgt i64 %i.bf, %spec.select
  br i1 %i.bo, label %bb.n, label %tb_unreliable.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 204 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !155
  %.not100 = icmp eq i32 %i.bq, 0
  br i1 %.not100, label %bb.o, label %tb_unreliable.exit

bb.o:                                             ; preds = %bb.n
  %i.br = sdiv i64 9223372036854775807, %i.bl
  %i.bs = icmp slt i64 %i.bf, %i.br
  br i1 %i.bs, label %bb.p, label %tb_unreliable.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.bu = mul nsw i64 %i.bf, %i.bl
end_hunk_0
