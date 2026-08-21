Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_gpu_ref?download=true
inline.NumInlined: 155
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ArrayRef.0" = type { %"struct.gmx::ArrayRefIter.1", %"struct.gmx::ArrayRefIter.1" }
%"struct.gmx::ArrayRefIter.1" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.13" }
%"class.std::unique_ptr.13" = type { %"struct.std::__uniq_ptr_data.14" }
%"struct.std::__uniq_ptr_data.14" = type { %"class.std::__uniq_ptr_impl.15" }
%"class.std::__uniq_ptr_impl.15" = type { %"class.std::tuple.16" }
%"class.std::tuple.16" = type { %"struct.std::_Tuple_impl.17" }
%"struct.std::_Tuple_impl.17" = type { %"struct.std::_Head_base.20" }
%"struct.std::_Head_base.20" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IA87_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [87 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/nbnxm/kernels_reference/kernel_gpu_ref.cpp\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"The neighborlist cluster size in the GPU reference kernel is %d, expected it to be %d\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"number of half %dx%d atom pairs: %d after pruning: %d fraction %4.2f\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"generic kernel pair interactions:            %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"generic kernel post-prune pair interactions: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"generic kernel non-zero pair interactions:   %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"ratio non-zero/post-prune pair interactions: %4.2f\0A\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20nbnxn_kernel_gpu_refEPKNS_16NbnxnPairlistGpuEPKNS_16nbnxn_atomdata_tERK19interaction_const_tNS_8ArrayRefIKNS_11BasicVectorIfEEEERKNS_12StepWorkloadEiNS9_IfEEPfSI_SI_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(19) %5, i32 noundef %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %.not = icmp eq i32 %i.c, 8
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA87_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(87) @.str, i8 noundef zeroext 2)
  %i.d = load i32, ptr %i.b, align 8, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 82, ptr noundef nonnull @.str.1, i32 noundef %i.d, i32 noundef 8) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %6, 1
  br i1 %i.f, label %bb.f, label %.loopexit399

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i376 = load ptr, ptr %i.g, align 8 ; 2 uses
  %.not391400 = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i376
  br i1 %.not391400, label %.loopexit399, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.sroa.0.0.copyload.i376462 = ptrtoaddr ptr %.sroa.0.0.copyload.i376 to i64
  %.sroa.0.0.copyload.i463 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %i.h = add i64 %.sroa.0.0.copyload.i376462, -4
  %i.i = sub i64 %i.h, %.sroa.0.0.copyload.i463
  %i.j = and i64 %i.i, -4
  %i.k = add i64 %i.j, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0.0.copyload.i, i8 0, i64 %i.k, i1 false), !tbaa !43
  br label %.loopexit399

.loopexit399:                                     ; preds = %.lr.ph.preheader, %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val = load i32, ptr %i.l, align 8, !tbaa !44  ; 3 uses
  %switch.tableidx = add i32 %.val, -3            ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 7175, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.m, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit, label %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i

_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i: ; preds = %.loopexit399
  %i.n = icmp eq i32 %.val, 6
  %i.o = icmp eq i32 %.val, 17
  %spec.select.i = or i1 %i.n, %i.o
  br label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit

_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit: ; preds = %.loopexit399, %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i
  %i.p = phi i1 [ %spec.select.i, %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i ], [ true, %.loopexit399 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = load float, ptr %i.q, align 8, !tbaa !46 ; 2 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load float, ptr %i.t, align 8, !tbaa !70 ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load float, ptr %i.w, align 4, !tbaa !71 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !75 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.af = load i32, ptr %1, align 8, !tbaa !79    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 66 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 2 uses
  %.not392451 = icmp eq ptr %i.aj, %i.al
  br i1 %.not392451, label %._crit_edge458, label %.lr.ph457

.lr.ph457:                                        ; preds = %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.ao = fneg float %i.ac                        ; 2 uses
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.ap, 5.000000e-01
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.av = add nsw i32 %i.af, -1                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = load i64, ptr %7, align 8
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !102, !range !104, !noundef !105
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

._crit_edge458:                                   ; preds = %bb.aj, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit
  %.0360.lcssa = phi i32 [ 0, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ], [ %.1361.lcssa, %bb.aj ] ; 2 uses
  %.0353.lcssa = phi i32 [ 0, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ], [ %.1354.lcssa, %bb.aj ] ; 3 uses
  %.0345.lcssa = phi i32 [ 0, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ], [ %.1346.lcssa, %bb.aj ] ; 4 uses
  %i.bg = load ptr, ptr @debug, align 8, !tbaa !106 ; 2 uses
  %.not369 = icmp eq ptr %i.bg, null
  br i1 %.not369, label %bb.al, label %bb.ak

bb.g:                                             ; preds = %.lr.ph457, %bb.aj
  %.0293456 = phi float [ 0.000000e+00, %.lr.ph457 ], [ %.1294.lcssa, %bb.aj ] ; 2 uses
  %.0345455 = phi i32 [ 0, %.lr.ph457 ], [ %.1346.lcssa, %bb.aj ] ; 2 uses
  %.0353454 = phi i32 [ 0, %.lr.ph457 ], [ %.1354.lcssa, %bb.aj ] ; 2 uses
  %.0360453 = phi i32 [ 0, %.lr.ph457 ], [ %.1361.lcssa, %bb.aj ] ; 2 uses
  %.sroa.0381.0452 = phi ptr [ %i.aj, %.lr.ph457 ], [ %i.yv, %bb.aj ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0381.0452, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !108 ; 3 uses
  %i.bj = mul nsw i32 %i.bi, 3
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bk ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0381.0452, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !110 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0381.0452, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !111 ; 2 uses
  %i.bt = load i32, ptr %.sroa.0381.0452, align 4, !tbaa !112 ; 3 uses
  %i.bu = icmp ne i32 %i.bi, 22                   ; 2 uses
  br i1 %i.bu, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = sext i32 %i.bq to i64
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !113
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !114
  %i.bz = shl nsw i32 %i.bt, 3
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %.preheader398, label %bb.k

.preheader398:                                    ; preds = %bb.h
  %i.cb = shl i32 %i.bt, 6
  %i.cc = load i32, ptr %i.an, align 8, !tbaa !115
  %i.cd = sext i32 %i.cc to i64                   ; 64 uses
  %i.ce = sext i32 %i.cb to i64                   ; 64 uses
  %i.cf = mul nsw i64 %i.cd, %i.ce
  %i.cg = getelementptr [4 x i8], ptr %i.ah, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !43 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float 0.000000e+00)
  %i.ck = or disjoint i64 %i.ce, 1
  %i.cl = mul nsw i64 %i.ck, %i.cd
  %i.cm = getelementptr [4 x i8], ptr %i.ah, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !43 ; 2 uses
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cj)
  %i.cq = or disjoint i64 %i.ce, 2
  %i.cr = mul nsw i64 %i.cq, %i.cd
  %i.cs = getelementptr [4 x i8], ptr %i.ah, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 12
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !43 ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cp)
  %i.cw = or disjoint i64 %i.ce, 3
  %i.cx = mul nsw i64 %i.cw, %i.cd
  %i.cy = getelementptr [4 x i8], ptr %i.ah, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 12
  %i.da = load float, ptr %i.cz, align 4, !tbaa !43 ; 2 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cv)
  %i.dc = or disjoint i64 %i.ce, 4
  %i.dd = mul nsw i64 %i.dc, %i.cd
  %i.de = getelementptr [4 x i8], ptr %i.ah, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 12
  %i.dg = load float, ptr %i.df, align 4, !tbaa !43 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.db)
  %i.di = or disjoint i64 %i.ce, 5
  %i.dj = mul nsw i64 %i.di, %i.cd
  %i.dk = getelementptr [4 x i8], ptr %i.ah, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 12
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !43 ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dh)
  %i.do = or disjoint i64 %i.ce, 6
  %i.dp = mul nsw i64 %i.do, %i.cd
  %i.dq = getelementptr [4 x i8], ptr %i.ah, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 12
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !43 ; 2 uses
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %i.dn)
  %i.du = or disjoint i64 %i.ce, 7
  %i.dv = mul nsw i64 %i.du, %i.cd
  %i.dw = getelementptr [4 x i8], ptr %i.ah, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 12
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !43 ; 2 uses
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.dt)
  %i.ea = or disjoint i64 %i.ce, 8
  %i.eb = mul nsw i64 %i.ea, %i.cd
  %i.ec = getelementptr [4 x i8], ptr %i.ah, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !43 ; 2 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.dz)
  %i.eg = or disjoint i64 %i.ce, 9
  %i.eh = mul nsw i64 %i.eg, %i.cd
  %i.ei = getelementptr [4 x i8], ptr %i.ah, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !43 ; 2 uses
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ef)
  %i.em = or disjoint i64 %i.ce, 10
  %i.en = mul nsw i64 %i.em, %i.cd
  %i.eo = getelementptr [4 x i8], ptr %i.ah, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43 ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.el)
  %i.es = or disjoint i64 %i.ce, 11
end_hunk_0
begin_hunk_1_@_ZN3gmx20nbnxn_kernel_gpu_refEPKNS_16NbnxnPairlistGpuEPKNS_16nbnxn_atomdata_tERK19interaction_const_tNS_8ArrayRefIKNS_11BasicVectorIfEEEERKNS_12StepWorkloadEiNS9_IfEEPfSI_SI_:bb.a
  %i.qj = getelementptr i8, ptr %i.qi, i64 12
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !43 ; 2 uses
  %i.ql = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.qf)
  %i.qm = or disjoint i64 %i.ce, 62
  %i.qn = mul nsw i64 %i.qm, %i.cd
  %i.qo = getelementptr [4 x i8], ptr %i.ah, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 12
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !43 ; 2 uses
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.qq, float %i.ql)
  %i.qs = or disjoint i64 %i.ce, 63
  %i.qt = mul nsw i64 %i.qs, %i.cd
  %i.qu = getelementptr [4 x i8], ptr %i.ah, i64 %i.qt
  %i.qv = getelementptr i8, ptr %i.qu, i64 12
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !43 ; 2 uses
  %i.qx = tail call float @llvm.fmuladd.f32(float %i.qw, float %i.qw, float %i.qr) ; 2 uses
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader398
  %i.qy = load float, ptr %i.ar, align 4, !tbaa !143
  %i.qz = fpext float %i.qy to double
  %i.ra = fmul double %i.aq, %i.qz
  %i.rb = fpext float %i.qx to double
  %i.rc = fmul double %i.ra, %i.rb
  %i.rd = fptrunc double %i.rc to float
  br label %bb.k

bb.j:                                             ; preds = %.preheader398
  %i.re = load float, ptr %i.as, align 8, !tbaa !144
  %i.rf = fmul float %i.re, %i.ao
  %i.rg = fpext float %i.rf to double
  %i.rh = fmul double %i.rg, f0x3FE20DD750429B6A
  %i.ri = fpext float %i.qx to double
  %i.rj = fmul double %i.rh, %i.ri
  %i.rk = fptrunc double %i.rj to float
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g
  %.2335 = phi float [ %i.rk, %bb.j ], [ %i.rd, %bb.i ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.rl = icmp slt i32 %i.bq, %i.bs
  br i1 %i.rl, label %.preheader396.lr.ph, label %._crit_edge

.preheader396.lr.ph:                              ; preds = %bb.k
  %i.rm = load ptr, ptr %i.am, align 8, !tbaa !113
  %i.rn = load ptr, ptr %i.at, align 8, !tbaa !145 ; 2 uses
  %i.ro = shl nsw i32 %i.bt, 3
  %i.rp = sext i32 %i.bj to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr %8, i64 %i.rp ; 3 uses
  %i.rr = getelementptr i8, ptr %i.rq, i64 8      ; 2 uses
  %i.rs = sext i32 %i.ro to i64
  %i.rt = sext i32 %i.bq to i64
  %wide.trip.count = sext i32 %i.bs to i64
  br label %.preheader396

.preheader396:                                    ; preds = %.preheader396.lr.ph, %bb.l
  %indvars.iv478 = phi i64 [ %i.rt, %.preheader396.lr.ph ], [ %indvars.iv.next479, %bb.l ] ; 2 uses
  %.1294445 = phi float [ %.0293456, %.preheader396.lr.ph ], [ %.11, %bb.l ]
  %.0323443 = phi float [ 0.000000e+00, %.preheader396.lr.ph ], [ %.9332, %bb.l ]
  %.3336442 = phi float [ %.2335, %.preheader396.lr.ph ], [ %.12, %bb.l ]
  %.1346441 = phi i32 [ %.0345455, %.preheader396.lr.ph ], [ %.7352, %bb.l ]
  %.1354440 = phi i32 [ %.0353454, %.preheader396.lr.ph ], [ %.6359, %bb.l ]
  %.1361439 = phi i32 [ %.0360453, %.preheader396.lr.ph ], [ %.6366, %bb.l ]
  %i.ru = getelementptr inbounds nuw [32 x i8], ptr %i.rm, i64 %indvars.iv478 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 20
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !146
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [128 x i8], ptr %i.rn, i64 %i.rx
  store ptr %i.ry, ptr %i.a, align 16, !tbaa !148
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 28
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !146
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [128 x i8], ptr %i.rn, i64 %i.sb
  store ptr %i.sc, ptr %i.bf, align 8, !tbaa !148
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !149
  br label %bb.m

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.1361.lcssa = phi i32 [ %.0360453, %bb.k ], [ %.6366, %bb.l ] ; 2 uses
  %.1354.lcssa = phi i32 [ %.0353454, %bb.k ], [ %.6359, %bb.l ] ; 2 uses
  %.1346.lcssa = phi i32 [ %.0345455, %bb.k ], [ %.7352, %bb.l ] ; 2 uses
  %.3336.lcssa = phi float [ %.2335, %bb.k ], [ %.12, %bb.l ]
  %.0323.lcssa = phi float [ 0.000000e+00, %bb.k ], [ %.9332, %bb.l ]
  %.1294.lcssa = phi float [ %.0293456, %bb.k ], [ %.11, %bb.l ]
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.l:                                             ; preds = %bb.n
  %indvars.iv.next479 = add nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next479, %wide.trip.count
  br i1 %exitcond481.not, label %._crit_edge, label %.preheader396, !llvm.loop !150

bb.m:                                             ; preds = %.preheader396, %bb.n
  %indvars.iv474 = phi i64 [ 0, %.preheader396 ], [ %indvars.iv.next475, %bb.n ] ; 3 uses
  %.2438 = phi float [ %.1294445, %.preheader396 ], [ %.11, %bb.n ]
  %.1324436 = phi float [ %.0323443, %.preheader396 ], [ %.9332, %bb.n ]
  %.4337435 = phi float [ %.3336442, %.preheader396 ], [ %.12, %bb.n ]
  %.2347434 = phi i32 [ %.1346441, %.preheader396 ], [ %.7352, %bb.n ]
  %.2355433 = phi i32 [ %.1354440, %.preheader396 ], [ %.6359, %bb.n ]
  %.2362432 = phi i32 [ %.1361439, %.preheader396 ], [ %.6366, %bb.n ]
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv474
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !114 ; 2 uses
  %i.sh = shl nuw nsw i64 %indvars.iv474, 3
  %i.si = shl nsw i32 %i.sg, 3
  %i.sj = sext i32 %i.si to i64
  %sext = sext i32 %i.sg to i64
  br label %bb.o

bb.n:                                             ; preds = %.loopexit
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next475, 4
  br i1 %exitcond477.not, label %bb.l, label %bb.m, !llvm.loop !152

bb.o:                                             ; preds = %bb.m, %.loopexit
  %indvars.iv470 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next471, %.loopexit ] ; 3 uses
  %.3431 = phi float [ %.2438, %bb.m ], [ %.11, %.loopexit ] ; 2 uses
  %.2325429 = phi float [ %.1324436, %bb.m ], [ %.9332, %.loopexit ] ; 2 uses
  %.5338428 = phi float [ %.4337435, %bb.m ], [ %.12, %.loopexit ] ; 2 uses
  %.3348427 = phi i32 [ %.2347434, %bb.m ], [ %.7352, %.loopexit ] ; 2 uses
  %.3356426 = phi i32 [ %.2355433, %bb.m ], [ %.6359, %.loopexit ] ; 2 uses
  %.3363425 = phi i32 [ %.2362432, %bb.m ], [ %.6366, %.loopexit ] ; 2 uses
  %i.sk = add nuw nsw i64 %indvars.iv470, %i.sh
  %i.sl = trunc nuw nsw i64 %i.sk to i32          ; 2 uses
  %i.sm = shl nuw i32 1, %i.sl
  %i.sn = and i32 %i.se, %i.sm
  %.not370 = icmp eq i32 %i.sn, 0
  br i1 %.not370, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.so = add nuw nsw i64 %indvars.iv470, %i.rs   ; 2 uses
  %i.sp = shl nsw i64 %i.so, 3
  %i.sq = load i32, ptr %i.an, align 8, !tbaa !115
  %i.sr = load i32, ptr %i.au, align 4, !tbaa !153
  %i.ss = icmp ne i64 %i.so, %sext
  %or.cond.not395 = select i1 %i.bu, i1 true, i1 %i.ss
  %i.st = sext i32 %i.sq to i64                   ; 2 uses
  %i.su = sext i32 %i.sr to i64                   ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.ah
  %indvars.iv467 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next468, %bb.ah ] ; 3 uses
  %.4424 = phi float [ %.3431, %bb.p ], [ %.10, %bb.ah ]
  %.0306422 = phi i32 [ 0, %bb.p ], [ %.5311, %bb.ah ]
  %.0312421 = phi i8 [ 0, %bb.p ], [ %.4316, %bb.ah ]
  %.3326420 = phi float [ %.2325429, %bb.p ], [ %.8331, %bb.ah ]
  %.6339419 = phi float [ %.5338428, %bb.p ], [ %.11344, %bb.ah ]
  %.4349418 = phi i32 [ %.3348427, %bb.p ], [ %.6351, %bb.ah ] ; 2 uses
  %.4357417 = phi i32 [ %.3356426, %bb.p ], [ %.5358, %bb.ah ] ; 2 uses
  %.4364416 = phi i32 [ %.3363425, %bb.p ], [ %.5365, %bb.ah ] ; 2 uses
  %i.sv = add nuw nsw i64 %indvars.iv467, %i.sp   ; 4 uses
  %i.sw = mul nsw i64 %i.sv, %i.st
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.sw ; 3 uses
  %i.sy = load <2 x float>, ptr %i.sx, align 4, !tbaa !43
  %i.sz = fadd <2 x float> %i.bm, %i.sy
  %i.ta = getelementptr i8, ptr %i.sx, i64 8
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !43
  %i.tc = fadd float %i.bo, %i.tb
  %i.td = getelementptr i8, ptr %i.sx, i64 12
  %i.te = load float, ptr %i.td, align 4, !tbaa !43
  %i.tf = fmul float %i.ac, %i.te
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.sv ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !114
  %i.ti = mul i32 %i.th, %i.af
  %indvars.iv467.masked = and i64 %indvars.iv467, 4294967295
  br label %bb.s

bb.r:                                             ; preds = %bb.af
  %i.tj = mul nsw i64 %i.sv, %i.su
  %i.tk = getelementptr [4 x i8], ptr %i.bc, i64 %i.tj ; 3 uses
  %i.tl = load <2 x float>, ptr %i.tk, align 4, !tbaa !43
  %i.tm = fadd <2 x float> %i.yn, %i.tl
  store <2 x float> %i.tm, ptr %i.tk, align 4, !tbaa !43
  %i.tn = getelementptr i8, ptr %i.tk, i64 8      ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !43
  %i.tp = fadd float %.2298, %i.to
  store float %i.tp, ptr %i.tn, align 4, !tbaa !43
  %i.tq = load <2 x float>, ptr %i.rq, align 4, !tbaa !43
  %i.tr = fadd <2 x float> %i.yn, %i.tq
  store <2 x float> %i.tr, ptr %i.rq, align 4, !tbaa !43
  %i.ts = load float, ptr %i.rr, align 4, !tbaa !43
  %i.tt = fadd float %.2298, %i.ts
  store float %i.tt, ptr %i.rr, align 4, !tbaa !43
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 3 uses
  %i.tu = and i64 %indvars.iv.next468, 3
  %i.tv = icmp eq i64 %i.tu, 0
  br i1 %i.tv, label %bb.ag, label %bb.ah

bb.s:                                             ; preds = %bb.q, %bb.af
  %indvars.iv = phi i64 [ 0, %bb.q ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.5415 = phi float [ %.4424, %bb.q ], [ %.10, %bb.af ] ; 4 uses
  %.0296413 = phi float [ 0.000000e+00, %bb.q ], [ %.2298, %bb.af ] ; 3 uses
  %.1307410 = phi i32 [ %.0306422, %bb.q ], [ %.4310, %bb.af ] ; 4 uses
  %.1313409 = phi i8 [ %.0312421, %bb.q ], [ %.3315, %bb.af ] ; 2 uses
  %.4327408 = phi float [ %.3326420, %bb.q ], [ %.8331, %bb.af ] ; 5 uses
  %.7340407 = phi float [ %.6339419, %bb.q ], [ %.11344, %bb.af ] ; 5 uses
  %i.tw = phi <2 x float> [ zeroinitializer, %bb.q ], [ %i.yn, %bb.af ] ; 3 uses
  %i.tx = add nuw nsw i64 %indvars.iv, %i.sj      ; 5 uses
  %.not371 = icmp sgt i64 %i.tx, %i.sv
  %or.cond374 = select i1 %or.cond.not395, i1 true, i1 %.not371
  br i1 %or.cond374, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %12 = shl nuw i64 %indvars.iv, 1
  %i.ty = and i64 %12, 8589934584
  %.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ty
  %i.tz = load ptr, ptr %.0..sroa_idx, align 8, !tbaa !148
  %i.ua = shl i64 %indvars.iv, 3
  %i.ub = and i64 %i.ua, 24
  %i.uc = or i64 %i.ub, %indvars.iv467.masked
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !114
  %i.uf = lshr i32 %i.ue, %i.sl
  %i.ug = and i32 %i.uf, 1
  %i.uh = uitofp nneg i32 %i.ug to float          ; 7 uses
  %i.ui = mul nsw i64 %i.tx, %i.st
  %i.uj = mul nsw i64 %i.tx, %i.su
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ui ; 3 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 8
  %i.um = load float, ptr %i.ul, align 4, !tbaa !43
  %i.un = load <2 x float>, ptr %i.uk, align 4, !tbaa !43
  %i.uo = fsub <2 x float> %i.sz, %i.un           ; 4 uses
  %i.up = fsub float %i.tc, %i.um                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.uo, %i.uo
  %i.uq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ur = extractelement <2 x float> %i.uo, i64 0 ; 2 uses
  %i.us = tail call float @llvm.fmuladd.f32(float %i.ur, float %i.ur, float %i.uq)
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.up, float %i.up, float %i.us) ; 4 uses
  %i.uu = fcmp olt float %i.ut, %i.y
  %.2314 = select i1 %i.uu, i8 1, i8 %.1313409    ; 2 uses
  %i.uv = fcmp ult float %i.ut, %i.s
  br i1 %i.uv, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.uw = load i32, ptr %i.tg, align 4, !tbaa !114
  %.not372 = icmp eq i32 %i.uw, %i.av
  br i1 %.not372, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.tx
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !114
  %.not373 = icmp ne i32 %i.uy, %i.av
  %i.uz = zext i1 %.not373 to i32
  %spec.select = add nsw i32 %.1307410, %i.uz
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2308 = phi i32 [ %.1307410, %bb.u ], [ %spec.select, %bb.v ]
  %i.va = fcmp olt float %i.ut, 3.820000e-07
  %.sroa.speculated = select i1 %i.va, float 3.820000e-07, float %i.ut ; 4 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %.sroa.speculated)
  %i.vb = fdiv float 1.000000e+00, %sqrt          ; 7 uses
  %i.vc = fmul float %i.vb, %i.vb                 ; 6 uses
  %i.vd = getelementptr i8, ptr %i.uk, i64 12
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !43
  %i.vf = fmul float %i.tf, %i.ve                 ; 4 uses
  br i1 %i.p, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.vg = load float, ptr %i.aw, align 8, !tbaa !154
  %i.vh = fmul float %.sroa.speculated, %i.vg     ; 2 uses
  %i.vi = fmul float %i.vh, -2.000000e+00
  %i.vj = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.vb, float %i.vi)
  %i.vk = fmul float %i.vf, %i.vj
  %i.vl = fmul float %i.vc, %i.vk                 ; 2 uses
  %i.vm = load i8, ptr %i.ax, align 1, !tbaa !102, !range !104, !noundef !105
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.vo = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.vb, float %i.vh)
  %i.vp = load float, ptr %i.ar, align 4, !tbaa !143
  %i.vq = fsub float %i.vo, %i.vp
  %i.vr = fmul float %i.vf, %i.vq
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.vs = fmul float %.sroa.speculated, %i.vb     ; 2 uses
  %i.vt = load ptr, ptr %i.ay, align 8, !tbaa !155 ; 2 uses
  %i.vu = load float, ptr %i.vt, align 8, !tbaa !156
  %i.vv = fmul float %i.vs, %i.vu                 ; 2 uses
  %i.vw = fptosi float %i.vv to i32               ; 2 uses
  %i.vx = sitofp i32 %i.vw to float
  %i.vy = fsub float %i.vv, %i.vx                 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !158
  %i.wb = fsub float 1.000000e+00, %i.vy
  %i.wc = sext i32 %i.vw to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.wc ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !43
  %i.wf = getelementptr i8, ptr %i.wd, i64 4
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !43
  %i.wh = fmul float %i.wg, %i.vy
  %i.wi = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.we, float %i.wh)
  %i.wj = fneg float %i.wi
  %i.wk = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.vc, float %i.wj)
  %i.wl = fmul float %i.vf, %i.wk
  %i.wm = fmul float %i.vb, %i.wl                 ; 2 uses
  %i.wn = load i8, ptr %i.ax, align 1, !tbaa !102, !range !104, !noundef !105
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.wp = load float, ptr %i.as, align 8, !tbaa !144
  %i.wq = fmul float %i.vs, %i.wp
  %i.wr = tail call noundef float @erff(float noundef %i.wq) #13
  %i.ws = fsub float %i.uh, %i.wr
  %i.wt = load float, ptr %i.az, align 4, !tbaa !159
  %i.wu = fneg float %i.uh
  %i.wv = fmul float %i.wt, %i.wu
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.ws, float %i.vb, float %i.wv)
  %i.wx = fmul float %i.vf, %i.ww
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.y
  %i.wy = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ true, %bb.aa ], [ false, %bb.z ]
  %.8 = phi float [ %.5415, %bb.x ], [ %i.vr, %bb.y ], [ %i.wx, %bb.aa ], [ %.5415, %bb.z ] ; 2 uses
  %.0 = phi float [ %i.vl, %bb.x ], [ %i.vl, %bb.y ], [ %i.wm, %bb.aa ], [ %i.wm, %bb.z ] ; 2 uses
  %i.wz = fcmp olt float %.sroa.speculated, %i.v
  br i1 %i.wz, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.tx
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !114
  %reass.add = add i32 %i.xb, %i.ti
  %reass.mul = shl i32 %reass.add, 1
  %i.xc = sext i32 %reass.mul to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.xc ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 4
  %i.xf = fmul float %i.vc, %i.uh
  %i.xg = fmul float %i.vc, %i.xf
  %i.xh = fmul float %i.vc, %i.xg                 ; 2 uses
  %i.xi = load <2 x float>, ptr %i.xd, align 4, !tbaa !43 ; 2 uses
  %i.xj = load float, ptr %i.xe, align 4, !tbaa !43
  %i.xk = fmul float %i.xh, %i.xj
  %i.xl = insertelement <2 x float> poison, float %i.xh, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = insertelement <2 x float> %i.xi, float %i.xk, i64 1
  %i.xo = fmul <2 x float> %i.xm, %i.xn           ; 3 uses
  %shift = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop491 = fsub <2 x float> %shift, %i.xo
  %i.xp = extractelement <2 x float> %foldExtExtBinop491, i64 0
  %i.xq = tail call float @llvm.fmuladd.f32(float %i.xp, float %i.vc, float %.0) ; 2 uses
  br i1 %i.wy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.xr = fadd float %.7340407, %.8
  %i.xs = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.xt = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xu = fmul <2 x float> %i.xi, %i.xt
  %i.xv = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.ba, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !43
  %i.xw = shufflevector <4 x float> %i.xv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.xx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xu, <2 x float> %i.xw, <2 x float> %i.xo)
  %i.xy = fdiv <2 x float> %i.xx, <float 6.000000e+00, float 1.200000e+01> ; 2 uses
  %shift493 = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop494 = fsub <2 x float> %shift493, %i.xy
  %i.xz = extractelement <2 x float> %foldExtExtBinop494, i64 0
  %i.ya = fadd float %.4327408, %i.xz
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.9342 = phi float [ %.7340407, %bb.ab ], [ %i.xr, %bb.ad ], [ %.7340407, %bb.ac ]
  %.6329 = phi float [ %.4327408, %bb.ab ], [ %i.ya, %bb.ad ], [ %.4327408, %bb.ac ]
  %.1 = phi float [ %.0, %bb.ab ], [ %i.xq, %bb.ad ], [ %i.xq, %bb.ac ] ; 2 uses
  %i.yb = insertelement <2 x float> poison, float %.1, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x float> %i.uo, %i.yc           ; 2 uses
  %i.ye = fmul float %i.up, %.1                   ; 2 uses
  %i.yf = fadd <2 x float> %i.tw, %i.yd
  %i.yg = fadd float %.0296413, %i.ye
  %i.yh = getelementptr [4 x i8], ptr %i.bc, i64 %i.uj ; 3 uses
  %i.yi = load <2 x float>, ptr %i.yh, align 4, !tbaa !43
  %i.yj = fsub <2 x float> %i.yi, %i.yd
  store <2 x float> %i.yj, ptr %i.yh, align 4, !tbaa !43
  %i.yk = getelementptr i8, ptr %i.yh, i64 8      ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !43
  %i.ym = fsub float %i.yl, %i.ye
  store float %i.ym, ptr %i.yk, align 4, !tbaa !43
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t, %bb.s
  %.11344 = phi float [ %.7340407, %bb.s ], [ %.9342, %bb.ae ], [ %.7340407, %bb.t ] ; 3 uses
  %.8331 = phi float [ %.4327408, %bb.s ], [ %.6329, %bb.ae ], [ %.4327408, %bb.t ] ; 3 uses
  %.3315 = phi i8 [ %.1313409, %bb.s ], [ %.2314, %bb.ae ], [ %.2314, %bb.t ] ; 3 uses
  %.4310 = phi i32 [ %.1307410, %bb.s ], [ %.2308, %bb.ae ], [ %.1307410, %bb.t ] ; 3 uses
  %.2298 = phi float [ %.0296413, %bb.s ], [ %i.yg, %bb.ae ], [ %.0296413, %bb.t ] ; 3 uses
  %.10 = phi float [ %.5415, %bb.s ], [ %.8, %bb.ae ], [ %.5415, %bb.t ] ; 3 uses
  %i.yn = phi <2 x float> [ %i.tw, %bb.s ], [ %i.yf, %bb.ae ], [ %i.tw, %bb.t ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.r, label %bb.s, !llvm.loop !160

bb.ag:                                            ; preds = %bb.r
  %i.yo = add nsw i32 %.4310, %.4364416
  %i.yp = add nsw i32 %.4357417, 1
  %i.yq = zext nneg i8 %.3315 to i32
  %spec.select375 = add nsw i32 %.4349418, %i.yq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.r
  %.5365 = phi i32 [ %i.yo, %bb.ag ], [ %.4364416, %bb.r ] ; 2 uses
  %.5358 = phi i32 [ %i.yp, %bb.ag ], [ %.4357417, %bb.r ] ; 2 uses
  %.6351 = phi i32 [ %spec.select375, %bb.ag ], [ %.4349418, %bb.r ] ; 2 uses
  %.4316 = phi i8 [ 0, %bb.ag ], [ %.3315, %bb.r ]
  %.5311 = phi i32 [ 0, %bb.ag ], [ %.4310, %bb.r ]
  %exitcond469.not = icmp eq i64 %indvars.iv.next468, 8
  br i1 %exitcond469.not, label %.loopexit, label %bb.q, !llvm.loop !161

.loopexit:                                        ; preds = %bb.ah, %bb.o
  %.6366 = phi i32 [ %.3363425, %bb.o ], [ %.5365, %bb.ah ] ; 4 uses
  %.6359 = phi i32 [ %.3356426, %bb.o ], [ %.5358, %bb.ah ] ; 4 uses
  %.7352 = phi i32 [ %.3348427, %bb.o ], [ %.6351, %bb.ah ] ; 4 uses
  %.12 = phi float [ %.5338428, %bb.o ], [ %.11344, %bb.ah ] ; 4 uses
  %.9332 = phi float [ %.2325429, %bb.o ], [ %.8331, %bb.ah ] ; 4 uses
  %.11 = phi float [ %.3431, %bb.o ], [ %.10, %bb.ah ] ; 4 uses
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next471, 8
  br i1 %exitcond473.not, label %bb.n, label %bb.o, !llvm.loop !162

bb.ai:                                            ; preds = %._crit_edge
  %i.yr = load float, ptr %9, align 4, !tbaa !43
  %i.ys = fadd float %.3336.lcssa, %i.yr
  store float %i.ys, ptr %9, align 4, !tbaa !43
  %i.yt = load float, ptr %10, align 4, !tbaa !43
  %i.yu = fadd float %.0323.lcssa, %i.yt
  store float %i.yu, ptr %10, align 4, !tbaa !43
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0381.0452, i64 16 ; 2 uses
  %.not392 = icmp eq ptr %i.yv, %i.al
  br i1 %.not392, label %._crit_edge458, label %bb.g

bb.ak:                                            ; preds = %._crit_edge458
  %i.yw = sitofp i32 %.0345.lcssa to double
  %i.yx = sitofp i32 %.0353.lcssa to double
  %i.yy = fdiv double %i.yw, %i.yx
  %i.yz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bg, ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef 8, i32 noundef %.0353.lcssa, i32 noundef %.0345.lcssa, double noundef %i.yy) #13 ; 0 uses
  %i.za = load ptr, ptr @debug, align 8, !tbaa !106
  %i.zb = load i32, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.zc = mul nsw i32 %i.zb, %.0353.lcssa
  %i.zd = sdiv i32 %i.zc, 2
  %i.ze = mul nsw i32 %i.zd, %i.zb
  %i.zf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.za, ptr noundef nonnull @.str.3, i32 noundef %i.ze) #13 ; 0 uses
  %i.zg = load ptr, ptr @debug, align 8, !tbaa !106
  %i.zh = load i32, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.zi = mul nsw i32 %i.zh, %.0345.lcssa
  %i.zj = sdiv i32 %i.zi, 2
  %i.zk = mul nsw i32 %i.zj, %i.zh
  %i.zl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zg, ptr noundef nonnull @.str.4, i32 noundef %i.zk) #13 ; 0 uses
  %i.zm = load ptr, ptr @debug, align 8, !tbaa !106
  %i.zn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zm, ptr noundef nonnull @.str.5, i32 noundef %.0360.lcssa) #13 ; 0 uses
  %i.zo = load ptr, ptr @debug, align 8, !tbaa !106
  %i.zp = sitofp i32 %.0360.lcssa to double
  %i.zq = load i32, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.zr = sdiv i32 %i.zq, 2
  %i.zs = mul i32 %i.zq, %.0345.lcssa
  %i.zt = mul i32 %i.zs, %i.zr
  %i.zu = sitofp i32 %i.zt to double
  %i.zv = fdiv double %i.zp, %i.zu
  %i.zw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zo, ptr noundef nonnull @.str.6, double noundef %i.zv) #13 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA87_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(87) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(87) %1) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.b, ptr %i.a, align 8, !tbaa !166
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !168
  %i.f = load i64, ptr %i.a, align 8, !tbaa !166
  store i64 %i.f, ptr %i.c, align 8, !tbaa !170
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !170
  store i8 %i.h, ptr %i.g, align 1, !tbaa !170
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !166  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !171
  %i.k = load ptr, ptr %0, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !170
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !170
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @erff(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 64}
!10 = !{!"_ZTSN3gmx16NbnxnPairlistGpuE", !11, i64 0, !6, i64 64, !6, i64 68, !6, i64 72, !12, i64 76, !13, i64 80, !23, i64 112, !30, i64 144, !6, i64 176, !36, i64 184, !11, i64 192}
!11 = !{!"_ZTSN3gmx19gmx_cache_protect_tE", !7, i64 0}
end_hunk_1
