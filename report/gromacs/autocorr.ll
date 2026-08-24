Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/autocorr?download=true
inline.NumInlined: 330
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0
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
  store ptr %0, ptr %i.b, align 8, !tbaa !9
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 24), align 8, !tbaa !12, !range !17, !noundef !18 ; 2 uses
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

common.resume:                                    ; preds = %bb.j, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.cd, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.bfz, %bb.bf ], [ %i.bri, %bb.cd ], [ %i.m, %bb.j ], [ %i.v, %bb.r ], [ %i.bxy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.buc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %common.resume

_Z11get_acfnoutv.exit:                            ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 12), align 4, !tbaa !19 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z11get_acfnoutv.exit
  %i.h = add nsw i32 %3, 1
  %i.i = sdiv i32 %i.h, 2                         ; 2 uses
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 12), align 4, !tbaa !19
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
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !20
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
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 601, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 133 uses
  %i.ah = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 153 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ak = ptrtoaddr ptr %i.ag to i64
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
  %i.az = zext i32 %3 to i64                      ; 198 uses
  %i.ba = add nsw i32 %3, -1                      ; 2 uses
  %or.cond170.i = and i1 %i.ar, %i.au
  %i.bb = shl nuw nsw i64 %i.az, 2                ; 4 uses
  %i.bc = zext nneg i32 %i.al to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bb
  %scevgep409 = getelementptr i8, ptr %i.ah, i64 %i.bb
  %i.bd = mul nuw nsw i64 %i.az, 12               ; 6 uses
  %i.be = shl nuw nsw i64 %i.az, 2                ; 12 uses
  %scevgep451 = getelementptr i8, ptr %i.ag, i64 %i.be ; 10 uses
  %scevgep490 = getelementptr i8, ptr %i.ah, i64 %i.be ; 8 uses
  %i.bf = add nsw i64 %i.bd, -4                   ; 3 uses
  %i.bg = add nsw i64 %i.bd, -8                   ; 2 uses
  %scevgep1236 = getelementptr i8, ptr %i.ah, i64 4
  %i.bh = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.bi = add nsw i64 %i.az, -1                   ; 6 uses
  %scevgep1270 = getelementptr i8, ptr %i.ah, i64 4
  %27 = add nsw i64 %i.ap, -1
  %28 = add nsw i64 %i.ap, -1
  %xtraiter1330 = and i64 %i.ap, 3                ; 3 uses
  %i.bj = icmp ult i32 %.0147.fr, 4
  %unroll_iter1333 = and i64 %i.ap, 2147483644
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1330, 0
  %lcmp.mod1332 = icmp ne i64 %xtraiter1330, 0
  %min.iters.check1207 = icmp ult i32 %3, 4
  %min.iters.check1209 = icmp ult i32 %3, 32
  %i.bk = and i64 %i.az, 28
  %n.vec1211 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1220 = icmp eq i64 %n.vec1211, %i.az
  %min.epilog.iters.check1225 = icmp eq i64 %i.bk, 0
  %n.vec1227 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1233 = icmp eq i64 %n.vec1227, %i.az
  %min.iters.check1176 = icmp ult i32 %3, 4
  %min.iters.check1178 = icmp ult i32 %3, 32
  %i.bl = and i64 %i.az, 28
  %n.vec1180 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1189 = icmp eq i64 %n.vec1180, %i.az
  %min.epilog.iters.check1194 = icmp eq i64 %i.bl, 0
  %n.vec1196 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1202 = icmp eq i64 %n.vec1196, %i.az
  %min.iters.check1144 = icmp ult i32 %3, 4
  %min.iters.check1146 = icmp ult i32 %3, 16
  %i.bm = and i64 %i.az, 12
  %n.vec1148 = and i64 %i.az, 2147483632          ; 4 uses
  %cmp.n1157 = icmp eq i64 %n.vec1148, %i.az
  %min.epilog.iters.check1162 = icmp eq i64 %i.bm, 0
  %n.vec1164 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1171 = icmp eq i64 %n.vec1164, %i.az
  %xtraiter1340 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1341.not = icmp eq i64 %xtraiter1340, 0
  %min.iters.check1116 = icmp ult i32 %3, 8
  %n.vec1118 = and i64 %i.az, 2147483640          ; 3 uses
  %cmp.n1128 = icmp eq i64 %n.vec1118, %i.az
  %min.iters.check1084 = icmp ult i32 %3, 9
  %min.iters.check1086 = icmp ult i32 %3, 33
  %i.bn = and i64 %i.az, 31                       ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 32, i64 %i.bn      ; 2 uses
  %n.vec1088 = sub nsw i64 %i.az, %i.bp           ; 3 uses
  %min.epilog.iters.check1105 = icmp samesign ult i64 %i.bp, 9
  %i.bq = and i64 %i.az, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 8, i64 %i.bq
  %n.vec1107 = sub nsw i64 %i.az, %i.bs           ; 2 uses
  %min.iters.check1045 = icmp ult i32 %3, 4
  %min.iters.check1047 = icmp ult i32 %3, 32
  %i.bt = and i64 %i.az, 28
  %n.vec1049 = and i64 %i.az, 4294967264          ; 4 uses
  %cmp.n1062 = icmp eq i64 %n.vec1049, %i.az
  %min.epilog.iters.check1067 = icmp eq i64 %i.bt, 0
  %n.vec1069 = and i64 %i.az, 4294967292          ; 3 uses
  %cmp.n1076 = icmp eq i64 %n.vec1069, %i.az
  %min.iters.check1008 = icmp ult i32 %3, 9
  %min.iters.check1010 = icmp ult i32 %3, 33
  %i.bu = and i64 %i.az, 31                       ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 32, i64 %i.bu      ; 2 uses
  %n.vec1012 = sub nsw i64 %i.az, %i.bw           ; 3 uses
  %min.epilog.iters.check1029 = icmp samesign ult i64 %i.bw, 9
  %i.bx = and i64 %i.az, 7                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 8, i64 %i.bx
  %n.vec1031 = sub nsw i64 %i.az, %i.bz           ; 2 uses
  %min.iters.check968 = icmp ult i32 %3, 4
  %min.iters.check970 = icmp ult i32 %3, 32
  %i.ca = and i64 %i.az, 28
  %n.vec972 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n985 = icmp eq i64 %n.vec972, %i.az
  %min.epilog.iters.check990 = icmp eq i64 %i.ca, 0
  %n.vec992 = and i64 %i.az, 4294967292           ; 3 uses
  %cmp.n999 = icmp eq i64 %n.vec992, %i.az
  %min.iters.check931 = icmp ult i32 %3, 9
  %min.iters.check933 = icmp ult i32 %3, 33
  %i.cb = and i64 %i.az, 31                       ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 32, i64 %i.cb      ; 2 uses
  %n.vec935 = sub nsw i64 %i.az, %i.cd            ; 3 uses
  %min.epilog.iters.check952 = icmp samesign ult i64 %i.cd, 9
  %i.ce = and i64 %i.az, 7                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 8, i64 %i.ce
  %n.vec954 = sub nsw i64 %i.az, %i.cg            ; 2 uses
  %min.iters.check891 = icmp ult i32 %3, 4
  %min.iters.check893 = icmp ult i32 %3, 32
  %i.ch = and i64 %i.az, 28
  %n.vec895 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n908 = icmp eq i64 %n.vec895, %i.az
  %min.epilog.iters.check913 = icmp eq i64 %i.ch, 0
  %n.vec915 = and i64 %i.az, 4294967292           ; 3 uses
  %cmp.n922 = icmp eq i64 %n.vec915, %i.az
  %min.iters.check872 = icmp ult i32 %3, 8
  %n.vec874 = and i64 %i.az, 2147483640           ; 3 uses
  %cmp.n883 = icmp eq i64 %n.vec874, %i.az
  %min.iters.check835 = icmp ult i32 %3, 4
  %min.iters.check837 = icmp ult i32 %3, 32
  %i.ci = and i64 %i.az, 28
  %n.vec839 = and i64 %i.az, 2147483616           ; 4 uses
  %broadcast.splatinsert840 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat841 = shufflevector <8 x i32> %broadcast.splatinsert840, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n851 = icmp eq i64 %n.vec839, %i.az
  %min.epilog.iters.check856 = icmp eq i64 %i.ci, 0
  %n.vec858 = and i64 %i.az, 2147483644           ; 3 uses
  %broadcast.splatinsert859 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat860 = shufflevector <4 x i32> %broadcast.splatinsert859, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n870 = icmp eq i64 %n.vec858, %i.az
  %min.iters.check804 = icmp ult i32 %3, 9
  %min.iters.check806 = icmp ult i32 %3, 33
  %i.cj = and i64 %i.az, 31                       ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = select i1 %i.ck, i64 32, i64 %i.cj      ; 2 uses
  %n.vec808 = sub nsw i64 %i.az, %i.cl            ; 3 uses
  %min.epilog.iters.check825 = icmp samesign ult i64 %i.cl, 9
  %i.cm = and i64 %i.az, 7                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 8, i64 %i.cm
  %n.vec827 = sub nsw i64 %i.az, %i.co            ; 2 uses
  %min.iters.check766 = icmp ult i32 %3, 4
  %min.iters.check768 = icmp ult i32 %3, 32
  %i.cp = and i64 %i.az, 28
  %n.vec770 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n783 = icmp eq i64 %n.vec770, %i.az
  %min.epilog.iters.check788 = icmp eq i64 %i.cp, 0
  %n.vec790 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n797 = icmp eq i64 %n.vec790, %i.az
  %min.iters.check730 = icmp ult i32 %3, 9
  %min.iters.check732 = icmp ult i32 %3, 33
  %i.cq = and i64 %i.az, 31                       ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 32, i64 %i.cq      ; 2 uses
  %n.vec734 = sub nsw i64 %i.az, %i.cs            ; 3 uses
  %min.epilog.iters.check751 = icmp samesign ult i64 %i.cs, 9
  %i.ct = and i64 %i.az, 7                        ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec753 = sub nsw i64 %i.az, %i.cv            ; 2 uses
  %min.iters.check691 = icmp ult i32 %3, 4
  %min.iters.check693 = icmp ult i32 %3, 32
  %i.cw = and i64 %i.az, 28
  %n.vec695 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n708 = icmp eq i64 %n.vec695, %i.az
  %min.epilog.iters.check713 = icmp eq i64 %i.cw, 0
  %n.vec715 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n722 = icmp eq i64 %n.vec715, %i.az
  %min.iters.check655 = icmp ult i32 %3, 9
  %min.iters.check657 = icmp ult i32 %3, 33
  %i.cx = and i64 %i.az, 31                       ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 32, i64 %i.cx      ; 2 uses
  %n.vec659 = sub nsw i64 %i.az, %i.cz            ; 3 uses
  %min.epilog.iters.check676 = icmp samesign ult i64 %i.cz, 9
  %i.da = and i64 %i.az, 7                        ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 8, i64 %i.da
  %n.vec678 = sub nsw i64 %i.az, %i.dc            ; 2 uses
  %min.iters.check616 = icmp ult i32 %3, 4
  %min.iters.check618 = icmp ult i32 %3, 32
  %i.dd = and i64 %i.az, 28
  %n.vec620 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n633 = icmp eq i64 %n.vec620, %i.az
  %min.epilog.iters.check638 = icmp eq i64 %i.dd, 0
  %n.vec640 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n647 = icmp eq i64 %n.vec640, %i.az
  %min.iters.check575 = icmp ult i32 %3, 9
  %min.iters.check577 = icmp ult i32 %3, 33
  %i.de = and i64 %i.az, 31                       ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 32, i64 %i.de      ; 2 uses
  %n.vec579 = sub nsw i64 %i.az, %i.dg            ; 3 uses
  %min.epilog.iters.check600 = icmp samesign ult i64 %i.dg, 9
  %i.dh = and i64 %i.az, 7                        ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 8, i64 %i.dh
  %n.vec602 = sub nsw i64 %i.az, %i.dj            ; 2 uses
  %min.iters.check537 = icmp ult i32 %3, 4
  %min.iters.check539 = icmp ult i32 %3, 32
  %i.dk = and i64 %i.az, 28
  %n.vec541 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n554 = icmp eq i64 %n.vec541, %i.az
  %min.epilog.iters.check559 = icmp eq i64 %i.dk, 0
  %n.vec561 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n568 = icmp eq i64 %n.vec561, %i.az
  %min.iters.check496 = icmp ult i32 %3, 9
  %min.iters.check498 = icmp ult i32 %3, 33
  %i.dl = and i64 %i.az, 31                       ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = select i1 %i.dm, i64 32, i64 %i.dl      ; 2 uses
  %n.vec500 = sub nsw i64 %i.az, %i.dn            ; 3 uses
  %min.epilog.iters.check521 = icmp samesign ult i64 %i.dn, 9
  %i.do = and i64 %i.az, 7                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %i.do
  %n.vec523 = sub nsw i64 %i.az, %i.dq            ; 2 uses
  %min.iters.check456 = icmp ult i32 %3, 4
  %min.iters.check458 = icmp ult i32 %3, 32
  %i.dr = and i64 %i.az, 28
  %n.vec460 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n473 = icmp eq i64 %n.vec460, %i.az
  %min.epilog.iters.check478 = icmp eq i64 %i.dr, 0
  %n.vec480 = and i64 %i.az, 2147483644           ; 3 uses
end_hunk_0
begin_hunk_1_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a
bb.bm:                                            ; preds = %bb.bl
  %i.bjr = mul nuw nsw i64 %i.bjp, 12
  %i.bjs = and i64 %i.bjr, 17179869180
  %scevgep249.i = getelementptr i8, ptr %i.eg, i64 %i.bjs ; 2 uses
  %.sroa.5280.0.copyload.i = load float, ptr %.sroa.5280.0.scevgep248.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5277.0.scevgep249.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep249.i, i64 8
  %.sroa.5277.0.copyload.i = load float, ptr %.sroa.5277.0.scevgep249.sroa_idx.i, align 4, !tbaa !24
  %i.bjt = load <2 x float>, ptr %scevgep248.i, align 4, !tbaa !24 ; 2 uses
  %i.bju = load <2 x float>, ptr %scevgep249.i, align 4, !tbaa !24 ; 2 uses
  %i.bjv = shufflevector <2 x float> %i.bjt, <2 x float> %i.bju, <2 x i32> <i32 0, i32 2>
  %i.bjw = fpext <2 x float> %i.bjv to <2 x double> ; 6 uses
  %i.bjx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bjw, <2 x double> %i.bjw, <2 x double> zeroinitializer)
  %i.bjy = shufflevector <2 x float> %i.bjt, <2 x float> %i.bju, <2 x i32> <i32 1, i32 3>
  %i.bjz = fpext <2 x float> %i.bjy to <2 x double> ; 6 uses
  %i.bka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bjz, <2 x double> %i.bjz, <2 x double> %i.bjx)
  %i.bkb = insertelement <2 x float> poison, float %.sroa.5280.0.copyload.i, i64 0
  %i.bkc = insertelement <2 x float> %i.bkb, float %.sroa.5277.0.copyload.i, i64 1
  %i.bkd = fpext <2 x float> %i.bkc to <2 x double> ; 6 uses
  %i.bke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bkd, <2 x double> %i.bkd, <2 x double> %i.bka) ; 2 uses
  %shift = shufflevector <2 x double> %i.bke, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1313 = fmul <2 x double> %i.bke, %shift
  %i.bkf = extractelement <2 x double> %foldExtExtBinop1313, i64 0 ; 2 uses
  %i.bkg = fcmp ogt double %i.bkf, 0.000000e+00
  br i1 %i.bkg, label %bb.bn, label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

bb.bn:                                            ; preds = %bb.bm
  %i.bkh = extractelement <2 x double> %i.bjw, i64 0
  %i.bki = extractelement <2 x double> %i.bjw, i64 1
  %i.bkj = call double @llvm.fmuladd.f64(double %i.bkh, double %i.bki, double 0.000000e+00)
  %i.bkk = extractelement <2 x double> %i.bjz, i64 0
  %i.bkl = extractelement <2 x double> %i.bjz, i64 1
  %i.bkm = call double @llvm.fmuladd.f64(double %i.bkk, double %i.bkl, double %i.bkj)
  %i.bkn = extractelement <2 x double> %i.bkd, i64 0
  %i.bko = extractelement <2 x double> %i.bkd, i64 1
  %i.bkp = call double @llvm.fmuladd.f64(double %i.bkn, double %i.bko, double %i.bkm)
  %i.bkq = call double @sqrt(double noundef %i.bkf) #16
  %i.bkr = fdiv double 1.000000e+00, %i.bkq
  %i.bks = fmul double %i.bkp, %i.bkr
  %i.bkt = fptrunc double %i.bks to float
  br label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i: ; preds = %bb.bn, %bb.bm
  %.026.i.us.us.us.us.us.us.us.us.us.i = phi float [ %i.bkt, %bb.bn ], [ 1.000000e+00, %bb.bm ] ; 3 uses
  %i.bku = fcmp ogt float %.026.i.us.us.us.us.us.us.us.us.us.i, 1.000000e+00
  %i.bkv = fcmp olt float %.026.i.us.us.us.us.us.us.us.us.us.i, -1.000000e+00
  %..026.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bkv, float -1.000000e+00, float %.026.i.us.us.us.us.us.us.us.us.us.i
  %.027.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bku, float 1.000000e+00, float %..026.i.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.bkw = fpext float %.027.i.us.us.us.us.us.us.us.us.us.i to double
  %i.bkx = fadd double %i.bkw, -1.000000e+00
  %i.bky = fcmp ogt double %i.bkx, 1.000000e-15
  br i1 %i.bky, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.bkz = extractelement <2 x double> %i.bkd, i64 0
  %i.bla = extractelement <2 x double> %i.bkd, i64 1
  %i.blb = extractelement <2 x double> %i.bjz, i64 0
  %i.blc = extractelement <2 x double> %i.bjz, i64 1
  %i.bld = extractelement <2 x double> %i.bjw, i64 0
  %i.ble = extractelement <2 x double> %i.bjw, i64 1
  %i.blf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bjl, i32 noundef %i.bjo, double noundef %i.bld, double noundef %i.blb, double noundef %i.bkz, double noundef %i.ble, double noundef %i.blc, double noundef %i.bla) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.blg = call noundef float @_Z9LegendrePfj(float noundef %.027.i.us.us.us.us.us.us.us.us.us.i, i32 noundef %.0110.i)
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv253.i ; 2 uses
  %i.bli = load float, ptr %i.blh, align 4, !tbaa !24
  %i.blj = fadd float %i.blg, %i.bli
  store float %i.blj, ptr %i.blh, align 4, !tbaa !24
  %indvars.iv.next254.i = add nuw nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %exitcond257.not.i = icmp eq i64 %indvars.iv.next254.i, %i.ap
  br i1 %exitcond257.not.i, label %.critedge.us.us.us.us.us.i, label %bb.bl, !llvm.loop !226

.lr.ph152.split.us.split.us.split.us.split.us.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  br i1 %i.ay, label %.lr.ph137.us.us.us.us.us175.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i

.lr.ph137.us.us.us.us.us175.preheader.i:          ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  %i.blk = mul i32 %.0.i, 3
  %i.bll = zext nneg i32 %.0.i to i64
  %i.blm = udiv i32 %i.ba, %.0.i
  %i.bln = add nuw nsw i32 %i.blm, 1
  %wide.trip.count246.i = zext nneg i32 %i.bln to i64
  br label %.lr.ph137.us.us.us.us.us175.i

.lr.ph137.us.us.us.us.us175.i:                    ; preds = %.critedge.us.us.us.us.us177.i, %.lr.ph137.us.us.us.us.us175.preheader.i
  %indvars.iv241.i = phi i64 [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ], [ %indvars.iv.next242.i, %.critedge.us.us.us.us.us177.i ] ; 2 uses
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ], [ %indvars.iv.next240.i, %.critedge.us.us.us.us.us177.i ] ; 2 uses
  %i.blo = trunc nuw nsw i64 %indvars.iv239.i to i32
  %i.blp = mul i32 %i.blk, %i.blo
  %i.blq = zext i32 %i.blp to i64
  %i.blr = shl nuw nsw i64 %i.blq, 2
  %scevgep229.i = getelementptr i8, ptr %i.eg, i64 %i.blr ; 3 uses
  %.sroa.4273.0.scevgep229.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep229.i, i64 4
  %.sroa.5274.0.scevgep229.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep229.i, i64 8
  br label %bb.bq

.critedge.us.us.us.us.us177.i:                    ; preds = %bb.br, %bb.bq
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, %i.bll
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond247.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count246.i
  br i1 %exitcond247.not.i, label %.lr.ph182.i184, label %.lr.ph137.us.us.us.us.us175.i, !llvm.loop !225

bb.bq:                                            ; preds = %bb.br, %.lr.ph137.us.us.us.us.us175.i
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %bb.br ], [ 0, %.lr.ph137.us.us.us.us.us175.i ] ; 3 uses
  %i.bls = add nuw nsw i64 %indvars.iv234.i, %indvars.iv241.i ; 2 uses
  %i.blt = icmp samesign ult i64 %i.bls, %i.az
  br i1 %i.blt, label %bb.br, label %.critedge.us.us.us.us.us177.i

bb.br:                                            ; preds = %bb.bq
  %i.blu = mul nuw nsw i64 %i.bls, 12
  %i.blv = and i64 %i.blu, 17179869180
  %scevgep230.i = getelementptr i8, ptr %i.eg, i64 %i.blv ; 3 uses
  %.sroa.0272.0.copyload.i = load float, ptr %scevgep229.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4273.0.copyload.i = load float, ptr %.sroa.4273.0.scevgep229.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5274.0.copyload.i = load float, ptr %.sroa.5274.0.scevgep229.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.0269.0.copyload.i = load float, ptr %scevgep230.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4270.0.scevgep230.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep230.i, i64 4
  %.sroa.4270.0.copyload.i = load float, ptr %.sroa.4270.0.scevgep230.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5271.0.scevgep230.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep230.i, i64 8
  %.sroa.5271.0.copyload.i = load float, ptr %.sroa.5271.0.scevgep230.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %i.blw = fneg float %.sroa.4270.0.copyload.i
  %i.blx = fmul float %.sroa.5274.0.copyload.i, %i.blw
  %i.bly = call float @llvm.fmuladd.f32(float %.sroa.4273.0.copyload.i, float %.sroa.5271.0.copyload.i, float %i.blx) ; 2 uses
  %i.blz = fneg float %.sroa.5271.0.copyload.i
  %i.bma = fmul float %.sroa.0272.0.copyload.i, %i.blz
  %i.bmb = call float @llvm.fmuladd.f32(float %.sroa.5274.0.copyload.i, float %.sroa.0269.0.copyload.i, float %i.bma) ; 2 uses
  %i.bmc = fneg float %.sroa.0269.0.copyload.i
  %i.bmd = fmul float %.sroa.4273.0.copyload.i, %i.bmc
  %i.bme = call float @llvm.fmuladd.f32(float %.sroa.0272.0.copyload.i, float %.sroa.4270.0.copyload.i, float %i.bmd) ; 2 uses
  %i.bmf = fmul float %i.bmb, %i.bmb
  %i.bmg = call float @llvm.fmuladd.f32(float %i.bly, float %i.bly, float %i.bmf)
  %i.bmh = call noundef float @llvm.fmuladd.f32(float %i.bme, float %i.bme, float %i.bmg)
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv234.i ; 2 uses
  %i.bmj = load float, ptr %i.bmi, align 4, !tbaa !24
  %i.bmk = fadd float %i.bmj, %i.bmh
  store float %i.bmk, ptr %i.bmi, align 4, !tbaa !24
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %i.ap
  br i1 %exitcond238.not.i, label %.critedge.us.us.us.us.us177.i, label %bb.bq, !llvm.loop !226

.lr.ph152.split.us.split.us.split.us.split.us.split.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  br i1 %.not155, label %.split.us174.i, label %.lr.ph137.us.us.us.us.preheader.i

.lr.ph137.us.us.us.us.preheader.i:                ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  %i.bml = mul i32 %.0.i, 3
  %i.bmm = zext nneg i32 %.0.i to i64
  %i.bmn = udiv i32 %i.ba, %.0.i
  %i.bmo = add nuw nsw i32 %i.bmn, 1
  %wide.trip.count227.i = zext nneg i32 %i.bmo to i64
  br label %.lr.ph137.us.us.us.us.i

.lr.ph137.us.us.us.us.i:                          ; preds = %.critedge.us.us.us.us.i, %.lr.ph137.us.us.us.us.preheader.i
  %indvars.iv222.i189 = phi i64 [ 0, %.lr.ph137.us.us.us.us.preheader.i ], [ %indvars.iv.next223.i190, %.critedge.us.us.us.us.i ] ; 2 uses
  %indvars.iv220.i = phi i64 [ 0, %.lr.ph137.us.us.us.us.preheader.i ], [ %indvars.iv.next221.i, %.critedge.us.us.us.us.i ] ; 2 uses
  %i.bmp = trunc nuw nsw i64 %indvars.iv220.i to i32
  %i.bmq = mul i32 %i.bml, %i.bmp
  %i.bmr = zext i32 %i.bmq to i64
  %i.bms = shl nuw nsw i64 %i.bmr, 2
  %scevgep.i = getelementptr i8, ptr %i.eg, i64 %i.bms ; 3 uses
  %.sroa.4267.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %.sroa.5268.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8
  br label %bb.bs

.critedge.us.us.us.us.i:                          ; preds = %bb.bt, %bb.bs
  %indvars.iv.next223.i190 = add nuw nsw i64 %indvars.iv222.i189, %i.bmm
  %indvars.iv.next221.i = add nuw nsw i64 %indvars.iv220.i, 1 ; 2 uses
  %exitcond228.not.i = icmp eq i64 %indvars.iv.next221.i, %wide.trip.count227.i
  br i1 %exitcond228.not.i, label %.lr.ph182.i184, label %.lr.ph137.us.us.us.us.i, !llvm.loop !225

bb.bs:                                            ; preds = %bb.bt, %.lr.ph137.us.us.us.us.i
  %indvars.iv215.i = phi i64 [ 0, %.lr.ph137.us.us.us.us.i ], [ %indvars.iv.next216.i, %bb.bt ] ; 3 uses
  %i.bmt = add nuw nsw i64 %indvars.iv215.i, %indvars.iv222.i189 ; 2 uses
  %i.bmu = icmp samesign ult i64 %i.bmt, %i.az
  br i1 %i.bmu, label %bb.bt, label %.critedge.us.us.us.us.i

bb.bt:                                            ; preds = %bb.bs
  %i.bmv = mul nuw nsw i64 %i.bmt, 12
  %i.bmw = and i64 %i.bmv, 17179869180
  %scevgep211.i = getelementptr i8, ptr %i.eg, i64 %i.bmw ; 3 uses
  %.sroa.0266.0.copyload.i = load float, ptr %scevgep.i, align 4, !tbaa !24
  %.sroa.4267.0.copyload.i = load float, ptr %.sroa.4267.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5268.0.copyload.i = load float, ptr %.sroa.5268.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.0.0.copyload.i = load float, ptr %scevgep211.i, align 4, !tbaa !24
  %.sroa.4.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 4
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %i.bmx = fmul float %.sroa.4267.0.copyload.i, %.sroa.4.0.copyload.i
  %i.bmy = call float @llvm.fmuladd.f32(float %.sroa.0266.0.copyload.i, float %.sroa.0.0.copyload.i, float %i.bmx)
  %i.bmz = call noundef float @llvm.fmuladd.f32(float %.sroa.5268.0.copyload.i, float %.sroa.5.0.copyload.i, float %i.bmy)
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv215.i ; 2 uses
  %i.bnb = load float, ptr %i.bna, align 4, !tbaa !24
  %i.bnc = fadd float %i.bnb, %i.bmz
  store float %i.bnc, ptr %i.bna, align 4, !tbaa !24
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next216.i, %i.ap
  br i1 %exitcond219.not.i, label %.critedge.us.us.us.us.i, label %bb.bs, !llvm.loop !226

.lr.ph137.us.us.us.i:                             ; preds = %.critedge.us.us.us.i, %.lr.ph137.us.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 4 uses
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 6 uses
  %29 = mul i64 %indvar, %i.bja
  %30 = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv208.i ; 3 uses
  %31 = call i64 @llvm.umax.i64(i64 %indvars.iv208.i, i64 %i.az)
  %i.bnd = sub i64 %31, %29
  %umin1249 = call i64 @llvm.umin.i64(i64 %28, i64 %i.bnd)
  %i.bne = add nsw i64 %umin1249, 1               ; 3 uses
  %min.iters.check1251 = icmp ult i64 %i.bne, 33
  br i1 %min.iters.check1251, label %scalar.ph1250.preheader, label %vector.memcheck1235

scalar.ph1250.preheader:                          ; preds = %vector.body1254, %vector.memcheck1235, %.lr.ph137.us.us.us.i
  %indvars.iv203.i.ph = phi i64 [ 0, %vector.memcheck1235 ], [ 0, %.lr.ph137.us.us.us.i ], [ %n.vec1253, %vector.body1254 ]
  br label %scalar.ph1250

vector.memcheck1235:                              ; preds = %.lr.ph137.us.us.us.i
  %i.bnf = mul i64 %i.bjb, %indvar
  %i.bng = getelementptr i8, ptr %i.eg, i64 %i.bnf
  %scevgep1238 = getelementptr i8, ptr %i.bng, i64 4
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv208.i, i64 %i.az)
  %i.bnh = mul i64 %indvar, %i.bja
  %i.bni = sub i64 %umax, %i.bnh
  %umin = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bni)
  %i.bnj = shl i64 %umin, 2                       ; 2 uses
  %scevgep1239 = getelementptr i8, ptr %scevgep1238, i64 %i.bnj
  %scevgep1237 = getelementptr i8, ptr %scevgep1236, i64 %i.bnj ; 2 uses
  %bound01241 = icmp ult ptr %i.ah, %scevgep1239
  %bound11242 = icmp ult ptr %30, %scevgep1237
  %found.conflict1243 = and i1 %bound01241, %bound11242
  %bound11245 = icmp ult ptr %i.eg, %scevgep1237
  %found.conflict1246 = and i1 %bound01244, %bound11245
  %conflict.rdx1247 = or i1 %found.conflict1243, %found.conflict1246
  br i1 %conflict.rdx1247, label %scalar.ph1250.preheader, label %vector.ph1252

vector.ph1252:                                    ; preds = %vector.memcheck1235
  %i.bnk = and i64 %i.bne, 31                     ; 2 uses
  %i.bnl = icmp eq i64 %i.bnk, 0
  %i.bnm = select i1 %i.bnl, i64 32, i64 %i.bnk
  %n.vec1253 = sub i64 %i.bne, %i.bnm             ; 2 uses
  %i.bnn = load float, ptr %30, align 4, !tbaa !24, !alias.scope !227
  %broadcast.splatinsert1260 = insertelement <8 x float> poison, float %i.bnn, i64 0
  %broadcast.splat1261 = shufflevector <8 x float> %broadcast.splatinsert1260, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep1414 = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv208.i
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1266, %vector.body1254 ] ; 3 uses
  %gep1415 = getelementptr [4 x i8], ptr %invariant.gep1414, i64 %index1255 ; 4 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %gep1415, i64 32
  %i.bnp = getelementptr inbounds nuw i8, ptr %gep1415, i64 64
  %i.bnq = getelementptr inbounds nuw i8, ptr %gep1415, i64 96
  %wide.load1256.a = load <8 x float>, ptr %gep1415, align 4, !tbaa !24, !alias.scope !230
  %wide.load1257.a = load <8 x float>, ptr %i.bno, align 4, !tbaa !24, !alias.scope !230
  %wide.load1258 = load <8 x float>, ptr %i.bnp, align 4, !tbaa !24, !alias.scope !230
  %wide.load1259 = load <8 x float>, ptr %i.bnq, align 4, !tbaa !24, !alias.scope !230
  %i.bnr = fcmp oeq <8 x float> %broadcast.splat1261, %wide.load1256.a
  %i.bns = fcmp oeq <8 x float> %broadcast.splat1261, %wide.load1257.a
  %i.bnt = fcmp oeq <8 x float> %broadcast.splat1261, %wide.load1258
  %i.bnu = fcmp oeq <8 x float> %broadcast.splat1261, %wide.load1259
  %i.bnv = uitofp <8 x i1> %i.bnr to <8 x float>
  %i.bnw = uitofp <8 x i1> %i.bns to <8 x float>
  %i.bnx = uitofp <8 x i1> %i.bnt to <8 x float>
  %i.bny = uitofp <8 x i1> %i.bnu to <8 x float>
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1255 ; 5 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 32 ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnz, i64 64 ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnz, i64 96 ; 2 uses
  %wide.load1262.a = load <8 x float>, ptr %i.bnz, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  %wide.load1263.a = load <8 x float>, ptr %i.boa, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  %wide.load1264 = load <8 x float>, ptr %i.bob, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  %wide.load1265 = load <8 x float>, ptr %i.boc, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  %i.bod = fadd <8 x float> %wide.load1262.a, %i.bnv
  %i.boe = fadd <8 x float> %wide.load1263.a, %i.bnw
  %i.bof = fadd <8 x float> %wide.load1264, %i.bnx
  %i.bog = fadd <8 x float> %wide.load1265, %i.bny
  store <8 x float> %i.bod, ptr %i.bnz, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  store <8 x float> %i.boe, ptr %i.boa, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  store <8 x float> %i.bof, ptr %i.bob, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  store <8 x float> %i.bog, ptr %i.boc, align 4, !tbaa !24, !alias.scope !232, !noalias !234
  %index.next1266 = add nuw i64 %index1255, 32    ; 2 uses
  %i.boh = icmp eq i64 %index.next1266, %n.vec1253
  br i1 %i.boh, label %scalar.ph1250.preheader, label %vector.body1254, !llvm.loop !235

.critedge.us.us.us.i:                             ; preds = %bb.bu, %scalar.ph1250
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, %i.bja ; 2 uses
  %i.boi = icmp samesign ult i64 %indvars.iv.next209.i, %i.az
  %indvar.next = add i64 %indvar, 1
  br i1 %i.boi, label %.lr.ph137.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !225

scalar.ph1250:                                    ; preds = %scalar.ph1250.preheader, %bb.bu
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i, %bb.bu ], [ %indvars.iv203.i.ph, %scalar.ph1250.preheader ] ; 3 uses
  %i.boj = add nuw nsw i64 %indvars.iv203.i, %indvars.iv208.i ; 2 uses
  %i.bok = icmp samesign ult i64 %i.boj, %i.az
  br i1 %i.bok, label %bb.bu, label %.critedge.us.us.us.i

bb.bu:                                            ; preds = %scalar.ph1250
  %i.bol = load float, ptr %30, align 4, !tbaa !24
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.boj
  %i.bon = load float, ptr %i.bom, align 4, !tbaa !24
  %i.boo = fcmp oeq float %i.bol, %i.bon
  %i.bop = uitofp i1 %i.boo to float
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv203.i ; 2 uses
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !24
  %i.bos = fadd float %i.bor, %i.bop
  store float %i.bos, ptr %i.boq, align 4, !tbaa !24
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %i.ap
  br i1 %exitcond207.not.i, label %.critedge.us.us.us.i, label %scalar.ph1250, !llvm.loop !236

.lr.ph137.us.us.i:                                ; preds = %.critedge.us.us.i.1, %.lr.ph137.us.us.preheader.i.new
  %indvars.iv200.i = phi i64 [ 0, %.lr.ph137.us.us.preheader.i.new ], [ %indvars.iv.next201.i.1, %.critedge.us.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph137.us.us.preheader.i.new ], [ %niter.next.1, %.critedge.us.us.i.1 ]
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv200.i
  br label %bb.bx

.critedge.us.us.i:                                ; preds = %bb.by, %bb.bx
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, %i.biw ; 3 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next201.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.critedge.us.us.i
  %indvars.iv195.i.1 = phi i64 [ 0, %.critedge.us.us.i ], [ %indvars.iv.next196.i.1, %bb.bw ] ; 3 uses
  %i.bov = add nuw nsw i64 %indvars.iv195.i.1, %indvars.iv.next201.i ; 2 uses
  %i.bow = icmp samesign ult i64 %i.bov, %i.az
  br i1 %i.bow, label %bb.bw, label %.critedge.us.us.i.1

bb.bw:                                            ; preds = %bb.bv
  %i.box = load float, ptr %i.bou, align 4, !tbaa !24
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.bov
  %i.boz = load float, ptr %i.boy, align 4, !tbaa !24
  %i.bpa = fsub float %i.box, %i.boz
  %i.bpb = call noundef float @cosf(float noundef %i.bpa) #16
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv195.i.1 ; 2 uses
  %i.bpd = load float, ptr %i.bpc, align 4, !tbaa !24
  %i.bpe = fadd float %i.bpb, %i.bpd
  store float %i.bpe, ptr %i.bpc, align 4, !tbaa !24
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i.1, 1 ; 2 uses
  %exitcond199.not.i.1 = icmp eq i64 %indvars.iv.next196.i.1, %i.ap
  br i1 %exitcond199.not.i.1, label %.critedge.us.us.i.1, label %bb.bv, !llvm.loop !226

.critedge.us.us.i.1:                              ; preds = %bb.bw, %bb.bv
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv.next201.i, %i.biw ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.lr.ph182.i184.loopexit1327.unr-lcssa, label %.lr.ph137.us.us.i, !llvm.loop !225

bb.bx:                                            ; preds = %bb.by, %.lr.ph137.us.us.i
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph137.us.us.i ], [ %indvars.iv.next196.i, %bb.by ] ; 3 uses
  %i.bpf = add nuw nsw i64 %indvars.iv195.i, %indvars.iv200.i ; 2 uses
  %i.bpg = icmp samesign ult i64 %i.bpf, %i.az
  br i1 %i.bpg, label %bb.by, label %.critedge.us.us.i

bb.by:                                            ; preds = %bb.bx
  %i.bph = load float, ptr %i.bot, align 4, !tbaa !24
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.bpf
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !24
  %i.bpk = fsub float %i.bph, %i.bpj
  %i.bpl = call noundef float @cosf(float noundef %i.bpk) #16
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv195.i ; 2 uses
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !24
  %i.bpo = fadd float %i.bpl, %i.bpn
  store float %i.bpo, ptr %i.bpm, align 4, !tbaa !24
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %i.ap
  br i1 %exitcond199.not.i, label %.critedge.us.us.i, label %bb.bx, !llvm.loop !226

.lr.ph137.us.i:                                   ; preds = %.critedge.us.i, %.lr.ph137.us.preheader.i
  %indvar1272 = phi i64 [ %indvar.next1273, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 4 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 6 uses
  %32 = mul i64 %indvar1272, %i.biq
  %33 = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv192.i ; 3 uses
  %34 = call i64 @llvm.umax.i64(i64 %indvars.iv192.i, i64 %i.az)
  %i.bpp = sub i64 %34, %32
  %umin1287 = call i64 @llvm.umin.i64(i64 %27, i64 %i.bpp)
  %i.bpq = add nsw i64 %umin1287, 1               ; 3 uses
  %min.iters.check1289 = icmp ult i64 %i.bpq, 33
  br i1 %min.iters.check1289, label %scalar.ph1288.preheader, label %vector.memcheck1269

vector.memcheck1269:                              ; preds = %.lr.ph137.us.i
  %i.bpr = mul i64 %i.bir, %indvar1272
  %i.bps = getelementptr i8, ptr %i.eg, i64 %i.bpr
  %scevgep1276 = getelementptr i8, ptr %i.bps, i64 4
  %umax1271 = call i64 @llvm.umax.i64(i64 %indvars.iv192.i, i64 %i.az)
  %i.bpt = mul i64 %indvar1272, %i.biq
  %i.bpu = sub i64 %umax1271, %i.bpt
  %umin1274 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bpu)
  %i.bpv = shl i64 %umin1274, 2                   ; 2 uses
  %scevgep1277 = getelementptr i8, ptr %scevgep1276, i64 %i.bpv
  %scevgep1275 = getelementptr i8, ptr %scevgep1270, i64 %i.bpv ; 2 uses
  %bound01279 = icmp ult ptr %i.ah, %scevgep1277
  %bound11280 = icmp ult ptr %33, %scevgep1275
  %found.conflict1281 = and i1 %bound01279, %bound11280
  %bound11283 = icmp ult ptr %i.eg, %scevgep1275
  %found.conflict1284 = and i1 %bound01282, %bound11283
  %conflict.rdx1285 = or i1 %found.conflict1281, %found.conflict1284
  br i1 %conflict.rdx1285, label %scalar.ph1288.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %vector.memcheck1269
  %i.bpw = and i64 %i.bpq, 31                     ; 2 uses
  %i.bpx = icmp eq i64 %i.bpw, 0
  %i.bpy = select i1 %i.bpx, i64 32, i64 %i.bpw
  %n.vec1291 = sub i64 %i.bpq, %i.bpy             ; 2 uses
  %i.bpz = load float, ptr %33, align 4, !tbaa !24, !alias.scope !237
  %broadcast.splatinsert1302 = insertelement <8 x float> poison, float %i.bpz, i64 0
  %broadcast.splat1303 = shufflevector <8 x float> %broadcast.splatinsert1302, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv192.i
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1304, %vector.body1292 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1293 ; 4 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bqb = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bqc = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load1294.a = load <8 x float>, ptr %gep, align 4, !tbaa !24, !alias.scope !240
  %wide.load1295.a = load <8 x float>, ptr %i.bqa, align 4, !tbaa !24, !alias.scope !240
  %wide.load1296.a = load <8 x float>, ptr %i.bqb, align 4, !tbaa !24, !alias.scope !240
  %wide.load1297.a = load <8 x float>, ptr %i.bqc, align 4, !tbaa !24, !alias.scope !240
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1293 ; 5 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 32 ; 2 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqd, i64 64 ; 2 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqd, i64 96 ; 2 uses
  %wide.load1298 = load <8 x float>, ptr %i.bqd, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  %wide.load1299 = load <8 x float>, ptr %i.bqe, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  %wide.load1300 = load <8 x float>, ptr %i.bqf, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  %wide.load1301 = load <8 x float>, ptr %i.bqg, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  %i.bqh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1303, <8 x float> %wide.load1294.a, <8 x float> %wide.load1298)
  %i.bqi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1303, <8 x float> %wide.load1295.a, <8 x float> %wide.load1299)
  %i.bqj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1303, <8 x float> %wide.load1296.a, <8 x float> %wide.load1300)
  %i.bqk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1303, <8 x float> %wide.load1297.a, <8 x float> %wide.load1301)
  store <8 x float> %i.bqh, ptr %i.bqd, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  store <8 x float> %i.bqi, ptr %i.bqe, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  store <8 x float> %i.bqj, ptr %i.bqf, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  store <8 x float> %i.bqk, ptr %i.bqg, align 4, !tbaa !24, !alias.scope !242, !noalias !244
  %index.next1304 = add nuw i64 %index1293, 32    ; 2 uses
  %i.bql = icmp eq i64 %index.next1304, %n.vec1291
  br i1 %i.bql, label %scalar.ph1288.preheader, label %vector.body1292, !llvm.loop !245

scalar.ph1288.preheader:                          ; preds = %vector.body1292, %vector.memcheck1269, %.lr.ph137.us.i
  %indvars.iv.i186.ph = phi i64 [ 0, %vector.memcheck1269 ], [ 0, %.lr.ph137.us.i ], [ %n.vec1291, %vector.body1292 ]
  br label %scalar.ph1288

scalar.ph1288:                                    ; preds = %scalar.ph1288.preheader, %bb.bz
  %indvars.iv.i186 = phi i64 [ %indvars.iv.next.i187, %bb.bz ], [ %indvars.iv.i186.ph, %scalar.ph1288.preheader ] ; 3 uses
  %i.bqm = add nuw nsw i64 %indvars.iv.i186, %indvars.iv192.i ; 2 uses
  %i.bqn = icmp samesign ult i64 %i.bqm, %i.az
  br i1 %i.bqn, label %bb.bz, label %.critedge.us.i

bb.bz:                                            ; preds = %scalar.ph1288
  %i.bqo = load float, ptr %33, align 4, !tbaa !24
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.bqm
  %i.bqq = load float, ptr %i.bqp, align 4, !tbaa !24
  %i.bqr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i186 ; 2 uses
  %i.bqs = load float, ptr %i.bqr, align 4, !tbaa !24
  %i.bqt = call float @llvm.fmuladd.f32(float %i.bqo, float %i.bqq, float %i.bqs)
  store float %i.bqt, ptr %i.bqr, align 4, !tbaa !24
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %i.ap
  br i1 %exitcond.not.i188, label %.critedge.us.i, label %scalar.ph1288, !llvm.loop !246

.critedge.us.i:                                   ; preds = %bb.bz, %scalar.ph1288
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, %i.biq ; 2 uses
  %i.bqu = icmp samesign ult i64 %indvars.iv.next193.i, %i.az
  %indvar.next1273 = add i64 %indvar1272, 1
  br i1 %i.bqu, label %.lr.ph137.us.i, label %.lr.ph182.i184, !llvm.loop !225

.lr.ph182.i184.loopexit1327.unr-lcssa:            ; preds = %.critedge.us.us.i.1
  %i.bqv = and i64 %i.bix, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bqv, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph137.us.us.i.epil.preheader, label %.lr.ph182.i184

.lr.ph137.us.us.i.epil.preheader:                 ; preds = %.lr.ph182.i184.loopexit1327.unr-lcssa, %.lr.ph137.us.us.preheader.i
  %indvars.iv200.i.epil.init = phi i64 [ 0, %.lr.ph137.us.us.preheader.i ], [ %indvars.iv.next201.i.1, %.lr.ph182.i184.loopexit1327.unr-lcssa ] ; 2 uses
  %lcmp.mod1329 = trunc i64 %i.biy to i1
  call void @llvm.assume(i1 %lcmp.mod1329)
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv200.i.epil.init
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph137.us.us.i.epil.preheader
  %indvars.iv195.i.epil = phi i64 [ 0, %.lr.ph137.us.us.i.epil.preheader ], [ %indvars.iv.next196.i.epil, %bb.cb ] ; 3 uses
  %i.bqx = add nuw nsw i64 %indvars.iv195.i.epil, %indvars.iv200.i.epil.init ; 2 uses
  %i.bqy = icmp samesign ult i64 %i.bqx, %i.az
  br i1 %i.bqy, label %bb.cb, label %.lr.ph182.i184

bb.cb:                                            ; preds = %bb.ca
  %i.bqz = load float, ptr %i.bqw, align 4, !tbaa !24
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.bqx
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !24
  %i.brc = fsub float %i.bqz, %i.brb
  %i.brd = call noundef float @cosf(float noundef %i.brc) #16
  %i.bre = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv195.i.epil ; 2 uses
  %i.brf = load float, ptr %i.bre, align 4, !tbaa !24
  %i.brg = fadd float %i.brd, %i.brf
  store float %i.brg, ptr %i.bre, align 4, !tbaa !24
  %indvars.iv.next196.i.epil = add nuw nsw i64 %indvars.iv195.i.epil, 1 ; 2 uses
  %exitcond199.not.i.epil = icmp eq i64 %indvars.iv.next196.i.epil, %i.ap
  br i1 %exitcond199.not.i.epil, label %.lr.ph182.i184, label %bb.ca, !llvm.loop !226

.lr.ph182.i184:                                   ; preds = %.critedge.us.i, %.lr.ph182.i184.loopexit1327.unr-lcssa, %bb.cb, %bb.ca, %.critedge.us.us.us.i, %.critedge.us.us.us.us.i, %.critedge.us.us.us.us.us177.i, %.critedge.us.us.us.us.us.i, %.preheader131.i
  %i.brh = add i32 %.0.i, %3                      ; 5 uses
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph182.i184.new

.split.us174.i:                                   ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 242, ptr noundef nonnull @.str.40, i64 noundef %8) #17
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.split.us174.i
  unreachable

bb.cd:                                            ; preds = %.split.us174.i
  %i.bri = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %common.resume

.lr.ph182.i184.new:                               ; preds = %.lr.ph182.i184, %.lr.ph182.i184.new
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.3, %.lr.ph182.i184.new ], [ 0, %.lr.ph182.i184 ] ; 7 uses
  %niter1334 = phi i64 [ %niter1334.next.3, %.lr.ph182.i184.new ], [ 0, %.lr.ph182.i184 ]
  %i.brj = trunc nuw nsw i64 %indvars.iv261.i to i32
  %i.brk = xor i32 %i.brj, -1
  %i.brl = add i32 %i.brh, %i.brk
  %i.brm = sdiv i32 %i.brl, %.0.i
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv261.i
  %i.bro = load float, ptr %i.brn, align 4, !tbaa !24
  %i.brp = sitofp i32 %i.brm to float
  %i.brq = fdiv float %i.bro, %i.brp
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv261.i
  store float %i.brq, ptr %i.brr, align 4, !tbaa !24
  %indvars.iv.next262.i = or disjoint i64 %indvars.iv261.i, 1 ; 3 uses
  %i.brs = trunc nuw nsw i64 %indvars.iv.next262.i to i32
  %i.brt = xor i32 %i.brs, -1
  %i.bru = add i32 %i.brh, %i.brt
  %i.brv = sdiv i32 %i.bru, %.0.i
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next262.i
  %i.brx = load float, ptr %i.brw, align 4, !tbaa !24
  %i.bry = sitofp i32 %i.brv to float
  %i.brz = fdiv float %i.brx, %i.bry
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next262.i
  store float %i.brz, ptr %i.bsa, align 4, !tbaa !24
  %indvars.iv.next262.i.1 = or disjoint i64 %indvars.iv261.i, 2 ; 3 uses
  %i.bsb = trunc nuw nsw i64 %indvars.iv.next262.i.1 to i32
  %i.bsc = xor i32 %i.bsb, -1
  %i.bsd = add i32 %i.brh, %i.bsc
  %i.bse = sdiv i32 %i.bsd, %.0.i
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next262.i.1
  %i.bsg = load float, ptr %i.bsf, align 4, !tbaa !24
  %i.bsh = sitofp i32 %i.bse to float
  %i.bsi = fdiv float %i.bsg, %i.bsh
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next262.i.1
  store float %i.bsi, ptr %i.bsj, align 4, !tbaa !24
  %indvars.iv.next262.i.2 = or disjoint i64 %indvars.iv261.i, 3 ; 3 uses
  %i.bsk = trunc nuw nsw i64 %indvars.iv.next262.i.2 to i32
  %i.bsl = xor i32 %i.bsk, -1
  %i.bsm = add i32 %i.brh, %i.bsl
  %i.bsn = sdiv i32 %i.bsm, %.0.i
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next262.i.2
  %i.bsp = load float, ptr %i.bso, align 4, !tbaa !24
  %i.bsq = sitofp i32 %i.bsn to float
  %i.bsr = fdiv float %i.bsp, %i.bsq
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next262.i.2
  store float %i.bsr, ptr %i.bss, align 4, !tbaa !24
  %indvars.iv.next262.i.3 = add nuw nsw i64 %indvars.iv261.i, 4 ; 2 uses
  %niter1334.next.3 = add i64 %niter1334, 4       ; 2 uses
  %niter1334.ncmp.3 = icmp eq i64 %niter1334.next.3, %unroll_iter1333
  br i1 %niter1334.ncmp.3, label %_ZL10do_ac_coreiiPfS_im.exit.loopexit.unr-lcssa, label %.lr.ph182.i184.new, !llvm.loop !247

_ZL10do_ac_coreiiPfS_im.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph182.i184.new
  br i1 %lcmp.mod1331.not, label %_ZL10do_ac_coreiiPfS_im.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10do_ac_coreiiPfS_im.exit.loopexit.unr-lcssa, %.lr.ph182.i184
  %indvars.iv261.i.epil.init = phi i64 [ 0, %.lr.ph182.i184 ], [ %indvars.iv.next262.i.3, %_ZL10do_ac_coreiiPfS_im.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1332)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.epil.preheader
  %indvars.iv261.i.epil = phi i64 [ %indvars.iv261.i.epil.init, %.epil.preheader ], [ %indvars.iv.next262.i.epil, %bb.ce ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ce ]
  %i.bst = trunc nuw nsw i64 %indvars.iv261.i.epil to i32
  %i.bsu = xor i32 %i.bst, -1
  %i.bsv = add i32 %i.brh, %i.bsu
  %i.bsw = sdiv i32 %i.bsv, %.0.i
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv261.i.epil
  %i.bsy = load float, ptr %i.bsx, align 4, !tbaa !24
  %i.bsz = sitofp i32 %i.bsw to float
  %i.bta = fdiv float %i.bsy, %i.bsz
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv261.i.epil
  store float %i.bta, ptr %i.btb, align 4, !tbaa !24
  %indvars.iv.next262.i.epil = add nuw nsw i64 %indvars.iv261.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1330
  br i1 %epil.iter.cmp.not, label %_ZL10do_ac_coreiiPfS_im.exit, label %bb.ce, !llvm.loop !248

_ZL10do_ac_coreiiPfS_im.exit:                     ; preds = %_ZL10do_ac_coreiiPfS_im.exit.loopexit.unr-lcssa, %bb.ce, %bb.bk, %_ZL12do_four_coremiPfS_S_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !249

bb.cf:                                            ; preds = %._crit_edge
  %i.btc = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = call i32 @fputc(i32 10, ptr %i.btc)    ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %._crit_edge
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 629, ptr noundef %i.ah)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 630, ptr noundef %i.ag)
  %i.btd = load ptr, ptr %i.b, align 8, !tbaa !9
  %.not159 = icmp eq ptr %i.btd, null
  br i1 %.not159, label %bb.ck, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cg
  %i.bte = sext i32 %.0147.fr to i64
  %i.btf = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 634, i64 noundef range(i64 -2147483648, 2147483648) %i.bte, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.btg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.btg, ptr %22, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.btg, ptr noundef nonnull align 1 dereferenceable(9) @.str.13, i64 9, i1 false)
  %i.bth = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 9, ptr %i.bth, align 8, !tbaa !252
  %i.bti = getelementptr inbounds nuw i8, ptr %22, i64 25
  store i8 0, ptr %i.bti, align 1, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.btj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.btj, ptr %23, align 8, !tbaa !250
  store i32 695478339, ptr %i.btj, align 8
  %i.btk = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 4, ptr %i.btk, align 8, !tbaa !252
  %i.btl = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i8 0, ptr %i.btl, align 4, !tbaa !254
  %i.btm = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %1)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %._crit_edge.i.i
  %i.btn = load ptr, ptr %23, align 8, !tbaa !255 ; 2 uses
  %i.bto = icmp eq ptr %i.btn, %i.btj
  br i1 %i.bto, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ch
  %i.btp = load i64, ptr %i.btj, align 8, !tbaa !254
  %i.btq = add i64 %i.btp, 1
  call void @_ZdlPvm(ptr noundef %i.btn, i64 noundef %i.btq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.btr = load ptr, ptr %22, align 8, !tbaa !255 ; 2 uses
end_hunk_1
