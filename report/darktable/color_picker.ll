Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/color_picker?download=true
inline.NumInlined: 71
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dt_color_picker_helper:bb.a
  br i1 %i.rl, label %.lr.ph.i206, label %._crit_edge.i181.split

bb.aj:                                            ; preds = %._crit_edge.i181.split
  %i.rm = load float, ptr %i.a, align 16, !tbaa !50
  %i.rn = uitofp reassoc nsz arcp contract afn i32 %.pre.i182 to float
  %i.ro = fdiv reassoc nsz arcp contract afn float %i.rm, %i.rn
  br label %_color_picker_work_1ch.exit184

_color_picker_work_1ch.exit184:                   ; preds = %._crit_edge.thread.i175, %._crit_edge.i181.split, %bb.aj
  %i.rp = phi reassoc nsz arcp contract afn float [ %i.ro, %bb.aj ], [ 0.000000e+00, %._crit_edge.i181.split ], [ 0.000000e+00, %._crit_edge.thread.i175 ]
  store float %i.rp, ptr %5, align 4, !tbaa !50
  %i.rq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.rr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.rt = load <2 x i32>, ptr %i.rq, align 4, !tbaa !49 ; 2 uses
  %i.ru = icmp eq <2 x i32> %i.rt, zeroinitializer
  %i.rv = load <2 x float>, ptr %i.rr, align 4
  %i.rw = uitofp <2 x i32> %i.rt to <2 x float>
  %i.rx = fdiv reassoc nsz arcp contract afn <2 x float> %i.rv, %i.rw
  %i.ry = select <2 x i1> %i.ru, <2 x float> zeroinitializer, <2 x float> %i.rx
  store <2 x float> %i.ry, ptr %i.rs, align 4, !tbaa !50
  %i.rz = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !49 ; 2 uses
  %.not.3.i178 = icmp eq i32 %i.sa, 0
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.sc = load float, ptr %i.sb, align 4
  %i.sd = uitofp reassoc nsz arcp contract afn i32 %i.sa to float
  %i.se = fdiv reassoc nsz arcp contract afn float %i.sc, %i.sd
  %i.sf = select reassoc nsz arcp contract afn i1 %.not.3.i178, float 0.000000e+00, float %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.sf, ptr %i.sg, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae, %dt_get_perf_times.exit
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 558, ptr noundef nonnull @__FUNCTION__.dt_color_picker_helper) #14
  unreachable

bb.al:                                            ; preds = %bb.ad, %_color_picker_work_1ch.exit184, %_color_picker_work_1ch.exit
  %i.sh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !145
  %i.si = and i32 %i.sh, 16
  %.not106.not = icmp eq i32 %i.si, 0
  br i1 %.not106.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.sj = load i32, ptr %0, align 16, !tbaa !150
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !162
  %i.sm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sn = load <2 x i32>, ptr %i.sm, align 4, !tbaa !49
  %i.so = load <2 x i32>, ptr %3, align 4, !tbaa !49
  %i.sp = sub nsw <2 x i32> %i.sn, %i.so          ; 2 uses
  %shift = shufflevector <2 x i32> %i.sp, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %i.sp, %shift
  %i.sq = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.sr = sext i32 %i.sq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.ss = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.st = load i64, ptr %10, align 8, !tbaa !147
  %i.su = add nsw i64 %i.st, -1290608000
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.sx = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %9) #14 ; 0 uses
  %i.sy = load <2 x i64>, ptr %9, align 16, !tbaa !149 ; 2 uses
  %i.sz = shufflevector <2 x i64> %i.sy, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.ta = insertelement <2 x i64> %i.sz, i64 %i.su, i64 0
  %i.tb = sitofp <2 x i64> %i.ta to <2 x double>
  %i.tc = insertelement <2 x i64> %i.sy, i64 %i.sw, i64 0
  %i.td = sitofp <2 x i64> %i.tc to <2 x double>
  %i.te = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.td, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.tf = fadd reassoc nsz arcp contract afn <2 x double> %i.te, %i.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.tg = fsub reassoc nsz arcp contract afn <2 x double> %i.tf, %i.y ; 2 uses
  %i.th = extractelement <2 x double> %i.tg, i64 0
  %i.ti = extractelement <2 x double> %i.tg, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef %i.sj, i32 noundef %i.sl, i32 noundef %6, i32 noundef %7, i64 noundef %i.sr, i32 noundef %4, double noundef %i.th, double noundef %i.ti) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_work_4ch(ptr noundef %0, i32 %.8.val, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  %i.j = load i32, ptr %1, align 4, !tbaa !49     ; 2 uses
  %i.k = sub nsw i32 %i.i, %i.j                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = shl nsw i32 %.8.val, 2
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i32 %i.j, 2
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.r = icmp ult i32 %i.g, %i.e
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = sext i32 %i.g to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.t = load <4 x float>, ptr %i.a, align 16, !tbaa !50
  %i.u = load <4 x float>, ptr %i.b, align 16, !tbaa !50
  %i.v = load <4 x float>, ptr %i.c, align 16, !tbaa !50
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.x = phi <8 x float> [ %i.w, %.preheader.loopexit ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ]
  %i.y = phi <4 x float> [ %i.t, %.preheader.loopexit ], [ zeroinitializer, %bb.a ]
  %i.z = sub nsw i32 %i.e, %i.g
  %i.aa = mul nsw i32 %i.k, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.ab to float
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fdiv reassoc nsz arcp contract afn <4 x float> %i.y, %i.af
  store <4 x float> %i.ag, ptr %2, align 4, !tbaa !50
  store <8 x float> %i.x, ptr %i.ad, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0291 = phi i64 [ %i.ai, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.ah = mul i64 %.0291, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  call void %4(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %gep, i64 noundef %i.m, ptr noundef %3) #14, !callees !168
  %i.ai = add nuw i64 %.0291, 1                   ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !49
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph, label %.preheader.loopexit
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_nomat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load i32, ptr %4, align 64, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.b, ptr noundef nonnull %i.c, i32 noundef 1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.5, i32 noundef 63) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 516
  %i.k = load i32, ptr %i.j, align 4, !tbaa !172
  %i.l = tail call ptr @cmsCreateTransform(ptr noundef %i.f, i32 noundef 4456604, ptr noundef %i.i, i32 noundef 4849820, i32 noundef %i.k, i32 noundef 0) #14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49   ; 2 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !49
  %i.t = icmp ult i32 %i.p, %i.n
  br i1 %i.t, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.a
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge, %bb.a
  %i.y = phi <8 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.au, %._crit_edge ]
  %i.z = phi <4 x float> [ zeroinitializer, %bb.a ], [ %6, %._crit_edge ]
  %i.aa = sub nsw i32 %i.r, %i.s
  %i.ab = sub nsw i32 %i.n, %i.p
  %i.ac = mul nsw i32 %i.aa, %i.ab
  %i.ad = sext i32 %i.ac to i64
  call void @cmsDeleteTransform(ptr noundef %i.l) #14
  %i.ae = uitofp reassoc nsz arcp contract afn i64 %i.ad to float
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.z, %i.ah
  store <4 x float> %i.ai, ptr %3, align 4, !tbaa !50
  store <8 x float> %i.y, ptr %i.af, align 4, !tbaa !50
  ret void

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge
  %i.aj = phi i32 [ %i.n, %.lr.ph99 ], [ %i.as, %._crit_edge ]
  %i.ak = phi i32 [ %i.r, %.lr.ph99 ], [ %i.at, %._crit_edge ] ; 2 uses
  %.03297 = phi i64 [ %i.u, %.lr.ph99 ], [ %i.aw, %._crit_edge ] ; 2 uses
  %5 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph99 ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.al = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph99 ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.am = phi <4 x float> [ zeroinitializer, %.lr.ph99 ], [ %6, %._crit_edge ]
  %i.an = phi <4 x float> [ zeroinitializer, %.lr.ph99 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.ao = load i32, ptr %2, align 4, !tbaa !49    ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.ak
  %i.aq = shufflevector <4 x float> %5, <4 x float> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ar = sext i32 %i.ao to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.m, align 4, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.as = phi i32 [ %i.aj, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.at = phi i32 [ %i.ak, %bb.b ], [ %i.ft, %._crit_edge.loopexit ]
  %i.au = phi <8 x float> [ %i.aq, %bb.b ], [ %i.fr, %._crit_edge.loopexit ] ; 3 uses
  %6 = phi <4 x float> [ %i.am, %bb.b ], [ %i.fl, %._crit_edge.loopexit ] ; 2 uses
  %i.av = phi <4 x float> [ %i.an, %bb.b ], [ %i.fl, %._crit_edge.loopexit ]
  %i.aw = add i64 %.03297, 1                      ; 2 uses
  %i.ax = sext i32 %i.as to i64
  %i.ay = icmp ult i64 %i.aw, %i.ax
  %i.az = shufflevector <8 x float> %i.au, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = shufflevector <8 x float> %i.au, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ay, label %bb.b, label %._crit_edge100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03168 = phi i64 [ %i.fs, %.lr.ph ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
  %i.bb = phi <4 x float> [ %i.fw, %.lr.ph ], [ %5, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi <4 x float> [ %i.fx, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %i.bd = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.an, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.be = load i32, ptr %i.v, align 4, !tbaa !91
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %.03297, %i.bf
  %i.bh = add i64 %i.bg, %.03168
  %.idx = shl i64 %i.bh, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  call void @cmsDoTransform(ptr noundef %i.l, ptr noundef %i.bi, ptr noundef nonnull %i.a, i32 noundef 1) #14
  %i.bj = load float, ptr %i.w, align 4, !tbaa !50
  %i.bk = load float, ptr %i.a, align 16, !tbaa !50
  %i.bl = load float, ptr %i.x, align 8, !tbaa !50
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bj, 2.000000e-03
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, 8.620690e-03
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, f0x3E0D3DCB ; 7 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bl, 5.000000e-03
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bo, %i.bm ; 5 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bq, f0x3E53DCB1
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bq, %i.bq
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bq, f0x3E038026
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, f0xBC911AA6
  %i.bw = select reassoc nsz arcp contract afn i1 %i.br, float %i.bt, float %i.bv ; 3 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ogt float %i.bo, f0x3E53DCB1
  %i.by = fmul reassoc nsz arcp contract afn float %i.bo, %i.bo
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.bo
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bo, f0x3E038026
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, f0xBC911AA6
  %i.cc = select reassoc nsz arcp contract afn i1 %i.bx, float %i.bz, float %i.cb ; 3 uses
  %i.cd = fsub reassoc nsz arcp contract afn float %i.bo, %i.bp ; 5 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt float %i.cd, f0x3E53DCB1
  %i.cf = fmul reassoc nsz arcp contract afn float %i.cd, %i.cd
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.cd
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cd, f0x3E038026
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, f0xBC911AA6
  %i.cj = select reassoc nsz arcp contract afn i1 %i.ce, float %i.cg, float %i.ci ; 3 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.bw, f0x3F6BDEB5
  %i.cl = fmul reassoc nsz arcp contract afn float %i.cc, 2.303930e-02
  %i.cm = fsub reassoc nsz arcp contract afn float %i.ck, %i.cl
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cj, f0x3D556AA4
  %i.co = fadd reassoc nsz arcp contract afn float %i.cm, %i.cn ; 2 uses
  %.reass53 = fmul reassoc nsz arcp contract afn float %i.bw, f0xBC937A4A
  %.reass52 = fmul reassoc nsz arcp contract afn float %i.cc, f0x3F2AA3C6
  %i.cp = fadd reassoc nsz arcp contract afn float %.reass53, %.reass52
  %.reass = fmul reassoc nsz arcp contract afn float %i.cj, f0x3C3B638A
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %.reass
  %i.cr = fmul reassoc nsz arcp contract afn float %i.bw, f0x3C4247BE
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cc, 2.048300e-02
  %i.ct = fsub reassoc nsz arcp contract afn float %i.cr, %i.cs
  %i.cu = fmul reassoc nsz arcp contract afn float %i.cj, f0x3F8C6BE4
  %i.cv = fadd reassoc nsz arcp contract afn float %i.ct, %i.cu ; 4 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.co, 1.150000e+00
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cv, f0x3E199998
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cw, %i.cx ; 3 uses
  %i.cz = fmul reassoc nsz arcp contract afn float %i.co, f0x3EAE147A
  %i.da = fadd reassoc nsz arcp contract afn float %i.cq, %i.cz ; 3 uses
  %.reass56 = fmul reassoc nsz arcp contract afn float %i.cy, f0x382DF9B4
  %.reass54 = fmul reassoc nsz arcp contract afn float %i.da, f0x387344EC
  %.reass55 = fmul reassoc nsz arcp contract afn float %i.cv, 1.464800e-06
  %i.db = fadd reassoc nsz arcp contract afn float %.reass56, %.reass55
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %.reass54
  %.reass59 = fmul reassoc nsz arcp contract afn float %i.cy, -2.015100e-05
  %.reass57 = fmul reassoc nsz arcp contract afn float %i.da, f0x38EB0462
  %.reass58 = fmul reassoc nsz arcp contract afn float %i.cv, 5.310080e-06
  %i.dd = fadd reassoc nsz arcp contract afn float %.reass59, %.reass58
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %.reass57
  %.reass62 = fmul reassoc nsz arcp contract afn float %i.cy, -1.660080e-06
  %.reass60 = fmul reassoc nsz arcp contract afn float %i.da, 2.648000e-05
  %.reass61 = fmul reassoc nsz arcp contract afn float %i.cv, f0x388C30BE
  %i.df = fadd reassoc nsz arcp contract afn float %.reass62, %.reass61
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %.reass60
  %i.dh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float 0.000000e+00)
  %i.di = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dh, float f0x3E232000) ; 2 uses
  %i.dj = fmul reassoc nnan nsz arcp contract afn float %i.di, f0x4196D000
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, f0x3F560000
  %i.dl = fmul reassoc nnan nsz arcp contract afn float %i.di, 1.868750e+01
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, 1.000000e+00
  %i.dn = fdiv reassoc nsz arcp contract afn float %i.dk, %i.dm
  %i.do = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dn, float f0x430608CD) ; 3 uses
  %i.dp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dp, float f0x3E232000) ; 2 uses
  %i.dr = fmul reassoc nnan nsz arcp contract afn float %i.dq, f0x4196D000
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, f0x3F560000
  %i.dt = fmul reassoc nnan nsz arcp contract afn float %i.dq, 1.868750e+01
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, 1.000000e+00
  %i.dv = fdiv reassoc nsz arcp contract afn float %i.ds, %i.du
  %i.dw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dv, float f0x430608CD) ; 3 uses
  %i.dx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dg, float 0.000000e+00)
  %i.dy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dx, float f0x3E232000) ; 2 uses
  %i.dz = fmul reassoc nnan nsz arcp contract afn float %i.dy, f0x4196D000
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, f0x3F560000
  %i.eb = fmul reassoc nnan nsz arcp contract afn float %i.dy, 1.868750e+01
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, 1.000000e+00
  %i.ed = fdiv reassoc nsz arcp contract afn float %i.ea, %i.ec
  %i.ee = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ed, float f0x430608CD) ; 3 uses
  %i.ef = fadd reassoc nsz arcp contract afn float %i.dw, %i.do
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, 5.000000e-01
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ee, 0.000000e+00
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eg, %i.eh ; 2 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.do, 3.524000e+00
  %i.ek = fmul reassoc nsz arcp contract afn float %i.dw, f0x40822279
  %i.el = fsub reassoc nsz arcp contract afn float %i.ej, %i.ek
  %i.em = fmul reassoc nsz arcp contract afn float %i.ee, 5.427080e-01
  %i.en = fadd reassoc nsz arcp contract afn float %i.el, %i.em ; 2 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.do, 1.990760e-01
  %i.ep = fmul reassoc nsz arcp contract afn float %i.dw, f0x3F8C63E9
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.eo
  %i.er = fmul reassoc nsz arcp contract afn float %i.ee, f0xBFA5DF3B
  %i.es = fadd reassoc nsz arcp contract afn float %i.eq, %i.er ; 2 uses
  %i.et = fmul reassoc nsz arcp contract afn float %i.ei, 4.400000e-01
  %i.eu = fmul reassoc nsz arcp contract afn float %i.ei, 5.600000e-01
  %i.ev = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eu
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.et, %i.ev
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, -1.629550e-11
  %i.ey = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ex, float 0.000000e+00)
  %i.ez = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.es, float %i.en)
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, f0x3E22F983 ; 3 uses
  %i.fb = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.en, float noundef %i.es) #15
  %i.fc = fcmp reassoc nsz arcp contract afn oge float %i.fa, 0.000000e+00
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fa, 1.000000e+00
  %i.fe = select reassoc nsz arcp contract afn i1 %i.fc, float %i.fa, float %i.fd ; 3 uses
  %i.ff = fcmp reassoc nsz arcp contract afn olt float %i.fe, 5.000000e-01
  %.v.i = select i1 %i.ff, float 5.000000e-01, float -5.000000e-01
  %i.fg = fadd reassoc nsz arcp contract afn float %.v.i, %i.fe
  %i.fh = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fi = insertelement <4 x float> %i.fh, float %i.fb, i64 1
  %i.fj = insertelement <4 x float> %i.fi, float %i.fe, i64 2
  %i.fk = insertelement <4 x float> %i.fj, float %i.fg, i64 3 ; 4 uses
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.fk, %i.bd ; 3 uses
  %i.fm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bb, %i.fk
  %i.fn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bc, %i.fk
  %i.fo = shufflevector <4 x i1> %i.fm, <4 x i1> %i.fn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fp = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fq = shufflevector <4 x float> %i.fk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fr = select <8 x i1> %i.fo, <8 x float> %i.fp, <8 x float> %i.fq ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.fs = add nuw i64 %.03168, 1                  ; 2 uses
  %i.ft = load i32, ptr %i.q, align 4, !tbaa !49  ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp ult i64 %i.fs, %i.fu
  %i.fw = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fx = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br i1 %i.fv, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_color_picker_jzczhz(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) #5 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %5, null
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 896 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 768
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 852
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 704
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 772
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 776
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 720
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 780
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 784
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 788
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 728
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 792
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 796
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 800
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 912 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 928 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 900
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 916
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 932
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %rgb_to_JzCzhz.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %rgb_to_JzCzhz.exit
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.jo, %rgb_to_JzCzhz.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020 ; 8 uses
  br i1 %.not.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !173
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.e, align 64, !tbaa !174 ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ag to float ; 9 uses
  %i.ai = add nsw i32 %i.af, -2
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float ; 6 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !176 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !50
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = load float, ptr %i.ad, align 4, !tbaa !50 ; 4 uses
  br i1 %i.am, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.an, 1.000000e+00
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ah ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.ap, 0.000000e+00
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.ap, %i.ah
  %..i.i.i.i = select reassoc nsz arcp contract afn i1 %i.ar, float %i.ap, float %i.ah
  %i.as = select reassoc nsz arcp contract afn i1 %i.aq, float %..i.i.i.i, float 0.000000e+00 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, %i.aj
  %i.au = select reassoc nsz arcp contract afn i1 %i.at, float %i.as, float %i.aj
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %i.ax = fsub reassoc nnan nsz arcp contract afn float %i.as, %i.aw
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ay ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !50 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !50
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ax
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ba
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bg = load float, ptr %i.f, align 4, !tbaa !50
  %i.bh = load float, ptr %i.b, align 64, !tbaa !50
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.an
  %i.bj = load float, ptr %i.g, align 8, !tbaa !50
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bi, float %i.bj)
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.bm = phi reassoc nsz arcp contract afn float [ %i.bl, %bb.g ], [ %i.bf, %bb.f ], [ %i.an, %bb.d ] ; 2 uses
  %i.bn = load ptr, ptr %i.h, align 16, !tbaa !176 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !50
  %i.bp = fcmp reassoc nsz arcp contract afn ult float %i.bo, 0.000000e+00
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !50 ; 4 uses
  br i1 %i.bp, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load float, ptr %i.j, align 16, !tbaa !50
  %i.bu = load float, ptr %i.i, align 4, !tbaa !50
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.br
  %i.bw = load float, ptr %i.k, align 4, !tbaa !50
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float %i.bw)
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bt
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bz = fmul reassoc nsz arcp contract afn float %i.br, %i.ah ; 3 uses
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 0.000000e+00
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.ah
  %..i.1.i.i.i = select reassoc nsz arcp contract afn i1 %i.cb, float %i.bz, float %i.ah
  %i.cc = select reassoc nsz arcp contract afn i1 %i.ca, float %..i.1.i.i.i, float 0.000000e+00 ; 3 uses
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, %i.aj
  %i.ce = select reassoc nsz arcp contract afn i1 %i.cd, float %i.cc, float %i.aj
  %i.cf = fptosi float %i.ce to i32               ; 2 uses
  %i.cg = sitofp reassoc nsz arcp contract afn i32 %i.cf to float
  %i.ch = fsub reassoc nnan nsz arcp contract afn float %i.cc, %i.cg
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.ci ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !50 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cj, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cm, %i.ck
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.ch
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.ck
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.cq = phi reassoc nsz arcp contract afn float [ %i.by, %bb.j ], [ %i.cp, %bb.k ], [ %i.br, %bb.h ] ; 2 uses
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !176 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !50
  %i.ct = fcmp reassoc nsz arcp contract afn ult float %i.cs, 0.000000e+00
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !50 ; 4 uses
  br i1 %i.ct, label %dt_ioppr_apply_trc.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = fcmp reassoc nsz arcp contract afn olt float %i.cv, 1.000000e+00
  br i1 %i.cw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load float, ptr %i.n, align 4, !tbaa !50
  %i.cy = load float, ptr %i.m, align 8, !tbaa !50
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cv
  %i.da = load float, ptr %i.o, align 32, !tbaa !50
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cz, float %i.da)
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cx
  br label %dt_ioppr_apply_trc.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cv, %i.ah ; 3 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 0.000000e+00
  %i.df = fcmp reassoc nsz arcp contract afn olt float %i.dd, %i.ah
  %..i.2.i.i.i = select reassoc nsz arcp contract afn i1 %i.df, float %i.dd, float %i.ah
  %i.dg = select reassoc nsz arcp contract afn i1 %i.de, float %..i.2.i.i.i, float 0.000000e+00 ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.dg, %i.aj
  %i.di = select reassoc nsz arcp contract afn i1 %i.dh, float %i.dg, float %i.aj
  %i.dj = fptosi float %i.di to i32               ; 2 uses
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %i.dj to float
  %i.dl = fsub reassoc nnan nsz arcp contract afn float %i.dg, %i.dk
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dm ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !50 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !50
  %i.dr = fsub reassoc nsz arcp contract afn float %i.dq, %i.do
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dl
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.do
  br label %dt_ioppr_apply_trc.exit.i.i

end_hunk_0
