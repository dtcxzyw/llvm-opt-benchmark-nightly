Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lda?download=true
inline.NumInlined: 969
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2cv23EigenvalueDecomposition6orthesEv:bb.a
bb.b:                                             ; preds = %.lr.ph224, %.loopexit
  %indvars.iv276 = phi i64 [ %i.if, %.lr.ph224 ], [ %indvars.iv.next277, %.loopexit ] ; 10 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv276
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !65
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -1 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv.next277 ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !48
  %i.ip = fcmp une double %i.io, 0.000000e+00
  br i1 %i.ip, label %.preheader158, label %.loopexit

.preheader158:                                    ; preds = %bb.b
  %.not.not206 = icmp slt i64 %indvars.iv276, %i.ih
  br i1 %.not.not206, label %.lr.ph208, label %.preheader157

.lr.ph208:                                        ; preds = %.preheader158
  %i.iq = load ptr, ptr %i.id, align 8, !tbaa !90
  br label %bb.e

.preheader157:                                    ; preds = %bb.e, %.preheader158
  %.not.not148220 = icmp slt i64 %indvars.iv276, %i.ig
  br i1 %.not.not148220, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader157
  %i.ir = load ptr, ptr %i.id, align 8, !tbaa !90 ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv276
  %i.it = load ptr, ptr %i.ie, align 8, !tbaa !87 ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge219.us, %.preheader.lr.ph
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %._crit_edge219.us ], [ %indvars.iv276, %.preheader.lr.ph ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv281 = phi i64 [ %indvars.iv276, %.preheader.us ], [ %indvars.iv.next282, %bb.c ] ; 3 uses
  %.0127210.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ja, %bb.c ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv281
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !48
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv281
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !65
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv287
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !48
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iz, double %.0127210.us) ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.jb = trunc nuw i64 %indvars.iv.next282 to i32
  %.not.not149.us = icmp sgt i32 %i.a, %i.jb
  br i1 %.not.not149.us, label %bb.c, label %._crit_edge213.us, !llvm.loop !331

bb.d:                                             ; preds = %._crit_edge213.us, %bb.d
  %indvars.iv284 = phi i64 [ %indvars.iv276, %._crit_edge213.us ], [ %indvars.iv.next285, %bb.d ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv284
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !48
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv284
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !65
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv287 ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !48
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jd, double %i.jh)
  store double %i.ji, ptr %i.jg, align 8, !tbaa !48
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv.next285 to i32
  %.not.not150.us = icmp sgt i32 %i.a, %i.jj
  br i1 %.not.not150.us, label %bb.d, label %._crit_edge219.us, !llvm.loop !332

._crit_edge213.us:                                ; preds = %bb.c
  %i.jk = load double, ptr %i.is, align 8, !tbaa !48
  %i.jl = fdiv double %i.ja, %i.jk
  %i.jm = load double, ptr %i.in, align 8, !tbaa !48
  %i.jn = fdiv double %i.jl, %i.jm
  br label %bb.d

._crit_edge219.us:                                ; preds = %bb.d
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.jo = trunc nuw i64 %indvars.iv.next288 to i32
  %.not.not148.us = icmp sgt i32 %i.a, %i.jo
  br i1 %.not.not148.us, label %.preheader.us, label %.loopexit, !llvm.loop !333

bb.e:                                             ; preds = %.lr.ph208, %bb.e
  %indvars.iv278 = phi i64 [ %indvars.iv276, %.lr.ph208 ], [ %indvars.iv.next279, %bb.e ]
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 4 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next279
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !65
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.next277
  %i.js = load double, ptr %i.jr, align 8, !tbaa !48
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.next279
  store double %i.js, ptr %i.jt, align 8, !tbaa !48
  %i.ju = trunc nuw i64 %indvars.iv.next279 to i32
  %.not.not = icmp sgt i32 %i.b, %i.ju
  br i1 %.not.not, label %bb.e, label %.preheader157, !llvm.loop !334

.loopexit:                                        ; preds = %._crit_edge219.us, %.preheader157, %bb.b
  %i.jv = icmp sgt i64 %indvars.iv276, 1
  br i1 %i.jv, label %bb.b, label %._crit_edge225, !llvm.loop !335
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv23EigenvalueDecomposition4hqr2Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !40     ; 17 uses
  %i.b = mul nuw nsw i32 %i.a, 1000
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv23EigenvalueDecomposition4hqr2Ev, ptr noundef nonnull @.str.1, i32 noundef 325) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !27
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.ci

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 56 uses
  %i.m = zext nneg i32 %i.a to i64                ; 4 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 9 uses
  %i.n = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader810.lr.ph.unr-lcssa:                    ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader810.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader810.lr.ph.unr-lcssa, %bb.g
  %indvars.iv942.epil.init = phi i64 [ 0, %bb.g ], [ %indvars.iv.next943.1, %.preheader810.lr.ph.unr-lcssa ] ; 2 uses
  %.0616814.epil.init = phi double [ 0.000000e+00, %bb.g ], [ %i.ao, %.preheader810.lr.ph.unr-lcssa ]
  %lcmp.mod1173 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1173)
  %i.p = trunc nuw nsw i64 %indvars.iv942.epil.init to i32
  %smax.epil = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.q = zext nneg i32 %smax.epil to i64
  %i.r = add nsw i64 %i.q, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv942.epil.init
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %i.r, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %.1617812.epil = phi double [ %.0616814.epil.init, %.lr.ph.epil.preheader ], [ %i.x, %bb.h ]
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !48
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %.1617812.epil, %i.w         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.epil, %i.m
  br i1 %i.y, label %bb.h, label %.preheader810.lr.ph, !llvm.loop !338

.preheader810.lr.ph:                              ; preds = %bb.h, %.preheader810.lr.ph.unr-lcssa
  %.lcssa1170.lcssa = phi double [ %i.ao, %.preheader810.lr.ph.unr-lcssa ], [ %i.x, %bb.h ] ; 4 uses
  %i.z = add nsw i32 %i.a, -1                     ; 5 uses
  %i.aa = fcmp olt double %.lcssa1170.lcssa, f0x3E80000000000000
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %xtraiter1193 = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i64 %i.n, 0
  %unroll_iter1197 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod1195.not = icmp eq i64 %xtraiter1193, 0
  %lcmp.mod1196 = trunc i32 %i.a to i1
  br label %.preheader810

.lr.ph:                                           ; preds = %._crit_edge.1, %.new
  %indvars.iv942 = phi i64 [ 0, %.new ], [ %indvars.iv.next943.1, %._crit_edge.1 ] ; 5 uses
  %.0616814 = phi double [ 0.000000e+00, %.new ], [ %i.ao, %._crit_edge.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.af = trunc nuw nsw i64 %indvars.iv942 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = zext nneg i32 %smax to i64
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv942
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv942
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %6, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv942, %._crit_edge ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %.1617812.1 = phi double [ %i.as, %._crit_edge ], [ %i.ao, %bb.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !48
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am)
  %i.ao = fadd double %.1617812.1, %i.an          ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next.1, %i.m
  br i1 %7, label %bb.i, label %._crit_edge.1, !llvm.loop !338

._crit_edge.1:                                    ; preds = %bb.i
  %indvars.iv.next943.1 = add nuw nsw i64 %indvars.iv942, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader810.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !339

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.1617812 = phi double [ %.0616814, %.lr.ph ], [ %i.as, %bb.j ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !48
  %i.ar = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.as = fadd double %.1617812, %i.ar            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.at, label %bb.j, label %._crit_edge, !llvm.loop !338

.preheader810:                                    ; preds = %.preheader810.lr.ph, %.thread787
  %.0609879 = phi i32 [ 0, %.preheader810.lr.ph ], [ %.1610, %.thread787 ] ; 3 uses
  %.0618878 = phi double [ 0.000000e+00, %.preheader810.lr.ph ], [ %.4622, %.thread787 ] ; 9 uses
  %.0774876 = phi i32 [ %i.z, %.preheader810.lr.ph ], [ %.1775, %.thread787 ] ; 27 uses
  br i1 %i.aa, label %.split.thread, label %.preheader810.split.preheader

.preheader810.split.preheader:                    ; preds = %.preheader810
  %i.au = icmp eq i32 %.0774876, 0
  br i1 %i.au, label %.split, label %.lr.ph1146

.lr.ph1146:                                       ; preds = %.preheader810.split.preheader
  %i.av = zext nneg i32 %.0774876 to i64
  br label %bb.k

.preheader810.split:                              ; preds = %bb.k
  %i.aw = icmp eq i64 %i.ax, 0
  br i1 %i.aw, label %.split, label %bb.k

bb.k:                                             ; preds = %.lr.ph1146, %.preheader810.split
  %indvars.iv9451145 = phi i64 [ %i.av, %.lr.ph1146 ], [ %i.ax, %.preheader810.split ] ; 4 uses
  %i.ax = add nsw i64 %indvars.iv9451145, -1      ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !48
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.bb)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv9451145
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv9451145
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !48
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fadd double %i.bc, %i.bh                ; 2 uses
  %i.bj = fcmp oeq double %i.bi, 0.000000e+00
  %.0605 = select i1 %i.bj, double %.lcssa1170.lcssa, double %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ax
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !48
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fmul double %.0605, f0x3CB0000000000000
  %i.bo = fcmp olt double %i.bm, %i.bn
  br i1 %i.bo, label %.split.split.loop.exit1121, label %.preheader810.split

.split.split.loop.exit1121:                       ; preds = %bb.k
  %i.bp = trunc nuw nsw i64 %indvars.iv9451145 to i32
  br label %.split

.split:                                           ; preds = %.preheader810.split, %.preheader810.split.preheader, %.split.split.loop.exit1121
  %.0606.lcssa.split = phi i32 [ %i.bp, %.split.split.loop.exit1121 ], [ 0, %.preheader810.split.preheader ], [ 0, %.preheader810.split ] ; 10 uses
  %i.bq = icmp eq i32 %.0606.lcssa.split, %.0774876
  br i1 %i.bq, label %.split.thread, label %bb.l

.split.thread:                                    ; preds = %.preheader810, %.split
  %i.br = zext nneg i32 %.0774876 to i64          ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !48
  %i.bw = fadd double %.0618878, %i.bv            ; 2 uses
  store double %i.bw, ptr %i.bu, align 8, !tbaa !48
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.br
  store double %i.bw, ptr %i.by, align 8, !tbaa !48
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.br
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !48
  %i.cb = add nsw i32 %.0774876, -1
  br label %.thread787

bb.l:                                             ; preds = %.split
  %i.cc = add nsw i32 %.0774876, -1               ; 3 uses
  %i.cd = icmp eq i32 %.0606.lcssa.split, %i.cc
  %i.ce = zext nneg i32 %.0774876 to i64          ; 16 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ce ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !65 ; 8 uses
  br i1 %i.cd, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ch = zext nneg i32 %.0606.lcssa.split to i64 ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ch
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ce
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !48
  %i.co = fmul double %i.cj, %i.cn                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !48
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce ; 4 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = fsub double %i.cq, %i.cs
  %i.cu = fmul double %i.ct, 5.000000e-01         ; 5 uses
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.co) ; 2 uses
  %i.cw = tail call noundef double @llvm.fabs.f64(double %i.cv)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.cw) ; 4 uses
  %i.cx = fadd double %.0618878, %i.cs
  store double %i.cx, ptr %i.cr, align 8, !tbaa !48
  %i.cy = load double, ptr %i.cp, align 8, !tbaa !48
  %i.cz = fadd double %.0618878, %i.cy
  store double %i.cz, ptr %i.cp, align 8, !tbaa !48
  %i.da = load double, ptr %i.cr, align 8, !tbaa !48 ; 3 uses
  %i.db = fcmp ult double %i.cv, 0.000000e+00
  br i1 %i.db, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = fcmp ult double %i.cu, 0.000000e+00
  %i.dd = fneg double %sqrt
  %.0604.p = select i1 %i.dc, double %i.dd, double %sqrt
  %.0604 = fadd double %i.cu, %.0604.p            ; 5 uses
  %i.de = fadd double %i.da, %.0604               ; 2 uses
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.ce ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  store double %i.de, ptr %i.dh, align 8, !tbaa !48
  %i.di = fcmp une double %.0604, 0.000000e+00
  %i.dj = fdiv double %i.co, %.0604
  %i.dk = fsub double %i.da, %i.dj
  %storemerge792 = select i1 %i.di, double %i.dk, double %i.de
  store double %storemerge792, ptr %i.dg, align 8, !tbaa !48
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.ce
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8
  %i.do = getelementptr i8, ptr %i.cr, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  %i.dp = load double, ptr %i.do, align 8, !tbaa !48 ; 2 uses
  %i.dq = tail call noundef double @llvm.fabs.f64(double %i.dp)
  %i.dr = tail call noundef double @llvm.fabs.f64(double %.0604)
  %i.ds = fadd double %i.dr, %i.dq
  %i.dt = insertelement <2 x double> poison, double %.0604, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dp, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fdiv <2 x double> %i.du, %i.dw          ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.dx, %i.dx
  %i.dy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dz = extractelement <2 x double> %i.dx, i64 1 ; 2 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.dy)
  %sqrt793 = tail call double @llvm.sqrt.f64(double %i.ea)
  %i.eb = insertelement <2 x double> poison, double %sqrt793, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fdiv <2 x double> %i.dx, %i.ec          ; 6 uses
  %.not931 = icmp sgt i32 %.0774876, %i.a
  br i1 %.not931, label %.lr.ph872.preheader, label %.lr.ph869

.lr.ph869:                                        ; preds = %bb.n
  %i.ee = getelementptr i8, ptr %i.cf, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !65 ; 4 uses
  %i.eg = zext i32 %.0606.lcssa.split to i64      ; 6 uses
  %i.eh = xor i32 %.0606.lcssa.split, -1
  %i.ei = add i32 %i.a, %i.eh                     ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.ei, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph869
  %i.el = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.ef, i64 %i.el
  %scevgep1147 = getelementptr i8, ptr %i.ef, i64 8
  %i.em = xor i32 %.0606.lcssa.split, -1
  %i.en = add i32 %i.a, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eg, %i.eo
  %i.eq = shl nuw nsw i64 %i.ep, 3                ; 2 uses
  %scevgep1148 = getelementptr i8, ptr %scevgep1147, i64 %i.eq
  %scevgep1149 = getelementptr i8, ptr %i.cg, i64 %i.el
  %scevgep1150 = getelementptr i8, ptr %i.cg, i64 8
  %scevgep1151 = getelementptr i8, ptr %scevgep1150, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep1151
  %bound1 = icmp ult ptr %scevgep1149, %scevgep1148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 8589934590              ; 3 uses
  %i.er = add nuw nsw i64 %n.vec, %i.eg
  %broadcast.splat = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat1153 = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add nuw i64 %index, %i.eg               ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.es ; 2 uses
end_hunk_0
