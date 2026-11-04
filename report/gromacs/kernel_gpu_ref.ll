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
  %11 = alloca [2 x ptr], align 16                ; 6 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq i32 %i.b, 8
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA87_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(87) @.str, i8 noundef zeroext 2)
  %i.c = load i32, ptr %i.a, align 8, !tbaa !55
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 82, ptr noundef nonnull @.str.1, i32 noundef %i.c, i32 noundef 8) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %6, 1
  br i1 %i.e, label %bb.f, label %.loopexit400

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i377 = load ptr, ptr %i.f, align 8 ; 2 uses
  %.not392401 = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i377
  br i1 %.not392401, label %.loopexit400, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.sroa.0.0.copyload.i377463 = ptrtoaddr ptr %.sroa.0.0.copyload.i377 to i64
  %.sroa.0.0.copyload.i464 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %i.g = add i64 %.sroa.0.0.copyload.i377463, -4
  %i.h = sub i64 %i.g, %.sroa.0.0.copyload.i464
  %i.i = and i64 %i.h, -4
  %i.j = add i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0.0.copyload.i, i8 0, i64 %i.j, i1 false), !tbaa !56
  br label %.loopexit400

.loopexit400:                                     ; preds = %.lr.ph.preheader, %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val = load i32, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %switch.tableidx = add i32 %.val, -3            ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 7175, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit, label %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i

_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i: ; preds = %.loopexit400
  %i.m = icmp eq i32 %.val, 6
  %i.n = icmp eq i32 %.val, 17
  %spec.select.i = or i1 %i.m, %i.n
  br label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit

_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit: ; preds = %.loopexit400, %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i
  %i.o = phi i1 [ %spec.select.i, %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i ], [ true, %.loopexit400 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.q = load float, ptr %i.p, align 8, !tbaa !82 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load float, ptr %i.s, align 8, !tbaa !83 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !84 ; 2 uses
  %i.x = fmul float %i.w, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91
  %i.ae = load i32, ptr %1, align 8, !tbaa !113   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91 ; 66 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !114 ; 2 uses
  %.not393452 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not393452, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.an = fneg float %i.ab                        ; 2 uses
  %i.ao = fpext float %i.an to double
  %i.ap = fmul double %i.ao, 5.000000e-01
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.au = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load i64, ptr %7, align 8
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !116, !range !117, !noundef !118
  %i.bd = trunc nuw i8 %i.bc to i1
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.g

._crit_edge459:                                   ; preds = %bb.aj, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit
  %.0360.lcssa = phi i32 [ 0, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ], [ %.1361.lcssa, %bb.aj ] ; 2 uses
  %.0353.lcssa = phi i32 [ 0, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ], [ %.1354.lcssa, %bb.aj ] ; 3 uses
  %.0345.lcssa = phi i32 [ 0, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ], [ %.1346.lcssa, %bb.aj ] ; 4 uses
  %i.be = load ptr, ptr @debug, align 8, !tbaa !120 ; 2 uses
  %.not369 = icmp eq ptr %i.be, null
  br i1 %.not369, label %bb.al, label %bb.ak

bb.g:                                             ; preds = %.lr.ph458, %bb.aj
  %.0293457 = phi float [ 0.000000e+00, %.lr.ph458 ], [ %.1294.lcssa, %bb.aj ] ; 2 uses
  %.0345456 = phi i32 [ 0, %.lr.ph458 ], [ %.1346.lcssa, %bb.aj ] ; 2 uses
  %.0353455 = phi i32 [ 0, %.lr.ph458 ], [ %.1354.lcssa, %bb.aj ] ; 2 uses
  %.0360454 = phi i32 [ 0, %.lr.ph458 ], [ %.1361.lcssa, %bb.aj ] ; 2 uses
  %.sroa.0382.0453 = phi ptr [ %i.ai, %.lr.ph458 ], [ %i.yn, %bb.aj ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !122 ; 3 uses
  %i.bh = mul nsw i32 %i.bg, 3
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !123 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !124 ; 2 uses
  %i.br = load i32, ptr %.sroa.0382.0453, align 4, !tbaa !125 ; 3 uses
  %i.bs = icmp ne i32 %i.bg, 22                   ; 2 uses
  br i1 %i.bs, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = sext i32 %i.bo to i64
  %i.bu = load ptr, ptr %i.al, align 8, !tbaa !126
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !127
  %i.bx = shl nsw i32 %i.br, 3
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %.preheader399, label %bb.k

.preheader399:                                    ; preds = %bb.h
  %i.bz = shl i32 %i.br, 6
  %i.ca = load i32, ptr %i.am, align 8, !tbaa !155
  %i.cb = sext i32 %i.ca to i64                   ; 64 uses
  %i.cc = sext i32 %i.bz to i64                   ; 64 uses
  %i.cd = mul nsw i64 %i.cb, %i.cc
  %i.ce = getelementptr [4 x i8], ptr %i.ag, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !56 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float 0.000000e+00)
  %i.ci = or disjoint i64 %i.cc, 1
  %i.cj = mul nsw i64 %i.ci, %i.cb
  %i.ck = getelementptr [4 x i8], ptr %i.ag, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !56 ; 2 uses
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.ch)
  %i.co = or disjoint i64 %i.cc, 2
  %i.cp = mul nsw i64 %i.co, %i.cb
  %i.cq = getelementptr [4 x i8], ptr %i.ag, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 12
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !56 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cn)
  %i.cu = or disjoint i64 %i.cc, 3
  %i.cv = mul nsw i64 %i.cu, %i.cb
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56 ; 2 uses
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.ct)
  %i.da = or disjoint i64 %i.cc, 4
  %i.db = mul nsw i64 %i.da, %i.cb
  %i.dc = getelementptr [4 x i8], ptr %i.ag, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !56 ; 2 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.cz)
  %i.dg = or disjoint i64 %i.cc, 5
  %i.dh = mul nsw i64 %i.dg, %i.cb
  %i.di = getelementptr [4 x i8], ptr %i.ag, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 12
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !56 ; 2 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.df)
  %i.dm = or disjoint i64 %i.cc, 6
  %i.dn = mul nsw i64 %i.dm, %i.cb
  %i.do = getelementptr [4 x i8], ptr %i.ag, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !56 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dl)
  %i.ds = or disjoint i64 %i.cc, 7
  %i.dt = mul nsw i64 %i.ds, %i.cb
  %i.du = getelementptr [4 x i8], ptr %i.ag, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !56 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dr)
  %i.dy = or disjoint i64 %i.cc, 8
  %i.dz = mul nsw i64 %i.dy, %i.cb
  %i.ea = getelementptr [4 x i8], ptr %i.ag, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !56 ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.dx)
  %i.ee = or disjoint i64 %i.cc, 9
  %i.ef = mul nsw i64 %i.ee, %i.cb
  %i.eg = getelementptr [4 x i8], ptr %i.ag, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 12
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !56 ; 2 uses
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.ed)
  %i.ek = or disjoint i64 %i.cc, 10
  %i.el = mul nsw i64 %i.ek, %i.cb
  %i.em = getelementptr [4 x i8], ptr %i.ag, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !56 ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.ej)
  %i.eq = or disjoint i64 %i.cc, 11
  %i.er = mul nsw i64 %i.eq, %i.cb
  %i.es = getelementptr [4 x i8], ptr %i.ag, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 12
  %i.eu = load float, ptr %i.et, align 4, !tbaa !56 ; 2 uses
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ep)
  %i.ew = or disjoint i64 %i.cc, 12
  %i.ex = mul nsw i64 %i.ew, %i.cb
  %i.ey = getelementptr [4 x i8], ptr %i.ag, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 12
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !56 ; 2 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.ev)
  %i.fc = or disjoint i64 %i.cc, 13
  %i.fd = mul nsw i64 %i.fc, %i.cb
  %i.fe = getelementptr [4 x i8], ptr %i.ag, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 12
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !56 ; 2 uses
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fb)
  %i.fi = or disjoint i64 %i.cc, 14
  %i.fj = mul nsw i64 %i.fi, %i.cb
  %i.fk = getelementptr [4 x i8], ptr %i.ag, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 12
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !56 ; 2 uses
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fh)
  %i.fo = or disjoint i64 %i.cc, 15
  %i.fp = mul nsw i64 %i.fo, %i.cb
  %i.fq = getelementptr [4 x i8], ptr %i.ag, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 12
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !56 ; 2 uses
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.fn)
  %i.fu = or disjoint i64 %i.cc, 16
  %i.fv = mul nsw i64 %i.fu, %i.cb
  %i.fw = getelementptr [4 x i8], ptr %i.ag, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 12
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !56 ; 2 uses
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.ft)
  %i.ga = or disjoint i64 %i.cc, 17
  %i.gb = mul nsw i64 %i.ga, %i.cb
  %i.gc = getelementptr [4 x i8], ptr %i.ag, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !56 ; 2 uses
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.ge, float %i.fz)
  %i.gg = or disjoint i64 %i.cc, 18
  %i.gh = mul nsw i64 %i.gg, %i.cb
  %i.gi = getelementptr [4 x i8], ptr %i.ag, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 12
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !56 ; 2 uses
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gf)
  %i.gm = or disjoint i64 %i.cc, 19
  %i.gn = mul nsw i64 %i.gm, %i.cb
  %i.go = getelementptr [4 x i8], ptr %i.ag, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !56 ; 2 uses
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float %i.gl)
  %i.gs = or disjoint i64 %i.cc, 20
  %i.gt = mul nsw i64 %i.gs, %i.cb
  %i.gu = getelementptr [4 x i8], ptr %i.ag, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 12
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !56 ; 2 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gr)
  %i.gy = or disjoint i64 %i.cc, 21
  %i.gz = mul nsw i64 %i.gy, %i.cb
  %i.ha = getelementptr [4 x i8], ptr %i.ag, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 12
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !56 ; 2 uses
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hc, float %i.gx)
  %i.he = or disjoint i64 %i.cc, 22
  %i.hf = mul nsw i64 %i.he, %i.cb
  %i.hg = getelementptr [4 x i8], ptr %i.ag, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !56 ; 2 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hi, float %i.hd)
  %i.hk = or disjoint i64 %i.cc, 23
  %i.hl = mul nsw i64 %i.hk, %i.cb
  %i.hm = getelementptr [4 x i8], ptr %i.ag, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 12
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !56 ; 2 uses
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %i.hj)
  %i.hq = or disjoint i64 %i.cc, 24
  %i.hr = mul nsw i64 %i.hq, %i.cb
  %i.hs = getelementptr [4 x i8], ptr %i.ag, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 12
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !56 ; 2 uses
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.hp)
  %i.hw = or disjoint i64 %i.cc, 25
  %i.hx = mul nsw i64 %i.hw, %i.cb
  %i.hy = getelementptr [4 x i8], ptr %i.ag, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 12
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !56 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx20nbnxn_kernel_gpu_refEPKNS_16NbnxnPairlistGpuEPKNS_16nbnxn_atomdata_tERK19interaction_const_tNS_8ArrayRefIKNS_11BasicVectorIfEEEERKNS_12StepWorkloadEiNS9_IfEEPfSI_SI_:bb.a
  %i.kg = getelementptr [4 x i8], ptr %i.ag, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 12
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !56 ; 2 uses
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.ki, float %i.kd)
  %i.kk = or disjoint i64 %i.cc, 36
  %i.kl = mul nsw i64 %i.kk, %i.cb
  %i.km = getelementptr [4 x i8], ptr %i.ag, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 12
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !56 ; 2 uses
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kj)
  %i.kq = or disjoint i64 %i.cc, 37
  %i.kr = mul nsw i64 %i.kq, %i.cb
  %i.ks = getelementptr [4 x i8], ptr %i.ag, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 12
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !56 ; 2 uses
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.ku, float %i.kp)
  %i.kw = or disjoint i64 %i.cc, 38
  %i.kx = mul nsw i64 %i.kw, %i.cb
  %i.ky = getelementptr [4 x i8], ptr %i.ag, i64 %i.kx
  %i.kz = getelementptr i8, ptr %i.ky, i64 12
  %i.la = load float, ptr %i.kz, align 4, !tbaa !56 ; 2 uses
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.la, float %i.la, float %i.kv)
  %i.lc = or disjoint i64 %i.cc, 39
  %i.ld = mul nsw i64 %i.lc, %i.cb
  %i.le = getelementptr [4 x i8], ptr %i.ag, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 12
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !56 ; 2 uses
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.lg, float %i.lb)
  %i.li = or disjoint i64 %i.cc, 40
  %i.lj = mul nsw i64 %i.li, %i.cb
  %i.lk = getelementptr [4 x i8], ptr %i.ag, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 12
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !56 ; 2 uses
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.lm, float %i.lm, float %i.lh)
  %i.lo = or disjoint i64 %i.cc, 41
  %i.lp = mul nsw i64 %i.lo, %i.cb
  %i.lq = getelementptr [4 x i8], ptr %i.ag, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 12
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !56 ; 2 uses
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.ln)
  %i.lu = or disjoint i64 %i.cc, 42
  %i.lv = mul nsw i64 %i.lu, %i.cb
  %i.lw = getelementptr [4 x i8], ptr %i.ag, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 12
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !56 ; 2 uses
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.ly, float %i.lt)
  %i.ma = or disjoint i64 %i.cc, 43
  %i.mb = mul nsw i64 %i.ma, %i.cb
  %i.mc = getelementptr [4 x i8], ptr %i.ag, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 12
  %i.me = load float, ptr %i.md, align 4, !tbaa !56 ; 2 uses
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.me, float %i.me, float %i.lz)
  %i.mg = or disjoint i64 %i.cc, 44
  %i.mh = mul nsw i64 %i.mg, %i.cb
  %i.mi = getelementptr [4 x i8], ptr %i.ag, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.mi, i64 12
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !56 ; 2 uses
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.mk, float %i.mf)
  %i.mm = or disjoint i64 %i.cc, 45
  %i.mn = mul nsw i64 %i.mm, %i.cb
  %i.mo = getelementptr [4 x i8], ptr %i.ag, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 12
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !56 ; 2 uses
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.ml)
  %i.ms = or disjoint i64 %i.cc, 46
  %i.mt = mul nsw i64 %i.ms, %i.cb
  %i.mu = getelementptr [4 x i8], ptr %i.ag, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 12
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !56 ; 2 uses
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mw, float %i.mw, float %i.mr)
  %i.my = or disjoint i64 %i.cc, 47
  %i.mz = mul nsw i64 %i.my, %i.cb
  %i.na = getelementptr [4 x i8], ptr %i.ag, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 12
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !56 ; 2 uses
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.nc, float %i.mx)
  %i.ne = or disjoint i64 %i.cc, 48
  %i.nf = mul nsw i64 %i.ne, %i.cb
  %i.ng = getelementptr [4 x i8], ptr %i.ag, i64 %i.nf
  %i.nh = getelementptr i8, ptr %i.ng, i64 12
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !56 ; 2 uses
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.ni, float %i.ni, float %i.nd)
  %i.nk = or disjoint i64 %i.cc, 49
  %i.nl = mul nsw i64 %i.nk, %i.cb
  %i.nm = getelementptr [4 x i8], ptr %i.ag, i64 %i.nl
  %i.nn = getelementptr i8, ptr %i.nm, i64 12
  %i.no = load float, ptr %i.nn, align 4, !tbaa !56 ; 2 uses
  %i.np = tail call float @llvm.fmuladd.f32(float %i.no, float %i.no, float %i.nj)
  %i.nq = or disjoint i64 %i.cc, 50
  %i.nr = mul nsw i64 %i.nq, %i.cb
  %i.ns = getelementptr [4 x i8], ptr %i.ag, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.ns, i64 12
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !56 ; 2 uses
  %i.nv = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.nu, float %i.np)
  %i.nw = or disjoint i64 %i.cc, 51
  %i.nx = mul nsw i64 %i.nw, %i.cb
  %i.ny = getelementptr [4 x i8], ptr %i.ag, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 12
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !56 ; 2 uses
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.oa, float %i.oa, float %i.nv)
  %i.oc = or disjoint i64 %i.cc, 52
  %i.od = mul nsw i64 %i.oc, %i.cb
  %i.oe = getelementptr [4 x i8], ptr %i.ag, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 12
  %i.og = load float, ptr %i.of, align 4, !tbaa !56 ; 2 uses
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.og, float %i.og, float %i.ob)
  %i.oi = or disjoint i64 %i.cc, 53
  %i.oj = mul nsw i64 %i.oi, %i.cb
  %i.ok = getelementptr [4 x i8], ptr %i.ag, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 12
  %i.om = load float, ptr %i.ol, align 4, !tbaa !56 ; 2 uses
  %i.on = tail call float @llvm.fmuladd.f32(float %i.om, float %i.om, float %i.oh)
  %i.oo = or disjoint i64 %i.cc, 54
  %i.op = mul nsw i64 %i.oo, %i.cb
  %i.oq = getelementptr [4 x i8], ptr %i.ag, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 12
  %i.os = load float, ptr %i.or, align 4, !tbaa !56 ; 2 uses
  %i.ot = tail call float @llvm.fmuladd.f32(float %i.os, float %i.os, float %i.on)
  %i.ou = or disjoint i64 %i.cc, 55
  %i.ov = mul nsw i64 %i.ou, %i.cb
  %i.ow = getelementptr [4 x i8], ptr %i.ag, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 12
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !56 ; 2 uses
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.oy, float %i.ot)
  %i.pa = or disjoint i64 %i.cc, 56
  %i.pb = mul nsw i64 %i.pa, %i.cb
  %i.pc = getelementptr [4 x i8], ptr %i.ag, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 12
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !56 ; 2 uses
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.pe, float %i.pe, float %i.oz)
  %i.pg = or disjoint i64 %i.cc, 57
  %i.ph = mul nsw i64 %i.pg, %i.cb
  %i.pi = getelementptr [4 x i8], ptr %i.ag, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 12
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !56 ; 2 uses
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.pk, float %i.pk, float %i.pf)
  %i.pm = or disjoint i64 %i.cc, 58
  %i.pn = mul nsw i64 %i.pm, %i.cb
  %i.po = getelementptr [4 x i8], ptr %i.ag, i64 %i.pn
  %i.pp = getelementptr i8, ptr %i.po, i64 12
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !56 ; 2 uses
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.pq, float %i.pl)
  %i.ps = or disjoint i64 %i.cc, 59
  %i.pt = mul nsw i64 %i.ps, %i.cb
  %i.pu = getelementptr [4 x i8], ptr %i.ag, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 12
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !56 ; 2 uses
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.pw, float %i.pr)
  %i.py = or disjoint i64 %i.cc, 60
  %i.pz = mul nsw i64 %i.py, %i.cb
  %i.qa = getelementptr [4 x i8], ptr %i.ag, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 12
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !56 ; 2 uses
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %i.px)
  %i.qe = or disjoint i64 %i.cc, 61
  %i.qf = mul nsw i64 %i.qe, %i.cb
  %i.qg = getelementptr [4 x i8], ptr %i.ag, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 12
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !56 ; 2 uses
  %i.qj = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.qi, float %i.qd)
  %i.qk = or disjoint i64 %i.cc, 62
  %i.ql = mul nsw i64 %i.qk, %i.cb
  %i.qm = getelementptr [4 x i8], ptr %i.ag, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 12
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !56 ; 2 uses
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.qo, float %i.qj)
  %i.qq = or disjoint i64 %i.cc, 63
  %i.qr = mul nsw i64 %i.qq, %i.cb
  %i.qs = getelementptr [4 x i8], ptr %i.ag, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !56 ; 2 uses
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.qu, float %i.qu, float %i.qp) ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader399
  %i.qw = load float, ptr %i.aq, align 4, !tbaa !156
  %i.qx = fpext float %i.qw to double
  %i.qy = fmul double %i.ap, %i.qx
  %i.qz = fpext float %i.qv to double
  %i.ra = fmul double %i.qy, %i.qz
  %i.rb = fptrunc double %i.ra to float
  br label %bb.k

bb.j:                                             ; preds = %.preheader399
  %i.rc = load float, ptr %i.ar, align 8, !tbaa !157
  %i.rd = fmul float %i.rc, %i.an
  %i.re = fpext float %i.rd to double
  %i.rf = fmul double %i.re, f0x3FE20DD750429B6A
  %i.rg = fpext float %i.qv to double
  %i.rh = fmul double %i.rf, %i.rg
  %i.ri = fptrunc double %i.rh to float
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g
  %.2335 = phi float [ %i.ri, %bb.j ], [ %i.rb, %bb.i ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.rj = icmp slt i32 %i.bo, %i.bq
  br i1 %i.rj, label %.preheader397.lr.ph, label %._crit_edge

.preheader397.lr.ph:                              ; preds = %bb.k
  %i.rk = load ptr, ptr %i.al, align 8, !tbaa !126
  %i.rl = load ptr, ptr %i.as, align 8, !tbaa !158 ; 2 uses
  %i.rm = shl nsw i32 %i.br, 3
  %i.rn = sext i32 %i.bh to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %8, i64 %i.rn ; 3 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 8      ; 2 uses
  %i.rq = sext i32 %i.rm to i64
  %i.rr = sext i32 %i.bo to i64
  %wide.trip.count = sext i32 %i.bq to i64
  br label %.preheader397

.preheader397:                                    ; preds = %.preheader397.lr.ph, %bb.l
  %indvars.iv479 = phi i64 [ %i.rr, %.preheader397.lr.ph ], [ %indvars.iv.next480, %bb.l ] ; 2 uses
  %.1294446 = phi float [ %.0293457, %.preheader397.lr.ph ], [ %.11, %bb.l ]
  %.0323444 = phi float [ 0.000000e+00, %.preheader397.lr.ph ], [ %.9332, %bb.l ]
  %.3336443 = phi float [ %.2335, %.preheader397.lr.ph ], [ %.12, %bb.l ]
  %.1346442 = phi i32 [ %.0345456, %.preheader397.lr.ph ], [ %.7352, %bb.l ]
  %.1354441 = phi i32 [ %.0353455, %.preheader397.lr.ph ], [ %.6359, %bb.l ]
  %.1361440 = phi i32 [ %.0360454, %.preheader397.lr.ph ], [ %.6366, %bb.l ]
  %i.rs = getelementptr inbounds nuw [32 x i8], ptr %i.rk, i64 %indvars.iv479 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 20
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !160
  %14 = sext i32 %i.ru to i64
  %15 = getelementptr inbounds nuw [128 x i8], ptr %i.rl, i64 %14
  store ptr %15, ptr %11, align 16, !tbaa !161
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 28
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !160
  %16 = sext i32 %i.rw to i64
  %17 = getelementptr inbounds nuw [128 x i8], ptr %i.rl, i64 %16
  store ptr %17, ptr %13, align 8, !tbaa !161
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !162
  br label %bb.m

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.1361.lcssa = phi i32 [ %.0360454, %bb.k ], [ %.6366, %bb.l ] ; 2 uses
  %.1354.lcssa = phi i32 [ %.0353455, %bb.k ], [ %.6359, %bb.l ] ; 2 uses
  %.1346.lcssa = phi i32 [ %.0345456, %bb.k ], [ %.7352, %bb.l ] ; 2 uses
  %.3336.lcssa = phi float [ %.2335, %bb.k ], [ %.12, %bb.l ]
  %.0323.lcssa = phi float [ 0.000000e+00, %bb.k ], [ %.9332, %bb.l ]
  %.1294.lcssa = phi float [ %.0293457, %bb.k ], [ %.11, %bb.l ]
  br i1 %i.bd, label %bb.ai, label %bb.aj

bb.l:                                             ; preds = %bb.n
  %indvars.iv.next480 = add nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next480, %wide.trip.count
  br i1 %exitcond482.not, label %._crit_edge, label %.preheader397, !llvm.loop !18

bb.m:                                             ; preds = %.preheader397, %bb.n
  %indvars.iv475 = phi i64 [ 0, %.preheader397 ], [ %indvars.iv.next476, %bb.n ] ; 3 uses
  %.2439 = phi float [ %.1294446, %.preheader397 ], [ %.11, %bb.n ]
  %.1324437 = phi float [ %.0323444, %.preheader397 ], [ %.9332, %bb.n ]
  %.4337436 = phi float [ %.3336443, %.preheader397 ], [ %.12, %bb.n ]
  %.2347435 = phi i32 [ %.1346442, %.preheader397 ], [ %.7352, %bb.n ]
  %.2355434 = phi i32 [ %.1354441, %.preheader397 ], [ %.6359, %bb.n ]
  %.2362433 = phi i32 [ %.1361440, %.preheader397 ], [ %.6366, %bb.n ]
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv475
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !127 ; 2 uses
  %i.sb = shl nuw nsw i64 %indvars.iv475, 3
  %i.sc = shl nsw i32 %i.sa, 3
  %i.sd = sext i32 %i.sc to i64
  %sext = sext i32 %i.sa to i64
  br label %bb.o

bb.n:                                             ; preds = %.loopexit
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond478.not = icmp eq i64 %indvars.iv.next476, 4
  br i1 %exitcond478.not, label %bb.l, label %bb.m, !llvm.loop !19

bb.o:                                             ; preds = %bb.m, %.loopexit
  %indvars.iv471 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next472, %.loopexit ] ; 3 uses
  %.3432 = phi float [ %.2439, %bb.m ], [ %.11, %.loopexit ] ; 2 uses
  %.2325430 = phi float [ %.1324437, %bb.m ], [ %.9332, %.loopexit ] ; 2 uses
  %.5338429 = phi float [ %.4337436, %bb.m ], [ %.12, %.loopexit ] ; 2 uses
  %.3348428 = phi i32 [ %.2347435, %bb.m ], [ %.7352, %.loopexit ] ; 2 uses
  %.3356427 = phi i32 [ %.2355434, %bb.m ], [ %.6359, %.loopexit ] ; 2 uses
  %.3363426 = phi i32 [ %.2362433, %bb.m ], [ %.6366, %.loopexit ] ; 2 uses
  %i.se = add nuw nsw i64 %indvars.iv471, %i.sb
  %i.sf = trunc nuw nsw i64 %i.se to i32          ; 2 uses
  %i.sg = shl nuw i32 1, %i.sf
  %i.sh = and i32 %i.ry, %i.sg
  %.not370 = icmp eq i32 %i.sh, 0
  br i1 %.not370, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.si = add nuw nsw i64 %indvars.iv471, %i.rq   ; 2 uses
  %i.sj = shl nsw i64 %i.si, 3
  %i.sk = load i32, ptr %i.am, align 8, !tbaa !155
  %i.sl = load i32, ptr %i.at, align 4, !tbaa !164
  %i.sm = icmp ne i64 %i.si, %sext
  %or.cond.not396 = select i1 %i.bs, i1 true, i1 %i.sm
  %i.sn = sext i32 %i.sk to i64                   ; 2 uses
  %i.so = sext i32 %i.sl to i64                   ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.ah
  %indvars.iv468 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next469, %bb.ah ] ; 3 uses
  %.4425 = phi float [ %.3432, %bb.p ], [ %.10, %bb.ah ]
  %.0306423 = phi i32 [ 0, %bb.p ], [ %.5311, %bb.ah ]
  %.0312422 = phi i8 [ 0, %bb.p ], [ %.4316, %bb.ah ]
  %.3326421 = phi float [ %.2325430, %bb.p ], [ %.8331, %bb.ah ]
  %.6339420 = phi float [ %.5338429, %bb.p ], [ %.11344, %bb.ah ]
  %.4349419 = phi i32 [ %.3348428, %bb.p ], [ %.6351, %bb.ah ] ; 2 uses
  %.4357418 = phi i32 [ %.3356427, %bb.p ], [ %.5358, %bb.ah ] ; 2 uses
  %.4364417 = phi i32 [ %.3363426, %bb.p ], [ %.5365, %bb.ah ] ; 2 uses
  %i.sp = add nuw nsw i64 %indvars.iv468, %i.sj   ; 4 uses
  %i.sq = mul nsw i64 %i.sp, %i.sn
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.sq ; 3 uses
  %i.ss = load <2 x float>, ptr %i.sr, align 4, !tbaa !56
  %i.st = fadd <2 x float> %i.bk, %i.ss
  %i.su = getelementptr i8, ptr %i.sr, i64 8
  %i.sv = load float, ptr %i.su, align 4, !tbaa !56
  %i.sw = fadd float %i.bm, %i.sv
  %i.sx = getelementptr i8, ptr %i.sr, i64 12
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !56
  %i.sz = fmul float %i.ab, %i.sy
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.sp ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !127
  %i.tc = mul i32 %i.tb, %i.ae
  %indvars.iv468.masked = and i64 %indvars.iv468, 4294967295
  br label %bb.s

bb.r:                                             ; preds = %bb.af
  %i.td = mul nsw i64 %i.sp, %i.so
  %i.te = getelementptr [4 x i8], ptr %i.bb, i64 %i.td ; 3 uses
  %i.tf = load <2 x float>, ptr %i.te, align 4, !tbaa !56
  %i.tg = fadd <2 x float> %i.yf, %i.tf
  store <2 x float> %i.tg, ptr %i.te, align 4, !tbaa !56
  %i.th = getelementptr i8, ptr %i.te, i64 8      ; 2 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !56
  %i.tj = fadd float %.2298, %i.ti
  store float %i.tj, ptr %i.th, align 4, !tbaa !56
  %i.tk = load <2 x float>, ptr %i.ro, align 4, !tbaa !56
  %i.tl = fadd <2 x float> %i.yf, %i.tk
  store <2 x float> %i.tl, ptr %i.ro, align 4, !tbaa !56
  %i.tm = load float, ptr %i.rp, align 4, !tbaa !56
  %i.tn = fadd float %.2298, %i.tm
  store float %i.tn, ptr %i.rp, align 4, !tbaa !56
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 3 uses
  %i.to = and i64 %indvars.iv.next469, 3
  %i.tp = icmp eq i64 %i.to, 0
  br i1 %i.tp, label %bb.ag, label %bb.ah

bb.s:                                             ; preds = %bb.q, %bb.af
  %indvars.iv = phi i64 [ 0, %bb.q ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.5416 = phi float [ %.4425, %bb.q ], [ %.10, %bb.af ] ; 4 uses
  %.0296414 = phi float [ 0.000000e+00, %bb.q ], [ %.2298, %bb.af ] ; 3 uses
  %.1307411 = phi i32 [ %.0306423, %bb.q ], [ %.4310, %bb.af ] ; 4 uses
  %.1313410 = phi i8 [ %.0312422, %bb.q ], [ %.3315, %bb.af ] ; 2 uses
  %.4327409 = phi float [ %.3326421, %bb.q ], [ %.8331, %bb.af ] ; 5 uses
  %.7340408 = phi float [ %.6339420, %bb.q ], [ %.11344, %bb.af ] ; 5 uses
  %i.tq = phi <2 x float> [ zeroinitializer, %bb.q ], [ %i.yf, %bb.af ] ; 3 uses
  %i.tr = add nuw nsw i64 %indvars.iv, %i.sd      ; 5 uses
  %.not371 = icmp sgt i64 %i.tr, %i.sp
  %or.cond374 = select i1 %or.cond.not396, i1 true, i1 %.not371
  br i1 %or.cond374, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %18 = lshr i64 %indvars.iv, 2
  %19 = and i64 %18, 1073741823
  %20 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !161
  %i.ts = shl i64 %indvars.iv, 3
  %i.tt = and i64 %i.ts, 24
  %i.tu = or i64 %i.tt, %indvars.iv468.masked
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !127
  %i.tx = lshr i32 %i.tw, %i.sf
  %i.ty = and i32 %i.tx, 1
  %i.tz = uitofp nneg i32 %i.ty to float          ; 7 uses
  %i.ua = mul nsw i64 %i.tr, %i.sn
  %i.ub = mul nsw i64 %i.tr, %i.so
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ua ; 3 uses
  %i.ud = getelementptr i8, ptr %i.uc, i64 8
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !56
  %i.uf = load <2 x float>, ptr %i.uc, align 4, !tbaa !56
  %i.ug = fsub <2 x float> %i.st, %i.uf           ; 4 uses
  %i.uh = fsub float %i.sw, %i.ue                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ug, %i.ug
  %i.ui = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.uj = extractelement <2 x float> %i.ug, i64 0 ; 2 uses
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.uj, float %i.uj, float %i.ui)
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.uh, float %i.uk) ; 4 uses
  %i.um = fcmp olt float %i.ul, %i.x
  %spec.select = select i1 %i.um, i8 1, i8 %.1313410 ; 2 uses
  %i.un = fcmp ult float %i.ul, %i.r
  br i1 %i.un, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.uo = load i32, ptr %i.ta, align 4, !tbaa !127
  %.not372 = icmp eq i32 %i.uo, %i.au
  br i1 %.not372, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.up = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.tr
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !127
  %.not373 = icmp ne i32 %i.uq, %i.au
  %i.ur = zext i1 %.not373 to i32
  %spec.select375 = add nsw i32 %.1307411, %i.ur
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2308 = phi i32 [ %.1307411, %bb.u ], [ %spec.select375, %bb.v ]
  %i.us = fcmp olt float %i.ul, 3.820000e-07
  %.sroa.speculated = select i1 %i.us, float 3.820000e-07, float %i.ul ; 4 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %.sroa.speculated)
  %i.ut = fdiv float 1.000000e+00, %sqrt          ; 7 uses
  %i.uu = fmul float %i.ut, %i.ut                 ; 6 uses
  %i.uv = getelementptr i8, ptr %i.uc, i64 12
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !56
  %i.ux = fmul float %i.sz, %i.uw                 ; 4 uses
  br i1 %i.o, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.uy = load float, ptr %i.av, align 8, !tbaa !165
  %i.uz = fmul float %.sroa.speculated, %i.uy     ; 2 uses
  %i.va = fmul float %i.uz, -2.000000e+00
  %i.vb = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.ut, float %i.va)
  %i.vc = fmul float %i.ux, %i.vb
  %i.vd = fmul float %i.uu, %i.vc                 ; 2 uses
  %i.ve = load i8, ptr %i.aw, align 1, !tbaa !116, !range !117, !noundef !118
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.ut, float %i.uz)
  %i.vh = load float, ptr %i.aq, align 4, !tbaa !156
  %i.vi = fsub float %i.vg, %i.vh
  %i.vj = fmul float %i.ux, %i.vi
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.vk = fmul float %.sroa.speculated, %i.ut     ; 2 uses
  %i.vl = load ptr, ptr %i.ax, align 8, !tbaa !166 ; 2 uses
  %i.vm = load float, ptr %i.vl, align 8, !tbaa !168
  %i.vn = fmul float %i.vk, %i.vm                 ; 2 uses
  %i.vo = fptosi float %i.vn to i32               ; 2 uses
  %i.vp = sitofp i32 %i.vo to float
  %i.vq = fsub float %i.vn, %i.vp                 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !169
  %i.vt = fsub float 1.000000e+00, %i.vq
  %i.vu = sext i32 %i.vo to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.vu ; 2 uses
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !56
  %i.vx = getelementptr i8, ptr %i.vv, i64 4
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !56
  %i.vz = fmul float %i.vy, %i.vq
  %i.wa = tail call float @llvm.fmuladd.f32(float %i.vt, float %i.vw, float %i.vz)
  %i.wb = fneg float %i.wa
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.uu, float %i.wb)
  %i.wd = fmul float %i.ux, %i.wc
  %i.we = fmul float %i.ut, %i.wd                 ; 2 uses
  %i.wf = load i8, ptr %i.aw, align 1, !tbaa !116, !range !117, !noundef !118
  %i.wg = trunc nuw i8 %i.wf to i1
  br i1 %i.wg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.wh = load float, ptr %i.ar, align 8, !tbaa !157
  %i.wi = fmul float %i.vk, %i.wh
  %i.wj = tail call noundef float @erff(float noundef %i.wi) #13
  %i.wk = fsub float %i.tz, %i.wj
  %i.wl = load float, ptr %i.ay, align 4, !tbaa !170
  %i.wm = fneg float %i.tz
  %i.wn = fmul float %i.wl, %i.wm
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.wk, float %i.ut, float %i.wn)
  %i.wp = fmul float %i.ux, %i.wo
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.y
  %i.wq = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ true, %bb.aa ], [ false, %bb.z ]
  %.8 = phi float [ %.5416, %bb.x ], [ %i.vj, %bb.y ], [ %i.wp, %bb.aa ], [ %.5416, %bb.z ] ; 2 uses
  %.0 = phi float [ %i.vd, %bb.x ], [ %i.vd, %bb.y ], [ %i.we, %bb.aa ], [ %i.we, %bb.z ] ; 2 uses
  %i.wr = fcmp olt float %.sroa.speculated, %i.u
  br i1 %i.wr, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.tr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !127
  %reass.add = add i32 %i.wt, %i.tc
  %reass.mul = shl i32 %reass.add, 1
  %i.wu = sext i32 %reass.mul to i64
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.wu ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 4
  %i.wx = fmul float %i.uu, %i.tz
  %i.wy = fmul float %i.uu, %i.wx
  %i.wz = fmul float %i.uu, %i.wy                 ; 2 uses
  %i.xa = load <2 x float>, ptr %i.wv, align 4, !tbaa !56 ; 2 uses
  %i.xb = load float, ptr %i.ww, align 4, !tbaa !56
  %i.xc = fmul float %i.wz, %i.xb
  %i.xd = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.xe = shufflevector <2 x float> %i.xd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xf = insertelement <2 x float> %i.xa, float %i.xc, i64 1
  %i.xg = fmul <2 x float> %i.xe, %i.xf           ; 3 uses
  %shift = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop492 = fsub <2 x float> %shift, %i.xg
  %i.xh = extractelement <2 x float> %foldExtExtBinop492, i64 0
  %i.xi = tail call float @llvm.fmuladd.f32(float %i.xh, float %i.uu, float %.0) ; 2 uses
  br i1 %i.wq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.xj = fadd float %.7340408, %.8
  %i.xk = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.xa, %i.xl
  %i.xn = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.az, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !56
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.xp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> %i.xo, <2 x float> %i.xg)
  %i.xq = fdiv <2 x float> %i.xp, <float 6.000000e+00, float 1.200000e+01> ; 2 uses
  %shift494 = shufflevector <2 x float> %i.xq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop495 = fsub <2 x float> %shift494, %i.xq
  %i.xr = extractelement <2 x float> %foldExtExtBinop495, i64 0
  %i.xs = fadd float %.4327409, %i.xr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.9342 = phi float [ %.7340408, %bb.ab ], [ %i.xj, %bb.ad ], [ %.7340408, %bb.ac ]
  %.6329 = phi float [ %.4327409, %bb.ab ], [ %i.xs, %bb.ad ], [ %.4327409, %bb.ac ]
  %.1 = phi float [ %.0, %bb.ab ], [ %i.xi, %bb.ad ], [ %i.xi, %bb.ac ] ; 2 uses
  %i.xt = insertelement <2 x float> poison, float %.1, i64 0
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xv = fmul <2 x float> %i.ug, %i.xu           ; 2 uses
  %i.xw = fmul float %i.uh, %.1                   ; 2 uses
  %i.xx = fadd <2 x float> %i.tq, %i.xv
  %i.xy = fadd float %.0296414, %i.xw
  %i.xz = getelementptr [4 x i8], ptr %i.bb, i64 %i.ub ; 3 uses
  %i.ya = load <2 x float>, ptr %i.xz, align 4, !tbaa !56
  %i.yb = fsub <2 x float> %i.ya, %i.xv
  store <2 x float> %i.yb, ptr %i.xz, align 4, !tbaa !56
  %i.yc = getelementptr i8, ptr %i.xz, i64 8      ; 2 uses
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !56
  %i.ye = fsub float %i.yd, %i.xw
  store float %i.ye, ptr %i.yc, align 4, !tbaa !56
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t, %bb.s
  %.11344 = phi float [ %.7340408, %bb.s ], [ %.9342, %bb.ae ], [ %.7340408, %bb.t ] ; 3 uses
  %.8331 = phi float [ %.4327409, %bb.s ], [ %.6329, %bb.ae ], [ %.4327409, %bb.t ] ; 3 uses
  %.3315 = phi i8 [ %.1313410, %bb.s ], [ %spec.select, %bb.ae ], [ %spec.select, %bb.t ] ; 3 uses
  %.4310 = phi i32 [ %.1307411, %bb.s ], [ %.2308, %bb.ae ], [ %.1307411, %bb.t ] ; 3 uses
  %.2298 = phi float [ %.0296414, %bb.s ], [ %i.xy, %bb.ae ], [ %.0296414, %bb.t ] ; 3 uses
  %.10 = phi float [ %.5416, %bb.s ], [ %.8, %bb.ae ], [ %.5416, %bb.t ] ; 3 uses
  %i.yf = phi <2 x float> [ %i.tq, %bb.s ], [ %i.xx, %bb.ae ], [ %i.tq, %bb.t ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.r, label %bb.s, !llvm.loop !20

bb.ag:                                            ; preds = %bb.r
  %i.yg = add nsw i32 %.4310, %.4364417
  %i.yh = add nsw i32 %.4357418, 1
  %i.yi = zext nneg i8 %.3315 to i32
  %spec.select376 = add nsw i32 %.4349419, %i.yi
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.r
  %.5365 = phi i32 [ %i.yg, %bb.ag ], [ %.4364417, %bb.r ] ; 2 uses
  %.5358 = phi i32 [ %i.yh, %bb.ag ], [ %.4357418, %bb.r ] ; 2 uses
  %.6351 = phi i32 [ %spec.select376, %bb.ag ], [ %.4349419, %bb.r ] ; 2 uses
  %.4316 = phi i8 [ 0, %bb.ag ], [ %.3315, %bb.r ]
  %.5311 = phi i32 [ 0, %bb.ag ], [ %.4310, %bb.r ]
  %exitcond470.not = icmp eq i64 %indvars.iv.next469, 8
  br i1 %exitcond470.not, label %.loopexit, label %bb.q, !llvm.loop !21

.loopexit:                                        ; preds = %bb.ah, %bb.o
  %.6366 = phi i32 [ %.3363426, %bb.o ], [ %.5365, %bb.ah ] ; 4 uses
  %.6359 = phi i32 [ %.3356427, %bb.o ], [ %.5358, %bb.ah ] ; 4 uses
  %.7352 = phi i32 [ %.3348428, %bb.o ], [ %.6351, %bb.ah ] ; 4 uses
  %.12 = phi float [ %.5338429, %bb.o ], [ %.11344, %bb.ah ] ; 4 uses
  %.9332 = phi float [ %.2325430, %bb.o ], [ %.8331, %bb.ah ] ; 4 uses
  %.11 = phi float [ %.3432, %bb.o ], [ %.10, %bb.ah ] ; 4 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond474.not = icmp eq i64 %indvars.iv.next472, 8
  br i1 %exitcond474.not, label %bb.n, label %bb.o, !llvm.loop !22

bb.ai:                                            ; preds = %._crit_edge
  %i.yj = load float, ptr %9, align 4, !tbaa !56
  %i.yk = fadd float %.3336.lcssa, %i.yj
  store float %i.yk, ptr %9, align 4, !tbaa !56
  %i.yl = load float, ptr %10, align 4, !tbaa !56
  %i.ym = fadd float %.0323.lcssa, %i.yl
  store float %i.ym, ptr %10, align 4, !tbaa !56
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 16 ; 2 uses
  %.not393 = icmp eq ptr %i.yn, %i.ak
  br i1 %.not393, label %._crit_edge459, label %bb.g

bb.ak:                                            ; preds = %._crit_edge459
  %i.yo = sitofp i32 %.0345.lcssa to double
  %i.yp = sitofp i32 %.0353.lcssa to double
  %i.yq = fdiv double %i.yo, %i.yp
  %i.yr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef 8, i32 noundef %.0353.lcssa, i32 noundef %.0345.lcssa, double noundef %i.yq) #13 ; 0 uses
  %i.ys = load ptr, ptr @debug, align 8, !tbaa !120
  %i.yt = load i32, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.yu = mul nsw i32 %i.yt, %.0353.lcssa
  %i.yv = sdiv i32 %i.yu, 2
  %i.yw = mul nsw i32 %i.yv, %i.yt
  %i.yx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ys, ptr noundef nonnull @.str.3, i32 noundef %i.yw) #13 ; 0 uses
  %i.yy = load ptr, ptr @debug, align 8, !tbaa !120
  %i.yz = load i32, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.za = mul nsw i32 %i.yz, %.0345.lcssa
  %i.zb = sdiv i32 %i.za, 2
  %i.zc = mul nsw i32 %i.zb, %i.yz
  %i.zd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yy, ptr noundef nonnull @.str.4, i32 noundef %i.zc) #13 ; 0 uses
  %i.ze = load ptr, ptr @debug, align 8, !tbaa !120
  %i.zf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ze, ptr noundef nonnull @.str.5, i32 noundef %.0360.lcssa) #13 ; 0 uses
  %i.zg = load ptr, ptr @debug, align 8, !tbaa !120
  %i.zh = sitofp i32 %.0360.lcssa to double
  %i.zi = load i32, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.zj = sdiv i32 %i.zi, 2
  %i.zk = mul i32 %i.zi, %.0345.lcssa
  %i.zl = mul i32 %i.zk, %i.zj
  %i.zm = sitofp i32 %i.zl to double
  %i.zn = fdiv double %i.zh, %i.zm
  %i.zo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zg, ptr noundef nonnull @.str.6, double noundef %i.zn) #13 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge459
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
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
  store ptr %i.c, ptr %0, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.b, ptr %i.a, align 8, !tbaa !172
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !172
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
  %i.i = load i64, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !173
  %i.k = load ptr, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !15
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !15
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !163}
!19 = distinct !{!19, !163}
!20 = distinct !{!20, !163}
!21 = distinct !{!21, !163}
!22 = distinct !{!22, !163}
!23 = !{!"_ZTSN3gmx19gmx_cache_protect_tE", !5, i64 0}
!24 = !{!"float", !5, i64 0}
!25 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !25, i64 0, !26, i64 4}
!28 = !{!"_ZTSN3gmx9AllocatorINS_11nbnxn_sci_tENS_20HostAllocationPolicyEEE", !27, i64 0}
!29 = !{!"p1 _ZTSN3gmx11nbnxn_sci_tE", !9, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !28, i64 0, !30, i64 8}
!32 = !{!"_ZTSSt12_Vector_baseIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE", !32, i64 0}
!34 = !{!"_ZTSN3gmx9AllocatorINS_17nbnxn_cj_packed_tENS_20HostAllocationPolicyEEE", !27, i64 0}
!35 = !{!"p1 _ZTSN3gmx17nbnxn_cj_packed_tE", !9, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !34, i64 0, !36, i64 8}
!38 = !{!"_ZTSSt12_Vector_baseIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE", !38, i64 0}
!40 = !{!"_ZTSN3gmx18PackedJClusterListE", !39, i64 0}
!41 = !{!"_ZTSN3gmx9AllocatorINS_12nbnxn_excl_tENS_20HostAllocationPolicyEEE", !27, i64 0}
!42 = !{!"p1 _ZTSN3gmx12nbnxn_excl_tE", !9, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !41, i64 0, !43, i64 8}
!45 = !{!"_ZTSSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE", !45, i64 0}
!47 = !{!"p1 _ZTSN3gmx20NbnxmPairlistGpuWorkE", !9, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx20NbnxmPairlistGpuWorkELb0EE", !47, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx20NbnxmPairlistGpuWorkESt14default_deleteIS1_EEE", !48, i64 0}
!50 = !{!"_ZTSSt5tupleIJPN3gmx20NbnxmPairlistGpuWorkESt14default_deleteIS1_EEE", !49, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx20NbnxmPairlistGpuWorkESt14default_deleteIS1_EE", !50, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx20NbnxmPairlistGpuWorkESt14default_deleteIS1_ELb1ELb1EE", !51, i64 0}
!53 = !{!"_ZTSSt10unique_ptrIN3gmx20NbnxmPairlistGpuWorkESt14default_deleteIS1_EE", !52, i64 0}
!54 = !{!"_ZTSN3gmx16NbnxnPairlistGpuE", !23, i64 0, !6, i64 64, !6, i64 68, !6, i64 72, !24, i64 76, !33, i64 80, !40, i64 112, !46, i64 144, !6, i64 176, !53, i64 184, !23, i64 192}
!55 = !{!54, !6, i64 64}
!56 = !{!24, !24, i64 0}
!57 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!60 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!61 = !{!"double", !5, i64 0}
!62 = !{!"_ZTS14shift_consts_t", !24, i64 0, !24, i64 4, !24, i64 8}
!63 = !{!"_ZTS15switch_consts_t", !24, i64 0, !24, i64 4, !24, i64 8}
!64 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!65 = !{!"_ZTSN19interaction_const_t19VanDerWaalsSettingsE", !59, i64 0, !60, i64 4, !61, i64 8, !24, i64 16, !24, i64 20, !62, i64 24, !62, i64 36, !63, i64 48, !24, i64 60, !64, i64 64, !24, i64 68}
!66 = !{!"_ZTSN19interaction_const_t15CoulombSettingsE", !57, i64 0, !60, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36}
!67 = !{!"p1 _ZTS21EwaldCorrectionTables", !9, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP21EwaldCorrectionTablesLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI21EwaldCorrectionTablesSt14default_deleteIS0_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !72, i64 0}
!74 = !{!"p1 _ZTSN19interaction_const_t18SoftCoreParametersE", !9, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm0EPN19interaction_const_t18SoftCoreParametersELb0EE", !74, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !75, i64 0}
!77 = !{!"_ZTSSt5tupleIJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_implIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_ELb1ELb1EE", !78, i64 0}
!80 = !{!"_ZTSSt10unique_ptrIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTS19interaction_const_t", !65, i64 0, !66, i64 72, !73, i64 112, !73, i64 120, !80, i64 128, !26, i64 136}
!82 = !{!81, !24, i64 80}
!83 = !{!81, !24, i64 16}
!84 = !{!54, !24, i64 76}
!85 = !{!"p1 int", !9, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!81, !24, i64 100}
!89 = !{!"p1 float", !9, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!90, !89, i64 0}
!92 = !{!"_ZTSN3gmx9AllocatorIfNS_20HostAllocationPolicyEEE", !27, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_Vector_implE", !92, i64 0, !90, i64 8}
!94 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !94, i64 0}
!96 = !{!"_ZTSN3gmx17LJCombinationRuleE", !5, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !99, i64 0}
!101 = !{!"_ZTSN3gmx9AllocatorIiNS_20HostAllocationPolicyEEE", !27, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_Vector_implE", !101, i64 0, !86, i64 8}
!103 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !103, i64 0}
!105 = !{!"p1 _ZTSN3gmx22EnergyGroupsPerClusterE", !9, i64 0}
!106 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22EnergyGroupsPerClusterELb0EE", !105, i64 0}
!107 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !106, i64 0}
!108 = !{!"_ZTSSt5tupleIJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_ELb1ELb1EE", !109, i64 0}
!111 = !{!"_ZTSSt10unique_ptrIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !110, i64 0}
!112 = !{!"_ZTSN3gmx16nbnxn_atomdata_t6ParamsE", !6, i64 0, !95, i64 8, !96, i64 40, !95, i64 48, !100, i64 80, !104, i64 104, !95, i64 136, !95, i64 168, !104, i64 200, !95, i64 232, !95, i64 264, !104, i64 296, !95, i64 328, !95, i64 360, !6, i64 392, !111, i64 400}
!113 = !{!112, !6, i64 0}
!114 = !{!29, !29, i64 0}
!115 = !{!"_ZTSN3gmx12StepWorkloadE", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !26, i64 4, !26, i64 5, !26, i64 6, !26, i64 7, !26, i64 8, !26, i64 9, !26, i64 10, !26, i64 11, !26, i64 12, !26, i64 13, !26, i64 14, !26, i64 15, !26, i64 16, !26, i64 17, !26, i64 18}
!116 = !{!115, !26, i64 4}
!117 = !{i8 0, i8 2}
!118 = !{}
!119 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"_ZTSN3gmx11nbnxn_sci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!122 = !{!121, !6, i64 4}
!123 = !{!121, !6, i64 8}
!124 = !{!121, !6, i64 12}
!125 = !{!121, !6, i64 0}
!126 = !{!36, !35, i64 0}
!127 = !{!6, !6, i64 0}
!128 = !{!"_ZTSN3gmx9AllocatorINS_11BasicVectorIfEENS_20HostAllocationPolicyEEE", !27, i64 0}
!129 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !128, i64 0, !130, i64 8}
!132 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !131, i64 0}
!133 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !132, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE", !136, i64 0}
!138 = !{!"p1 long", !9, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !139, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE", !141, i64 0}
!143 = !{!"_ZTSN3gmx16nbnxn_atomdata_t9SimdMasksE", !100, i64 0, !100, i64 24, !137, i64 48, !142, i64 72}
!144 = !{!"p1 _ZTSN3gmx23nbnxn_atomdata_output_tE", !9, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIN3gmx23nbnxn_atomdata_output_tESaIS1_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseIN3gmx23nbnxn_atomdata_output_tESaIS1_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIN3gmx23nbnxn_atomdata_output_tESaIS1_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorIN3gmx23nbnxn_atomdata_output_tESaIS1_EE", !147, i64 0}
!149 = !{!"p1 _ZTSSt5arrayImLm2EE", !9, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseISt5arrayImLm2EESaIS1_EE17_Vector_impl_dataE", !149, i64 0, !149, i64 8, !149, i64 16}
!151 = !{!"_ZTSNSt12_Vector_baseISt5arrayImLm2EESaIS1_EE12_Vector_implE", !150, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseISt5arrayImLm2EESaIS1_EE", !151, i64 0}
!153 = !{!"_ZTSSt6vectorISt5arrayImLm2EESaIS1_EE", !152, i64 0}
!154 = !{!"_ZTSN3gmx16nbnxn_atomdata_tE", !112, i64 0, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !26, i64 424, !133, i64 432, !6, i64 464, !6, i64 468, !95, i64 472, !143, i64 504, !148, i64 600, !26, i64 624, !153, i64 632}
!155 = !{!154, !6, i64 464}
!156 = !{!81, !24, i64 108}
!157 = !{!81, !24, i64 88}
!158 = !{!43, !42, i64 0}
!159 = !{!"_ZTSN3gmx13nbnxn_im_ei_tE", !6, i64 0, !6, i64 4}
!160 = !{!159, !6, i64 4}
!161 = !{!42, !42, i64 0}
!162 = !{!159, !6, i64 0}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !{!154, !6, i64 468}
!165 = !{!81, !24, i64 104}
!166 = !{!67, !67, i64 0}
!167 = !{!"_ZTS21EwaldCorrectionTables", !24, i64 0, !100, i64 8, !100, i64 32, !100, i64 56}
!168 = !{!167, !24, i64 0}
!169 = !{!97, !89, i64 0}
!170 = !{!81, !24, i64 92}
!171 = !{!11, !10, i64 0}
!172 = !{!12, !12, i64 0}
!173 = !{!13, !12, i64 8}
end_hunk_1
