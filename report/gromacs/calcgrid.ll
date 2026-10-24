Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calcgrid?download=true
inline.NumInlined: 63
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z11calcFftGridP8_IO_FILEPA3_KffiPiS4_S4_:bb.a
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i32, ptr %4, align 4, !tbaa !20
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %5, align 4, !tbaa !20
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %6, align 4, !tbaa !20
  %i.i = icmp slt i32 %i.h, 1
  %i.j = fcmp ole float %2, 0.000000e+00
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %.old1 = fcmp ugt float %2, 0.000000e+00
  br i1 %.old1, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(61) @.str, i8 noundef zeroext 2)
  %i.k = fpext float %2 to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 71, ptr noundef nonnull @.str.1, double noundef %i.k) #12
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  resume { ptr, i32 } %i.l

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.m = load float, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float 0.000000e+00)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !22 ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !22 ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.q)
  %i.u = tail call noundef float @sqrtf(float noundef %i.t) #11
  store float %i.u, ptr %i.b, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !22 ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float 0.000000e+00)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !22 ; 2 uses
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !22 ; 2 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ab)
  %i.af = tail call noundef float @sqrtf(float noundef %i.ae) #11
  store float %i.af, ptr %i.v, align 4, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !22 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float 0.000000e+00)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.al = load float, ptr %i.ak, align 4, !tbaa !22 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load float, ptr %i.an, align 4, !tbaa !22 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.am)
  %i.aq = tail call noundef float @sqrtf(float noundef %i.ap) #11
  store float %i.aq, ptr %i.ag, align 4, !tbaa !22
  %i.ar = load i32, ptr %4, align 4, !tbaa !20    ; 3 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !20
  %i.as = load i32, ptr %5, align 4, !tbaa !20    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !20
  %i.au = load i32, ptr %6, align 4, !tbaa !20    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %i.au, ptr %i.av, align 4, !tbaa !20
  %i.aw = icmp slt i32 %i.ar, 1
  %i.ax = icmp slt i32 %i.as, 1
  %or.cond100 = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond100, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp slt i32 %i.au, 1
  %i.az = icmp ne ptr %0, null
  %or.cond10 = and i1 %i.az, %i.ay
  br i1 %or.cond10, label %bb.k, label %.preheader

bb.j:                                             ; preds = %bb.h
  %.old9.not = icmp eq ptr %0, null
  br i1 %.old9.not, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ba = icmp sgt i32 %i.ar, 0
  %i.bb = select i1 %i.ba, ptr @.str.3, ptr @.str.4
  %i.bc = icmp sgt i32 %i.as, 0
  %i.bd = select i1 %i.bc, ptr @.str.3, ptr @.str.5
  %i.be = icmp sgt i32 %i.au, 0
  %i.bf = select i1 %i.be, ptr @.str.3, ptr @.str.6
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bf) #11 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.k, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader ] ; 4 uses
  %.099111 = phi float [ %.sroa.speculated, %.loopexit ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !22 ; 2 uses
  br i1 %i.bj, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bm = fdiv float %i.bl, %2
  %i.bn = fpext float %i.bm to double
  %i.bo = fadd double %i.bn, f0x3FEFF7CED916872B
  %i.bp = fptosi double %i.bo to i32
  %.sroa.speculated92 = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.bp) ; 25 uses
  %i.bq = icmp slt i32 %.sroa.speculated92, 45
  br i1 %i.bq, label %.preheader.preheader, label %.preheader107

.preheader.preheader:                             ; preds = %bb.m
  %.not84 = icmp sgt i32 %.sroa.speculated92, 42
  br i1 %.not84, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %.not84.1 = icmp sgt i32 %.sroa.speculated92, 40
  br i1 %.not84.1, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %.not84.2 = icmp sgt i32 %.sroa.speculated92, 36
  br i1 %.not84.2, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %.not84.3 = icmp sgt i32 %.sroa.speculated92, 32
  br i1 %.not84.3, label %.critedge, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %.not84.4 = icmp sgt i32 %.sroa.speculated92, 28
  br i1 %.not84.4, label %.critedge, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %.not84.5 = icmp sgt i32 %.sroa.speculated92, 25
  br i1 %.not84.5, label %.critedge, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %.not84.6 = icmp eq i32 %.sroa.speculated92, 25
  br i1 %.not84.6, label %.critedge, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %.not84.7 = icmp sgt i32 %.sroa.speculated92, 20
  br i1 %.not84.7, label %.critedge, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %.not84.8 = icmp sgt i32 %.sroa.speculated92, 16
  br i1 %.not84.8, label %.critedge, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %.not84.9 = icmp sgt i32 %.sroa.speculated92, 14
  br i1 %.not84.9, label %.critedge, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %.not84.10 = icmp sgt i32 %.sroa.speculated92, 12
  br i1 %.not84.10, label %.critedge, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %.not84.11 = icmp sgt i32 %.sroa.speculated92, 10
  br i1 %.not84.11, label %.critedge, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %.not84.12 = icmp sgt i32 %.sroa.speculated92, 8
  br i1 %.not84.12, label %.critedge, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %.not84.13 = icmp sgt i32 %.sroa.speculated92, 6
  %spec.select = zext i1 %.not84.13 to i64
  br label %.critedge

.critedge:                                        ; preds = %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.178.lcssa = phi i64 [ 7, %.preheader.7 ], [ 14, %.preheader.preheader ], [ 13, %.preheader.1 ], [ %spec.select, %.preheader.13 ], [ 12, %.preheader.2 ], [ 4, %.preheader.10 ], [ 11, %.preheader.3 ], [ 2, %.preheader.12 ], [ 10, %.preheader.4 ], [ 6, %.preheader.8 ], [ 9, %.preheader.5 ], [ 3, %.preheader.11 ], [ 8, %.preheader.6 ], [ 5, %.preheader.9 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZL9grid_init.const, i64 %.178.lcssa
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !20
  br label %.loopexit.sink.split

.preheader107:                                    ; preds = %bb.m, %.preheader107
  %.079 = phi i32 [ %i.bv, %.preheader107 ], [ 1, %bb.m ] ; 12 uses
  %i.bt = mul nuw nsw i32 %.079, 84               ; 4 uses
  %i.bu = icmp samesign ult i32 %i.bt, %.sroa.speculated92
  %i.bv = shl nuw nsw i32 %.079, 1
  br i1 %i.bu, label %.preheader107, label %.loopexitcondstore.split, !llvm.loop !18

.loopexitcondstore.split:                         ; preds = %.preheader107
  store i32 %i.bt, ptr %i.bh, align 4, !tbaa !20
  %i.bw = mul nuw nsw i32 %.079, 81               ; 4 uses
  %i.bx = and i32 %i.bw, 3
  %i.by = icmp ne i32 %i.bx, 0
  %.not83.1 = icmp samesign ult i32 %i.bw, %.sroa.speculated92
  %or.cond85.1 = or i1 %.not83.1, %i.by           ; 2 uses
  %spec.store.select = select i1 %or.cond85.1, i32 %i.bt, i32 %i.bw
  store i32 %spec.store.select, ptr %i.bh, align 4, !tbaa !20
  %spec.select131 = select i1 %or.cond85.1, i32 %i.bt, i32 %i.bw
  %i.bz = mul nuw nsw i32 %.079, 80               ; 2 uses
  %.not83.2 = icmp samesign uge i32 %i.bz, %.sroa.speculated92 ; 2 uses
  %i.ca = select i1 %.not83.2, i32 %i.bz, i32 %spec.select131
  %i.cb = insertelement <4 x i32> poison, i32 %.079, i64 0
  %i.cc = shufflevector <4 x i32> %i.cb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cd = mul nuw nsw <4 x i32> %i.cc, <i32 75, i32 70, i32 54, i32 50> ; 6 uses
  %i.ce = mul nuw nsw i32 %.079, 72               ; 2 uses
  %.not83.4 = icmp samesign uge i32 %i.ce, %.sroa.speculated92 ; 2 uses
  %i.cf = icmp ne i32 %.079, 2
  %i.cg = shl nsw i32 %.079, 6                    ; 2 uses
  %.not83.6 = icmp sge i32 %i.cg, %.sroa.speculated92 ; 2 uses
  %i.ch = mul nuw nsw i32 %.079, 60               ; 2 uses
  %.not83.7 = icmp samesign uge i32 %i.ch, %.sroa.speculated92 ; 2 uses
  %i.ci = mul nuw nsw i32 %.079, 56               ; 2 uses
  %.not83.8 = icmp samesign uge i32 %i.ci, %.sroa.speculated92 ; 2 uses
  %i.cj = mul nuw nsw i32 %.079, 52               ; 2 uses
  %.not83.10 = icmp samesign uge i32 %i.cj, %.sroa.speculated92 ; 2 uses
  %i.ck = and <4 x i32> %i.cd, <i32 3, i32 2, i32 2, i32 2>
  %i.cl = icmp eq <4 x i32> %i.ck, zeroinitializer
  %i.cm = insertelement <4 x i1> <i1 true, i1 poison, i1 true, i1 true>, i1 %i.cf, i64 1
  %i.cn = and <4 x i1> %i.cl, %i.cm
  %i.co = insertelement <4 x i32> poison, i32 %.sroa.speculated92, i64 0
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = icmp samesign uge <4 x i32> %i.cd, %i.cp
  %i.cq = and <4 x i1> %8, %i.cn                  ; 5 uses
  %i.cr = extractelement <4 x i1> %i.cq, i64 0
  %i.cs = extractelement <4 x i32> %i.cd, i64 0
  %i.ct = select i1 %i.cr, i32 %i.cs, i32 %i.ca
  %spec.select132 = select i1 %.not83.4, i32 %i.ce, i32 %i.ct
  %i.cu = extractelement <4 x i1> %i.cq, i64 1
  %i.cv = extractelement <4 x i32> %i.cd, i64 1
  %spec.select133 = select i1 %i.cu, i32 %i.cv, i32 %spec.select132
  %spec.select134 = select i1 %.not83.6, i32 %i.cg, i32 %spec.select133
  %spec.select135 = select i1 %.not83.7, i32 %i.ch, i32 %spec.select134
  %spec.select136 = select i1 %.not83.8, i32 %i.ci, i32 %spec.select135
  %i.cw = extractelement <4 x i1> %i.cq, i64 2
  %i.cx = extractelement <4 x i32> %i.cd, i64 2
  %spec.select137 = select i1 %i.cw, i32 %i.cx, i32 %spec.select136
  %spec.select138 = select i1 %.not83.10, i32 %i.cj, i32 %spec.select137
  %i.cy = extractelement <4 x i1> %i.cq, i64 3
  %i.cz = extractelement <4 x i32> %i.cd, i64 3
  %spec.select139 = select i1 %i.cy, i32 %i.cz, i32 %spec.select138
  %i.da = mul nuw nsw i32 %.079, 48               ; 2 uses
  %.not83.12 = icmp samesign uge i32 %i.da, %.sroa.speculated92 ; 2 uses
  %spec.select140 = select i1 %.not83.12, i32 %i.da, i32 %spec.select139 ; 2 uses
  %i.db = bitcast <4 x i1> %i.cq to i4
  %i.dc = icmp ne i4 %i.db, 0
  %i.dd = or i1 %.not83.6, %i.dc
  %i.de = or i1 %i.dd, %.not83.12
  %i.df = or i1 %i.de, %.not83.10
  %i.dg = or i1 %i.df, %.not83.8
  %i.dh = or i1 %i.dg, %.not83.7
  %i.di = or i1 %i.dh, %.not83.4
  %op.rdx152 = or i1 %i.di, %.not83.2
  br i1 %op.rdx152, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %.loopexitcondstore.split, %.critedge
  %spec.select140.sink = phi i32 [ %i.bs, %.critedge ], [ %spec.select140, %.loopexitcondstore.split ] ; 2 uses
  store i32 %spec.select140.sink, ptr %i.bh, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.loopexitcondstore.split, %bb.l
  %i.dj = phi i32 [ %i.bi, %bb.l ], [ %spec.select140, %.loopexitcondstore.split ], [ %spec.select140.sink, %.loopexit.sink.split ]
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = fdiv float %i.bl, %i.dk                 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store float %i.dl, ptr %i.dm, align 4, !tbaa !22
  %i.dn = fcmp olt float %.099111, %i.dl
  %.sroa.speculated = select i1 %i.dn, float %i.dl, float %.099111 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.n, label %bb.l, !llvm.loop !19

bb.n:                                             ; preds = %.loopexit
  %i.do = load i32, ptr %i.a, align 4, !tbaa !20
  store i32 %i.do, ptr %4, align 4, !tbaa !20
  %i.dp = load i32, ptr %i.at, align 4, !tbaa !20
  store i32 %i.dp, ptr %5, align 4, !tbaa !20
  %i.dq = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  store i32 %i.dq, ptr %6, align 4, !tbaa !20
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = load i32, ptr %4, align 4, !tbaa !20
  %i.ds = load i32, ptr %5, align 4, !tbaa !20
  %i.dt = load float, ptr %i.c, align 4, !tbaa !22
  %i.du = fpext float %i.dt to double
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !22
  %i.dx = fpext <2 x float> %i.dw to <2 x double> ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  %i.dz = extractelement <2 x double> %i.dx, i64 1
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.dq, double noundef %i.du, double noundef %i.dy, double noundef %i.dz) #11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret float %.sroa.speculated
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(61) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %1) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.b, ptr %i.a, align 8, !tbaa !25
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.f, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.h, ptr %i.g, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #9

end_hunk_0
