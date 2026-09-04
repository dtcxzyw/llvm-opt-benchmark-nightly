Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt_model_text?download=true
inline.NumInlined: 2729
inline.NumDeleted: 811
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8LightGBM9ArrayArgsIiE8ArgMaxMTERKSt6vectorIiSaIiEE:bb.a
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %.noexc17

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc17:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc17, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.h, %.noexc17 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.l = load ptr, ptr %0, align 8, !tbaa !169
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %2, align 8, !tbaa !206
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !208
  store ptr @_ZNSt17_Function_handlerIFvimmEZN8LightGBM9ArrayArgsIiE8ArgMaxMTERKSt6vectorIiSaIiEEEUlimmE_E9_M_invokeERKSt9_Any_dataOiOmSF_, ptr %i.r, align 8, !tbaa !211
  store ptr @_ZNSt17_Function_handlerIFvimmEZN8LightGBM9ArrayArgsIiE8ArgMaxMTERKSt6vectorIiSaIiEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.q, align 8, !tbaa !212
  %i.s = invoke noundef i32 @_ZN8LightGBM9Threading3ForImEEiT_S2_S2_RKSt8functionIFviS2_S2_EE(i64 noundef 0, i64 noundef %i.p, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !212  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.x = load ptr, ptr %1, align 8, !tbaa !203    ; 6 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !162  ; 4 uses
  %i.z = icmp sgt i32 %i.s, 1
  br i1 %i.z, label %.lr.ph, label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !169   ; 4 uses
  %wide.trip.count = zext nneg i32 %i.s to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !172 ; 2 uses
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i32 %i.s, 2
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ab, -2
  br label %bb.i

_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.bl, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ]
  %.01323.epil.init = phi i64 [ %i.y, %.lr.ph ], [ %spec.select.1, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !172
  %i.ah = icmp sgt i32 %i.ag, %.epil.init
  %spec.select.epil = select i1 %i.ah, i64 %i.ae, i64 %.01323.epil.init
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.epil.preheader, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa, %_ZNSt14_Function_baseD2Ev.exit
  %.013.lcssa = phi i64 [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ], [ %spec.select.1, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !204
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.am) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %.013.lcssa

bb.e:                                             ; preds = %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !212 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ao, null
  br i1 %.not.i18, label %_ZNSt14_Function_baseD2Ev.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit19 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit19:                 ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.as = load ptr, ptr %1, align 8, !tbaa !203   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit19
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !204
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit21

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %i.ay = phi i32 [ %.pre, %.lr.ph.new ], [ %i.bl, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %.01323 = phi i64 [ %i.y, %.lr.ph.new ], [ %spec.select.1, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !162 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !172 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, %i.ay
  %spec.select = select i1 %i.bd, i64 %i.ba, i64 %.01323
  %i.be = call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.ay) ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !162 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !172 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, %i.be
  %spec.select.1 = select i1 %i.bk, i64 %i.bh, i64 %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.be) ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !354

_ZNSt6vectorImSaImEED2Ev.exit21:                  ; preds = %bb.h, %_ZNSt14_Function_baseD2Ev.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.an
}

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEEC2EmRKmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread, label %bb.c

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit
  %i.b = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #33 ; 6 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !204
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 3 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !162    ; 2 uses
  %i.h = add nsw i64 %i.b, -8                     ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.j, 4611686018427387900      ; 3 uses
  %4 = shl i64 %n.vec, 3
  %5 = getelementptr i8, ptr %i.c, i64 %4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %6 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %6  ; 2 uses
  %7 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !162
  store <2 x i64> %broadcast.splat, ptr %7, align 8, !tbaa !162
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %middle.block
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.c, %bb.c ], [ %5, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.g, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !356

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !205
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9Threading3ForImEEiT_S2_S2_RKSt8functionIFviS2_S2_EE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %0, ptr %i.a, align 8, !tbaa !162
  store i64 %1, ptr %i.b, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.f = sub i64 %1, %0                           ; 2 uses
  %i.g = tail call i32 @OMP_NUM_THREADS()
  %i.h = add i64 %i.f, -1                         ; 2 uses
  %i.i = add i64 %i.h, %2
  %i.j = udiv i64 %i.i, %2
  %i.k = trunc i64 %i.j to i32
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.k) ; 3 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !172
  %i.l = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.l, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoImEEvT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %.sroa.speculated.i.i to i64 ; 2 uses
  %i.n = add i64 %i.h, %i.m
  %i.o = udiv i64 %i.n, %i.m
  %i.p = add nuw i64 %i.o, 31
  %i.q = and i64 %i.p, -32
  br label %_ZN8LightGBM9Threading9BlockInfoImEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoImEEvT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i64 [ %i.q, %bb.b ], [ %i.f, %bb.a ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.r = invoke i32 @OMP_NUM_THREADS()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoImEEvT_S2_PiPS2_.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM9Threading3ForImEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %3, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.c
  store ptr %i.s, ptr %4, align 8, !tbaa !214
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #32
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !214
  %.not.i3.i = icmp eq ptr %i.u, null
  br i1 %.not.i3.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %.body

_ZN21ThreadExceptionHelperD2Ev.exit:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.v = load i32, ptr %i.c, align 4, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret i32 %i.v

bb.g:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoImEEvT_S2_PiPS2_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM9Threading3ForImEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !172    ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 3 uses
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 %i.i, ptr %i.e, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 1, ptr %i.f, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 0, ptr %i.g, align 4, !tbaa !172
  %i.k = load i32, ptr %0, align 4, !tbaa !172    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 33, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !172
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.i) ; 3 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !172
  %i.n = load i32, ptr %i.d, align 4, !tbaa !172  ; 2 uses
  %.not38 = icmp sgt i32 %i.n, %i.m
  br i1 %.not38, label %._crit_edge39, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.r = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 3 uses
  %.not3136 = icmp sgt i32 %i.r, %i.q
  br i1 %.not3136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.s = sext i32 %i.r to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.t = load i64, ptr %3, align 8, !tbaa !162
  %i.u = load i64, ptr %4, align 8, !tbaa !162    ; 2 uses
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = add i64 %i.v, %i.t                       ; 3 uses
  %i.x = add i64 %i.w, %i.u
  %i.y = load i64, ptr %5, align 8, !tbaa !162
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y) ; 2 uses
  %i.z = icmp ult i64 %i.w, %.sroa.speculated
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = trunc nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !172
  store i64 %i.w, ptr %i.b, align 8, !tbaa !162
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !162
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !211
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNKSt8functionIFvimmEEclEimm.exit unwind label %bb.f, !inline_history !357

_ZNKSt8functionIFvimmEEclEimm.exit:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = extractvalue { ptr, i32 } %i.ad, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.ah = icmp eq i32 %i.af, %i.ag
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ae) #20 ; 2 uses
  br i1 %i.ah, label %bb.g, label %.invoke49

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.smax.v2i32
!155 = !{!105, !26, i64 8}
!156 = !{!148, !83, i64 552}
!157 = !{i8 0, i8 2}
!158 = !{}
!159 = !{!114, !113, i64 8}
!160 = !{!114, !113, i64 0}
!161 = !{!104, !39, i64 0}
!162 = !{!26, !26, i64 0}
!163 = !{!114, !113, i64 16}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !{!35, !26, i64 8}
!166 = !{!82, !82, i64 0}
!167 = !{!"p1 int", !29, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!169 = !{!168, !167, i64 0}
!170 = !{!168, !167, i64 8}
!171 = !{!113, !113, i64 0}
!172 = !{!21, !21, i64 0}
!173 = !{!"llvm.loop.isvectorized", i32 1}
!174 = !{!"llvm.loop.unroll.runtime.disable"}
!175 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !34, i64 56}
!176 = !{!175, !39, i64 40}
!177 = !{!175, !39, i64 32}
!178 = !{!"_ZTSSi", !26, i64 8}
!179 = !{!178, !26, i64 8}
!180 = !{!100, !99, i64 8}
!181 = !{!100, !99, i64 0}
!182 = !{!"p1 _ZTSN8LightGBM4TreeE", !29, i64 0}
!183 = !{!182, !182, i64 0}
!184 = !{!"llvm.loop.peeled.count", i32 1}
!185 = !{!"p1 double", !29, i64 0}
!186 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !185, i64 0, !185, i64 8, !185, i64 16}
!187 = !{!186, !185, i64 8}
!188 = !{!186, !185, i64 0}
!189 = !{!"p1 _ZTSSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !29, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_Vector_impl_dataE", !189, i64 0, !189, i64 8, !189, i64 16}
!191 = !{!190, !189, i64 8}
!192 = !{!190, !189, i64 16}
!193 = !{!"_ZTSSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !26, i64 0, !105, i64 8}
!194 = !{!193, !26, i64 0}
!195 = !{!190, !189, i64 0}
!196 = !{!186, !185, i64 16}
!197 = !{!131, !39, i64 0}
!198 = !{!131, !39, i64 8}
!199 = !{!"llvm.loop.unroll.disable"}
!200 = !{!"p1 _ZTS8_IO_FILE", !29, i64 0}
!201 = !{!200, !200, i64 0}
!202 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!203 = !{!202, !118, i64 0}
!204 = !{!202, !118, i64 16}
!205 = !{!202, !118, i64 8}
!206 = !{!84, !84, i64 0}
!207 = !{!"p1 _ZTSSt6vectorImSaImEE", !29, i64 0}
!208 = !{!207, !207, i64 0}
!209 = !{!"_ZTSSt14_Function_base", !20, i64 0, !29, i64 16}
!210 = !{!"_ZTSSt8functionIFvimmEE", !209, i64 0, !29, i64 24}
!211 = !{!210, !29, i64 24}
!212 = !{!209, !29, i64 16}
!213 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !29, i64 0}
!214 = !{!213, !29, i64 0}
!215 = !{i64 2, i64 -1, i64 -1, i1 true}
!216 = !{!215}
!217 = !{!29, !29, i64 0}
!218 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!219 = !{!"_ZTSSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_E", !26, i64 0, !26, i64 8, !189, i64 16}
!220 = !{!219, !26, i64 0}
!221 = !{!219, !26, i64 8}
!222 = !{!219, !189, i64 16}
!223 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!224 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !66, i64 0}
!225 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !29, i64 0}
!226 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !225, i64 0}
!227 = !{!"float", !20, i64 0}
!228 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !227, i64 0, !26, i64 8}
!229 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !224, i64 0, !26, i64 8, !226, i64 16, !26, i64 24, !228, i64 32, !225, i64 48}
!230 = !{!229, !224, i64 0}
!231 = !{!229, !26, i64 8}
!232 = !{!12}
!233 = !{!229, !225, i64 16}
!234 = !{!226, !225, i64 0}
!235 = !{!225, !225, i64 0}
!236 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !26, i64 0}
!237 = !{!236, !26, i64 0}
!238 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !29, i64 0}
!239 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1EEE", !29, i64 0}
!240 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !238, i64 0, !239, i64 8}
!241 = !{!240, !238, i64 0}
!242 = !{!240, !239, i64 8}
!243 = !{!229, !26, i64 24}
!244 = distinct !{!244, !"_ZN8LightGBM6CommonL5SplitB5cxx11EPKcS2_"}
!245 = distinct !{!245, !244, !"_ZN8LightGBM6CommonL5SplitB5cxx11EPKcS2_: argument 0"}
!246 = distinct !{!246, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!247 = distinct !{!247, !246, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!248 = distinct !{!248, !164}
!249 = distinct !{!249, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!250 = distinct !{!250, !249, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!251 = distinct !{!251, !"_ZN8LightGBM7CommonCL13StringToArrayIiEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!252 = distinct !{!252, !251, !"_ZN8LightGBM7CommonCL13StringToArrayIiEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!253 = distinct !{!253, !164, !173, !174}
!254 = distinct !{!254, !164, !174, !173}
!255 = distinct !{!255, !164, !173, !174}
!256 = distinct !{!256, !164, !174, !173}
!257 = distinct !{!257, !"_ZN8LightGBM7CommonCL4JoinIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKc"}
!258 = distinct !{!258, !257, !"_ZN8LightGBM7CommonCL4JoinIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKc: argument 0"}
!259 = distinct !{!259, !"_ZN8LightGBM6CommonL4JoinIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKcb"}
!260 = distinct !{!260, !259, !"_ZN8LightGBM6CommonL4JoinIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKcb: argument 0"}
!261 = distinct !{!261, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!262 = distinct !{!262, !261, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!263 = distinct !{!263, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!264 = distinct !{!264, !263, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!265 = distinct !{!265, !164}
!266 = distinct !{!266, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!267 = distinct !{!267, !266, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!268 = distinct !{!268, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!269 = distinct !{!269, !268, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!270 = distinct !{!270, !164}
!271 = distinct !{!271, !164, !184}
!272 = distinct !{!272, !164}
!273 = distinct !{!273, !"_ZNSt7__cxx119to_stringEm"}
!274 = distinct !{!274, !273, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!275 = distinct !{!275, !164}
!276 = distinct !{!276, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!277 = distinct !{!277, !276, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!278 = distinct !{!278, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!279 = distinct !{!279, !278, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!280 = !{!245}
!281 = !{!247}
!282 = !{!247, !245}
!283 = !{!250}
!284 = !{!250, !245}
!285 = !{!252}
!286 = !{!168, !167, i64 16}
!287 = !{!167, !167, i64 0}
!288 = !{!258}
!289 = !{!260}
!290 = !{!260, !258}
!291 = !{!262}
!292 = !{!264}
!293 = !{!264, !262, !260, !258}
!294 = !{!267}
!295 = !{!269}
!296 = !{!269, !267}
!297 = !{!274}
!298 = !{!277}
!299 = !{!279}
!300 = !{!279, !277}
!301 = distinct !{!301, !"_ZN8LightGBM6CommonL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKcb"}
!302 = distinct !{!302, !301, !"_ZN8LightGBM6CommonL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKcb: argument 0"}
!303 = distinct !{!303, !164}
!304 = distinct !{!304, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!305 = distinct !{!305, !304, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!306 = distinct !{!306, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!307 = distinct !{!307, !306, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!308 = !{!302}
!309 = !{!305}
!310 = !{!307}
!311 = !{!307, !305, !302}
!312 = distinct !{!312, !"_ZN8LightGBM6CommonL4JoinIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKcb"}
!313 = distinct !{!313, !312, !"_ZN8LightGBM6CommonL4JoinIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKcb: argument 0"}
!314 = distinct !{!314, !164}
!315 = distinct !{!315, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!316 = distinct !{!316, !315, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!317 = distinct !{!317, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!318 = distinct !{!318, !317, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!319 = !{!313}
!320 = !{!316}
!321 = !{!318}
!322 = !{!318, !316, !313}
!323 = distinct !{!323, !164}
!324 = distinct !{!324, !164}
!325 = distinct !{!325, !164}
!326 = distinct !{!326, !164}
!327 = distinct !{!327, !199}
!328 = distinct !{!328, !164}
!329 = distinct !{!329, !199}
!330 = distinct !{!330, !164}
!331 = distinct !{!331, !164}
!332 = distinct !{!332, !164}
!333 = distinct !{!333, !164}
!334 = distinct !{!334, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!335 = distinct !{!335, !334, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!336 = distinct !{!336, !334, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!337 = distinct !{!337, !164}
!338 = distinct !{!338, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!339 = distinct !{!339, !338, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!340 = distinct !{!340, !338, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!341 = !{!335}
!342 = !{!336}
!343 = !{!335, !336}
!344 = !{!339}
!345 = !{!340}
!346 = !{!339, !340}
!347 = distinct !{!347, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!348 = distinct !{!348, !347, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!349 = distinct !{!349, !164}
!350 = distinct !{!350, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!351 = distinct !{!351, !350, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!352 = !{!348}
!353 = !{!351}
!354 = distinct !{!354, !164}
!355 = distinct !{!355, !164, !173, !174}
!356 = distinct !{!356, !164, !174, !173}
!357 = distinct !{null}
!358 = distinct !{!358, !"vprintf"}
!359 = distinct !{!359, !358, !"vprintf: argument 0"}
!360 = distinct !{null}
!361 = !{!"_ZTSN8LightGBM8LogLevelE", !20, i64 0}
!362 = !{!361, !361, i64 0}
!363 = !{!359}
!364 = distinct !{!364, !199}
!365 = distinct !{!365, !164}
!366 = !{!"_ZTSZN8LightGBM9ArrayArgsIiE8ArgMaxMTERKSt6vectorIiSaIiEEEUlimmE_", !84, i64 0, !207, i64 8}
!367 = !{!366, !84, i64 0}
!368 = !{i64 8}
!369 = !{!366, !207, i64 8}
!370 = !{!"p1 _ZTSSt9type_info", !29, i64 0}
!371 = !{!370, !370, i64 0}
!372 = !{i64 0, i64 8, !206, i64 8, i64 8, !208}
!373 = distinct !{!373, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!374 = distinct !{!374, !373, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!375 = distinct !{!375, !373, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!376 = distinct !{!376, !164}
!377 = distinct !{!377, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!378 = distinct !{!378, !377, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!379 = distinct !{!379, !377, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!380 = !{!374}
!381 = !{!375}
!382 = !{!374, !375}
!383 = !{!378}
!384 = !{!379}
!385 = !{!378, !379}
!386 = distinct !{!386, !164}
!387 = distinct !{!387, !164, !184}
!388 = distinct !{!388, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!389 = distinct !{!389, !388, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!390 = distinct !{!390, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!391 = distinct !{!391, !390, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!392 = distinct !{!392, !164, !184}
!393 = distinct !{!393, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!394 = distinct !{!394, !393, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!395 = distinct !{!395, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!396 = distinct !{!396, !395, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!397 = distinct !{!397, !164}
!398 = distinct !{!398, !164, !184}
!399 = distinct !{!399, !164, !184}
!400 = distinct !{!400, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!401 = distinct !{!401, !400, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!402 = distinct !{!402, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!403 = distinct !{!403, !402, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!404 = !{!389}
!405 = !{!391}
!406 = !{!391, !389}
!407 = !{!394}
!408 = !{!396}
!409 = !{!396, !394}
!410 = !{!401}
!411 = !{!403}
!412 = !{!403, !401}
!413 = !{!"p1 _ZTSSo", !29, i64 0}
!414 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 0}
!415 = !{!"p1 _ZTSSt5ctypeIcE", !29, i64 0}
!416 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!417 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!418 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !413, i64 216, !20, i64 224, !83, i64 225, !414, i64 232, !415, i64 240, !416, i64 248, !417, i64 256}
!419 = !{!418, !414, i64 232}
!420 = distinct !{null, null, null, null, null}
!421 = distinct !{null, null, null}
!422 = distinct !{null, null}
!423 = distinct !{null}
!424 = distinct !{null}
!425 = distinct !{null}
!426 = distinct !{!426, !164, !184}
!427 = distinct !{!427, !184}
!428 = !{!175, !39, i64 16}
!429 = !{!175, !39, i64 24}
!430 = distinct !{!430, !199}
!431 = distinct !{!431, !164}
!432 = distinct !{!432, !"_ZN8LightGBM7CommonCL4JoinImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKc"}
!433 = distinct !{!433, !432, !"_ZN8LightGBM7CommonCL4JoinImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKc: argument 0"}
!434 = distinct !{!434, !"_ZN8LightGBM6CommonL4JoinImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKcb"}
!435 = distinct !{!435, !434, !"_ZN8LightGBM6CommonL4JoinImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEPKcb: argument 0"}
!436 = distinct !{!436, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!437 = distinct !{!437, !436, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!438 = distinct !{!438, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!439 = distinct !{!439, !438, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!440 = distinct !{!440, !164}
!441 = distinct !{!441, !164}
!442 = distinct !{!442, !164}
!443 = distinct !{!443, !"_ZNSt7__cxx119to_stringEm"}
!444 = distinct !{!444, !443, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!445 = distinct !{!445, !164}
!446 = distinct !{!446, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!447 = distinct !{!447, !446, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!448 = distinct !{!448, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!449 = distinct !{!449, !448, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!450 = !{!433}
!451 = !{!435}
!452 = !{!118, !118, i64 0}
!453 = !{!435, !433}
!454 = !{!437}
!455 = !{!439}
!456 = !{!439, !437, !435, !433}
!457 = !{!189, !189, i64 0}
!458 = !{!44, !44, i64 0}
!459 = !{!444}
!460 = !{!447}
!461 = !{!449}
!462 = !{!449, !447}
!463 = distinct !{!463, !"_ZNSt7__cxx119to_stringEi"}
!464 = distinct !{!464, !463, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!465 = distinct !{!465, !164}
!466 = distinct !{!466, !164}
!467 = distinct !{!467, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!468 = distinct !{!468, !467, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!469 = distinct !{!469, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!470 = distinct !{!470, !469, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!471 = distinct !{!471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!472 = distinct !{!472, !471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!473 = !{!464}
!474 = !{!468}
!475 = !{!470}
!476 = !{!472}
!477 = distinct !{!477, !164}
!478 = distinct !{!478, !164}
!479 = distinct !{!479, !164}
!480 = distinct !{!480, !164}
!481 = distinct !{!481, !164}
!482 = distinct !{!482, !164}
!483 = distinct !{!483, !164}
!484 = distinct !{!484, !164}
!485 = distinct !{!485, !164}
!486 = distinct !{!486, !164}
!487 = distinct !{!487, !164}
!488 = distinct !{!488, !164}
!489 = distinct !{!489, !164}
!490 = distinct !{!490, !164}
!491 = distinct !{!491, !164}
!492 = distinct !{!492, !164}
!493 = distinct !{null, null}
!494 = !{!"p1 _ZTSN8LightGBM17VirtualFileWriterE", !29, i64 0}
!495 = !{!494, !494, i64 0}
!496 = distinct !{null, null, null, null, null, null, null}
!497 = distinct !{!497, !164}
!498 = distinct !{!498, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!499 = distinct !{!499, !498, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!500 = distinct !{!500, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!501 = distinct !{!501, !500, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!502 = distinct !{!502, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!503 = distinct !{!503, !502, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!504 = distinct !{!504, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!505 = distinct !{!505, !504, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!506 = distinct !{!506, !"_ZN8LightGBM7CommonCL13StringToArrayIaEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!507 = distinct !{!507, !506, !"_ZN8LightGBM7CommonCL13StringToArrayIaEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!508 = distinct !{!508, !164}
!509 = distinct !{!509, !164}
!510 = distinct !{null, null, null}
!511 = distinct !{!511, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!512 = distinct !{!512, !511, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!513 = distinct !{!513, !"_ZSt19__relocate_object_aISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!514 = distinct !{!514, !513, !"_ZSt19__relocate_object_aISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!515 = distinct !{!515, !513, !"_ZSt19__relocate_object_aISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!516 = distinct !{!516, !"LVerDomain"}
!517 = distinct !{!517, !516}
!518 = distinct !{!518, !516}
!519 = distinct !{!519, !164, !173, !174}
!520 = distinct !{!520, !164, !173}
!521 = distinct !{!521, !"_ZSt19__relocate_object_aISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!522 = distinct !{!522, !521, !"_ZSt19__relocate_object_aISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!523 = distinct !{!523, !521, !"_ZSt19__relocate_object_aISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!524 = distinct !{!524, !"LVerDomain"}
!525 = distinct !{!525, !524}
!526 = distinct !{!526, !524}
!527 = distinct !{!527, !164, !173, !174}
!528 = distinct !{!528, !164, !173}
!529 = distinct !{!529, !164}
!530 = distinct !{!530, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!531 = distinct !{!531, !530, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!532 = !{!228, !227, i64 0}
!533 = !{!499}
!534 = !{!501}
!535 = !{!503}
!536 = !{!505}
!537 = !{!507}
!538 = !{!131, !39, i64 16}
!539 = !{!58, !58, i64 0}
!540 = !{!512}
!541 = !{!100, !99, i64 16}
!542 = !{!514}
!543 = !{!515}
!544 = !{!515, !517}
!545 = !{!514, !518}
!546 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM4TreeELb0EE", !182, i64 0}
!547 = !{!546, !182, i64 0}
!548 = !{!522}
!549 = !{!523}
!550 = !{!523, !525}
!551 = !{!522, !526}
!552 = !{!148, !21, i64 420}
!553 = !{!148, !21, i64 440}
!554 = !{!148, !21, i64 8}
!555 = !{!531}
!556 = !{!148, !83, i64 632}
end_hunk_1
