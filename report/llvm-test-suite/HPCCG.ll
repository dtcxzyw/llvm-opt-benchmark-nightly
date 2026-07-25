inline.NumInlined: 17
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [20 x i8] c"Initial Residual = \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Iteration = \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"   Residual = \00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %i.c = alloca double, align 8                   ; 16 uses
  %i.d = tail call noundef double @_Z7mytimerv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !10   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = sext i32 %i.f to i64
  %i.j = icmp slt i32 %i.f, 0
  %i.k = shl nsw i64 %i.i, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k         ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #9 ; 13 uses
  %i.n = sext i32 %i.h to i64
  %i.o = icmp slt i32 %i.h, 0
  %i.p = shl nsw i64 %i.n, 3
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #9 ; 12 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #9 ; 9 uses
  store double 0.000000e+00, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !8
  %i.t = sdiv i32 %3, 10
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 50)
  %i.w = tail call noundef double @_Z7mytimerv()
  %i.x = tail call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef %2, double noundef 0.000000e+00, ptr noundef %2, ptr noundef nonnull %i.r) ; 0 uses
  %i.y = tail call noundef double @_Z7mytimerv()
  %i.z = fsub double %i.y, %i.w
  %i.aa = fadd double %i.z, 0.000000e+00
  %i.ab = tail call noundef double @_Z7mytimerv()
  %i.ac = tail call noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr noundef %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) ; 0 uses
  %i.ad = tail call noundef double @_Z7mytimerv()
  %i.ae = fsub double %i.ad, %i.ab
  %i.af = fadd double %i.ae, 0.000000e+00         ; 3 uses
  %i.ag = tail call noundef double @_Z7mytimerv()
  %i.ah = tail call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef nonnull %i.s, ptr noundef nonnull %i.m) ; 0 uses
  %i.ai = tail call noundef double @_Z7mytimerv()
  %i.aj = fsub double %i.ai, %i.ag
  %i.ak = fadd double %i.aa, %i.aj                ; 3 uses
  %i.al = tail call noundef double @_Z7mytimerv()
  %i.am = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.an = call noundef double @_Z7mytimerv()
  %i.ao = fsub double %i.an, %i.al
  %i.ap = fadd double %i.ao, 0.000000e+00         ; 3 uses
  %i.aq = load double, ptr %i.b, align 8, !tbaa !8
  %i.ar = call double @sqrt(double noundef %i.aq) #8, !tbaa !4
  store double %i.ar, ptr %6, align 8, !tbaa !8
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 19) ; 0 uses
  %i.at = load double, ptr %6, align 8, !tbaa !8
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.at) ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10), !inline_history !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.be, %bb.c ], [ %i.bi, %bb.d ]
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext %.0.i.i.i)
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 0 uses
  %i.bl = icmp sgt i32 %3, 1
  br i1 %i.bl, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bm = load double, ptr %6, align 8, !tbaa !8
  %i.bn = fcmp ogt double %i.bm, %4
  br i1 %i.bn, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.bo = call noundef double @_Z7mytimerv()
  %i.bp = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef nonnull %i.m, double noundef 0.000000e+00, ptr noundef nonnull %i.m, ptr noundef nonnull %i.r) ; 0 uses
  %i.bq = call noundef double @_Z7mytimerv()
  %.pre = load double, ptr %i.b, align 8, !tbaa !8
  %i.br = fsub double %i.bq, %i.bo
  %.1103.peel = fadd double %i.ak, %i.br
  %i.bs = call double @sqrt(double noundef %.pre) #8, !tbaa !4
  store double %i.bs, ptr %6, align 8, !tbaa !8
  %i.bt = icmp samesign ult i32 %3, 20
  br i1 %i.bt, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1) ; 2 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.2, i64 noundef 14) ; 0 uses
  %i.bx = load double, ptr %6, align 8, !tbaa !8
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, double noundef %i.bx) ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !23 ; 6 uses
  %.not.i.i.i107.peel = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i107.peel, label %.loopexit, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108.peel

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108.peel: ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !40
  %.not.i1.i.i109.peel = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i109.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108.peel
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111.peel

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108.peel
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce)
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10), !inline_history !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111.peel

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111.peel: ; preds = %bb.h, %bb.g
  %.0.i.i.i110.peel = phi i8 [ %i.ci, %bb.g ], [ %i.cm, %bb.h ]
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef signext %.0.i.i.i110.peel)
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111.peel, %bb.e
  %i.cp = call noundef double @_Z7mytimerv()
  %i.cq = call noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) ; 0 uses
  %i.cr = call noundef double @_Z7mytimerv()
  %i.cs = fsub double %i.cr, %i.cp
  %i.ct = fadd double %i.af, %i.cs                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !8
  %i.cu = call noundef double @_Z7mytimerv()
  %i.cv = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %i.f, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.cw = call noundef double @_Z7mytimerv()
  %i.cx = fsub double %i.cw, %i.cu
  %i.cy = fadd double %i.ap, %i.cx                ; 2 uses
  %i.cz = load double, ptr %i.b, align 8, !tbaa !8
  %i.da = load double, ptr %i.c, align 8, !tbaa !8
  %i.db = fdiv double %i.cz, %i.da
  store double %i.db, ptr %i.c, align 8, !tbaa !8
  %i.dc = call noundef double @_Z7mytimerv()
  %i.dd = load double, ptr %i.c, align 8, !tbaa !8
  %i.de = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef %2, double noundef %i.dd, ptr noundef nonnull %i.r, ptr noundef %2) ; 0 uses
  %i.df = load double, ptr %i.c, align 8, !tbaa !8
  %i.dg = fneg double %i.df
  %i.dh = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef nonnull %i.m, double noundef %i.dg, ptr noundef nonnull %i.s, ptr noundef nonnull %i.m) ; 0 uses
  %i.di = call noundef double @_Z7mytimerv()
  %i.dj = fsub double %i.di, %i.dc
  %i.dk = fadd double %.1103.peel, %i.dj          ; 2 uses
  store i32 1, ptr %5, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %exitcond.peel.not = icmp eq i32 %3, 2
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.n
  %.0118 = phi i32 [ %i.ej, %bb.n ], [ 2, %bb.i ] ; 4 uses
  %.0101117 = phi double [ %i.fp, %bb.n ], [ %i.cy, %bb.i ] ; 2 uses
  %.0102116 = phi double [ %i.gb, %bb.n ], [ %i.dk, %bb.i ] ; 2 uses
  %.0104115 = phi double [ %i.fk, %bb.n ], [ %i.ct, %bb.i ] ; 2 uses
  %i.dl = load double, ptr %6, align 8, !tbaa !8
  %i.dm = fcmp ogt double %i.dl, %4
  br i1 %i.dm, label %bb.j, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.n, %.lr.ph.preheader, %bb.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.0104.lcssa = phi double [ %i.af, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.af, %.lr.ph.preheader ], [ %i.ct, %bb.i ], [ %.0104115, %.lr.ph ], [ %i.fk, %bb.n ]
  %.0102.lcssa = phi double [ %i.ak, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.ak, %.lr.ph.preheader ], [ %i.dk, %bb.i ], [ %.0102116, %.lr.ph ], [ %i.gb, %bb.n ]
  %.0101.lcssa = phi double [ %i.ap, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.ap, %.lr.ph.preheader ], [ %i.cy, %bb.i ], [ %.0101117, %.lr.ph ], [ %i.fp, %bb.n ]
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %.0101.lcssa, ptr %i.dn, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %.0102.lcssa, ptr %i.do, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %.0104.lcssa, ptr %i.dp, align 8, !tbaa !8
  %i.dq = load double, ptr %i.a, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %i.dq, ptr %i.dr, align 8, !tbaa !8
  call void @_ZdaPv(ptr noundef nonnull %i.r) #11
  call void @_ZdaPv(ptr noundef nonnull %i.s) #11
  call void @_ZdaPv(ptr noundef nonnull %i.m) #11
  %i.ds = call noundef double @_Z7mytimerv()
  %i.dt = fsub double %i.ds, %i.d
  store double %i.dt, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0

bb.j:                                             ; preds = %.lr.ph
  %i.du = load double, ptr %i.b, align 8, !tbaa !8
  %i.dv = call noundef double @_Z7mytimerv()
  %i.dw = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.dx = call noundef double @_Z7mytimerv()
  %i.dy = fsub double %i.dx, %i.dv
  %i.dz = fadd double %.0101117, %i.dy
  %i.ea = load double, ptr %i.b, align 8, !tbaa !8
  %i.eb = fdiv double %i.ea, %i.du
  %i.ec = call noundef double @_Z7mytimerv()
  %i.ed = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef nonnull %i.m, double noundef %i.eb, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) ; 0 uses
  %i.ee = call noundef double @_Z7mytimerv()
  %.pre126 = load double, ptr %i.b, align 8, !tbaa !8
  %i.ef = fsub double %i.ee, %i.ec
  %.1103 = fadd double %.0102116, %i.ef
  %i.eg = call double @sqrt(double noundef %.pre126) #8, !tbaa !4
  store double %i.eg, ptr %6, align 8, !tbaa !8
  %i.eh = urem i32 %.0118, %i.v
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = add nuw nsw i32 %.0118, 1               ; 3 uses
  %i.ek = icmp eq i32 %i.ej, %3
  %or.cond = select i1 %i.ei, i1 true, i1 %i.ek
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0118) ; 2 uses
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.2, i64 noundef 14) ; 0 uses
  %i.eo = load double, ptr %6, align 8, !tbaa !8
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.em, double noundef %i.eo) ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 240
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !23 ; 6 uses
  %.not.i.i.i107 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i107, label %.loopexit, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108

.loopexit:                                        ; preds = %bb.k, %bb.f
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108: ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !40
  %.not.i1.i.i109 = icmp eq i8 %i.ex, 0
  br i1 %.not.i1.i.i109, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 67
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ev)
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !21
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = call noundef signext i8 %i.fc(ptr noundef nonnull align 8 dereferenceable(570) %i.ev, i8 noundef signext 10), !inline_history !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111: ; preds = %bb.l, %bb.m
  %.0.i.i.i110 = phi i8 [ %i.ez, %bb.l ], [ %i.fd, %bb.m ]
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, i8 noundef signext %.0.i.i.i110)
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit111
  %i.fg = call noundef double @_Z7mytimerv()
  %i.fh = call noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) ; 0 uses
  %i.fi = call noundef double @_Z7mytimerv()
  %i.fj = fsub double %i.fi, %i.fg
  %i.fk = fadd double %.0104115, %i.fj            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !8
  %i.fl = call noundef double @_Z7mytimerv()
  %i.fm = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %i.f, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.fn = call noundef double @_Z7mytimerv()
  %i.fo = fsub double %i.fn, %i.fl
  %i.fp = fadd double %i.dz, %i.fo                ; 2 uses
  %i.fq = load double, ptr %i.b, align 8, !tbaa !8
  %i.fr = load double, ptr %i.c, align 8, !tbaa !8
  %i.fs = fdiv double %i.fq, %i.fr
  store double %i.fs, ptr %i.c, align 8, !tbaa !8
  %i.ft = call noundef double @_Z7mytimerv()
  %i.fu = load double, ptr %i.c, align 8, !tbaa !8
  %i.fv = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef %2, double noundef %i.fu, ptr noundef nonnull %i.r, ptr noundef %2) ; 0 uses
  %i.fw = load double, ptr %i.c, align 8, !tbaa !8
  %i.fx = fneg double %i.fw
  %i.fy = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %i.f, double noundef 1.000000e+00, ptr noundef nonnull %i.m, double noundef %i.fx, ptr noundef nonnull %i.s, ptr noundef nonnull %i.m) ; 0 uses
  %i.fz = call noundef double @_Z7mytimerv()
  %i.ga = fsub double %i.fz, %i.ft
  %i.gb = fadd double %.1103, %i.ga               ; 2 uses
  store i32 %.0118, ptr %5, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %exitcond.not = icmp eq i32 %i.ej, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef double @_Z7mytimerv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef, double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { noreturn }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !5, i64 32}
!11 = !{!"_ZTS24HPC_Sparse_Matrix_STRUCT", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !15, i64 48, !16, i64 56, !18, i64 64, !16, i64 72, !19, i64 80, !15, i64 88}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long long", !6, i64 0}
!15 = !{!"p1 int", !13, i64 0}
!16 = !{!"p2 double", !17, i64 0}
!17 = !{!"any p2 pointer", !13, i64 0}
!18 = !{!"p2 int", !17, i64 0}
!19 = !{!"p1 double", !13, i64 0}
!20 = !{!11, !5, i64 36}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !7, i64 0}
!23 = !{!24, !37, i64 240}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !34, i64 216, !6, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !6, i64 64, !5, i64 192, !31, i64 200, !32, i64 208}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !26, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!34 = !{!"p1 _ZTSSo", !13, i64 0}
!35 = !{!"bool", !6, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!40 = !{!41, !6, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !35, i64 24, !15, i64 32, !15, i64 40, !44, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!44 = !{!"p1 short", !13, i64 0}
!45 = !{!6, !6, i64 0}
!46 = distinct !{null, null, null, null}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
