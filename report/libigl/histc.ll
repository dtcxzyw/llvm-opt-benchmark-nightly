Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/histc?download=true
inline.NumInlined: 944
inline.NumDeleted: 416
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !223
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !72, !alias.scope !222
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !223
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !213

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.az, 152
  br i1 %min.iters.check59, label %.lr.ph.i.i.i30.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = and i64 %i.az, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %bound0 = icmp ult ptr %i.ax, %i.bg
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i30.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec61, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bk = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.bl = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !226
  %wide.load67 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !72, !alias.scope !226
  %i.bm = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !72, !alias.scope !227, !noalias !228
  store <2 x i64> %wide.load67, ptr %i.bm, align 8, !tbaa !72, !alias.scope !227, !noalias !228
  store <2 x i64> zeroinitializer, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !226
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !72, !alias.scope !226
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bn, label %middle.block69, label %vector.body62, !llvm.loop !220

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bb, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader73

.lr.ph.i.i.i30.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i30.preheader, %middle.block69
  %.012.i.i.i31.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block69 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block69 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader73, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader73 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader73 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !225
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !72, !alias.scope !224
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !225
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !221

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block69, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block69 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !75
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !230
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.f) #19
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !229
  store i64 %3, ptr %i.c, align 8, !tbaa !230
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_NS4_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSK_EEbS8_SM_mEUlimE_SN_EEbS8_SM_RKSH_RKT2_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.85, align 8             ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !52
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !94, !nonnull !62, !align !63 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96, !nonnull !62
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97, !nonnull !62 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 4 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98, !nonnull !62, !align !63
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !39 ; 4 uses
  %i.y = fcmp olt double %i.x, %i.r
  br i1 %i.y, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.q, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !39
  %i.ad = fcmp ogt double %i.x, %i.ac
  br i1 %i.ad, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc i64 %i.z to i32
  %i.af = add i32 %i.ae, -1                       ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01924.i.i = phi i32 [ %..019.i.i, %.lr.ph.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.02023.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ah = add nuw nsw i32 %.02023.i.i, %.01924.i.i
  %i.ai = lshr i32 %i.ah, 1                       ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !39
  %i.am = fcmp olt double %i.x, %i.al             ; 2 uses
  %.020..i.i = select i1 %i.am, i32 %.02023.i.i, i32 %i.ai ; 3 uses
  %..019.i.i = select i1 %i.am, i32 %i.ai, i32 %.01924.i.i ; 3 uses
  %i.an = sub nsw i32 %..019.i.i, %.020..i.i
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.020.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %.020..i.i, %.lr.ph.i.i ]
  %.019.lcssa.i.i = phi i32 [ %i.af, %bb.e ], [ %..019.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ap = sext i32 %.019.lcssa.i.i to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !39
  %i.as = fcmp oeq double %i.x, %i.ar
  %.019..020.i.i = select i1 %i.as, i32 %.019.lcssa.i.i, i32 %.020.lcssa.i.i
  br label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit

_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit: ; preds = %bb.c, %bb.d, %._crit_edge.i.i
  %.019..020.sink.i.i = phi i32 [ %.019..020.i.i, %._crit_edge.i.i ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %.019..020.sink.i.i, ptr %i.at, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !231

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.au = add nsw i32 %0, 1
  %i.av = sitofp i32 %i.au to double
  %i.aw = uitofp i32 %i.f to double
  %i.ax = fdiv double %i.av, %i.aw
  %i.ay = tail call double @llvm.round.f64(double %i.ax)
  %i.az = fptosi double %i.ay to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bc = shl nuw nsw i64 %i.g, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #23
          to label %.noexc unwind label %bb.h     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !70    ; 8 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = add i64 %i.bg, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.be, i64 %i.bp ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bq = getelementptr i8, ptr %next.gep86, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !239
  %wide.load87 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !72, !alias.scope !239
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !238
  store <2 x i64> %wide.load87, ptr %i.br, align 8, !tbaa !72, !alias.scope !238
  store <2 x i64> zeroinitializer, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !239
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !72, !alias.scope !239
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bt = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !239
  store i64 %i.bt, ptr %.012.i.i.i.i, align 8, !tbaa !72, !alias.scope !238
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !239
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !236

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.be to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bz) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bd, ptr %6, align 8, !tbaa !70
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.g
  store ptr %i.ca, ptr %i.ba, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 0, ptr %i.d, align 8, !tbaa !72
  %i.cb = icmp sgt i32 %0, 0
  br i1 %i.cb, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiS12_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %.lr.ph61
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !52  ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !52
  %i.ce = add nsw i32 %i.cd, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.ce)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !52
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !72
  %i.ch = add i64 %i.cf, 2
  %i.ci = icmp ult i64 %i.ch, %i.g
  %i.cj = icmp slt i32 %i.cd, %0                  ; 2 uses
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph61, label %._crit_edge, !llvm.loop !237

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.i
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.p

._crit_edge:                                      ; preds = %bb.g
  br i1 %i.cj, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cn = load ptr, ptr %6, align 8, !tbaa !76    ; 3 uses
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  %.not62 = icmp eq ptr %i.cn, %i.co
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.l
  %.pre = load ptr, ptr %6, align 8, !tbaa !70    ; 4 uses
  %.pre69 = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.l
  %.sroa.042.063 = phi ptr [ %i.cq, %bb.l ], [ %i.cn, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !72
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.lr.ph65
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.co
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.m:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.m
  %.05.i.i.i = phi ptr [ %i.cr, %bb.m ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #22
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !72, !alias.scope !277
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !72, !alias.scope !277
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !276
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !72, !alias.scope !276
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !72, !alias.scope !277
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !72, !alias.scope !277
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !277
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !72, !alias.scope !276
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !277
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !267

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.az, 152
  br i1 %min.iters.check59, label %.lr.ph.i.i.i30.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = and i64 %i.az, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %bound0 = icmp ult ptr %i.ax, %i.bg
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i30.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec61, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bk = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.bl = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !280
  %wide.load67 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !72, !alias.scope !280
  %i.bm = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !72, !alias.scope !281, !noalias !282
  store <2 x i64> %wide.load67, ptr %i.bm, align 8, !tbaa !72, !alias.scope !281, !noalias !282
  store <2 x i64> zeroinitializer, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !280
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !72, !alias.scope !280
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bn, label %middle.block69, label %vector.body62, !llvm.loop !274

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bb, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader73

.lr.ph.i.i.i30.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i30.preheader, %middle.block69
  %.012.i.i.i31.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block69 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block69 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader73, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader73 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader73 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !279
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !72, !alias.scope !278
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !279
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !275

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block69, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block69 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !75
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSK_EEbS8_SM_mEUlimE_SN_EEbS8_SM_RKSH_RKT2_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.99, align 8             ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !52
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !62, !align !63 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102, !nonnull !62
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103, !nonnull !62 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 4 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104, !nonnull !62, !align !63
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !39 ; 4 uses
  %i.y = fcmp olt double %i.x, %i.r
  br i1 %i.y, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.q, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !39
  %i.ad = fcmp ogt double %i.x, %i.ac
  br i1 %i.ad, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc i64 %i.z to i32
  %i.af = add i32 %i.ae, -1                       ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01924.i.i = phi i32 [ %..019.i.i, %.lr.ph.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.02023.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ah = add nuw nsw i32 %.02023.i.i, %.01924.i.i
  %i.ai = lshr i32 %i.ah, 1                       ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !39
  %i.am = fcmp olt double %i.x, %i.al             ; 2 uses
  %.020..i.i = select i1 %i.am, i32 %.02023.i.i, i32 %i.ai ; 3 uses
  %..019.i.i = select i1 %i.am, i32 %i.ai, i32 %.01924.i.i ; 3 uses
  %i.an = sub nsw i32 %..019.i.i, %.020..i.i
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.020.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %.020..i.i, %.lr.ph.i.i ]
  %.019.lcssa.i.i = phi i32 [ %i.af, %bb.e ], [ %..019.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ap = sext i32 %.019.lcssa.i.i to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !39
  %i.as = fcmp oeq double %i.x, %i.ar
  %.019..020.i.i = select i1 %i.as, i32 %.019.lcssa.i.i, i32 %.020.lcssa.i.i
  br label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit

_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit: ; preds = %bb.c, %bb.d, %._crit_edge.i.i
  %.019..020.sink.i.i = phi i32 [ %.019..020.i.i, %._crit_edge.i.i ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %.019..020.sink.i.i, ptr %i.at, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !283

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.au = add nsw i32 %0, 1
  %i.av = sitofp i32 %i.au to double
  %i.aw = uitofp i32 %i.f to double
  %i.ax = fdiv double %i.av, %i.aw
  %i.ay = tail call double @llvm.round.f64(double %i.ax)
  %i.az = fptosi double %i.ay to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bc = shl nuw nsw i64 %i.g, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #23
          to label %.noexc unwind label %bb.h     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !70    ; 8 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = add i64 %i.bg, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.be, i64 %i.bp ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bq = getelementptr i8, ptr %next.gep86, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !291
  %wide.load87 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !72, !alias.scope !291
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !290
  store <2 x i64> %wide.load87, ptr %i.br, align 8, !tbaa !72, !alias.scope !290
  store <2 x i64> zeroinitializer, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !291
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !72, !alias.scope !291
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bt = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !291
  store i64 %i.bt, ptr %.012.i.i.i.i, align 8, !tbaa !72, !alias.scope !290
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !291
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !288

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.be to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bz) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bd, ptr %6, align 8, !tbaa !70
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.g
  store ptr %i.ca, ptr %i.ba, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 0, ptr %i.d, align 8, !tbaa !72
  %i.cb = icmp sgt i32 %0, 0
  br i1 %i.cb, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiS12_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %.lr.ph61
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !52  ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !52
  %i.ce = add nsw i32 %i.cd, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.ce)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !52
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !72
  %i.ch = add i64 %i.cf, 2
  %i.ci = icmp ult i64 %i.ch, %i.g
  %i.cj = icmp slt i32 %i.cd, %0                  ; 2 uses
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph61, label %._crit_edge, !llvm.loop !289

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.i
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.p

._crit_edge:                                      ; preds = %bb.g
  br i1 %i.cj, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cn = load ptr, ptr %6, align 8, !tbaa !76    ; 3 uses
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  %.not62 = icmp eq ptr %i.cn, %i.co
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.l
  %.pre = load ptr, ptr %6, align 8, !tbaa !70    ; 4 uses
  %.pre69 = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.l
  %.sroa.042.063 = phi ptr [ %i.cq, %bb.l ], [ %i.cn, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !72
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.lr.ph65
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.co
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.m:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.m
  %.05.i.i.i = phi ptr [ %i.cr, %bb.m ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #22
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !72, !alias.scope !329
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !72, !alias.scope !329
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !328
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !72, !alias.scope !328
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !72, !alias.scope !329
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !72, !alias.scope !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !329
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !72, !alias.scope !328
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !329
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !319

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.az, 152
  br i1 %min.iters.check59, label %.lr.ph.i.i.i30.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = and i64 %i.az, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %bound0 = icmp ult ptr %i.ax, %i.bg
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i30.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec61, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bk = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bl = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !332
  %wide.load67 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !72, !alias.scope !332
  %i.bm = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !72, !alias.scope !333, !noalias !334
  store <2 x i64> %wide.load67, ptr %i.bm, align 8, !tbaa !72, !alias.scope !333, !noalias !334
  store <2 x i64> zeroinitializer, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !332
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !72, !alias.scope !332
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bn, label %middle.block69, label %vector.body62, !llvm.loop !326

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bb, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader73

.lr.ph.i.i.i30.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i30.preheader, %middle.block69
  %.012.i.i.i31.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block69 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block69 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader73, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader73 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader73 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !331
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !72, !alias.scope !330
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !331
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !327

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block69, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block69 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !75
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES5_NS4_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSK_EEbS8_SM_mEUlimE_SN_EEbS8_SM_RKSH_RKT2_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.116, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !52
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !106, !nonnull !62, !align !63 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108, !nonnull !62
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110, !nonnull !62 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 4 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113, !nonnull !62, !align !63
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load float, ptr %i.w, align 4, !tbaa !112 ; 4 uses
  %i.y = fcmp olt float %i.x, %i.r
  br i1 %i.y, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !57   ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.q, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !112
  %i.ad = fcmp ogt float %i.x, %i.ac
  br i1 %i.ad, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc i64 %i.z to i32
  %i.af = add i32 %i.ae, -1                       ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01924.i.i = phi i32 [ %..019.i.i, %.lr.ph.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.02023.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ah = add nuw nsw i32 %.02023.i.i, %.01924.i.i
  %i.ai = lshr i32 %i.ah, 1                       ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !112
  %i.am = fcmp olt float %i.x, %i.al              ; 2 uses
  %.020..i.i = select i1 %i.am, i32 %.02023.i.i, i32 %i.ai ; 3 uses
  %..019.i.i = select i1 %i.am, i32 %i.ai, i32 %.01924.i.i ; 3 uses
  %i.an = sub nsw i32 %..019.i.i, %.020..i.i
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.020.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %.020..i.i, %.lr.ph.i.i ]
  %.019.lcssa.i.i = phi i32 [ %i.af, %bb.e ], [ %..019.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ap = sext i32 %.019.lcssa.i.i to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !112
  %i.as = fcmp oeq float %i.x, %i.ar
  %.019..020.i.i = select i1 %i.as, i32 %.019.lcssa.i.i, i32 %.020.lcssa.i.i
  br label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit

_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit: ; preds = %bb.c, %bb.d, %._crit_edge.i.i
  %.019..020.sink.i.i = phi i32 [ %.019..020.i.i, %._crit_edge.i.i ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %.019..020.sink.i.i, ptr %i.at, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !335

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.au = add nsw i32 %0, 1
  %i.av = sitofp i32 %i.au to double
  %i.aw = uitofp i32 %i.f to double
  %i.ax = fdiv double %i.av, %i.aw
  %i.ay = tail call double @llvm.round.f64(double %i.ax)
  %i.az = fptosi double %i.ay to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bc = shl nuw nsw i64 %i.g, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #23
          to label %.noexc unwind label %bb.h     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !70    ; 8 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = add i64 %i.bg, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.be, i64 %i.bp ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.bq = getelementptr i8, ptr %next.gep86, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !343
  %wide.load87 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !72, !alias.scope !343
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !342
  store <2 x i64> %wide.load87, ptr %i.br, align 8, !tbaa !72, !alias.scope !342
  store <2 x i64> zeroinitializer, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !343
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !72, !alias.scope !343
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.bt = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !343
  store i64 %i.bt, ptr %.012.i.i.i.i, align 8, !tbaa !72, !alias.scope !342
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !343
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !340

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.be to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bz) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bd, ptr %6, align 8, !tbaa !70
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.g
  store ptr %i.ca, ptr %i.ba, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 0, ptr %i.d, align 8, !tbaa !72
  %i.cb = icmp sgt i32 %0, 0
  br i1 %i.cb, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiS12_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %.lr.ph61
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !52  ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !52
  %i.ce = add nsw i32 %i.cd, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.ce)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !52
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !72
  %i.ch = add i64 %i.cf, 2
  %i.ci = icmp ult i64 %i.ch, %i.g
  %i.cj = icmp slt i32 %i.cd, %0                  ; 2 uses
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph61, label %._crit_edge, !llvm.loop !341

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.i
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.p

._crit_edge:                                      ; preds = %bb.g
  br i1 %i.cj, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cn = load ptr, ptr %6, align 8, !tbaa !76    ; 3 uses
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  %.not62 = icmp eq ptr %i.cn, %i.co
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.l
  %.pre = load ptr, ptr %6, align 8, !tbaa !70    ; 4 uses
  %.pre69 = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.l
  %.sroa.042.063 = phi ptr [ %i.cq, %bb.l ], [ %i.cn, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !72
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.lr.ph65
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.co
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.m:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.m
  %.05.i.i.i = phi ptr [ %i.cr, %bb.m ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #22
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !72, !alias.scope !381
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !72, !alias.scope !381
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !380
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !72, !alias.scope !380
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !72, !alias.scope !381
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !72, !alias.scope !381
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !381
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !72, !alias.scope !380
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !381
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !371

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.az, 152
  br i1 %min.iters.check59, label %.lr.ph.i.i.i30.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = and i64 %i.az, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %bound0 = icmp ult ptr %i.ax, %i.bg
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i30.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec61, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bk = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.bl = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !384
  %wide.load67 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !72, !alias.scope !384
  %i.bm = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !72, !alias.scope !385, !noalias !386
  store <2 x i64> %wide.load67, ptr %i.bm, align 8, !tbaa !72, !alias.scope !385, !noalias !386
  store <2 x i64> zeroinitializer, ptr %next.gep65, align 8, !tbaa !72, !alias.scope !384
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !72, !alias.scope !384
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bn, label %middle.block69, label %vector.body62, !llvm.loop !378

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bb, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader73

.lr.ph.i.i.i30.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i30.preheader, %middle.block69
  %.012.i.i.i31.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block69 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block69 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader73, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader73 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader73 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !383
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !72, !alias.scope !382
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !72, !alias.scope !383
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !379

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block69, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block69 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !75
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSK_EEbS8_SM_mEUlimE_SN_EEbS8_SM_RKSH_RKT2_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.130, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !52
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !115, !nonnull !62, !align !63 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117, !nonnull !62
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118, !nonnull !62 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 4 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119, !nonnull !62, !align !63
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load float, ptr %i.w, align 4, !tbaa !112 ; 4 uses
  %i.y = fcmp olt float %i.x, %i.r
  br i1 %i.y, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !57   ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.q, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !112
  %i.ad = fcmp ogt float %i.x, %i.ac
  br i1 %i.ad, label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc i64 %i.z to i32
  %i.af = add i32 %i.ae, -1                       ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01924.i.i = phi i32 [ %..019.i.i, %.lr.ph.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.02023.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ah = add nuw nsw i32 %.02023.i.i, %.01924.i.i
  %i.ai = lshr i32 %i.ah, 1                       ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !112
  %i.am = fcmp olt float %i.x, %i.al              ; 2 uses
  %.020..i.i = select i1 %i.am, i32 %.02023.i.i, i32 %i.ai ; 3 uses
  %..019.i.i = select i1 %i.am, i32 %i.ai, i32 %.01924.i.i ; 3 uses
  %i.an = sub nsw i32 %..019.i.i, %.020..i.i
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.020.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %.020..i.i, %.lr.ph.i.i ]
  %.019.lcssa.i.i = phi i32 [ %i.af, %bb.e ], [ %..019.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ap = sext i32 %.019.lcssa.i.i to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !112
  %i.as = fcmp oeq float %i.x, %i.ar
  %.019..020.i.i = select i1 %i.as, i32 %.019.lcssa.i.i, i32 %.020.lcssa.i.i
  br label %_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit

_ZZN3igl12parallel_forIiZNS_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEES4_NS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS6_IT0_EERNS2_15PlainObjectBaseIT1_EEEUliE_EEbS7_RKSB_mENKUlimE_clEim.exit: ; preds = %bb.c, %bb.d, %._crit_edge.i.i
  %.019..020.sink.i.i = phi i32 [ %.019..020.i.i, %._crit_edge.i.i ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %.019..020.sink.i.i, ptr %i.at, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !387

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.au = add nsw i32 %0, 1
  %i.av = sitofp i32 %i.au to double
  %i.aw = uitofp i32 %i.f to double
  %i.ax = fdiv double %i.av, %i.aw
  %i.ay = tail call double @llvm.round.f64(double %i.ax)
  %i.az = fptosi double %i.ay to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bc = shl nuw nsw i64 %i.g, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #23
          to label %.noexc unwind label %bb.h     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !70    ; 8 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = add i64 %i.bg, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.be, i64 %i.bp ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bq = getelementptr i8, ptr %next.gep86, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !395
  %wide.load87 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !72, !alias.scope !395
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !394
  store <2 x i64> %wide.load87, ptr %i.br, align 8, !tbaa !72, !alias.scope !394
  store <2 x i64> zeroinitializer, ptr %next.gep86, align 8, !tbaa !72, !alias.scope !395
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !72, !alias.scope !395
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bt = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !395
  store i64 %i.bt, ptr %.012.i.i.i.i, align 8, !tbaa !72, !alias.scope !394
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !395
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !392

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.be to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bz) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bd, ptr %6, align 8, !tbaa !70
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.g
  store ptr %i.ca, ptr %i.ba, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 0, ptr %i.d, align 8, !tbaa !72
  %i.cb = icmp sgt i32 %0, 0
  br i1 %i.cb, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiS12_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %.lr.ph61
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !52  ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !52
  %i.ce = add nsw i32 %i.cd, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.ce)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !52
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !72
  %i.ch = add i64 %i.cf, 2
  %i.ci = icmp ult i64 %i.ch, %i.g
  %i.cj = icmp slt i32 %i.cd, %0                  ; 2 uses
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph61, label %._crit_edge, !llvm.loop !393

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.i
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.p

._crit_edge:                                      ; preds = %bb.g
  br i1 %i.cj, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_5histcIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERNS8_15PlainObjectBaseIT1_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSP_EEbSD_SR_mEUlimE_SS_EEbSD_SR_RKSM_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cn = load ptr, ptr %6, align 8, !tbaa !76    ; 3 uses
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  %.not62 = icmp eq ptr %i.cn, %i.co
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.l
  %.pre = load ptr, ptr %6, align 8, !tbaa !70    ; 4 uses
  %.pre69 = load ptr, ptr %i.bb, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.l
  %.sroa.042.063 = phi ptr [ %i.cq, %bb.l ], [ %i.cn, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !72
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.lr.ph65
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.co
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.m:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.m
  %.05.i.i.i = phi ptr [ %i.cr, %bb.m ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #22
end_hunk_3
