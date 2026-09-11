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
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.prol
  store double %i.bu, ptr %i.bv, align 8, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !98

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bz = load double, ptr %i.by, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  store double %i.bz, ptr %i.ca, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !36
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next
  store double %i.cc, ptr %i.cd, align 8, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.1
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.1
  store double %i.cf, ptr %i.cg, align 8, !tbaa !36
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.2
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.2
  store double %i.ci, ptr %i.cj, align 8, !tbaa !36
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !99

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ck = add nsw i64 %indvars.iv80, -1           ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !36
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ck ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !36
  %i.cp = call double @llvm.fmuladd.f64(double %i.cm, double 5.000000e-01, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !36
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.lr.ph.preheader, label %.lr.ph.us, !llvm.loop !100

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
  %wide.load105 = load <2 x double>, ptr %i.cr, align 8, !tbaa !36, !alias.scope !112
  %wide.load106 = load <2 x double>, ptr %i.cs, align 8, !tbaa !36, !alias.scope !112
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index104 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load107 = load <2 x double>, ptr %i.ct, align 8, !tbaa !36, !alias.scope !113, !noalias !112
  %wide.load108 = load <2 x double>, ptr %i.cu, align 8, !tbaa !36, !alias.scope !113, !noalias !112
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load105, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load107)
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load106, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load108)
  store <2 x double> %i.cv, ptr %i.ct, align 8, !tbaa !36, !alias.scope !113, !noalias !112
  store <2 x double> %i.cw, ptr %i.cu, align 8, !tbaa !36, !alias.scope !113, !noalias !112
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.cx, label %middle.block110, label %vector.body103, !llvm.loop !104

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
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !36
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv85.ph ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !36
  %i.dc = call double @llvm.fmuladd.f64(double %i.cz, double -5.000000e-01, double %i.db)
  store double %i.dc, ptr %i.da, align 8, !tbaa !36
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
  %i.di = load double, ptr %i.dh, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv85 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !36
  %i.dl = call double @llvm.fmuladd.f64(double %i.di, double -5.000000e-01, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !36
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next86
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next86 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !36
  %i.dq = call double @llvm.fmuladd.f64(double %i.dn, double -5.000000e-01, double %i.dp)
  store double %i.dq, ptr %i.do, align 8, !tbaa !36
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %indvars.iv.next86.1, %wide.trip.count88
  br i1 %exitcond89.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !105

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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 1, i32 noundef %i.b, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 1, i32 noundef %i.b, i32 noundef 6)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.c = add i32 %i.b, 1                          ; 7 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 1, i32 noundef %i.c, i32 noundef 6)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 16 uses
  store i32 %i.c, ptr %4, align 4, !tbaa !22
  %.not321 = icmp slt i32 %i.b, 0                 ; 3 uses
  br i1 %.not321, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit ] ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.j = load i64, ptr %i.g, align 8, !tbaa !49
  %i.k = mul i64 %i.j, %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.l)
          to label %.noexc unwind label %.loopexit289, !inline_history !2 ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.r = call double @llvm.fabs.f64(double %i.q)
  %or.cond.i = fcmp ueq double %i.r, +inf
  br i1 %or.cond.i, label %bb.e, label %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc216 unwind label %.loopexit.split-lp290

.noexc216:                                        ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl6calc_fEPKd, ptr noundef nonnull @.str.1, i32 noundef 415) #18
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc216
  unreachable

bb.g:                                             ; preds = %.noexc216
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %12, align 8, !tbaa !41    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body

_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit:       ; preds = %.noexc
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.q, ptr %i.y, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !114

bb.h:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.i:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit289:                                     ; preds = %bb.d
  %lpad.loopexit291 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp290:                            ; preds = %bb.e, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !46  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.ai = icmp eq i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.ak, 1
  %or.cond.i217 = select i1 %i.ai, i1 %i.al, i1 false
  br i1 %or.cond.i217, label %.preheader31.i, label %bb.j

.preheader31.i:                                   ; preds = %._crit_edge
  %i.am = icmp sgt i32 %i.ad, 0
  br i1 %i.am, label %.preheader.i, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc221 unwind label %.loopexit.split-lp290

.noexc221:                                        ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_, ptr noundef nonnull @.str.1, i32 noundef 218) #18
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc221
  unreachable

bb.l:                                             ; preds = %.noexc221
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !21
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.preheader.i:                                     ; preds = %.preheader31.i
  %i.at = zext nneg i32 %i.ad to i64              ; 7 uses
  %i.au = shl nuw nsw i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.au, i1 false), !tbaa !36
  %i.av = icmp sgt i32 %i.ac, 0
  br i1 %i.av, label %.lr.ph34.preheader.i, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !49 ; 3 uses
  %wide.trip.count43.i = zext nneg i32 %i.ac to i64 ; 2 uses
  %i.ba = shl nuw nsw i64 %i.at, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ba
  %i.bb = add nsw i64 %wide.trip.count43.i, -1
  %i.bc = mul i64 %i.az, %i.bb
  %i.bd = getelementptr i8, ptr %i.ax, i64 %i.bc
  %scevgep532 = getelementptr i8, ptr %i.bd, i64 %i.ba
  %min.iters.check = icmp ult i32 %i.ad, 4
  %bound0 = icmp ult ptr %i.af, %scevgep532
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
  %wide.load = load <2 x double>, ptr %i.bh, align 8, !tbaa !36, !alias.scope !136
  %wide.load533 = load <2 x double>, ptr %i.bi, align 8, !tbaa !36, !alias.scope !136
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load534 = load <2 x double>, ptr %i.bj, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  %wide.load535 = load <2 x double>, ptr %i.bk, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  %i.bl = fadd <2 x double> %wide.load, %wide.load534
  %i.bm = fadd <2 x double> %wide.load533, %wide.load535
  store <2 x double> %i.bl, ptr %i.bj, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  store <2 x double> %i.bm, ptr %i.bk, align 8, !tbaa !36, !alias.scope !137, !noalias !136
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
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.prol ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !36
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !36
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
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !36
  %i.bz = fadd double %i.bw, %i.by
  store double %i.bz, ptr %i.bx, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !36
  %i.ce = fadd double %i.cb, %i.cd
  store double %i.ce, ptr %i.cc, align 8, !tbaa !36
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !36
  %i.cj = fadd double %i.cg, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !tbaa !36
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !36
  %i.co = fadd double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !36
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.at
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !120

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit, label %.lr.ph34.i, !llvm.loop !3

_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit: ; preds = %._crit_edge.i, %.preheader31.i, %.preheader.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cq = icmp sgt i32 %i.b, 0                    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count400 = zext i32 %i.c to i64      ; 2 uses
  %wide.trip.count405 = zext i32 %i.c to i64
  %wide.trip.count416 = zext i32 %i.b to i64      ; 8 uses
  %wide.trip.count431 = zext i32 %i.c to i64
  %wide.trip.count426 = zext nneg i32 %i.b to i64
  %i.cv = add nsw i64 %wide.trip.count400, -1     ; 3 uses
  %i.cw = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %xtraiter593 = and i64 %i.cv, 1
  %i.cx = icmp eq i32 %i.c, 2
  %unroll_iter = and i64 %i.cv, -2
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  %lcmp.mod597 = trunc i64 %i.cv to i1
  %xtraiter598 = and i64 %wide.trip.count416, 1
  %i.cy = icmp eq i64 %i.cw, 0
  %unroll_iter601 = and i64 %wide.trip.count416, 2147483646
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  %lcmp.mod600 = trunc i32 %i.b to i1
  %min.iters.check558 = icmp ult i32 %i.b, 4
  %n.vec560 = and i64 %wide.trip.count416, 2147483644 ; 3 uses
  %cmp.n567 = icmp eq i64 %n.vec560, %wide.trip.count416
  br label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265

_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265: ; preds = %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265.backedge, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit
  %i.cz = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.da = load double, ptr %i.cp, align 8, !tbaa !36
  %i.db = fcmp ule double %i.cz, %i.da            ; 2 uses
  %. = zext i1 %i.db to i32                       ; 2 uses
  %not. = xor i1 %i.db, true
  %.210 = zext i1 %not. to i32                    ; 2 uses
  br i1 %.not321, label %..loopexit285_crit_edge, label %.lr.ph329

.lr.ph329:                                        ; preds = %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265, %bb.n
  %indvars.iv397 = phi i64 [ %indvars.iv.next398, %bb.n ], [ 0, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ] ; 4 uses
  %.1156327 = phi i32 [ %.2, %bb.n ], [ %.210, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ] ; 2 uses
  %.1158326 = phi i32 [ %.2159, %bb.n ], [ %., %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ] ; 3 uses
  %.0160325 = phi i32 [ %spec.select, %bb.n ], [ 0, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv397
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !36 ; 3 uses
  %i.de = zext nneg i32 %.0160325 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !36
  %i.dh = fcmp ugt double %i.dd, %i.dg
  %i.di = trunc nuw nsw i64 %indvars.iv397 to i32 ; 3 uses
  %spec.select = select i1 %i.dh, i32 %.0160325, i32 %i.di ; 6 uses
  %i.dj = zext i32 %.1158326 to i64               ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !36
  %i.dm = fcmp ogt double %i.dd, %i.dl
  br i1 %i.dm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph329
  %i.dn = sext i32 %.1156327 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !36
  %i.dq = fcmp ule double %i.dd, %i.dp
  %.not205 = icmp eq i64 %indvars.iv397, %i.dj
  %or.cond = or i1 %i.dq, %.not205
  %spec.select215 = select i1 %or.cond, i32 %.1156327, i32 %i.di
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph329
  %.2159 = phi i32 [ %.1158326, %bb.m ], [ %i.di, %.lr.ph329 ] ; 7 uses
  %.2 = phi i32 [ %spec.select215, %bb.m ], [ %.1158326, %.lr.ph329 ] ; 7 uses
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %._crit_edge330, label %.lr.ph329, !llvm.loop !121

._crit_edge330:                                   ; preds = %bb.n
  %.not190 = icmp eq i32 %.2159, %.2
  br i1 %.not190, label %bb.o, label %bb.t

bb.o:                                             ; preds = %._crit_edge330
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
  %i.dt = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !21
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.r ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ds, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %.body

bb.t:                                             ; preds = %._crit_edge330
  %i.dy = icmp ne i32 %spec.select, %.2
  %i.dz = icmp ne i32 %spec.select, %.2159
  %or.cond211.not369 = and i1 %i.dy, %i.dz
  br i1 %or.cond211.not369, label %..loopexit285_crit_edge, label %.lr.ph335

..loopexit285_crit_edge:                          ; preds = %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265, %bb.t
  %.0160.lcssa463475 = phi i32 [ %spec.select, %bb.t ], [ 0, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ]
  %.1158.lcssa464474 = phi i32 [ %.2159, %bb.t ], [ %., %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ] ; 2 uses
  %.1156.lcssa465472 = phi i32 [ %.2, %bb.t ], [ %.210, %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265 ]
  %.pre439 = zext nneg i32 %.1158.lcssa464474 to i64
  br label %.loopexit285

.lr.ph335:                                        ; preds = %bb.t
  %i.ea = zext nneg i32 %spec.select to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !36
  %i.ed = zext i32 %.2 to i64
  %i.ee = zext i32 %.2159 to i64                  ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph335, %bb.v
  %indvars.iv402 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next403, %bb.v ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv402
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !36
  %i.eh = fcmp une double %i.eg, %i.ec
  %.not193 = icmp eq i64 %indvars.iv402, %i.ee
  %or.cond212 = or i1 %i.eh, %.not193
  %.not194 = icmp eq i64 %indvars.iv402, %i.ed
  %or.cond213 = or i1 %or.cond212, %.not194
  br i1 %or.cond213, label %bb.v, label %.loopexit285.loopexit.split.loop.exit

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %.loopexit285, label %bb.u, !llvm.loop !122

.loopexit285.loopexit.split.loop.exit:            ; preds = %bb.u
  %i.ei = trunc nuw nsw i64 %indvars.iv402 to i32
  br label %.loopexit285

.loopexit285:                                     ; preds = %bb.v, %.loopexit285.loopexit.split.loop.exit, %..loopexit285_crit_edge
  %.1158.lcssa464473 = phi i32 [ %.1158.lcssa464474, %..loopexit285_crit_edge ], [ %.2159, %.loopexit285.loopexit.split.loop.exit ], [ %.2159, %bb.v ] ; 5 uses
  %.1156.lcssa465471 = phi i32 [ %.1156.lcssa465472, %..loopexit285_crit_edge ], [ %.2, %.loopexit285.loopexit.split.loop.exit ], [ %.2, %bb.v ]
  %.pre-phi = phi i64 [ %.pre439, %..loopexit285_crit_edge ], [ %i.ee, %.loopexit285.loopexit.split.loop.exit ], [ %i.ee, %bb.v ]
  %.4 = phi i32 [ %.0160.lcssa463475, %..loopexit285_crit_edge ], [ %i.ei, %.loopexit285.loopexit.split.loop.exit ], [ %spec.select, %bb.v ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.pre-phi
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !36 ; 2 uses
  %i.el = sext i32 %.4 to i64                     ; 8 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !36 ; 3 uses
  %i.eo = fsub double %i.ek, %i.en
  %i.ep = call double @llvm.fabs.f64(double %i.eo)
  br i1 %i.cq, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %.loopexit285
  %i.eq = load i32, ptr %i.cr, align 4, !tbaa !54
  %i.er = load ptr, ptr %i.cs, align 8, !tbaa !47
  %.fr370 = freeze i32 %i.eq
  %i.es = icmp slt i32 %.fr370, 2
  %.pre = load i64, ptr %i.ct, align 8            ; 3 uses
  br label %.lr.ph344

.lr.ph344:                                        ; preds = %.lr.ph352, %._crit_edge345
  %indvars.iv413 = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next414, %._crit_edge345 ] ; 2 uses
  %.0279349 = phi double [ 0.000000e+00, %.lr.ph352 ], [ %.sroa.speculated, %._crit_edge345 ] ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %indvars.iv413 ; 4 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !36 ; 6 uses
  br i1 %i.es, label %._crit_edge345, label %.lr.ph344.split.preheader

.lr.ph344.split.preheader:                        ; preds = %.lr.ph344
  br i1 %i.cx, label %.lr.ph344.split.epil.preheader, label %.lr.ph344.split

.lr.ph344.split:                                  ; preds = %.lr.ph344.split.preheader, %.lr.ph344.split
  %indvars.iv407 = phi i64 [ %indvars.iv.next408.1, %.lr.ph344.split ], [ 1, %.lr.ph344.split.preheader ] ; 3 uses
  %.0280341 = phi double [ %.sroa.speculated268.1, %.lr.ph344.split ], [ %i.eu, %.lr.ph344.split.preheader ] ; 2 uses
  %.0281340 = phi double [ %.sroa.speculated271.1, %.lr.ph344.split ], [ %i.eu, %.lr.ph344.split.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph344.split ], [ 0, %.lr.ph344.split.preheader ]
  %i.ev = mul i64 %.pre, %indvars.iv407
  %gep = getelementptr i8, ptr %i.et, i64 %i.ev
  %i.ew = load double, ptr %gep, align 8, !tbaa !36 ; 4 uses
  %i.ex = fcmp olt double %i.ew, %.0281340
  %.sroa.speculated271 = select i1 %i.ex, double %i.ew, double %.0281340 ; 2 uses
  %i.ey = fcmp olt double %.0280341, %i.ew
  %.sroa.speculated268 = select i1 %i.ey, double %i.ew, double %.0280341 ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1
  %i.ez = mul i64 %.pre, %indvars.iv.next408
  %gep.1 = getelementptr i8, ptr %i.et, i64 %i.ez
  %i.fa = load double, ptr %gep.1, align 8, !tbaa !36 ; 4 uses
  %i.fb = fcmp olt double %i.fa, %.sroa.speculated271
  %.sroa.speculated271.1 = select i1 %i.fb, double %i.fa, double %.sroa.speculated271 ; 3 uses
  %i.fc = fcmp olt double %.sroa.speculated268, %i.fa
  %.sroa.speculated268.1 = select i1 %i.fc, double %i.fa, double %.sroa.speculated268 ; 3 uses
  %indvars.iv.next408.1 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge345.loopexit.unr-lcssa, label %.lr.ph344.split, !llvm.loop !123
end_hunk_0
begin_hunk_1_@_ZN2cv18DownhillSolverImpl20innerDownhillSimplexERNS_3MatEddRii:bb.a
  %i.ff = fcmp olt double %i.fe, %.0281340.epil.init
  %.sroa.speculated271.epil = select i1 %i.ff, double %i.fe, double %.0281340.epil.init
  %i.fg = fcmp olt double %.0280341.epil.init, %i.fe
  %.sroa.speculated268.epil = select i1 %i.fg, double %i.fe, double %.0280341.epil.init
  br label %._crit_edge345

._crit_edge345:                                   ; preds = %.lr.ph344.split.epil.preheader, %._crit_edge345.loopexit.unr-lcssa, %.lr.ph344
  %.us-phi = phi double [ %i.eu, %.lr.ph344 ], [ %.sroa.speculated271.1, %._crit_edge345.loopexit.unr-lcssa ], [ %.sroa.speculated271.epil, %.lr.ph344.split.epil.preheader ]
  %.us-phi348 = phi double [ %i.eu, %.lr.ph344 ], [ %.sroa.speculated268.1, %._crit_edge345.loopexit.unr-lcssa ], [ %.sroa.speculated268.epil, %.lr.ph344.split.epil.preheader ]
  %i.fh = fsub double %.us-phi348, %.us-phi
  %i.fi = call double @llvm.fabs.f64(double %i.fh) ; 2 uses
  %i.fj = fcmp olt double %.0279349, %i.fi
  %.sroa.speculated = select i1 %i.fj, double %i.fi, double %.0279349 ; 2 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge353, label %.lr.ph344, !llvm.loop !124

._crit_edge353:                                   ; preds = %._crit_edge345, %.loopexit285
  %.0279.lcssa = phi double [ 0.000000e+00, %.loopexit285 ], [ %.sroa.speculated, %._crit_edge345 ]
  %i.fk = fcmp ugt double %.0279.lcssa, %2
  %i.fl = fcmp ugt double %i.ep, %3
  %or.cond214 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond214, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge353
  %i.fm = load i32, ptr %4, align 4, !tbaa !22
  %.not195 = icmp slt i32 %i.fm, %5
  br i1 %.not195, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge353
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.el
  store double %i.en, ptr %i.e, align 8, !tbaa !36
  store double %i.cz, ptr %i.fn, align 8, !tbaa !36
  br i1 %i.cq, label %.lr.ph365, label %._crit_edge366

.lr.ph365:                                        ; preds = %bb.x
  %i.fo = load i32, ptr %i.cr, align 4, !tbaa !54
  %i.fp = load ptr, ptr %i.cs, align 8, !tbaa !47 ; 6 uses
  %.fr = freeze i32 %i.fo
  %i.fq = icmp slt i32 %.fr, 2
  br i1 %i.fq, label %._crit_edge366, label %.lr.ph365.split.preheader

.lr.ph365.split.preheader:                        ; preds = %.lr.ph365
  %xtraiter606 = and i64 %wide.trip.count416, 1
  %i.fr = icmp eq i64 %i.cw, 0
  br i1 %i.fr, label %.lr.ph365.split.epil.preheader, label %.lr.ph365.split.preheader.new

.lr.ph365.split.preheader.new:                    ; preds = %.lr.ph365.split.preheader
  %unroll_iter609 = and i64 %wide.trip.count416, 2147483646
  br label %.lr.ph365.split

.lr.ph365.split:                                  ; preds = %.lr.ph365.split, %.lr.ph365.split.preheader.new
  %indvars.iv433 = phi i64 [ 0, %.lr.ph365.split.preheader.new ], [ %indvars.iv.next434.1, %.lr.ph365.split ] ; 4 uses
  %niter610 = phi i64 [ 0, %.lr.ph365.split.preheader.new ], [ %niter610.next.1, %.lr.ph365.split ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv433 ; 2 uses
  %i.ft = load i64, ptr %i.ct, align 8
  %i.fu = mul i64 %i.ft, %i.el
  %.sink.i229 = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fu
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i229, i64 %indvars.iv433 ; 2 uses
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !36
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !36
  store double %i.fx, ptr %i.fs, align 8, !tbaa !36
  store double %i.fw, ptr %i.fv, align 8, !tbaa !36
  %indvars.iv.next434 = or disjoint i64 %indvars.iv433, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.next434 ; 2 uses
  %i.fz = load i64, ptr %i.ct, align 8
  %i.ga = mul i64 %i.fz, %i.el
  %.sink.i229.1 = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ga
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i229.1, i64 %indvars.iv.next434 ; 2 uses
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !36
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !36
  store double %i.gd, ptr %i.fy, align 8, !tbaa !36
  store double %i.gc, ptr %i.gb, align 8, !tbaa !36
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 2 uses
  %niter610.next.1 = add i64 %niter610, 2         ; 2 uses
  %niter610.ncmp.1 = icmp eq i64 %niter610.next.1, %unroll_iter609
  br i1 %niter610.ncmp.1, label %._crit_edge366.loopexit.unr-lcssa, label %.lr.ph365.split, !llvm.loop !125

bb.y:                                             ; preds = %bb.w
  %i.ge = sext i32 %.1156.lcssa465471 to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !36
  %i.gh = invoke noundef double @_ZN2cv18DownhillSolverImpl11tryNewPointERNS_3MatES2_idS2_Ri(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef %.1158.lcssa464473, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.z unwind label %bb.ad      ; 5 uses

bb.z:                                             ; preds = %bb.y
  %i.gi = fcmp olt double %i.gh, %i.gg
  br i1 %i.gi, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.gj = fcmp olt double %i.gh, %i.en
  br i1 %i.gj, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gk = invoke noundef double @_ZN2cv18DownhillSolverImpl11tryNewPointERNS_3MatES2_idS2_Ri(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef %.1158.lcssa464473, double noundef -2.000000e+00, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gl = fcmp olt double %i.gk, %i.gh            ; 2 uses
  %.0151 = select i1 %i.gl, double -2.000000e+00, double -1.000000e+00
  %.0 = select i1 %i.gl, double %i.gk, double %i.gh
  br label %bb.af

bb.ad:                                            ; preds = %bb.af, %bb.y
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ab
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.ac, %bb.aa
  %.1152 = phi double [ %.0151, %bb.ac ], [ -1.000000e+00, %bb.aa ]
  %.1 = phi double [ %.0, %bb.ac ], [ %i.gh, %bb.aa ]
  invoke void @_ZN2cv18DownhillSolverImpl12replacePointERNS_3MatES2_S2_idd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef %.1158.lcssa464473, double noundef %.1152, double noundef %.1)
          to label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265.backedge unwind label %bb.ad

bb.ag:                                            ; preds = %bb.z
  %i.go = invoke noundef double @_ZN2cv18DownhillSolverImpl11tryNewPointERNS_3MatES2_idS2_Ri(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef %.1158.lcssa464473, double noundef 5.000000e-01, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.gp = fcmp olt double %i.go, %i.ek
  br i1 %i.gp, label %bb.ai, label %.preheader283

.preheader283:                                    ; preds = %bb.ah
  br i1 %.not321, label %._crit_edge362, label %.lr.ph361.preheader

.lr.ph361.preheader:                              ; preds = %.preheader283
  %i.gq = zext i32 %.4 to i64
  br label %.lr.ph361

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv18DownhillSolverImpl12replacePointERNS_3MatES2_S2_idd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef %.1158.lcssa464473, double noundef 5.000000e-01, double noundef %i.go)
          to label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265.backedge unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %._crit_edge357
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.ai, %bb.ag
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.an, %bb.aj
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph361:                                        ; preds = %.lr.ph361.preheader, %bb.am
  %indvars.iv428 = phi i64 [ 0, %.lr.ph361.preheader ], [ %indvars.iv.next429, %bb.am ] ; 7 uses
  %.not197 = icmp eq i64 %indvars.iv428, %i.gq
  br i1 %.not197, label %bb.am, label %.preheader

.preheader:                                       ; preds = %.lr.ph361
  %.pre438 = load ptr, ptr %i.cs, align 8, !tbaa !47 ; 9 uses
  br i1 %i.cq, label %.lr.ph356, label %._crit_edge357

.lr.ph356:                                        ; preds = %.preheader
  %i.gr = load i32, ptr %i.cr, align 4, !tbaa !54
  %.fr371 = freeze i32 %i.gr
  %i.gs = icmp slt i32 %.fr371, 2
  br i1 %i.gs, label %.lr.ph356.split.us.preheader, label %.lr.ph356.split.preheader

.lr.ph356.split.preheader:                        ; preds = %.lr.ph356
  br i1 %i.cy, label %.lr.ph356.split.epil.preheader, label %.lr.ph356.split

.lr.ph356.split.us.preheader:                     ; preds = %.lr.ph356
  br i1 %min.iters.check558, label %.lr.ph356.split.us.preheader569, label %vector.body561

vector.body561:                                   ; preds = %.lr.ph356.split.us.preheader, %vector.body561
  %index562 = phi i64 [ %index.next565, %vector.body561 ], [ 0, %.lr.ph356.split.us.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.pre438, i64 %index562 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %wide.load563 = load <2 x double>, ptr %i.gt, align 8, !tbaa !36 ; 2 uses
  %wide.load564 = load <2 x double>, ptr %i.gu, align 8, !tbaa !36 ; 2 uses
  %i.gv = fadd <2 x double> %wide.load563, %wide.load563
  %i.gw = fadd <2 x double> %wide.load564, %wide.load564
  %i.gx = fmul <2 x double> %i.gv, splat (double 5.000000e-01)
  %i.gy = fmul <2 x double> %i.gw, splat (double 5.000000e-01)
  store <2 x double> %i.gx, ptr %i.gt, align 8, !tbaa !36
  store <2 x double> %i.gy, ptr %i.gu, align 8, !tbaa !36
  %index.next565 = add nuw i64 %index562, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next565, %n.vec560
  br i1 %i.gz, label %middle.block566, label %vector.body561, !llvm.loop !126

middle.block566:                                  ; preds = %vector.body561
  br i1 %cmp.n567, label %._crit_edge357, label %.lr.ph356.split.us.preheader569

.lr.ph356.split.us.preheader569:                  ; preds = %.lr.ph356.split.us.preheader, %middle.block566
  %indvars.iv423.ph = phi i64 [ 0, %.lr.ph356.split.us.preheader ], [ %n.vec560, %middle.block566 ]
  br label %.lr.ph356.split.us

.lr.ph356.split.us:                               ; preds = %.lr.ph356.split.us.preheader569, %.lr.ph356.split.us
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %.lr.ph356.split.us ], [ %indvars.iv423.ph, %.lr.ph356.split.us.preheader569 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.pre438, i64 %indvars.iv423 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !36
  %19 = fmul double %i.hb, 2.000000e+00
  %i.hc = fmul double %19, 5.000000e-01
  store double %i.hc, ptr %i.ha, align 8, !tbaa !36
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %._crit_edge357, label %.lr.ph356.split.us, !llvm.loop !127

.lr.ph356.split:                                  ; preds = %.lr.ph356.split.preheader, %.lr.ph356.split
  %indvars.iv418 = phi i64 [ %indvars.iv.next419.1, %.lr.ph356.split ], [ 0, %.lr.ph356.split.preheader ] ; 4 uses
  %niter602 = phi i64 [ %niter602.next.1, %.lr.ph356.split ], [ 0, %.lr.ph356.split.preheader ]
  %i.hd = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.he = mul i64 %i.hd, %indvars.iv428
  %.sink.i231 = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.he
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i231, i64 %indvars.iv418 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !36
  %i.hh = mul i64 %i.hd, %i.el
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.hh
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sink.i233, i64 %indvars.iv418
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !36
  %i.hk = fadd double %i.hg, %i.hj
  %i.hl = fmul double %i.hk, 5.000000e-01
  store double %i.hl, ptr %i.hf, align 8, !tbaa !36
  %indvars.iv.next419 = or disjoint i64 %indvars.iv418, 1 ; 2 uses
  %i.hm = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.hn = mul i64 %i.hm, %indvars.iv428
  %.sink.i231.1 = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.hn
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.sink.i231.1, i64 %indvars.iv.next419 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !36
  %i.hq = mul i64 %i.hm, %i.el
  %.sink.i233.1 = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.hq
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i233.1, i64 %indvars.iv.next419
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !36
  %i.ht = fadd double %i.hp, %i.hs
  %i.hu = fmul double %i.ht, 5.000000e-01
  store double %i.hu, ptr %i.ho, align 8, !tbaa !36
  %indvars.iv.next419.1 = add nuw nsw i64 %indvars.iv418, 2 ; 2 uses
  %niter602.next.1 = add i64 %niter602, 2         ; 2 uses
  %niter602.ncmp.1 = icmp eq i64 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge357.loopexit570.unr-lcssa, label %.lr.ph356.split, !llvm.loop !128

._crit_edge357.loopexit570.unr-lcssa:             ; preds = %.lr.ph356.split
  br i1 %lcmp.mod599.not, label %._crit_edge357, label %.lr.ph356.split.epil.preheader

.lr.ph356.split.epil.preheader:                   ; preds = %._crit_edge357.loopexit570.unr-lcssa, %.lr.ph356.split.preheader
  %indvars.iv418.epil.init = phi i64 [ 0, %.lr.ph356.split.preheader ], [ %indvars.iv.next419.1, %._crit_edge357.loopexit570.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod600)
  %i.hv = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.hw = mul i64 %i.hv, %indvars.iv428
  %.sink.i231.epil = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.hw
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.sink.i231.epil, i64 %indvars.iv418.epil.init ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !36
  %i.hz = mul i64 %i.hv, %i.el
  %.sink.i233.epil = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.hz
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.sink.i233.epil, i64 %indvars.iv418.epil.init
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !36
  %i.ic = fadd double %i.hy, %i.ib
  %i.id = fmul double %i.ic, 5.000000e-01
  store double %i.id, ptr %i.hx, align 8, !tbaa !36
  br label %._crit_edge357

._crit_edge357:                                   ; preds = %.lr.ph356.split.epil.preheader, %._crit_edge357.loopexit570.unr-lcssa, %.lr.ph356.split.us, %middle.block566, %.preheader
  %i.ie = load i64, ptr %i.ct, align 8, !tbaa !49
  %i.if = mul i64 %i.ie, %indvars.iv428
  %i.ig = getelementptr inbounds nuw i8, ptr %.pre438, i64 %i.if
  %i.ih = load ptr, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = invoke noundef double %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ig)
          to label %.noexc240 unwind label %.loopexit, !inline_history !2 ; 2 uses

.noexc240:                                        ; preds = %._crit_edge357
  %i.im = call double @llvm.fabs.f64(double %i.il)
  %or.cond.i236 = fcmp ueq double %i.im, +inf
  br i1 %or.cond.i236, label %bb.aj, label %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit244

bb.aj:                                            ; preds = %.noexc240
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl6calc_fEPKd, ptr noundef nonnull @.str.1, i32 noundef 415) #18
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.noexc241
  unreachable

bb.al:                                            ; preds = %.noexc241
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %bb.al
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !21
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i238: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.body

_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit244:    ; preds = %.noexc240
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv428
  store double %i.il, ptr %i.it, align 8, !tbaa !36
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph361, %_ZN2cv18DownhillSolverImpl6calc_fEPKd.exit244
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge362, label %.lr.ph361, !llvm.loop !129

._crit_edge362:                                   ; preds = %bb.am, %.preheader283
  %i.iu = load i32, ptr %4, align 4, !tbaa !22
  %i.iv = add nsw i32 %i.iu, %i.b
  store i32 %i.iv, ptr %4, align 4, !tbaa !22
  %i.iw = load i32, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %i.ix = load i32, ptr %i.a, align 4, !tbaa !46  ; 4 uses
  %i.iy = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 9 uses
  %i.iz = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.ja = icmp eq i32 %i.iz, %i.ix
  %i.jb = load i32, ptr %i.aj, align 8
  %i.jc = icmp eq i32 %i.jb, 1
  %or.cond.i245 = select i1 %i.ja, i1 %i.jc, i1 false
  br i1 %or.cond.i245, label %.preheader31.i249, label %bb.an

.preheader31.i249:                                ; preds = %._crit_edge362
  %i.jd = icmp sgt i32 %i.ix, 0
  br i1 %i.jd, label %.preheader.i250, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265.backedge

bb.an:                                            ; preds = %._crit_edge362
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc262 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc262:                                        ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_, ptr noundef nonnull @.str.1, i32 noundef 218) #18
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc262
  unreachable

bb.ap:                                            ; preds = %.noexc262
  %i.je = landingpad { ptr, i32 }
          cleanup
  %i.jf = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246: ; preds = %bb.ap
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !21
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i247: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.body

.preheader.i250:                                  ; preds = %.preheader31.i249
  %i.jk = zext nneg i32 %i.ix to i64              ; 7 uses
  %i.jl = shl nuw nsw i64 %i.jk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.iy, i8 0, i64 %i.jl, i1 false), !tbaa !36
  %i.jm = icmp sgt i32 %i.iw, 0
  br i1 %i.jm, label %.lr.ph34.preheader.i251, label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265.backedge

_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265.backedge: ; preds = %._crit_edge.i259, %.preheader.i250, %.preheader31.i249, %bb.af, %bb.ai
  br label %_ZN2cv18DownhillSolverImpl14updateCoordSumERKNS_3MatERS1_.exit265

.lr.ph34.preheader.i251:                          ; preds = %.preheader.i250
  %i.jn = load ptr, ptr %i.cs, align 8, !tbaa !47 ; 3 uses
  %i.jo = load i64, ptr %i.ct, align 8, !tbaa !49 ; 3 uses
  %wide.trip.count43.i252 = zext nneg i32 %i.iw to i64 ; 2 uses
  %i.jp = shl nuw nsw i64 %i.jk, 3                ; 2 uses
  %scevgep537 = getelementptr i8, ptr %i.iy, i64 %i.jp
  %i.jq = add nsw i64 %wide.trip.count43.i252, -1
  %i.jr = mul i64 %i.jo, %i.jq
  %i.js = getelementptr i8, ptr %i.jn, i64 %i.jr
  %scevgep538 = getelementptr i8, ptr %i.js, i64 %i.jp
  %min.iters.check544 = icmp ult i32 %i.ix, 4
  %bound0539 = icmp ult ptr %i.iy, %scevgep538
  %bound1540 = icmp ult ptr %i.jn, %scevgep537
  %found.conflict541 = and i1 %bound0539, %bound1540
  %stride.check542 = icmp slt i64 %i.jo, 0
  %i.jt = or i1 %found.conflict541, %stride.check542
  %n.vec546 = and i64 %i.jk, 2147483644           ; 3 uses
  %cmp.n555 = icmp eq i64 %n.vec546, %i.jk
  %xtraiter603 = and i64 %i.jk, 3                 ; 2 uses
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br label %.lr.ph34.i254

.lr.ph34.i254:                                    ; preds = %._crit_edge.i259, %.lr.ph34.preheader.i251
end_hunk_1
