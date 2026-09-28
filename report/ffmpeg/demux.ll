Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/demux?download=true
inline.NumInlined: 90
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@read_frame_internal:bb.a
  %i.ht = call i32 @av_opt_set_dict_val(ptr noundef nonnull %0, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 1) #15 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.hu = icmp eq i32 %i.hm, -1414549496
  %i.hv = zext i1 %i.hu to i32
  store i32 %i.hv, ptr %i.hk, align 8, !tbaa !68
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.hw = load i32, ptr %i.q, align 8, !tbaa !133
  %i.hx = and i32 %i.hw, 1
  %.not270 = icmp eq i32 %i.hx, 0
  br i1 %.not270, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hy = load i32, ptr %i.j, align 4, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.hz = load i64, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.ia = icmp eq i64 %i.hz, -9223372036854775808
  br i1 %i.ia, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(6) @.str.39, i64 6, i1 false)
  br label %av_ts_make_string.exit279

bb.bp:                                            ; preds = %bb.bn
  %i.ib = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 32, ptr noundef nonnull @.str.40, i64 noundef %i.hz) #15 ; 0 uses
  br label %av_ts_make_string.exit279

av_ts_make_string.exit279:                        ; preds = %bb.bo, %bb.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.ic = load i64, ptr %i.o, align 8, !tbaa !98  ; 2 uses
  %i.id = icmp eq i64 %i.ic, -9223372036854775808
  br i1 %i.id, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %av_ts_make_string.exit279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.39, i64 6, i1 false)
  br label %av_ts_make_string.exit280

bb.br:                                            ; preds = %av_ts_make_string.exit279
  %i.ie = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 32, ptr noundef nonnull @.str.40, i64 noundef %i.ic) #15 ; 0 uses
  br label %av_ts_make_string.exit280

av_ts_make_string.exit280:                        ; preds = %bb.bq, %bb.br
  %i.if = load i32, ptr %i.p, align 8, !tbaa !112
  %i.ig = load i64, ptr %i.r, align 8, !tbaa !124
  %i.ih = load i32, ptr %i.s, align 8, !tbaa !97
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.69, i32 noundef %i.hy, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef %i.if, i64 noundef %i.ig, i32 noundef %i.ih) #15
  br label %bb.bs

bb.bs:                                            ; preds = %av_ts_make_string.exit280, %bb.bm
  %i.ii = icmp eq i32 %.7299, -541478725
  br i1 %i.ii, label %bb.bt, label %.thread283

bb.bt:                                            ; preds = %bb.bs
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !53 ; 2 uses
  %.not271 = icmp eq ptr %i.ik, null
  br i1 %.not271, label %.thread283, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 84
  %i.im = load i32, ptr %i.il, align 4, !tbaa !249 ; 3 uses
  %i.in = icmp sgt i32 %i.im, -1
  %.not272 = icmp eq i32 %i.im, -11
  %or.cond274 = or i1 %i.in, %.not272
  %spec.select275 = select i1 %or.cond274, i32 -541478725, i32 %i.im
  br label %.thread283

.thread283:                                       ; preds = %bb.aq, %bb.ap, %bb.k, %bb.p, %bb.s, %bb.d, %bb.bu, %bb.bs, %bb.bt
  %.3214 = phi i32 [ %spec.select275, %bb.bu ], [ -541478725, %bb.bt ], [ %.7299, %bb.bs ], [ %i.bz, %bb.p ], [ %i.cf, %bb.s ], [ -11, %bb.d ], [ %i.bi, %bb.k ], [ %i.eq, %bb.ap ], [ %i.fe, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.3214
}

declare i64 @av_compare_mod(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_packet_list_put(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_reduce_index(ptr noundef, i32 noundef) local_unnamed_addr #3

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
  %3 = fdiv nsz double %i.ba, 1.201200e+04        ; 3 uses
  %i.bh = tail call i64 @llvm.llrint.i64.f64(double %3)
  %i.bi = sitofp nsz i64 %i.bh to double
  %i.bj = fadd nsz double %3, 5.000000e-01
  %i.bk = tail call i64 @llvm.llrint.i64.f64(double %i.bj)
  %i.bl = sitofp nsz i64 %i.bk to double
  %i.bm = insertelement <2 x double> poison, double %3, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bl, i64 1
  %i.bq = fsub nsz <2 x double> %i.bn, %i.bp      ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = fadd nsz double %i.br, %i.bc
  store double %i.bs, ptr %i.bb, align 8, !tbaa !146
  %i.bt = fadd nsz <2 x double> %i.bq, <double -0.000000e+00, double 5.000000e-01> ; 3 uses
  %i.bu = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bg, i64 1
  %i.bw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bt, <2 x double> %i.bv) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  store double %i.bx, ptr %i.ag, align 8, !tbaa !146
  %i.by = extractelement <2 x double> %i.bt, i64 1
  %i.bz = fadd nsz double %i.by, %i.be
  store double %i.bz, ptr %i.bd, align 8, !tbaa !146
  %i.ca = extractelement <2 x double> %i.bw, i64 1
  store double %i.ca, ptr %i.bf, align 8, !tbaa !146
  br label %.loopexit101

.loopexit101:                                     ; preds = %get_std_framerate.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 399
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !250

bb.n:                                             ; preds = %bb.e
  %i.cb = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.cb, ptr %.phi.trans.insert, align 8, !tbaa !144
  %i.cc = add nsw i64 %i.ae, %i.i
  store i64 %i.cc, ptr %i.ad, align 8, !tbaa !143
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.n
  %i.cd = phi i32 [ %i.cb, %bb.n ], [ %.pre, %bb.e ] ; 3 uses
  %i.ce = srem i32 %i.cd, 10
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.cg = sitofp nsz i32 %i.cd to double
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 6384
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 9576
  %i.cj = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.r
  %indvars.iv109 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next110, %bb.r ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv109 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !146 ; 2 uses
  %i.cn = fcmp nsz olt double %i.cm, 1.000000e+10
  br i1 %i.cn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv109
  %i.cp = load double, ptr %i.co, align 8, !tbaa !146
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv109
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !146
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv109 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !146
  %i.cu = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.cp, i64 1
  %i.cw = fdiv nsz <2 x double> %i.cv, %i.ck      ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cm, i64 1
  %i.cz = fdiv nsz <2 x double> %i.cy, %i.ck
  %i.da = fneg nsz <2 x double> %i.cw
  %i.db = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.cw, <2 x double> %i.cz)
  %i.dc = fcmp nsz ogt <2 x double> %i.db, splat (double 4.000000e-02) ; 2 uses
  %i.dd = extractelement <2 x i1> %i.dc, i64 0
  %i.de = extractelement <2 x i1> %i.dc, i64 1
  %or.cond3 = select i1 %i.de, i1 %i.dd, i1 false
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double 2.000000e+10, ptr %i.cl, align 8, !tbaa !146
  store double 2.000000e+10, ptr %i.cs, align 8, !tbaa !146
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next110, 399
  br i1 %exitcond112.not, label %.loopexit, label %bb.o, !llvm.loop !251

.loopexit:                                        ; preds = %bb.r, %._crit_edge
  %i.df = icmp sgt i32 %i.cd, 3
  %i.dg = icmp slt i64 %i.d, 9222809086901354496
  %i.dh = xor i1 %i.k, %i.dg
  %or.cond = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond, label %bb.s, label %.thread

bb.s:                                             ; preds = %.loopexit
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !147
  %i.dk = tail call i64 @av_gcd(i64 noundef %i.dj, i64 noundef %i.i) #18
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !147
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

end_hunk_0
