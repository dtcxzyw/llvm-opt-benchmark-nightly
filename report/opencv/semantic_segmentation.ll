inline.NumInlined: 2929
inline.NumDeleted: 1568
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6custom17OCVPostProcessing3runERKN2cv3MatES4_RS2_:bb.a
          cleanup
  %i.h = load ptr, ptr %21, align 8, !tbaa !15    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0
  %i.o = load i32, ptr %i.n, align 4, !tbaa !149
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.q = icmp sgt i32 %i.e, 1
  br i1 %i.q, label %_ZNK2cv8MatShapeixEm.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %.noexc36 unwind label %bb.aa

.noexc36:                                         ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.38, i32 noundef 103) #26
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc36
  unreachable

bb.n:                                             ; preds = %.noexc36
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %17, align 8, !tbaa !15    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.body

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !149  ; 4 uses
  %.not.i = icmp eq i32 %i.e, 2
  br i1 %.not.i, label %bb.o, label %_ZNK2cv8MatShapeixEm.exit52.i

bb.o:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc39 unwind label %bb.aa

.noexc39:                                         ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.38, i32 noundef 103) #26
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc39
  unreachable

bb.q:                                             ; preds = %.noexc39
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i: ; preds = %bb.q
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.body

_ZNK2cv8MatShapeixEm.exit52.i:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !149 ; 6 uses
  %i.ah = icmp samesign ugt i32 %i.e, 3
  br i1 %i.ah, label %_ZNK2cv8MatShapeixEm.exit58.i, label %bb.r

bb.r:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc40 unwind label %bb.aa

.noexc40:                                         ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.38, i32 noundef 103) #26
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc40
  unreachable

bb.t:                                             ; preds = %.noexc40
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i: ; preds = %bb.t
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.body

_ZNK2cv8MatShapeixEm.exit58.i:                    ; preds = %_ZNK2cv8MatShapeixEm.exit52.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !149 ; 6 uses
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef %i.ag, i32 noundef %i.ap, i32 noundef 0)
          to label %.noexc41 unwind label %bb.aa

.noexc41:                                         ; preds = %_ZNK2cv8MatShapeixEm.exit58.i
  %i.aq = load i32, ptr %1, align 8, !tbaa !436
  %i.ar = and i32 %i.aq, 31
  %i.as = icmp eq i32 %i.ar, 5
  br i1 %i.as, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.noexc41
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_, ptr noundef nonnull @.str.12, i32 noundef 96) #26
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33

bb.y:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.y
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.at, %bb.x ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ %i.au, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.body

bb.z:                                             ; preds = %.noexc41
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !427 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !427 ; 2 uses
  %i.be = icmp sgt i32 %i.ag, 0
  %i.bf = icmp sgt i32 %i.ap, 0
  %or.cond.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i, label %.preheader59.lr.ph.split.i, label %_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit

.preheader59.lr.ph.split.i:                       ; preds = %bb.z
  %i.bg = icmp sgt i32 %i.y, 0
  %i.bh = zext nneg i32 %i.ap to i64              ; 3 uses
  %wide.trip.count81.i = zext nneg i32 %i.ag to i64 ; 2 uses
  br i1 %i.bg, label %.preheader59.us.preheader.i, label %.preheader59.preheader.i

.preheader59.preheader.i:                         ; preds = %.preheader59.lr.ph.split.i
  %29 = mul nuw nsw i64 %i.bh, %wide.trip.count81.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 %29, i1 false), !tbaa !17
  br label %_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit

.preheader59.us.preheader.i:                      ; preds = %.preheader59.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %i.y to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bi = icmp eq i32 %i.y, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i32 %i.y to i1
  br label %.preheader59.us.i

.preheader59.us.i:                                ; preds = %._crit_edge64.split.us.us.i, %.preheader59.us.preheader.i
  %indvars.iv78.i = phi i64 [ 0, %.preheader59.us.preheader.i ], [ %indvars.iv.next79.i, %._crit_edge64.split.us.us.i ] ; 3 uses
  %i.bj = mul nuw nsw i64 %indvars.iv78.i, %i.bh
  %i.bk = trunc nuw nsw i64 %indvars.iv78.i to i32 ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader59.us.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %._crit_edge.us.us.i ], [ 0, %.preheader59.us.i ] ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv73.i to i32 ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.preheader.us.us.i.new

.preheader.us.us.i.new:                           ; preds = %.preheader.us.us.i, %.preheader.us.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ] ; 3 uses
  %.03761.us.us.i = phi i32 [ %.1.us.us.i.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ]
  %.03860.us.us.i = phi double [ %.139.us.us.i.1, %.preheader.us.us.i.new ], [ 0.000000e+00, %.preheader.us.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ]
  %i.bm = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.bn = mul i32 %i.ag, %i.bm
  %i.bo = add nuw i32 %i.bn, %i.bk
  %i.bp = mul i32 %i.bo, %i.ap
  %i.bq = add nsw i32 %i.bp, %i.bl
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !327
  %i.bu = fpext float %i.bt to double             ; 2 uses
  %i.bv = fcmp olt double %.03860.us.us.i, %i.bu  ; 2 uses
  %.139.us.us.i = select i1 %i.bv, double %i.bu, double %.03860.us.us.i ; 2 uses
  %.1.us.us.i = select i1 %i.bv, i32 %i.bm, i32 %.03761.us.us.i
  %i.bw = trunc i64 %indvars.iv.i to i32
  %i.bx = or disjoint i32 %i.bw, 1                ; 2 uses
  %i.by = mul i32 %i.ag, %i.bx
  %i.bz = add nuw i32 %i.by, %i.bk
  %i.ca = mul i32 %i.bz, %i.ap
  %i.cb = add nsw i32 %i.ca, %i.bl
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !327
  %i.cf = fpext float %i.ce to double             ; 2 uses
  %i.cg = fcmp olt double %.139.us.us.i, %i.cf    ; 2 uses
  %.139.us.us.i.1 = select i1 %i.cg, double %i.cf, double %.139.us.us.i ; 2 uses
  %.1.us.us.i.1 = select i1 %i.cg, i32 %i.bx, i32 %.1.us.us.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader.us.us.i.new, !llvm.loop !437

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.i.unr-lcssa ]
  %.03761.us.us.i.epil.init = phi i32 [ 0, %.preheader.us.us.i ], [ %.1.us.us.i.1, %._crit_edge.us.us.i.unr-lcssa ]
  %.03860.us.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %.139.us.us.i.1, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod115)
  %i.ch = trunc i64 %indvars.iv.i.epil.init to i32 ; 2 uses
  %i.ci = mul i32 %i.ag, %i.ch
  %i.cj = add nuw i32 %i.ci, %i.bk
  %i.ck = mul i32 %i.cj, %i.ap
  %i.cl = add nsw i32 %i.ck, %i.bl
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !327
  %i.cp = fpext float %i.co to double
  %i.cq = fcmp olt double %.03860.us.us.i.epil.init, %i.cp
  %.1.us.us.i.epil = select i1 %i.cq, i32 %i.ch, i32 %.03761.us.us.i.epil.init
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  %.1.us.us.i.lcssa = phi i32 [ %.1.us.us.i.1, %._crit_edge.us.us.i.unr-lcssa ], [ %.1.us.us.i.epil, %.epil.preheader ]
  %i.cr = trunc i32 %.1.us.us.i.lcssa to i8
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv73.i
  store i8 %i.cr, ptr %gep.i, align 1, !tbaa !17
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %i.bh
  br i1 %exitcond77.not.i, label %._crit_edge64.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !438

._crit_edge64.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count81.i
  br i1 %exitcond82.not.i, label %_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit, label %.preheader59.us.i, !llvm.loop !439

bb.aa:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit58.i, %bb.r, %bb.o, %bb.l, %bb.g, %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.j
  %i.ct = load i32, ptr %1, align 8, !tbaa !436
  %i.cu = and i32 %i.ct, 31
  %.not = icmp eq i32 %i.cu, 4
  br i1 %.not, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull @.str.36)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #26
          to label %bb.bp unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cv) #27
  br label %.body

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.cx = icmp samesign ult i64 %.023, %spec.select.i
  br i1 %i.cx, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc47 unwind label %bb.aq

.noexc47:                                         ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.38, i32 noundef 103) #26
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc47
  unreachable

bb.ai:                                            ; preds = %.noexc47
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.ai
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !17
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body48

bb.aj:                                            ; preds = %bb.af
  %i.de = icmp samesign ult i64 %.022, %spec.select.i
  br i1 %i.de, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc56 unwind label %bb.aq

.noexc56:                                         ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.38, i32 noundef 103) #26
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc56
  unreachable

bb.am:                                            ; preds = %.noexc56
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.am
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !17
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.body48

bb.an:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.023
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !149
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.022
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !427
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef %i.dm, i32 noundef %i.do, i32 noundef 4, ptr noundef %i.dq, i64 noundef 0)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 0, ptr %i.ds, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !267
  store ptr %23, ptr %i.dr, align 8, !tbaa !270
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit

bb.aq:                                            ; preds = %bb.ak, %bb.ag, %bb.an
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.ar:                                            ; preds = %bb.ao
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #27
  br label %.body48

.body48:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, %bb.aq, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.du, %bb.ar ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45 ], [ %i.dt, %bb.aq ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %.body

_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit: ; preds = %._crit_edge64.split.us.us.i, %.preheader59.preheader.i, %bb.z, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #27
  %i.dv = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !435
  %i.dx = getelementptr inbounds nuw i8, ptr %23, i64 84
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !149 ; 3 uses
  %i.dz = icmp sgt i32 %i.dw, 1
  br i1 %i.dz, label %_ZNK2cv8MatShapeixEm.exit.i65, label %bb.as

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc75 unwind label %bb.bm

.noexc75:                                         ; preds = %bb.as
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.38, i32 noundef 103) #26
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.noexc75
  unreachable

bb.au:                                            ; preds = %.noexc75
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.au
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !17
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i61: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body76

_ZNK2cv8MatShapeixEm.exit.i65:                    ; preds = %_ZN12_GLOBAL__N_114probsToClassesERKN2cv3MatERS1_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !149 ; 3 uses
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef %i.dy, i32 noundef %i.eh, i32 noundef 64)
          to label %.noexc78 unwind label %bb.bm

.noexc78:                                         ; preds = %_ZNK2cv8MatShapeixEm.exit.i65
  %i.ei = load i32, ptr %23, align 8, !tbaa !436
  %i.ej = and i32 %i.ei, 4095
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %.noexc78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_115classesToColorsERKN2cv3MatERS1_, ptr noundef nonnull @.str.12, i32 noundef 76) #26
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i66

bb.az:                                            ; preds = %bb.aw
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68: ; preds = %bb.az
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !17
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i66: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68, %bb.ay
  %.pn.i67 = phi { ptr, i32 } [ %i.el, %bb.ay ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68 ], [ %i.em, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body76

bb.ba:                                            ; preds = %.noexc78
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !427
  %i.eu = icmp sgt i32 %i.dy, 0
  br i1 %i.eu, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %bb.ba
  %i.ev = icmp sgt i32 %i.eh, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %26, i64 128
  br i1 %i.ev, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ez = zext nneg i32 %i.eh to i64              ; 2 uses
  %wide.trip.count38.i = zext nneg i32 %i.dy to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv35.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next36.i, %._crit_edge.i ] ; 3 uses
  %i.fa = mul nuw nsw i64 %indvars.iv35.i, %i.ez
  %invariant.gep.i70 = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fa
  br label %bb.bb

._crit_edge.i:                                    ; preds = %_ZN2cv3VecIhLi3EEC2ESt16initializer_listIhE.exit.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !440

bb.bb:                                            ; preds = %_ZN2cv3VecIhLi3EEC2ESt16initializer_listIhE.exit.i, %.preheader.i
  %indvars.iv.i71 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i73, %_ZN2cv3VecIhLi3EEC2ESt16initializer_listIhE.exit.i ] ; 3 uses
  %gep.i72 = getelementptr inbounds nuw i8, ptr %invariant.gep.i70, i64 %indvars.iv.i71
  %i.fb = load i8, ptr %gep.i72, align 1, !tbaa !17
  %i.fc = zext i8 %i.fb to i64                    ; 2 uses
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6colors, i64 8), align 8, !tbaa !441
  %i.fe = load ptr, ptr @_ZL6colors, align 8, !tbaa !19 ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 3
  %i.fj = icmp ugt i64 %i.fi, %i.fc
  br i1 %i.fj, label %bb.bc, label %_ZN2cv3VecIhLi3EEC2ESt16initializer_listIhE.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.fk = getelementptr inbounds nuw [3 x i8], ptr %i.fe, i64 %i.fc ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !17
  br label %_ZN2cv3VecIhLi3EEC2ESt16initializer_listIhE.exit.i

_ZN2cv3VecIhLi3EEC2ESt16initializer_listIhE.exit.i: ; preds = %bb.bc, %bb.bb
  %.sroa.040.0.i = phi i8 [ %i.fl, %bb.bc ], [ 0, %bb.bb ]
  %.sroa.541.0.i = phi i8 [ %i.fn, %bb.bc ], [ 0, %bb.bb ]
  %.sroa.7.0.i = phi i8 [ %i.fp, %bb.bc ], [ 0, %bb.bb ]
  %i.fq = load i32, ptr %i.ew, align 4, !tbaa !442
  %i.fr = icmp slt i32 %i.fq, 2
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !427
  %i.ft = load i64, ptr %i.ey, align 8
  %i.fu = mul i64 %i.ft, %indvars.iv35.i
  %.sink.idx.i.i = select i1 %i.fr, i64 0, i64 %i.fu
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sink.idx.i.i
  %i.fv = getelementptr inbounds nuw [3 x i8], ptr %.sink.i.i, i64 %indvars.iv.i71 ; 3 uses
  store i8 %.sroa.040.0.i, ptr %i.fv, align 1
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store i8 %.sroa.541.0.i, ptr %.sroa.541.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 1
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %i.ez
  br i1 %exitcond.not.i74, label %._crit_edge.i, label %bb.bb, !llvm.loop !443

.loopexit:                                        ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.fw = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.fw, align 8, !tbaa !272
  %i.fx = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 0, ptr %i.fx, align 4, !tbaa !273
  store i32 16842752, ptr %27, align 8, !tbaa !267
  %i.fy = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %26, ptr %i.fy, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.fz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %i.ga, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !267
  store ptr %2, ptr %i.fz, align 8, !tbaa !270
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !435 ; 6 uses
  %i.gd = icmp slt i32 %i.gc, 3
  br i1 %i.gd, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc83 unwind label %bb.bn

.noexc83:                                         ; preds = %bb.bd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.38, i32 noundef 109) #26
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc83
  unreachable

bb.bf:                                            ; preds = %.noexc83
  %i.ge = landingpad { ptr, i32 }
          cleanup
end_hunk_0
