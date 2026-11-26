Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/autocorr?download=true
inline.NumInlined: 330
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 33
begin_hunk_0
@.str.21 = private unnamed_addr constant [11 x i8] c"%5d  %.3f\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"Average correlation time %.3f Std. Dev. %.3f Error %.3f (ps)\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"cfour\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"c1diag%d.xvg\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"c1dfout%d.xvg\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"c1off%d.xvg\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"c1ofout%d.xvg\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"\0AUnknown mode in do_autocorr (%lu)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"%10d  %10g\0A\00", align 1
@.str.38 = private unnamed_addr constant [64 x i8] c"Starting do_ac_core: nframes=%d, nout=%d, nrestart=%d,mode=%lu\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"j: %d, k: %d, xj:(%g,%g,%g), xk:(%g,%g,%g)\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"\0AInvalid mode (%lu) in do_ac_core\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Before normalization\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%5d  %10f\0A\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"After normalization\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"-acflen\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"Length of the ACF, default is half the number of frames\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"-normalize\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Normalize ACF\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"-fftcorr\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"HIDDENUse fast fourier transform for correlation function\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"-nrestart\00", align 1
@.str.52 = private unnamed_addr constant [72 x i8] c"HIDDENNumber of frames between time origins for ACF when no FFT is used\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@_ZL3Leg = internal global [6 x ptr] [ptr null, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null], align 16
@.str.54 = private unnamed_addr constant [56 x i8] c"Order of Legendre polynomial for ACF (0 indicates none)\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"-fitfn\00", align 1
@s_ffn = external global [13 x ptr], align 16
@.str.56 = private unnamed_addr constant [13 x i8] c"Fit function\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"-beginfit\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"Time where to begin the exponential fit of the correlation function\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"-endfit\00", align 1
@.str.60 = private unnamed_addr constant [87 x i8] c"Time where to end the exponential fit of the correlation function, -1 is until the end\00", align 1
@__const._Z13add_acf_pargsPiP7t_pargs.acfpa = private unnamed_addr constant [8 x %struct.t_pargs] [%struct.t_pargs { ptr @.str.45, i8 0, i32 0, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 12) }, ptr @.str.46 }, %struct.t_pargs { ptr @.str.47, i8 0, i32 5, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 25) }, ptr @.str.48 }, %struct.t_pargs { ptr @.str.49, i8 0, i32 5, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 24) }, ptr @.str.50 }, %struct.t_pargs { ptr @.str.51, i8 0, i32 0, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 8) }, ptr @.str.52 }, %struct.t_pargs { ptr @.str.53, i8 0, i32 7, %union.anon.10 { ptr @_ZL3Leg }, ptr @.str.54 }, %struct.t_pargs { ptr @.str.55, i8 0, i32 7, %union.anon.10 { ptr @s_ffn }, ptr @.str.56 }, %struct.t_pargs { ptr @.str.57, i8 0, i32 2, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 28) }, ptr @.str.58 }, %struct.t_pargs { ptr @.str.59, i8 0, i32 2, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 32) }, ptr @.str.60 }], align 16
@.str.61 = private unnamed_addr constant [4 x i8] c"ppa\00", align 1
@_ZL8bACFinit = internal unnamed_addr global i1 false, align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"ACF data not initialized yet\00", align 1
@str = private unnamed_addr constant [41 x i8] c"WARNING: setting number of restarts to 1\00", align 1
@str.1 = private unnamed_addr constant [32 x i8] c"Averaging correlation functions\00", align 1
@str.2 = private unnamed_addr constant [66 x i8] c"ACF data structures have not been initialised. Call add_acf_pargs\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, ptr nofree noundef readonly captures(none) %6, float noundef %7, i64 noundef %8, i32 noundef %9, i1 noundef zeroext %10, i1 noundef zeroext %11, i1 noundef zeroext %12, float noundef %13, float noundef %14, i32 noundef %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 27 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %21 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !12
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 24), align 8, !tbaa !17, !range !18, !noundef !19 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %.b.i = load i1, ptr @_ZL8bACFinit, align 1
  br i1 %.b.i, label %_Z11get_acfnoutv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 839, ptr noundef nonnull @.str.68) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.bz, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.bhe, %bb.bf ], [ %i.brs, %bb.bz ], [ %i.m, %bb.j ], [ %i.v, %bb.r ], [ %i.bxz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.bud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %common.resume

_Z11get_acfnoutv.exit:                            ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 12), align 4, !tbaa !20 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z11get_acfnoutv.exit
  %i.h = add nsw i32 %3, 1
  %i.i = sdiv i32 %i.h, 2                         ; 2 uses
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 12), align 4, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %_Z11get_acfnoutv.exit
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0147 = phi i32 [ %i.i, %bb.e ], [ %spec.select, %bb.f ]
  %.0147.fr = freeze i32 %.0147                   ; 13 uses
  %i.j = and i64 %8, 2
  %.not = icmp eq i64 %i.j, 0                     ; 2 uses
  %i.k = and i64 %8, 4
  %.not155 = icmp eq i64 %i.k, 0                  ; 2 uses
  %i.l = and i64 %8, 6
  %or.cond174.not = icmp eq i64 %i.l, 6
  br i1 %or.cond174.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 575, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 575) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.n = and i64 %8, 132
  %i.o = icmp eq i64 %i.n, 132                    ; 3 uses
  br i1 %i.o, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = and i64 %8, 12
  %i.q = icmp eq i64 %i.p, 12
  %or.cond = and i1 %i.q, %i.d                    ; 2 uses
  %brmerge.not = and i1 %12, %or.cond
  %.mux = select i1 %or.cond, i8 0, i8 %i.c
  br i1 %brmerge.not, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %brmerge181.demorgan = and i1 %12, %i.d
  br i1 %brmerge181.demorgan, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef %8) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.0140 = phi i8 [ %.mux, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %i.t = and i64 %8, 1
  %.not156 = icmp eq i64 %i.t, 0                  ; 2 uses
  %i.u = and i64 %8, 5
  %or.cond175.not = icmp eq i64 %i.u, 5
  br i1 %or.cond175.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 587, ptr noundef nonnull @.str.3) #17
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %common.resume

bb.s:                                             ; preds = %bb.o
  br i1 %12, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not158 = icmp eq ptr %2, null
  %i.w = select i1 %.not158, ptr @.str.5, ptr %2
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.w, i32 noundef %4, i32 noundef %3) ; 0 uses
  %i.y = select i1 %10, ptr @.str.24, ptr @.str.25
  %i.z = trunc nuw i8 %.0140 to i1
  %i.aa = select i1 %i.z, ptr @.str.24, ptr @.str.25
  %i.ab = select i1 %11, ptr @.str.24, ptr @.str.25
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) ; 0 uses
  %i.ad = fpext float %7 to double
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %8, double noundef %i.ad, i32 noundef %9) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.af = sext i32 %3 to i64                      ; 3 uses
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 601, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 134 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 152 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.al = add nsw i32 %4, -1
  %i.am = trunc nuw i8 %.0140 to i1
  %i.an = icmp slt i32 %9, 1
  %i.ao = icmp sgt i32 %.0147.fr, 0
  %i.ap = zext i32 %.0147.fr to i64               ; 14 uses
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = icmp sgt i32 %3, 0                      ; 12 uses
  %i.as = and i64 %8, 512
  %.not123.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %8, 36
  %i.au = icmp eq i64 %i.at, 36                   ; 2 uses
  %i.av = and i64 %8, 68
  %i.aw = icmp eq i64 %i.av, 68                   ; 3 uses
  %or.cond.i = or i1 %i.au, %i.aw
  %or.cond127.i = or i1 %i.o, %or.cond.i
  %i.ax = and i64 %8, 12
  %i.ay = icmp eq i64 %i.ax, 12
  %spec.select.i = select i1 %i.o, i32 3, i32 1
  %.0110.i = select i1 %i.aw, i32 2, i32 %spec.select.i
  %i.az = zext i32 %3 to i64                      ; 197 uses
  %or.cond170.i = and i1 %i.ar, %i.au
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 6 uses
  %i.bb = zext nneg i32 %i.al to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ba ; 3 uses
  %i.bc = mul nuw nsw i64 %i.az, 12               ; 5 uses
  %scevgep440 = getelementptr i8, ptr %i.ai, i64 %i.ba ; 2 uses
  %i.bd = add nsw i64 %i.bc, -4                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.az, 2                ; 8 uses
  %scevgep616 = getelementptr i8, ptr %i.ai, i64 %i.be ; 6 uses
  %scevgep663 = getelementptr i8, ptr %i.ag, i64 %i.be ; 6 uses
  %i.bf = mul nuw nsw i64 %i.az, 12               ; 3 uses
  %i.bg = shl nuw nsw i64 %i.az, 2                ; 4 uses
  %scevgep1175 = getelementptr i8, ptr %i.ai, i64 %i.bg
  %scevgep1241 = getelementptr i8, ptr %i.ag, i64 %i.bg ; 2 uses
  %i.bh = add nsw i64 %i.az, -1                   ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %27 = zext nneg i32 %smax to i64
  %i.bi = shl nuw nsw i64 %27, 2
  %scevgep1384 = getelementptr i8, ptr %i.ai, i64 4 ; 2 uses
  %smax1430 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %i.bj = zext nneg i32 %smax1430 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nsw i64 %i.ap, -1
  %i.bm = add nsw i64 %i.ap, -1
  %min.iters.check1352 = icmp ult i32 %.0147.fr, 8
  %n.vec1356 = and i64 %i.ap, 2147483640          ; 3 uses
  %cmp.n1368 = icmp eq i64 %n.vec1356, %i.ap
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check1319 = icmp ult i32 %3, 4
  %min.iters.check1323 = icmp ult i32 %3, 32
  %i.bn = and i64 %i.az, 28
  %n.vec1325 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1334 = icmp eq i64 %n.vec1325, %i.az
  %min.epilog.iters.check1338 = icmp eq i64 %i.bn, 0
  %n.vec1341 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1347 = icmp eq i64 %n.vec1341, %i.az
  %min.iters.check1286 = icmp ult i32 %3, 4
  %min.iters.check1290 = icmp ult i32 %3, 32
  %i.bo = and i64 %i.az, 28
  %n.vec1292 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1301 = icmp eq i64 %n.vec1292, %i.az
  %min.epilog.iters.check1305 = icmp eq i64 %i.bo, 0
  %n.vec1308 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1314 = icmp eq i64 %n.vec1308, %i.az
  %min.iters.check1243 = icmp ult i32 %3, 4
  %min.iters.check1256 = icmp ult i32 %3, 16
  %i.bp = and i64 %i.az, 12
  %n.vec1258 = and i64 %i.az, 2147483632          ; 4 uses
  %cmp.n1267 = icmp eq i64 %n.vec1258, %i.az
  %min.epilog.iters.check1271 = icmp eq i64 %i.bp, 0
  %n.vec1274 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1281 = icmp eq i64 %n.vec1274, %i.az
  %xtraiter1487 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1488.not = icmp eq i64 %xtraiter1487, 0
  %min.iters.check1213 = icmp ult i32 %3, 8
  %n.vec1215 = and i64 %i.az, 2147483640          ; 3 uses
  %cmp.n1225 = icmp eq i64 %n.vec1215, %i.az
  %min.iters.check1177 = icmp ult i32 %3, 9
  %min.iters.check1183 = icmp ult i32 %3, 33
  %i.bq = and i64 %i.az, 31                       ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 32, i64 %i.bq      ; 2 uses
  %n.vec1185 = sub nsw i64 %i.az, %i.bs           ; 3 uses
  %min.epilog.iters.check1201 = icmp samesign ult i64 %i.bs, 9
  %i.bt = and i64 %i.az, 7                        ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 8, i64 %i.bt
  %n.vec1204 = sub nsw i64 %i.az, %i.bv           ; 2 uses
  %min.iters.check1133 = icmp ult i32 %3, 4
  %min.iters.check1139 = icmp ult i32 %3, 32
  %i.bw = and i64 %i.az, 28
  %n.vec1141 = and i64 %i.az, 4294967264          ; 4 uses
  %cmp.n1154 = icmp eq i64 %n.vec1141, %i.az
  %min.epilog.iters.check1158 = icmp eq i64 %i.bw, 0
  %n.vec1161 = and i64 %i.az, 4294967292          ; 3 uses
  %cmp.n1168 = icmp eq i64 %n.vec1161, %i.az
  %min.iters.check1092 = icmp ult i32 %3, 9
  %min.iters.check1098 = icmp ult i32 %3, 33
  %i.bx = and i64 %i.az, 31                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 32, i64 %i.bx      ; 2 uses
  %n.vec1100 = sub nsw i64 %i.az, %i.bz           ; 3 uses
  %min.epilog.iters.check1116 = icmp samesign ult i64 %i.bz, 9
  %i.ca = and i64 %i.az, 7                        ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 8, i64 %i.ca
  %n.vec1119 = sub nsw i64 %i.az, %i.cc           ; 2 uses
  %min.iters.check1048 = icmp ult i32 %3, 4
  %min.iters.check1054 = icmp ult i32 %3, 32
  %i.cd = and i64 %i.az, 28
  %n.vec1056 = and i64 %i.az, 4294967264          ; 4 uses
  %cmp.n1069 = icmp eq i64 %n.vec1056, %i.az
  %min.epilog.iters.check1073 = icmp eq i64 %i.cd, 0
  %n.vec1076 = and i64 %i.az, 4294967292          ; 3 uses
  %cmp.n1083 = icmp eq i64 %n.vec1076, %i.az
  %min.iters.check1007 = icmp ult i32 %3, 9
  %min.iters.check1013 = icmp ult i32 %3, 33
  %i.ce = and i64 %i.az, 31                       ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 32, i64 %i.ce      ; 2 uses
  %n.vec1015 = sub nsw i64 %i.az, %i.cg           ; 3 uses
  %min.epilog.iters.check1031 = icmp samesign ult i64 %i.cg, 9
  %i.ch = and i64 %i.az, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec1034 = sub nsw i64 %i.az, %i.cj           ; 2 uses
  %min.iters.check963 = icmp ult i32 %3, 4
  %min.iters.check969 = icmp ult i32 %3, 32
  %i.ck = and i64 %i.az, 28
  %n.vec971 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n984 = icmp eq i64 %n.vec971, %i.az
  %min.epilog.iters.check988 = icmp eq i64 %i.ck, 0
  %n.vec991 = and i64 %i.az, 4294967292           ; 3 uses
  %cmp.n998 = icmp eq i64 %n.vec991, %i.az
  %min.iters.check944 = icmp ult i32 %3, 8
  %n.vec946 = and i64 %i.az, 2147483640           ; 3 uses
  %cmp.n955 = icmp eq i64 %n.vec946, %i.az
  %min.iters.check907 = icmp ult i32 %3, 4
  %min.iters.check909 = icmp ult i32 %3, 32
  %i.cl = and i64 %i.az, 28
  %n.vec911 = and i64 %i.az, 2147483616           ; 4 uses
  %broadcast.splatinsert912 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat913 = shufflevector <8 x i32> %broadcast.splatinsert912, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n923 = icmp eq i64 %n.vec911, %i.az
  %min.epilog.iters.check927 = icmp eq i64 %i.cl, 0
  %n.vec930 = and i64 %i.az, 2147483644           ; 3 uses
  %broadcast.splatinsert931 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat932 = shufflevector <4 x i32> %broadcast.splatinsert931, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n942 = icmp eq i64 %n.vec930, %i.az
  %min.iters.check872 = icmp ult i32 %3, 9
  %min.iters.check878 = icmp ult i32 %3, 33
  %i.cm = and i64 %i.az, 31                       ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 32, i64 %i.cm      ; 2 uses
  %n.vec880 = sub nsw i64 %i.az, %i.co            ; 3 uses
  %min.epilog.iters.check896 = icmp samesign ult i64 %i.co, 9
  %i.cp = and i64 %i.az, 7                        ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i64 8, i64 %i.cp
  %n.vec899 = sub nsw i64 %i.az, %i.cr            ; 2 uses
  %min.iters.check830 = icmp ult i32 %3, 4
  %min.iters.check836 = icmp ult i32 %3, 32
  %i.cs = and i64 %i.az, 28
  %n.vec838 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n851 = icmp eq i64 %n.vec838, %i.az
  %min.epilog.iters.check855 = icmp eq i64 %i.cs, 0
  %n.vec858 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n865 = icmp eq i64 %n.vec858, %i.az
  %min.iters.check790 = icmp ult i32 %3, 9
  %min.iters.check796 = icmp ult i32 %3, 33
  %i.ct = and i64 %i.az, 31                       ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 32, i64 %i.ct      ; 2 uses
  %n.vec798 = sub nsw i64 %i.az, %i.cv            ; 3 uses
  %min.epilog.iters.check814 = icmp samesign ult i64 %i.cv, 9
  %i.cw = and i64 %i.az, 7                        ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = select i1 %i.cx, i64 8, i64 %i.cw
  %n.vec817 = sub nsw i64 %i.az, %i.cy            ; 2 uses
  %min.iters.check747 = icmp ult i32 %3, 4
  %min.iters.check753 = icmp ult i32 %3, 32
  %i.cz = and i64 %i.az, 28
  %n.vec755 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n768 = icmp eq i64 %n.vec755, %i.az
  %min.epilog.iters.check772 = icmp eq i64 %i.cz, 0
  %n.vec775 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n782 = icmp eq i64 %n.vec775, %i.az
  %min.iters.check707 = icmp ult i32 %3, 9
  %min.iters.check713 = icmp ult i32 %3, 33
  %i.da = and i64 %i.az, 31                       ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 32, i64 %i.da      ; 2 uses
  %n.vec715 = sub nsw i64 %i.az, %i.dc            ; 3 uses
  %min.epilog.iters.check731 = icmp samesign ult i64 %i.dc, 9
  %i.dd = and i64 %i.az, 7                        ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = select i1 %i.de, i64 8, i64 %i.dd
  %n.vec734 = sub nsw i64 %i.az, %i.df            ; 2 uses
  %min.iters.check664 = icmp ult i32 %3, 4
  %min.iters.check670 = icmp ult i32 %3, 32
  %i.dg = and i64 %i.az, 28
  %n.vec672 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n685 = icmp eq i64 %n.vec672, %i.az
  %min.epilog.iters.check689 = icmp eq i64 %i.dg, 0
  %n.vec692 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n699 = icmp eq i64 %n.vec692, %i.az
  %min.iters.check617 = icmp ult i32 %3, 9
  %min.iters.check623 = icmp ult i32 %3, 33
  %i.dh = and i64 %i.az, 31                       ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 32, i64 %i.dh      ; 2 uses
  %n.vec625 = sub nsw i64 %i.az, %i.dj            ; 3 uses
  %min.epilog.iters.check645 = icmp samesign ult i64 %i.dj, 9
  %i.dk = and i64 %i.az, 7                        ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 8, i64 %i.dk
  %n.vec648 = sub nsw i64 %i.az, %i.dm            ; 2 uses
  %min.iters.check574 = icmp ult i32 %3, 4
  %min.iters.check580 = icmp ult i32 %3, 32
  %i.dn = and i64 %i.az, 28
  %n.vec582 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n595 = icmp eq i64 %n.vec582, %i.az
  %min.epilog.iters.check599 = icmp eq i64 %i.dn, 0
  %n.vec602 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n609 = icmp eq i64 %n.vec602, %i.az
  %min.iters.check529 = icmp ult i32 %3, 9
  %min.iters.check535 = icmp ult i32 %3, 33
  %i.do = and i64 %i.az, 31                       ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 32, i64 %i.do      ; 2 uses
  %n.vec537 = sub nsw i64 %i.az, %i.dq            ; 3 uses
  %min.epilog.iters.check557 = icmp samesign ult i64 %i.dq, 9
  %i.dr = and i64 %i.az, 7                        ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = select i1 %i.ds, i64 8, i64 %i.dr
  %n.vec560 = sub nsw i64 %i.az, %i.dt            ; 2 uses
  %min.iters.check486 = icmp ult i32 %3, 4
  %min.iters.check492 = icmp ult i32 %3, 32
  %i.du = and i64 %i.az, 28
  %n.vec494 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n507 = icmp eq i64 %n.vec494, %i.az
end_hunk_0
begin_hunk_1_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a

.loopexit171.thread.i:                            ; preds = %.lr.ph186.i.prol.loopexit, %.lr.ph186.i, %.lr.ph194.2.i.prol.loopexit, %.lr.ph194.2.i, %.lr.ph213.2.i.prol.loopexit, %.lr.ph213.2.i, %middle.block1266, %vec.epilog.middle.block1280, %middle.block983, %vec.epilog.middle.block997, %middle.block417, %vec.epilog.middle.block431
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull %i.el)
  br label %iter.check

.loopexit171.thread293.sink.split.i:              ; preds = %._crit_edge191.2.i, %.preheader178.i
  %.sink296.i = phi i32 [ 0, %._crit_edge191.2.i ], [ 1, %.preheader178.i ]
  %.sink.i = phi i32 [ 0, %._crit_edge191.2.i ], [ 2, %.preheader178.i ]
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ai, ptr noundef %i.el, i32 noundef %.sink296.i)
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ai, ptr noundef %i.el, i32 noundef %.sink.i)
  br label %.loopexit171.thread293.i

.loopexit171.thread293.i:                         ; preds = %.loopexit171.thread293.sink.split.i, %bb.aw
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef %i.el)
  br label %_ZL12do_four_coremiPfS_S_.exit

.loopexit171.i:                                   ; preds = %bb.z
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ej, ptr noundef %i.ag, i32 noundef 0)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef %i.el)
  br i1 %i.ar, label %iter.check, label %_ZL12do_four_coremiPfS_S_.exit

iter.check:                                       ; preds = %.loopexit171.i, %.loopexit171.thread.i
  %i.bhf = sub i64 %i.ah, %i.ek
  %diff.check = icmp ugt i64 %i.bhf, -128
  %or.cond1460 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1460, label %.lr.ph217.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check383, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 32
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 64
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhg, i64 96
  %wide.load = load <8 x float>, ptr %i.bhg, align 4, !tbaa !24
  %wide.load384 = load <8 x float>, ptr %i.bhh, align 4, !tbaa !24
  %wide.load385 = load <8 x float>, ptr %i.bhi, align 4, !tbaa !24
  %wide.load386 = load <8 x float>, ptr %i.bhj, align 4, !tbaa !24
  %i.bhk = sub <8 x i32> %broadcast.splat, %vec.ind
  %i.bhl = sub <8 x i32> %broadcast.splat, %step.add
  %i.bhm = sub <8 x i32> %broadcast.splat, %step.add.2
  %i.bhn = sub <8 x i32> %broadcast.splat, %step.add.3
  %i.bho = uitofp nneg <8 x i32> %i.bhk to <8 x float>
  %i.bhp = uitofp nneg <8 x i32> %i.bhl to <8 x float>
  %i.bhq = uitofp nneg <8 x i32> %i.bhm to <8 x float>
  %i.bhr = uitofp nneg <8 x i32> %i.bhn to <8 x float>
  %i.bhs = fdiv <8 x float> %wide.load, %i.bho
  %i.bht = fdiv <8 x float> %wide.load384, %i.bhp
  %i.bhu = fdiv <8 x float> %wide.load385, %i.bhq
  %i.bhv = fdiv <8 x float> %wide.load386, %i.bhr
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index ; 4 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 32
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhw, i64 64
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhw, i64 96
  store <8 x float> %i.bhs, ptr %i.bhw, align 4, !tbaa !24
  store <8 x float> %i.bht, ptr %i.bhx, align 4, !tbaa !24
  store <8 x float> %i.bhu, ptr %i.bhy, align 4, !tbaa !24
  store <8 x float> %i.bhv, ptr %i.bhz, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bia = icmp eq i64 %index.next, %n.vec
  br i1 %i.bia, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12do_four_coremiPfS_S_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph217.i.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bib = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert390 = insertelement <4 x i32> poison, i32 %i.bib, i64 0
  %broadcast.splat391 = shufflevector <4 x i32> %broadcast.splatinsert390, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat391, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index392 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next395, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind393 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next396, %vec.epilog.vector.body ] ; 2 uses
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index392
  %wide.load394 = load <4 x float>, ptr %i.bic, align 4, !tbaa !24
  %i.bid = sub <4 x i32> %broadcast.splat389, %vec.ind393
  %i.bie = uitofp nneg <4 x i32> %i.bid to <4 x float>
  %i.bif = fdiv <4 x float> %wide.load394, %i.bie
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index392
  store <4 x float> %i.bif, ptr %i.big, align 4, !tbaa !24
  %index.next395 = add nuw i64 %index392, 4       ; 2 uses
  %vec.ind.next396 = add <4 x i32> %vec.ind393, splat (i32 4)
  %i.bih = icmp eq i64 %index.next395, %n.vec387
  br i1 %i.bih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !199

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n397, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph217.i.preheader

.lr.ph217.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec387, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod1545.not, label %.lr.ph217.i.prol.loopexit, label %.lr.ph217.i.prol

.lr.ph217.i.prol:                                 ; preds = %.lr.ph217.i.preheader, %.lr.ph217.i.prol
  %indvars.iv282.i.prol = phi i64 [ %indvars.iv.next283.i.prol, %.lr.ph217.i.prol ], [ %indvars.iv282.i.ph, %.lr.ph217.i.preheader ] ; 4 uses
  %prol.iter1546 = phi i64 [ %prol.iter1546.next, %.lr.ph217.i.prol ], [ 0, %.lr.ph217.i.preheader ]
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv282.i.prol
  %i.bij = load float, ptr %i.bii, align 4, !tbaa !24
  %i.bik = trunc i64 %indvars.iv282.i.prol to i32
  %i.bil = sub i32 %3, %i.bik
  %i.bim = uitofp nneg i32 %i.bil to float
  %i.bin = fdiv float %i.bij, %i.bim
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv282.i.prol
  store float %i.bin, ptr %i.bio, align 4, !tbaa !24
  %indvars.iv.next283.i.prol = add nuw nsw i64 %indvars.iv282.i.prol, 1 ; 2 uses
  %prol.iter1546.next = add i64 %prol.iter1546, 1 ; 2 uses
  %prol.iter1546.cmp.not = icmp eq i64 %prol.iter1546.next, %xtraiter1544
  br i1 %prol.iter1546.cmp.not, label %.lr.ph217.i.prol.loopexit, label %.lr.ph217.i.prol, !llvm.loop !200

.lr.ph217.i.prol.loopexit:                        ; preds = %.lr.ph217.i.prol, %.lr.ph217.i.preheader
  %indvars.iv282.i.unr = phi i64 [ %indvars.iv282.i.ph, %.lr.ph217.i.preheader ], [ %indvars.iv.next283.i.prol, %.lr.ph217.i.prol ]
  %i.bip = sub nsw i64 %indvars.iv282.i.ph, %i.az
  %i.biq = icmp ugt i64 %i.bip, -4
  br i1 %i.biq, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph217.i

.lr.ph217.i:                                      ; preds = %.lr.ph217.i.prol.loopexit, %.lr.ph217.i
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i.3, %.lr.ph217.i ], [ %indvars.iv282.i.unr, %.lr.ph217.i.prol.loopexit ] ; 7 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv282.i
  %i.bis = load float, ptr %i.bir, align 4, !tbaa !24
  %i.bit = trunc i64 %indvars.iv282.i to i32
  %i.biu = sub i32 %3, %i.bit
  %i.biv = uitofp nneg i32 %i.biu to float
  %i.biw = fdiv float %i.bis, %i.biv
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv282.i
  store float %i.biw, ptr %i.bix, align 4, !tbaa !24
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 3 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next283.i
  %i.biz = load float, ptr %i.biy, align 4, !tbaa !24
  %i.bja = trunc i64 %indvars.iv.next283.i to i32
  %i.bjb = sub i32 %3, %i.bja
  %i.bjc = uitofp nneg i32 %i.bjb to float
  %i.bjd = fdiv float %i.biz, %i.bjc
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next283.i
  store float %i.bjd, ptr %i.bje, align 4, !tbaa !24
  %indvars.iv.next283.i.1 = add nuw nsw i64 %indvars.iv282.i, 2 ; 3 uses
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next283.i.1
  %i.bjg = load float, ptr %i.bjf, align 4, !tbaa !24
  %i.bjh = trunc i64 %indvars.iv.next283.i.1 to i32
  %i.bji = sub i32 %3, %i.bjh
  %i.bjj = uitofp nneg i32 %i.bji to float
  %i.bjk = fdiv float %i.bjg, %i.bjj
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next283.i.1
  store float %i.bjk, ptr %i.bjl, align 4, !tbaa !24
  %indvars.iv.next283.i.2 = add nuw nsw i64 %indvars.iv282.i, 3 ; 3 uses
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next283.i.2
  %i.bjn = load float, ptr %i.bjm, align 4, !tbaa !24
  %i.bjo = trunc i64 %indvars.iv.next283.i.2 to i32
  %i.bjp = sub i32 %3, %i.bjo
  %i.bjq = uitofp nneg i32 %i.bjp to float
  %i.bjr = fdiv float %i.bjn, %i.bjq
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next283.i.2
  store float %i.bjr, ptr %i.bjs, align 4, !tbaa !24
  %indvars.iv.next283.i.3 = add nuw nsw i64 %indvars.iv282.i, 4 ; 2 uses
  %exitcond286.not.i.3 = icmp eq i64 %indvars.iv.next283.i.3, %i.az
  br i1 %exitcond286.not.i.3, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph217.i, !llvm.loop !201

_ZL12do_four_coremiPfS_S_.exit:                   ; preds = %.lr.ph217.i.prol.loopexit, %.lr.ph217.i, %middle.block, %vec.epilog.middle.block, %.loopexit171.thread293.i, %.loopexit171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZL10do_ac_coreiiPfS_im.exit

bb.bg:                                            ; preds = %bb.y
  br i1 %i.an, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.i = phi i32 [ 1, %bb.bh ], [ %9, %bb.bg ]   ; 17 uses
  %i.bjt = load ptr, ptr @debug, align 8, !tbaa !22 ; 2 uses
  %.not.i183 = icmp eq ptr %i.bjt, null
  br i1 %.not.i183, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bju = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bjt, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %.0147.fr, i32 noundef %.0.i, i64 noundef %8) #16 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.ao, label %.preheader131.i, label %_ZL10do_ac_coreiiPfS_im.exit

.preheader131.i:                                  ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.aq, i1 false), !tbaa !24
  br i1 %i.ar, label %.lr.ph152.split.us.i, label %.lr.ph182.i184

.lr.ph152.split.us.i:                             ; preds = %.preheader131.i
  br i1 %.not156, label %.lr.ph152.split.us.split.us.i, label %.lr.ph137.us.preheader.i

.lr.ph137.us.preheader.i:                         ; preds = %.lr.ph152.split.us.i
  %i.bjv = zext nneg i32 %.0.i to i64             ; 3 uses
  %28 = urem i64 %i.bh, %i.bjv
  %29 = sub nuw nsw i64 %i.bh, %28
  %30 = shl nsw i64 %29, 2
  %i.bjw = getelementptr i8, ptr %i.ej, i64 %30
  %scevgep1429 = getelementptr i8, ptr %i.bjw, i64 4
  %bound01437 = icmp ult ptr %i.ai, %scevgep1429
  br label %.lr.ph137.us.i

.lr.ph152.split.us.split.us.i:                    ; preds = %.lr.ph152.split.us.i
  br i1 %.not, label %.lr.ph152.split.us.split.us.split.us.i, label %.lr.ph137.us.us.preheader.i

.lr.ph137.us.us.preheader.i:                      ; preds = %.lr.ph152.split.us.split.us.i
  %i.bjx = zext nneg i32 %.0.i to i64             ; 2 uses
  br label %.lr.ph137.us.us.i

.lr.ph152.split.us.split.us.split.us.i:           ; preds = %.lr.ph152.split.us.split.us.i
  br i1 %.not123.i, label %.lr.ph152.split.us.split.us.split.us.split.us.i, label %.lr.ph137.us.us.us.preheader.i

.lr.ph137.us.us.us.preheader.i:                   ; preds = %.lr.ph152.split.us.split.us.split.us.i
  %i.bjy = zext nneg i32 %.0.i to i64             ; 3 uses
  %31 = urem i64 %i.bh, %i.bjy
  %32 = sub nuw nsw i64 %i.bh, %31
  %33 = shl nsw i64 %32, 2
  %i.bjz = getelementptr i8, ptr %i.ej, i64 %33
  %scevgep1383 = getelementptr i8, ptr %i.bjz, i64 4
  %bound01391.a = icmp ult ptr %i.ai, %scevgep1383
  br label %.lr.ph137.us.us.us.i

.lr.ph152.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph152.split.us.split.us.split.us.i
  br i1 %or.cond127.i, label %.lr.ph137.us.us.us.us.us.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.i

.lr.ph137.us.us.us.us.us.preheader.i:             ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  %i.bka = mul i32 %.0.i, 3
  %i.bkb = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.us.i

.lr.ph137.us.us.us.us.us.i:                       ; preds = %.critedge.us.us.us.us.us.i, %.lr.ph137.us.us.us.us.us.preheader.i
  %indvars.iv254.i191 = phi i64 [ 0, %.lr.ph137.us.us.us.us.us.preheader.i ], [ %indvars.iv.next255.i193, %.critedge.us.us.us.us.us.i ] ; 3 uses
  %indvar.i = phi i32 [ 0, %.lr.ph137.us.us.us.us.us.preheader.i ], [ %indvar.next.i, %.critedge.us.us.us.us.us.i ] ; 2 uses
  %i.bkc = mul i32 %i.bka, %indvar.i
  %i.bkd = zext i32 %i.bkc to i64
  %i.bke = shl nuw nsw i64 %i.bkd, 2
  %scevgep244.i = getelementptr i8, ptr %i.ej, i64 %i.bke ; 2 uses
  %i.bkf = trunc nuw nsw i64 %indvars.iv254.i191 to i32
  %.sroa.5276.0.scevgep244.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep244.i, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph137.us.us.us.us.us.i
  %indvars.iv249.i192 = phi i64 [ %indvars.iv.next250.i194, %bb.bp ], [ 0, %.lr.ph137.us.us.us.us.us.i ] ; 4 uses
  %i.bkg = trunc nuw nsw i64 %indvars.iv249.i192 to i32
  %i.bkh = add nuw nsw i64 %indvars.iv249.i192, %indvars.iv254.i191 ; 2 uses
  %i.bki = icmp samesign ult i64 %i.bkh, %i.az
  br i1 %i.bki, label %bb.bm, label %.critedge.us.us.us.us.us.i

bb.bm:                                            ; preds = %bb.bl
  %i.bkj = mul nuw nsw i64 %i.bkh, 12
  %i.bkk = and i64 %i.bkj, 17179869180
  %scevgep245.i = getelementptr i8, ptr %i.ej, i64 %i.bkk ; 2 uses
  %.sroa.5276.0.copyload.i = load float, ptr %.sroa.5276.0.scevgep244.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5273.0.scevgep245.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep245.i, i64 8
  %.sroa.5273.0.copyload.i = load float, ptr %.sroa.5273.0.scevgep245.sroa_idx.i, align 4, !tbaa !24
  %i.bkl = load <2 x float>, ptr %scevgep244.i, align 4, !tbaa !24 ; 2 uses
  %i.bkm = load <2 x float>, ptr %scevgep245.i, align 4, !tbaa !24 ; 2 uses
  %i.bkn = shufflevector <2 x float> %i.bkl, <2 x float> %i.bkm, <2 x i32> <i32 0, i32 2>
  %i.bko = fpext <2 x float> %i.bkn to <2 x double> ; 6 uses
  %i.bkp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bko, <2 x double> %i.bko, <2 x double> zeroinitializer)
  %i.bkq = shufflevector <2 x float> %i.bkl, <2 x float> %i.bkm, <2 x i32> <i32 1, i32 3>
  %i.bkr = fpext <2 x float> %i.bkq to <2 x double> ; 6 uses
  %i.bks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bkr, <2 x double> %i.bkr, <2 x double> %i.bkp)
  %i.bkt = insertelement <2 x float> poison, float %.sroa.5276.0.copyload.i, i64 0
  %i.bku = insertelement <2 x float> %i.bkt, float %.sroa.5273.0.copyload.i, i64 1
  %i.bkv = fpext <2 x float> %i.bku to <2 x double> ; 6 uses
  %i.bkw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bkv, <2 x double> %i.bkv, <2 x double> %i.bks) ; 2 uses
  %shift = shufflevector <2 x double> %i.bkw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1465 = fmul <2 x double> %i.bkw, %shift
  %i.bkx = extractelement <2 x double> %foldExtExtBinop1465, i64 0 ; 2 uses
  %i.bky = fcmp ogt double %i.bkx, 0.000000e+00
  br i1 %i.bky, label %bb.bn, label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

bb.bn:                                            ; preds = %bb.bm
  %i.bkz = extractelement <2 x double> %i.bko, i64 0
  %i.bla = extractelement <2 x double> %i.bko, i64 1
  %i.blb = call double @llvm.fmuladd.f64(double %i.bkz, double %i.bla, double 0.000000e+00)
  %i.blc = extractelement <2 x double> %i.bkr, i64 0
  %i.bld = extractelement <2 x double> %i.bkr, i64 1
  %i.ble = call double @llvm.fmuladd.f64(double %i.blc, double %i.bld, double %i.blb)
  %i.blf = extractelement <2 x double> %i.bkv, i64 0
  %i.blg = extractelement <2 x double> %i.bkv, i64 1
  %i.blh = call double @llvm.fmuladd.f64(double %i.blf, double %i.blg, double %i.ble)
  %sqrt.us.us.us.us.us.us.us.us.us.i = call nnan double @llvm.sqrt.f64(double %i.bkx)
  %i.bli = fdiv nnan double 1.000000e+00, %sqrt.us.us.us.us.us.us.us.us.us.i
  %i.blj = fmul double %i.blh, %i.bli
  %i.blk = fptrunc double %i.blj to float
  br label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i: ; preds = %bb.bn, %bb.bm
  %.026.i.us.us.us.us.us.us.us.us.us.i = phi float [ %i.blk, %bb.bn ], [ 1.000000e+00, %bb.bm ] ; 3 uses
  %i.bll = fcmp ogt float %.026.i.us.us.us.us.us.us.us.us.us.i, 1.000000e+00
  %i.blm = fcmp olt float %.026.i.us.us.us.us.us.us.us.us.us.i, -1.000000e+00
  %..026.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.blm, float -1.000000e+00, float %.026.i.us.us.us.us.us.us.us.us.us.i
  %.027.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bll, float 1.000000e+00, float %..026.i.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.bln = fpext float %.027.i.us.us.us.us.us.us.us.us.us.i to double
  %i.blo = fadd double %i.bln, -1.000000e+00
  %i.blp = fcmp ogt double %i.blo, 1.000000e-15
  br i1 %i.blp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.blq = extractelement <2 x double> %i.bkv, i64 0
  %i.blr = extractelement <2 x double> %i.bkv, i64 1
  %i.bls = extractelement <2 x double> %i.bkr, i64 0
  %i.blt = extractelement <2 x double> %i.bkr, i64 1
  %i.blu = extractelement <2 x double> %i.bko, i64 0
  %i.blv = extractelement <2 x double> %i.bko, i64 1
  %i.blw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bkf, i32 noundef %i.bkg, double noundef %i.blu, double noundef %i.bls, double noundef %i.blq, double noundef %i.blv, double noundef %i.blt, double noundef %i.blr) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.blx = call noundef float @_Z9LegendrePfj(float noundef %.027.i.us.us.us.us.us.us.us.us.us.i, i32 noundef %.0110.i)
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv249.i192 ; 2 uses
  %i.blz = load float, ptr %i.bly, align 4, !tbaa !24
  %i.bma = fadd float %i.blx, %i.blz
  store float %i.bma, ptr %i.bly, align 4, !tbaa !24
  %indvars.iv.next250.i194 = add nuw nsw i64 %indvars.iv249.i192, 1 ; 2 uses
  %exitcond253.not.i195 = icmp eq i64 %indvars.iv.next250.i194, %i.ap
  br i1 %exitcond253.not.i195, label %.critedge.us.us.us.us.us.i, label %bb.bl, !llvm.loop !202

.critedge.us.us.us.us.us.i:                       ; preds = %bb.bp, %bb.bl
  %indvars.iv.next255.i193 = add nuw nsw i64 %indvars.iv254.i191, %i.bkb ; 2 uses
  %i.bmb = trunc nuw i64 %indvars.iv.next255.i193 to i32
  %i.bmc = icmp sgt i32 %3, %i.bmb
  %indvar.next.i = add i32 %indvar.i, 1
  br i1 %i.bmc, label %.lr.ph137.us.us.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph152.split.us.split.us.split.us.split.us.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  br i1 %i.ay, label %.lr.ph137.us.us.us.us.us175.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i

.lr.ph137.us.us.us.us.us175.preheader.i:          ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  %i.bmd = mul i32 %.0.i, 3
  %i.bme = zext nneg i32 %.0.i to i64             ; 2 uses
  br label %.lr.ph137.us.us.us.us.us175.i

.lr.ph137.us.us.us.us.us175.i:                    ; preds = %.critedge.us.us.us.us.us177.i, %.lr.ph137.us.us.us.us.us175.preheader.i
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %.critedge.us.us.us.us.us177.i ], [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.critedge.us.us.us.us.us177.i ], [ %i.az, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %.critedge.us.us.us.us.us177.i ], [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %i.bmf = trunc nuw i64 %indvars.iv299 to i32
  %i.bmg = mul i32 %i.bmd, %i.bmf
  %i.bmh = zext i32 %i.bmg to i64
  %i.bmi = shl nuw nsw i64 %i.bmh, 2
  %scevgep227.i = getelementptr i8, ptr %i.ej, i64 %i.bmi ; 3 uses
  %.sroa.4269.0.scevgep227.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep227.i, i64 4
  %.sroa.5270.0.scevgep227.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep227.i, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph137.us.us.us.us.us175.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %bb.br ], [ 0, %.lr.ph137.us.us.us.us.us175.i ] ; 4 uses
  %exitcond298.not = icmp eq i64 %indvars.iv232.i, %indvars.iv296
  br i1 %exitcond298.not, label %.critedge.us.us.us.us.us177.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bmj = add nuw nsw i64 %indvars.iv232.i, %indvars.iv239.i
  %i.bmk = mul i64 %i.bmj, 12
  %i.bml = and i64 %i.bmk, 17179869180
  %scevgep228.i = getelementptr i8, ptr %i.ej, i64 %i.bml ; 3 uses
  %.sroa.0268.0.copyload.i = load float, ptr %scevgep227.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4269.0.copyload.i = load float, ptr %.sroa.4269.0.scevgep227.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5270.0.copyload.i = load float, ptr %.sroa.5270.0.scevgep227.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.0265.0.copyload.i = load float, ptr %scevgep228.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4266.0.scevgep228.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep228.i, i64 4
  %.sroa.4266.0.copyload.i = load float, ptr %.sroa.4266.0.scevgep228.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5267.0.scevgep228.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep228.i, i64 8
  %.sroa.5267.0.copyload.i = load float, ptr %.sroa.5267.0.scevgep228.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %i.bmm = fneg float %.sroa.4266.0.copyload.i
  %i.bmn = fmul float %.sroa.5270.0.copyload.i, %i.bmm
  %i.bmo = call float @llvm.fmuladd.f32(float %.sroa.4269.0.copyload.i, float %.sroa.5267.0.copyload.i, float %i.bmn) ; 2 uses
  %i.bmp = fneg float %.sroa.5267.0.copyload.i
  %i.bmq = fmul float %.sroa.0268.0.copyload.i, %i.bmp
  %i.bmr = call float @llvm.fmuladd.f32(float %.sroa.5270.0.copyload.i, float %.sroa.0265.0.copyload.i, float %i.bmq) ; 2 uses
  %i.bms = fneg float %.sroa.0265.0.copyload.i
  %i.bmt = fmul float %.sroa.4269.0.copyload.i, %i.bms
  %i.bmu = call float @llvm.fmuladd.f32(float %.sroa.0268.0.copyload.i, float %.sroa.4266.0.copyload.i, float %i.bmt) ; 2 uses
  %i.bmv = fmul float %i.bmr, %i.bmr
  %i.bmw = call float @llvm.fmuladd.f32(float %i.bmo, float %i.bmo, float %i.bmv)
  %i.bmx = call noundef float @llvm.fmuladd.f32(float %i.bmu, float %i.bmu, float %i.bmw)
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv232.i ; 2 uses
  %i.bmz = load float, ptr %i.bmy, align 4, !tbaa !24
  %i.bna = fadd float %i.bmz, %i.bmx
  store float %i.bna, ptr %i.bmy, align 4, !tbaa !24
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %i.ap
  br i1 %exitcond236.not.i, label %.critedge.us.us.us.us.us177.i, label %bb.bq, !llvm.loop !202

.critedge.us.us.us.us.us177.i:                    ; preds = %bb.br, %bb.bq
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, %i.bme ; 2 uses
  %i.bnb = icmp samesign ult i64 %indvars.iv.next240.i, %i.az
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1
  %indvars.iv.next297 = sub i64 %indvars.iv296, %i.bme
  br i1 %i.bnb, label %.lr.ph137.us.us.us.us.us175.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph152.split.us.split.us.split.us.split.us.split.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  br i1 %.not155, label %.split.us174.i, label %.lr.ph137.us.us.us.us.preheader.i

.lr.ph137.us.us.us.us.preheader.i:                ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  %i.bnc = mul i32 %.0.i, 3
  %i.bnd = zext nneg i32 %.0.i to i64             ; 2 uses
  br label %.lr.ph137.us.us.us.us.i

.lr.ph137.us.us.us.us.i:                          ; preds = %.critedge.us.us.us.us.i, %.lr.ph137.us.us.us.us.preheader.i
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.critedge.us.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.critedge.us.us.us.us.i ], [ %i.az, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %indvars.iv222.i189 = phi i64 [ %indvars.iv.next223.i190, %.critedge.us.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %i.bne = trunc nuw i64 %indvars.iv293 to i32
  %i.bnf = mul i32 %i.bnc, %i.bne
  %i.bng = zext i32 %i.bnf to i64
  %i.bnh = shl nuw nsw i64 %i.bng, 2
  %scevgep.i = getelementptr i8, ptr %i.ej, i64 %i.bnh ; 3 uses
  %.sroa.4263.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %.sroa.5264.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph137.us.us.us.us.i
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %bb.bt ], [ 0, %.lr.ph137.us.us.us.us.i ] ; 4 uses
  %exitcond292.not = icmp eq i64 %indvars.iv215.i, %indvars.iv290
  br i1 %exitcond292.not, label %.critedge.us.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bni = add nuw nsw i64 %indvars.iv215.i, %indvars.iv222.i189
  %i.bnj = mul i64 %i.bni, 12
  %i.bnk = and i64 %i.bnj, 17179869180
  %scevgep211.i = getelementptr i8, ptr %i.ej, i64 %i.bnk ; 3 uses
  %.sroa.0262.0.copyload.i = load float, ptr %scevgep.i, align 4, !tbaa !24
  %.sroa.4263.0.copyload.i = load float, ptr %.sroa.4263.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5264.0.copyload.i = load float, ptr %.sroa.5264.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.0.0.copyload.i = load float, ptr %scevgep211.i, align 4, !tbaa !24
  %.sroa.4.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 4
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %i.bnl = fmul float %.sroa.4263.0.copyload.i, %.sroa.4.0.copyload.i
  %i.bnm = call float @llvm.fmuladd.f32(float %.sroa.0262.0.copyload.i, float %.sroa.0.0.copyload.i, float %i.bnl)
  %i.bnn = call noundef float @llvm.fmuladd.f32(float %.sroa.5264.0.copyload.i, float %.sroa.5.0.copyload.i, float %i.bnm)
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv215.i ; 2 uses
  %i.bnp = load float, ptr %i.bno, align 4, !tbaa !24
  %i.bnq = fadd float %i.bnp, %i.bnn
  store float %i.bnq, ptr %i.bno, align 4, !tbaa !24
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next216.i, %i.ap
  br i1 %exitcond219.not.i, label %.critedge.us.us.us.us.i, label %bb.bs, !llvm.loop !202

.critedge.us.us.us.us.i:                          ; preds = %bb.bt, %bb.bs
  %indvars.iv.next223.i190 = add nuw nsw i64 %indvars.iv222.i189, %i.bnd ; 2 uses
  %i.bnr = icmp samesign ult i64 %indvars.iv.next223.i190, %i.az
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1
  %indvars.iv.next291 = sub i64 %indvars.iv290, %i.bnd
  br i1 %i.bnr, label %.lr.ph137.us.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph137.us.us.us.i:                             ; preds = %.critedge.us.us.us.i, %.lr.ph137.us.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 2 uses
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %.critedge.us.us.us.i ], [ %i.az, %.lr.ph137.us.us.us.preheader.i ] ; 3 uses
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 3 uses
  %i.bns = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv208.i ; 3 uses
  %invariant.gep368 = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv208.i ; 2 uses
  %i.bnt = call i64 @llvm.umin.i64(i64 %i.bm, i64 %indvars.iv287) ; 2 uses
  %i.bnu = add nsw i64 %i.bnt, 1                  ; 3 uses
  %min.iters.check1386 = icmp ult i64 %i.bnu, 33
  br i1 %min.iters.check1386, label %scalar.ph1385.preheader, label %vector.memcheck1387

vector.memcheck1387:                              ; preds = %.lr.ph137.us.us.us.i
  %i.bnv = shl i64 %i.bnt, 2                      ; 2 uses
  %i.bnw = getelementptr i8, ptr %scevgep1384, i64 %i.bnv ; 2 uses
  %i.bnx = mul i64 %indvar, %i.bi
  %i.bny = getelementptr i8, ptr %i.ej, i64 %i.bnx
  %i.bnz = getelementptr i8, ptr %i.bny, i64 4
  %i.boa = getelementptr i8, ptr %i.bnz, i64 %i.bnv
  %bound01388 = icmp ult ptr %i.ai, %i.boa
  %bound11389 = icmp ult ptr %i.bns, %i.bnw
  %found.conflict1390 = and i1 %bound01388, %bound11389
  %bound11392 = icmp ult ptr %i.ej, %i.bnw
  %found.conflict1393 = and i1 %bound01391.a, %bound11392
  %conflict.rdx1394 = or i1 %found.conflict1390, %found.conflict1393
  br i1 %conflict.rdx1394, label %scalar.ph1385.preheader, label %vector.ph1395

vector.ph1395:                                    ; preds = %vector.memcheck1387
  %i.bob = and i64 %i.bnu, 31                     ; 2 uses
  %i.boc = icmp eq i64 %i.bob, 0
  %i.bod = select i1 %i.boc, i64 32, i64 %i.bob
  %n.vec1396 = sub i64 %i.bnu, %i.bod             ; 2 uses
  %i.boe = load float, ptr %i.bns, align 4, !tbaa !24, !alias.scope !266
  %broadcast.splatinsert1403 = insertelement <8 x float> poison, float %i.boe, i64 0
  %broadcast.splat1404 = shufflevector <8 x float> %broadcast.splatinsert1403, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1395
  %index1398 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1409, %vector.body1397 ] ; 3 uses
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep368, i64 %index1398 ; 4 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 32
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bof, i64 64
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bof, i64 96
  %wide.load1399 = load <8 x float>, ptr %i.bof, align 4, !tbaa !24, !alias.scope !267
  %wide.load1400 = load <8 x float>, ptr %i.bog, align 4, !tbaa !24, !alias.scope !267
  %wide.load1401 = load <8 x float>, ptr %i.boh, align 4, !tbaa !24, !alias.scope !267
  %wide.load1402 = load <8 x float>, ptr %i.boi, align 4, !tbaa !24, !alias.scope !267
  %i.boj = fcmp oeq <8 x float> %broadcast.splat1404, %wide.load1399
  %i.bok = fcmp oeq <8 x float> %broadcast.splat1404, %wide.load1400
  %i.bol = fcmp oeq <8 x float> %broadcast.splat1404, %wide.load1401
  %i.bom = fcmp oeq <8 x float> %broadcast.splat1404, %wide.load1402
  %i.bon = uitofp <8 x i1> %i.boj to <8 x float>
  %i.boo = uitofp <8 x i1> %i.bok to <8 x float>
  %i.bop = uitofp <8 x i1> %i.bol to <8 x float>
  %i.boq = uitofp <8 x i1> %i.bom to <8 x float>
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index1398 ; 5 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 32 ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bor, i64 64 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bor, i64 96 ; 2 uses
  %wide.load1405 = load <8 x float>, ptr %i.bor, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %wide.load1406 = load <8 x float>, ptr %i.bos, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %wide.load1407 = load <8 x float>, ptr %i.bot, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %wide.load1408 = load <8 x float>, ptr %i.bou, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %i.bov = fadd <8 x float> %wide.load1405, %i.bon
  %i.bow = fadd <8 x float> %wide.load1406, %i.boo
  %i.box = fadd <8 x float> %wide.load1407, %i.bop
  %i.boy = fadd <8 x float> %wide.load1408, %i.boq
  store <8 x float> %i.bov, ptr %i.bor, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  store <8 x float> %i.bow, ptr %i.bos, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  store <8 x float> %i.box, ptr %i.bot, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  store <8 x float> %i.boy, ptr %i.bou, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %index.next1409 = add nuw i64 %index1398, 32    ; 2 uses
  %i.boz = icmp eq i64 %index.next1409, %n.vec1396
  br i1 %i.boz, label %scalar.ph1385.preheader, label %vector.body1397, !llvm.loop !208

scalar.ph1385.preheader:                          ; preds = %vector.body1397, %vector.memcheck1387, %.lr.ph137.us.us.us.i
  %indvars.iv203.i.ph = phi i64 [ 0, %vector.memcheck1387 ], [ 0, %.lr.ph137.us.us.us.i ], [ %n.vec1396, %vector.body1397 ]
  br label %scalar.ph1385

scalar.ph1385:                                    ; preds = %scalar.ph1385.preheader, %bb.bu
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i, %bb.bu ], [ %indvars.iv203.i.ph, %scalar.ph1385.preheader ] ; 4 uses
  %exitcond289.not = icmp eq i64 %indvars.iv203.i, %indvars.iv287
  br i1 %exitcond289.not, label %.critedge.us.us.us.i, label %bb.bu

bb.bu:                                            ; preds = %scalar.ph1385
  %i.bpa = load float, ptr %i.bns, align 4, !tbaa !24
  %gep369 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep368, i64 %indvars.iv203.i
  %i.bpb = load float, ptr %gep369, align 4, !tbaa !24
  %i.bpc = fcmp oeq float %i.bpa, %i.bpb
  %i.bpd = uitofp i1 %i.bpc to float
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv203.i ; 2 uses
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !24
  %i.bpg = fadd float %i.bpf, %i.bpd
  store float %i.bpg, ptr %i.bpe, align 4, !tbaa !24
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %i.ap
  br i1 %exitcond207.not.i, label %.critedge.us.us.us.i, label %scalar.ph1385, !llvm.loop !209

.critedge.us.us.us.i:                             ; preds = %bb.bu, %scalar.ph1385
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, %i.bjy ; 2 uses
  %i.bph = icmp samesign ult i64 %indvars.iv.next209.i, %i.az
  %indvars.iv.next288 = sub i64 %indvars.iv287, %i.bjy
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bph, label %.lr.ph137.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph137.us.us.i:                                ; preds = %.critedge.us.us.i, %.lr.ph137.us.us.preheader.i
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.critedge.us.us.i ], [ %i.az, %.lr.ph137.us.us.preheader.i ] ; 2 uses
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %.critedge.us.us.i ], [ 0, %.lr.ph137.us.us.preheader.i ] ; 3 uses
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv200.i
  %invariant.gep366 = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv200.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph137.us.us.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %bb.bw ], [ 0, %.lr.ph137.us.us.i ] ; 4 uses
  %exitcond286.not = icmp eq i64 %indvars.iv195.i, %indvars.iv284
  br i1 %exitcond286.not, label %.critedge.us.us.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !24
  %gep367 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep366, i64 %indvars.iv195.i
  %i.bpk = load float, ptr %gep367, align 4, !tbaa !24
  %i.bpl = fsub float %i.bpj, %i.bpk
  %i.bpm = call noundef float @cosf(float noundef %i.bpl) #16
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv195.i ; 2 uses
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !24
  %i.bpp = fadd float %i.bpm, %i.bpo
  store float %i.bpp, ptr %i.bpn, align 4, !tbaa !24
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %i.ap
  br i1 %exitcond199.not.i, label %.critedge.us.us.i, label %bb.bv, !llvm.loop !202

.critedge.us.us.i:                                ; preds = %bb.bw, %bb.bv
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, %i.bjx ; 2 uses
  %i.bpq = icmp samesign ult i64 %indvars.iv.next201.i, %i.az
  %indvars.iv.next285 = sub i64 %indvars.iv284, %i.bjx
  br i1 %i.bpq, label %.lr.ph137.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph137.us.i:                                   ; preds = %.critedge.us.i, %.lr.ph137.us.preheader.i
  %indvar1427 = phi i64 [ %indvar.next1428, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.us.i ], [ %i.az, %.lr.ph137.us.preheader.i ] ; 3 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 3 uses
  %i.bpr = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv192.i ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.bps = call i64 @llvm.umin.i64(i64 %i.bl, i64 %indvars.iv) ; 2 uses
  %i.bpt = add nsw i64 %i.bps, 1                  ; 3 uses
  %min.iters.check1432 = icmp ult i64 %i.bpt, 33
  br i1 %min.iters.check1432, label %scalar.ph1431.preheader, label %vector.memcheck1433

vector.memcheck1433:                              ; preds = %.lr.ph137.us.i
  %i.bpu = shl i64 %i.bps, 2                      ; 2 uses
  %i.bpv = getelementptr i8, ptr %scevgep1384, i64 %i.bpu ; 2 uses
  %i.bpw = mul i64 %indvar1427, %i.bk
  %i.bpx = getelementptr i8, ptr %i.ej, i64 %i.bpw
  %i.bpy = getelementptr i8, ptr %i.bpx, i64 4
  %i.bpz = getelementptr i8, ptr %i.bpy, i64 %i.bpu
  %bound01434 = icmp ult ptr %i.ai, %i.bpz
  %bound11435 = icmp ult ptr %i.bpr, %i.bpv
  %found.conflict1436 = and i1 %bound01434, %bound11435
  %bound11438 = icmp ult ptr %i.ej, %i.bpv
  %found.conflict1439 = and i1 %bound01437, %bound11438
  %conflict.rdx1440 = or i1 %found.conflict1436, %found.conflict1439
  br i1 %conflict.rdx1440, label %scalar.ph1431.preheader, label %vector.ph1441

vector.ph1441:                                    ; preds = %vector.memcheck1433
  %i.bqa = and i64 %i.bpt, 31                     ; 2 uses
  %i.bqb = icmp eq i64 %i.bqa, 0
  %i.bqc = select i1 %i.bqb, i64 32, i64 %i.bqa
  %n.vec1442 = sub i64 %i.bpt, %i.bqc             ; 2 uses
  %i.bqd = load float, ptr %i.bpr, align 4, !tbaa !24, !alias.scope !270
  %broadcast.splatinsert1453 = insertelement <8 x float> poison, float %i.bqd, i64 0
  %broadcast.splat1454 = shufflevector <8 x float> %broadcast.splatinsert1453, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %vector.ph1441
  %index1444 = phi i64 [ 0, %vector.ph1441 ], [ %index.next1455, %vector.body1443 ] ; 3 uses
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index1444 ; 4 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 32
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqe, i64 64
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqe, i64 96
  %wide.load1445 = load <8 x float>, ptr %i.bqe, align 4, !tbaa !24, !alias.scope !271
  %wide.load1446 = load <8 x float>, ptr %i.bqf, align 4, !tbaa !24, !alias.scope !271
  %wide.load1447 = load <8 x float>, ptr %i.bqg, align 4, !tbaa !24, !alias.scope !271
  %wide.load1448 = load <8 x float>, ptr %i.bqh, align 4, !tbaa !24, !alias.scope !271
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index1444 ; 5 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 32 ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqi, i64 64 ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqi, i64 96 ; 2 uses
  %wide.load1449 = load <8 x float>, ptr %i.bqi, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %wide.load1450 = load <8 x float>, ptr %i.bqj, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %wide.load1451 = load <8 x float>, ptr %i.bqk, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %wide.load1452 = load <8 x float>, ptr %i.bql, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %i.bqm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1454, <8 x float> %wide.load1445, <8 x float> %wide.load1449)
  %i.bqn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1454, <8 x float> %wide.load1446, <8 x float> %wide.load1450)
  %i.bqo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1454, <8 x float> %wide.load1447, <8 x float> %wide.load1451)
  %i.bqp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1454, <8 x float> %wide.load1448, <8 x float> %wide.load1452)
  store <8 x float> %i.bqm, ptr %i.bqi, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  store <8 x float> %i.bqn, ptr %i.bqj, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  store <8 x float> %i.bqo, ptr %i.bqk, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  store <8 x float> %i.bqp, ptr %i.bql, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %index.next1455 = add nuw i64 %index1444, 32    ; 2 uses
  %i.bqq = icmp eq i64 %index.next1455, %n.vec1442
  br i1 %i.bqq, label %scalar.ph1431.preheader, label %vector.body1443, !llvm.loop !214

scalar.ph1431.preheader:                          ; preds = %vector.body1443, %vector.memcheck1433, %.lr.ph137.us.i
  %indvars.iv.i186.ph = phi i64 [ 0, %vector.memcheck1433 ], [ 0, %.lr.ph137.us.i ], [ %n.vec1442, %vector.body1443 ]
  br label %scalar.ph1431

scalar.ph1431:                                    ; preds = %scalar.ph1431.preheader, %bb.bx
  %indvars.iv.i186 = phi i64 [ %indvars.iv.next.i187, %bb.bx ], [ %indvars.iv.i186.ph, %scalar.ph1431.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i186, %indvars.iv
  br i1 %exitcond.not, label %.critedge.us.i, label %bb.bx

bb.bx:                                            ; preds = %scalar.ph1431
  %i.bqr = load float, ptr %i.bpr, align 4, !tbaa !24
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.i186
  %i.bqs = load float, ptr %gep, align 4, !tbaa !24
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i186 ; 2 uses
  %i.bqu = load float, ptr %i.bqt, align 4, !tbaa !24
  %i.bqv = call float @llvm.fmuladd.f32(float %i.bqr, float %i.bqs, float %i.bqu)
  store float %i.bqv, ptr %i.bqt, align 4, !tbaa !24
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %i.ap
  br i1 %exitcond.not.i188, label %.critedge.us.i, label %scalar.ph1431, !llvm.loop !215

.critedge.us.i:                                   ; preds = %bb.bx, %scalar.ph1431
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, %i.bjv ; 2 uses
  %i.bqw = icmp samesign ult i64 %indvars.iv.next193.i, %i.az
  %indvars.iv.next = sub i64 %indvars.iv, %i.bjv
  %indvar.next1428 = add i64 %indvar1427, 1
  br i1 %i.bqw, label %.lr.ph137.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph182.i184:                                   ; preds = %.critedge.us.i, %.critedge.us.us.i, %.critedge.us.us.us.i, %.critedge.us.us.us.us.i, %.critedge.us.us.us.us.us177.i, %.critedge.us.us.us.us.us.i, %.preheader131.i
  %i.bqx = add i32 %.0.i, %3                      ; 6 uses
  %i.bqy = sub i64 %i.aj, %i.ek
  %diff.check1354 = icmp ugt i64 %i.bqy, -32
  %or.cond1461 = select i1 %min.iters.check1352, i1 true, i1 %diff.check1354
  br i1 %or.cond1461, label %scalar.ph1351.preheader, label %vector.ph1355

vector.ph1355:                                    ; preds = %.lr.ph182.i184
  %broadcast.splatinsert1357 = insertelement <8 x i32> poison, i32 %i.bqx, i64 0
  %broadcast.splat1358 = shufflevector <8 x i32> %broadcast.splatinsert1357, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <8 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat1360 = shufflevector <8 x i32> %broadcast.splatinsert1359, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1355
  %index1362 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1365, %vector.body1361 ] ; 3 uses
  %vec.ind1363 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1355 ], [ %vec.ind.next1366, %vector.body1361 ] ; 2 uses
  %i.bqz = xor <8 x i32> %vec.ind1363, splat (i32 -1)
  %i.bra = add <8 x i32> %broadcast.splat1358, %i.bqz
  %i.brb = sdiv <8 x i32> %i.bra, %broadcast.splat1360
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index1362
  %wide.load1364 = load <8 x float>, ptr %i.brc, align 4, !tbaa !24
  %i.brd = sitofp <8 x i32> %i.brb to <8 x float>
  %i.bre = fdiv <8 x float> %wide.load1364, %i.brd
  %i.brf = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1362
  store <8 x float> %i.bre, ptr %i.brf, align 4, !tbaa !24
  %index.next1365 = add nuw i64 %index1362, 8     ; 2 uses
  %vec.ind.next1366 = add <8 x i32> %vec.ind1363, splat (i32 8)
  %i.brg = icmp eq i64 %index.next1365, %n.vec1356
  br i1 %i.brg, label %middle.block1367, label %vector.body1361, !llvm.loop !216

middle.block1367:                                 ; preds = %vector.body1361
  br i1 %cmp.n1368, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph1351.preheader

scalar.ph1351.preheader:                          ; preds = %.lr.ph182.i184, %middle.block1367
  %indvars.iv257.i.ph = phi i64 [ 0, %.lr.ph182.i184 ], [ %n.vec1356, %middle.block1367 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph1351.prol.loopexit, label %scalar.ph1351.prol

scalar.ph1351.prol:                               ; preds = %scalar.ph1351.preheader, %scalar.ph1351.prol
  %indvars.iv257.i.prol = phi i64 [ %indvars.iv.next258.i.prol, %scalar.ph1351.prol ], [ %indvars.iv257.i.ph, %scalar.ph1351.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1351.prol ], [ 0, %scalar.ph1351.preheader ]
  %i.brh = trunc nuw nsw i64 %indvars.iv257.i.prol to i32
  %i.bri = xor i32 %i.brh, -1
  %i.brj = add i32 %i.bqx, %i.bri
  %i.brk = sdiv i32 %i.brj, %.0.i
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv257.i.prol
  %i.brm = load float, ptr %i.brl, align 4, !tbaa !24
  %i.brn = sitofp i32 %i.brk to float
  %i.bro = fdiv float %i.brm, %i.brn
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv257.i.prol
  store float %i.bro, ptr %i.brp, align 4, !tbaa !24
  %indvars.iv.next258.i.prol = add nuw nsw i64 %indvars.iv257.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph1351.prol.loopexit, label %scalar.ph1351.prol, !llvm.loop !217

scalar.ph1351.prol.loopexit:                      ; preds = %scalar.ph1351.prol, %scalar.ph1351.preheader
  %indvars.iv257.i.unr = phi i64 [ %indvars.iv257.i.ph, %scalar.ph1351.preheader ], [ %indvars.iv.next258.i.prol, %scalar.ph1351.prol ]
  %i.brq = sub nsw i64 %indvars.iv257.i.ph, %i.ap
  %i.brr = icmp ugt i64 %i.brq, -4
  br i1 %i.brr, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph1351

.split.us174.i:                                   ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 242, ptr noundef nonnull @.str.40, i64 noundef %8) #17
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.split.us174.i
  unreachable

bb.bz:                                            ; preds = %.split.us174.i
  %i.brs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %common.resume

scalar.ph1351:                                    ; preds = %scalar.ph1351.prol.loopexit, %scalar.ph1351
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i.3, %scalar.ph1351 ], [ %indvars.iv257.i.unr, %scalar.ph1351.prol.loopexit ] ; 7 uses
  %i.brt = trunc nuw nsw i64 %indvars.iv257.i to i32
  %i.bru = xor i32 %i.brt, -1
  %i.brv = add i32 %i.bqx, %i.bru
  %i.brw = sdiv i32 %i.brv, %.0.i
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv257.i
  %i.bry = load float, ptr %i.brx, align 4, !tbaa !24
  %i.brz = sitofp i32 %i.brw to float
  %i.bsa = fdiv float %i.bry, %i.brz
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv257.i
  store float %i.bsa, ptr %i.bsb, align 4, !tbaa !24
  %indvars.iv.next258.i = add nuw nsw i64 %indvars.iv257.i, 1 ; 3 uses
  %i.bsc = trunc nuw nsw i64 %indvars.iv.next258.i to i32
  %i.bsd = xor i32 %i.bsc, -1
  %i.bse = add i32 %i.bqx, %i.bsd
  %i.bsf = sdiv i32 %i.bse, %.0.i
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next258.i
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !24
  %i.bsi = sitofp i32 %i.bsf to float
  %i.bsj = fdiv float %i.bsh, %i.bsi
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next258.i
  store float %i.bsj, ptr %i.bsk, align 4, !tbaa !24
  %indvars.iv.next258.i.1 = add nuw nsw i64 %indvars.iv257.i, 2 ; 3 uses
  %i.bsl = trunc nuw nsw i64 %indvars.iv.next258.i.1 to i32
  %i.bsm = xor i32 %i.bsl, -1
  %i.bsn = add i32 %i.bqx, %i.bsm
  %i.bso = sdiv i32 %i.bsn, %.0.i
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next258.i.1
  %i.bsq = load float, ptr %i.bsp, align 4, !tbaa !24
  %i.bsr = sitofp i32 %i.bso to float
  %i.bss = fdiv float %i.bsq, %i.bsr
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next258.i.1
  store float %i.bss, ptr %i.bst, align 4, !tbaa !24
  %indvars.iv.next258.i.2 = add nuw nsw i64 %indvars.iv257.i, 3 ; 3 uses
  %i.bsu = trunc nuw nsw i64 %indvars.iv.next258.i.2 to i32
  %i.bsv = xor i32 %i.bsu, -1
  %i.bsw = add i32 %i.bqx, %i.bsv
  %i.bsx = sdiv i32 %i.bsw, %.0.i
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next258.i.2
  %i.bsz = load float, ptr %i.bsy, align 4, !tbaa !24
  %i.bta = sitofp i32 %i.bsx to float
  %i.btb = fdiv float %i.bsz, %i.bta
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next258.i.2
  store float %i.btb, ptr %i.btc, align 4, !tbaa !24
  %indvars.iv.next258.i.3 = add nuw nsw i64 %indvars.iv257.i, 4 ; 2 uses
  %exitcond261.not.i.3 = icmp eq i64 %indvars.iv.next258.i.3, %i.ap
  br i1 %exitcond261.not.i.3, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph1351, !llvm.loop !218

_ZL10do_ac_coreiiPfS_im.exit:                     ; preds = %scalar.ph1351.prol.loopexit, %scalar.ph1351, %middle.block1367, %bb.bk, %_ZL12do_four_coremiPfS_S_.exit
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!69 = distinct !{!69, !25, !27, !26}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !25, !26, !27}
!74 = distinct !{!74, !25, !26, !27}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !25, !26}
!77 = distinct !{!77, i1 false, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !25, !26, !27}
!81 = distinct !{!81, !25, !26, !27}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !25, !26}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !25, !26, !27}
!88 = distinct !{!88, !25, !26, !27}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !25, !26}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !25, !26, !27}
!95 = distinct !{!95, !25, !26, !27}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !25, !26}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !25, !26, !27}
!102 = distinct !{!102, !25, !26, !27}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !25, !26}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !25, !26, !27}
!109 = distinct !{!109, !25, !26, !27}
!110 = distinct !{!110, !29}
!111 = distinct !{!111, !25, !26}
!112 = distinct !{!112, i1 false, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !25, !26, !27}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !25, !26, !27}
!118 = distinct !{!118, !25, !26}
!119 = distinct !{!119, i1 false, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !25, !26, !27}
!123 = distinct !{!123, !25, !26, !27}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !25, !26}
!126 = distinct !{!126, i1 false, !"LVerDomain"}
!127 = distinct !{!127, !126}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !25, !26, !27}
!130 = distinct !{!130, !25, !26, !27}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !25, !26}
!133 = distinct !{!133, i1 false, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !25, !26, !27}
!137 = distinct !{!137, !25, !26, !27}
!138 = distinct !{!138, !29}
!139 = distinct !{!139, !25, !26}
!140 = distinct !{!140, !25, !26}
!141 = distinct !{!141, i1 false, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !25, !26, !27}
!145 = distinct !{!145, !25, !26, !27}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !25, !26}
!148 = distinct !{!148, i1 false, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !25, !26, !27}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !25, !26, !27}
!154 = distinct !{!154, !25, !26, !27}
!155 = distinct !{!155, !25, !27, !26}
!156 = distinct !{!156, i1 false, !"LVerDomain"}
!157 = distinct !{!157, !156}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !25, !26, !27}
!160 = distinct !{!160, !25, !26, !27}
!161 = distinct !{!161, !29}
!162 = distinct !{!162, !25, !26}
!163 = distinct !{!163, i1 false, !"LVerDomain"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !25, !26, !27}
!167 = distinct !{!167, !25, !26, !27}
!168 = distinct !{!168, !29}
!169 = distinct !{!169, !25, !26}
!170 = distinct !{!170, i1 false, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !25, !26, !27}
!174 = distinct !{!174, !25, !26, !27}
!175 = distinct !{!175, !29}
!176 = distinct !{!176, !25, !26}
!177 = distinct !{!177, i1 false, !"LVerDomain"}
!178 = distinct !{!178, !177}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !25, !26, !27}
!181 = distinct !{!181, !25, !26, !27}
!182 = distinct !{!182, !29}
!183 = distinct !{!183, !25, !26}
!184 = distinct !{!184, i1 false, !"LVerDomain"}
!185 = distinct !{!185, !184}
!186 = distinct !{!186, !184}
!187 = distinct !{!187, !25, !26, !27}
!188 = distinct !{!188, !25, !26, !27}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !25, !26}
!191 = distinct !{!191, i1 false, !"LVerDomain"}
!192 = distinct !{!192, !191}
!193 = distinct !{!193, !191}
!194 = distinct !{!194, !25, !26, !27}
!195 = distinct !{!195, !25, !26, !27}
!196 = distinct !{!196, !29}
!197 = distinct !{!197, !25, !26}
!198 = distinct !{!198, !25, !26, !27}
!199 = distinct !{!199, !25, !26, !27}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !25, !26}
!202 = distinct !{!202, !25}
!203 = distinct !{!203, !25}
!204 = distinct !{!204, i1 false, !"LVerDomain"}
!205 = distinct !{!205, !204}
!206 = distinct !{!206, !204}
!207 = distinct !{!207, !204}
!208 = distinct !{!208, !25, !26, !27}
!209 = distinct !{!209, !25, !26}
!210 = distinct !{!210, i1 false, !"LVerDomain"}
!211 = distinct !{!211, !210}
!212 = distinct !{!212, !210}
!213 = distinct !{!213, !210}
!214 = distinct !{!214, !25, !26, !27}
!215 = distinct !{!215, !25, !26}
!216 = distinct !{!216, !25, !26, !27}
!217 = distinct !{!217, !29}
!218 = distinct !{!218, !25, !26}
!219 = distinct !{!219, !25}
!220 = distinct !{!220, !25}
!221 = distinct !{!221, !29}
!222 = distinct !{!222, !25}
!223 = distinct !{!223, !25}
!224 = !{!23, !23, i64 0}
!225 = !{!58}
!226 = !{!59}
!227 = !{!60, !58}
!228 = !{!60}
!229 = !{!"branch_weights", i32 4, i32 12}
!230 = !{!71}
!231 = !{!72}
!232 = !{!78}
!233 = !{!79}
!234 = !{!85}
!235 = !{!86}
!236 = !{!92}
!237 = !{!93}
!238 = !{!99}
!239 = !{!100}
!240 = !{!106}
!241 = !{!107}
!242 = !{!113}
!243 = !{!114}
!244 = !{!120}
!245 = !{!121}
!246 = !{!127}
!247 = !{!128}
!248 = !{!134}
!249 = !{!135}
!250 = !{!142}
!251 = !{!143}
!252 = !{!149}
!253 = !{!150}
!254 = !{!157}
!255 = !{!158}
!256 = !{!164}
!257 = !{!165}
!258 = !{!171}
!259 = !{!172}
!260 = !{!178}
!261 = !{!179}
!262 = !{!185}
!263 = !{!186}
!264 = !{!192}
!265 = !{!193}
!266 = !{!205}
!267 = !{!206}
!268 = !{!207}
!269 = !{!206, !205}
!270 = !{!211}
!271 = !{!212}
!272 = !{!213}
!273 = !{!212, !211}
!274 = distinct !{!274, !25}
!275 = distinct !{!275, !25, !26, !27}
!276 = distinct !{!276, !25, !26, !27}
!277 = distinct !{!277, !25, !27, !26}
!278 = distinct !{!278, !25}
!279 = distinct !{!279, !25, !26, !27}
!280 = distinct !{!280, !25, !26, !27}
!281 = distinct !{!281, !29}
!282 = distinct !{!282, !25, !26}
!283 = distinct !{!283, !25}
!284 = distinct !{!284, !25}
!285 = distinct !{!285, !29}
!286 = distinct !{!286, !29}
!287 = distinct !{!287, !25, !26, !27}
!288 = distinct !{!288, !25, !26, !27}
!289 = distinct !{!289, !29}
!290 = distinct !{!290, !25, !26}
!291 = distinct !{!291, !25}
!292 = distinct !{!292, !25, !26, !27}
!293 = distinct !{!293, !25, !26, !27}
!294 = distinct !{!294, !25, !27, !26}
!295 = distinct !{!295, !25, !26, !27}
!296 = distinct !{!296, !25, !26, !27}
!297 = distinct !{!297, !25, !27, !26}
!298 = distinct !{!298, !25, !26, !27}
!299 = distinct !{!299, !25, !26, !27}
!300 = distinct !{!300, !25, !27, !26}
!301 = distinct !{!301, !25, !26, !27}
!302 = distinct !{!302, !25, !26, !27}
!303 = distinct !{!303, !25, !27, !26}
!304 = !{!45, !23, i64 8}
!305 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!306 = distinct !{!306, !25}
!307 = !{!7, !7, i64 0}
!308 = !{!14, !14, i64 0}
!309 = !{i64 0, i64 8, !12, i64 8, i64 1, !308, i64 12, i64 4, !307, i64 16, i64 8, !35, i64 24, i64 8, !12}
!310 = !{!16, !13, i64 0}
!311 = !{!16, !7, i64 20}
!312 = !{!16, !7, i64 16}
!313 = !{!16, !7, i64 8}
!314 = !{!16, !15, i64 28}
!315 = !{!16, !15, i64 32}
end_hunk_2
