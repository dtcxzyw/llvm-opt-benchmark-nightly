Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/downhill_simplex?download=true
inline.NumInlined: 215
inline.NumDeleted: 114
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv18DownhillSolverImpl20createInitialSimplexERKNS_3MatERS1_S4_:bb.a
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.prol
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.prol
  store double %i.bu, ptr %i.bv, align 8, !tbaa !48
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !100

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bz = load double, ptr %i.by, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  store double %i.bz, ptr %i.ca, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !48
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next
  store double %i.cc, ptr %i.cd, align 8, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.1
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !48
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.1
  store double %i.cf, ptr %i.cg, align 8, !tbaa !48
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.2
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !48
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.2
  store double %i.ci, ptr %i.cj, align 8, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !102

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ck = add nsw i64 %indvars.iv80, -1           ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !48
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ck ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48
  %i.cp = call double @llvm.fmuladd.f64(double %i.cm, double 5.000000e-01, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !48
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.lr.ph.preheader, label %.lr.ph.us, !llvm.loop !103

.lr.ph.preheader:                                 ; preds = %._crit_edge.us
  %wide.trip.count88 = zext nneg i32 %i.b to i64
  %min.iters.check100 = icmp ult i32 %i.b, 6
  br i1 %min.iters.check100, label %.lr.ph.preheader114, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph.preheader
  %i.cq = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.cq
  %scevgep98 = getelementptr i8, ptr %i.bj, i64 %i.cq
  %bound0 = icmp ult ptr %i.bh, %scevgep98
  %bound1 = icmp ult ptr %i.bj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader114, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck97
  %n.vec102 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index104 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load105 = load <2 x double>, ptr %i.cr, align 8, !tbaa !48, !alias.scope !104
  %wide.load106 = load <2 x double>, ptr %i.cs, align 8, !tbaa !48, !alias.scope !104
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index104 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load107 = load <2 x double>, ptr %i.ct, align 8, !tbaa !48, !alias.scope !107, !noalias !104
  %wide.load108 = load <2 x double>, ptr %i.cu, align 8, !tbaa !48, !alias.scope !107, !noalias !104
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load105, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load107)
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load106, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load108)
  store <2 x double> %i.cv, ptr %i.ct, align 8, !tbaa !48, !alias.scope !107, !noalias !104
  store <2 x double> %i.cw, ptr %i.cu, align 8, !tbaa !48, !alias.scope !107, !noalias !104
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.cx, label %middle.block110, label %vector.body103, !llvm.loop !109

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %n.vec102, %wide.trip.count
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %vector.memcheck97, %.lr.ph.preheader, %middle.block110
  %indvars.iv85.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block110 ] ; 5 uses
  %xtraiter115 = and i64 %wide.trip.count, 1
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader114
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv85.ph
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv85.ph ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !48
  %i.dc = call double @llvm.fmuladd.f64(double %i.cz, double -5.000000e-01, double %i.db)
  store double %i.dc, ptr %i.da, align 8, !tbaa !48
  %indvars.iv.next86.prol = or disjoint i64 %indvars.iv85.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader114
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %.lr.ph.preheader114 ], [ %indvars.iv.next86.prol, %.lr.ph.prol ]
  %i.dd = add nsw i64 %wide.trip.count, -1
  %i.de = icmp eq i64 %indvars.iv85.ph, %i.dd
  br i1 %i.de, label %._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #17
  br label %bb.ah

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.1, %.lr.ph ], [ %indvars.iv85.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv85
  %i.di = load double, ptr %i.dh, align 8, !tbaa !48
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv85 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !48
  %i.dl = call double @llvm.fmuladd.f64(double %i.di, double -5.000000e-01, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !48
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next86
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !48
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next86 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !48
  %i.dq = call double @llvm.fmuladd.f64(double %i.dn, double -5.000000e-01, double %i.dp)
  store double %i.dq, ptr %i.do, align 8, !tbaa !48
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %indvars.iv.next86.1, %wide.trip.count88
  br i1 %exitcond89.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block110, %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn59.pn = phi { ptr, i32 } [ %i.dg, %bb.ag ], [ %i.df, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.n, %bb.k
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %bb.ah ], [ %i.y, %bb.k ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn53, %bb.n ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn59.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef double @_ZN2cv18DownhillSolverImpl20innerDownhillSimplexERNS_3MatEddRii(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, double noundef %2, double noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.9", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.9", align 1 ; 3 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.9", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 1, i32 noundef %i.b, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 1, i32 noundef %i.b, i32 noundef 6)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.c = add i32 %i.b, 1                          ; 8 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 1, i32 noundef %i.c, i32 noundef 6)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 16 uses
  store i32 %i.c, ptr %4, align 4, !tbaa !27
  %.not320 = icmp slt i32 %i.b, 0                 ; 3 uses
  br i1 %.not320, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit ] ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.j = load i64, ptr %i.g, align 8, !tbaa !87
  %i.k = mul i64 %i.j, %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.l)
          to label %.noexc unwind label %.loopexit288, !inline_history !111 ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.r = call double @llvm.fabs.f64(double %i.q)
  %or.cond.i = fcmp ueq double %i.r, +inf
  br i1 %or.cond.i, label %bb.e, label %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc215 unwind label %.loopexit.split-lp289

.noexc215:                                        ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl6calc_fEPKd, ptr noundef nonnull @.str.1, i32 noundef 415) #18
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc215
  unreachable

bb.g:                                             ; preds = %.noexc215
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %12, align 8, !tbaa !52    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body

_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit:       ; preds = %.noexc
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.q, ptr %i.y, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !112

bb.h:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.i:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit288:                                     ; preds = %bb.d
  %lpad.loopexit290 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp289:                            ; preds = %bb.e, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !72  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !72
  %i.ai = icmp eq i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.ak, 1
  %or.cond.i216 = select i1 %i.ai, i1 %i.al, i1 false
  br i1 %or.cond.i216, label %.preheader31.i, label %bb.j

.preheader31.i:                                   ; preds = %._crit_edge
  %i.am = icmp sgt i32 %i.ad, 0
  br i1 %i.am, label %.preheader.i, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc220 unwind label %.loopexit.split-lp289

.noexc220:                                        ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_, ptr noundef nonnull @.str.1, i32 noundef 218) #18
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc220
  unreachable

bb.l:                                             ; preds = %.noexc220
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i218: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.preheader.i:                                     ; preds = %.preheader31.i
  %i.at = zext nneg i32 %i.ad to i64              ; 7 uses
  %i.au = shl nuw nsw i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.au, i1 false), !tbaa !48
  %i.av = icmp sgt i32 %i.ac, 0
  br i1 %i.av, label %.lr.ph34.preheader.i, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !87 ; 3 uses
  %wide.trip.count43.i = zext nneg i32 %i.ac to i64 ; 2 uses
  %i.ba = shl nuw nsw i64 %i.at, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ba
  %i.bb = add nsw i64 %wide.trip.count43.i, -1
  %i.bc = mul i64 %i.az, %i.bb
  %i.bd = getelementptr i8, ptr %i.ax, i64 %i.bc
  %scevgep531 = getelementptr i8, ptr %i.bd, i64 %i.ba
  %min.iters.check = icmp ult i32 %i.ad, 4
  %bound0 = icmp ult ptr %i.af, %scevgep531
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.az, 0
  %i.be = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.at, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %._crit_edge.i, %.lr.ph34.preheader.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph34.preheader.i ], [ %indvars.iv.next41.i, %._crit_edge.i ] ; 2 uses
  %i.bf = mul i64 %indvars.iv40.i, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bf ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.be
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph34.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph34.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <2 x double>, ptr %i.bh, align 8, !tbaa !48, !alias.scope !113
  %wide.load532 = load <2 x double>, ptr %i.bi, align 8, !tbaa !48, !alias.scope !113
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load533 = load <2 x double>, ptr %i.bj, align 8, !tbaa !48, !alias.scope !116, !noalias !113
  %wide.load534 = load <2 x double>, ptr %i.bk, align 8, !tbaa !48, !alias.scope !116, !noalias !113
  %i.bl = fadd <2 x double> %wide.load, %wide.load533
  %i.bm = fadd <2 x double> %wide.load532, %wide.load534
  store <2 x double> %i.bl, ptr %i.bj, align 8, !tbaa !48, !alias.scope !116, !noalias !113
  store <2 x double> %i.bm, ptr %i.bk, align 8, !tbaa !48, !alias.scope !116, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph34.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph34.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i.prol
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.prol ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !48
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !48
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !119

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bt = sub nsw i64 %indvars.iv.i.ph, %i.at
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48
  %i.bz = fadd double %i.bw, %i.by
  store double %i.bz, ptr %i.bx, align 8, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !48
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !48
  %i.ce = fadd double %i.cb, %i.cd
  store double %i.ce, ptr %i.cc, align 8, !tbaa !48
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !48
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !48
  %i.cj = fadd double %i.cg, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !tbaa !48
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !48
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !48
  %i.co = fadd double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !48
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.at
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !120

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit, label %.lr.ph34.i, !llvm.loop !121

_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit: ; preds = %._crit_edge.i, %.preheader31.i, %.preheader.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cq = icmp sgt i32 %i.b, 0                    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count399 = zext i32 %i.c to i64
  %wide.trip.count404 = zext i32 %i.c to i64
  %wide.trip.count415 = zext i32 %i.b to i64      ; 8 uses
  %wide.trip.count409 = zext i32 %i.c to i64
  %wide.trip.count430 = zext i32 %i.c to i64
  %wide.trip.count425 = zext nneg i32 %i.b to i64
  %i.cv = add nsw i64 %wide.trip.count409, -1     ; 3 uses
  %i.cw = add nsw i64 %wide.trip.count415, -1     ; 2 uses
  %xtraiter592 = and i64 %i.cv, 1
  %i.cx = icmp eq i32 %i.c, 2
  %unroll_iter = and i64 %i.cv, -2
  %lcmp.mod593.not = icmp eq i64 %xtraiter592, 0
  %lcmp.mod596 = trunc i64 %i.cv to i1
  %xtraiter597 = and i64 %wide.trip.count415, 1
  %i.cy = icmp eq i64 %i.cw, 0
  %unroll_iter600 = and i64 %wide.trip.count415, 2147483646
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  %lcmp.mod599 = trunc i32 %i.b to i1
  %min.iters.check557 = icmp ult i32 %i.b, 4
  %n.vec559 = and i64 %wide.trip.count415, 2147483644 ; 3 uses
  %cmp.n566 = icmp eq i64 %n.vec559, %wide.trip.count415
  br label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264

_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264: ; preds = %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264.backedge, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit
  %i.cz = load double, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  %i.da = load double, ptr %i.cp, align 8, !tbaa !48
  %i.db = fcmp ule double %i.cz, %i.da            ; 2 uses
  %. = zext i1 %i.db to i32                       ; 2 uses
  %not. = xor i1 %i.db, true
  %.210 = zext i1 %not. to i32                    ; 2 uses
  br i1 %.not320, label %..loopexit284_crit_edge, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264, %bb.n
  %indvars.iv396 = phi i64 [ %indvars.iv.next397, %bb.n ], [ 0, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ] ; 4 uses
  %.1156326 = phi i32 [ %.2, %bb.n ], [ %.210, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ] ; 2 uses
  %.1158325 = phi i32 [ %.2159, %bb.n ], [ %., %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ] ; 3 uses
  %.0160324 = phi i32 [ %.1161, %bb.n ], [ 0, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv396
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !48 ; 3 uses
  %i.de = zext nneg i32 %.0160324 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48
  %i.dh = fcmp ugt double %i.dd, %i.dg
  %i.di = trunc nuw nsw i64 %indvars.iv396 to i32 ; 3 uses
  %.1161 = select i1 %i.dh, i32 %.0160324, i32 %i.di ; 6 uses
  %i.dj = zext i32 %.1158325 to i64               ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !48
  %i.dm = fcmp ogt double %i.dd, %i.dl
  br i1 %i.dm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph328
  %i.dn = sext i32 %.1156326 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !48
  %i.dq = fcmp ule double %i.dd, %i.dp
  %.not205 = icmp eq i64 %indvars.iv396, %i.dj
  %or.cond = or i1 %i.dq, %.not205
  %spec.select = select i1 %or.cond, i32 %.1156326, i32 %i.di
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph328
  %.2159 = phi i32 [ %.1158325, %bb.m ], [ %i.di, %.lr.ph328 ] ; 7 uses
  %.2 = phi i32 [ %spec.select, %bb.m ], [ %.1158325, %.lr.ph328 ] ; 7 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %._crit_edge329, label %.lr.ph328, !llvm.loop !122

._crit_edge329:                                   ; preds = %bb.n
  %.not190 = icmp eq i32 %.2159, %.2
  br i1 %.not190, label %bb.o, label %bb.t

bb.o:                                             ; preds = %._crit_edge329
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl20innerDownhillSimplexERNS_3MatEddRii, ptr noundef nonnull @.str.1, i32 noundef 310) #18
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !26
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.r ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ds, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %.body

bb.t:                                             ; preds = %._crit_edge329
  %i.dy = icmp ne i32 %.1161, %.2
  %i.dz = icmp ne i32 %.1161, %.2159
  %or.cond211.not368 = and i1 %i.dy, %i.dz
  br i1 %or.cond211.not368, label %..loopexit284_crit_edge, label %.lr.ph334

..loopexit284_crit_edge:                          ; preds = %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264, %bb.t
  %.0160.lcssa462474 = phi i32 [ %.1161, %bb.t ], [ 0, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ]
  %.1158.lcssa463473 = phi i32 [ %.2159, %bb.t ], [ %., %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ] ; 2 uses
  %.1156.lcssa464471 = phi i32 [ %.2, %bb.t ], [ %.210, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit264 ]
  %.pre438 = zext nneg i32 %.1158.lcssa463473 to i64
  br label %.loopexit284

.lr.ph334:                                        ; preds = %bb.t
  %i.ea = zext nneg i32 %.1161 to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !48
  %i.ed = zext i32 %.2 to i64
  %i.ee = zext i32 %.2159 to i64                  ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph334, %bb.v
  %indvars.iv401 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next402, %bb.v ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv401
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !48
  %i.eh = fcmp une double %i.eg, %i.ec
  %.not193 = icmp eq i64 %indvars.iv401, %i.ee
  %or.cond212 = or i1 %i.eh, %.not193
  %.not194 = icmp eq i64 %indvars.iv401, %i.ed
  %or.cond213 = or i1 %or.cond212, %.not194
  br i1 %or.cond213, label %bb.v, label %.loopexit284.loopexit.split.loop.exit

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.loopexit284, label %bb.u, !llvm.loop !123

.loopexit284.loopexit.split.loop.exit:            ; preds = %bb.u
  %i.ei = trunc nuw nsw i64 %indvars.iv401 to i32
  br label %.loopexit284

.loopexit284:                                     ; preds = %bb.v, %.loopexit284.loopexit.split.loop.exit, %..loopexit284_crit_edge
  %.1158.lcssa463472 = phi i32 [ %.1158.lcssa463473, %..loopexit284_crit_edge ], [ %.2159, %.loopexit284.loopexit.split.loop.exit ], [ %.2159, %bb.v ] ; 5 uses
  %.1156.lcssa464470 = phi i32 [ %.1156.lcssa464471, %..loopexit284_crit_edge ], [ %.2, %.loopexit284.loopexit.split.loop.exit ], [ %.2, %bb.v ]
  %.pre-phi = phi i64 [ %.pre438, %..loopexit284_crit_edge ], [ %i.ee, %.loopexit284.loopexit.split.loop.exit ], [ %i.ee, %bb.v ]
  %.4 = phi i32 [ %.0160.lcssa462474, %..loopexit284_crit_edge ], [ %i.ei, %.loopexit284.loopexit.split.loop.exit ], [ %.1161, %bb.v ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.pre-phi
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !48 ; 2 uses
  %i.el = sext i32 %.4 to i64                     ; 8 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !48 ; 3 uses
  %i.eo = fsub double %i.ek, %i.en
  %i.ep = call double @llvm.fabs.f64(double %i.eo)
  br i1 %i.cq, label %.lr.ph351, label %._crit_edge352

.lr.ph351:                                        ; preds = %.loopexit284
  %i.eq = load i32, ptr %i.cr, align 4, !tbaa !124
  %i.er = load ptr, ptr %i.cs, align 8, !tbaa !73
  %.fr369 = freeze i32 %i.eq
  %i.es = icmp slt i32 %.fr369, 2
  %.pre = load i64, ptr %i.ct, align 8            ; 3 uses
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %.lr.ph351, %._crit_edge344
  %indvars.iv412 = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next413, %._crit_edge344 ] ; 2 uses
  %.0278348 = phi double [ 0.000000e+00, %.lr.ph351 ], [ %.sroa.speculated, %._crit_edge344 ] ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %indvars.iv412 ; 4 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !48 ; 6 uses
  br i1 %i.es, label %._crit_edge344, label %.lr.ph343.split.preheader

.lr.ph343.split.preheader:                        ; preds = %.lr.ph343
  br i1 %i.cx, label %.lr.ph343.split.epil.preheader, label %.lr.ph343.split

.lr.ph343.split:                                  ; preds = %.lr.ph343.split.preheader, %.lr.ph343.split
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.1, %.lr.ph343.split ], [ 1, %.lr.ph343.split.preheader ] ; 3 uses
  %.0279340 = phi double [ %.sroa.speculated267.1, %.lr.ph343.split ], [ %i.eu, %.lr.ph343.split.preheader ] ; 2 uses
  %.0280339 = phi double [ %.sroa.speculated270.1, %.lr.ph343.split ], [ %i.eu, %.lr.ph343.split.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph343.split ], [ 0, %.lr.ph343.split.preheader ]
  %i.ev = mul i64 %.pre, %indvars.iv406
  %gep = getelementptr i8, ptr %i.et, i64 %i.ev
  %i.ew = load double, ptr %gep, align 8, !tbaa !48 ; 4 uses
  %i.ex = fcmp olt double %i.ew, %.0280339
  %.sroa.speculated270 = select i1 %i.ex, double %i.ew, double %.0280339 ; 2 uses
  %i.ey = fcmp olt double %.0279340, %i.ew
  %.sroa.speculated267 = select i1 %i.ey, double %i.ew, double %.0279340 ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1
  %i.ez = mul i64 %.pre, %indvars.iv.next407
  %gep.1 = getelementptr i8, ptr %i.et, i64 %i.ez
  %i.fa = load double, ptr %gep.1, align 8, !tbaa !48 ; 4 uses
  %i.fb = fcmp olt double %i.fa, %.sroa.speculated270
  %.sroa.speculated270.1 = select i1 %i.fb, double %i.fa, double %.sroa.speculated270 ; 3 uses
  %i.fc = fcmp olt double %.sroa.speculated267, %i.fa
  %.sroa.speculated267.1 = select i1 %i.fc, double %i.fa, double %.sroa.speculated267 ; 3 uses
  %indvars.iv.next407.1 = add nuw nsw i64 %indvars.iv406, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge344.loopexit.unr-lcssa, label %.lr.ph343.split, !llvm.loop !125
end_hunk_0
