Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/position_restraints?download=true
inline.NumInlined: 219
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ArrayRef.3" = type { %"struct.gmx::ArrayRefIter.4", %"struct.gmx::ArrayRefIter.4" }
%"struct.gmx::ArrayRefIter.4" = type { ptr }
%"class.gmx::ArrayRef.6" = type { %"struct.gmx::ArrayRefIter.7", %"struct.gmx::ArrayRefIter.7" }
%"struct.gmx::ArrayRefIter.7" = type { ptr }
%"class.gmx::ArrayRef.9" = type { %"struct.gmx::ArrayRefIter.10", %"struct.gmx::ArrayRefIter.10" }
%"struct.gmx::ArrayRefIter.10" = type { ptr }
%"class.gmx::ArrayRef.12" = type { %"struct.gmx::ArrayRefIter.13", %"struct.gmx::ArrayRefIter.13" }
%"struct.gmx::ArrayRefIter.13" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.167" }
%"class.std::unique_ptr.167" = type { %"struct.std::__uniq_ptr_data.168" }
%"struct.std::__uniq_ptr_data.168" = type { %"class.std::__uniq_ptr_impl.169" }
%"class.std::__uniq_ptr_impl.169" = type { %"class.std::tuple.170" }
%"class.std::tuple.170" = type { %"struct.std::_Tuple_impl.171" }
%"struct.std::_Tuple_impl.171" = type { %"struct.std::_Head_base.174" }
%"struct.std::_Head_base.174" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IA82_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [82 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/listed_forces/position_restraints.cpp\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No such scaling method implemented\00", align 1

; Function Attrs: mustprogress uwtable
define noundef float @_Z14posres_wrapperN3gmx8ArrayRefIKiEENS0_IK9t_iparamsEERK5t_pbcPA3_KfNS0_IS9_EEPK10t_forcerecNS0_IKtEENS0_INS_11BasicVectorIfEEEESK_NS0_IA4_fEEPSJ_Pf(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef nonnull align 4 dereferenceable(384) %4, ptr noundef %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.9") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.9") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.12") align 8 captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = load ptr, ptr %11, align 8, !tbaa !9
  %i.j = load i64, ptr %6, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !13 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  %.sroa.021.0.copyload = load ptr, ptr %8, align 8 ; 2 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8
  %i.v = load ptr, ptr %9, align 8, !tbaa !135    ; 2 uses
  %i.w = load ptr, ptr %10, align 8, !tbaa !135   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.x = load i32, ptr %4, align 4, !tbaa !137
  %i.y = tail call noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef %i.x) ; 3 uses
  %i.z = icmp eq i32 %i.o, 2
  br i1 %i.z, label %.preheader5.i, label %.loopexit6.i

.preheader5.i:                                    ; preds = %bb.a
  %i.aa = ptrtoint ptr %i.s to i64
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = sdiv exact i64 %i.ac, 12
  %i.ae = icmp sgt i64 %i.ac, 0
  br i1 %i.ae, label %.preheader.lr.ph.i, label %.loopexit6.i

.preheader.lr.ph.i:                               ; preds = %.preheader5.i
  %i.af = icmp sgt i32 %i.y, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.af, label %.preheader.preheader.i, label %.loopexit6.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count20.i = zext nneg i32 %i.y to i64 ; 4 uses
  %i.ah = add nsw i64 %wide.trip.count20.i, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.0879.i = phi i64 [ %i.am, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %.0879.i
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %.0879.i
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %.0879.i ; 3 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.0879.i ; 3 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %.unr-lcssa
  %i.am = add nuw nsw i64 %.0879.i, 1             ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.am, %i.ad
  br i1 %exitcond22.not.i, label %.loopexit6.i, label %.preheader.i, !llvm.loop !139

bb.b:                                             ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.unr-lcssa ] ; 11 uses
  %i.an = sub nsw i64 %wide.trip.count20.i, %indvars.iv.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i ; 7 uses
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i ; 7 uses
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !13
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !13
  %gep.i.prol = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.as = load float, ptr %gep.i.prol, align 4, !tbaa !13
  %i.at = load float, ptr %i.ao, align 4, !tbaa !13
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.at)
  store float %i.au, ptr %i.ao, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !13
  %i.ax = load float, ptr %gep.i.prol, align 4, !tbaa !13
  %i.ay = load float, ptr %i.ap, align 4, !tbaa !13
  %i.az = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ax, float %i.ay)
  store float %i.az, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next17.i.prol = add nuw nsw i64 %indvars.iv.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.b
  %indvars.iv16.i.unr = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next17.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ba = icmp eq i64 %indvars.iv.i, %i.ah
  br i1 %i.ba, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !141

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i.1, %.new ], [ %indvars.iv16.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv16.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %gep.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv16.i ; 2 uses
  %i.bd = load float, ptr %gep.i, align 4, !tbaa !13
  %i.be = load float, ptr %i.ao, align 4, !tbaa !13
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.be)
  store float %i.bf, ptr %i.ao, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv16.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.bi = load float, ptr %gep.i, align 4, !tbaa !13
  %i.bj = load float, ptr %i.ap, align 4, !tbaa !13
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bj)
  store float %i.bk, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next17.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !13
  %gep.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next17.i ; 2 uses
  %i.bn = load float, ptr %gep.i.1, align 4, !tbaa !13
  %i.bo = load float, ptr %i.ao, align 4, !tbaa !13
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.bo)
  store float %i.bp, ptr %i.ao, align 4, !tbaa !13
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next17.i
  %i.br = load float, ptr %i.bq, align 4, !tbaa !13
  %i.bs = load float, ptr %gep.i.1, align 4, !tbaa !13
  %i.bt = load float, ptr %i.ap, align 4, !tbaa !13
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bs, float %i.bt)
  store float %i.bu, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next17.i.1 = add nuw nsw i64 %indvars.iv16.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next17.i.1, %wide.trip.count20.i
  br i1 %exitcond.not.i.1, label %.unr-lcssa, label %.new, !llvm.loop !142

.loopexit6.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %.preheader5.i, %bb.a
  %i.bv = fsub float 1.000000e+00, %i.m           ; 3 uses
  %i.bw = icmp sgt i32 %i.h, 0
  br i1 %i.bw, label %.lr.ph.i, label %_ZN12_GLOBAL__N_16posresILb1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit

.lr.ph.i:                                         ; preds = %.loopexit6.i
  %i.bx = icmp eq ptr %.sroa.021.0.copyload, %.sroa.222.0.copyload
  %sext.i = and i64 %i.g, 2147483647
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next28.i, %.loopexit.i ] ; 2 uses
  %.08412.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.gl, %.loopexit.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !143
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !143
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ck ; 8 uses
  %.pre.i = sext i32 %i.cj to i64                 ; 3 uses
  br i1 %i.bx, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds [2 x i8], ptr %.sroa.021.0.copyload, i64 %.pre.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !144
  %i.co = zext i16 %i.cn to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  %i.cp = phi i64 [ %i.co, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.cq = getelementptr inbounds [12 x i8], ptr %5, i64 %.pre.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.cp
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.cp
  call fastcc void @_ZN12_GLOBAL__N_19posres_dxEPKfS1_S1_RKN3gmx11BasicVectorIfEES6_fRK5t_pbc15RefCoordScalingiPfSB_SB_(ptr noundef %i.cq, ptr noundef readonly %i.cl, ptr noundef nonnull readonly %i.cr, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, float noundef %i.m, ptr noundef nonnull align 4 dereferenceable(384) %4, i32 noundef %i.o, i32 noundef %i.y, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.i, i64 %.pre.i ; 4 uses
  %i.cx = load float, ptr %i.cu, align 4, !tbaa !146 ; 2 uses
  %i.cy = load float, ptr %i.cv, align 4, !tbaa !146 ; 2 uses
  %i.cz = fmul float %i.m, %i.cy
  %i.da = call float @llvm.fmuladd.f32(float %i.bv, float %i.cx, float %i.cz) ; 2 uses
  %i.db = fneg float %i.da
  %i.dc = load float, ptr %i.c, align 4, !tbaa !13 ; 3 uses
  %i.dd = fmul float %i.dc, %i.db                 ; 3 uses
  %i.de = fpext float %i.da to double
  %i.df = fmul double %i.de, 5.000000e-01
  %i.dg = fpext float %i.dc to double             ; 4 uses
  %i.dh = fmul double %i.df, %i.dg
  %i.di = fpext float %.08412.i to double
  %i.dj = call double @llvm.fmuladd.f64(double %i.dh, double %i.dg, double %i.di)
  %i.dk = fptrunc double %i.dj to float
  %i.dl = fsub float %i.cy, %i.cx
  %i.dm = fpext float %i.dl to double
  %i.dn = fmul double %i.dm, 5.000000e-01
  %i.do = fmul double %i.dn, %i.dg
  %i.dp = load float, ptr %i.b, align 4, !tbaa !13
  %i.dq = fmul float %i.dp, %i.dd
  %i.dr = fpext float %i.dq to double
  %i.ds = call double @llvm.fmuladd.f64(double %i.do, double %i.dg, double %i.dr)
  %i.dt = load float, ptr %13, align 4, !tbaa !13
  %i.du = fpext float %i.dt to double
  %i.dv = fadd double %i.ds, %i.du
  %i.dw = fptrunc double %i.dv to float
  store float %i.dw, ptr %13, align 4, !tbaa !13
  %i.dx = load float, ptr %i.cw, align 4, !tbaa !13
  %i.dy = fadd float %i.dd, %i.dx
  store float %i.dy, ptr %i.cw, align 4, !tbaa !13
  %i.dz = load float, ptr %i.a, align 4, !tbaa !13
  %i.ea = fadd float %i.dc, %i.dz
  %i.eb = fpext float %i.ea to double
  %i.ec = fpext float %i.dd to double
  %i.ed = load float, ptr %12, align 4, !tbaa !13
  %i.ee = fpext float %i.ed to double
  %i.ef = fmul double %i.eb, -5.000000e-01
  %i.eg = call double @llvm.fmuladd.f64(double %i.ef, double %i.ec, double %i.ee)
  %i.eh = fptrunc double %i.eg to float
  store float %i.eh, ptr %12, align 4, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !146 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.el = load float, ptr %i.ek, align 4, !tbaa !146 ; 2 uses
  %i.em = fmul float %i.m, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.bv, float %i.ej, float %i.em) ; 2 uses
  %i.eo = fneg float %i.en
  %i.ep = load float, ptr %i.by, align 4, !tbaa !13 ; 3 uses
  %i.eq = fmul float %i.ep, %i.eo                 ; 3 uses
  %i.er = fpext float %i.en to double
  %i.es = fmul double %i.er, 5.000000e-01
  %i.et = fpext float %i.ep to double             ; 4 uses
  %i.eu = fmul double %i.es, %i.et
  %i.ev = fpext float %i.dk to double
  %i.ew = call double @llvm.fmuladd.f64(double %i.eu, double %i.et, double %i.ev)
  %i.ex = fptrunc double %i.ew to float
  %i.ey = fsub float %i.el, %i.ej
  %i.ez = fpext float %i.ey to double
  %i.fa = fmul double %i.ez, 5.000000e-01
  %i.fb = fmul double %i.fa, %i.et
  %i.fc = load float, ptr %i.bz, align 4, !tbaa !13
  %i.fd = fmul float %i.fc, %i.eq
  %i.fe = fpext float %i.fd to double
  %i.ff = call double @llvm.fmuladd.f64(double %i.fb, double %i.et, double %i.fe)
  %i.fg = load float, ptr %13, align 4, !tbaa !13
  %i.fh = fpext float %i.fg to double
  %i.fi = fadd double %i.ff, %i.fh
  %i.fj = fptrunc double %i.fi to float
  store float %i.fj, ptr %13, align 4, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !13
  %i.fm = fadd float %i.eq, %i.fl
  store float %i.fm, ptr %i.fk, align 4, !tbaa !13
  %i.fn = load float, ptr %i.ca, align 4, !tbaa !13
  %i.fo = fadd float %i.ep, %i.fn
  %i.fp = fpext float %i.fo to double
  %i.fq = fpext float %i.eq to double
  %i.fr = load float, ptr %i.cb, align 4, !tbaa !13
  %i.fs = fpext float %i.fr to double
  %i.ft = fmul double %i.fp, -5.000000e-01
  %i.fu = call double @llvm.fmuladd.f64(double %i.ft, double %i.fq, double %i.fs)
  %i.fv = fptrunc double %i.fu to float
  store float %i.fv, ptr %i.cb, align 4, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !146 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !146 ; 2 uses
  %i.ga = fmul float %i.m, %i.fz
  %i.gb = call float @llvm.fmuladd.f32(float %i.bv, float %i.fx, float %i.ga) ; 2 uses
  %i.gc = fneg float %i.gb
  %i.gd = load float, ptr %i.cc, align 4, !tbaa !13 ; 3 uses
  %i.ge = fmul float %i.gd, %i.gc                 ; 3 uses
  %i.gf = fpext float %i.gb to double
  %i.gg = fmul double %i.gf, 5.000000e-01
  %i.gh = fpext float %i.gd to double             ; 4 uses
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = fpext float %i.ex to double
  %i.gk = call double @llvm.fmuladd.f64(double %i.gi, double %i.gh, double %i.gj)
  %i.gl = fptrunc double %i.gk to float           ; 2 uses
  %i.gm = fsub float %i.fz, %i.fx
  %i.gn = fpext float %i.gm to double
  %i.go = fmul double %i.gn, 5.000000e-01
  %i.gp = fmul double %i.go, %i.gh
  %i.gq = load float, ptr %i.cd, align 4, !tbaa !13
  %i.gr = fmul float %i.gq, %i.ge
  %i.gs = fpext float %i.gr to double
  %i.gt = call double @llvm.fmuladd.f64(double %i.gp, double %i.gh, double %i.gs)
  %i.gu = load float, ptr %13, align 4, !tbaa !13
  %i.gv = fpext float %i.gu to double
  %i.gw = fadd double %i.gt, %i.gv
  %i.gx = fptrunc double %i.gw to float
  store float %i.gx, ptr %13, align 4, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !13
  %i.ha = fadd float %i.ge, %i.gz
  store float %i.ha, ptr %i.gy, align 4, !tbaa !13
  %i.hb = load float, ptr %i.ce, align 4, !tbaa !13
  %i.hc = fadd float %i.gd, %i.hb
  %i.hd = fpext float %i.hc to double
  %i.he = fpext float %i.ge to double
  %i.hf = load float, ptr %i.cf, align 4, !tbaa !13
  %i.hg = fpext float %i.hf to double
  %i.hh = fmul double %i.hd, -5.000000e-01
  %i.hi = call double @llvm.fmuladd.f64(double %i.hh, double %i.he, double %i.hg)
  %i.hj = fptrunc double %i.hi to float
  store float %i.hj, ptr %i.cf, align 4, !tbaa !13
  %14 = icmp samesign ult i64 %indvars.iv.next28.i, %sext.i
  br i1 %14, label %bb.c, label %_ZN12_GLOBAL__N_16posresILb1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit, !llvm.loop !147

_ZN12_GLOBAL__N_16posresILb1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit: ; preds = %.loopexit.i, %.loopexit6.i
  %.084.lcssa.i = phi float [ 0.000000e+00, %.loopexit6.i ], [ %i.gl, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret float %.084.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19posres_dxEPKfS1_S1_RKN3gmx11BasicVectorIfEES6_fRK5t_pbc15RefCoordScalingiPfSB_SB_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(384) %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull %9, ptr nofree noundef nonnull captures(none) %10, ptr nofree noundef nonnull writeonly captures(none) %11) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 9 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = fsub float 1.000000e+00, %5              ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load float, ptr %1, align 4, !tbaa !13   ; 7 uses
  %i.e = load float, ptr %2, align 4, !tbaa !13   ; 7 uses
  %i.f = icmp sgt i32 %8, 0
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  switch i32 %7, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = fmul float %5, %i.e
  %i.h = tail call float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.g)
  store float %i.h, ptr %10, align 4, !tbaa !13
  %i.i = fsub float %i.e, %i.d
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.j = load float, ptr %i.c, align 4, !tbaa !13 ; 2 uses
  %i.k = fmul float %i.d, %i.j                    ; 2 uses
  %i.l = fmul float %i.e, %i.j                    ; 2 uses
  %.not = icmp eq i32 %8, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.not112 = icmp eq i32 %8, 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %gep = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.o = load float, ptr %gep, align 4, !tbaa !13 ; 2 uses
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.o, float %i.k) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !13
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.o, float %i.l) ; 2 uses
  br i1 %.not112, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %gep.1126 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.v = load float, ptr %gep.1126, align 4, !tbaa !13 ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.v, float %i.p)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !13
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.v, float %i.s)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %bb.d
  %.096.lcssa = phi float [ %i.k, %bb.d ], [ %i.p, %.lr.ph ], [ %i.w, %.lr.ph.1 ] ; 2 uses
  %.095.lcssa = phi float [ %i.l, %bb.d ], [ %i.s, %.lr.ph ], [ %i.z, %.lr.ph.1 ] ; 2 uses
  %i.aa = fmul float %5, %.095.lcssa
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.b, float %.096.lcssa, float %i.aa)
  store float 0.000000e+00, ptr %10, align 4, !tbaa !13
  %i.ac = fsub float %.095.lcssa, %.096.lcssa
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ad = load float, ptr %3, align 4, !tbaa !13
  %i.ae = load float, ptr %4, align 4, !tbaa !13
  %i.af = fmul float %5, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ad, float %i.af)
  %i.ah = fmul float %5, %i.e
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.ah)
  store float %i.ai, ptr %10, align 4, !tbaa !13
  %i.aj = load float, ptr %4, align 4, !tbaa !13
  %i.ak = load float, ptr %3, align 4, !tbaa !13
  %i.al = fsub float %i.aj, %i.ak
  %i.am = fadd float %i.e, %i.al
  %i.an = fsub float %i.am, %i.d
  br label %bb.i

default.unreachable:                              ; preds = %bb.j
  unreachable

default.unreachable117:                           ; preds = %bb.p
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @_ZNSt10filesystem7__cxx114pathC2IA82_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(82) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 130, ptr noundef nonnull @.str.1) #10
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %i.ao

.thread:                                          ; preds = %bb.a
  %i.ap = fmul float %5, %i.e
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.ap)
  store float 0.000000e+00, ptr %10, align 4, !tbaa !13
  %i.ar = fsub float %i.e, %i.d
  store float %i.ar, ptr %11, align 4, !tbaa !13
  %i.as = load float, ptr %10, align 4, !tbaa !13
  %i.at = fadd float %i.aq, %i.as
  store float %i.at, ptr %i.a, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !13
  br label %.thread115

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.e
  %.sink = phi float [ %i.i, %bb.c ], [ %i.ac, %._crit_edge ], [ %i.an, %bb.e ]
  %.094 = phi float [ 0.000000e+00, %bb.c ], [ %i.ab, %._crit_edge ], [ %i.ag, %bb.e ]
  store float %.sink, ptr %11, align 4, !tbaa !13
  %i.ay = load float, ptr %10, align 4, !tbaa !13
  %i.az = fadd float %.094, %i.ay
  store float %i.az, ptr %i.a, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !13 ; 6 uses
  %.not123 = icmp eq i32 %8, 1
  br i1 %.not123, label %.thread115, label %bb.j

.thread115:                                       ; preds = %bb.i, %.thread
  %i.be = phi float [ %i.ax, %.thread ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bf = phi float [ %i.av, %.thread ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bg = fmul float %5, %i.be
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.b, float %i.bf, float %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !13
  %i.bj = fsub float %i.be, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.bj, ptr %i.bk, align 4, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !13
  %i.bn = fadd float %i.bh, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !13
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  switch i32 %7, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.l
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !13
  %i.bx = fmul float %5, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.b, float %i.bu, float %i.bx)
  %i.bz = fmul float %5, %i.bd
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.b, float %i.bb, float %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.ca, ptr %i.cb, align 4, !tbaa !13
  %i.cc = load float, ptr %i.bv, align 4, !tbaa !13
  %i.cd = load float, ptr %i.bt, align 4, !tbaa !13
  %i.ce = fsub float %i.cc, %i.cd
  %i.cf = fadd float %i.bd, %i.ce
  %i.cg = fsub float %i.cf, %i.bb
end_hunk_0
begin_hunk_1_@_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA82_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(82) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %1) #9 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.b, ptr %i.a, align 8, !tbaa !151
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !153
  %i.f = load i64, ptr %i.a, align 8, !tbaa !151
  store i64 %i.f, ptr %i.c, align 8, !tbaa !146
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !146
  store i8 %i.h, ptr %i.g, align 1, !tbaa !146
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !155
  %i.k = load ptr, ptr %0, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !156  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #9
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !146
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #9
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !146
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_Z21posres_wrapper_lambdaP13gmx_wallcycleRK22InteractionDefinitionsRK5t_pbcPA3_KfP14gmx_enerdata_tN3gmx8ArrayRefIS7_EEPK10t_forcerecNSD_IKtEENSD_INSC_11BasicVectorIfEEEESM_(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2760) %1, ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.9") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.9") align 8 captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 3 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 624 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !158
  %.not37 = icmp slt i32 %i.e, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 632
  %i.g = load i64, ptr %5, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.033.0.copyload = load ptr, ptr %7, align 8 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.234.0.copyload = load ptr, ptr %.sroa.234.0..sroa_idx, align 8
  %i.q = load ptr, ptr %8, align 8, !tbaa !135    ; 2 uses
  %i.r = load ptr, ptr %9, align 8, !tbaa !135    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp eq ptr %.sroa.033.0.copyload, %.sroa.234.0.copyload
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 640
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 664
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit ] ; 6 uses
  %i.aa = icmp eq i64 %indvars.iv, 0
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load float, ptr %i.i, align 4, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !172
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !173
  %i.ai = fptrunc double %i.ah to float
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = phi float [ %i.ab, %bb.c ], [ %i.ai, %bb.d ] ; 5 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !175
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !176 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.as = load i32, ptr %i.m, align 8, !tbaa !15  ; 2 uses
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !133 ; 2 uses
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.aw = load i32, ptr %2, align 4, !tbaa !137
  %i.ax = call noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef %i.aw) ; 3 uses
  %i.ay = icmp eq i32 %i.as, 2
  br i1 %i.ay, label %.preheader5.i, label %.loopexit6.i

.preheader5.i:                                    ; preds = %bb.e
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = sdiv exact i64 %i.bb, 12
  %i.bd = icmp sgt i64 %i.bb, 0
  %i.be = icmp sgt i32 %i.ax, 0
  %or.cond = and i1 %i.bd, %i.be
  br i1 %or.cond, label %.preheader.preheader.i, label %.loopexit6.i

.preheader.preheader.i:                           ; preds = %.preheader5.i
  %wide.trip.count20.i = zext nneg i32 %i.ax to i64 ; 4 uses
  %i.bf = add nsw i64 %wide.trip.count20.i, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.0789.i = phi i64 [ %i.bk, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %.0789.i
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %.0789.i
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %.0789.i ; 3 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %.0789.i ; 3 uses
  br label %bb.f

._crit_edge.i:                                    ; preds = %.unr-lcssa
  %i.bk = add nuw nsw i64 %.0789.i, 1             ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.bk, %i.bc
  br i1 %exitcond22.not.i, label %.loopexit6.i, label %.preheader.i, !llvm.loop !180

bb.f:                                             ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.unr-lcssa ] ; 11 uses
  %i.bl = sub nsw i64 %wide.trip.count20.i, %indvars.iv.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i ; 7 uses
  store float 0.000000e+00, ptr %i.bm, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i ; 7 uses
  store float 0.000000e+00, ptr %i.bn, align 4, !tbaa !13
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i ; 3 uses
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13
  %gep.i.prol = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bq = load float, ptr %gep.i.prol, align 4, !tbaa !13
  %i.br = load float, ptr %i.bm, align 4, !tbaa !13
  %i.bs = call float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %i.br)
  store float %i.bs, ptr %i.bm, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !13
  %i.bv = load float, ptr %gep.i.prol, align 4, !tbaa !13
  %i.bw = load float, ptr %i.bn, align 4, !tbaa !13
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float %i.bw)
  store float %i.bx, ptr %i.bn, align 4, !tbaa !13
  %indvars.iv.next17.i.prol = add nuw nsw i64 %indvars.iv.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.f
  %indvars.iv16.i.unr = phi i64 [ %indvars.iv.i, %bb.f ], [ %indvars.iv.next17.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.by = icmp eq i64 %indvars.iv.i, %i.bf
  br i1 %i.by, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !181

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i.1, %.new ], [ %indvars.iv16.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv16.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13
  %gep.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv16.i ; 2 uses
  %i.cb = load float, ptr %gep.i, align 4, !tbaa !13
  %i.cc = load float, ptr %i.bm, align 4, !tbaa !13
  %i.cd = call float @llvm.fmuladd.f32(float %i.ca, float %i.cb, float %i.cc)
  store float %i.cd, ptr %i.bm, align 4, !tbaa !13
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv16.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !13
  %i.cg = load float, ptr %gep.i, align 4, !tbaa !13
  %i.ch = load float, ptr %i.bn, align 4, !tbaa !13
  %i.ci = call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.ch)
  store float %i.ci, ptr %i.bn, align 4, !tbaa !13
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next17.i
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !13
  %gep.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next17.i ; 2 uses
  %i.cl = load float, ptr %gep.i.1, align 4, !tbaa !13
  %i.cm = load float, ptr %i.bm, align 4, !tbaa !13
  %i.cn = call float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.cm)
  store float %i.cn, ptr %i.bm, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next17.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !13
  %i.cq = load float, ptr %gep.i.1, align 4, !tbaa !13
  %i.cr = load float, ptr %i.bn, align 4, !tbaa !13
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.cr)
  store float %i.cs, ptr %i.bn, align 4, !tbaa !13
  %indvars.iv.next17.i.1 = add nuw nsw i64 %indvars.iv16.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next17.i.1, %wide.trip.count20.i
  br i1 %exitcond.not.i.1, label %.unr-lcssa, label %.new, !llvm.loop !182

.loopexit6.i:                                     ; preds = %._crit_edge.i, %.preheader5.i, %bb.e
  %i.ct = fsub float 1.000000e+00, %i.aj          ; 3 uses
  %i.cu = icmp sgt i32 %i.aq, 0
  br i1 %i.cu, label %.lr.ph.i, label %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit

.lr.ph.i:                                         ; preds = %.loopexit6.i
  %sext.i = and i64 %i.ap, 2147483647
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.loopexit.i, %.lr.ph.i
  %.035 = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.gl, %.loopexit.i ]
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next28.i, %.loopexit.i ] ; 2 uses
  %.07512.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ga, %.loopexit.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv27.i ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !143
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !143
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr inbounds [48 x i8], ptr %i.ar, i64 %i.cz ; 8 uses
  %.pre.i = sext i32 %i.cy to i64                 ; 2 uses
  br i1 %i.t, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.a
  %i.db = getelementptr inbounds [2 x i8], ptr %.sroa.033.0.copyload, i64 %.pre.i
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !144
  %i.dd = zext i16 %i.dc to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph.i.a
  %i.de = phi i64 [ %i.dd, %bb.g ], [ 0, %.lr.ph.i.a ] ; 2 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %3, i64 %.pre.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %i.de
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.de
  call fastcc void @_ZN12_GLOBAL__N_19posres_dxEPKfS1_S1_RKN3gmx11BasicVectorIfEES6_fRK5t_pbc15RefCoordScalingiPfSB_SB_(ptr noundef %i.df, ptr noundef readonly %i.da, ptr noundef nonnull readonly %i.dg, ptr noundef nonnull align 4 dereferenceable(12) %i.dh, ptr noundef nonnull align 4 dereferenceable(12) %i.di, float noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(384) %2, i32 noundef %i.as, i32 noundef %i.ax, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %i.dl = load float, ptr %i.dj, align 4, !tbaa !146 ; 2 uses
  %i.dm = load float, ptr %i.dk, align 4, !tbaa !146 ; 2 uses
  %i.dn = fmul float %i.aj, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.ct, float %i.dl, float %i.dn) ; 2 uses
  %i.dp = fneg float %i.do
  %i.dq = load float, ptr %i.c, align 4, !tbaa !13 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dp
  %i.ds = fpext float %i.do to double
  %i.dt = fmul double %i.ds, 5.000000e-01
  %i.du = fpext float %i.dq to double             ; 4 uses
  %i.dv = fmul double %i.dt, %i.du
  %i.dw = fpext float %.07512.i to double
  %i.dx = call double @llvm.fmuladd.f64(double %i.dv, double %i.du, double %i.dw)
  %i.dy = fptrunc double %i.dx to float
  %i.dz = fsub float %i.dm, %i.dl
  %i.ea = fpext float %i.dz to double
  %i.eb = fmul double %i.ea, 5.000000e-01
  %i.ec = fmul double %i.eb, %i.du
  %i.ed = load float, ptr %i.b, align 4, !tbaa !13
  %i.ee = fmul float %i.ed, %i.dr
  %i.ef = fpext float %i.ee to double
  %i.eg = call double @llvm.fmuladd.f64(double %i.ec, double %i.du, double %i.ef)
  %i.eh = fpext float %.035 to double
  %i.ei = fadd double %i.eg, %i.eh
  %i.ej = fptrunc double %i.ei to float
  %i.ek = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.el = load float, ptr %i.ek, align 4, !tbaa !146 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.en = load float, ptr %i.em, align 4, !tbaa !146 ; 2 uses
  %i.eo = fmul float %i.aj, %i.en
  %i.ep = call float @llvm.fmuladd.f32(float %i.ct, float %i.el, float %i.eo) ; 2 uses
  %i.eq = fneg float %i.ep
  %i.er = load float, ptr %i.u, align 4, !tbaa !13 ; 2 uses
  %i.es = fmul float %i.er, %i.eq
  %i.et = fpext float %i.ep to double
  %i.eu = fmul double %i.et, 5.000000e-01
  %i.ev = fpext float %i.er to double             ; 4 uses
  %i.ew = fmul double %i.eu, %i.ev
  %i.ex = fpext float %i.dy to double
  %i.ey = call double @llvm.fmuladd.f64(double %i.ew, double %i.ev, double %i.ex)
  %i.ez = fptrunc double %i.ey to float
  %i.fa = fsub float %i.en, %i.el
  %i.fb = fpext float %i.fa to double
  %i.fc = fmul double %i.fb, 5.000000e-01
  %i.fd = fmul double %i.fc, %i.ev
  %i.fe = load float, ptr %i.v, align 4, !tbaa !13
  %i.ff = fmul float %i.fe, %i.es
  %i.fg = fpext float %i.ff to double
  %i.fh = call double @llvm.fmuladd.f64(double %i.fd, double %i.ev, double %i.fg)
  %i.fi = fpext float %i.ej to double
  %i.fj = fadd double %i.fh, %i.fi
  %i.fk = fptrunc double %i.fj to float
  %i.fl = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !146 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !146 ; 2 uses
  %i.fp = fmul float %i.aj, %i.fo
  %i.fq = call float @llvm.fmuladd.f32(float %i.ct, float %i.fm, float %i.fp) ; 2 uses
  %i.fr = fneg float %i.fq
  %i.fs = load float, ptr %i.w, align 4, !tbaa !13 ; 2 uses
  %i.ft = fmul float %i.fs, %i.fr
  %i.fu = fpext float %i.fq to double
  %i.fv = fmul double %i.fu, 5.000000e-01
  %i.fw = fpext float %i.fs to double             ; 4 uses
  %i.fx = fmul double %i.fv, %i.fw
  %i.fy = fpext float %i.ez to double
  %i.fz = call double @llvm.fmuladd.f64(double %i.fx, double %i.fw, double %i.fy)
  %i.ga = fptrunc double %i.fz to float           ; 2 uses
  %i.gb = fsub float %i.fo, %i.fm
  %i.gc = fpext float %i.gb to double
  %i.gd = fmul double %i.gc, 5.000000e-01
  %i.ge = fmul double %i.gd, %i.fw
  %i.gf = load float, ptr %i.x, align 4, !tbaa !13
  %i.gg = fmul float %i.gf, %i.ft
  %i.gh = fpext float %i.gg to double
  %i.gi = call double @llvm.fmuladd.f64(double %i.ge, double %i.fw, double %i.gh)
  %i.gj = fpext float %i.fk to double
  %i.gk = fadd double %i.gi, %i.gj
  %i.gl = fptrunc double %i.gk to float           ; 2 uses
  %10 = icmp samesign ult i64 %indvars.iv.next28.i, %sext.i
  br i1 %10, label %.lr.ph.i.a, label %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit.loopexit, !llvm.loop !183

_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit.loopexit: ; preds = %.loopexit.i
  %i.gm = fpext float %i.ga to double
  %i.gn = fpext float %i.gl to double
  br label %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit

_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit: ; preds = %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit.loopexit, %.loopexit6.i
  %.1 = phi double [ 0.000000e+00, %.loopexit6.i ], [ %i.gn, %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit.loopexit ]
  %.075.lcssa.i = phi double [ 0.000000e+00, %.loopexit6.i ], [ %i.gm, %_ZN12_GLOBAL__N_16posresILb0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbcfPf15RefCoordScalingNSB_8ArrayRefIKSD_EESM_NSK_IKtEENSK_ISD_EESP_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !172
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !173
  %i.gr = fadd double %i.gq, %.075.lcssa.i
  store double %i.gr, ptr %i.gp, align 8, !tbaa !173
  %i.gs = load ptr, ptr %i.z, align 8, !tbaa !184
  %i.gt = getelementptr inbounds nuw [56 x i8], ptr %i.gs, i64 %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40 ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !173
  %i.gw = fadd double %i.gv, %.1
  store double %i.gw, ptr %i.gu, align 8, !tbaa !173
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.gx = load i32, ptr %i.d, align 8, !tbaa !158
  %i.gy = sext i32 %i.gx to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gy
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !185
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z16fbposres_wrapperN3gmx8ArrayRefIKiEENS0_IK9t_iparamsEERK5t_pbcPA3_KfPK10t_forcerecNS0_IKtEENS0_INS_11BasicVectorIfEEEENS0_IA4_fEEPSI_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef nonnull align 4 dereferenceable(384) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.9") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.12") align 8 captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 10 uses
  %i.c = alloca [3 x float], align 4              ; 3 uses
  %i.d = alloca [3 x float], align 8              ; 11 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = load ptr, ptr %9, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134
  %.sroa.014.0.copyload = load ptr, ptr %7, align 8 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.215.0.copyload = load ptr, ptr %.sroa.215.0..sroa_idx, align 8
  %i.s = load ptr, ptr %8, align 8, !tbaa !135    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.t = tail call noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef %i.n) ; 3 uses
  %i.u = icmp eq i32 %i.l, 2
  br i1 %i.u, label %.preheader4.i, label %.loopexit5.i

.preheader4.i:                                    ; preds = %bb.a
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = sdiv exact i64 %i.x, 12
  %i.z = icmp sgt i64 %i.x, 0
  br i1 %i.z, label %.preheader.lr.ph.i, label %.loopexit5.i

.preheader.lr.ph.i:                               ; preds = %.preheader4.i
  %i.aa = icmp sgt i32 %i.t, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.aa, label %.preheader.preheader.i, label %.loopexit5.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count18.i = zext nneg i32 %i.t to i64 ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01348.i = phi i64 [ %i.ae, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %.01348.i
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %.01348.i ; 5 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %.unr-lcssa
  %i.ae = add nuw nsw i64 %.01348.i, 1            ; 2 uses
  %exitcond20.not.i = icmp eq i64 %i.ae, %i.y
  br i1 %exitcond20.not.i, label %.loopexit5.i, label %.preheader.i, !llvm.loop !187

bb.b:                                             ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.unr-lcssa ] ; 7 uses
  %i.af = sub nsw i64 %wide.trip.count18.i, %indvars.iv.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i ; 6 uses
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !13
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i ; 5 uses
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %indvars.iv14.i.prol = phi i64 [ %indvars.iv.next15.i.prol, %.prol.preheader ], [ %indvars.iv.i, %bb.b ] ; 3 uses
  %i.ah = phi float [ %i.al, %.prol.preheader ], [ 0.000000e+00, %bb.b ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv14.i.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13
  %gep.i.prol = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv14.i.prol
  %i.ak = load float, ptr %gep.i.prol, align 4, !tbaa !13
  %i.al = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ak, float %i.ah) ; 3 uses
  store float %i.al, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next15.i.prol = add nuw nsw i64 %indvars.iv14.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !188

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %indvars.iv14.i.unr = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next15.i.prol, %.prol.preheader ]
  %.unr = phi float [ 0.000000e+00, %bb.b ], [ %i.al, %.prol.preheader ]
  %i.am = sub nsw i64 %indvars.iv.i, %wide.trip.count18.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count18.i
  br i1 %exitcond19.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !190

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i.3, %.new ], [ %indvars.iv14.i.unr, %.prol.loopexit ] ; 6 uses
  %i.ao = phi float [ %i.be, %.new ], [ %.unr, %.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv14.i
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !13
  %gep.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv14.i
  %i.ar = load float, ptr %gep.i, align 4, !tbaa !13
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ar, float %i.ao) ; 2 uses
  store float %i.as, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next15.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !13
  %gep.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next15.i
  %i.av = load float, ptr %gep.i.1, align 4, !tbaa !13
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.au, float %i.av, float %i.as) ; 2 uses
  store float %i.aw, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next15.i.1 = add nuw nsw i64 %indvars.iv14.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next15.i.1
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !13
  %gep.i.2 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next15.i.1
  %i.az = load float, ptr %gep.i.2, align 4, !tbaa !13
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.az, float %i.aw) ; 2 uses
  store float %i.ba, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next15.i.2 = add nuw nsw i64 %indvars.iv14.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next15.i.2
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %gep.i.3 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next15.i.2
  %i.bd = load float, ptr %gep.i.3, align 4, !tbaa !13
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.ba) ; 2 uses
  store float %i.be, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next15.i.3 = add nuw nsw i64 %indvars.iv14.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next15.i.3, %wide.trip.count18.i
  br i1 %exitcond.not.i.3, label %.unr-lcssa, label %.new, !llvm.loop !191

.loopexit5.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %.preheader4.i, %bb.a
  %i.bf = icmp sgt i32 %i.i, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZN12_GLOBAL__N_18fbposresEiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbc15RefCoordScaling7PbcTypeNSA_8ArrayRefIKSC_EENSJ_IKtEENSJ_ISC_EE.exit

.lr.ph.i:                                         ; preds = %.loopexit5.i
  %i.bg = icmp eq ptr %.sroa.014.0.copyload, %.sroa.215.0.copyload
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %sext.i = and i64 %i.h, 2147483647
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i, %.lr.ph.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next26.i, %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i ] ; 2 uses
  %.013110.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.iu, %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv25.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !143
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !143
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [48 x i8], ptr %2, i64 %i.bt ; 5 uses
  %.pre.i = sext i32 %i.bs to i64                 ; 3 uses
  br i1 %i.bg, label %._crit_edge28.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds [2 x i8], ptr %.sroa.014.0.copyload, i64 %.pre.i
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !144
  %i.bx = zext i16 %i.bw to i64
  br label %._crit_edge28.i

._crit_edge28.i:                                  ; preds = %bb.d, %bb.c
  %i.by = phi i64 [ %i.bx, %bb.d ], [ 0, %bb.c ]
  %i.bz = getelementptr inbounds [12 x i8], ptr %5, i64 %.pre.i
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.by ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_19posres_dxEPKfS1_S1_RKN3gmx11BasicVectorIfEES6_fRK5t_pbc15RefCoordScalingiPfSB_SB_(ptr noundef %i.bz, ptr noundef readonly %i.bu, ptr noundef readonly %i.bu, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(384) %4, i32 noundef %i.l, i32 noundef %i.t, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %i.c)
  store <2 x float> zeroinitializer, ptr %i.d, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bi, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !146 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !146 ; 5 uses
  %i.cf = fmul float %i.ce, %i.ce                 ; 2 uses
  %i.cg = fcmp olt float %i.ce, 0.000000e+00      ; 9 uses
  %i.ch = fneg float %i.ce
  %.0136.i = select i1 %i.cg, float %i.ch, float %i.ce ; 15 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !146 ; 2 uses
  switch i32 %i.cj, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i [
    i32 1, label %bb.e
    i32 6, label %bb.h
    i32 7, label %bb.k
    i32 2, label %bb.n
    i32 8, label %bb.n
    i32 3, label %bb.q
    i32 4, label %bb.q
    i32 5, label %bb.q
  ]

bb.e:                                             ; preds = %._crit_edge28.i
  %i.ck = load <2 x float>, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ck, %i.ck
  %i.cl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cm = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cl)
  %i.co = load float, ptr %i.bk, align 8, !tbaa !13 ; 3 uses
  %i.cp = call noundef float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cn) ; 4 uses
  %i.cq = fcmp ogt float %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.f, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cr = fcmp ogt float %i.cp, %i.cf
  %i.cs = fcmp olt float %i.cp, %i.cf
  %or.cond140.i = select i1 %i.cg, i1 %i.cs, i1 %i.cr
  br i1 %or.cond140.i, label %bb.g, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.g:                                             ; preds = %bb.f
  %sqrt.i = call float @llvm.sqrt.f32(float %i.cp) ; 2 uses
  %i.ct = fpext float %i.cc to double
  %i.cu = fmul double %i.ct, 5.000000e-01
  %i.cv = fsub float %sqrt.i, %.0136.i            ; 3 uses
  %i.cw = fmul float %i.cv, %i.cv
  %i.cx = fpext float %i.cw to double
  %i.cy = fmul double %i.cu, %i.cx
  %i.cz = fptrunc double %i.cy to float
  %i.da = fneg float %i.cc
  %i.db = fmul float %i.cv, %i.da
  %i.dc = fdiv float %i.db, %sqrt.i               ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %i.ck, %i.de
  store <2 x float> %i.df, ptr %i.d, align 8, !tbaa !13
  %i.dg = fmul float %i.co, %i.dc
  store float %i.dg, ptr %i.bi, align 8, !tbaa !13
  br label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.h:                                             ; preds = %._crit_edge28.i
  %i.dh = load float, ptr %i.bj, align 4, !tbaa !13 ; 3 uses
  %i.di = fmul float %i.dh, %i.dh
  %i.dj = load float, ptr %i.bk, align 8, !tbaa !13 ; 3 uses
  %i.dk = fmul float %i.dj, %i.dj
  %i.dl = fadd float %i.di, %i.dk                 ; 4 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.i, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dn = fmul float %.0136.i, %.0136.i           ; 2 uses
  %i.do = fcmp ogt float %i.dl, %i.dn
  %i.dp = fcmp olt float %i.dl, %i.dn
  %or.cond39.i.i = select i1 %i.cg, i1 %i.dp, i1 %i.do
  br i1 %or.cond39.i.i, label %bb.j, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.j:                                             ; preds = %bb.i
  %sqrt1.i = call float @llvm.sqrt.f32(float %i.dl) ; 2 uses
  %i.dq = fdiv float 1.000000e+00, %sqrt1.i       ; 2 uses
  %i.dr = fsub float %sqrt1.i, %.0136.i           ; 3 uses
  %i.ds = fneg float %i.cc
  %i.dt = fmul float %i.dr, %i.ds                 ; 2 uses
  %i.du = fmul float %i.dh, %i.dt
  %i.dv = fmul float %i.dq, %i.du
  store float %i.dv, ptr %i.bh, align 4, !tbaa !13
  %i.dw = fmul float %i.dj, %i.dt
  %i.dx = fmul float %i.dq, %i.dw
  store float %i.dx, ptr %i.bi, align 8, !tbaa !13
  %i.dy = fpext float %i.cc to double
  %i.dz = fmul double %i.dy, 5.000000e-01
  %i.ea = fmul float %i.dr, %i.dr
  %i.eb = fpext float %i.ea to double
  %i.ec = fmul double %i.dz, %i.eb
  %i.ed = fptrunc double %i.ec to float
  br label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.k:                                             ; preds = %._crit_edge28.i
  %i.ee = load float, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %i.ef = fmul float %i.ee, %i.ee
  %i.eg = load float, ptr %i.bk, align 8, !tbaa !13 ; 3 uses
  %i.eh = fmul float %i.eg, %i.eg
  %i.ei = fadd float %i.ef, %i.eh                 ; 4 uses
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.l, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ek = fmul float %.0136.i, %.0136.i           ; 2 uses
  %i.el = fcmp ogt float %i.ei, %i.ek
  %i.em = fcmp olt float %i.ei, %i.ek
  %or.cond39.i143.i = select i1 %i.cg, i1 %i.em, i1 %i.el
  br i1 %or.cond39.i143.i, label %bb.m, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.m:                                             ; preds = %bb.l
  %sqrt2.i = call float @llvm.sqrt.f32(float %i.ei) ; 2 uses
  %i.en = fdiv float 1.000000e+00, %sqrt2.i       ; 2 uses
  %i.eo = fsub float %sqrt2.i, %.0136.i           ; 3 uses
  %i.ep = fneg float %i.cc
  %i.eq = fmul float %i.eo, %i.ep                 ; 2 uses
  %i.er = fmul float %i.ee, %i.eq
  %i.es = fmul float %i.en, %i.er
  store float %i.es, ptr %i.d, align 8, !tbaa !13
  %i.et = fmul float %i.eg, %i.eq
  %i.eu = fmul float %i.en, %i.et
  store float %i.eu, ptr %i.bi, align 8, !tbaa !13
  %i.ev = fpext float %i.cc to double
  %i.ew = fmul double %i.ev, 5.000000e-01
  %i.ex = fmul float %i.eo, %i.eo
  %i.ey = fpext float %i.ex to double
  %i.ez = fmul double %i.ew, %i.ey
  %i.fa = fptrunc double %i.ez to float
  br label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.n:                                             ; preds = %._crit_edge28.i, %._crit_edge28.i
  %i.fb = load float, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %i.fc = fmul float %i.fb, %i.fb
  %i.fd = load float, ptr %i.bj, align 4, !tbaa !13 ; 3 uses
  %i.fe = fmul float %i.fd, %i.fd
  %i.ff = fadd float %i.fc, %i.fe                 ; 4 uses
  %i.fg = fcmp ogt float %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.o, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.fh = fmul float %.0136.i, %.0136.i           ; 2 uses
  %i.fi = fcmp ogt float %i.ff, %i.fh
  %i.fj = fcmp olt float %i.ff, %i.fh
  %or.cond39.i146.i = select i1 %i.cg, i1 %i.fj, i1 %i.fi
  br i1 %or.cond39.i146.i, label %bb.p, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.p:                                             ; preds = %bb.o
  %sqrt3.i = call float @llvm.sqrt.f32(float %i.ff) ; 2 uses
  %i.fk = fdiv float 1.000000e+00, %sqrt3.i       ; 2 uses
  %i.fl = fsub float %sqrt3.i, %.0136.i           ; 3 uses
  %i.fm = fneg float %i.cc
  %i.fn = fmul float %i.fl, %i.fm                 ; 2 uses
  %i.fo = fmul float %i.fb, %i.fn
  %i.fp = fmul float %i.fk, %i.fo
  store float %i.fp, ptr %i.d, align 8, !tbaa !13
  %i.fq = fmul float %i.fd, %i.fn
  %i.fr = fmul float %i.fk, %i.fq
  store float %i.fr, ptr %i.bh, align 4, !tbaa !13
  %i.fs = fpext float %i.cc to double
  %i.ft = fmul double %i.fs, 5.000000e-01
  %i.fu = fmul float %i.fl, %i.fl
  %i.fv = fpext float %i.fu to double
  %i.fw = fmul double %i.ft, %i.fv
  %i.fx = fptrunc double %i.fw to float
  br label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.q:                                             ; preds = %._crit_edge28.i, %._crit_edge28.i, %._crit_edge28.i
  %i.fy = add nsw i32 %i.cj, -3
  %i.fz = zext nneg i32 %i.fy to i64              ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !13 ; 8 uses
  %i.gc = fcmp ule float %i.gb, %.0136.i
  %or.cond5.i = or i1 %i.cg, %i.gc
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gd = fcmp ogt float %i.gb, 0.000000e+00
  %i.ge = fcmp olt float %i.gb, %.0136.i
  %i.gf = and i1 %i.ge, %i.gd
  %or.cond141.i = and i1 %i.cg, %i.gf
  br i1 %or.cond141.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gg = fpext float %i.cc to double
  %i.gh = fmul double %i.gg, 5.000000e-01
  %i.gi = fsub float %i.gb, %.0136.i              ; 3 uses
  %i.gj = fmul float %i.gi, %i.gi
  %i.gk = fpext float %i.gj to double
  %i.gl = fmul double %i.gh, %i.gk
  %i.gm = fptrunc double %i.gl to float
  %i.gn = fneg float %i.cc
  %i.go = fmul float %i.gi, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fz
  store float %i.go, ptr %i.gp, align 4, !tbaa !13
  br label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.t:                                             ; preds = %bb.r
  %i.gq = fneg float %.0136.i                     ; 2 uses
  %i.gr = fcmp uge float %i.gb, %i.gq
  %or.cond9.i = or i1 %i.cg, %i.gr
  br i1 %or.cond9.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gs = fcmp ogt float %i.gb, %i.gq
  %i.gt = fcmp olt float %i.gb, 0.000000e+00
  %or.cond11.i = and i1 %i.gs, %i.gt
  %or.cond13.i = and i1 %i.cg, %or.cond11.i
  br i1 %or.cond13.i, label %bb.v, label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gu = fpext float %i.cc to double
  %i.gv = fmul double %i.gu, 5.000000e-01
  %i.gw = fadd float %.0136.i, %i.gb              ; 3 uses
  %i.gx = fmul float %i.gw, %i.gw
  %i.gy = fpext float %i.gx to double
  %i.gz = fmul double %i.gv, %i.gy
  %i.ha = fptrunc double %i.gz to float
  %i.hb = fneg float %i.cc
  %i.hc = fmul float %i.gw, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fz
  store float %i.hc, ptr %i.hd, align 4, !tbaa !13
  br label %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i

_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i: ; preds = %bb.v, %bb.u, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %._crit_edge28.i
  %.0137.i = phi float [ 0.000000e+00, %._crit_edge28.i ], [ %i.cz, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.u ], [ %i.ed, %bb.j ], [ %i.fa, %bb.m ], [ %i.gm, %bb.s ], [ %i.ha, %bb.v ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.o ], [ %i.fx, %bb.p ]
  %i.he = getelementptr inbounds [16 x i8], ptr %i.j, i64 %.pre.i ; 4 uses
  %i.hf = load float, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.hg = load float, ptr %i.he, align 4, !tbaa !13
  %i.hh = fadd float %i.hf, %i.hg
  store float %i.hh, ptr %i.he, align 4, !tbaa !13
  %i.hi = load float, ptr %i.b, align 8, !tbaa !13
  %i.hj = load float, ptr %i.a, align 4, !tbaa !13
  %i.hk = fadd float %i.hi, %i.hj
  %i.hl = fpext float %i.hk to double
  %i.hm = fpext float %i.hf to double
  %i.hn = load float, ptr %10, align 4, !tbaa !13
  %i.ho = fpext float %i.hn to double
  %i.hp = fmul double %i.hl, -5.000000e-01
  %i.hq = call double @llvm.fmuladd.f64(double %i.hp, double %i.hm, double %i.ho)
  %i.hr = fptrunc double %i.hq to float
  store float %i.hr, ptr %10, align 4, !tbaa !13
  %i.hs = load float, ptr %i.bh, align 4, !tbaa !13 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !13
  %i.hv = fadd float %i.hs, %i.hu
  store float %i.hv, ptr %i.ht, align 4, !tbaa !13
  %i.hw = load float, ptr %i.bj, align 4, !tbaa !13
  %i.hx = load float, ptr %i.bl, align 4, !tbaa !13
  %i.hy = fadd float %i.hw, %i.hx
  %i.hz = fpext float %i.hy to double
  %i.ia = fpext float %i.hs to double
  %i.ib = load float, ptr %i.bm, align 4, !tbaa !13
  %i.ic = fpext float %i.ib to double
  %i.id = fmul double %i.hz, -5.000000e-01
  %i.ie = call double @llvm.fmuladd.f64(double %i.id, double %i.ia, double %i.ic)
  %i.if = fptrunc double %i.ie to float
  store float %i.if, ptr %i.bm, align 4, !tbaa !13
  %i.ig = load float, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !13
  %i.ij = fadd float %i.ig, %i.ii
  store float %i.ij, ptr %i.ih, align 4, !tbaa !13
  %i.ik = load float, ptr %i.bk, align 8, !tbaa !13
  %i.il = load float, ptr %i.bn, align 4, !tbaa !13
  %i.im = fadd float %i.ik, %i.il
  %i.in = fpext float %i.im to double
  %i.io = fpext float %i.ig to double
  %i.ip = load float, ptr %i.bo, align 4, !tbaa !13
  %i.iq = fpext float %i.ip to double
  %i.ir = fmul double %i.in, -5.000000e-01
  %i.is = call double @llvm.fmuladd.f64(double %i.ir, double %i.io, double %i.iq)
  %i.it = fptrunc double %i.is to float
  store float %i.it, ptr %i.bo, align 4, !tbaa !13
  %i.iu = fadd float %.013110.i, %.0137.i         ; 2 uses
  %11 = icmp samesign ult i64 %indvars.iv.next26.i, %sext.i
  br i1 %11, label %bb.c, label %_ZN12_GLOBAL__N_18fbposresEiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbc15RefCoordScaling7PbcTypeNSA_8ArrayRefIKSC_EENSJ_IKtEENSJ_ISC_EE.exit, !llvm.loop !192

_ZN12_GLOBAL__N_18fbposresEiPKiPK9t_iparamsPA3_KfPA4_fPN3gmx11BasicVectorIfEERK5t_pbc15RefCoordScaling7PbcTypeNSA_8ArrayRefIKSC_EENSJ_IKtEENSJ_ISC_EE.exit: ; preds = %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i, %.loopexit5.i
  %.0131.lcssa.i = phi float [ 0.000000e+00, %.loopexit5.i ], [ %i.iu, %_ZN12_GLOBAL__N_120do_fbposres_cylinderEiPfS0_ffb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret float %.0131.lcssa.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { builtin nounwind }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN3gmx12ArrayRefIterIA4_fEE", !11, i64 0}
!11 = !{!"p1 float", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!16, !26, i64 16}
!16 = !{!"_ZTS10t_forcerec", !17, i64 0, !24, i64 8, !25, i64 12, !26, i64 16, !27, i64 24, !27, i64 48, !25, i64 72, !25, i64 73, !32, i64 76, !33, i64 80, !34, i64 84, !34, i64 88, !14, i64 92, !35, i64 96, !35, i64 112, !35, i64 128, !36, i64 144, !14, i64 152, !43, i64 160, !50, i64 168, !51, i64 176, !56, i64 200, !27, i64 224, !61, i64 248, !68, i64 256, !6, i64 264, !75, i64 272, !6, i64 296, !6, i64 300, !80, i64 304, !85, i64 328, !86, i64 336, !6, i64 340, !25, i64 344, !87, i64 352, !87, i64 376, !60, i64 400, !14, i64 408, !6, i64 412, !91, i64 416, !14, i64 424, !6, i64 428, !6, i64 432, !6, i64 436, !6, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !14, i64 456, !95, i64 464, !102, i64 472, !107, i64 496, !114, i64 504, !121, i64 512, !122, i64 520, !123, i64 528, !124, i64 536, !131, i64 544, !132, i64 568}
!17 = !{!"_ZTSSt10unique_ptrI19interaction_const_tSt14default_deleteIS0_EE", !18, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_dataI19interaction_const_tSt14default_deleteIS0_ELb1ELb1EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_implI19interaction_const_tSt14default_deleteIS0_EE", !20, i64 0}
!20 = !{!"_ZTSSt5tupleIJP19interaction_const_tSt14default_deleteIS0_EEE", !21, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJP19interaction_const_tSt14default_deleteIS0_EEE", !22, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EP19interaction_const_tLb0EE", !23, i64 0}
!23 = !{!"p1 _ZTS19interaction_const_t", !12, i64 0}
!24 = !{!"_ZTS7PbcType", !7, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!27 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !12, i64 0}
!32 = !{!"_ZTS16NbkernelElecType", !7, i64 0}
!33 = !{!"_ZTS15NbkernelVdwType", !7, i64 0}
!34 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!35 = !{!"_ZTSSt5arrayIdLm2EE", !7, i64 0}
!36 = !{!"_ZTSSt10unique_ptrI20DispersionCorrectionSt14default_deleteIS0_EE", !37, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_dataI20DispersionCorrectionSt14default_deleteIS0_ELb1ELb1EE", !38, i64 0}
!38 = !{!"_ZTSSt15__uniq_ptr_implI20DispersionCorrectionSt14default_deleteIS0_EE", !39, i64 0}
!39 = !{!"_ZTSSt5tupleIJP20DispersionCorrectionSt14default_deleteIS0_EEE", !40, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJP20DispersionCorrectionSt14default_deleteIS0_EEE", !41, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EP20DispersionCorrectionLb0EE", !42, i64 0}
!42 = !{!"p1 _ZTS20DispersionCorrection", !12, i64 0}
!43 = !{!"_ZTSSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EE", !44, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_dataI12t_forcetableSt14default_deleteIS0_ELb1ELb1EE", !45, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_implI12t_forcetableSt14default_deleteIS0_EE", !46, i64 0}
!46 = !{!"_ZTSSt5tupleIJP12t_forcetableSt14default_deleteIS0_EEE", !47, i64 0}
!47 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_forcetableSt14default_deleteIS0_EEE", !48, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm0EP12t_forcetableLb0EE", !49, i64 0}
!49 = !{!"p1 _ZTS12t_forcetable", !12, i64 0}
!50 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!51 = !{!"_ZTSSt6vectorIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSN3gmx27AtomInfoWithinMoleculeBlockE", !12, i64 0}
!56 = !{!"_ZTSSt6vectorIiSaIiEE", !57, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!60 = !{!"p1 int", !12, i64 0}
!61 = !{!"_ZTSSt10unique_ptrIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EE", !62, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_ELb1ELb1EE", !63, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EE", !64, i64 0}
!64 = !{!"_ZTSSt5tupleIJPN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EEE", !65, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EEE", !66, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22WholeMoleculeTransformELb0EE", !67, i64 0}
!67 = !{!"p1 _ZTSN3gmx22WholeMoleculeTransformE", !12, i64 0}
!68 = !{!"_ZTSSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EE", !69, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_ELb1ELb1EE", !70, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EE", !71, i64 0}
!71 = !{!"_ZTSSt5tupleIJPN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEE", !72, i64 0}
!72 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEE", !73, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18nonbonded_verlet_tELb0EE", !74, i64 0}
!74 = !{!"p1 _ZTSN3gmx18nonbonded_verlet_tE", !12, i64 0}
!75 = !{!"_ZTSSt6vectorIS_ISt10unique_ptrI12t_forcetableSt14default_deleteIS1_EESaIS4_EESaIS6_EE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!79 = !{!"p1 _ZTSSt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS1_EESaIS4_EE", !12, i64 0}
!80 = !{!"_ZTSSt6vectorI18ForceHelperBuffersSaIS0_EE", !81, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE12_Vector_implE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTS18ForceHelperBuffers", !12, i64 0}
!85 = !{!"p1 _ZTS9gmx_pme_t", !12, i64 0}
!86 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!87 = !{!"_ZTSSt6vectorIfSaIfEE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!91 = !{!"_ZTSSt8optionalIfE", !92, i64 0}
!92 = !{!"_ZTSSt14_Optional_baseIfLb1ELb1EE", !93, i64 0}
!93 = !{!"_ZTSSt17_Optional_payloadIfLb1ELb1ELb1EE", !94, i64 0}
!94 = !{!"_ZTSSt22_Optional_payload_baseIfE", !7, i64 0, !25, i64 4}
!95 = !{!"_ZTSSt10unique_ptrI8t_fcdataSt14default_deleteIS0_EE", !96, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_dataI8t_fcdataSt14default_deleteIS0_ELb1ELb1EE", !97, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_implI8t_fcdataSt14default_deleteIS0_EE", !98, i64 0}
!98 = !{!"_ZTSSt5tupleIJP8t_fcdataSt14default_deleteIS0_EEE", !99, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_fcdataSt14default_deleteIS0_EEE", !100, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EP8t_fcdataLb0EE", !101, i64 0}
!101 = !{!"p1 _ZTS8t_fcdata", !12, i64 0}
!102 = !{!"_ZTSSt6vectorI12ListedForcesSaIS0_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseI12ListedForcesSaIS0_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseI12ListedForcesSaIS0_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseI12ListedForcesSaIS0_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTS12ListedForces", !12, i64 0}
!107 = !{!"_ZTSSt10unique_ptrIN3gmx15ListedForcesGpuESt14default_deleteIS1_EE", !108, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx15ListedForcesGpuESt14default_deleteIS1_ELb1ELb1EE", !109, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx15ListedForcesGpuESt14default_deleteIS1_EE", !110, i64 0}
!110 = !{!"_ZTSSt5tupleIJPN3gmx15ListedForcesGpuESt14default_deleteIS1_EEE", !111, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx15ListedForcesGpuESt14default_deleteIS1_EEE", !112, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx15ListedForcesGpuELb0EE", !113, i64 0}
!113 = !{!"p1 _ZTSN3gmx15ListedForcesGpuE", !12, i64 0}
!114 = !{!"_ZTSSt10unique_ptrI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_dataI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_ELb1ELb1EE", !116, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !117, i64 0}
!117 = !{!"_ZTSSt5tupleIJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !118, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !119, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EP24CpuPpLongRangeNonbondedsLb0EE", !120, i64 0}
!120 = !{!"p1 _ZTS24CpuPpLongRangeNonbondeds", !12, i64 0}
!121 = !{!"p1 _ZTSN3gmx14ForceProvidersE", !12, i64 0}
!122 = !{!"p1 _ZTSN3gmx22StatePropagatorDataGpuE", !12, i64 0}
!123 = !{!"p1 _ZTSN3gmx19DeviceStreamManagerE", !12, i64 0}
!124 = !{!"_ZTSSt10unique_ptrIN3gmx12PmePpCommGpuESt14default_deleteIS1_EE", !125, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12PmePpCommGpuESt14default_deleteIS1_ELb1ELb1EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12PmePpCommGpuESt14default_deleteIS1_EE", !127, i64 0}
!127 = !{!"_ZTSSt5tupleIJPN3gmx12PmePpCommGpuESt14default_deleteIS1_EEE", !128, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12PmePpCommGpuESt14default_deleteIS1_EEE", !129, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12PmePpCommGpuELb0EE", !130, i64 0}
!130 = !{!"p1 _ZTSN3gmx12PmePpCommGpuE", !12, i64 0}
!131 = !{!"_ZTSN3gmx16EnumerationArrayINS_12AtomLocalityESt10unique_ptrINS_17GpuForceReductionESt14default_deleteIS3_EELS1_3EEE", !7, i64 0}
!132 = !{!"_ZTSN3gmx16EnumerationArrayI20MdGraphEvenOrOddStepSt10unique_ptrINS_10MdGpuGraphESt14default_deleteIS3_EELS1_2EEE", !7, i64 0}
!133 = !{!30, !31, i64 0}
!134 = !{!30, !31, i64 8}
!135 = !{!136, !31, i64 0}
!136 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !31, i64 0}
!137 = !{!138, !24, i64 0}
!138 = !{!"_ZTS5t_pbc", !24, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 52, !7, i64 64, !7, i64 76, !14, i64 88, !6, i64 92, !7, i64 96, !7, i64 240}
!139 = distinct !{!139, !140}
!140 = !{!"llvm.loop.mustprogress"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !140}
!143 = !{!6, !6, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"short", !7, i64 0}
!146 = !{!7, !7, i64 0}
!147 = distinct !{!147, !140}
!148 = !{!149, !150, i64 0}
!149 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !150, i64 0}
!150 = !{!"p1 omnipotent char", !12, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"long", !7, i64 0}
!153 = !{!154, !150, i64 0}
!154 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !149, i64 0, !152, i64 8, !7, i64 16}
!155 = !{!154, !152, i64 8}
!156 = !{!157, !157, i64 0}
!157 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!158 = !{!159, !6, i64 0}
!159 = !{!"_ZTS18ForeignLambdaTerms", !6, i64 0, !160, i64 8, !161, i64 16, !166, i64 40, !25, i64 64}
!160 = !{!"p1 _ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIdSaIdEELS1_7EEE", !12, i64 0}
!161 = !{!"_ZTSSt6vectorIdSaIdEE", !162, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !163, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !164, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !165, i64 0, !165, i64 8, !165, i64 16}
!165 = !{!"p1 double", !12, i64 0}
!166 = !{!"_ZTSSt6vectorIN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypedLS2_7EEESaIS3_EE", !167, i64 0}
!167 = !{!"_ZTSSt12_Vector_baseIN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypedLS2_7EEESaIS3_EE", !168, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypedLS2_7EEESaIS3_EE12_Vector_implE", !169, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseIN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypedLS2_7EEESaIS3_EE17_Vector_impl_dataE", !170, i64 0, !170, i64 8, !170, i64 16}
end_hunk_1
