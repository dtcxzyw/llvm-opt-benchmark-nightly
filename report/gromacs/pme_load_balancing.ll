Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_load_balancing?download=true
inline.NumInlined: 504
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx16PmeLoadBalancing4Impl14increaseCutoffEv:bb.a
  %.not22 = and i1 %i.ai, %i.an                   ; 2 uses
  br i1 %.not22, label %bb.f, label %bb.d, !llvm.loop !414

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !416
  %i.aq = fmul float %i.ab, %i.ap                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !417 ; 2 uses
  %i.at = fcmp olt float %i.aq, %i.as
  %spec.store.select = select i1 %i.at, float %i.as, float %i.aq ; 3 uses
  store float %spec.store.select, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load float, ptr %i.av, align 8, !tbaa !418
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load <4 x float>, ptr %i.au, align 8, !tbaa !151 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bc = fadd <2 x float> %i.ba, %i.bb           ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bg = fadd <2 x float> %i.be, %i.bf           ; 2 uses
  %i.bh = fcmp olt <2 x float> %i.bc, %i.bg
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> %i.bc
  store <2 x float> %i.bi, ptr %i.ax, align 4, !tbaa !151
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.ab, ptr %i.bj, align 4, !tbaa !169
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bl = load i32, ptr %i.k, align 8, !tbaa !152 ; 2 uses
  %i.bm = sitofp i32 %i.bl to float
  %i.bn = fmul float %i.ab, %i.bm
  %i.bo = load float, ptr %i.n, align 8, !tbaa !151 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !151 ; 2 uses
  %i.br = fmul float %i.bq, %i.bq
  %i.bs = call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !151 ; 2 uses
  %i.bv = call noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bs)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bv)
  %i.bw = fdiv float %i.bn, %sqrt.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !152 ; 2 uses
  %i.bz = sitofp i32 %i.by to float
  %i.ca = fmul float %i.ab, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !151 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !151 ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !151 ; 2 uses
  %i.cj = call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cg)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.cj)
  %i.ck = fdiv float %i.ca, %sqrt.i.i.1
  %i.cl = fmul float %i.bw, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !152 ; 2 uses
  %i.co = sitofp i32 %i.cn to float
  %i.cp = fmul float %i.ab, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !151 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !151 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ct
  %i.cv = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !151 ; 2 uses
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cv)
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.cy)
  %i.cz = fdiv float %i.cp, %sqrt.i.i.2
  %i.da = fmul float %i.cl, %i.cz
  store float %i.da, ptr %i.bk, align 4, !tbaa !308
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !157 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load float, ptr %i.db, align 8, !tbaa !161 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = load <2 x float>, ptr %i.dc, align 8, !tbaa !151 ; 2 uses
  %i.dg = insertelement <2 x float> %i.df, float %i.dd, i64 1
  %i.dh = insertelement <2 x float> %i.df, float %i.dd, i64 0
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = fdiv <2 x float> %i.di, %i.ba
  store <2 x float> %i.dj, ptr %i.de, align 8, !tbaa !151
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.dk, align 8, !tbaa !309
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double 0.000000e+00, ptr %i.dl, align 8, !tbaa !310
  %i.dm = load ptr, ptr @debug, align 8, !tbaa !312 ; 2 uses
  %.not23 = icmp eq ptr %i.dm, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dn = fpext float %spec.store.select to double
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dm, ptr noundef nonnull @.str.11, i32 noundef %i.bl, i32 noundef %i.by, i32 noundef %i.cn, double noundef %i.dn) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !303 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !302
  %.not.i = icmp eq ptr %i.dq, %i.ds
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !306
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !303
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  store ptr %i.du, ptr %i.dp, align 8, !tbaa !303
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !157 ; 4 uses
  %i.dw = ptrtoint ptr %i.dq to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775744
  br i1 %i.dz, label %bb.k, label %_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ea = ashr exact i64 %i.dy, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 144115188075855871)
  %i.ee = select i1 %i.ec, i64 144115188075855871, i64 %i.ed ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 6
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #24 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eh, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !306
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.l, label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %.not.i17.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ek = load ptr, ptr %i.dr, align 8, !tbaa !302
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.em) #23
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.eg, ptr %i.e, align 8, !tbaa !157
  store ptr %i.ej, ptr %i.dp, align 8, !tbaa !303
  %i.en = getelementptr inbounds nuw [64 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.en, ptr %i.dr, align 8, !tbaa !302
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.not22
}

declare i64 @_Z16getNumPmeDomainsPK12gmx_domdec_t(ptr noundef) local_unnamed_addr #3

declare noundef float @_Z11calcFftGridP8_IO_FILEPA3_KffiPiS4_S4_(ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z18minimalPmeGridSizei(i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z26gmx_pme_check_restrictionsiiiiiiibbb(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx16PmeLoadBalancing4Impl14switchToStage1Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !303
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !157  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 6                   ; 3 uses
  %i.l = add nsw i32 %i.b, 1
  %i.m = sext i32 %i.l to i64
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  store i32 %i.b, ptr %i.c, align 4, !tbaa !314
  br label %.critedge4

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = sext i32 %i.b to i64                     ; 2 uses
  %1 = add nsw i64 %i.t, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %indvars.iv18 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next19, %.critedge2 ] ; 3 uses
  %indvars.iv = phi i64 [ %1, %.lr.ph ], [ %indvars.iv.next, %.critedge2 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %indvars.iv18 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !309
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = load double, ptr %i.y, align 8, !tbaa !310
  %i.aa = load double, ptr %i.s, align 8, !tbaa !310
  %i.ab = fmul double %i.aa, f0x3FF1EB8520000000
  %i.ac = fcmp ogt double %i.z, %i.ab
  br i1 %i.ac, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = icmp sgt i64 %i.k, %indvars.iv.next
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  br i1 %i.ad, label %bb.b, label %.critedge, !llvm.loop !419

.critedge:                                        ; preds = %bb.c, %.critedge2
  %storemerge.lcssa.ph.in = phi i64 [ %indvars.iv18, %bb.c ], [ %indvars.iv, %.critedge2 ] ; 2 uses
  %storemerge.lcssa.ph = trunc i64 %storemerge.lcssa.ph.in to i32 ; 2 uses
  store i32 %storemerge.lcssa.ph, ptr %i.c, align 4, !tbaa !314
  %i.ae = icmp slt i32 %i.b, %storemerge.lcssa.ph
  br i1 %i.ae, label %.lr.ph16.preheader, label %.critedge4

.lr.ph16.preheader:                               ; preds = %.critedge
  %sext28 = shl i64 %storemerge.lcssa.ph.in, 32
  %i.af = ashr exact i64 %sext28, 32
  %i.ag = sext i32 %i.b to i64
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %bb.d
  %indvars.iv23 = phi i64 [ %i.af, %.lr.ph16.preheader ], [ %indvars.iv.next24, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %indvars.iv23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !309
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %.critedge4

bb.d:                                             ; preds = %.lr.ph16
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1 ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next24 to i32
  store i32 %i.al, ptr %i.c, align 4, !tbaa !314
  %i.am = icmp sgt i64 %indvars.iv.next24, %i.ag
  br i1 %i.am, label %.lr.ph16, label %.critedge4, !llvm.loop !420

.critedge4:                                       ; preds = %.lr.ph16, %bb.d, %.critedge.thread, %.critedge
  %i.an = trunc i64 %i.k to i32                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !315
  %i.ap = shl i64 %i.j, 26
  %sext = add i64 %i.ap, -4294967296
  %i.aq = ashr exact i64 %sext, 26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !309
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge4
  %i.av = add nsw i32 %i.an, -1                   ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !310
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !316
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load double, ptr %i.be, align 8, !tbaa !310
  %i.bg = fmul double %i.bf, f0x3FF1EB8520000000
  %i.bh = fcmp ogt double %i.az, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.av, ptr %i.ao, align 8, !tbaa !315
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.critedge4
  %i.bi = phi i32 [ %i.av, %bb.f ], [ %i.an, %bb.e ], [ %i.an, %.critedge4 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.bj, align 8, !tbaa !317
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16PmeLoadBalancing4Impl7balanceEP8_IO_FILEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEdP19interaction_const_tPNS_18nonbonded_verlet_tEPP9gmx_pme_tl(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr %3, ptr %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef writeonly captures(none) %8, i64 noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %11 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  store double %5, ptr %i.b, align 8, !tbaa !305
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !301
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1, ptr noundef nonnull %i.b)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !423
  %i.l = sitofp i32 %i.k to double
  %i.m = load double, ptr %i.b, align 8, !tbaa !305
  %i.n = fdiv double %i.m, %i.l                   ; 2 uses
  store double %i.n, ptr %i.b, align 8, !tbaa !305
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi double [ %i.n, %bb.c ], [ %5, %bb.b ], [ %5, %bb.a ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 20 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !158
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !157
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.s ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !309  ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !309
  %i.y = and i32 %i.w, 1
  %.not36.not = icmp eq i32 %i.y, 0
  br i1 %.not36.not, label %bb.cd, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !318, !nonnull !14, !align !206
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 10 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !317
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !156
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = icmp eq i32 %i.ac, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.16, i64 noundef %9)
  %i.ah = load ptr, ptr %10, align 8, !tbaa !202
  invoke fastcc void @_ZN3gmxL9printGridEP8_IO_FILERKNS_8MDLoggerEPKcS6_RKNS_11pme_setup_tEd(ptr noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aa, ptr noundef %i.ah, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(64) %i.u, double noundef %i.o)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !309 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL13processCyclesEP8_IO_FILERKNS_8MDLoggerEdlbPNS_11pme_setup_tEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 749) #22
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp eq i32 %i.ai, 2
  br i1 %i.ak, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store double %i.o, ptr %i.al, align 8, !tbaa !310
  br label %bb.p

bb.j:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.ao = fmul double %i.o, f0x3FF051EB80000000
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !310 ; 4 uses
  %i.ar = fcmp olt double %i.ao, %i.aq
  %or.cond.i = and i1 %i.ag, %i.ar                ; 2 uses
  br i1 %or.cond.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @debug, align 8, !tbaa !312 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !152
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 20
end_hunk_0
