Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairs?download=true
inline.NumInlined: 420
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%"class.gmx::ArrayRef.0" = type { %"struct.gmx::ArrayRefIter.1", %"struct.gmx::ArrayRefIter.1" }
%"struct.gmx::ArrayRefIter.1" = type { ptr }
%"class.gmx::ArrayRef.3" = type { %"struct.gmx::ArrayRefIter.4", %"struct.gmx::ArrayRefIter.4" }
%"struct.gmx::ArrayRefIter.4" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.172" }
%"class.std::unique_ptr.172" = type { %"struct.std::__uniq_ptr_data.173" }
%"struct.std::__uniq_ptr_data.173" = type { %"class.std::__uniq_ptr_impl.174" }
%"class.std::__uniq_ptr_impl.174" = type { %"class.std::tuple.175" }
%"class.std::tuple.175" = type { %"struct.std::_Tuple_impl.176" }
%"struct.std::_Tuple_impl.176" = type { %"struct.std::_Head_base.179" }
%"struct.std::_Head_base.179" = type { ptr }
%struct.t_pbc = type { i32, i32, i32, i32, [3 x [3 x float]], [3 x float], [3 x float], [3 x float], float, i32, [12 x [3 x i32]], [12 x [3 x float]] }

$_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@_ZZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPiE13warned_rlimit = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [68 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/listed_forces/pairs.cpp\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Unknown function type %d in do_nonbonded14\00", align 1
@.str.3 = private unnamed_addr constant [692 x i8] c"Listed nonbonded interaction between particles %d and %d\0Aat distance %.3f which is larger than the table limit %.3f nm.\0A\0AThis is likely either a 1,4 interaction, or a listed interaction inside\0Aa smaller molecule you are decoupling during a free energy calculation.\0ASince interactions at distances beyond the table cannot be computed,\0Athey are skipped until they are inside the table limit again. You will\0Aonly see this message once, even if it occurs for several interactions.\0A\0AIMPORTANT: This should not happen in a stable simulation, so there is\0Aprobably something wrong with your system. Only change the table-extension\0Adistance in the mdp file if you are really sure that is the reason.\0A\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [83 x i8] c"%8f %8f %8f\0A%8f %8f %8f\0A1-4 (%d,%d) interaction not within cut-off! r=%g. Ignored\0A\00", align 1
@_ZZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPiE13warned_rlimit = internal unnamed_addr global i1 false, align 1

; Function Attrs: mustprogress uwtable
define void @_Z8do_pairs19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS5_PfN3gmx8ArrayRefIS5_EESJ_NSI_IKbEENSI_IKtEEiPK10t_forcerecbRKNSH_12StepWorkloadEP17gmx_grppairener_tPi(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %11, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %12, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %13, i32 noundef %14, ptr nofree noundef readonly captures(none) %15, i1 noundef zeroext %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(19) %17, ptr nofree noundef readonly captures(none) %18, ptr noundef %19) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 9 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %i.c = alloca float, align 4                    ; 9 uses
  %i.d = alloca [2 x float], align 4              ; 9 uses
  %i.e = alloca [2 x float], align 4              ; 9 uses
  %i.f = alloca [2 x float], align 8              ; 8 uses
  %i.g = alloca [2 x float], align 4              ; 8 uses
  %i.h = alloca [2 x float], align 4              ; 8 uses
  %i.i = alloca [2 x float], align 8              ; 7 uses
  %i.j = alloca [2 x float], align 8              ; 7 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.k = alloca [3 x float], align 8              ; 9 uses
  %i.l = alloca float, align 4                    ; 9 uses
  %i.m = alloca float, align 4                    ; 9 uses
  %i.n = alloca [2 x float], align 4              ; 9 uses
  %i.o = alloca [2 x float], align 4              ; 9 uses
  %i.p = alloca [2 x float], align 8              ; 8 uses
  %i.q = alloca [2 x float], align 4              ; 8 uses
  %i.r = alloca [2 x float], align 4              ; 8 uses
  %i.s = alloca [2 x float], align 8              ; 7 uses
  %i.t = alloca [2 x float], align 8              ; 7 uses
  %21 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.u = alloca [144 x float], align 64           ; 4 uses
  %22 = alloca %struct.t_pbc, align 4             ; 4 uses
  %i.v = icmp eq i32 %0, 33
  br i1 %i.v, label %bb.b, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %15, align 8, !tbaa !9     ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !12
  %.not = icmp eq i32 %i.x, 3
  br i1 %.not, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.val = load i32, ptr %i.y, align 8, !tbaa !39
  switch i32 %.val, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit [
    i32 9, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 13, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 15, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread
  ]

_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !range !40
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %16, i1 true, i1 %i.ab
  br i1 %or.cond, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !41, !range !40, !noundef !43
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 73
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !44, !range !40, !noundef !43
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  call void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef %7, ptr noundef nonnull %i.u)
  %i.ai = load ptr, ptr %10, align 8, !tbaa !159
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = load ptr, ptr %15, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  %i.am = load float, ptr %i.al, align 4, !tbaa !161
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.ao = load float, ptr %i.an, align 8, !tbaa !162
  %i.ap = fmul float %i.am, %i.ao
  call fastcc void @_ZL15do_pairs_simpleIN3gmx9SimdFloatELi16EPKfEviPKiPK9t_iparamsPA3_S2_PA4_fT1_NS0_8ArrayRefIS2_EEf(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %i.u, i64 %i.aj, float noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  br label %bb.by

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %.not55 = icmp eq ptr %7, null
  br i1 %.not55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %22, i32 noundef 1, ptr noundef null)
  %.pre = load ptr, ptr %15, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aq = phi ptr [ %.pre, %bb.h ], [ %i.w, %bb.g ]
  %.0 = phi ptr [ %22, %bb.h ], [ %7, %bb.g ]
  %i.ar = load ptr, ptr %10, align 8, !tbaa !159
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 100
  %i.au = load float, ptr %i.at, align 4, !tbaa !161
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.aw = load float, ptr %i.av, align 8, !tbaa !162
  %i.ax = fmul float %i.au, %i.aw
  call fastcc void @_ZL15do_pairs_simpleIfLi1EPK5t_pbcEviPKiPK9t_iparamsPA3_KfPA4_fT1_N3gmx8ArrayRefIS8_EEf(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %.0, i64 %i.as, float noundef %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.by

_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread: ; preds = %bb.c, %bb.c, %bb.c, %bb.d, %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit, %bb.b, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !163, !range !40, !noundef !43
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load ptr, ptr %10, align 8, !tbaa !159  ; 6 uses
  %i.bc = load ptr, ptr %11, align 8, !tbaa !159  ; 4 uses
  %i.bd = load ptr, ptr %12, align 8, !tbaa !164  ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !164 ; 4 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !167  ; 4 uses
  br i1 %i.ba, label %bb.j, label %bb.ar

bb.j:                                             ; preds = %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  switch i32 %0, label %bb.l [
    i32 33, label %bb.o
    i32 35, label %bb.o
    i32 36, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 1 dereferenceable(68) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 565, ptr noundef nonnull @.str.1, i32 noundef %0) #19
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

common.resume:                                    ; preds = %bb.av, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.no, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  br label %common.resume

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.j
  %.sink16.i = phi i64 [ 8, %bb.k ], [ 80, %bb.j ], [ 80, %bb.j ]
  %.sink.i = phi i64 [ 32, %bb.k ], [ 104, %bb.j ], [ 104, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 %.sink16.i
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 %.sink.i
  %.0206.i = load ptr, ptr %i.bj, align 8, !tbaa !170
  %.0207.i = load ptr, ptr %i.bi, align 8, !tbaa !170
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 168 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !171
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %..loopexit_crit_edge.i, label %bb.p

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !9
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp eq ptr %i.bd, %i.bf
  %spec.select = select i1 %i.bm, ptr %i.bb, ptr %i.bc ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !172 ; 2 uses
  %i.bp = fsub float 1.000000e+00, %i.bo          ; 6 uses
  store float %i.bp, ptr %i.n, align 4, !tbaa !172
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !172 ; 2 uses
  %i.bs = fsub float 1.000000e+00, %i.br          ; 6 uses
  store float %i.bs, ptr %i.o, align 4, !tbaa !172
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store float %i.bo, ptr %i.bt, align 4, !tbaa !172
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store float %i.br, ptr %i.bu, align 4, !tbaa !172
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %i.p, align 8, !tbaa !172
  %i.bv = load ptr, ptr %15, align 8, !tbaa !9    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !173
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !174 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 2
  %i.cb = fsub float 1.000000e+00, %i.bp          ; 4 uses
  %i.cc = fsub float 1.000000e+00, %i.bs          ; 4 uses
  br i1 %i.ca, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.p
  %i.cd = sitofp i32 %i.bz to float               ; 2 uses
  store float %i.cb, ptr %i.q, align 4, !tbaa !172
  %i.ce = fmul nnan float %i.cd, f0xBE2AAAAB      ; 2 uses
  store float %i.ce, ptr %i.s, align 8, !tbaa !172
  store float %i.cc, ptr %i.r, align 4, !tbaa !172
  store float %i.ce, ptr %i.t, align 8, !tbaa !172
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store float %i.bp, ptr %i.cf, align 4, !tbaa !172
  %i.cg = fmul nnan float %i.cd, f0x3E2AAAAB      ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store float %i.cg, ptr %i.ch, align 4, !tbaa !172
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %i.bs, ptr %i.ci, align 4, !tbaa !172
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.cg, ptr %i.cj, align 4, !tbaa !172
  br label %.loopexit.i

.split.us.preheader.i:                            ; preds = %bb.p
  %i.ck = fmul float %i.cb, %i.cb
  store float %i.ck, ptr %i.q, align 4, !tbaa !172
  %i.cl = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.bp, i64 1
  %i.cn = fmul <2 x float> %i.cm, <float f0xBEAAAAAB, float f0x3EAAAAAB>
  %i.co = fmul float %i.cc, %i.cc
  store float %i.co, ptr %i.r, align 4, !tbaa !172
  %i.cp = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bs, i64 1
  %i.cr = fmul <2 x float> %i.cq, <float f0xBEAAAAAB, float f0x3EAAAAAB>
  %i.cs = fmul float %i.bp, %i.bp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store float %i.cs, ptr %i.ct, align 4, !tbaa !172
  store <2 x float> %i.cn, ptr %i.s, align 8, !tbaa !172
  %i.cu = fmul float %i.bs, %i.bs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %i.cu, ptr %i.cv, align 4, !tbaa !172
  store <2 x float> %i.cr, ptr %i.t, align 8, !tbaa !172
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.split.us.preheader.i, %.split.preheader.i, %..loopexit_crit_edge.i
  %.sroa.0102.1 = phi ptr [ %i.bc, %..loopexit_crit_edge.i ], [ %spec.select, %.split.us.preheader.i ], [ %spec.select, %.split.preheader.i ] ; 2 uses
  %i.cw = phi ptr [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.bv, %.split.us.preheader.i ], [ %i.bv, %.split.preheader.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 100
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !161 ; 5 uses
  %i.cz = icmp sgt i32 %1, 0
  br i1 %i.cz, label %.lr.ph.i, label %_ZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.da = icmp eq ptr %i.bd, %i.bf
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 12
  %23 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.backedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.backedge.i ] ; 2 uses
  %.02056.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %.backedge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !177 ; 5 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !177 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !177 ; 2 uses
  %i.dn = sext i32 %i.dk to i64                   ; 6 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !178 ; 2 uses
  %i.dq = sext i32 %i.dm to i64                   ; 6 uses
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !178 ; 2 uses
  %i.dt = icmp ult i16 %i.dp, %i.ds
  %i.du = zext i16 %i.dp to i32                   ; 2 uses
  %i.dv = mul nsw i32 %14, %i.du
  %i.dw = zext i16 %i.ds to i32                   ; 2 uses
  %i.dx = add nsw i32 %i.dv, %i.dw
  %i.dy = mul nsw i32 %14, %i.dw
  %i.dz = add nsw i32 %i.dy, %i.du
  %i.ea = select i1 %i.dt, i32 %i.dx, i32 %i.dz
  switch i32 %0, label %bb.aa [
    i32 33, label %bb.r
    i32 35, label %bb.y
    i32 36, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q
  %i.eb = load i32, ptr %i.bk, align 8, !tbaa !171
  %.not216.i = icmp eq i32 %i.eb, 0
  br i1 %.not216.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.da, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds i8, ptr %i.bd, i64 %i.dn
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !180, !range !40, !noundef !43
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds i8, ptr %i.bd, i64 %i.dq
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !180, !range !40, !noundef !43
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.ei = sext i32 %i.di to i64
  %i.ej = getelementptr inbounds [48 x i8], ptr %3, i64 %i.ei ; 4 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !181
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !181
  %i.en = fcmp une float %i.ek, %i.em
  br i1 %i.en, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !181
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.er = load float, ptr %i.eq, align 4, !tbaa !181
  %i.es = fcmp une float %i.ep, %i.er
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  %i.et = phi i1 [ false, %bb.r ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ %i.es, %bb.w ]
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dn
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !172
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dq
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !172
  %i.ey = fmul float %i.ev, %i.ex
  %i.ez = fmul float %i.cy, %i.ey
  %i.fa = load float, ptr %i.db, align 8, !tbaa !162
  %i.fb = fmul float %i.fa, %i.ez
  %i.fc = sext i32 %i.di to i64
  %i.fd = getelementptr inbounds [48 x i8], ptr %3, i64 %i.fc
  %i.fe = load <2 x float>, ptr %i.fd, align 4, !tbaa !181
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.ff = sext i32 %i.di to i64
  %i.fg = getelementptr inbounds [48 x i8], ptr %3, i64 %i.ff ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !181
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !181
  %i.fl = fmul float %i.fi, %i.fk
  %i.fm = fmul float %i.cy, %i.fl
  %i.fn = load float, ptr %i.fg, align 4, !tbaa !181
  %i.fo = fmul float %i.fn, %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fq = load <2 x float>, ptr %i.fp, align 4, !tbaa !181
  br label %bb.aa

bb.z:                                             ; preds = %bb.q
  %i.fr = sext i32 %i.di to i64
  %i.fs = getelementptr inbounds [48 x i8], ptr %3, i64 %i.fr ; 3 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !181
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !181
  %i.fw = fmul float %i.ft, %i.fv
  %i.fx = fmul float %i.cy, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fz = load <2 x float>, ptr %i.fy, align 4, !tbaa !181
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.q
  %.1.i = phi i1 [ %.02056.i, %bb.z ], [ %i.et, %bb.x ], [ %.02056.i, %bb.y ], [ %.02056.i, %bb.q ] ; 2 uses
  %.0.i = phi float [ %i.fx, %bb.z ], [ %i.fb, %bb.x ], [ %i.fo, %bb.y ], [ 0.000000e+00, %bb.q ] ; 6 uses
  %i.ga = phi <2 x float> [ %i.fz, %bb.z ], [ %i.fe, %bb.x ], [ %i.fq, %bb.y ], [ zeroinitializer, %bb.q ] ; 2 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0
  %i.gc = fmul float %i.gb, 6.000000e+00          ; 6 uses
  %i.gd = extractelement <2 x float> %i.ga, i64 1
  %i.ge = fmul float %i.gd, 1.200000e+01          ; 6 uses
  %i.gf = load i8, ptr %i.dc, align 4, !tbaa !182, !range !40, !noundef !43
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = getelementptr inbounds [12 x i8], ptr %4, i64 %i.dn ; 3 uses
  %i.gi = getelementptr inbounds [12 x i8], ptr %4, i64 %i.dq ; 3 uses
  br i1 %i.gg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef %7, ptr noundef %i.gh, ptr noundef %i.gi, ptr noundef nonnull %i.k)
  %i.gk = load <2 x float>, ptr %i.k, align 8, !tbaa !172
  %.pre12.i = load float, ptr %i.dd, align 8, !tbaa !172
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gl = load <2 x float>, ptr %i.gh, align 4, !tbaa !172
  %i.gm = load <2 x float>, ptr %i.gi, align 4, !tbaa !172
  %i.gn = fsub <2 x float> %i.gl, %i.gm           ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !172
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !172
  %i.gs = fsub float %i.gp, %i.gr                 ; 2 uses
  store <2 x float> %i.gn, ptr %i.k, align 8, !tbaa !172
  store float %i.gs, ptr %i.dd, align 8, !tbaa !172
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gt = phi float [ %.pre12.i, %bb.ab ], [ %i.gs, %bb.ac ] ; 3 uses
  %.0210.i = phi i32 [ %i.gj, %bb.ab ], [ 22, %bb.ac ] ; 2 uses
  %i.gu = phi <2 x float> [ %i.gk, %bb.ab ], [ %i.gn, %bb.ac ] ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.gu, %i.gu
  %i.gv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gw = extractelement <2 x float> %i.gu, i64 0 ; 2 uses
  %i.gx = call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gv)
  %i.gy = call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gx) ; 8 uses
  %i.gz = load ptr, ptr %i.de, align 8, !tbaa !183 ; 10 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !184 ; 3 uses
  %i.hc = fmul float %i.hb, %i.hb
  %i.hd = fcmp ult float %i.gy, %i.hc
  br i1 %i.hd, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.b.i = load i1, ptr @_ZZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPiE13warned_rlimit, align 1
  br i1 %.b.i, label %.backedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %sqrt.i = call float @llvm.sqrt.f32(float %i.gy)
  call fastcc void @_ZL14warning_rlimitPA3_KfiiPiff(ptr noundef %4, i32 noundef %i.dk, i32 noundef %i.dm, ptr noundef %19, float noundef %sqrt.i, float noundef %i.hb)
  store i1 true, ptr @_ZZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPiE13warned_rlimit, align 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.aq, %bb.ap, %bb.af, %bb.ae
  %i.he = trunc nuw i64 %indvars.iv.next.i to i32
  %i.hf = icmp sgt i32 %1, %i.he
  br i1 %i.hf, label %bb.q, label %_ZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit, !llvm.loop !192

bb.ag:                                            ; preds = %bb.ad
  br i1 %.1.i, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.hg = getelementptr inbounds [4 x i8], ptr %.sroa.0102.1, i64 %i.dn
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !172
  %i.hi = getelementptr inbounds [4 x i8], ptr %.sroa.0102.1, i64 %i.dq
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !172
  %i.hk = fmul float %i.hh, %i.hj
  %i.hl = fmul float %i.cy, %i.hk
  %i.hm = load float, ptr %i.db, align 8, !tbaa !162
  %i.hn = fmul float %i.hm, %i.hl                 ; 4 uses
  %i.ho = sext i32 %i.di to i64
  %i.hp = getelementptr inbounds [48 x i8], ptr %3, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !181
  %i.hs = fmul float %i.hr, 6.000000e+00          ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !181
  %i.hv = fmul float %i.hu, 1.200000e+01          ; 4 uses
  %i.hw = load ptr, ptr %15, align 8, !tbaa !9    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !173 ; 7 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !194
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.id = load float, ptr %i.ic, align 4, !tbaa !195
  %i.ie = fcmp oeq float %i.id, 0.000000e+00
  %i.if = load float, ptr %i.hy, align 4
  %i.ig = fcmp oeq float %i.if, 0.000000e+00
  %or.cond.i = select i1 %i.ie, i1 %i.ig, i1 false
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ii = load float, ptr %i.ih, align 8, !tbaa !196 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !197 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 52
  %i.im = load i32, ptr %i.il, align 4, !tbaa !198
  %i.in = sitofp i32 %i.im to float               ; 2 uses
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.io = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType2EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.gy, float noundef %i.ii, ptr noundef %i.ik, float noundef %i.in, float noundef %.0.i, float noundef %i.gc, float noundef %i.ge, float noundef %i.hn, float noundef %i.hs, float noundef %i.hv, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %9)
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.ip = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType0EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.gy, ptr noundef nonnull align 4 dereferenceable(36) %i.hy, float noundef %i.ii, ptr noundef %i.ik, float noundef %i.in, float noundef %.0.i, float noundef %i.gc, float noundef %i.ge, float noundef %i.hn, float noundef %i.hs, float noundef %i.hv, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %9)
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !199
  %i.is = fcmp oeq float %i.ir, 0.000000e+00
  %i.it = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.iu = load float, ptr %i.it, align 4
  %i.iv = fcmp oeq float %i.iu, 0.000000e+00
  %or.cond221.i = select i1 %i.is, i1 %i.iv, i1 false
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !196 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !197 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gz, i64 52
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !198
  %i.jc = sitofp i32 %i.jb to float               ; 2 uses
  br i1 %or.cond221.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jd = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType2EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.gy, float noundef %i.ix, ptr noundef %i.iz, float noundef %i.jc, float noundef %.0.i, float noundef %i.gc, float noundef %i.ge, float noundef %i.hn, float noundef %i.hs, float noundef %i.hv, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %9)
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.je = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.jf = load float, ptr %i.je, align 8, !tbaa !200
  %i.jg = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType1EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.gy, float noundef %i.jf, ptr noundef nonnull align 4 dereferenceable(36) %i.hy, float noundef %i.ix, ptr noundef %i.iz, float noundef %i.jc, float noundef %.0.i, float noundef %i.gc, float noundef %i.ge, float noundef %i.hn, float noundef %i.hs, float noundef %i.hv, float noundef %i.cy, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %9)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ag
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !196 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !197
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gz, i64 52
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !198
  %i.jn = sitofp i32 %i.jm to float
  %sqrt3.i = call float @llvm.sqrt.f32(float %i.gy)
  %i.jo = fdiv float 1.000000e+00, %sqrt3.i       ; 2 uses
  %i.jp = fmul float %i.gy, %i.jo
  %i.jq = fmul float %i.jp, %i.ji                 ; 2 uses
  %i.jr = fptosi float %i.jq to i32
  %i.js = sitofp i32 %i.jr to float               ; 2 uses
  %i.jt = fsub float %i.jq, %i.js                 ; 7 uses
  %i.ju = fmul float %i.jt, %i.jt                 ; 2 uses
  %i.jv = fmul nnan float %i.jn, %i.js
  %i.jw = fptosi float %i.jv to i32
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jx ; 8 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !172
  %i.ka = getelementptr i8, ptr %i.jy, i64 4
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !172
  %i.kc = getelementptr i8, ptr %i.jy, i64 8
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !172
  %i.ke = fmul float %i.jt, %i.kd                 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jy, i64 12
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !172
  %i.kh = fmul float %i.ju, %i.kg                 ; 2 uses
  %i.ki = fadd float %i.kb, %i.ke
  %i.kj = fadd float %i.ki, %i.kh                 ; 2 uses
  %i.kk = call float @llvm.fmuladd.f32(float %i.jt, float %i.kj, float %i.jz)
  %i.kl = fadd float %i.ke, %i.kj
  %i.km = fpext float %i.kl to double
  %i.kn = fpext float %i.kh to double
  %i.ko = call double @llvm.fmuladd.f64(double %i.kn, double 2.000000e+00, double %i.km)
  %i.kp = fptrunc double %i.ko to float
  %i.kq = getelementptr i8, ptr %i.jy, i64 16
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !172
  %i.ks = getelementptr i8, ptr %i.jy, i64 20
  %i.kt = getelementptr i8, ptr %i.jy, i64 32
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !172
  %i.kv = getelementptr i8, ptr %i.jy, i64 40
  %i.kw = call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.ks, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !172 ; 3 uses
  %i.kx = load <2 x float>, ptr %i.kv, align 4, !tbaa !172
  %i.ky = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = shufflevector <2 x float> %i.kx, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.lb = shufflevector <5 x float> %i.kw, <5 x float> %i.la, <2 x i32> <i32 1, i32 5>
  %i.lc = fmul <2 x float> %i.kz, %i.lb           ; 2 uses
  %i.ld = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = shufflevector <5 x float> %i.kw, <5 x float> %i.la, <2 x i32> <i32 2, i32 6>
  %i.lg = fmul <2 x float> %i.le, %i.lf           ; 2 uses
  %i.lh = shufflevector <5 x float> %i.kw, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.li = fadd <2 x float> %i.lh, %i.lc
  %i.lj = fadd <2 x float> %i.li, %i.lg           ; 3 uses
  %i.lk = extractelement <2 x float> %i.lj, i64 0
  %i.ll = call float @llvm.fmuladd.f32(float %i.jt, float %i.lk, float %i.kr)
  %i.lm = extractelement <2 x float> %i.lj, i64 1
  %i.ln = call float @llvm.fmuladd.f32(float %i.jt, float %i.lm, float %i.ku)
  %i.lo = fadd <2 x float> %i.lc, %i.lj
  %i.lp = fpext <2 x float> %i.lo to <2 x double>
  %i.lq = fpext <2 x float> %i.lg to <2 x double>
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> splat (double 2.000000e+00), <2 x double> %i.lp)
  %i.ls = fptrunc <2 x double> %i.lr to <2 x float> ; 2 uses
  %i.lt = fmul float %.0.i, %i.kk
  store float %i.lt, ptr %i.l, align 4, !tbaa !172
  %i.lu = fmul float %i.ge, %i.ln
  %i.lv = call float @llvm.fmuladd.f32(float %i.gc, float %i.ll, float %i.lu)
  store float %i.lv, ptr %i.m, align 4, !tbaa !172
  %i.lw = extractelement <2 x float> %i.ls, i64 0
  %i.lx = fmul float %i.gc, %i.lw
  %i.ly = call float @llvm.fmuladd.f32(float %.0.i, float %i.kp, float %i.lx)
  %i.lz = extractelement <2 x float> %i.ls, i64 1
  %i.ma = call float @llvm.fmuladd.f32(float %i.ge, float %i.lz, float %i.ly)
  %i.mb = fneg float %i.ma
  %i.mc = fmul float %i.ji, %i.mb
  %i.md = fmul float %i.jo, %i.mc
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.aj
  %.1209.i = phi float [ %i.md, %bb.ao ], [ %i.io, %bb.aj ], [ %i.ip, %bb.ak ], [ %i.jd, %bb.am ], [ %i.jg, %bb.an ] ; 2 uses
  %i.me = load float, ptr %i.l, align 4, !tbaa !172
  %i.mf = sext i32 %i.ea to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %.0207.i, i64 %i.mf ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !172
  %i.mi = fadd float %i.me, %i.mh
  store float %i.mi, ptr %i.mg, align 4, !tbaa !172
  %i.mj = load float, ptr %i.m, align 4, !tbaa !172
  %i.mk = getelementptr inbounds [4 x i8], ptr %.0206.i, i64 %i.mf ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !172
  %i.mm = fadd float %i.mj, %i.ml
  store float %i.mm, ptr %i.mk, align 4, !tbaa !172
  %i.mn = insertelement <2 x float> poison, float %.1209.i, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mp = fmul <2 x float> %i.gu, %i.mo           ; 6 uses
  %24 = extractelement <2 x float> %i.mp, i64 0
  store float %24, ptr %i.k, align 8, !tbaa !172
  %25 = extractelement <2 x float> %i.mp, i64 1
  store float %25, ptr %23, align 4, !tbaa !172
  %i.mq = fmul float %i.gt, %.1209.i              ; 5 uses
  store float %i.mq, ptr %i.dd, align 8, !tbaa !172
  %i.mr = getelementptr inbounds [16 x i8], ptr %5, i64 %i.dn ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !172
  %i.mu = fadd float %i.mq, %i.mt
  %i.mv = load <2 x float>, ptr %i.mr, align 4, !tbaa !172
  %i.mw = fadd <2 x float> %i.mp, %i.mv
  store <2 x float> %i.mw, ptr %i.mr, align 4, !tbaa !172
  store float %i.mu, ptr %i.ms, align 4, !tbaa !172
  %i.mx = getelementptr inbounds [16 x i8], ptr %5, i64 %i.dq ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !172
  %i.na = fsub float %i.mz, %i.mq
  %i.nb = load <2 x float>, ptr %i.mx, align 4, !tbaa !172
  %i.nc = fsub <2 x float> %i.nb, %i.mp
  store <2 x float> %i.nc, ptr %i.mx, align 4, !tbaa !172
  store float %i.na, ptr %i.my, align 4, !tbaa !172
  %.not217.i = icmp eq i32 %.0210.i, 22
  br i1 %.not217.i, label %.backedge.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nd = sext i32 %.0210.i to i64
  %i.ne = getelementptr inbounds [12 x i8], ptr %6, i64 %i.nd ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !172
  %i.nh = fadd float %i.mq, %i.ng
  %i.ni = load <2 x float>, ptr %i.ne, align 4, !tbaa !172
  %i.nj = fadd <2 x float> %i.mp, %i.ni
  store <2 x float> %i.nj, ptr %i.ne, align 4, !tbaa !172
  store float %i.nh, ptr %i.nf, align 4, !tbaa !172
  %i.nk = load float, ptr %i.dg, align 4, !tbaa !172
  %i.nl = fsub float %i.nk, %i.mq
  %i.nm = load <2 x float>, ptr %i.df, align 4, !tbaa !172
  %i.nn = fsub <2 x float> %i.nm, %i.mp
  store <2 x float> %i.nn, ptr %i.df, align 4, !tbaa !172
  store float %i.nl, ptr %i.dg, align 4, !tbaa !172
  br label %.backedge.i

_ZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit: ; preds = %.backedge.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  br label %bb.by

bb.ar:                                            ; preds = %_ZL28usingUserTableElectrostaticsRK22CoulombInteractionType.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  switch i32 %0, label %bb.at [
    i32 33, label %bb.aw
    i32 35, label %bb.aw
    i32 36, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 1 dereferenceable(68) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 565, ptr noundef nonnull @.str.1, i32 noundef %0) #19
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %common.resume

bb.aw:                                            ; preds = %bb.as, %bb.ar, %bb.ar
  %.sink16.i60 = phi i64 [ 8, %bb.as ], [ 80, %bb.ar ], [ 80, %bb.ar ]
  %.sink.i61 = phi i64 [ 32, %bb.as ], [ 104, %bb.ar ], [ 104, %bb.ar ]
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 %.sink16.i60
  %i.nq = getelementptr inbounds nuw i8, ptr %18, i64 %.sink.i61
  %.0202.i = load ptr, ptr %i.nq, align 8, !tbaa !170
  %.0203.i = load ptr, ptr %i.np, align 8, !tbaa !170
  %i.nr = getelementptr inbounds nuw i8, ptr %15, i64 168 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !171
  %.not.i62 = icmp eq i32 %i.ns, 0
  br i1 %.not.i62, label %..loopexit_crit_edge.i81, label %bb.ax

..loopexit_crit_edge.i81:                         ; preds = %bb.aw
  %.pre.i82 = load ptr, ptr %15, align 8, !tbaa !9
  br label %.loopexit.i66

bb.ax:                                            ; preds = %bb.aw
  %i.nt = icmp eq ptr %i.bd, %i.bf
  %spec.select113 = select i1 %i.nt, ptr %i.bb, ptr %i.bc ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !172 ; 2 uses
  %i.nw = fsub float 1.000000e+00, %i.nv          ; 6 uses
  store float %i.nw, ptr %i.d, align 4, !tbaa !172
  %i.nx = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !172 ; 2 uses
  %i.nz = fsub float 1.000000e+00, %i.ny          ; 6 uses
  store float %i.nz, ptr %i.e, align 4, !tbaa !172
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.nv, ptr %i.oa, align 4, !tbaa !172
  %i.ob = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %i.ny, ptr %i.ob, align 4, !tbaa !172
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !172
  %i.oc = load ptr, ptr %15, align 8, !tbaa !9    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 128
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !173
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load i32, ptr %i.of, align 4, !tbaa !174 ; 2 uses
  %i.oh = icmp eq i32 %i.og, 2
  %i.oi = fsub float 1.000000e+00, %i.nw          ; 4 uses
  %i.oj = fsub float 1.000000e+00, %i.nz          ; 4 uses
  br i1 %i.oh, label %.split.us.preheader.i80, label %.split.preheader.i65

.split.preheader.i65:                             ; preds = %bb.ax
  %i.ok = sitofp i32 %i.og to float               ; 2 uses
  store float %i.oi, ptr %i.g, align 4, !tbaa !172
  %i.ol = fmul nnan float %i.ok, f0xBE2AAAAB      ; 2 uses
  store float %i.ol, ptr %i.i, align 8, !tbaa !172
  store float %i.oj, ptr %i.h, align 4, !tbaa !172
  store float %i.ol, ptr %i.j, align 8, !tbaa !172
  %i.om = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store float %i.nw, ptr %i.om, align 4, !tbaa !172
  %i.on = fmul nnan float %i.ok, f0x3E2AAAAB      ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store float %i.on, ptr %i.oo, align 4, !tbaa !172
  %i.op = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store float %i.nz, ptr %i.op, align 4, !tbaa !172
  %i.oq = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store float %i.on, ptr %i.oq, align 4, !tbaa !172
  br label %.loopexit.i66

.split.us.preheader.i80:                          ; preds = %bb.ax
  %i.or = fmul float %i.oi, %i.oi
  store float %i.or, ptr %i.g, align 4, !tbaa !172
  %i.os = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.nw, i64 1
  %i.ou = fmul <2 x float> %i.ot, <float f0xBEAAAAAB, float f0x3EAAAAAB>
  %i.ov = fmul float %i.oj, %i.oj
  store float %i.ov, ptr %i.h, align 4, !tbaa !172
  %i.ow = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.nz, i64 1
  %i.oy = fmul <2 x float> %i.ox, <float f0xBEAAAAAB, float f0x3EAAAAAB>
  %i.oz = fmul float %i.nw, %i.nw
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store float %i.oz, ptr %i.pa, align 4, !tbaa !172
  store <2 x float> %i.ou, ptr %i.i, align 8, !tbaa !172
  %i.pb = fmul float %i.nz, %i.nz
  %i.pc = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store float %i.pb, ptr %i.pc, align 4, !tbaa !172
  store <2 x float> %i.oy, ptr %i.j, align 8, !tbaa !172
  br label %.loopexit.i66

.loopexit.i66:                                    ; preds = %.split.us.preheader.i80, %.split.preheader.i65, %..loopexit_crit_edge.i81
  %.sroa.0108.1 = phi ptr [ %i.bc, %..loopexit_crit_edge.i81 ], [ %spec.select113, %.split.us.preheader.i80 ], [ %spec.select113, %.split.preheader.i65 ] ; 2 uses
  %i.pd = phi ptr [ %.pre.i82, %..loopexit_crit_edge.i81 ], [ %i.oc, %.split.us.preheader.i80 ], [ %i.oc, %.split.preheader.i65 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 100
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !161 ; 5 uses
  %i.pg = icmp sgt i32 %1, 0
  br i1 %i.pg, label %.lr.ph.i67, label %_ZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit

.lr.ph.i67:                                       ; preds = %.loopexit.i66
  %i.ph = icmp eq ptr %i.bd, %i.bf
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %15, i64 12
  %26 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %15, i64 160
  br label %bb.ay

bb.ay:                                            ; preds = %.backedge.i74, %.lr.ph.i67
  %indvars.iv.i68 = phi i64 [ 0, %.lr.ph.i67 ], [ %indvars.iv.next.i69, %.backedge.i74 ] ; 2 uses
  %.02016.i = phi i1 [ false, %.lr.ph.i67 ], [ %.1.i70, %.backedge.i74 ] ; 3 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i68 ; 3 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !177 ; 5 uses
  %i.po = getelementptr i8, ptr %i.pm, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !177 ; 2 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 3 ; 2 uses
  %i.pq = getelementptr i8, ptr %i.pm, i64 8
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !177 ; 2 uses
  %i.ps = sext i32 %i.pp to i64                   ; 6 uses
  %i.pt = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ps
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !178 ; 2 uses
  %i.pv = sext i32 %i.pr to i64                   ; 6 uses
  %i.pw = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.pv
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !178 ; 2 uses
  %i.py = icmp ult i16 %i.pu, %i.px
  %i.pz = zext i16 %i.pu to i32                   ; 2 uses
  %i.qa = mul nsw i32 %14, %i.pz
  %i.qb = zext i16 %i.px to i32                   ; 2 uses
  %i.qc = add nsw i32 %i.qa, %i.qb
  %i.qd = mul nsw i32 %14, %i.qb
  %i.qe = add nsw i32 %i.qd, %i.pz
  %i.qf = select i1 %i.py, i32 %i.qc, i32 %i.qe
  switch i32 %0, label %bb.bi [
    i32 33, label %bb.az
    i32 35, label %bb.bg
    i32 36, label %bb.bh
  ]

bb.az:                                            ; preds = %bb.ay
  %i.qg = load i32, ptr %i.nr, align 8, !tbaa !171
  %.not211.i = icmp eq i32 %i.qg, 0
  br i1 %.not211.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ph, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qh = getelementptr inbounds i8, ptr %i.bd, i64 %i.ps
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !180, !range !40, !noundef !43
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qk = getelementptr inbounds i8, ptr %i.bd, i64 %i.pv
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !180, !range !40, !noundef !43
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.qn = sext i32 %i.pn to i64
  %i.qo = getelementptr inbounds [48 x i8], ptr %3, i64 %i.qn ; 4 uses
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !181
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !181
  %i.qs = fcmp une float %i.qp, %i.qr
  br i1 %i.qs, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !181
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !181
  %i.qx = fcmp une float %i.qu, %i.qw
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.qy = phi i1 [ false, %bb.az ], [ true, %bb.bd ], [ true, %bb.bc ], [ true, %bb.bb ], [ %i.qx, %bb.be ]
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ps
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !172
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.pv
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !172
  %i.rd = fmul float %i.ra, %i.rc
  %i.re = fmul float %i.pf, %i.rd
  %i.rf = load float, ptr %i.pi, align 8, !tbaa !162
  %i.rg = fmul float %i.rf, %i.re
  %i.rh = sext i32 %i.pn to i64
  %i.ri = getelementptr inbounds [48 x i8], ptr %3, i64 %i.rh
  %i.rj = load <2 x float>, ptr %i.ri, align 4, !tbaa !181
  br label %bb.bi

bb.bg:                                            ; preds = %bb.ay
  %i.rk = sext i32 %i.pn to i64
  %i.rl = getelementptr inbounds [48 x i8], ptr %3, i64 %i.rk ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !181
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !181
  %i.rq = fmul float %i.rn, %i.rp
  %i.rr = fmul float %i.pf, %i.rq
  %i.rs = load float, ptr %i.rl, align 4, !tbaa !181
  %i.rt = fmul float %i.rs, %i.rr
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %i.rv = load <2 x float>, ptr %i.ru, align 4, !tbaa !181
  br label %bb.bi

bb.bh:                                            ; preds = %bb.ay
  %i.rw = sext i32 %i.pn to i64
  %i.rx = getelementptr inbounds [48 x i8], ptr %3, i64 %i.rw ; 3 uses
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !181
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !181
  %i.sb = fmul float %i.ry, %i.sa
  %i.sc = fmul float %i.pf, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.se = load <2 x float>, ptr %i.sd, align 4, !tbaa !181
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.ay
  %.1.i70 = phi i1 [ %.02016.i, %bb.bh ], [ %i.qy, %bb.bf ], [ %.02016.i, %bb.bg ], [ %.02016.i, %bb.ay ] ; 2 uses
  %.0.i71 = phi float [ %i.sc, %bb.bh ], [ %i.rg, %bb.bf ], [ %i.rt, %bb.bg ], [ 0.000000e+00, %bb.ay ] ; 6 uses
  %i.sf = phi <2 x float> [ %i.se, %bb.bh ], [ %i.rj, %bb.bf ], [ %i.rv, %bb.bg ], [ zeroinitializer, %bb.ay ] ; 2 uses
  %i.sg = extractelement <2 x float> %i.sf, i64 0
  %i.sh = fmul float %i.sg, 6.000000e+00          ; 6 uses
  %i.si = extractelement <2 x float> %i.sf, i64 1
  %i.sj = fmul float %i.si, 1.200000e+01          ; 6 uses
  %i.sk = load i8, ptr %i.pj, align 4, !tbaa !182, !range !40, !noundef !43
  %i.sl = trunc nuw i8 %i.sk to i1
  %i.sm = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ps ; 3 uses
  %i.sn = getelementptr inbounds [12 x i8], ptr %4, i64 %i.pv ; 3 uses
  br i1 %i.sl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.so = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef %7, ptr noundef %i.sm, ptr noundef %i.sn, ptr noundef nonnull %i.a) ; 0 uses
  %i.sp = load <2 x float>, ptr %i.a, align 8, !tbaa !172
  %.pre12.i79 = load float, ptr %i.pk, align 8, !tbaa !172
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.sq = load <2 x float>, ptr %i.sm, align 4, !tbaa !172
  %i.sr = load <2 x float>, ptr %i.sn, align 4, !tbaa !172
  %i.ss = fsub <2 x float> %i.sq, %i.sr           ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.su = load float, ptr %i.st, align 4, !tbaa !172
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !172
  %i.sx = fsub float %i.su, %i.sw                 ; 2 uses
  store <2 x float> %i.ss, ptr %i.a, align 8, !tbaa !172
  store float %i.sx, ptr %i.pk, align 8, !tbaa !172
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.sy = phi float [ %i.sx, %bb.bk ], [ %.pre12.i79, %bb.bj ] ; 3 uses
  %i.sz = phi <2 x float> [ %i.ss, %bb.bk ], [ %i.sp, %bb.bj ] ; 4 uses
  %foldExtExtBinop127 = fmul <2 x float> %i.sz, %i.sz
  %i.ta = extractelement <2 x float> %foldExtExtBinop127, i64 1
  %i.tb = extractelement <2 x float> %i.sz, i64 0 ; 2 uses
  %i.tc = call float @llvm.fmuladd.f32(float %i.tb, float %i.tb, float %i.ta)
  %i.td = call noundef float @llvm.fmuladd.f32(float %i.sy, float %i.sy, float %i.tc) ; 8 uses
  %i.te = load ptr, ptr %i.pl, align 8, !tbaa !183 ; 10 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load float, ptr %i.tf, align 8, !tbaa !184 ; 3 uses
  %i.th = fmul float %i.tg, %i.tg
  %i.ti = fcmp ult float %i.td, %i.th
  br i1 %i.ti, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.b.i72 = load i1, ptr @_ZZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPiE13warned_rlimit, align 1
  br i1 %.b.i72, label %.backedge.i74, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %sqrt.i73 = call float @llvm.sqrt.f32(float %i.td)
  call fastcc void @_ZL14warning_rlimitPA3_KfiiPiff(ptr noundef %4, i32 noundef %i.pp, i32 noundef %i.pr, ptr noundef %19, float noundef %sqrt.i73, float noundef %i.tg)
  store i1 true, ptr @_ZZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPiE13warned_rlimit, align 1
  br label %.backedge.i74

.backedge.i74:                                    ; preds = %bb.bx, %bb.bn, %bb.bm
  %i.tj = trunc nuw i64 %indvars.iv.next.i69 to i32
  %i.tk = icmp sgt i32 %1, %i.tj
  br i1 %i.tk, label %bb.ay, label %_ZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit, !llvm.loop !201

bb.bo:                                            ; preds = %bb.bl
  br i1 %.1.i70, label %bb.bp, label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  %i.tl = getelementptr inbounds [4 x i8], ptr %.sroa.0108.1, i64 %i.ps
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !172
  %i.tn = getelementptr inbounds [4 x i8], ptr %.sroa.0108.1, i64 %i.pv
  %i.to = load float, ptr %i.tn, align 4, !tbaa !172
  %i.tp = fmul float %i.tm, %i.to
  %i.tq = fmul float %i.pf, %i.tp
  %i.tr = load float, ptr %i.pi, align 8, !tbaa !162
  %i.ts = fmul float %i.tr, %i.tq                 ; 4 uses
  %i.tt = sext i32 %i.pn to i64
  %i.tu = getelementptr inbounds [48 x i8], ptr %3, i64 %i.tt ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !181
  %i.tx = fmul float %i.tw, 6.000000e+00          ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 12
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !181
  %i.ua = fmul float %i.tz, 1.200000e+01          ; 4 uses
  %i.ub = load ptr, ptr %15, align 8, !tbaa !9    ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 128
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !173 ; 7 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 20
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !194
  %i.ug = icmp eq i32 %i.uf, 0
  br i1 %i.ug, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !195
  %i.uj = fcmp oeq float %i.ui, 0.000000e+00
  %i.uk = load float, ptr %i.ud, align 4
  %i.ul = fcmp oeq float %i.uk, 0.000000e+00
  %or.cond.i76 = select i1 %i.uj, i1 %i.ul, i1 false
  %i.um = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.un = load float, ptr %i.um, align 8, !tbaa !196 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !197 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.te, i64 52
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !198
  %i.us = sitofp i32 %i.ur to float               ; 2 uses
  br i1 %or.cond.i76, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ut = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType2EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.td, float noundef %i.un, ptr noundef %i.up, float noundef %i.us, float noundef %.0.i71, float noundef %i.sh, float noundef %i.sj, float noundef %i.ts, float noundef %i.tx, float noundef %i.ua, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %9)
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %i.uu = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType0EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.td, ptr noundef nonnull align 4 dereferenceable(36) %i.ud, float noundef %i.un, ptr noundef %i.up, float noundef %i.us, float noundef %.0.i71, float noundef %i.sh, float noundef %i.sj, float noundef %i.ts, float noundef %i.tx, float noundef %i.ua, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %9)
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bp
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ud, i64 28
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !199
  %i.ux = fcmp oeq float %i.uw, 0.000000e+00
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = fcmp oeq float %i.uz, 0.000000e+00
  %or.cond215.i = select i1 %i.ux, i1 %i.va, i1 false
  %i.vb = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.vc = load float, ptr %i.vb, align 8, !tbaa !196 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !197 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.te, i64 52
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !198
  %i.vh = sitofp i32 %i.vg to float               ; 2 uses
  br i1 %or.cond215.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.vi = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType2EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.td, float noundef %i.vc, ptr noundef %i.ve, float noundef %i.vh, float noundef %.0.i71, float noundef %i.sh, float noundef %i.sj, float noundef %i.ts, float noundef %i.tx, float noundef %i.ua, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %9)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ub, i64 80
  %i.vk = load float, ptr %i.vj, align 8, !tbaa !200
  %i.vl = call fastcc noundef float @_ZL27free_energy_evaluate_singleIL18KernelSoftcoreType1EEfffRKN19interaction_const_t18SoftCoreParametersEfPKfffffffffS6_S6_S6_S6_S6_S6_S6_PfS7_S7_(float noundef %i.td, float noundef %i.vk, ptr noundef nonnull align 4 dereferenceable(36) %i.ud, float noundef %i.vc, ptr noundef %i.ve, float noundef %i.vh, float noundef %.0.i71, float noundef %i.sh, float noundef %i.sj, float noundef %i.ts, float noundef %i.tx, float noundef %i.ua, float noundef %i.pf, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %9)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bo
  %i.vm = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.vn = load float, ptr %i.vm, align 8, !tbaa !196 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !197
  %i.vq = getelementptr inbounds nuw i8, ptr %i.te, i64 52
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !198
  %i.vs = sitofp i32 %i.vr to float
  %sqrt3.i75 = call float @llvm.sqrt.f32(float %i.td)
  %i.vt = fdiv float 1.000000e+00, %sqrt3.i75     ; 2 uses
  %i.vu = fmul float %i.td, %i.vt
  %i.vv = fmul float %i.vu, %i.vn                 ; 2 uses
  %i.vw = fptosi float %i.vv to i32
  %i.vx = sitofp i32 %i.vw to float               ; 2 uses
  %i.vy = fsub float %i.vv, %i.vx                 ; 7 uses
  %i.vz = fmul float %i.vy, %i.vy                 ; 2 uses
  %i.wa = fmul nnan float %i.vs, %i.vx
  %i.wb = fptosi float %i.wa to i32
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.vp, i64 %i.wc ; 8 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !172
  %i.wf = getelementptr i8, ptr %i.wd, i64 4
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !172
  %i.wh = getelementptr i8, ptr %i.wd, i64 8
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !172
  %i.wj = fmul float %i.vy, %i.wi                 ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wd, i64 12
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !172
  %i.wm = fmul float %i.vz, %i.wl                 ; 2 uses
  %i.wn = fadd float %i.wg, %i.wj
  %i.wo = fadd float %i.wn, %i.wm                 ; 2 uses
  %i.wp = call float @llvm.fmuladd.f32(float %i.vy, float %i.wo, float %i.we)
  %i.wq = fadd float %i.wj, %i.wo
  %i.wr = fpext float %i.wq to double
  %i.ws = fpext float %i.wm to double
  %i.wt = call double @llvm.fmuladd.f64(double %i.ws, double 2.000000e+00, double %i.wr)
  %i.wu = fptrunc double %i.wt to float
  %i.wv = getelementptr i8, ptr %i.wd, i64 16
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !172
  %i.wx = getelementptr i8, ptr %i.wd, i64 20
  %i.wy = getelementptr i8, ptr %i.wd, i64 32
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !172
  %i.xa = getelementptr i8, ptr %i.wd, i64 40
  %i.xb = call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.wx, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !172 ; 3 uses
  %i.xc = load <2 x float>, ptr %i.xa, align 4, !tbaa !172
  %i.xd = insertelement <2 x float> poison, float %i.vy, i64 0
  %i.xe = shufflevector <2 x float> %i.xd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xf = shufflevector <2 x float> %i.xc, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.xg = shufflevector <5 x float> %i.xb, <5 x float> %i.xf, <2 x i32> <i32 1, i32 5>
  %i.xh = fmul <2 x float> %i.xe, %i.xg           ; 2 uses
  %i.xi = insertelement <2 x float> poison, float %i.vz, i64 0
  %i.xj = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xk = shufflevector <5 x float> %i.xb, <5 x float> %i.xf, <2 x i32> <i32 2, i32 6>
  %i.xl = fmul <2 x float> %i.xj, %i.xk           ; 2 uses
  %i.xm = shufflevector <5 x float> %i.xb, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.xn = fadd <2 x float> %i.xm, %i.xh
  %i.xo = fadd <2 x float> %i.xn, %i.xl           ; 3 uses
  %i.xp = extractelement <2 x float> %i.xo, i64 0
  %i.xq = call float @llvm.fmuladd.f32(float %i.vy, float %i.xp, float %i.ww)
  %i.xr = extractelement <2 x float> %i.xo, i64 1
  %i.xs = call float @llvm.fmuladd.f32(float %i.vy, float %i.xr, float %i.wz)
  %i.xt = fadd <2 x float> %i.xh, %i.xo
  %i.xu = fpext <2 x float> %i.xt to <2 x double>
  %i.xv = fpext <2 x float> %i.xl to <2 x double>
  %i.xw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xv, <2 x double> splat (double 2.000000e+00), <2 x double> %i.xu)
  %i.xx = fptrunc <2 x double> %i.xw to <2 x float> ; 2 uses
  %i.xy = fmul float %.0.i71, %i.wp
  store float %i.xy, ptr %i.b, align 4, !tbaa !172
  %i.xz = fmul float %i.sj, %i.xs
  %i.ya = call float @llvm.fmuladd.f32(float %i.sh, float %i.xq, float %i.xz)
  store float %i.ya, ptr %i.c, align 4, !tbaa !172
  %i.yb = extractelement <2 x float> %i.xx, i64 0
  %i.yc = fmul float %i.sh, %i.yb
  %i.yd = call float @llvm.fmuladd.f32(float %.0.i71, float %i.wu, float %i.yc)
  %i.ye = extractelement <2 x float> %i.xx, i64 1
  %i.yf = call float @llvm.fmuladd.f32(float %i.sj, float %i.ye, float %i.yd)
  %i.yg = fneg float %i.yf
  %i.yh = fmul float %i.vn, %i.yg
  %i.yi = fmul float %i.vt, %i.yh
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br
  %.1205.i = phi float [ %i.yi, %bb.bw ], [ %i.ut, %bb.br ], [ %i.uu, %bb.bs ], [ %i.vi, %bb.bu ], [ %i.vl, %bb.bv ] ; 2 uses
  %i.yj = load float, ptr %i.b, align 4, !tbaa !172
  %i.yk = sext i32 %i.qf to i64                   ; 2 uses
  %i.yl = getelementptr inbounds [4 x i8], ptr %.0203.i, i64 %i.yk ; 2 uses
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !172
  %i.yn = fadd float %i.yj, %i.ym
  store float %i.yn, ptr %i.yl, align 4, !tbaa !172
  %i.yo = load float, ptr %i.c, align 4, !tbaa !172
  %i.yp = getelementptr inbounds [4 x i8], ptr %.0202.i, i64 %i.yk ; 2 uses
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !172
  %i.yr = fadd float %i.yo, %i.yq
  store float %i.yr, ptr %i.yp, align 4, !tbaa !172
  %i.ys = insertelement <2 x float> poison, float %.1205.i, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yu = fmul <2 x float> %i.sz, %i.yt           ; 4 uses
  %27 = extractelement <2 x float> %i.yu, i64 0
  store float %27, ptr %i.a, align 8, !tbaa !172
  %28 = extractelement <2 x float> %i.yu, i64 1
  store float %28, ptr %26, align 4, !tbaa !172
  %i.yv = fmul float %i.sy, %.1205.i              ; 3 uses
  store float %i.yv, ptr %i.pk, align 8, !tbaa !172
  %i.yw = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ps ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !172
  %i.yz = fadd float %i.yv, %i.yy
  %i.za = load <2 x float>, ptr %i.yw, align 4, !tbaa !172
  %i.zb = fadd <2 x float> %i.yu, %i.za
  store <2 x float> %i.zb, ptr %i.yw, align 4, !tbaa !172
  store float %i.yz, ptr %i.yx, align 4, !tbaa !172
  %i.zc = getelementptr inbounds [16 x i8], ptr %5, i64 %i.pv ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8 ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !172
  %i.zf = fsub float %i.ze, %i.yv
  %i.zg = load <2 x float>, ptr %i.zc, align 4, !tbaa !172
  %i.zh = fsub <2 x float> %i.zg, %i.yu
  store <2 x float> %i.zh, ptr %i.zc, align 4, !tbaa !172
  store float %i.zf, ptr %i.zd, align 4, !tbaa !172
  br label %.backedge.i74

_ZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit: ; preds = %.backedge.i74, %.loopexit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.by

bb.by:                                            ; preds = %_ZL16do_pairs_generalIL18BondedKernelFlavor2EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit, %_ZL16do_pairs_generalIL18BondedKernelFlavor3EEf19InteractionFunctioniPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcPS7_PfN3gmx8ArrayRefIS7_EESL_NSK_IKbEENSK_IKtEEiPK10t_forcerecP17gmx_grppairener_tPi.exit, %bb.f, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc void @_ZL15do_pairs_simpleIN3gmx9SimdFloatELi16EPKfEviPKiPK9t_iparamsPA3_S2_PA4_fT1_NS0_8ArrayRefIS2_EEf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, i64 %.0.val, float noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 64              ; 4 uses
  %i.b = alloca [16 x i32], align 64              ; 4 uses
  %i.c = alloca [48 x float], align 64            ; 7 uses
  %i.d = insertelement <16 x float> poison, float %6, i64 0
  %i.e = shufflevector <16 x float> %i.d, <16 x float> poison, <16 x i32> zeroinitializer
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.preheader14.lr.ph, label %._crit_edge

.preheader14.lr.ph:                               ; preds = %bb.a
  %i.g = inttoptr i64 %.0.val to ptr              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 384
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 448
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.t = zext nneg i32 %0 to i64                  ; 2 uses
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.lr.ph, %.preheader13.preheader
  %indvars.iv19 = phi i64 [ 0, %.preheader14.lr.ph ], [ %indvars.iv.next20, %.preheader13.preheader ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv19 to i32
  br label %bb.b

._crit_edge:                                      ; preds = %.preheader13.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.b:                                             ; preds = %.preheader14, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader14 ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %.010916 = phi i32 [ %i.u, %.preheader14 ], [ %.1, %bb.e ] ; 4 uses
  %i.v = sext i32 %.010916 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !177
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !177  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !177
  %i.ab = getelementptr i8, ptr %i.w, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !177 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !177
  %i.ae = mul nuw nsw i64 %indvars.iv, 3
  %i.af = add nuw nsw i64 %i.ae, %indvars.iv19
  %i.ag = icmp samesign ult i64 %i.af, %i.t
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.x to i64
  %i.ai = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ah ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !181
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  store float %i.aj, ptr %i.ak, align 4, !tbaa !172
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !181
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store float %i.am, ptr %i.an, align 4, !tbaa !172
  %i.ao = sext i32 %i.z to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !172
  %i.ar = sext i32 %i.ac to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !172
  %i.au = fmul float %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  store float %i.au, ptr %i.av, align 4, !tbaa !172
  %i.aw = add nsw i32 %.010916, 3                 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %0
  %spec.select = select i1 %i.ax, i32 %i.aw, i32 %.010916
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !172
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store float 0.000000e+00, ptr %i.az, align 4, !tbaa !172
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !172
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %.010916, %bb.d ], [ %spec.select, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader13.preheader, label %bb.b, !llvm.loop !202

.preheader13.preheader:                           ; preds = %bb.e
  %.val12211 = load <16 x i32>, ptr %i.a, align 64, !tbaa !181 ; 2 uses
  %i.bb = mul <16 x i32> %.val12211, splat (i32 3) ; 3 uses
  %i.bc = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %3, <16 x i32> %i.bb, <16 x i1> splat (i1 true), i32 4)
  %i.bd = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.h, <16 x i32> %i.bb, <16 x i1> splat (i1 true), i32 4)
  %i.be = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.i, <16 x i32> %i.bb, <16 x i1> splat (i1 true), i32 4)
  %.val12 = load <16 x i32>, ptr %i.b, align 64, !tbaa !181 ; 2 uses
  %i.bf = mul <16 x i32> %.val12, splat (i32 3)   ; 3 uses
  %i.bg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %3, <16 x i32> %i.bf, <16 x i1> splat (i1 true), i32 4)
  %i.bh = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.h, <16 x i32> %i.bf, <16 x i1> splat (i1 true), i32 4)
  %i.bi = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.i, <16 x i32> %i.bf, <16 x i1> splat (i1 true), i32 4)
  %.val125 = load <16 x float>, ptr %i.c, align 64, !tbaa !181
  %.val124 = load <16 x float>, ptr %i.j, align 64, !tbaa !181
  %.val123 = load <16 x float>, ptr %i.k, align 64, !tbaa !181
  %i.bj = fmul <16 x float> %.val124, splat (float 1.200000e+01)
  %i.bk = fsub <16 x float> %i.bc, %i.bg
  %i.bl = fsub <16 x float> %i.bd, %i.bh
  %i.bm = fsub <16 x float> %i.be, %i.bi          ; 2 uses
  %.val72.i.i = load <16 x float>, ptr %5, align 64, !tbaa !181
  %i.bn = fmul <16 x float> %i.bm, %.val72.i.i
  %i.bo = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bn, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %.val71.i.i = load <16 x float>, ptr %i.l, align 64, !tbaa !181
  %i.bp = fmul <16 x float> %i.bo, %.val71.i.i
  %i.bq = fsub <16 x float> %i.bk, %i.bp
  %.val70.i.i = load <16 x float>, ptr %i.m, align 64, !tbaa !181
  %i.br = fmul <16 x float> %i.bo, %.val70.i.i
  %i.bs = fsub <16 x float> %i.bl, %i.br          ; 2 uses
  %.val69.i.i = load <16 x float>, ptr %i.n, align 64, !tbaa !181
  %i.bt = fmul <16 x float> %i.bo, %.val69.i.i
  %i.bu = fsub <16 x float> %i.bm, %i.bt          ; 3 uses
  %.val68.i.i = load <16 x float>, ptr %i.o, align 64, !tbaa !181
  %i.bv = fmul <16 x float> %i.bs, %.val68.i.i
  %i.bw = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bv, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %.val67.i.i = load <16 x float>, ptr %i.p, align 64, !tbaa !181
  %i.bx = fmul <16 x float> %i.bw, %.val67.i.i
  %i.by = fsub <16 x float> %i.bq, %i.bx          ; 2 uses
  %.val66.i.i = load <16 x float>, ptr %i.q, align 64, !tbaa !181
  %i.bz = fmul <16 x float> %i.bw, %.val66.i.i
  %i.ca = fsub <16 x float> %i.bs, %i.bz          ; 3 uses
  %.val65.i.i = load <16 x float>, ptr %i.r, align 64, !tbaa !181
  %i.cb = fmul <16 x float> %i.by, %.val65.i.i
  %i.cc = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cb, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4)
  %.val.i.i = load <16 x float>, ptr %i.s, align 64, !tbaa !181
  %i.cd = fmul <16 x float> %i.cc, %.val.i.i
  %i.ce = fsub <16 x float> %i.by, %i.cd          ; 3 uses
  %i.cf = fmul <16 x float> %i.ce, %i.ce
  %i.cg = fmul <16 x float> %i.ca, %i.ca
  %i.ch = fadd <16 x float> %i.cg, %i.cf
  %i.ci = fmul <16 x float> %i.bu, %i.bu
  %i.cj = fadd <16 x float> %i.ci, %i.ch          ; 2 uses
  %i.ck = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.cj, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.cl = fmul <16 x float> %i.ck, %i.cj
  %i.cm = fmul <16 x float> %i.ck, splat (float -5.000000e-01)
  %i.cn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cl, <16 x float> %i.ck, <16 x float> splat (float -3.000000e+00))
  %i.co = fmul <16 x float> %i.cm, %i.cn          ; 3 uses
  %i.cp = fmul <16 x float> %i.co, %i.co          ; 4 uses
  %i.cq = fmul <16 x float> %i.cp, %i.cp
  %i.cr = fmul <16 x float> %i.cp, %i.cq          ; 2 uses
end_hunk_0
