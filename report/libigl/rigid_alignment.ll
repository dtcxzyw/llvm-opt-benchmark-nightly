Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rigid_alignment?download=true
inline.NumInlined: 13524
inline.NumDeleted: 6899
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERNS_9EigenBaseIT_EE:_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.invoke.i54, label %.sink.split.i.i.i.i51

.invoke.i54:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i53, %bb.u
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bi, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont.i55 unwind label %bb.v

.cont.i55:                                        ; preds = %.invoke.i54
  unreachable

.sink.split.i.i.i.i51:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i53, %bb.t
  %.sink.i.i.i.i52 = phi ptr [ %i.bg, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i53 ], [ null, %bb.t ]
  store ptr %.sink.i.i.i.i52, ptr %i.bb, align 8, !tbaa !103
  br label %bb.w

bb.v:                                             ; preds = %.invoke.i54
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body56

bb.w:                                             ; preds = %.sink.split.i.i.i.i51, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bc, ptr %i.bk, align 8, !tbaa !109
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.bl, align 8, !tbaa !159
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.bm, align 1, !tbaa !87
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  ret void

bb.y:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.body56:                                          ; preds = %bb.v, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.y ], [ %i.bj, %bb.v ]
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.bo) #24
  br label %.body47

.body47:                                          ; preds = %bb.r, %.body56
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body56 ], [ %i.az, %bb.r ]
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.bp) #24
  br label %.body39

.body39:                                          ; preds = %bb.n, %.body47
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body47 ], [ %i.ap, %bb.n ]
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.bq) #24
  br label %.body31

.body31:                                          ; preds = %bb.j, %.body39
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body39 ], [ %i.af, %bb.j ]
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.br) #24
  br label %.body24

.body24:                                          ; preds = %bb.f, %.body31
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body31 ], [ %i.v, %bb.f ]
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.bs) #24
  br label %.body

.body:                                            ; preds = %bb.c, %.body24
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body24 ], [ %i.l, %bb.c ]
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.bt) #24
  %i.bu = load ptr, ptr %0, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bu) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.319", align 8  ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.1140", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load double, ptr %i.a, align 8, !tbaa !86
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87, !range !88, !noundef !89
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load double, ptr %i.g, align 8, !tbaa !90
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.m = sitofp i64 %.sroa.speculated.i.i.i to double
  %i.n = fmul nnan double %i.m, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i: ; preds = %bb.c, %bb.b
  %i.o = phi double [ %i.h, %bb.b ], [ %i.n, %bb.c ]
  %i.p = fmul double %i.c, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !91   ; 5 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit

.lr.ph.i:                                         ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !21
  %i.am = load double, ptr %i.ai, align 8, !tbaa !21
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !21
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !21
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = zext <2 x i1> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <2 x i64> %vec.phi182, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !859

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.bl, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.078.i = phi i64 [ %i.bk, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.bd = mul nsw i64 %.09.i, %i.v
  %i.be = getelementptr [8 x i8], ptr %i.t, i64 %.09.i
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !21
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.p
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw nsw i64 %.078.i, %i.bj          ; 2 uses
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.r
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph, !llvm.loop !860

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit: ; preds = %scalar.ph, %middle.block, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge
  %i.bm = phi i64 [ %.pre, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ]
  %.07.lcssa.i = phi i64 [ 0, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.bc, %middle.block ], [ %i.bk, %scalar.ph ] ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !28 ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bm) ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.sroa.speculated, %i.bs
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.bt) #24
  %i.bu = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.bu, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp samesign ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.bv, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.e
  %i.bx = shl nuw i64 %.sroa.speculated, 3
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #25 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ca, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.by, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %i.bq, align 8, !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, %.sink.split.i.i
  store i64 %.sroa.speculated, ptr %i.br, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !109
  %.not.i.i30 = icmp eq i64 %i.bo, %i.cd
  br i1 %.not.i.i30, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.ce) #24
  %i.cf = icmp sgt i64 %i.bo, 0
  br i1 %i.cf, label %bb.i, label %.sink.split.i.i31

bb.i:                                             ; preds = %bb.h
  %i.cg = icmp samesign ugt i64 %i.bo, 2305843009213693951
  br i1 %i.cg, label %bb.j, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33

bb.j:                                             ; preds = %bb.i
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33: ; preds = %bb.i
  %i.ci = shl nuw i64 %i.bo, 3
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #25 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.k, label %.sink.split.i.i31

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cl, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i31:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33, %bb.h
  %.sink.i.i32 = phi ptr [ %i.cj, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33 ], [ null, %bb.h ]
  store ptr %.sink.i.i32, ptr %i.cb, align 8, !tbaa !103
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i31
  store i64 %i.bo, ptr %i.cc, align 8, !tbaa !109
  %i.cm = icmp slt i64 %.07.lcssa.i, %i.bo
  br i1 %i.cm, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.cn = add i64 %.07.lcssa.i, -1                ; 9 uses
  %i.co = icmp sgt i64 %.07.lcssa.i, 0
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.cp = sub i64 %i.bo, %.07.lcssa.i             ; 13 uses
  %i.cq = add nsw i64 %i.cp, 1                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cp, 1
  %i.cs = add i64 %i.cp, -1                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.1294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.1395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = shl i64 %i.cn, 3
  %i.da = shl i64 %i.cn, 3
  %i.db = shl i64 %i.cn, 3
  %i.dc = shl i64 %i.cn, 3
  %i.dd = add i64 %i.bo, -2
  %i.de = sub i64 %i.dd, %.07.lcssa.i
  %xtraiter299 = and i64 %i.cs, 3                 ; 3 uses
  %i.df = icmp ult i64 %i.de, 3
  %unroll_iter = and i64 %i.cs, -4
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter299, 0
  %min.iters.check236 = icmp ugt i64 %i.cp, 3
  %n.vec238 = and i64 %i.cp, -4                   ; 3 uses
  %cmp.n243 = icmp eq i64 %i.cp, %n.vec238
  %i.dg = sub i64 %i.bo, %.07.lcssa.i
  %xtraiter303 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  %i.dh = sub i64 %.07.lcssa.i, %i.bo
  %min.iters.check221 = icmp ugt i64 %i.cp, 1
  %n.vec223 = and i64 %i.cp, -2                   ; 3 uses
  %cmp.n231 = icmp eq i64 %i.cp, %n.vec223
  %i.di = sub i64 %.07.lcssa.i, %i.bo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 3 uses
  %.0169 = phi i64 [ %i.cn, %.lr.ph ], [ %i.oj, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 22 uses
  %i.dj = shl i64 %.0169, 3
  %3 = shl i64 %.0169, 3                          ; 2 uses
  %4 = sub i64 %.07.lcssa.i, %indvar
  %5 = shl i64 %4, 3
  %i.dk = shl i64 %.0169, 3
  %6 = shl i64 %.0169, 3                          ; 2 uses
  %7 = sub i64 %.07.lcssa.i, %indvar
  %8 = shl i64 %7, 3
  %.not = icmp eq i64 %.0169, %i.cn               ; 2 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.dl = load ptr, ptr %0, align 8, !tbaa !25, !noalias !901 ; 8 uses
  %i.dm = load i64, ptr %i.bp, align 8, !tbaa !16, !noalias !901 ; 7 uses
  %i.dn = mul nsw i64 %i.dm, %.0169
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dn ; 11 uses
  %i.dp = add nuw nsw i64 %.0169, 1               ; 4 uses
  %i.dq = mul i64 %i.dm, %i.cn
  %i.dr = getelementptr [8 x i8], ptr %i.dl, i64 %i.dq ; 10 uses
  %i.ds = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  %i.du = lshr exact i64 %i.ds, 3
  %i.dv = and i64 %i.du, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.dv, i64 %i.dp ; 13 uses
  %i.dw = sub nsw i64 %i.dp, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.dx = sdiv i64 %i.dw, 2                       ; 2 uses
  %i.dy = shl nsw i64 %i.dx, 1                    ; 2 uses
  %i.dz = add nsw i64 %i.dy, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not180 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not180, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check275 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check275, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ea = mul i64 %i.dm, %i.dj
  %i.eb = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dl, i64 %i.ea
  %scevgep269 = getelementptr i8, ptr %i.ec, i64 %i.eb
  %i.ed = mul i64 %i.dc, %i.dm
  %i.ee = getelementptr i8, ptr %i.dl, i64 %i.ed
  %scevgep270 = getelementptr i8, ptr %i.ee, i64 %i.eb
  %bound0271 = icmp ult ptr %i.do, %scevgep270
  %bound1272 = icmp ult ptr %i.dr, %scevgep269
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck268
  %n.vec277 = and i64 %.0.i.i.i.i.i.i.i, -4       ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index279 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index279 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load280 = load <2 x double>, ptr %i.ef, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  %wide.load281 = load <2 x double>, ptr %i.eh, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load282 = load <2 x double>, ptr %i.eg, align 8, !tbaa !21, !alias.scope !903
  %wide.load283 = load <2 x double>, ptr %i.ei, align 8, !tbaa !21, !alias.scope !903
  store <2 x double> %wide.load282, ptr %i.ef, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  store <2 x double> %wide.load283, ptr %i.eh, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  store <2 x double> %wide.load280, ptr %i.eg, align 8, !tbaa !21, !alias.scope !903
  store <2 x double> %wide.load281, ptr %i.ei, align 8, !tbaa !21, !alias.scope !903
  %index.next284 = add nuw i64 %index279, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.ej, label %middle.block285, label %vector.body278, !llvm.loop !866

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec277
  br i1 %cmp.n286, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader293

.lr.ph.i.i.i.i.i.i.i.preheader293:                ; preds = %vector.memcheck268, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block285
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec277, %middle.block285 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader293
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.em = load double, ptr %i.ek, align 8, !tbaa !21
  %i.en = load double, ptr %i.el, align 8, !tbaa !21
  store double %i.en, ptr %i.ek, align 8, !tbaa !21
  store double %i.em, ptr %i.el, align 8, !tbaa !21
  %i.eo = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader293
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader293 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ep = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.ep, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.es = load double, ptr %i.eq, align 8, !tbaa !21
  %i.et = load double, ptr %i.er, align 8, !tbaa !21
  store double %i.et, ptr %i.eq, align 8, !tbaa !21
  store double %i.es, ptr %i.er, align 8, !tbaa !21
  %i.eu = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eu ; 2 uses
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !21
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !21
  store double %i.ey, ptr %i.ev, align 8, !tbaa !21
  store double %i.ex, ptr %i.ew, align 8, !tbaa !21
  %i.ez = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ez, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !867

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block285, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.fa = icmp sgt i64 %i.dw, 1
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %.not166 = icmp sgt i64 %i.dz, %.0169
  br i1 %.not166, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fb = add i64 %.0.i.i.i.i.i.i.i, %i.dy
  %i.fc = sub i64 %i.dp, %i.fb                    ; 3 uses
  %min.iters.check255 = icmp ult i64 %i.fc, 14
  br i1 %min.iters.check255, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.fd = mul i64 %i.dm, %3
  %i.fe = shl i64 %i.dx, 4                        ; 2 uses
  %i.ff = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.fg = getelementptr i8, ptr %i.dl, i64 %i.fd
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe
  %scevgep246 = getelementptr i8, ptr %i.fh, i64 %i.ff
  %scevgep247 = getelementptr i8, ptr %i.dl, i64 8
  %i.fi = add i64 %i.dm, 1
  %i.fj = mul i64 %3, %i.fi
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.fj
  %i.fk = mul i64 %i.db, %i.dm                    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.dl, i64 %i.fk
  %scevgep249.a = getelementptr i8, ptr %i.fl, i64 %i.fe
  %i.fm = getelementptr i8, ptr %scevgep249.a, i64 %i.ff
  %i.fn = getelementptr i8, ptr %i.dl, i64 %5
  %scevgep250 = getelementptr i8, ptr %i.fn, i64 %i.fk
  %bound0251 = icmp ult ptr %scevgep246, %scevgep250
  %bound1252 = icmp ult ptr %i.fm, %scevgep248
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck245
  %n.vec257 = and i64 %i.fc, -4                   ; 3 uses
  %i.fo = add i64 %i.dz, %n.vec257
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.fp = add i64 %i.dz, %index259                ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.fp ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fp ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load260 = load <2 x double>, ptr %i.fq, align 8, !tbaa !21, !alias.scope !904, !noalias !905
  %wide.load261 = load <2 x double>, ptr %i.fs, align 8, !tbaa !21, !alias.scope !904, !noalias !905
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load262 = load <2 x double>, ptr %i.fr, align 8, !tbaa !21, !alias.scope !905
  %wide.load263 = load <2 x double>, ptr %i.ft, align 8, !tbaa !21, !alias.scope !905
  store <2 x double> %wide.load262, ptr %i.fq, align 8, !tbaa !21, !alias.scope !904, !noalias !905
  store <2 x double> %wide.load263, ptr %i.fs, align 8, !tbaa !21, !alias.scope !904, !noalias !905
  store <2 x double> %wide.load260, ptr %i.fr, align 8, !tbaa !21, !alias.scope !905
  store <2 x double> %wide.load261, ptr %i.ft, align 8, !tbaa !21, !alias.scope !905
  %index.next264 = add nuw i64 %index259, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.fu, label %middle.block265, label %vector.body258, !llvm.loop !871

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.fc, %n.vec257
  br i1 %cmp.n266, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader292

.lr.ph.i17.i.i.i.i.i.i.preheader292:              ; preds = %vector.memcheck245, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block265
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dz, %vector.memcheck245 ], [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fo, %middle.block265 ] ; 6 uses
  %i.fv = sub i64 %i.dp, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter297 = and i64 %i.fv, 1
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader292
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !21
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !21
  store double %i.fz, ptr %i.fw, align 8, !tbaa !21
  store double %i.fy, ptr %i.fx, align 8, !tbaa !21
  %i.ga = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader292
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader292 ], [ %i.ga, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.gb = icmp eq i64 %.0169, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.gb, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !21
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !21
  store double %i.gf, ptr %i.gc, align 8, !tbaa !21
  store double %i.ge, ptr %i.gd, align 8, !tbaa !21
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.gg ; 2 uses
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !21
  %i.gk = load double, ptr %i.gi, align 8, !tbaa !21
  store double %i.gk, ptr %i.gh, align 8, !tbaa !21
  store double %i.gj, ptr %i.gi, align 8, !tbaa !21
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gg, %.0169
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !872

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gn = load <2 x double>, ptr %i.gm, align 1, !tbaa !30
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gp = load <2 x double>, ptr %i.go, align 16, !tbaa !30
  store <2 x double> %i.gp, ptr %i.gm, align 1, !tbaa !30
  store <2 x double> %i.gn, ptr %i.go, align 16, !tbaa !30
  %i.gq = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dz
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !873

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block265, %._crit_edge.i.i.i.i.i.i, %bb.m
  %i.gs = load ptr, ptr %0, align 8, !tbaa !25, !noalias !906 ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %.0169 ; 4 uses
  %i.gu = load i64, ptr %i.bn, align 8, !tbaa !28, !noalias !906 ; 3 uses
  %i.gv = sub nsw i64 %i.gu, %i.cq                ; 2 uses
  %i.gw = load i64, ptr %i.bp, align 8, !tbaa !16, !noalias !907 ; 22 uses
  %i.gx = mul nsw i64 %i.gw, %i.gv                ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.bq, align 8, !tbaa !19
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.0169 ; 3 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gw ; 18 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !21 ; 2 uses
  %i.hd = fmul double %i.hc, %i.hc                ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i34.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i

.lr.ph.i.i.i.i.i.i34.preheader:                   ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i34.epil.preheader, label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %.lr.ph.i.i.i.i.i.i34.preheader, %.lr.ph.i.i.i.i.i.i34
  %.01724.i.i.i.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i34 ], [ 1, %.lr.ph.i.i.i.i.i.i34.preheader ] ; 5 uses
  %.02223.i.i.i.i.i.i = phi double [ %i.ia, %.lr.ph.i.i.i.i.i.i34 ], [ %i.hd, %.lr.ph.i.i.i.i.i.i34.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i34 ], [ 0, %.lr.ph.i.i.i.i.i.i34.preheader ]
  %i.he = mul nsw i64 %.01724.i.i.i.i.i.i, %i.gw
  %i.hf = getelementptr [8 x i8], ptr %i.hb, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !21 ; 2 uses
  %i.hh = fmul double %i.hg, %i.hg
  %i.hi = fadd double %.02223.i.i.i.i.i.i, %i.hh
  %i.hj = add nuw nsw i64 %.01724.i.i.i.i.i.i, 1
  %i.hk = mul nsw i64 %i.hj, %i.gw
  %i.hl = getelementptr [8 x i8], ptr %i.hb, i64 %i.hk
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !21 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = fadd double %i.hi, %i.hn
  %i.hp = add nuw nsw i64 %.01724.i.i.i.i.i.i, 2
  %i.hq = mul nsw i64 %i.hp, %i.gw
  %i.hr = getelementptr [8 x i8], ptr %i.hb, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !21 ; 2 uses
  %i.ht = fmul double %i.hs, %i.hs
  %i.hu = fadd double %i.ho, %i.ht
  %i.hv = add nuw nsw i64 %.01724.i.i.i.i.i.i, 3
  %i.hw = mul nsw i64 %i.hv, %i.gw
  %i.hx = getelementptr [8 x i8], ptr %i.hb, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !21 ; 2 uses
  %i.hz = fmul double %i.hy, %i.hy
  %i.ia = fadd double %i.hu, %i.hz                ; 3 uses
  %i.ib = add nuw nsw i64 %.01724.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i34, !llvm.loop !878

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i34
  br i1 %lcmp.mod300.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i34.epil.preheader

.lr.ph.i.i.i.i.i.i34.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i34.preheader
  %.01724.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i34.preheader ], [ %i.ib, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.epil.init = phi double [ %i.hd, %.lr.ph.i.i.i.i.i.i34.preheader ], [ %i.ia, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod302)
  br label %.lr.ph.i.i.i.i.i.i34.epil

.lr.ph.i.i.i.i.i.i34.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i34.epil, %.lr.ph.i.i.i.i.i.i34.epil.preheader
  %.01724.i.i.i.i.i.i.epil = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i34.epil ], [ %.01724.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i34.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.i.epil = phi double [ %i.ig, %.lr.ph.i.i.i.i.i.i34.epil ], [ %.02223.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i34.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i34.epil ], [ 0, %.lr.ph.i.i.i.i.i.i34.epil.preheader ]
  %i.ic = mul nsw i64 %.01724.i.i.i.i.i.i.epil, %i.gw
  %i.id = getelementptr [8 x i8], ptr %i.hb, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !21 ; 2 uses
  %i.if = fmul double %i.ie, %i.ie
  %i.ig = fadd double %.02223.i.i.i.i.i.i.epil, %i.if ; 2 uses
  %i.ih = add nuw nsw i64 %.01724.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter299
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i34.epil, !llvm.loop !879

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i34.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.ii = phi double [ %i.hd, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.ia, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa ], [ %i.ig, %.lr.ph.i.i.i.i.i.i34.epil ] ; 2 uses
  %i.ij = load double, ptr %i.gy, align 8, !tbaa !21 ; 8 uses
  %i.ik = fcmp ugt double %i.ii, f0x0010000000000000
  br i1 %i.ik, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store double 0.000000e+00, ptr %i.ha, align 8, !tbaa !21
  %ident.check234.not = icmp eq i64 %i.gw, 1
  %or.cond = and i1 %min.iters.check236, %ident.check234.not
  br i1 %or.cond, label %vector.body239, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291

vector.body239:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %vector.body239
  %index240 = phi i64 [ %index.next241, %vector.body239 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %index240 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x double> zeroinitializer, ptr %i.il, align 8, !tbaa !21
  store <2 x double> zeroinitializer, ptr %i.im, align 8, !tbaa !21
  %index.next241 = add nuw i64 %index240, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next241, %n.vec238
  br i1 %i.in, label %middle.block242, label %vector.body239, !llvm.loop !880

middle.block242:                                  ; preds = %vector.body239
  br i1 %cmp.n243, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec238, %middle.block242 ] ; 3 uses
  br i1 %lcmp.mod304.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291 ]
  %i.io = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.gw
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.io
  store double 0.000000e+00, ptr %i.ip, align 8, !tbaa !21
  %i.iq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter303
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !881

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291 ], [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ir = add i64 %i.dh, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gw
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.it
  store double 0.000000e+00, ptr %i.iu, align 8, !tbaa !21
  %i.iv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.iw = mul nsw i64 %i.iv, %i.gw
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.iw
  store double 0.000000e+00, ptr %i.ix, align 8, !tbaa !21
  %i.iy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.iz = mul nsw i64 %i.iy, %i.gw
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.iz
  store double 0.000000e+00, ptr %i.ja, align 8, !tbaa !21
  %i.jb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.jc = mul nsw i64 %i.jb, %i.gw
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.jc
  store double 0.000000e+00, ptr %i.jd, align 8, !tbaa !21
  %i.je = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.je, %i.cp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !882

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.jf = fmul double %i.ij, %i.ij
  %i.jg = fadd double %i.ii, %i.jf
  %i.jh = call double @sqrt(double noundef %i.jg) #24 ; 2 uses
  %i.ji = fcmp ult double %i.ij, 0.000000e+00
  %i.jj = fneg double %i.jh
  %storemerge.i.i = select i1 %i.ji, double %i.jh, double %i.jj ; 4 uses
  %i.jk = fsub double %i.ij, %storemerge.i.i      ; 6 uses
  %ident.check.not = icmp eq i64 %i.gw, 1
  %or.cond288 = and i1 %min.iters.check221, %ident.check.not
  br i1 %or.cond288, label %vector.ph222, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

vector.ph222:                                     ; preds = %.critedge.i.i
  %broadcast.splatinsert224 = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat225 = shufflevector <2 x double> %broadcast.splatinsert224, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next229, %vector.body226 ] ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %index227 ; 2 uses
  %wide.load228 = load <2 x double>, ptr %i.jl, align 8, !tbaa !21
  %i.jm = fdiv <2 x double> %wide.load228, %broadcast.splat225
  store <2 x double> %i.jm, ptr %i.jl, align 8, !tbaa !21
  %index.next229 = add nuw i64 %index227, 2       ; 2 uses
  %i.jn = icmp eq i64 %index.next229, %n.vec223
  br i1 %i.jn, label %middle.block230, label %vector.body226, !llvm.loop !883

middle.block230:                                  ; preds = %vector.body226
  br i1 %cmp.n231, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.critedge.i.i, %middle.block230
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.critedge.i.i ], [ %n.vec223, %middle.block230 ] ; 4 uses
  %i.jo = add i64 %.07.lcssa.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.jp = sub i64 %i.bo, %i.jo
  %xtraiter305 = and i64 %i.jp, 3                 ; 2 uses
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.jq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.gw
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.jq ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !21
  %i.jt = fdiv double %i.js, %i.jk
  store double %i.jt, ptr %i.jr, align 8, !tbaa !21
  %i.ju = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !884

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.jv = add i64 %i.di, %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.jw = icmp ugt i64 %i.jv, -4
  br i1 %i.jw, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.jx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, %i.gw
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.jx ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !21
  %i.ka = fdiv double %i.jz, %i.jk
  store double %i.ka, ptr %i.jy, align 8, !tbaa !21
  %i.kb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.kc = mul nsw i64 %i.kb, %i.gw
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kc ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !21
  %i.kf = fdiv double %i.ke, %i.jk
  store double %i.kf, ptr %i.kd, align 8, !tbaa !21
  %i.kg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.kh = mul nsw i64 %i.kg, %i.gw
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kh ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !21
  %i.kk = fdiv double %i.kj, %i.jk
  store double %i.kk, ptr %i.ki, align 8, !tbaa !21
  %i.kl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.km = mul nsw i64 %i.kl, %i.gw
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.km ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !21
  %i.kp = fdiv double %i.ko, %i.jk
  store double %i.kp, ptr %i.kn, align 8, !tbaa !21
  %i.kq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.kq, %i.cp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !885

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block230
  %i.kr = fsub double %storemerge.i.i, %i.ij
  %i.ks = fdiv double %i.kr, %storemerge.i.i
  store double %i.ks, ptr %i.ha, align 8, !tbaa !21
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit
  %.0165 = phi double [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit ], [ %i.ij, %middle.block242 ], [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.kt = mul nsw i64 %i.gw, %i.cn
  %i.ku = getelementptr [8 x i8], ptr %i.gt, i64 %i.kt
  store double %.0165, ptr %i.ku, align 8, !tbaa !21
  %.not29 = icmp eq i64 %.0169, 0
  br i1 %.not29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gx
  store ptr %i.kv, ptr %1, align 8, !tbaa !161, !alias.scope !908
  store i64 %.0169, ptr %i.ct, align 8, !tbaa !34, !alias.scope !908
  store i64 %i.cq, ptr %i.cu, align 8, !tbaa !34, !alias.scope !908
  store ptr %0, ptr %i.cv, align 8, !tbaa !69, !alias.scope !908
  store i64 0, ptr %i.cw, align 8, !tbaa !34, !alias.scope !908
  store i64 %i.gv, ptr %i.cx, align 8, !tbaa !34, !alias.scope !908
  store i64 %i.gw, ptr %i.cy, align 8, !tbaa !164, !alias.scope !908
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.kw = sub nsw i64 %i.gu, %i.cp                ; 2 uses
  %i.kx = mul nsw i64 %i.gw, %i.kw
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.kx
  store ptr %i.ky, ptr %2, align 8
  store i64 %i.cp, ptr %.sroa.485.0..sroa_idx, align 8
  store ptr %i.gt, ptr %.sroa.586.0..sroa_idx, align 8
  store i64 %i.gu, ptr %.sroa.788.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.889.0..sroa_idx, align 8
  store i64 %.0169, ptr %.sroa.990.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.1091.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1192.0..sroa_idx, align 8
  store i64 %i.kw, ptr %.sroa.1294.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1395.0..sroa_idx, align 8
  %i.kz = load ptr, ptr %i.cb, align 8, !tbaa !103
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull %i.kz)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.la = load ptr, ptr %0, align 8, !tbaa !25, !noalias !909 ; 8 uses
  %i.lb = load i64, ptr %i.bp, align 8, !tbaa !16, !noalias !909 ; 7 uses
  %i.lc = mul nsw i64 %i.lb, %.0169
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.lc ; 11 uses
  %i.le = add nuw nsw i64 %.0169, 1               ; 5 uses
  %i.lf = mul i64 %i.lb, %i.cn
  %i.lg = getelementptr [8 x i8], ptr %i.la, i64 %i.lf ; 10 uses
  %i.lh = ptrtoint ptr %i.ld to i64               ; 2 uses
  %i.li = and i64 %i.lh, 7
  %.not.i.i.i.i.i.i.i35 = icmp eq i64 %i.li, 0
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.q, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36

bb.q:                                             ; preds = %bb.p
  %i.lj = lshr exact i64 %i.lh, 3
  %i.lk = and i64 %i.lj, 1
  %i.ll = call i64 @llvm.smin.i64(i64 %i.lk, i64 %i.le)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i37 = phi i64 [ %i.ll, %bb.q ], [ %i.le, %bb.p ] ; 13 uses
  %i.lm = sub nsw i64 %i.le, %.0.i.i.i.i.i.i.i37  ; 2 uses
  %i.ln = sdiv i64 %i.lm, 2                       ; 2 uses
  %i.lo = shl nsw i64 %i.ln, 1                    ; 2 uses
  %i.lp = add nsw i64 %i.lo, %.0.i.i.i.i.i.i.i37  ; 6 uses
  %i.lq = icmp sgt i64 %.0.i.i.i.i.i.i.i37, 0
  br i1 %i.lq, label %.lr.ph.i.i.i.i.i.i.i45.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i.i45.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36
  %min.iters.check207 = icmp ult i64 %.0.i.i.i.i.i.i.i37, 10
  br i1 %min.iters.check207, label %.lr.ph.i.i.i.i.i.i.i45.preheader290, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader
  %i.lr = mul i64 %i.lb, %i.dk
  %i.ls = shl i64 %.0.i.i.i.i.i.i.i37, 3          ; 2 uses
  %i.lt = getelementptr i8, ptr %i.la, i64 %i.lr
  %scevgep201 = getelementptr i8, ptr %i.lt, i64 %i.ls
  %i.lu = mul i64 %i.da, %i.lb
  %i.lv = getelementptr i8, ptr %i.la, i64 %i.lu
  %scevgep202 = getelementptr i8, ptr %i.lv, i64 %i.ls
  %bound0203 = icmp ult ptr %i.ld, %scevgep202
  %bound1204 = icmp ult ptr %i.lg, %scevgep201
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %.lr.ph.i.i.i.i.i.i.i45.preheader290, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck200
  %n.vec209 = and i64 %.0.i.i.i.i.i.i.i37, 9223372036854775804 ; 3 uses
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %index211 ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index211 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.lw, align 8, !tbaa !21, !alias.scope !910, !noalias !911
  %wide.load213 = load <2 x double>, ptr %i.ly, align 8, !tbaa !21, !alias.scope !910, !noalias !911
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %wide.load214 = load <2 x double>, ptr %i.lx, align 8, !tbaa !21, !alias.scope !911
  %wide.load215 = load <2 x double>, ptr %i.lz, align 8, !tbaa !21, !alias.scope !911
  store <2 x double> %wide.load214, ptr %i.lw, align 8, !tbaa !21, !alias.scope !910, !noalias !911
  store <2 x double> %wide.load215, ptr %i.ly, align 8, !tbaa !21, !alias.scope !910, !noalias !911
  store <2 x double> %wide.load212, ptr %i.lx, align 8, !tbaa !21, !alias.scope !911
  store <2 x double> %wide.load213, ptr %i.lz, align 8, !tbaa !21, !alias.scope !911
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.ma, label %middle.block217, label %vector.body210, !llvm.loop !893

middle.block217:                                  ; preds = %vector.body210
  %cmp.n218 = icmp eq i64 %.0.i.i.i.i.i.i.i37, %n.vec209
  br i1 %cmp.n218, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i45.preheader290

.lr.ph.i.i.i.i.i.i.i45.preheader290:              ; preds = %vector.memcheck200, %.lr.ph.i.i.i.i.i.i.i45.preheader, %middle.block217
  %.05.i.i.i.i.i.i.i46.ph = phi i64 [ 0, %vector.memcheck200 ], [ 0, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %n.vec209, %middle.block217 ] ; 5 uses
  %.neg314 = or disjoint i64 %.05.i.i.i.i.i.i.i46.ph, 1
  %xtraiter308 = and i64 %.0.i.i.i.i.i.i.i37, 1
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i45.prol

.lr.ph.i.i.i.i.i.i.i45.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader290
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.05.i.i.i.i.i.i.i46.ph ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %.05.i.i.i.i.i.i.i46.ph ; 2 uses
  %i.md = load double, ptr %i.mb, align 8, !tbaa !21
  %i.me = load double, ptr %i.mc, align 8, !tbaa !21
  store double %i.me, ptr %i.mb, align 8, !tbaa !21
  store double %i.md, ptr %i.mc, align 8, !tbaa !21
  %i.mf = or disjoint i64 %.05.i.i.i.i.i.i.i46.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit

.lr.ph.i.i.i.i.i.i.i45.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i45.prol, %.lr.ph.i.i.i.i.i.i.i45.preheader290
  %.05.i.i.i.i.i.i.i46.unr = phi i64 [ %.05.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader290 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i45.prol ]
  %i.mg = icmp eq i64 %.0.i.i.i.i.i.i.i37, %.neg314
  br i1 %i.mg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i45:                           ; preds = %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i45
  %.05.i.i.i.i.i.i.i46 = phi i64 [ %i.mq, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.05.i.i.i.i.i.i.i46.unr, %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit ] ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.05.i.i.i.i.i.i.i46 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %.05.i.i.i.i.i.i.i46 ; 2 uses
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !21
  %i.mk = load double, ptr %i.mi, align 8, !tbaa !21
  store double %i.mk, ptr %i.mh, align 8, !tbaa !21
  store double %i.mj, ptr %i.mi, align 8, !tbaa !21
  %i.ml = add nuw nsw i64 %.05.i.i.i.i.i.i.i46, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.ml ; 2 uses
  %i.mo = load double, ptr %i.mm, align 8, !tbaa !21
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !21
  store double %i.mp, ptr %i.mm, align 8, !tbaa !21
  store double %i.mo, ptr %i.mn, align 8, !tbaa !21
  %i.mq = add nuw nsw i64 %.05.i.i.i.i.i.i.i46, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i47.1 = icmp eq i64 %i.mq, %.0.i.i.i.i.i.i.i37
  br i1 %exitcond.not.i.i.i.i.i.i.i47.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i45, !llvm.loop !894

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i45, %middle.block217, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36
  %i.mr = icmp sgt i64 %i.lm, 1
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i.i43, label %._crit_edge.i.i.i.i.i.i39

._crit_edge.i.i.i.i.i.i39:                        ; preds = %.lr.ph.i.i.i.i.i.i43, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38
  %.not167 = icmp sgt i64 %i.lp, %.0169
  br i1 %.not167, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40.preheader

.lr.ph.i17.i.i.i.i.i.i40.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i39
  %i.ms = add i64 %.0.i.i.i.i.i.i.i37, %i.lo
  %i.mt = sub i64 %i.le, %i.ms                    ; 3 uses
  %min.iters.check188 = icmp ult i64 %i.mt, 14
  br i1 %min.iters.check188, label %.lr.ph.i17.i.i.i.i.i.i40.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i40.preheader
  %i.mu = mul i64 %i.lb, %6
  %i.mv = shl i64 %i.ln, 4                        ; 2 uses
  %i.mw = shl i64 %.0.i.i.i.i.i.i.i37, 3          ; 2 uses
  %i.mx = getelementptr i8, ptr %i.la, i64 %i.mu
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.mv
  %scevgep = getelementptr i8, ptr %i.my, i64 %i.mw
  %scevgep183 = getelementptr i8, ptr %i.la, i64 8
  %i.mz = add i64 %i.lb, 1
  %i.na = mul i64 %6, %i.mz
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.na
  %i.nb = mul i64 %i.cz, %i.lb                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.la, i64 %i.nb
  %scevgep185.a = getelementptr i8, ptr %i.nc, i64 %i.mv
  %i.nd = getelementptr i8, ptr %scevgep185.a, i64 %i.mw
  %i.ne = getelementptr i8, ptr %i.la, i64 %8
  %scevgep186 = getelementptr i8, ptr %i.ne, i64 %i.nb
  %bound0 = icmp ult ptr %scevgep, %scevgep186
  %bound1 = icmp ult ptr %i.nd, %scevgep184
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i40.preheader289, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck
  %n.vec190 = and i64 %i.mt, -4                   ; 3 uses
  %i.nf = add i64 %i.lp, %n.vec190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body191 ] ; 2 uses
  %i.ng = add i64 %i.lp, %index192                ; 2 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.ng ; 3 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.ng ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.nh, align 8, !tbaa !21, !alias.scope !912, !noalias !913
  %wide.load193 = load <2 x double>, ptr %i.nj, align 8, !tbaa !21, !alias.scope !912, !noalias !913
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  %wide.load194 = load <2 x double>, ptr %i.ni, align 8, !tbaa !21, !alias.scope !913
  %wide.load195 = load <2 x double>, ptr %i.nk, align 8, !tbaa !21, !alias.scope !913
  store <2 x double> %wide.load194, ptr %i.nh, align 8, !tbaa !21, !alias.scope !912, !noalias !913
  store <2 x double> %wide.load195, ptr %i.nj, align 8, !tbaa !21, !alias.scope !912, !noalias !913
  store <2 x double> %wide.load, ptr %i.ni, align 8, !tbaa !21, !alias.scope !913
  store <2 x double> %wide.load193, ptr %i.nk, align 8, !tbaa !21, !alias.scope !913
  %index.next196 = add nuw i64 %index192, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.nl, label %middle.block197, label %vector.body191, !llvm.loop !898

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %i.mt, %n.vec190
  br i1 %cmp.n198, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40.preheader289

.lr.ph.i17.i.i.i.i.i.i40.preheader289:            ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i40.preheader, %middle.block197
  %.05.i18.i.i.i.i.i.i41.ph = phi i64 [ %i.lp, %vector.memcheck ], [ %i.lp, %.lr.ph.i17.i.i.i.i.i.i40.preheader ], [ %i.nf, %middle.block197 ] ; 6 uses
  %i.nm = sub i64 %i.le, %.05.i18.i.i.i.i.i.i41.ph
  %xtraiter311 = and i64 %i.nm, 1
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i40.prol

.lr.ph.i17.i.i.i.i.i.i40.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i40.preheader289
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %.05.i18.i.i.i.i.i.i41.ph ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.05.i18.i.i.i.i.i.i41.ph ; 2 uses
  %i.np = load double, ptr %i.nn, align 8, !tbaa !21
  %i.nq = load double, ptr %i.no, align 8, !tbaa !21
  store double %i.nq, ptr %i.nn, align 8, !tbaa !21
  store double %i.np, ptr %i.no, align 8, !tbaa !21
  %i.nr = add nsw i64 %.05.i18.i.i.i.i.i.i41.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i40.prol, %.lr.ph.i17.i.i.i.i.i.i40.preheader289
  %.05.i18.i.i.i.i.i.i41.unr = phi i64 [ %.05.i18.i.i.i.i.i.i41.ph, %.lr.ph.i17.i.i.i.i.i.i40.preheader289 ], [ %i.nr, %.lr.ph.i17.i.i.i.i.i.i40.prol ]
  %i.ns = icmp eq i64 %.0169, %.05.i18.i.i.i.i.i.i41.ph
  br i1 %i.ns, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40

.lr.ph.i17.i.i.i.i.i.i40:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i40
  %.05.i18.i.i.i.i.i.i41 = phi i64 [ %i.oc, %.lr.ph.i17.i.i.i.i.i.i40 ], [ %.05.i18.i.i.i.i.i.i41.unr, %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit ] ; 4 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %.05.i18.i.i.i.i.i.i41 ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.05.i18.i.i.i.i.i.i41 ; 2 uses
  %i.nv = load double, ptr %i.nt, align 8, !tbaa !21
  %i.nw = load double, ptr %i.nu, align 8, !tbaa !21
  store double %i.nw, ptr %i.nt, align 8, !tbaa !21
  store double %i.nv, ptr %i.nu, align 8, !tbaa !21
  %i.nx = add nsw i64 %.05.i18.i.i.i.i.i.i41, 1   ; 3 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.nx ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.nx ; 2 uses
  %i.oa = load double, ptr %i.ny, align 8, !tbaa !21
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !21
  store double %i.ob, ptr %i.ny, align 8, !tbaa !21
  store double %i.oa, ptr %i.nz, align 8, !tbaa !21
  %i.oc = add nsw i64 %.05.i18.i.i.i.i.i.i41, 2
  %exitcond.not.i19.i.i.i.i.i.i42.1 = icmp eq i64 %i.nx, %.0169
  br i1 %exitcond.not.i19.i.i.i.i.i.i42.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40, !llvm.loop !899

.lr.ph.i.i.i.i.i.i43:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, %.lr.ph.i.i.i.i.i.i43
  %.021.i.i.i.i.i.i44 = phi i64 [ %i.oh, %.lr.ph.i.i.i.i.i.i43 ], [ %.0.i.i.i.i.i.i.i37, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38 ] ; 3 uses
  %i.od = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.021.i.i.i.i.i.i44 ; 2 uses
  %i.oe = load <2 x double>, ptr %i.od, align 1, !tbaa !30
  %i.of = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %.021.i.i.i.i.i.i44 ; 2 uses
  %i.og = load <2 x double>, ptr %i.of, align 16, !tbaa !30
  store <2 x double> %i.og, ptr %i.od, align 1, !tbaa !30
  store <2 x double> %i.oe, ptr %i.of, align 16, !tbaa !30
  %i.oh = add nsw i64 %.021.i.i.i.i.i.i44, 2      ; 2 uses
  %i.oi = icmp slt i64 %i.oh, %i.lp
  br i1 %i.oi, label %.lr.ph.i.i.i.i.i.i43, label %._crit_edge.i.i.i.i.i.i39, !llvm.loop !873

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48: ; preds = %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i40, %middle.block197, %._crit_edge.i.i.i.i.i.i39, %bb.o
  %i.oj = add nsw i64 %.0169, -1
  %i.ok = icmp sgt i64 %.0169, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ok, label %bb.m, label %.loopexit, !llvm.loop !900

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, %bb.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.786", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.748", align 8 ; 14 uses
  %3 = alloca %"class.Eigen::Block.319", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.748", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28   ; 32 uses
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.e, i64 %i.c) ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.sroa.speculated.i, %i.h
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.i) #24
  %i.j = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.j, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.k, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.c
  %i.m = shl nuw i64 %.sroa.speculated.i, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %i.f, align 8, !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %.sroa.speculated.i, ptr %i.g, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109
  %.not.i.i82 = icmp eq i64 %i.e, %i.s
  br i1 %.not.i.i82, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.t) #24
  %i.u = icmp sgt i64 %i.e, 0
  br i1 %i.u, label %bb.g, label %.sink.split.i.i83

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ugt i64 %i.e, 2305843009213693951
  br i1 %i.v, label %bb.h, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85

bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85: ; preds = %bb.g
  %i.x = shl nuw i64 %i.e, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #25 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %.sink.split.i.i83

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i83:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85, %bb.f
  %.sink.i.i84 = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85 ], [ null, %bb.f ]
  store ptr %.sink.i.i84, ptr %i.q, align 8, !tbaa !103
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i83
  store i64 %i.e, ptr %i.r, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !28  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !158
  %.not.i.i86 = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i.i86, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.af) #24
  %i.ag = icmp sgt i64 %i.ac, 0
end_hunk_0
