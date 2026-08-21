Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_load_balancing?download=true
inline.NumInlined: 504
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx16PmeLoadBalancing4Impl14increaseCutoffEv:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !397
  %i.aq = fmul float %i.ab, %i.ap                 ; 3 uses
  store float %i.aq, ptr %1, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !398 ; 3 uses
  %i.at = fcmp olt float %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.as, ptr %1, align 8, !tbaa !174
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = phi float [ %i.as, %bb.g ], [ %i.aq, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !399
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load <4 x float>, ptr %i.av, align 8, !tbaa !156 ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bd = fadd <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bh = fadd <2 x float> %i.bf, %i.bg           ; 2 uses
  %i.bi = fcmp olt <2 x float> %i.bd, %i.bh
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bh, <2 x float> %i.bd
  store <2 x float> %i.bj, ptr %i.ay, align 4, !tbaa !156
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.ab, ptr %i.bk, align 4, !tbaa !186
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bm = load i32, ptr %i.k, align 8, !tbaa !162 ; 2 uses
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = fmul float %i.ab, %i.bn
  %i.bp = load float, ptr %i.n, align 8, !tbaa !156 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.br = load float, ptr %i.bq, align 4, !tbaa !156 ; 2 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !156 ; 2 uses
  %i.bw = call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bt)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bw)
  %i.bx = fdiv float %i.bo, %sqrt.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162 ; 2 uses
  %i.ca = sitofp i32 %i.bz to float
  %i.cb = fmul float %i.ab, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !156 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !156 ; 2 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !156 ; 2 uses
  %i.ck = call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ch)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.ck)
  %i.cl = fdiv float %i.cb, %sqrt.i.i.1
  %i.cm = fmul float %i.bx, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !162 ; 2 uses
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fmul float %i.ab, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !156 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !156 ; 2 uses
  %i.cv = fmul float %i.cu, %i.cu
  %i.cw = call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !156 ; 2 uses
  %i.cz = call noundef float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.cw)
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.cz)
  %i.da = fdiv float %i.cq, %sqrt.i.i.2
  %i.db = fmul float %i.cm, %i.da
  store float %i.db, ptr %i.bl, align 4, !tbaa !400
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !172 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load float, ptr %i.dc, align 8, !tbaa !174 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load <2 x float>, ptr %i.dd, align 8, !tbaa !156 ; 2 uses
  %i.dh = insertelement <2 x float> %i.dg, float %i.de, i64 1
  %i.di = insertelement <2 x float> %i.dg, float %i.de, i64 0
  %i.dj = fmul <2 x float> %i.dh, %i.di
  %i.dk = fdiv <2 x float> %i.dj, %i.bb
  store <2 x float> %i.dk, ptr %i.df, align 8, !tbaa !156
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.dl, align 8, !tbaa !401
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !402
  %i.dn = load ptr, ptr @debug, align 8, !tbaa !403 ; 2 uses
  %.not23 = icmp eq ptr %i.dn, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = fpext float %i.au to double
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dn, ptr noundef nonnull @.str.11, i32 noundef %i.bm, i32 noundef %i.bz, i32 noundef %i.co, double noundef %i.do) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !385 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !384
  %.not.i = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !386
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !385
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !385
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !172 ; 4 uses
  %i.dx = ptrtoint ptr %i.dr to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 6 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775744
  br i1 %i.ea, label %bb.m, label %_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.eb = ashr exact i64 %i.dz, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ec, i64 144115188075855871)
  %i.ef = select i1 %i.ed, i64 144115188075855871, i64 %i.ee ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eg = shl nuw nsw i64 %i.ef, 6
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #24 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !386
  %i.ej = icmp sgt i64 %i.dz, 0
  br i1 %i.ej, label %bb.n, label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr align 8 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIN3gmx11pme_setup_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %.not.i17.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.dz) #23
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.eh, ptr %i.e, align 8, !tbaa !172
  store ptr %i.ek, ptr %i.dq, align 8, !tbaa !385
  %i.el = getelementptr inbounds nuw [64 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.el, ptr %i.ds, align 8, !tbaa !384
  br label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.k
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !405  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !385
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !172  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 6                   ; 3 uses
  %i.l = add nsw i32 %i.b, 1
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  store i32 %i.b, ptr %i.c, align 4, !tbaa !406
  br label %.critedge4

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %indvars.iv18 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next19, %.critedge2 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %.critedge2 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %indvars.iv18 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !401
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = load double, ptr %i.y, align 8, !tbaa !402
  %i.aa = load double, ptr %i.s, align 8, !tbaa !402
  %i.ab = fmul double %i.aa, f0x3FF1EB8520000000
  %i.ac = fcmp ogt double %i.z, %i.ab
  br i1 %i.ac, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = icmp sgt i64 %i.k, %indvars.iv.next
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  br i1 %i.ad, label %bb.b, label %.critedge, !llvm.loop !407

.critedge:                                        ; preds = %bb.c, %.critedge2
  %storemerge.lcssa.ph.in = phi i64 [ %indvars.iv18, %bb.c ], [ %indvars.iv, %.critedge2 ] ; 2 uses
  %storemerge.lcssa.ph = trunc i64 %storemerge.lcssa.ph.in to i32 ; 2 uses
  store i32 %storemerge.lcssa.ph, ptr %i.c, align 4, !tbaa !406
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
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !401
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %.critedge4

bb.d:                                             ; preds = %.lr.ph16
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1 ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next24 to i32
  store i32 %i.al, ptr %i.c, align 4, !tbaa !406
  %i.am = icmp sgt i64 %indvars.iv.next24, %i.ag
  br i1 %i.am, label %.lr.ph16, label %.critedge4, !llvm.loop !408

.critedge4:                                       ; preds = %.lr.ph16, %bb.d, %.critedge.thread, %.critedge
  %i.an = trunc i64 %i.k to i32                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !409
  %i.ap = shl i64 %i.j, 26
  %sext = add i64 %i.ap, -4294967296
  %i.aq = ashr exact i64 %sext, 26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !401
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge4
  %i.av = add nsw i32 %i.an, -1                   ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !402
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !410
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load double, ptr %i.be, align 8, !tbaa !402
  %i.bg = fmul double %i.bf, f0x3FF1EB8520000000
  %i.bh = fcmp ogt double %i.az, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.av, ptr %i.ao, align 8, !tbaa !409
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.critedge4
  %i.bi = phi i32 [ %i.av, %bb.f ], [ %i.an, %bb.e ], [ %i.an, %.critedge4 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.bj, align 8, !tbaa !411
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16PmeLoadBalancing4Impl7balanceEP8_IO_FILEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEdP19interaction_const_tPNS_18nonbonded_verlet_tEPP9gmx_pme_tl(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr %3, ptr %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef writeonly captures(none) %8, i64 noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %11 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  store double %5, ptr %i.b, align 8, !tbaa !388
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !291
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1, ptr noundef nonnull %i.b)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !412
  %i.l = sitofp i32 %i.k to double
  %i.m = load double, ptr %i.b, align 8, !tbaa !388
  %i.n = fdiv double %i.m, %i.l                   ; 2 uses
  store double %i.n, ptr %i.b, align 8, !tbaa !388
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi double [ %i.n, %bb.c ], [ %5, %bb.b ], [ %5, %bb.a ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 20 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !173
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !172
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.s ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !401  ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !401
  %i.y = and i32 %i.w, 1
  %.not36.not = icmp eq i32 %i.y, 0
  br i1 %.not36.not, label %bb.cd, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !413, !nonnull !13, !align !288
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 10 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !411
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !171
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = icmp eq i32 %i.ac, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.16, i64 noundef %9)
  %i.ah = load ptr, ptr %10, align 8, !tbaa !284
  invoke fastcc void @_ZN3gmxL9printGridEP8_IO_FILERKNS_8MDLoggerEPKcS6_RKNS_11pme_setup_tEd(ptr noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aa, ptr noundef %i.ah, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(64) %i.u, double noundef %i.o)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !401 ; 2 uses
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
  store double %i.o, ptr %i.al, align 8, !tbaa !402
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
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !402 ; 4 uses
  %i.ar = fcmp olt double %i.ao, %i.aq
  %or.cond.i = and i1 %i.ag, %i.ar                ; 2 uses
  br i1 %or.cond.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @debug, align 8, !tbaa !403 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 20
end_hunk_0
