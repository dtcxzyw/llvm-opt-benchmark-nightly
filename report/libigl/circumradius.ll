Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_:bb.a
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !38, !alias.scope !1896
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !38, !alias.scope !1897
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !38, !alias.scope !1897
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !38, !alias.scope !1898, !noalias !1899
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !38, !alias.scope !1898, !noalias !1899
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !38, !alias.scope !1898, !noalias !1899
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !38, !alias.scope !1898, !noalias !1899
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1881

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1894, !nonnull !59, !align !60
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !347
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1892, !nonnull !59, !align !335 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !336
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !71
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !274
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !38
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !71
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !71
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1882

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %bb.c, !llvm.loop !1883

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !38
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !38
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !38
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !38
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1884

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !343    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.d
  %i.m = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.o = icmp samesign ugt i64 %i.b, 16384        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44
  %i.r = load ptr, ptr %0, align 8, !tbaa !1901
  invoke void @_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi2ELb0ELi0EE3runElPKdlPd(i64 noundef %i.q, ptr noundef %i.r, i64 noundef 4, ptr noundef nonnull %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br i1 %i.o, label %bb.h, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.m) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  br i1 %i.o, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.m) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28: ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEENS_7ProductINS2_INS3_IdLin1ELi4ELi0ELin1ELi4EEELi1ELi4ELb0EEENS3_IdLin1ELin1ELi0ELin1ELin1EEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISF_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.110", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1920, !nonnull !59, !align !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not11.i.i.i.i.i = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %.not11.i.i.i.i.i)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 1, i64 noundef %i.d)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1920 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  %.pre12.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.pre13.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !82
  %.sroa.03.0.copyload.i.i.i.i.i.i = load ptr, ptr %1, align 8 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.44.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i, align 8
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pre13.i.i.i.i.i, %.pre12.i.i.i.i.i
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 1, i64 noundef %.pre12.i.i.i.i.i)
          to label %.noexc3.i unwind label %bb.c

.noexc3.i:                                        ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %.noexc3.i, %.noexc.i
  %i.f = phi i64 [ %.pr.i.i.i.i.i.i.i.i.i, %.noexc3.i ], [ %.pre12.i.i.i.i.i, %.noexc.i ] ; 6 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !76     ; 9 uses
  %i.h = icmp sgt i64 %i.f, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 8
  %i.k = load ptr, ptr %.pre.i.i.i.i.i, align 8, !tbaa !33, !noalias !1921 ; 4 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34, !noalias !1921 ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !95   ; 4 uses
  %i.n = getelementptr [8 x i8], ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 %i.m ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.m, 4 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.idx.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.m, 24 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 %.idx.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %min.iters.check = icmp ugt i64 %i.f, 11
  %ident.check.not = icmp eq i64 %i.l, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.q = shl i64 %i.f, 3                          ; 2 uses
  %i.r = getelementptr i8, ptr %i.g, i64 %i.q     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 %.idx.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %5 = shl i64 %i.m, 3
  %i.v = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 %5
  %i.w = getelementptr i8, ptr %i.k, i64 %i.q
  %bound0 = icmp ult ptr %i.g, %i.t
  %bound1 = icmp ult ptr %i.p, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %i.x = insertelement <4 x ptr> poison, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, i64 2 ; 2 uses
  %6 = insertelement <4 x ptr> %i.x, ptr %i.u, i64 0
  %i.y = insertelement <4 x ptr> %6, ptr %i.v, i64 1
  %i.z = insertelement <4 x ptr> %i.y, ptr %i.w, i64 3
  %7 = getelementptr i8, <4 x ptr> %i.z, <4 x i64> <i64 8, i64 8, i64 8, i64 24>
  %8 = insertelement <4 x ptr> poison, ptr %i.g, i64 0
  %9 = shufflevector <4 x ptr> %8, <4 x ptr> poison, <4 x i32> zeroinitializer
  %10 = icmp ult <4 x ptr> %9, %7
  %i.aa = insertelement <4 x ptr> %i.x, ptr %i.o, i64 0
  %i.ab = insertelement <4 x ptr> %i.aa, ptr %i.n, i64 1
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %i.k, i64 3
  %i.ad = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %i.ae = shufflevector <4 x ptr> %i.ad, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.af = icmp ult <4 x ptr> %i.ac, %i.ae
  %i.ag = and <4 x i1> %10, %i.af
  %i.ah = bitcast <4 x i1> %i.ag to i4
  %i.ai = icmp ne i4 %i.ah, 0
  %op.rdx = or i1 %i.ai, %found.conflict
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775806      ; 3 uses
  %i.aj = load double, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !1922
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = load double, ptr %i.n, align 8, !tbaa !38, !alias.scope !1923
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = load double, ptr %i.o, align 8, !tbaa !38, !alias.scope !1924
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = load double, ptr %i.p, align 8, !tbaa !38, !alias.scope !1925
  %broadcast.splatinsert47 = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat48 = shufflevector <2 x double> %broadcast.splatinsert47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.k, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !38, !alias.scope !1926
  %i.ap = fmul <2 x double> %broadcast.splat, %wide.load
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %wide.load40 = load <2 x double>, ptr %i.aq, align 8, !tbaa !38, !alias.scope !1926
  %i.ar = fmul <2 x double> %broadcast.splat42, %wide.load40
  %i.as = fadd <2 x double> %i.ap, %i.ar
  %i.at = getelementptr i8, ptr %i.ao, i64 16
  %wide.load43 = load <2 x double>, ptr %i.at, align 8, !tbaa !38, !alias.scope !1926
  %i.au = fmul <2 x double> %broadcast.splat45, %wide.load43
  %i.av = getelementptr i8, ptr %i.ao, i64 24
  %wide.load46 = load <2 x double>, ptr %i.av, align 8, !tbaa !38, !alias.scope !1926
  %i.aw = fmul <2 x double> %broadcast.splat48, %wide.load46
  %i.ax = fadd <2 x double> %i.au, %i.aw
  %i.ay = fadd <2 x double> %i.as, %i.ax
  store <2 x double> %i.ay, ptr %i.an, align 8, !tbaa !38, !alias.scope !1927, !noalias !1928
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1911

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.br, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.bb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.l
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bb
  %i.bd = load double, ptr %.sroa.03.0.copyload.i.i.i.i.i.i, align 8, !tbaa !38
  %i.be = load double, ptr %i.n, align 8, !tbaa !38
  %i.bf = load double, ptr %i.o, align 8, !tbaa !38
  %i.bg = load double, ptr %i.p, align 8, !tbaa !38
  %i.bh = load <4 x double>, ptr %i.bc, align 8, !tbaa !38
  %i.bi = insertelement <4 x double> poison, double %i.bd, i64 0
  %i.bj = insertelement <4 x double> %i.bi, double %i.be, i64 1
  %i.bk = insertelement <4 x double> %i.bj, double %i.bf, i64 2
  %i.bl = insertelement <4 x double> %i.bk, double %i.bg, i64 3
  %i.bm = fmul <4 x double> %i.bl, %i.bh          ; 2 uses
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.bo = shufflevector <4 x double> %i.bm, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.bp = fadd <2 x double> %i.bn, %i.bo          ; 2 uses
  %shift = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bp, %shift
  %i.bq = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.bq, ptr %i.ba, align 8, !tbaa !38
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.br, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %scalar.ph, !llvm.loop !1912

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i, %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %4, align 8, !tbaa !76
  call void @free(ptr noundef %i.bt) #20
  resume { ptr, i32 } %i.bs

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  %i.bu = load ptr, ptr %0, align 8, !tbaa !141   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1929, !nonnull !59, !align !60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !86 ; 2 uses
  %i.bz = load double, ptr %i.g, align 8, !tbaa !38
  store double %i.bz, ptr %i.bu, align 8, !tbaa !38
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !38
  store double %i.cc, ptr %i.ca, align 8, !tbaa !38
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %i.by, 4
  %i.cd = getelementptr inbounds i8, ptr %i.bu, i64 %.idx.i.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !38
  store double %i.cf, ptr %i.cd, align 8, !tbaa !38
  call void @free(ptr noundef %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !147
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELi3ELin1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.j) #20
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !148
  br label %_ZN5Eigen12DenseStorageIdLin1ELi3ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELi3ELin1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %2, ptr %i.g, align 8, !tbaa !147
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductINS3_IdLi3ELin1ELi0ELi3ELin1EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.4712", align 8 ; 9 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.3233", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel.4726", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.Eigen::Product.4679", align 8 ; 7 uses
  %9 = alloca %"class.Eigen::Matrix.821", align 8 ; 13 uses
  %i.b = ptrtoaddr ptr %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1943, !nonnull !59, !align !60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !147, !noalias !1944 ; 2 uses
  %i.h = load double, ptr %i.c, align 8, !tbaa !38, !noalias !1944 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.g, ptr %i.j, align 8, !alias.scope !1945
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double %i.h, ptr %i.k, align 8, !tbaa !51, !alias.scope !1945
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.e, ptr %i.l, align 8, !tbaa !1946, !alias.scope !1945
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.i, align 8, !noalias !1945 ; 3 uses
  store i64 %i.n, ptr %i.m, align 8, !alias.scope !1945
  %.cast.i.i.i.i.i = inttoptr i64 %i.n to ptr     ; 2 uses
end_hunk_0
