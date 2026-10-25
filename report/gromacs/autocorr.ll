Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/autocorr?download=true
inline.NumInlined: 330
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0
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

common.resume:                                    ; preds = %bb.j, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %bb.bz, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.bhm, %bb.bf ], [ %i.bry, %bb.bz ], [ %i.m, %bb.j ], [ %i.v, %bb.r ], [ %i.byf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.buj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
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
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 601, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 133 uses
  %i.ah = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 152 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add nsw i32 %4, -1
  %i.am = trunc nuw i8 %.0140 to i1
  %i.an = icmp slt i32 %9, 1
  %i.ao = icmp sgt i32 %.0147.fr, 0
  %i.ap = zext i32 %.0147.fr to i64               ; 15 uses
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
  %or.cond169.i = and i1 %i.ar, %i.au
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 4 uses
  %i.bb = zext nneg i32 %i.al to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ba
  %scevgep428 = getelementptr i8, ptr %i.ah, i64 %i.ba
  %i.bc = mul nuw nsw i64 %i.az, 12               ; 6 uses
  %i.bd = shl nuw nsw i64 %i.az, 2                ; 12 uses
  %scevgep470 = getelementptr i8, ptr %i.ag, i64 %i.bd ; 10 uses
  %scevgep509 = getelementptr i8, ptr %i.ah, i64 %i.bd ; 8 uses
  %i.be = add nsw i64 %i.bc, -4                   ; 3 uses
  %i.bf = add nsw i64 %i.bc, -8                   ; 2 uses
  %scevgep1236 = getelementptr i8, ptr %i.ah, i64 4
  %i.bg = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.bh = add nsw i64 %i.az, -1                   ; 4 uses
  %scevgep1268 = getelementptr i8, ptr %i.ah, i64 4
  %i.bi = add nsw i64 %i.az, -1                   ; 3 uses
  %i.bj = add nsw i64 %i.ap, -1
  %i.bk = add nsw i64 %i.ap, -1
  %min.iters.check1219 = icmp ult i32 %.0147.fr, 8
  %n.vec1221 = and i64 %i.ap, 2147483640          ; 3 uses
  %cmp.n1233 = icmp eq i64 %n.vec1221, %i.ap
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check1189 = icmp ult i32 %3, 4
  %min.iters.check1191 = icmp ult i32 %3, 32
  %i.bl = and i64 %i.az, 28
  %n.vec1193 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1202 = icmp eq i64 %n.vec1193, %i.az
  %min.epilog.iters.check1206 = icmp eq i64 %i.bl, 0
  %n.vec1209 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1215 = icmp eq i64 %n.vec1209, %i.az
  %min.iters.check1159 = icmp ult i32 %3, 4
  %min.iters.check1161 = icmp ult i32 %3, 32
  %i.bm = and i64 %i.az, 28
  %n.vec1163 = and i64 %i.az, 2147483616          ; 4 uses
  %cmp.n1172 = icmp eq i64 %n.vec1163, %i.az
  %min.epilog.iters.check1176 = icmp eq i64 %i.bm, 0
  %n.vec1179 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1185 = icmp eq i64 %n.vec1179, %i.az
  %min.iters.check1128 = icmp ult i32 %3, 4
  %min.iters.check1130 = icmp ult i32 %3, 16
  %i.bn = and i64 %i.az, 12
  %n.vec1132 = and i64 %i.az, 2147483632          ; 4 uses
  %cmp.n1141.a = icmp eq i64 %n.vec1132, %i.az
  %min.epilog.iters.check1145 = icmp eq i64 %i.bn, 0
  %n.vec1148 = and i64 %i.az, 2147483644          ; 3 uses
  %cmp.n1155 = icmp eq i64 %n.vec1148, %i.az
  %xtraiter1329 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1330.not = icmp eq i64 %xtraiter1329, 0
  %xtraiter1332 = and i64 %i.az, 1
  %i.bo = icmp eq i64 %i.bi, 0
  %unroll_iter = and i64 %i.az, 2147483646
  %lcmp.mod1333.not = icmp eq i64 %xtraiter1332, 0
  %lcmp.mod1334 = trunc i32 %3 to i1
  %min.iters.check1084 = icmp ult i32 %3, 9
  %min.iters.check1086 = icmp ult i32 %3, 33
  %i.bp = and i64 %i.az, 31                       ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 32, i64 %i.bp      ; 2 uses
  %n.vec1088 = sub nsw i64 %i.az, %i.br           ; 3 uses
  %min.epilog.iters.check1104 = icmp samesign ult i64 %i.br, 9
  %i.bs = and i64 %i.az, 7                        ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = select i1 %i.bt, i64 8, i64 %i.bs
  %n.vec1107 = sub nsw i64 %i.az, %i.bu           ; 2 uses
  %min.iters.check1046 = icmp ult i32 %3, 4
  %min.iters.check1048 = icmp ult i32 %3, 32
  %i.bv = and i64 %i.az, 28
  %n.vec1050 = and i64 %i.az, 4294967264          ; 4 uses
  %cmp.n1063.a = icmp eq i64 %n.vec1050, %i.az
  %min.epilog.iters.check1067 = icmp eq i64 %i.bv, 0
  %n.vec1070 = and i64 %i.az, 4294967292          ; 3 uses
  %cmp.n1077 = icmp eq i64 %n.vec1070, %i.az
  %min.iters.check1010 = icmp ult i32 %3, 9
  %min.iters.check1012 = icmp ult i32 %3, 33
  %i.bw = and i64 %i.az, 31                       ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = select i1 %i.bx, i64 32, i64 %i.bw      ; 2 uses
  %n.vec1014 = sub nsw i64 %i.az, %i.by           ; 3 uses
  %min.epilog.iters.check1030 = icmp samesign ult i64 %i.by, 9
  %i.bz = and i64 %i.az, 7                        ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 8, i64 %i.bz
  %n.vec1033 = sub nsw i64 %i.az, %i.cb           ; 2 uses
  %min.iters.check971 = icmp ult i32 %3, 4
  %min.iters.check973 = icmp ult i32 %3, 32
  %i.cc = and i64 %i.az, 28
  %n.vec975 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n988.a = icmp eq i64 %n.vec975, %i.az
  %min.epilog.iters.check992 = icmp eq i64 %i.cc, 0
  %n.vec995 = and i64 %i.az, 4294967292           ; 3 uses
  %cmp.n1002 = icmp eq i64 %n.vec995, %i.az
  %min.iters.check935 = icmp ult i32 %3, 9
  %min.iters.check937 = icmp ult i32 %3, 33
  %i.cd = and i64 %i.az, 31                       ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 32, i64 %i.cd      ; 2 uses
  %n.vec939 = sub nsw i64 %i.az, %i.cf            ; 3 uses
  %min.epilog.iters.check955 = icmp samesign ult i64 %i.cf, 9
  %i.cg = and i64 %i.az, 7                        ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  %i.ci = select i1 %i.ch, i64 8, i64 %i.cg
  %n.vec958 = sub nsw i64 %i.az, %i.ci            ; 2 uses
  %min.iters.check896 = icmp ult i32 %3, 4
  %min.iters.check898 = icmp ult i32 %3, 32
  %i.cj = and i64 %i.az, 28
  %n.vec900 = and i64 %i.az, 4294967264           ; 4 uses
  %cmp.n913.a = icmp eq i64 %n.vec900, %i.az
  %min.epilog.iters.check917 = icmp eq i64 %i.cj, 0
  %n.vec920 = and i64 %i.az, 4294967292           ; 3 uses
  %cmp.n927 = icmp eq i64 %n.vec920, %i.az
  %xtraiter1353 = and i64 %i.az, 1
  %i.ck = icmp eq i64 %i.bi, 0
  %unroll_iter1356 = and i64 %i.az, 2147483646
  %lcmp.mod1354.not = icmp eq i64 %xtraiter1353, 0
  %lcmp.mod1355 = trunc i32 %3 to i1
  %min.iters.check854 = icmp ult i32 %3, 4
  %min.iters.check856 = icmp ult i32 %3, 32
  %i.cl = and i64 %i.az, 28
  %n.vec858 = and i64 %i.az, 2147483616           ; 4 uses
  %broadcast.splatinsert859 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat860 = shufflevector <8 x i32> %broadcast.splatinsert859, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n870 = icmp eq i64 %n.vec858, %i.az
  %min.epilog.iters.check874 = icmp eq i64 %i.cl, 0
  %n.vec877 = and i64 %i.az, 2147483644           ; 3 uses
  %broadcast.splatinsert878 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat879 = shufflevector <4 x i32> %broadcast.splatinsert878, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n889 = icmp eq i64 %n.vec877, %i.az
  %min.iters.check823 = icmp ult i32 %3, 9
  %min.iters.check825 = icmp ult i32 %3, 33
  %i.cm = and i64 %i.az, 31                       ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 32, i64 %i.cm      ; 2 uses
  %n.vec827 = sub nsw i64 %i.az, %i.co            ; 3 uses
  %min.epilog.iters.check843 = icmp samesign ult i64 %i.co, 9
  %i.cp = and i64 %i.az, 7                        ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i64 8, i64 %i.cp
  %n.vec846 = sub nsw i64 %i.az, %i.cr            ; 2 uses
  %min.iters.check785 = icmp ult i32 %3, 4
  %min.iters.check787 = icmp ult i32 %3, 32
  %i.cs = and i64 %i.az, 28
  %n.vec789 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n802.a = icmp eq i64 %n.vec789, %i.az
  %min.epilog.iters.check806 = icmp eq i64 %i.cs, 0
  %n.vec809 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n816 = icmp eq i64 %n.vec809, %i.az
  %min.iters.check749 = icmp ult i32 %3, 9
  %min.iters.check751 = icmp ult i32 %3, 33
  %i.ct = and i64 %i.az, 31                       ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 32, i64 %i.ct      ; 2 uses
  %n.vec753 = sub nsw i64 %i.az, %i.cv            ; 3 uses
  %min.epilog.iters.check769 = icmp samesign ult i64 %i.cv, 9
  %i.cw = and i64 %i.az, 7                        ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = select i1 %i.cx, i64 8, i64 %i.cw
  %n.vec772 = sub nsw i64 %i.az, %i.cy            ; 2 uses
  %min.iters.check710 = icmp ult i32 %3, 4
  %min.iters.check712 = icmp ult i32 %3, 32
  %i.cz = and i64 %i.az, 28
  %n.vec714 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n727.a = icmp eq i64 %n.vec714, %i.az
  %min.epilog.iters.check731 = icmp eq i64 %i.cz, 0
  %n.vec734 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n741 = icmp eq i64 %n.vec734, %i.az
  %min.iters.check674 = icmp ult i32 %3, 9
  %min.iters.check676 = icmp ult i32 %3, 33
  %i.da = and i64 %i.az, 31                       ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 32, i64 %i.da      ; 2 uses
  %n.vec678 = sub nsw i64 %i.az, %i.dc            ; 3 uses
  %min.epilog.iters.check694 = icmp samesign ult i64 %i.dc, 9
  %i.dd = and i64 %i.az, 7                        ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = select i1 %i.de, i64 8, i64 %i.dd
  %n.vec697 = sub nsw i64 %i.az, %i.df            ; 2 uses
  %min.iters.check635 = icmp ult i32 %3, 4
  %min.iters.check637 = icmp ult i32 %3, 32
  %i.dg = and i64 %i.az, 28
  %n.vec639 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n652.a = icmp eq i64 %n.vec639, %i.az
  %min.epilog.iters.check656 = icmp eq i64 %i.dg, 0
  %n.vec659 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n666 = icmp eq i64 %n.vec659, %i.az
  %min.iters.check594 = icmp ult i32 %3, 9
  %min.iters.check596 = icmp ult i32 %3, 33
  %i.dh = and i64 %i.az, 31                       ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 32, i64 %i.dh      ; 2 uses
  %n.vec598 = sub nsw i64 %i.az, %i.dj            ; 3 uses
  %min.epilog.iters.check618 = icmp samesign ult i64 %i.dj, 9
  %i.dk = and i64 %i.az, 7                        ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 8, i64 %i.dk
  %n.vec621 = sub nsw i64 %i.az, %i.dm            ; 2 uses
  %min.iters.check556 = icmp ult i32 %3, 4
  %min.iters.check558 = icmp ult i32 %3, 32
  %i.dn = and i64 %i.az, 28
  %n.vec560 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n573.a = icmp eq i64 %n.vec560, %i.az
  %min.epilog.iters.check577 = icmp eq i64 %i.dn, 0
  %n.vec580 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec580, %i.az
  %min.iters.check515 = icmp ult i32 %3, 9
  %min.iters.check517 = icmp ult i32 %3, 33
  %i.do = and i64 %i.az, 31                       ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 32, i64 %i.do      ; 2 uses
  %n.vec519 = sub nsw i64 %i.az, %i.dq            ; 3 uses
  %min.epilog.iters.check539 = icmp samesign ult i64 %i.dq, 9
  %i.dr = and i64 %i.az, 7                        ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = select i1 %i.ds, i64 8, i64 %i.dr
  %n.vec542 = sub nsw i64 %i.az, %i.dt            ; 2 uses
  %min.iters.check475 = icmp ult i32 %3, 4
  %min.iters.check477 = icmp ult i32 %3, 32
  %i.du = and i64 %i.az, 28
  %n.vec479 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n492.a = icmp eq i64 %n.vec479, %i.az
  %min.epilog.iters.check496 = icmp eq i64 %i.du, 0
  %n.vec499 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n506 = icmp eq i64 %n.vec499, %i.az
  %min.iters.check433 = icmp ult i32 %3, 8
  %min.iters.check435 = icmp ult i32 %3, 32
  %i.dv = and i64 %i.az, 24
  %n.vec437 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n452 = icmp eq i64 %n.vec437, %i.az
  %min.epilog.iters.check456 = icmp eq i64 %i.dv, 0
  %n.vec459 = and i64 %i.az, 2147483640           ; 3 uses
  %cmp.n467 = icmp eq i64 %n.vec459, %i.az
  %xtraiter1388 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1389.not = icmp eq i64 %xtraiter1388, 0
  %min.iters.check394 = icmp ult i32 %3, 4
  %min.iters.check396 = icmp ult i32 %3, 32
  %i.dw = and i64 %i.az, 28
  %n.vec398 = and i64 %i.az, 2147483616           ; 4 uses
  %cmp.n411.a = icmp eq i64 %n.vec398, %i.az
  %min.epilog.iters.check415 = icmp eq i64 %i.dw, 0
  %n.vec418 = and i64 %i.az, 2147483644           ; 3 uses
  %cmp.n425 = icmp eq i64 %n.vec418, %i.az
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check377 = icmp ult i32 %3, 32
  %i.dx = and i64 %i.az, 28
  %n.vec = and i64 %i.az, 4294967264              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.az
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  %n.vec381 = and i64 %i.az, 4294967292           ; 3 uses
  %broadcast.splatinsert382 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat383 = shufflevector <4 x i32> %broadcast.splatinsert382, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n391 = icmp eq i64 %n.vec381, %i.az
  %xtraiter1394 = and i64 %i.az, 3                ; 2 uses
  %lcmp.mod1395.not = icmp eq i64 %xtraiter1394, 0
  br label %bb.v

._crit_edge:                                      ; preds = %_ZL10do_ac_coreiiPfS_im.exit, %bb.u
  br i1 %12, label %bb.ca, label %bb.cb

bb.v:                                             ; preds = %.lr.ph, %_ZL10do_ac_coreiiPfS_im.exit
  %indvars.iv296 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next297, %_ZL10do_ac_coreiiPfS_im.exit ] ; 5 uses
  br i1 %12, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dy = trunc nuw nsw i64 %indvars.iv296 to i32
  %i.dz = urem i32 %i.dy, 100
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = icmp eq i64 %indvars.iv296, %i.bb
  %or.cond177 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond177, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ed = trunc i64 %indvars.iv296 to i32
  %i.ee = add i32 %i.ed, 1
  %i.ef = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.10, i32 noundef %i.ee) #18 ; 0 uses
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.eh = call i32 @fflush(ptr noundef %i.eg)     ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv296
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !221 ; 205 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64              ; 4 uses
  br i1 %i.am, label %bb.z, label %bb.bg

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.el = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 356, i64 noundef range(i64 -2147483648, 2147483648) %i.af, i64 noundef 4) ; 162 uses
  %i.em = ptrtoaddr ptr %i.el to i64
  br i1 %.not156, label %bb.aa, label %.loopexit170.i

bb.aa:                                            ; preds = %bb.z
  br i1 %.not, label %bb.ab, label %.preheader177.i

.preheader177.i:                                  ; preds = %bb.aa
  br i1 %i.ar, label %iter.check1203, label %.loopexit170.thread292.sink.split.i

iter.check1203:                                   ; preds = %.preheader177.i
  %i.en = sub i64 %i.ek, %i.ai
  %diff.check1188 = icmp ugt i64 %i.en, -128
  %or.cond1302 = select i1 %min.iters.check1189, i1 true, i1 %diff.check1188
  br i1 %or.cond1302, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1190

vector.main.loop.iter.check1190:                  ; preds = %iter.check1203
  br i1 %min.iters.check1191, label %vec.epilog.ph1207, label %vector.body1194

vector.body1194:                                  ; preds = %vector.main.loop.iter.check1190, %vector.body1194
  %index1195 = phi i64 [ %index.next1200, %vector.body1194 ], [ 0, %vector.main.loop.iter.check1190 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1195 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %wide.load1196 = load <8 x float>, ptr %i.eo, align 4, !tbaa !24
  %wide.load1197 = load <8 x float>, ptr %i.ep, align 4, !tbaa !24
  %wide.load1198.a = load <8 x float>, ptr %i.eq, align 4, !tbaa !24
  %wide.load1199 = load <8 x float>, ptr %i.er, align 4, !tbaa !24
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1195 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  store <8 x float> %wide.load1196, ptr %i.es, align 4, !tbaa !24
  store <8 x float> %wide.load1197, ptr %i.et, align 4, !tbaa !24
  store <8 x float> %wide.load1198.a, ptr %i.eu, align 4, !tbaa !24
  store <8 x float> %wide.load1199, ptr %i.ev, align 4, !tbaa !24
  %index.next1200 = add nuw i64 %index1195, 32    ; 2 uses
  %i.ew = icmp eq i64 %index.next1200, %n.vec1193
  br i1 %i.ew, label %middle.block1201, label %vector.body1194, !llvm.loop !49

middle.block1201:                                 ; preds = %vector.body1194
  br i1 %cmp.n1202, label %iter.check1173, label %vec.epilog.iter.check1204

vec.epilog.iter.check1204:                        ; preds = %middle.block1201
  br i1 %min.epilog.iters.check1206, label %.lr.ph.i.preheader, label %vec.epilog.ph1207, !prof !28

vec.epilog.ph1207:                                ; preds = %vector.main.loop.iter.check1190, %vec.epilog.iter.check1204
  %vec.epilog.resume.val1208 = phi i64 [ %n.vec1193, %vec.epilog.iter.check1204 ], [ 0, %vector.main.loop.iter.check1190 ]
  br label %vec.epilog.vector.body1210

vec.epilog.vector.body1210:                       ; preds = %vec.epilog.vector.body1210, %vec.epilog.ph1207
  %index1211 = phi i64 [ %vec.epilog.resume.val1208, %vec.epilog.ph1207 ], [ %index.next1213, %vec.epilog.vector.body1210 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1211
  %wide.load1212 = load <4 x float>, ptr %i.ex, align 4, !tbaa !24
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1211
  store <4 x float> %wide.load1212, ptr %i.ey, align 4, !tbaa !24
  %index.next1213 = add nuw i64 %index1211, 4     ; 2 uses
  %i.ez = icmp eq i64 %index.next1213, %n.vec1209
  br i1 %i.ez, label %vec.epilog.middle.block1214, label %vec.epilog.vector.body1210, !llvm.loop !50

vec.epilog.middle.block1214:                      ; preds = %vec.epilog.vector.body1210
  br i1 %cmp.n1215, label %iter.check1173, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check1203, %vec.epilog.iter.check1204, %vec.epilog.middle.block1214
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check1203 ], [ %n.vec1193, %vec.epilog.iter.check1204 ], [ %n.vec1209, %vec.epilog.middle.block1214 ] ; 4 uses
  %i.fa = sub nsw i64 %i.az, %indvars.iv.i.ph
  %i.fb = sub nsw i64 %i.bi, %indvars.iv.i.ph
  %xtraiter1323 = and i64 %i.fa, 7                ; 2 uses
  %lcmp.mod1324.not = icmp eq i64 %xtraiter1323, 0
  br i1 %lcmp.mod1324.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter1325 = phi i64 [ %prol.iter1325.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.prol
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !24
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store float %i.fd, ptr %i.fe, align 4, !tbaa !24
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1325.next = add i64 %prol.iter1325, 1 ; 2 uses
  %prol.iter1325.cmp.not = icmp eq i64 %prol.iter1325.next, %xtraiter1323
  br i1 %prol.iter1325.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ff = icmp ult i64 %i.fb, 7
  br i1 %i.ff, label %iter.check1173, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !24
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  store float %i.fh, ptr %i.fi, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !24
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store float %i.fk, ptr %i.fl, align 4, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.1
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !24
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store float %i.fn, ptr %i.fo, align 4, !tbaa !24
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.2
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !24
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store float %i.fq, ptr %i.fr, align 4, !tbaa !24
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.3
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !24
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.3
  store float %i.ft, ptr %i.fu, align 4, !tbaa !24
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !24
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.4
  store float %i.fw, ptr %i.fx, align 4, !tbaa !24
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.5
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !24
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.5
  store float %i.fz, ptr %i.ga, align 4, !tbaa !24
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.6
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !24
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.6
  store float %i.gc, ptr %i.gd, align 4, !tbaa !24
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.az
  br i1 %exitcond.not.i.7, label %iter.check1173, label %.lr.ph.i, !llvm.loop !52

iter.check1173:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block1214, %middle.block1201
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef nonnull %i.ah, ptr noundef %i.el, i32 noundef 1)
  %i.ge = sub i64 %i.em, %i.ek
  %diff.check1158 = icmp ugt i64 %i.ge, -128
  %or.cond1303 = select i1 %min.iters.check1159, i1 true, i1 %diff.check1158
  br i1 %or.cond1303, label %.lr.ph181.i.preheader, label %vector.main.loop.iter.check1160

vector.main.loop.iter.check1160:                  ; preds = %iter.check1173
  br i1 %min.iters.check1161, label %vec.epilog.ph1177, label %vector.body1164

vector.body1164:                                  ; preds = %vector.main.loop.iter.check1160, %vector.body1164
  %index1165 = phi i64 [ %index.next1170, %vector.body1164 ], [ 0, %vector.main.loop.iter.check1160 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index1165 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  %wide.load1166 = load <8 x float>, ptr %i.gf, align 4, !tbaa !24
  %wide.load1167 = load <8 x float>, ptr %i.gg, align 4, !tbaa !24
  %wide.load1168.a = load <8 x float>, ptr %i.gh, align 4, !tbaa !24
  %wide.load1169 = load <8 x float>, ptr %i.gi, align 4, !tbaa !24
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1165 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store <8 x float> %wide.load1166, ptr %i.gj, align 4, !tbaa !24
  store <8 x float> %wide.load1167, ptr %i.gk, align 4, !tbaa !24
  store <8 x float> %wide.load1168.a, ptr %i.gl, align 4, !tbaa !24
  store <8 x float> %wide.load1169, ptr %i.gm, align 4, !tbaa !24
  %index.next1170 = add nuw i64 %index1165, 32    ; 2 uses
  %i.gn = icmp eq i64 %index.next1170, %n.vec1163
  br i1 %i.gn, label %middle.block1171, label %vector.body1164, !llvm.loop !53

middle.block1171:                                 ; preds = %vector.body1164
  br i1 %cmp.n1172, label %iter.check1142, label %vec.epilog.iter.check1174

vec.epilog.iter.check1174:                        ; preds = %middle.block1171
  br i1 %min.epilog.iters.check1176, label %.lr.ph181.i.preheader, label %vec.epilog.ph1177, !prof !28

vec.epilog.ph1177:                                ; preds = %vector.main.loop.iter.check1160, %vec.epilog.iter.check1174
  %vec.epilog.resume.val1178 = phi i64 [ %n.vec1163, %vec.epilog.iter.check1174 ], [ 0, %vector.main.loop.iter.check1160 ]
  br label %vec.epilog.vector.body1180

vec.epilog.vector.body1180:                       ; preds = %vec.epilog.vector.body1180, %vec.epilog.ph1177
  %index1181 = phi i64 [ %vec.epilog.resume.val1178, %vec.epilog.ph1177 ], [ %index.next1183, %vec.epilog.vector.body1180 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index1181
  %wide.load1182 = load <4 x float>, ptr %i.go, align 4, !tbaa !24
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1181
  store <4 x float> %wide.load1182, ptr %i.gp, align 4, !tbaa !24
  %index.next1183 = add nuw i64 %index1181, 4     ; 2 uses
  %i.gq = icmp eq i64 %index.next1183, %n.vec1179
  br i1 %i.gq, label %vec.epilog.middle.block1184, label %vec.epilog.vector.body1180, !llvm.loop !54

vec.epilog.middle.block1184:                      ; preds = %vec.epilog.vector.body1180
  br i1 %cmp.n1185, label %iter.check1142, label %.lr.ph181.i.preheader

.lr.ph181.i.preheader:                            ; preds = %iter.check1173, %vec.epilog.iter.check1174, %vec.epilog.middle.block1184
  %indvars.iv221.i.ph = phi i64 [ 0, %iter.check1173 ], [ %n.vec1163, %vec.epilog.iter.check1174 ], [ %n.vec1179, %vec.epilog.middle.block1184 ] ; 4 uses
  %i.gr = sub nsw i64 %i.az, %indvars.iv221.i.ph
  %xtraiter1326 = and i64 %i.gr, 7                ; 2 uses
  %lcmp.mod1327.not = icmp eq i64 %xtraiter1326, 0
  br i1 %lcmp.mod1327.not, label %.lr.ph181.i.prol.loopexit, label %.lr.ph181.i.prol
end_hunk_0
begin_hunk_1_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a

.loopexit170.thread.i:                            ; preds = %.lr.ph185.i.prol.loopexit, %.lr.ph185.i, %.lr.ph193.2.i.prol.loopexit, %.lr.ph193.2.i, %.lr.ph212.2.i.prol.loopexit, %.lr.ph212.2.i, %middle.block1140, %vec.epilog.middle.block1154, %middle.block912, %vec.epilog.middle.block926, %middle.block410, %vec.epilog.middle.block424
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull %i.el)
  br label %iter.check

.loopexit170.thread292.sink.split.i:              ; preds = %._crit_edge190.2.i, %.preheader177.i
  %.sink295.i = phi i32 [ 0, %._crit_edge190.2.i ], [ 1, %.preheader177.i ]
  %.sink.i = phi i32 [ 0, %._crit_edge190.2.i ], [ 2, %.preheader177.i ]
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ah, ptr noundef %i.el, i32 noundef %.sink295.i)
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ah, ptr noundef %i.el, i32 noundef %.sink.i)
  br label %.loopexit170.thread292.i

.loopexit170.thread292.i:                         ; preds = %.loopexit170.thread292.sink.split.i, %bb.aw
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef %i.el)
  br label %_ZL12do_four_coremiPfS_S_.exit

.loopexit170.i:                                   ; preds = %bb.z
  call fastcc void @_ZL16low_do_four_coreiPfS_i(i32 noundef %3, ptr noundef %i.ej, ptr noundef %i.ag, i32 noundef 0)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef %i.el)
  br i1 %i.ar, label %iter.check, label %_ZL12do_four_coremiPfS_S_.exit

iter.check:                                       ; preds = %.loopexit170.i, %.loopexit170.thread.i
  %i.bhn = sub i64 %i.ak, %i.ek
  %diff.check = icmp ugt i64 %i.bhn, -128
  %or.cond1304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1304, label %.lr.ph216.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check377, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bho, i64 64
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bho, i64 96
  %wide.load = load <8 x float>, ptr %i.bho, align 4, !tbaa !24
  %wide.load378 = load <8 x float>, ptr %i.bhp, align 4, !tbaa !24
  %wide.load379 = load <8 x float>, ptr %i.bhq, align 4, !tbaa !24
  %wide.load380 = load <8 x float>, ptr %i.bhr, align 4, !tbaa !24
  %i.bhs = sub <8 x i32> %broadcast.splat, %vec.ind
  %i.bht = sub <8 x i32> %broadcast.splat, %step.add
  %i.bhu = sub <8 x i32> %broadcast.splat, %step.add.2
  %i.bhv = sub <8 x i32> %broadcast.splat, %step.add.3
  %i.bhw = uitofp nneg <8 x i32> %i.bhs to <8 x float>
  %i.bhx = uitofp nneg <8 x i32> %i.bht to <8 x float>
  %i.bhy = uitofp nneg <8 x i32> %i.bhu to <8 x float>
  %i.bhz = uitofp nneg <8 x i32> %i.bhv to <8 x float>
  %i.bia = fdiv <8 x float> %wide.load, %i.bhw
  %i.bib = fdiv <8 x float> %wide.load378, %i.bhx
  %i.bic = fdiv <8 x float> %wide.load379, %i.bhy
  %i.bid = fdiv <8 x float> %wide.load380, %i.bhz
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 32
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 64
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bie, i64 96
  store <8 x float> %i.bia, ptr %i.bie, align 4, !tbaa !24
  store <8 x float> %i.bib, ptr %i.bif, align 4, !tbaa !24
  store <8 x float> %i.bic, ptr %i.big, align 4, !tbaa !24
  store <8 x float> %i.bid, ptr %i.bih, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bii = icmp eq i64 %index.next, %n.vec
  br i1 %i.bii, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12do_four_coremiPfS_S_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph216.i.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bij = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.bij, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat385, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index386 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next389, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind387 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next390, %vec.epilog.vector.body ] ; 2 uses
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index386
  %wide.load388 = load <4 x float>, ptr %i.bik, align 4, !tbaa !24
  %i.bil = sub <4 x i32> %broadcast.splat383, %vec.ind387
  %i.bim = uitofp nneg <4 x i32> %i.bil to <4 x float>
  %i.bin = fdiv <4 x float> %wide.load388, %i.bim
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index386
  store <4 x float> %i.bin, ptr %i.bio, align 4, !tbaa !24
  %index.next389 = add nuw i64 %index386, 4       ; 2 uses
  %vec.ind.next390 = add <4 x i32> %vec.ind387, splat (i32 4)
  %i.bip = icmp eq i64 %index.next389, %n.vec381
  br i1 %i.bip, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n391, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph216.i.preheader

.lr.ph216.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv281.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec381, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod1395.not, label %.lr.ph216.i.prol.loopexit, label %.lr.ph216.i.prol

.lr.ph216.i.prol:                                 ; preds = %.lr.ph216.i.preheader, %.lr.ph216.i.prol
  %indvars.iv281.i.prol = phi i64 [ %indvars.iv.next282.i.prol, %.lr.ph216.i.prol ], [ %indvars.iv281.i.ph, %.lr.ph216.i.preheader ] ; 4 uses
  %prol.iter1396 = phi i64 [ %prol.iter1396.next, %.lr.ph216.i.prol ], [ 0, %.lr.ph216.i.preheader ]
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv281.i.prol
  %i.bir = load float, ptr %i.biq, align 4, !tbaa !24
  %i.bis = trunc i64 %indvars.iv281.i.prol to i32
  %i.bit = sub i32 %3, %i.bis
  %i.biu = uitofp nneg i32 %i.bit to float
  %i.biv = fdiv float %i.bir, %i.biu
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv281.i.prol
  store float %i.biv, ptr %i.biw, align 4, !tbaa !24
  %indvars.iv.next282.i.prol = add nuw nsw i64 %indvars.iv281.i.prol, 1 ; 2 uses
  %prol.iter1396.next = add i64 %prol.iter1396, 1 ; 2 uses
  %prol.iter1396.cmp.not = icmp eq i64 %prol.iter1396.next, %xtraiter1394
  br i1 %prol.iter1396.cmp.not, label %.lr.ph216.i.prol.loopexit, label %.lr.ph216.i.prol, !llvm.loop !197

.lr.ph216.i.prol.loopexit:                        ; preds = %.lr.ph216.i.prol, %.lr.ph216.i.preheader
  %indvars.iv281.i.unr = phi i64 [ %indvars.iv281.i.ph, %.lr.ph216.i.preheader ], [ %indvars.iv.next282.i.prol, %.lr.ph216.i.prol ]
  %i.bix = sub nsw i64 %indvars.iv281.i.ph, %i.az
  %i.biy = icmp ugt i64 %i.bix, -4
  br i1 %i.biy, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %.lr.ph216.i.prol.loopexit, %.lr.ph216.i
  %indvars.iv281.i = phi i64 [ %indvars.iv.next282.i.3, %.lr.ph216.i ], [ %indvars.iv281.i.unr, %.lr.ph216.i.prol.loopexit ] ; 7 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv281.i
  %i.bja = load float, ptr %i.biz, align 4, !tbaa !24
  %i.bjb = trunc i64 %indvars.iv281.i to i32
  %i.bjc = sub i32 %3, %i.bjb
  %i.bjd = uitofp nneg i32 %i.bjc to float
  %i.bje = fdiv float %i.bja, %i.bjd
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv281.i
  store float %i.bje, ptr %i.bjf, align 4, !tbaa !24
  %indvars.iv.next282.i = add nuw nsw i64 %indvars.iv281.i, 1 ; 3 uses
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next282.i
  %i.bjh = load float, ptr %i.bjg, align 4, !tbaa !24
  %i.bji = trunc i64 %indvars.iv.next282.i to i32
  %i.bjj = sub i32 %3, %i.bji
  %i.bjk = uitofp nneg i32 %i.bjj to float
  %i.bjl = fdiv float %i.bjh, %i.bjk
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next282.i
  store float %i.bjl, ptr %i.bjm, align 4, !tbaa !24
  %indvars.iv.next282.i.1 = add nuw nsw i64 %indvars.iv281.i, 2 ; 3 uses
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next282.i.1
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !24
  %i.bjp = trunc i64 %indvars.iv.next282.i.1 to i32
  %i.bjq = sub i32 %3, %i.bjp
  %i.bjr = uitofp nneg i32 %i.bjq to float
  %i.bjs = fdiv float %i.bjo, %i.bjr
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next282.i.1
  store float %i.bjs, ptr %i.bjt, align 4, !tbaa !24
  %indvars.iv.next282.i.2 = add nuw nsw i64 %indvars.iv281.i, 3 ; 3 uses
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next282.i.2
  %i.bjv = load float, ptr %i.bju, align 4, !tbaa !24
  %i.bjw = trunc i64 %indvars.iv.next282.i.2 to i32
  %i.bjx = sub i32 %3, %i.bjw
  %i.bjy = uitofp nneg i32 %i.bjx to float
  %i.bjz = fdiv float %i.bjv, %i.bjy
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next282.i.2
  store float %i.bjz, ptr %i.bka, align 4, !tbaa !24
  %indvars.iv.next282.i.3 = add nuw nsw i64 %indvars.iv281.i, 4 ; 2 uses
  %exitcond285.not.i.3 = icmp eq i64 %indvars.iv.next282.i.3, %i.az
  br i1 %exitcond285.not.i.3, label %_ZL12do_four_coremiPfS_S_.exit, label %.lr.ph216.i, !llvm.loop !198

_ZL12do_four_coremiPfS_S_.exit:                   ; preds = %.lr.ph216.i.prol.loopexit, %.lr.ph216.i, %middle.block, %vec.epilog.middle.block, %.loopexit170.thread292.i, %.loopexit170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZL10do_ac_coreiiPfS_im.exit

bb.bg:                                            ; preds = %bb.y
  br i1 %i.an, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.i = phi i32 [ 1, %bb.bh ], [ %9, %bb.bg ]   ; 17 uses
  %i.bkb = load ptr, ptr @debug, align 8, !tbaa !22 ; 2 uses
  %.not.i183 = icmp eq ptr %i.bkb, null
  br i1 %.not.i183, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bkc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bkb, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %.0147.fr, i32 noundef %.0.i, i64 noundef %8) #16 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.ao, label %.preheader131.i, label %_ZL10do_ac_coreiiPfS_im.exit

.preheader131.i:                                  ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.aq, i1 false), !tbaa !24
  br i1 %i.ar, label %.lr.ph152.split.us.i, label %.lr.ph182.i

.lr.ph152.split.us.i:                             ; preds = %.preheader131.i
  br i1 %.not156, label %.lr.ph152.split.us.split.us.i, label %.lr.ph137.us.preheader.i

.lr.ph137.us.preheader.i:                         ; preds = %.lr.ph152.split.us.i
  %i.bkd = zext nneg i32 %.0.i to i64             ; 5 uses
  %i.bke = shl nuw nsw i64 %i.bkd, 2
  %i.bkf = urem i64 %i.bh, %i.bkd
  %i.bkg = sub nuw nsw i64 %i.bh, %i.bkf
  %i.bkh = shl nsw i64 %i.bkg, 2
  %i.bki = getelementptr i8, ptr %i.ej, i64 %i.bkh
  %scevgep1275 = getelementptr i8, ptr %i.bki, i64 4
  %bound01279 = icmp ult ptr %i.ah, %scevgep1275
  br label %.lr.ph137.us.i

.lr.ph152.split.us.split.us.i:                    ; preds = %.lr.ph152.split.us.i
  br i1 %.not, label %.lr.ph152.split.us.split.us.split.us.i, label %.lr.ph137.us.us.preheader.i

.lr.ph137.us.us.preheader.i:                      ; preds = %.lr.ph152.split.us.split.us.i
  %i.bkj = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.i

.lr.ph152.split.us.split.us.split.us.i:           ; preds = %.lr.ph152.split.us.split.us.i
  br i1 %.not123.i, label %.lr.ph152.split.us.split.us.split.us.split.us.i, label %.lr.ph137.us.us.us.preheader.i

.lr.ph137.us.us.us.preheader.i:                   ; preds = %.lr.ph152.split.us.split.us.split.us.i
  %i.bkk = zext nneg i32 %.0.i to i64             ; 5 uses
  %i.bkl = shl nuw nsw i64 %i.bkk, 2
  %i.bkm = urem i64 %i.bh, %i.bkk
  %i.bkn = sub nuw nsw i64 %i.bh, %i.bkm
  %i.bko = shl nsw i64 %i.bkn, 2
  %i.bkp = getelementptr i8, ptr %i.ej, i64 %i.bko
  %scevgep1240 = getelementptr i8, ptr %i.bkp, i64 4
  %bound01244 = icmp ult ptr %i.ah, %scevgep1240
  br label %.lr.ph137.us.us.us.i

.lr.ph152.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph152.split.us.split.us.split.us.i
  br i1 %or.cond127.i, label %.lr.ph137.us.us.us.us.us.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.i

.lr.ph137.us.us.us.us.us.preheader.i:             ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  %i.bkq = mul i32 %.0.i, 3
  %i.bkr = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.us.i

.lr.ph137.us.us.us.us.us.i:                       ; preds = %.critedge.us.us.us.us.us.i, %.lr.ph137.us.us.us.us.us.preheader.i
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph137.us.us.us.us.us.preheader.i ], [ %indvars.iv.next255.i, %.critedge.us.us.us.us.us.i ] ; 3 uses
  %indvar.i = phi i32 [ 0, %.lr.ph137.us.us.us.us.us.preheader.i ], [ %indvar.next.i, %.critedge.us.us.us.us.us.i ] ; 2 uses
  %i.bks = mul i32 %i.bkq, %indvar.i
  %i.bkt = zext i32 %i.bks to i64
  %i.bku = shl nuw nsw i64 %i.bkt, 2
  %scevgep244.i = getelementptr i8, ptr %i.ej, i64 %i.bku ; 2 uses
  %i.bkv = trunc nuw nsw i64 %indvars.iv254.i to i32
  %.sroa.5276.0.scevgep244.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep244.i, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph137.us.us.us.us.us.i
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %bb.bp ], [ 0, %.lr.ph137.us.us.us.us.us.i ] ; 4 uses
  %i.bkw = trunc nuw nsw i64 %indvars.iv249.i to i32
  %i.bkx = add nuw nsw i64 %indvars.iv249.i, %indvars.iv254.i ; 2 uses
  %i.bky = icmp samesign ult i64 %i.bkx, %i.az
  br i1 %i.bky, label %bb.bm, label %.critedge.us.us.us.us.us.i

bb.bm:                                            ; preds = %bb.bl
  %i.bkz = mul nuw nsw i64 %i.bkx, 12
  %i.bla = and i64 %i.bkz, 17179869180
  %scevgep245.i = getelementptr i8, ptr %i.ej, i64 %i.bla ; 2 uses
  %.sroa.5276.0.copyload.i = load float, ptr %.sroa.5276.0.scevgep244.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5273.0.scevgep245.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep245.i, i64 8
  %.sroa.5273.0.copyload.i = load float, ptr %.sroa.5273.0.scevgep245.sroa_idx.i, align 4, !tbaa !24
  %i.blb = load <2 x float>, ptr %scevgep244.i, align 4, !tbaa !24 ; 2 uses
  %i.blc = load <2 x float>, ptr %scevgep245.i, align 4, !tbaa !24 ; 2 uses
  %i.bld = shufflevector <2 x float> %i.blb, <2 x float> %i.blc, <2 x i32> <i32 0, i32 2>
  %i.ble = fpext <2 x float> %i.bld to <2 x double> ; 6 uses
  %i.blf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ble, <2 x double> %i.ble, <2 x double> zeroinitializer)
  %i.blg = shufflevector <2 x float> %i.blb, <2 x float> %i.blc, <2 x i32> <i32 1, i32 3>
  %i.blh = fpext <2 x float> %i.blg to <2 x double> ; 6 uses
  %i.bli = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.blh, <2 x double> %i.blh, <2 x double> %i.blf)
  %i.blj = insertelement <2 x float> poison, float %.sroa.5276.0.copyload.i, i64 0
  %i.blk = insertelement <2 x float> %i.blj, float %.sroa.5273.0.copyload.i, i64 1
  %i.bll = fpext <2 x float> %i.blk to <2 x double> ; 6 uses
  %i.blm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bll, <2 x double> %i.bll, <2 x double> %i.bli) ; 2 uses
  %shift = shufflevector <2 x double> %i.blm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1309 = fmul <2 x double> %i.blm, %shift
  %i.bln = extractelement <2 x double> %foldExtExtBinop1309, i64 0 ; 2 uses
  %i.blo = fcmp ogt double %i.bln, 0.000000e+00
  br i1 %i.blo, label %bb.bn, label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

bb.bn:                                            ; preds = %bb.bm
  %i.blp = extractelement <2 x double> %i.ble, i64 0
  %i.blq = extractelement <2 x double> %i.ble, i64 1
  %i.blr = call double @llvm.fmuladd.f64(double %i.blp, double %i.blq, double 0.000000e+00)
  %i.bls = extractelement <2 x double> %i.blh, i64 0
  %i.blt = extractelement <2 x double> %i.blh, i64 1
  %i.blu = call double @llvm.fmuladd.f64(double %i.bls, double %i.blt, double %i.blr)
  %i.blv = extractelement <2 x double> %i.bll, i64 0
  %i.blw = extractelement <2 x double> %i.bll, i64 1
  %i.blx = call double @llvm.fmuladd.f64(double %i.blv, double %i.blw, double %i.blu)
  %i.bly = call double @sqrt(double noundef %i.bln) #16
  %i.blz = fdiv double 1.000000e+00, %i.bly
  %i.bma = fmul double %i.blx, %i.blz
  %i.bmb = fptrunc double %i.bma to float
  br label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i: ; preds = %bb.bn, %bb.bm
  %.026.i.us.us.us.us.us.us.us.us.us.i = phi float [ %i.bmb, %bb.bn ], [ 1.000000e+00, %bb.bm ] ; 3 uses
  %i.bmc = fcmp ogt float %.026.i.us.us.us.us.us.us.us.us.us.i, 1.000000e+00
  %i.bmd = fcmp olt float %.026.i.us.us.us.us.us.us.us.us.us.i, -1.000000e+00
  %..026.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bmd, float -1.000000e+00, float %.026.i.us.us.us.us.us.us.us.us.us.i
  %.027.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bmc, float 1.000000e+00, float %..026.i.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.bme = fpext float %.027.i.us.us.us.us.us.us.us.us.us.i to double
  %i.bmf = fadd double %i.bme, -1.000000e+00
  %i.bmg = fcmp ogt double %i.bmf, 1.000000e-15
  br i1 %i.bmg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.bmh = extractelement <2 x double> %i.bll, i64 0
  %i.bmi = extractelement <2 x double> %i.bll, i64 1
  %i.bmj = extractelement <2 x double> %i.blh, i64 0
  %i.bmk = extractelement <2 x double> %i.blh, i64 1
  %i.bml = extractelement <2 x double> %i.ble, i64 0
  %i.bmm = extractelement <2 x double> %i.ble, i64 1
  %i.bmn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bkv, i32 noundef %i.bkw, double noundef %i.bml, double noundef %i.bmj, double noundef %i.bmh, double noundef %i.bmm, double noundef %i.bmk, double noundef %i.bmi) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.bmo = call noundef float @_Z9LegendrePfj(float noundef %.027.i.us.us.us.us.us.us.us.us.us.i, i32 noundef %.0110.i)
  %i.bmp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv249.i ; 2 uses
  %i.bmq = load float, ptr %i.bmp, align 4, !tbaa !24
  %i.bmr = fadd float %i.bmo, %i.bmq
  store float %i.bmr, ptr %i.bmp, align 4, !tbaa !24
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1 ; 2 uses
  %exitcond253.not.i = icmp eq i64 %indvars.iv.next250.i, %i.ap
  br i1 %exitcond253.not.i, label %.critedge.us.us.us.us.us.i, label %bb.bl, !llvm.loop !199

.critedge.us.us.us.us.us.i:                       ; preds = %bb.bp, %bb.bl
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, %i.bkr ; 2 uses
  %i.bms = trunc nuw i64 %indvars.iv.next255.i to i32
  %i.bmt = icmp sgt i32 %3, %i.bms
  %indvar.next.i = add i32 %indvar.i, 1
  br i1 %i.bmt, label %.lr.ph137.us.us.us.us.us.i, label %.lr.ph182.i, !llvm.loop !200

.lr.ph152.split.us.split.us.split.us.split.us.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  br i1 %i.ay, label %.lr.ph137.us.us.us.us.us175.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i

.lr.ph137.us.us.us.us.us175.preheader.i:          ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  %i.bmu = mul i32 %.0.i, 3
  %i.bmv = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.us175.i

.lr.ph137.us.us.us.us.us175.i:                    ; preds = %.critedge.us.us.us.us.us177.i, %.lr.ph137.us.us.us.us.us175.preheader.i
  %indvars.iv290.a = phi i64 [ %indvars.iv.next294, %.critedge.us.us.us.us.us177.i ], [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %indvars.iv239.i188 = phi i64 [ %indvars.iv.next240.i189, %.critedge.us.us.us.us.us177.i ], [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %i.bmw = trunc nuw i64 %indvars.iv290.a to i32
  %i.bmx = mul i32 %i.bmu, %i.bmw
  %i.bmy = zext i32 %i.bmx to i64
  %i.bmz = shl nuw nsw i64 %i.bmy, 2
  %scevgep227.i = getelementptr i8, ptr %i.ej, i64 %i.bmz ; 3 uses
  %.sroa.4269.0.scevgep227.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep227.i, i64 4
  %.sroa.5270.0.scevgep227.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep227.i, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph137.us.us.us.us.us175.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %bb.br ], [ 0, %.lr.ph137.us.us.us.us.us175.i ] ; 3 uses
  %27 = add nuw nsw i64 %indvars.iv232.i, %indvars.iv239.i188 ; 2 uses
  %28 = icmp samesign ult i64 %27, %i.az
  br i1 %28, label %bb.br, label %.critedge.us.us.us.us.us177.i

bb.br:                                            ; preds = %bb.bq
  %i.bna = mul nuw nsw i64 %27, 12
  %i.bnb = and i64 %i.bna, 17179869180
  %scevgep228.i = getelementptr i8, ptr %i.ej, i64 %i.bnb ; 3 uses
  %.sroa.0268.0.copyload.i = load float, ptr %scevgep227.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4269.0.copyload.i = load float, ptr %.sroa.4269.0.scevgep227.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5270.0.copyload.i = load float, ptr %.sroa.5270.0.scevgep227.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.0265.0.copyload.i = load float, ptr %scevgep228.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4266.0.scevgep228.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep228.i, i64 4
  %.sroa.4266.0.copyload.i = load float, ptr %.sroa.4266.0.scevgep228.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5267.0.scevgep228.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep228.i, i64 8
  %.sroa.5267.0.copyload.i = load float, ptr %.sroa.5267.0.scevgep228.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %i.bnc = fneg float %.sroa.4266.0.copyload.i
  %i.bnd = fmul float %.sroa.5270.0.copyload.i, %i.bnc
  %i.bne = call float @llvm.fmuladd.f32(float %.sroa.4269.0.copyload.i, float %.sroa.5267.0.copyload.i, float %i.bnd) ; 2 uses
  %i.bnf = fneg float %.sroa.5267.0.copyload.i
  %i.bng = fmul float %.sroa.0268.0.copyload.i, %i.bnf
  %i.bnh = call float @llvm.fmuladd.f32(float %.sroa.5270.0.copyload.i, float %.sroa.0265.0.copyload.i, float %i.bng) ; 2 uses
  %i.bni = fneg float %.sroa.0265.0.copyload.i
  %i.bnj = fmul float %.sroa.4269.0.copyload.i, %i.bni
  %i.bnk = call float @llvm.fmuladd.f32(float %.sroa.0268.0.copyload.i, float %.sroa.4266.0.copyload.i, float %i.bnj) ; 2 uses
  %i.bnl = fmul float %i.bnh, %i.bnh
  %i.bnm = call float @llvm.fmuladd.f32(float %i.bne, float %i.bne, float %i.bnl)
  %i.bnn = call noundef float @llvm.fmuladd.f32(float %i.bnk, float %i.bnk, float %i.bnm)
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232.i ; 2 uses
  %i.bnp = load float, ptr %i.bno, align 4, !tbaa !24
  %i.bnq = fadd float %i.bnp, %i.bnn
  store float %i.bnq, ptr %i.bno, align 4, !tbaa !24
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %i.ap
  br i1 %exitcond236.not.i, label %.critedge.us.us.us.us.us177.i, label %bb.bq, !llvm.loop !199

.critedge.us.us.us.us.us177.i:                    ; preds = %bb.br, %bb.bq
  %indvars.iv.next240.i189 = add nuw nsw i64 %indvars.iv239.i188, %i.bmv ; 2 uses
  %i.bnr = icmp samesign ult i64 %indvars.iv.next240.i189, %i.az
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv290.a, 1
  br i1 %i.bnr, label %.lr.ph137.us.us.us.us.us175.i, label %.lr.ph182.i, !llvm.loop !200

.lr.ph152.split.us.split.us.split.us.split.us.split.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  br i1 %.not155, label %.split.us174.i, label %.lr.ph137.us.us.us.us.preheader.i

.lr.ph137.us.us.us.us.preheader.i:                ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  %i.bns = mul i32 %.0.i, 3
  %i.bnt = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.i

.lr.ph137.us.us.us.us.i:                          ; preds = %.critedge.us.us.us.us.i, %.lr.ph137.us.us.us.us.preheader.i
  %indvars.iv284 = phi i64 [ %indvars.iv.next288, %.critedge.us.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i, %.critedge.us.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %i.bnu = trunc nuw i64 %indvars.iv284 to i32
  %i.bnv = mul i32 %i.bns, %i.bnu
  %i.bnw = zext i32 %i.bnv to i64
  %i.bnx = shl nuw nsw i64 %i.bnw, 2
  %scevgep.i = getelementptr i8, ptr %i.ej, i64 %i.bnx ; 3 uses
  %.sroa.4263.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %.sroa.5264.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph137.us.us.us.us.i
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %bb.bt ], [ 0, %.lr.ph137.us.us.us.us.i ] ; 3 uses
  %29 = add nuw nsw i64 %indvars.iv215.i, %indvars.iv222.i ; 2 uses
  %30 = icmp samesign ult i64 %29, %i.az
  br i1 %30, label %bb.bt, label %.critedge.us.us.us.us.i

bb.bt:                                            ; preds = %bb.bs
  %i.bny = mul nuw nsw i64 %29, 12
  %i.bnz = and i64 %i.bny, 17179869180
  %scevgep211.i = getelementptr i8, ptr %i.ej, i64 %i.bnz ; 3 uses
  %.sroa.0262.0.copyload.i = load float, ptr %scevgep.i, align 4, !tbaa !24
  %.sroa.4263.0.copyload.i = load float, ptr %.sroa.4263.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5264.0.copyload.i = load float, ptr %.sroa.5264.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.0.0.copyload.i = load float, ptr %scevgep211.i, align 4, !tbaa !24
  %.sroa.4.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 4
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %i.boa = fmul float %.sroa.4263.0.copyload.i, %.sroa.4.0.copyload.i
  %i.bob = call float @llvm.fmuladd.f32(float %.sroa.0262.0.copyload.i, float %.sroa.0.0.copyload.i, float %i.boa)
  %i.boc = call noundef float @llvm.fmuladd.f32(float %.sroa.5264.0.copyload.i, float %.sroa.5.0.copyload.i, float %i.bob)
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv215.i ; 2 uses
  %i.boe = load float, ptr %i.bod, align 4, !tbaa !24
  %i.bof = fadd float %i.boe, %i.boc
  store float %i.bof, ptr %i.bod, align 4, !tbaa !24
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next216.i, %i.ap
  br i1 %exitcond219.not.i, label %.critedge.us.us.us.us.i, label %bb.bs, !llvm.loop !199

.critedge.us.us.us.us.i:                          ; preds = %bb.bt, %bb.bs
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, %i.bnt ; 2 uses
  %i.bog = icmp samesign ult i64 %indvars.iv.next223.i, %i.az
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv284, 1
  br i1 %i.bog, label %.lr.ph137.us.us.us.us.i, label %.lr.ph182.i, !llvm.loop !200

.lr.ph137.us.us.us.i:                             ; preds = %.critedge.us.us.us.i, %.lr.ph137.us.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 4 uses
  %indvars.iv281 = phi i64 [ %indvars.iv.next209.i, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 6 uses
  %31 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv281 ; 3 uses
  %32 = call i64 @llvm.umax.i64(i64 %indvars.iv281, i64 %i.az)
  %33 = mul i64 %indvar, %i.bkk
  %34 = sub i64 %32, %33
  %i.boh = call i64 @llvm.umin.i64(i64 %i.bk, i64 %34)
  %i.boi = add nsw i64 %i.boh, 1                  ; 3 uses
  %min.iters.check1249 = icmp ult i64 %i.boi, 33
  br i1 %min.iters.check1249, label %scalar.ph1248.preheader, label %vector.memcheck1235

vector.memcheck1235:                              ; preds = %.lr.ph137.us.us.us.i
  %i.boj = mul i64 %i.bkl, %indvar
  %i.bok = getelementptr i8, ptr %i.ej, i64 %i.boj
  %scevgep1238 = getelementptr i8, ptr %i.bok, i64 4
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv281, i64 %i.az)
  %35 = mul i64 %indvar, %i.bkk
  %36 = sub i64 %umax, %35
  %umin = call i64 @llvm.umin.i64(i64 %i.bg, i64 %36)
  %i.bol = shl i64 %umin, 2                       ; 2 uses
  %scevgep1239 = getelementptr i8, ptr %scevgep1238, i64 %i.bol
  %scevgep1237 = getelementptr i8, ptr %scevgep1236, i64 %i.bol ; 2 uses
  %bound01241 = icmp ult ptr %i.ah, %scevgep1239
  %bound11242 = icmp ult ptr %31, %scevgep1237
  %found.conflict1243 = and i1 %bound01241, %bound11242
  %bound11245 = icmp ult ptr %i.ej, %scevgep1237
  %found.conflict1246 = and i1 %bound01244, %bound11245
  %conflict.rdx1247 = or i1 %found.conflict1243, %found.conflict1246
  br i1 %conflict.rdx1247, label %scalar.ph1248.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %vector.memcheck1235
  %i.bom = and i64 %i.boi, 31                     ; 2 uses
  %i.bon = icmp eq i64 %i.bom, 0
  %i.boo = select i1 %i.bon, i64 32, i64 %i.bom
  %n.vec1251 = sub i64 %i.boi, %i.boo             ; 2 uses
  %i.bop = load float, ptr %31, align 4, !tbaa !24, !alias.scope !263
  %broadcast.splatinsert1258 = insertelement <8 x float> poison, float %i.bop, i64 0
  %broadcast.splat1259 = shufflevector <8 x float> %broadcast.splatinsert1258, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep1396 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv281
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1264, %vector.body1252 ] ; 3 uses
  %i.boq = getelementptr [4 x i8], ptr %invariant.gep1396, i64 %index1253 ; 4 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 32
  %i.bos = getelementptr inbounds nuw i8, ptr %i.boq, i64 64
  %i.bot = getelementptr inbounds nuw i8, ptr %i.boq, i64 96
  %wide.load1254 = load <8 x float>, ptr %i.boq, align 4, !tbaa !24, !alias.scope !264
  %wide.load1255 = load <8 x float>, ptr %i.bor, align 4, !tbaa !24, !alias.scope !264
  %wide.load1256 = load <8 x float>, ptr %i.bos, align 4, !tbaa !24, !alias.scope !264
  %wide.load1257 = load <8 x float>, ptr %i.bot, align 4, !tbaa !24, !alias.scope !264
  %i.bou = fcmp oeq <8 x float> %broadcast.splat1259, %wide.load1254
  %i.bov = fcmp oeq <8 x float> %broadcast.splat1259, %wide.load1255
  %i.bow = fcmp oeq <8 x float> %broadcast.splat1259, %wide.load1256
  %i.box = fcmp oeq <8 x float> %broadcast.splat1259, %wide.load1257
  %i.boy = uitofp <8 x i1> %i.bou to <8 x float>
  %i.boz = uitofp <8 x i1> %i.bov to <8 x float>
  %i.bpa = uitofp <8 x i1> %i.bow to <8 x float>
  %i.bpb = uitofp <8 x i1> %i.box to <8 x float>
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1253 ; 5 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 32 ; 2 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpc, i64 64 ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpc, i64 96 ; 2 uses
  %wide.load1260 = load <8 x float>, ptr %i.bpc, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  %wide.load1261 = load <8 x float>, ptr %i.bpd, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  %wide.load1262 = load <8 x float>, ptr %i.bpe, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  %wide.load1263 = load <8 x float>, ptr %i.bpf, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  %i.bpg = fadd <8 x float> %wide.load1260, %i.boy
  %i.bph = fadd <8 x float> %wide.load1261, %i.boz
  %i.bpi = fadd <8 x float> %wide.load1262, %i.bpa
  %i.bpj = fadd <8 x float> %wide.load1263, %i.bpb
  store <8 x float> %i.bpg, ptr %i.bpc, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  store <8 x float> %i.bph, ptr %i.bpd, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  store <8 x float> %i.bpi, ptr %i.bpe, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  store <8 x float> %i.bpj, ptr %i.bpf, align 4, !tbaa !24, !alias.scope !265, !noalias !266
  %index.next1264 = add nuw i64 %index1253, 32    ; 2 uses
  %i.bpk = icmp eq i64 %index.next1264, %n.vec1251
  br i1 %i.bpk, label %scalar.ph1248.preheader, label %vector.body1252, !llvm.loop !205

scalar.ph1248.preheader:                          ; preds = %vector.body1252, %vector.memcheck1235, %.lr.ph137.us.us.us.i
  %indvars.iv203.i.ph = phi i64 [ 0, %vector.memcheck1235 ], [ 0, %.lr.ph137.us.us.us.i ], [ %n.vec1251, %vector.body1252 ]
  br label %scalar.ph1248

scalar.ph1248:                                    ; preds = %scalar.ph1248.preheader, %bb.bu
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i, %bb.bu ], [ %indvars.iv203.i.ph, %scalar.ph1248.preheader ] ; 3 uses
  %37 = add nuw nsw i64 %indvars.iv203.i, %indvars.iv281 ; 2 uses
  %38 = icmp samesign ult i64 %37, %i.az
  br i1 %38, label %bb.bu, label %.critedge.us.us.us.i

bb.bu:                                            ; preds = %scalar.ph1248
  %i.bpl = load float, ptr %31, align 4, !tbaa !24
  %gep363 = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %37
  %i.bpm = load float, ptr %gep363, align 4, !tbaa !24
  %i.bpn = fcmp oeq float %i.bpl, %i.bpm
  %i.bpo = uitofp i1 %i.bpn to float
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv203.i ; 2 uses
  %i.bpq = load float, ptr %i.bpp, align 4, !tbaa !24
  %i.bpr = fadd float %i.bpq, %i.bpo
  store float %i.bpr, ptr %i.bpp, align 4, !tbaa !24
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %i.ap
  br i1 %exitcond207.not.i, label %.critedge.us.us.us.i, label %scalar.ph1248, !llvm.loop !206

.critedge.us.us.us.i:                             ; preds = %bb.bu, %scalar.ph1248
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv281, %i.bkk ; 2 uses
  %i.bps = icmp samesign ult i64 %indvars.iv.next209.i, %i.az
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bps, label %.lr.ph137.us.us.us.i, label %.lr.ph182.i, !llvm.loop !200

.lr.ph137.us.us.i:                                ; preds = %.critedge.us.us.i, %.lr.ph137.us.us.preheader.i
  %indvars.iv200.i = phi i64 [ 0, %.lr.ph137.us.us.preheader.i ], [ %indvars.iv.next201.i, %.critedge.us.us.i ] ; 3 uses
  %invariant.gep360 = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv200.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph137.us.us.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %bb.bw ], [ 0, %.lr.ph137.us.us.i ] ; 3 uses
  %39 = add nuw nsw i64 %indvars.iv195.i, %indvars.iv200.i ; 2 uses
  %40 = icmp samesign ult i64 %39, %i.az
  br i1 %40, label %bb.bw, label %.critedge.us.us.i

bb.bw:                                            ; preds = %bb.bv
  %i.bpt = load float, ptr %invariant.gep360, align 4, !tbaa !24
  %gep361 = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %39
  %i.bpu = load float, ptr %gep361, align 4, !tbaa !24
  %i.bpv = fsub float %i.bpt, %i.bpu
  %i.bpw = call noundef float @cosf(float noundef %i.bpv) #16
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv195.i ; 2 uses
  %i.bpy = load float, ptr %i.bpx, align 4, !tbaa !24
  %i.bpz = fadd float %i.bpw, %i.bpy
  store float %i.bpz, ptr %i.bpx, align 4, !tbaa !24
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %i.ap
  br i1 %exitcond199.not.i, label %.critedge.us.us.i, label %bb.bv, !llvm.loop !199

.critedge.us.us.i:                                ; preds = %bb.bw, %bb.bv
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, %i.bkj ; 2 uses
  %i.bqa = icmp samesign ult i64 %indvars.iv.next201.i, %i.az
  br i1 %i.bqa, label %.lr.ph137.us.us.i, label %.lr.ph182.i, !llvm.loop !200

.lr.ph137.us.i:                                   ; preds = %.critedge.us.i, %.lr.ph137.us.preheader.i
  %indvar1271 = phi i64 [ %indvar.next1272, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next193.i, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 6 uses
  %41 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv ; 3 uses
  %42 = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 %i.az)
  %43 = mul i64 %indvar1271, %i.bkd
  %44 = sub i64 %42, %43
  %i.bqb = call i64 @llvm.umin.i64(i64 %i.bj, i64 %44)
  %i.bqc = add nsw i64 %i.bqb, 1                  ; 3 uses
  %min.iters.check1284 = icmp ult i64 %i.bqc, 33
  br i1 %min.iters.check1284, label %scalar.ph1283.preheader, label %vector.memcheck1267

vector.memcheck1267:                              ; preds = %.lr.ph137.us.i
  %i.bqd = mul i64 %i.bke, %indvar1271
  %i.bqe = getelementptr i8, ptr %i.ej, i64 %i.bqd
  %scevgep1273 = getelementptr i8, ptr %i.bqe, i64 4
  %umax1255 = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 %i.az)
  %45 = mul i64 %indvar1271, %i.bkd
  %46 = sub i64 %umax1255, %45
  %umin1269 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %46)
  %i.bqf = shl i64 %umin1269, 2                   ; 2 uses
  %scevgep1274 = getelementptr i8, ptr %scevgep1273, i64 %i.bqf
  %scevgep1270 = getelementptr i8, ptr %scevgep1268, i64 %i.bqf ; 2 uses
  %bound01276 = icmp ult ptr %i.ah, %scevgep1274
  %bound11277 = icmp ult ptr %41, %scevgep1270
  %found.conflict1278 = and i1 %bound01276, %bound11277
  %bound11280 = icmp ult ptr %i.ej, %scevgep1270
  %found.conflict1281 = and i1 %bound01279, %bound11280
  %conflict.rdx1282 = or i1 %found.conflict1278, %found.conflict1281
  br i1 %conflict.rdx1282, label %scalar.ph1283.preheader, label %vector.ph1285

vector.ph1285:                                    ; preds = %vector.memcheck1267
  %i.bqg = and i64 %i.bqc, 31                     ; 2 uses
  %i.bqh = icmp eq i64 %i.bqg, 0
  %i.bqi = select i1 %i.bqh, i64 32, i64 %i.bqg
  %n.vec1286 = sub i64 %i.bqc, %i.bqi             ; 2 uses
  %i.bqj = load float, ptr %41, align 4, !tbaa !24, !alias.scope !267
  %broadcast.splatinsert1297 = insertelement <8 x float> poison, float %i.bqj, i64 0
  %broadcast.splat1298 = shufflevector <8 x float> %broadcast.splatinsert1297, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1285
  %index1288 = phi i64 [ 0, %vector.ph1285 ], [ %index.next1299, %vector.body1287 ] ; 3 uses
  %i.bqk = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1288 ; 4 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 32
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqk, i64 64
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqk, i64 96
  %wide.load1289 = load <8 x float>, ptr %i.bqk, align 4, !tbaa !24, !alias.scope !268
  %wide.load1290 = load <8 x float>, ptr %i.bql, align 4, !tbaa !24, !alias.scope !268
  %wide.load1291 = load <8 x float>, ptr %i.bqm, align 4, !tbaa !24, !alias.scope !268
  %wide.load1292 = load <8 x float>, ptr %i.bqn, align 4, !tbaa !24, !alias.scope !268
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1288 ; 5 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 32 ; 2 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqo, i64 64 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqo, i64 96 ; 2 uses
  %wide.load1293 = load <8 x float>, ptr %i.bqo, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  %wide.load1294 = load <8 x float>, ptr %i.bqp, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  %wide.load1295 = load <8 x float>, ptr %i.bqq, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  %wide.load1296 = load <8 x float>, ptr %i.bqr, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  %i.bqs = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1298, <8 x float> %wide.load1289, <8 x float> %wide.load1293)
  %i.bqt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1298, <8 x float> %wide.load1290, <8 x float> %wide.load1294)
  %i.bqu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1298, <8 x float> %wide.load1291, <8 x float> %wide.load1295)
  %i.bqv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1298, <8 x float> %wide.load1292, <8 x float> %wide.load1296)
  store <8 x float> %i.bqs, ptr %i.bqo, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  store <8 x float> %i.bqt, ptr %i.bqp, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  store <8 x float> %i.bqu, ptr %i.bqq, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  store <8 x float> %i.bqv, ptr %i.bqr, align 4, !tbaa !24, !alias.scope !269, !noalias !270
  %index.next1299 = add nuw i64 %index1288, 32    ; 2 uses
  %i.bqw = icmp eq i64 %index.next1299, %n.vec1286
  br i1 %i.bqw, label %scalar.ph1283.preheader, label %vector.body1287, !llvm.loop !211

scalar.ph1283.preheader:                          ; preds = %vector.body1287, %vector.memcheck1267, %.lr.ph137.us.i
  %indvars.iv.i185.ph = phi i64 [ 0, %vector.memcheck1267 ], [ 0, %.lr.ph137.us.i ], [ %n.vec1286, %vector.body1287 ]
  br label %scalar.ph1283

scalar.ph1283:                                    ; preds = %scalar.ph1283.preheader, %bb.bx
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186, %bb.bx ], [ %indvars.iv.i185.ph, %scalar.ph1283.preheader ] ; 3 uses
  %47 = add nuw nsw i64 %indvars.iv.i185, %indvars.iv ; 2 uses
  %48 = icmp samesign ult i64 %47, %i.az
  br i1 %48, label %bb.bx, label %.critedge.us.i

bb.bx:                                            ; preds = %scalar.ph1283
  %i.bqx = load float, ptr %41, align 4, !tbaa !24
  %gep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %47
  %i.bqy = load float, ptr %gep, align 4, !tbaa !24
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i185 ; 2 uses
  %i.bra = load float, ptr %i.bqz, align 4, !tbaa !24
  %i.brb = call float @llvm.fmuladd.f32(float %i.bqx, float %i.bqy, float %i.bra)
  store float %i.brb, ptr %i.bqz, align 4, !tbaa !24
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i185, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i186, %i.ap
  br i1 %exitcond.not.i187, label %.critedge.us.i, label %scalar.ph1283, !llvm.loop !212

.critedge.us.i:                                   ; preds = %bb.bx, %scalar.ph1283
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv, %i.bkd ; 2 uses
  %i.brc = icmp samesign ult i64 %indvars.iv.next193.i, %i.az
  %indvar.next1272 = add i64 %indvar1271, 1
  br i1 %i.brc, label %.lr.ph137.us.i, label %.lr.ph182.i, !llvm.loop !200

.lr.ph182.i:                                      ; preds = %.critedge.us.i, %.critedge.us.us.i, %.critedge.us.us.us.i, %.critedge.us.us.us.us.i, %.critedge.us.us.us.us.us177.i, %.critedge.us.us.us.us.us.i, %.preheader131.i
  %i.brd = add i32 %.0.i, %3                      ; 6 uses
  %i.bre = sub i64 %i.ai, %i.ek
  %diff.check1218 = icmp ugt i64 %i.bre, -32
  %or.cond1305 = select i1 %min.iters.check1219, i1 true, i1 %diff.check1218
  br i1 %or.cond1305, label %scalar.ph.preheader, label %vector.ph1220

vector.ph1220:                                    ; preds = %.lr.ph182.i
  %broadcast.splatinsert1222 = insertelement <8 x i32> poison, i32 %i.brd, i64 0
  %broadcast.splat1223 = shufflevector <8 x i32> %broadcast.splatinsert1222, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1224 = insertelement <8 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat1225 = shufflevector <8 x i32> %broadcast.splatinsert1224, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1220
  %index1227 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1230, %vector.body1226 ] ; 3 uses
  %vec.ind1228 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1220 ], [ %vec.ind.next1231, %vector.body1226 ] ; 2 uses
  %i.brf = xor <8 x i32> %vec.ind1228, splat (i32 -1)
  %i.brg = add <8 x i32> %broadcast.splat1223, %i.brf
  %i.brh = sdiv <8 x i32> %i.brg, %broadcast.splat1225
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1227
  %wide.load1229 = load <8 x float>, ptr %i.bri, align 4, !tbaa !24
  %i.brj = sitofp <8 x i32> %i.brh to <8 x float>
  %i.brk = fdiv <8 x float> %wide.load1229, %i.brj
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1227
  store <8 x float> %i.brk, ptr %i.brl, align 4, !tbaa !24
  %index.next1230 = add nuw i64 %index1227, 8     ; 2 uses
  %vec.ind.next1231 = add <8 x i32> %vec.ind1228, splat (i32 8)
  %i.brm = icmp eq i64 %index.next1230, %n.vec1221
  br i1 %i.brm, label %middle.block1232, label %vector.body1226, !llvm.loop !213

middle.block1232:                                 ; preds = %vector.body1226
  br i1 %cmp.n1233, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph182.i, %middle.block1232
  %indvars.iv257.i.ph = phi i64 [ 0, %.lr.ph182.i ], [ %n.vec1221, %middle.block1232 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv257.i.prol = phi i64 [ %indvars.iv.next258.i.prol, %scalar.ph.prol ], [ %indvars.iv257.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.brn = trunc nuw nsw i64 %indvars.iv257.i.prol to i32
  %i.bro = xor i32 %i.brn, -1
  %i.brp = add i32 %i.brd, %i.bro
  %i.brq = sdiv i32 %i.brp, %.0.i
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv257.i.prol
  %i.brs = load float, ptr %i.brr, align 4, !tbaa !24
  %i.brt = sitofp i32 %i.brq to float
  %i.bru = fdiv float %i.brs, %i.brt
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv257.i.prol
  store float %i.bru, ptr %i.brv, align 4, !tbaa !24
  %indvars.iv.next258.i.prol = add nuw nsw i64 %indvars.iv257.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !214

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv257.i.unr = phi i64 [ %indvars.iv257.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next258.i.prol, %scalar.ph.prol ]
  %i.brw = sub nsw i64 %indvars.iv257.i.ph, %i.ap
  %i.brx = icmp ugt i64 %i.brw, -4
  br i1 %i.brx, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph

.split.us174.i:                                   ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 242, ptr noundef nonnull @.str.40, i64 noundef %8) #17
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.split.us174.i
  unreachable

bb.bz:                                            ; preds = %.split.us174.i
  %i.bry = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %common.resume

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i.3, %scalar.ph ], [ %indvars.iv257.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.brz = trunc nuw nsw i64 %indvars.iv257.i to i32
  %i.bsa = xor i32 %i.brz, -1
  %i.bsb = add i32 %i.brd, %i.bsa
  %i.bsc = sdiv i32 %i.bsb, %.0.i
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv257.i
  %i.bse = load float, ptr %i.bsd, align 4, !tbaa !24
  %i.bsf = sitofp i32 %i.bsc to float
  %i.bsg = fdiv float %i.bse, %i.bsf
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv257.i
  store float %i.bsg, ptr %i.bsh, align 4, !tbaa !24
  %indvars.iv.next258.i = add nuw nsw i64 %indvars.iv257.i, 1 ; 3 uses
  %i.bsi = trunc nuw nsw i64 %indvars.iv.next258.i to i32
  %i.bsj = xor i32 %i.bsi, -1
  %i.bsk = add i32 %i.brd, %i.bsj
  %i.bsl = sdiv i32 %i.bsk, %.0.i
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next258.i
  %i.bsn = load float, ptr %i.bsm, align 4, !tbaa !24
  %i.bso = sitofp i32 %i.bsl to float
  %i.bsp = fdiv float %i.bsn, %i.bso
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next258.i
  store float %i.bsp, ptr %i.bsq, align 4, !tbaa !24
  %indvars.iv.next258.i.1 = add nuw nsw i64 %indvars.iv257.i, 2 ; 3 uses
  %i.bsr = trunc nuw nsw i64 %indvars.iv.next258.i.1 to i32
  %i.bss = xor i32 %i.bsr, -1
  %i.bst = add i32 %i.brd, %i.bss
  %i.bsu = sdiv i32 %i.bst, %.0.i
  %i.bsv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next258.i.1
  %i.bsw = load float, ptr %i.bsv, align 4, !tbaa !24
  %i.bsx = sitofp i32 %i.bsu to float
  %i.bsy = fdiv float %i.bsw, %i.bsx
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next258.i.1
  store float %i.bsy, ptr %i.bsz, align 4, !tbaa !24
  %indvars.iv.next258.i.2 = add nuw nsw i64 %indvars.iv257.i, 3 ; 3 uses
  %i.bta = trunc nuw nsw i64 %indvars.iv.next258.i.2 to i32
  %i.btb = xor i32 %i.bta, -1
  %i.btc = add i32 %i.brd, %i.btb
  %i.btd = sdiv i32 %i.btc, %.0.i
  %i.bte = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next258.i.2
  %i.btf = load float, ptr %i.bte, align 4, !tbaa !24
  %i.btg = sitofp i32 %i.btd to float
  %i.bth = fdiv float %i.btf, %i.btg
  %i.bti = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next258.i.2
  store float %i.bth, ptr %i.bti, align 4, !tbaa !24
  %indvars.iv.next258.i.3 = add nuw nsw i64 %indvars.iv257.i, 4 ; 2 uses
  %exitcond261.not.i.3 = icmp eq i64 %indvars.iv.next258.i.3, %i.ap
  br i1 %exitcond261.not.i.3, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph, !llvm.loop !215

_ZL10do_ac_coreiiPfS_im.exit:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1232, %bb.bk, %_ZL12do_four_coremiPfS_S_.exit
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %._crit_edge, label %bb.v, !llvm.loop !216

bb.ca:                                            ; preds = %._crit_edge
  %i.btj = load ptr, ptr @stderr, align 8, !tbaa !22
  %fputc = call i32 @fputc(i32 10, ptr %i.btj)    ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 629, ptr noundef %i.ah)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 630, ptr noundef %i.ag)
  %i.btk = load ptr, ptr %i.b, align 8, !tbaa !12
  %.not159 = icmp eq ptr %i.btk, null
  br i1 %.not159, label %bb.cf, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cb
  %i.btl = sext i32 %.0147.fr to i64
  %i.btm = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 634, i64 noundef range(i64 -2147483648, 2147483648) %i.btl, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.btn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.btn, ptr %22, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.btn, ptr noundef nonnull align 1 dereferenceable(9) @.str.13, i64 9, i1 false)
  %i.bto = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 9, ptr %i.bto, align 8, !tbaa !34
  %i.btp = getelementptr inbounds nuw i8, ptr %22, i64 25
  store i8 0, ptr %i.btp, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.btq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.btq, ptr %23, align 8, !tbaa !32
  store i32 695478339, ptr %i.btq, align 8
  %i.btr = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 4, ptr %i.btr, align 8, !tbaa !34
  %i.bts = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i8 0, ptr %i.bts, align 4, !tbaa !35
  %i.btt = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %1)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %._crit_edge.i.i
  %i.btu = load ptr, ptr %23, align 8, !tbaa !36  ; 2 uses
  %i.btv = icmp eq ptr %i.btu, %i.btq
  br i1 %i.btv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cc
  %i.btw = load i64, ptr %i.btq, align 8, !tbaa !35
  %i.btx = add i64 %i.btw, 1
  call void @_ZdlPvm(ptr noundef %i.btu, i64 noundef %i.btx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.bty = load ptr, ptr %22, align 8, !tbaa !36  ; 2 uses
  %i.btz = icmp eq ptr %i.bty, %i.btn
  br i1 %i.btz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bua = load i64, ptr %i.btn, align 8, !tbaa !35
  %i.bub = add i64 %i.bua, 1
  call void @_ZdlPvm(ptr noundef %i.bty, i64 noundef %i.bub) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %i.buc = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.bud = load ptr, ptr %i.buc, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bud, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.cd
end_hunk_1
