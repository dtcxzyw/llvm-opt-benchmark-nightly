Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcetable?download=true
inline.NumInlined: 816
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z12v_q_ewald_lrdd
define noundef double @_Z12v_q_ewald_lrdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fmul double %0, 2.000000e+00
  %i.c = fdiv double %i.b, f0x3FFC5BF891B4EF6A
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fmul double %0, %1
  %i.e = tail call double @erf(double noundef %i.d) #24
  %i.f = fdiv double %i.e, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_Z13v_lj_ewald_lrdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fmul double %0, %0
  %i.c = fmul double %0, %i.b                     ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = fdiv double %i.d, 6.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = fmul double %0, %1                       ; 2 uses
  %i.g = fmul double %i.f, %i.f                   ; 4 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %1, %1
  %i.j = fmul double %1, %i.i                     ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = fneg double %i.g
  %i.m = tail call double @exp(double noundef %i.l) #24
  %i.n = fadd double %i.g, 1.000000e+00
  %i.o = tail call double @llvm.fmuladd.f64(double %i.h, double 5.000000e-01, double %i.n)
  %i.p = fneg double %i.m
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double 1.000000e+00)
  %i.r = fdiv double %i.q, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ %i.r, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_Z29generateEwaldCorrectionTablesidfPFdddE(ptr dead_on_unwind noalias writable sret(%struct.EwaldCorrectionTables) align 8 %0, i32 noundef %1, double noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 157, ptr noundef nonnull @.str.1) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.c = fdiv double 1.000000e+00, %2             ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %i.e = fptrunc double %2 to float
  store float %i.e, ptr %0, align 8, !tbaa !114
  %i.f = zext nneg i32 %1 to i64                  ; 5 uses
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.f)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.f
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit
  %i.p = sub nuw nsw i64 %i.f, %i.n
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.p)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit
  %i.q = icmp ugt i64 %i.n, %i.f
  br i1 %i.q, label %bb.h, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.f ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i121, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.h, align 8, !tbaa !19
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.t = shl nuw nsw i32 %1, 2
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 4 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !20   ; 5 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.u
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123
  %i.ad = sub nuw nsw i64 %i.u, %i.ab
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ad)
          to label %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge: ; preds = %bb.j
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !20
  %.pre162 = load ptr, ptr %i.v, align 8, !tbaa !19
  br label %.lr.ph

bb.k:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123
  %i.ae = icmp ugt i64 %i.ab, %i.u
  br i1 %i.ae, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.w, %i.af
  br i1 %.not.i.i124, label %.lr.ph, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.af, ptr %i.v, align 8, !tbaa !19
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l, %bb.m, %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge
  %i.ag = phi ptr [ %.pre162, %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge ], [ %i.af, %bb.m ], [ %i.w, %bb.l ], [ %i.w, %bb.k ]
  %i.ah = phi ptr [ %.pre, %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ %i.x, %bb.k ] ; 11 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !20  ; 23 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !20  ; 11 uses
  %i.ak = add nsw i32 %1, -1                      ; 5 uses
  %i.al = fpext float %3 to double                ; 6 uses
  %i.am = insertelement <2 x double> poison, double %i.c, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, <double 2.500000e-01, double 1.000000e+00> ; 2 uses
  %i.ap = zext i32 %i.ak to i64                   ; 10 uses
  %i.aq = uitofp nneg i32 %i.ak to double
  %i.ar = fmul double %i.c, %i.aq                 ; 2 uses
  %i.as = invoke noundef double %4(double noundef %i.al, double noundef %i.ar)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.n:                                             ; preds = %.lr.ph
  %i.at = fptrunc double %i.as to float
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ap
  store float %i.at, ptr %i.au, align 4, !tbaa !21
  %i.av = add nsw i32 %1, -2                      ; 2 uses
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fmul double %i.c, %i.aw
  %i.ay = invoke noundef double %4(double noundef %i.al, double noundef %i.ax)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.o:                                             ; preds = %bb.n
  %6 = fcmp uno double %i.ay, 0.000000e+00
  %7 = tail call double @llvm.fabs.f64(double %i.ay)
  %i.az = fcmp ogt double %7, f0x471A36E2E0000000
  %or.cond117.peel = or i1 %6, %i.az
  br i1 %or.cond117.peel, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ap
  store float -0.000000e+00, ptr %i.ba, align 4, !tbaa !21
  br label %.peel.next

bb.p:                                             ; preds = %bb.o
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.c, double -5.000000e-01, double %i.ar)
  %i.bc = invoke noundef double %4(double noundef %i.al, double noundef %i.bb)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bd = fadd double %i.as, %i.ay
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bc, double -2.000000e+00, double %i.bd)
  %i.bf = extractelement <2 x double> %i.ao, i64 0
  %i.bg = fdiv double %i.be, %i.bf
  %i.bh = fsub double %i.as, %i.ay
  %i.bi = fdiv double %i.bh, %i.c
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bg, double 5.000000e-01, double %i.bi) ; 4 uses
  %i.bk = fptrunc double %i.bj to float
  %i.bl = fneg float %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ap
  store float %i.bl, ptr %i.bm, align 4, !tbaa !21
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.c, double %i.ay)
  %i.bo = fsub double %i.bn, %i.as
  %i.bp = fmul double %i.bo, 2.000000e+00
  %i.bq = fdiv double %i.bp, %i.c
  %i.br = fsub double %i.bj, %i.bq                ; 3 uses
  %8 = fcmp uno double %i.br, 0.000000e+00
  %9 = tail call double @llvm.fabs.f64(double %i.br)
  %i.bs = fcmp ogt double %9, f0x471A36E2E0000000
  %or.cond119.peel = or i1 %8, %i.bs              ; 2 uses
  %spec.select.peel = select i1 %or.cond119.peel, double %i.bj, double %i.br
  %spec.select120.peel = zext i1 %or.cond119.peel to i8
  br label %.peel.next

.peel.next:                                       ; preds = %.thread, %bb.q
  %.2104.peel = phi double [ 0.000000e+00, %.thread ], [ %spec.select.peel, %bb.q ] ; 2 uses
  %.2.peel = phi i8 [ 1, %.thread ], [ %spec.select120.peel, %bb.q ]
  %i.bt = fmul double %.2104.peel, -5.000000e-01
  %i.bu = fptrunc double %i.bt to float
  %i.bv = zext nneg i32 %i.av to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bv
  store float %i.bu, ptr %i.bw, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %.peel.next, %bb.z
  %indvars.iv.in = phi i64 [ %i.ap, %.peel.next ], [ %indvars.iv, %bb.z ]
  %.098151 = phi double [ %i.as, %.peel.next ], [ %.199, %bb.z ] ; 2 uses
  %.0100150 = phi i8 [ %.2.peel, %.peel.next ], [ %.2, %bb.z ] ; 2 uses
  %.0102149 = phi double [ %.2104.peel, %.peel.next ], [ %.2104, %bb.z ] ; 3 uses
  %.0106148 = phi i32 [ %i.ak, %.peel.next ], [ %.1107, %bb.z ] ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 6 uses
  %i.bx = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %i.by = uitofp nneg i32 %i.bx to double
  %i.bz = fmul double %i.c, %i.by                 ; 2 uses
  %i.ca = invoke noundef double %4(double noundef %i.al, double noundef %i.bz)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.s:                                             ; preds = %bb.r
  %i.cb = trunc nuw i8 %.0100150 to i1
  br i1 %i.cb, label %bb.t, label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.v, %bb.r, %bb.p, %bb.n, %.lr.ph, %bb.e, %bb.f, %bb.j
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN21EwaldCorrectionTablesD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #24
  br label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cc = sub nsw i32 %i.bx, %.0106148
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = fneg double %i.cd
  %i.cf = fmul double %.0102149, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.c, double %.098151)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.1107 = phi i32 [ %.0106148, %bb.t ], [ %i.bx, %bb.s ]
  %.199 = phi double [ %.098151, %bb.t ], [ %i.ca, %bb.s ]
  %.097 = phi double [ %i.cg, %bb.t ], [ %i.ca, %bb.s ]
  %i.ch = fptrunc double %.097 to float
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store float %i.ch, ptr %i.ci, align 4, !tbaa !21
  %i.cj = icmp eq i64 %indvars.iv, 0
  br i1 %i.cj, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add nsw i32 %i.bx, -1                   ; 2 uses
  %i.cl = uitofp nneg i32 %i.ck to double
  %i.cm = fmul double %i.c, %i.cl
  %i.cn = invoke noundef double %4(double noundef %i.al, double noundef %i.cm)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.w:                                             ; preds = %bb.v
  %10 = fcmp uno double %i.cn, 0.000000e+00
  %11 = tail call double @llvm.fabs.f64(double %i.cn)
  %i.co = fcmp ogt double %11, f0x471A36E2E0000000
  %or.cond117 = or i1 %10, %i.co
  %i.cp = trunc nuw i8 %.0100150 to i1
  %i.cq = select i1 %or.cond117, i1 true, i1 %i.cp
  br i1 %i.cq, label %.thread179, label %bb.x

.thread179:                                       ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !21
  %i.ct = fpext float %i.cs to double
  %i.cu = tail call double @llvm.fmuladd.f64(double %.0102149, double -5.000000e-01, double %i.ct)
  %i.cv = fptrunc double %i.cu to float
  store float %i.cv, ptr %i.cr, align 4, !tbaa !21
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.c, double -5.000000e-01, double %i.bz)
  %i.cx = invoke noundef double %4(double noundef %i.al, double noundef %i.cw)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.cy = fadd double %i.ca, %i.cn
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cx, double -2.000000e+00, double %i.cy)
  %i.da = fsub double %i.ca, %i.cn
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fdiv <2 x double> %i.dc, %i.ao          ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = extractelement <2 x double> %i.dd, i64 1
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double 5.000000e-01, double %i.df) ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !21
  %i.dj = fpext float %i.di to double
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dg, double -5.000000e-01, double %i.dj)
  %i.dl = fptrunc double %i.dk to float
  store float %i.dl, ptr %i.dh, align 4, !tbaa !21
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.c, double %i.cn)
  %i.dn = fsub double %i.dm, %i.ca
  %i.do = fmul double %i.dn, 2.000000e+00
  %i.dp = fdiv double %i.do, %i.c
  %i.dq = fsub double %i.dg, %i.dp                ; 3 uses
  %12 = fcmp uno double %i.dq, 0.000000e+00
  %13 = tail call double @llvm.fabs.f64(double %i.dq)
  %i.dr = fcmp ogt double %13, f0x471A36E2E0000000
  %or.cond119 = or i1 %12, %i.dr                  ; 2 uses
  %spec.select = select i1 %or.cond119, double %i.dg, double %i.dq
  %spec.select120 = zext i1 %or.cond119 to i8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread179
  %.2104 = phi double [ %.0102149, %.thread179 ], [ %spec.select, %bb.y ] ; 2 uses
  %.2 = phi i8 [ 1, %.thread179 ], [ %spec.select120, %bb.y ]
  %i.ds = fmul double %.2104, -5.000000e-01
  %i.dt = fptrunc double %i.ds to float
  %i.du = zext nneg i32 %i.ck to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.du
  store float %i.dt, ptr %i.dv, align 4, !tbaa !21
  %i.dw = icmp sgt i32 %i.bx, 0
  br i1 %i.dw, label %bb.r, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.u, %bb.z
  %i.dx = load float, ptr %i.ai, align 4, !tbaa !21
  %i.dy = fmul float %i.dx, 2.000000e+00
  store float %i.dy, ptr %i.ai, align 4, !tbaa !21
  %i.dz = icmp eq ptr %i.ah, %i.ag
  br i1 %i.dz, label %bb.aa, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %1, 17
  br i1 %min.iters.check, label %.lr.ph153.preheader194, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph153.preheader
  %i.ea = shl nuw nsw i64 %i.ap, 4
  %i.eb = getelementptr i8, ptr %i.ah, i64 %i.ea  ; 2 uses
  %i.ec = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ai, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %i.ef = getelementptr i8, ptr %i.aj, i64 %i.ec
  %bound0 = icmp ult ptr %i.ah, %i.ee
  %bound1 = icmp ult ptr %i.ai, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  %bound0189 = icmp ult ptr %i.ah, %i.ef
  %bound1190 = icmp ult ptr %i.aj, %i.eb
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx = or i1 %found.conflict, %found.conflict191
  br i1 %conflict.rdx, label %.lr.ph153.preheader194, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %wide.load = load <8 x float>, ptr %i.eg, align 4, !tbaa !21, !alias.scope !115 ; 2 uses
  %i.eh = shl nuw nsw i64 %index, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %wide.load192 = load <8 x float>, ptr %i.ek, align 4, !tbaa !21, !alias.scope !115
  %i.el = fsub <8 x float> %wide.load192, %wide.load
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %wide.load193 = load <8 x float>, ptr %i.em, align 4, !tbaa !21, !alias.scope !116
  %i.en = shufflevector <8 x float> %wide.load, <8 x float> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eo = shufflevector <8 x float> %wide.load193, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.en, <16 x float> %i.eo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ei, align 4, !tbaa !21, !alias.scope !117, !noalias !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  br i1 %cmp.n, label %._crit_edge154, label %.lr.ph153.preheader194

.lr.ph153.preheader194:                           ; preds = %vector.memcheck, %.lr.ph153.preheader, %middle.block
  %indvars.iv159.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph153.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol

.lr.ph153.prol:                                   ; preds = %.lr.ph153.preheader194, %.lr.ph153.prol
  %indvars.iv159.prol = phi i64 [ %indvars.iv.next160.prol, %.lr.ph153.prol ], [ %indvars.iv159.ph, %.lr.ph153.preheader194 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph153.prol ], [ 0, %.lr.ph153.preheader194 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv159.prol
  %i.er = load float, ptr %i.eq, align 4, !tbaa !21 ; 2 uses
  %.idx.prol = shl nuw nsw i64 %indvars.iv159.prol, 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.prol ; 3 uses
  store float %i.er, ptr %i.es, align 4, !tbaa !21
  %indvars.iv.next160.prol = add nuw nsw i64 %indvars.iv159.prol, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !21
  %i.ev = fsub float %i.eu, %i.er
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store float %i.ev, ptr %i.ew, align 4, !tbaa !21
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv159.prol
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fa = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ey, i64 0
  store <2 x float> %i.fa, ptr %i.ez, align 4, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol, !llvm.loop !111

.lr.ph153.prol.loopexit:                          ; preds = %.lr.ph153.prol, %.lr.ph153.preheader194
  %indvars.iv159.unr = phi i64 [ %indvars.iv159.ph, %.lr.ph153.preheader194 ], [ %indvars.iv.next160.prol, %.lr.ph153.prol ]
  %i.fb = sub nsw i64 %indvars.iv159.ph, %i.ap
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.3, %.lr.ph153 ], [ %indvars.iv159.unr, %.lr.ph153.prol.loopexit ] ; 7 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv159
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !21 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv159, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 3 uses
  store float %i.fe, ptr %i.ff, align 4, !tbaa !21
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !21
  %i.fi = fsub float %i.fh, %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store float %i.fi, ptr %i.fj, align 4, !tbaa !21
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv159
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fl, i64 0
  store <2 x float> %i.fn, ptr %i.fm, align 4, !tbaa !21
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !21 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next160, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.1 ; 3 uses
  store float %i.fp, ptr %i.fq, align 4, !tbaa !21
  %indvars.iv.next160.1 = add nuw nsw i64 %indvars.iv159, 2 ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160.1
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !21
  %i.ft = fsub float %i.fs, %i.fp
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store float %i.ft, ptr %i.fu, align 4, !tbaa !21
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next160
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !21
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fw, i64 0
  store <2 x float> %i.fy, ptr %i.fx, align 4, !tbaa !21
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160.1
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !21 ; 2 uses
  %.idx.2 = shl nuw nsw i64 %indvars.iv.next160.1, 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.2 ; 3 uses
  store float %i.ga, ptr %i.gb, align 4, !tbaa !21
  %indvars.iv.next160.2 = add nuw nsw i64 %indvars.iv159, 3 ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !21
  %i.ge = fsub float %i.gd, %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store float %i.ge, ptr %i.gf, align 4, !tbaa !21
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next160.1
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gh, i64 0
  store <2 x float> %i.gj, ptr %i.gi, align 4, !tbaa !21
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160.2
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !21 ; 2 uses
  %.idx.3 = shl nuw nsw i64 %indvars.iv.next160.2, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.3 ; 3 uses
  store float %i.gl, ptr %i.gm, align 4, !tbaa !21
  %indvars.iv.next160.3 = add nuw nsw i64 %indvars.iv159, 4 ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next160.3
  %i.go = load float, ptr %i.gn, align 4, !tbaa !21
  %i.gp = fsub float %i.go, %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !21
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next160.2
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <2 x float> %i.gu, ptr %i.gt, align 4, !tbaa !21
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next160.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge154, label %.lr.ph153, !llvm.loop !112

._crit_edge154:                                   ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153, %middle.block
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %wide.trip.count
  %.pre164 = load float, ptr %.phi.trans.insert, align 4, !tbaa !21 ; 2 uses
  %i.gv = shl nuw nsw i32 %i.ak, 2
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gw ; 3 uses
  store float %.pre164, ptr %i.gx, align 4, !tbaa !21
  %i.gy = fneg float %.pre164
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store float %i.gy, ptr %i.gz, align 4, !tbaa !21
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %wide.trip.count
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hb, i64 0
  store <2 x float> %i.hd, ptr %i.hc, align 4, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge154, %._crit_edge
  ret void

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  %.pn115 = phi { ptr, i32 } [ %i.b, %bb.d ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn115
}

end_hunk_0
