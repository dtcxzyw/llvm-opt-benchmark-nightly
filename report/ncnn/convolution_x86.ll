inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.aql = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.aqk, ptr %i.aql, align 4, !tbaa !39
  %i.aqm = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 1024 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter199.next.3 = add i32 %niter199, 4         ; 2 uses
  %niter199.ncmp.3 = icmp eq i32 %niter199.next.3, %unroll_iter198
  br i1 %niter199.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod195.not, label %._crit_edge.us23.i, label %.epil.preheader192

.epil.preheader192:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.aqm, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.aqn, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod197)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader192
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader192 ], [ %i.aqs, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader192 ], [ %i.aqt, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader192 ], [ %epil.iter.next, %bb.f ]
  %i.aqo = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.aqo, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.ang
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !39
  %i.aqr = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.aqq, ptr %i.aqr, align 4, !tbaa !39
  %i.aqs = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 256
  %i.aqt = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter194
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !446

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa187 = phi ptr [ %i.aqn, %._crit_edge.us23.i.unr-lcssa ], [ %i.aqt, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.aqu = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.aqu, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.aqv = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa187, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.anw, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.aqv, %.preheader.loopexit.i ], [ %i.apn, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.aqw = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.aqw, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.anf, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.aqx = sext i32 %.1.lcssa.i to i64            ; 2 uses
  %i.aqy = mul i64 %i.anm, %i.aqx
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.aqy
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.aqx, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa138, %._crit_edge.i53 ] ; 6 uses
  %i.aqz = mul nsw i64 %indvars.iv50.i, %i.ang
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.aqz ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %bound0 = icmp ult ptr %.430.i, %scevgep142
  %bound1 = icmp ult ptr %scevgep141, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  %i.ara = or i1 %found.conflict, %stride.check
  br i1 %i.ara, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.arb = getelementptr i8, ptr %gep.i, i64 %i.ant
  %i.arc = getelementptr i8, ptr %.430.i, i64 %i.anu ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ard = shl i64 %index, 8                      ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.ard
  %i.are = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep143 = getelementptr i8, ptr %i.are, i64 256
  %i.arf = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep144 = getelementptr i8, ptr %i.arf, i64 512
  %i.arg = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep145 = getelementptr i8, ptr %i.arg, i64 768
  %i.arh = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep146 = getelementptr i8, ptr %i.arh, i64 1024
  %i.ari = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep147 = getelementptr i8, ptr %i.ari, i64 1280
  %i.arj = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep148 = getelementptr i8, ptr %i.arj, i64 1536
  %i.ark = getelementptr i8, ptr %gep.i, i64 %i.ard
  %next.gep149 = getelementptr i8, ptr %i.ark, i64 1792
  %i.arl = shl i64 %index, 2
  %next.gep150 = getelementptr i8, ptr %.430.i, i64 %i.arl ; 2 uses
  %i.arm = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !448
  %i.arn = load float, ptr %next.gep143, align 4, !tbaa !39, !alias.scope !448
  %i.aro = load float, ptr %next.gep144, align 4, !tbaa !39, !alias.scope !448
  %i.arp = load float, ptr %next.gep145, align 4, !tbaa !39, !alias.scope !448
  %i.arq = insertelement <4 x float> poison, float %i.arm, i64 0
  %i.arr = insertelement <4 x float> %i.arq, float %i.arn, i64 1
  %i.ars = insertelement <4 x float> %i.arr, float %i.aro, i64 2
  %i.art = insertelement <4 x float> %i.ars, float %i.arp, i64 3
  %i.aru = load float, ptr %next.gep146, align 4, !tbaa !39, !alias.scope !448
  %i.arv = load float, ptr %next.gep147, align 4, !tbaa !39, !alias.scope !448
  %i.arw = load float, ptr %next.gep148, align 4, !tbaa !39, !alias.scope !448
  %i.arx = load float, ptr %next.gep149, align 4, !tbaa !39, !alias.scope !448
  %i.ary = insertelement <4 x float> poison, float %i.aru, i64 0
  %i.arz = insertelement <4 x float> %i.ary, float %i.arv, i64 1
  %i.asa = insertelement <4 x float> %i.arz, float %i.arw, i64 2
  %i.asb = insertelement <4 x float> %i.asa, float %i.arx, i64 3
  %i.asc = getelementptr i8, ptr %next.gep150, i64 16
  store <4 x float> %i.art, ptr %next.gep150, align 4, !tbaa !39, !alias.scope !451, !noalias !448
  store <4 x float> %i.asb, ptr %i.asc, align 4, !tbaa !39, !alias.scope !451, !noalias !448
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.asd = icmp eq i64 %index.next, %n.vec
  br i1 %i.asd, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.ans, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.arb, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.arc, %middle.block ] ; 2 uses
  %i.ase = sub i32 %smin200, %.029.i.ph
  %xtraiter201 = and i32 %i.ase, 7                ; 2 uses
  %lcmp.mod202.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.asi, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.asg, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.ash, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.asf = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.asf, ptr %.527.i.prol, align 4, !tbaa !39
  %i.asg = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 256 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.asi = add nuw nsw i32 %.029.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter201
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !454

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa188.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ash, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.asi, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.asg, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.ash, %scalar.ph.prol ]
  %i.asj = sub i32 %.029.i.ph, %smin200
  %i.ask = icmp ugt i32 %i.asj, -8
  br i1 %i.ask, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.029.i = phi i32 [ %i.atj, %scalar.ph ], [ %.029.i.unr, %scalar.ph.prol.loopexit ]
  %.06328.i = phi ptr [ %i.ath, %scalar.ph ], [ %.06328.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.527.i = phi ptr [ %i.ati, %scalar.ph ], [ %.527.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.asl = load float, ptr %.06328.i, align 4, !tbaa !39
  store float %i.asl, ptr %.527.i, align 4, !tbaa !39
  %i.asm = getelementptr inbounds nuw i8, ptr %.06328.i, i64 256
  %i.asn = getelementptr inbounds nuw i8, ptr %.527.i, i64 4
  %i.aso = load float, ptr %i.asm, align 4, !tbaa !39
  store float %i.aso, ptr %i.asn, align 4, !tbaa !39
  %i.asp = getelementptr inbounds nuw i8, ptr %.06328.i, i64 512
  %i.asq = getelementptr inbounds nuw i8, ptr %.527.i, i64 8
  %i.asr = load float, ptr %i.asp, align 4, !tbaa !39
  store float %i.asr, ptr %i.asq, align 4, !tbaa !39
  %i.ass = getelementptr inbounds nuw i8, ptr %.06328.i, i64 768
  %i.ast = getelementptr inbounds nuw i8, ptr %.527.i, i64 12
  %i.asu = load float, ptr %i.ass, align 4, !tbaa !39
  store float %i.asu, ptr %i.ast, align 4, !tbaa !39
  %i.asv = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1024
  %i.asw = getelementptr inbounds nuw i8, ptr %.527.i, i64 16
  %i.asx = load float, ptr %i.asv, align 4, !tbaa !39
  store float %i.asx, ptr %i.asw, align 4, !tbaa !39
  %i.asy = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1280
  %i.asz = getelementptr inbounds nuw i8, ptr %.527.i, i64 20
  %i.ata = load float, ptr %i.asy, align 4, !tbaa !39
  store float %i.ata, ptr %i.asz, align 4, !tbaa !39
  %i.atb = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1536
  %i.atc = getelementptr inbounds nuw i8, ptr %.527.i, i64 24
  %i.atd = load float, ptr %i.atb, align 4, !tbaa !39
  store float %i.atd, ptr %i.atc, align 4, !tbaa !39
  %i.ate = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1792
  %i.atf = getelementptr inbounds nuw i8, ptr %.527.i, i64 28
  %i.atg = load float, ptr %i.ate, align 4, !tbaa !39
  store float %i.atg, ptr %i.atf, align 4, !tbaa !39
  %i.ath = getelementptr inbounds nuw i8, ptr %.06328.i, i64 2048
  %i.ati = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.atj = add nuw nsw i32 %.029.i, 8             ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.atj, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !455

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa138 = phi ptr [ %i.arc, %middle.block ], [ %.lcssa188.unr, %scalar.ph.prol.loopexit ], [ %i.ati, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 64
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.atk = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next157 = add i64 %indvar156, 1
  br i1 %i.atk, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !458

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.c
  %i.atl = landingpad { ptr, i32 }
          catch ptr null
  %i.atm = extractvalue { ptr, i32 } %i.atl, 0
  call void @__clang_call_terminate(ptr %i.atm) #27
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !459 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph134, %_ZN4ncnn3MatD2Ev.exit
  %indvar167 = phi i32 [ 0, %.lr.ph134 ], [ %indvar.next168, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033133 = phi i32 [ %i.k, %.lr.ph134 ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar167
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul i32 %i.t, %.033133                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.h

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !18, !noalias !461 ; 3 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !461
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !461
  %i.ab = mul i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab ; 4 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !67    ; 8 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !67
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 9 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67    ; 11 uses
  %i.aj = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !464
  %i.am = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !464
  %i.an = load ptr, ptr %10, align 8, !tbaa !18, !noalias !464
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !464
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !464 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated82, 3
  %i.az = and i32 %.sroa.speculated82, -4         ; 3 uses
  %i.ba = sext i32 %.sroa.speculated82 to i64     ; 4 uses
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ba, -3
  %invariant.op71.i = add nsw i64 %i.ba, -1
  %i.bd = sext i32 %i.ai to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ad to i64
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.t, %i.s
  %i.bj = sub i32 0, %i.ai                        ; 3 uses
  %i.bk = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bl = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bn = add i32 %.033133, 1
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033133, %i.bo
  %indvar.next168 = add i32 %indvar167, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar164 = phi i64 [ 0, %.lr.ph ], [ %indvar.next165, %_ZN4ncnn3MatD2Ev.exit34 ] ; 5 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bp = trunc i64 %indvar164 to i32
  %i.bq = mul i32 %i.bp, %i.bj
  %i.br = add i32 %i.bq, %i.ad
  %smin210 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.br) ; 2 uses
  %i.bs = trunc i64 %indvar164 to i32
  %i.bt = mul i32 %i.bs, %i.bj
  %i.bu = add i32 %i.bt, %i.ad
  %smin203 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bu) ; 3 uses
  %i.bv = add i32 %smin203, -1
  %i.bw = trunc i64 %indvar164 to i32
  %i.bx = mul i32 %i.bw, %i.bj
  %i.by = add i32 %i.bx, %i.ad
  %smin199 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.by) ; 4 uses
  %i.bz = mul i32 %i.ai, %indvar
  %i.ca = sub i32 %i.ad, %i.bz
  %smin162 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ca)
  %i.cb = zext i32 %smin162 to i64                ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 144
  %i.cd = mul i64 %i.bh, %indvar164               ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cb, 36
  %i.cf = mul i32 %i.ai, %indvar
  %i.cg = sub i32 %i.ad, %i.cf
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.cg) ; 2 uses
  %i.ch = add i32 %smin, -1
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = mul i32 %smin, 36                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.adk = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.adj, ptr %i.adk, align 4, !tbaa !39
  %i.adl = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 576 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter209.next.3 = add i32 %niter209, 4         ; 2 uses
  %niter209.ncmp.3 = icmp eq i32 %niter209.next.3, %unroll_iter208
  br i1 %niter209.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod205.not, label %._crit_edge.us23.i, label %.epil.preheader202

.epil.preheader202:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.adl, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.adm, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader202
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader202 ], [ %i.adr, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader202 ], [ %i.ads, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader202 ], [ %epil.iter.next, %bb.f ]
  %i.adn = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.adn, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.aaf
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !39
  %i.adq = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.adp, ptr %i.adq, align 4, !tbaa !39
  %i.adr = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 144
  %i.ads = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter204
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !475

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa197 = phi ptr [ %i.adm, %._crit_edge.us23.i.unr-lcssa ], [ %i.ads, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.adt = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.adt, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.adu = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa197, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.aav, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.adu, %.preheader.loopexit.i ], [ %i.acm, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.adv = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.adv, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.aae, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.adw = sext i32 %.1.lcssa.i to i64            ; 2 uses
  %i.adx = mul i64 %i.aal, %i.adw
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.adx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.adw, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa146, %._crit_edge.i53 ] ; 6 uses
  %i.ady = mul nsw i64 %indvars.iv50.i, %i.aaf
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.ady ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %bound0 = icmp ult ptr %.430.i, %scevgep150
  %bound1 = icmp ult ptr %scevgep149, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  %i.adz = or i1 %found.conflict, %stride.check
  br i1 %i.adz, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aea = getelementptr i8, ptr %gep.i, i64 %i.aas
  %i.aeb = getelementptr i8, ptr %.430.i, i64 %i.aat ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aec = mul i64 %index, 144                    ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.aec
  %i.aed = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep151 = getelementptr i8, ptr %i.aed, i64 144
  %i.aee = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep152 = getelementptr i8, ptr %i.aee, i64 288
  %i.aef = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep153 = getelementptr i8, ptr %i.aef, i64 432
  %i.aeg = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep154 = getelementptr i8, ptr %i.aeg, i64 576
  %i.aeh = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep155 = getelementptr i8, ptr %i.aeh, i64 720
  %i.aei = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep156 = getelementptr i8, ptr %i.aei, i64 864
  %i.aej = getelementptr i8, ptr %gep.i, i64 %i.aec
  %next.gep157 = getelementptr i8, ptr %i.aej, i64 1008
  %i.aek = shl i64 %index, 2
  %next.gep158 = getelementptr i8, ptr %.430.i, i64 %i.aek ; 2 uses
  %i.ael = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !476
  %i.aem = load float, ptr %next.gep151, align 4, !tbaa !39, !alias.scope !476
  %i.aen = load float, ptr %next.gep152, align 4, !tbaa !39, !alias.scope !476
  %i.aeo = load float, ptr %next.gep153, align 4, !tbaa !39, !alias.scope !476
  %i.aep = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aeq = insertelement <4 x float> %i.aep, float %i.aem, i64 1
  %i.aer = insertelement <4 x float> %i.aeq, float %i.aen, i64 2
  %i.aes = insertelement <4 x float> %i.aer, float %i.aeo, i64 3
  %i.aet = load float, ptr %next.gep154, align 4, !tbaa !39, !alias.scope !476
  %i.aeu = load float, ptr %next.gep155, align 4, !tbaa !39, !alias.scope !476
  %i.aev = load float, ptr %next.gep156, align 4, !tbaa !39, !alias.scope !476
  %i.aew = load float, ptr %next.gep157, align 4, !tbaa !39, !alias.scope !476
  %i.aex = insertelement <4 x float> poison, float %i.aet, i64 0
  %i.aey = insertelement <4 x float> %i.aex, float %i.aeu, i64 1
  %i.aez = insertelement <4 x float> %i.aey, float %i.aev, i64 2
  %i.afa = insertelement <4 x float> %i.aez, float %i.aew, i64 3
  %i.afb = getelementptr i8, ptr %next.gep158, i64 16
  store <4 x float> %i.aes, ptr %next.gep158, align 4, !tbaa !39, !alias.scope !479, !noalias !476
  store <4 x float> %i.afa, ptr %i.afb, align 4, !tbaa !39, !alias.scope !479, !noalias !476
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afc = icmp eq i64 %index.next, %n.vec
  br i1 %i.afc, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.aar, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.aea, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.aeb, %middle.block ] ; 2 uses
  %i.afd = sub i32 %smin210, %.029.i.ph
  %xtraiter211 = and i32 %i.afd, 7                ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.afh, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.aff, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.afg, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.afe = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.afe, ptr %.527.i.prol, align 4, !tbaa !39
  %i.aff = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 144 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.afh = add nuw nsw i32 %.029.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter211
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !482

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa198.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.afg, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.afh, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.aff, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.afg, %scalar.ph.prol ]
  %i.afi = sub i32 %.029.i.ph, %smin210
  %i.afj = icmp ugt i32 %i.afi, -8
  br i1 %i.afj, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.029.i = phi i32 [ %i.agi, %scalar.ph ], [ %.029.i.unr, %scalar.ph.prol.loopexit ]
  %.06328.i = phi ptr [ %i.agg, %scalar.ph ], [ %.06328.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.527.i = phi ptr [ %i.agh, %scalar.ph ], [ %.527.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.afk = load float, ptr %.06328.i, align 4, !tbaa !39
  store float %i.afk, ptr %.527.i, align 4, !tbaa !39
  %i.afl = getelementptr inbounds nuw i8, ptr %.06328.i, i64 144
  %i.afm = getelementptr inbounds nuw i8, ptr %.527.i, i64 4
  %i.afn = load float, ptr %i.afl, align 4, !tbaa !39
  store float %i.afn, ptr %i.afm, align 4, !tbaa !39
  %i.afo = getelementptr inbounds nuw i8, ptr %.06328.i, i64 288
  %i.afp = getelementptr inbounds nuw i8, ptr %.527.i, i64 8
  %i.afq = load float, ptr %i.afo, align 4, !tbaa !39
  store float %i.afq, ptr %i.afp, align 4, !tbaa !39
  %i.afr = getelementptr inbounds nuw i8, ptr %.06328.i, i64 432
  %i.afs = getelementptr inbounds nuw i8, ptr %.527.i, i64 12
  %i.aft = load float, ptr %i.afr, align 4, !tbaa !39
  store float %i.aft, ptr %i.afs, align 4, !tbaa !39
  %i.afu = getelementptr inbounds nuw i8, ptr %.06328.i, i64 576
  %i.afv = getelementptr inbounds nuw i8, ptr %.527.i, i64 16
  %i.afw = load float, ptr %i.afu, align 4, !tbaa !39
  store float %i.afw, ptr %i.afv, align 4, !tbaa !39
  %i.afx = getelementptr inbounds nuw i8, ptr %.06328.i, i64 720
  %i.afy = getelementptr inbounds nuw i8, ptr %.527.i, i64 20
  %i.afz = load float, ptr %i.afx, align 4, !tbaa !39
  store float %i.afz, ptr %i.afy, align 4, !tbaa !39
  %i.aga = getelementptr inbounds nuw i8, ptr %.06328.i, i64 864
  %i.agb = getelementptr inbounds nuw i8, ptr %.527.i, i64 24
  %i.agc = load float, ptr %i.aga, align 4, !tbaa !39
  store float %i.agc, ptr %i.agb, align 4, !tbaa !39
  %i.agd = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1008
  %i.age = getelementptr inbounds nuw i8, ptr %.527.i, i64 28
  %i.agf = load float, ptr %i.agd, align 4, !tbaa !39
  store float %i.agf, ptr %i.age, align 4, !tbaa !39
  %i.agg = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1152
  %i.agh = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.agi = add nuw nsw i32 %.029.i, 8             ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.agi, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !483

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa146 = phi ptr [ %i.aeb, %middle.block ], [ %.lcssa198.unr, %scalar.ph.prol.loopexit ], [ %i.agh, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 36
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.agj = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next165 = add i64 %indvar164, 1
  br i1 %i.agj, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !484

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.c
  %i.agk = landingpad { ptr, i32 }
          catch ptr null
  %i.agl = extractvalue { ptr, i32 } %i.agk, 0
  call void @__clang_call_terminate(ptr %i.agl) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not105 = icmp sgt i32 %i.k, %i.j
  br i1 %.not105, label %._crit_edge, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %_ZN4ncnn3MatD2Ev.exit
  %indvar140 = phi i32 [ 0, %.lr.ph107 ], [ %indvar.next141, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033106 = phi i32 [ %i.k, %.lr.ph107 ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar140
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul i32 %i.t, %.033106                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.h

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !18, !noalias !485 ; 3 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !485
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !485
  %i.ab = mul i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab ; 4 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !67    ; 8 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !67
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 9 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67    ; 11 uses
  %i.aj = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !488
  %i.am = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !488
  %i.an = load ptr, ptr %10, align 8, !tbaa !18, !noalias !488
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !488
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !488 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated82, 3
  %i.az = and i32 %.sroa.speculated82, -4         ; 3 uses
  %i.ba = sext i32 %.sroa.speculated82 to i64     ; 4 uses
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ba, -3
  %invariant.op71.i = add nsw i64 %i.ba, -1
  %i.bd = sext i32 %i.ai to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ad to i64
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.t, %i.s
  %i.bj = sub i32 0, %i.ai                        ; 3 uses
  %i.bk = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bl = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bn = add i32 %.033106, 1
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033106, %i.bo
  %indvar.next141 = add i32 %indvar140, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar137 = phi i64 [ 0, %.lr.ph ], [ %indvar.next138, %_ZN4ncnn3MatD2Ev.exit34 ] ; 5 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bp = trunc i64 %indvar137 to i32
  %i.bq = mul i32 %i.bp, %i.bj
  %i.br = add i32 %i.bq, %i.ad
  %smin179 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.br) ; 2 uses
  %i.bs = trunc i64 %indvar137 to i32
  %i.bt = mul i32 %i.bs, %i.bj
  %i.bu = add i32 %i.bt, %i.ad
  %smin172 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bu) ; 3 uses
  %i.bv = add i32 %smin172, -1
  %i.bw = trunc i64 %indvar137 to i32
  %i.bx = mul i32 %i.bw, %i.bj
  %i.by = add i32 %i.bx, %i.ad
  %smin168 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.by) ; 4 uses
  %i.bz = mul i32 %i.ai, %indvar
  %i.ca = sub i32 %i.ad, %i.bz
  %smin135 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ca)
  %i.cb = zext i32 %smin135 to i64                ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 6
  %i.cd = mul i64 %i.bh, %indvar137               ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cb, 36
  %i.cf = mul i32 %i.ai, %indvar
  %i.cg = sub i32 %i.ad, %i.cf
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.cg) ; 2 uses
  %i.ch = add i32 %smin, -1
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = shl i32 %smin, 4                        ; 2 uses
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = mul i64 %i.bg, %i.cl
  %i.cn = shl nuw nsw i64 %i.ci, 6
  %i.co = trunc i64 %indvars.iv to i32
  %i.cp = sub i32 %i.ad, %i.co
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.cp) ; 10 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  br i1 %i.aj, label %.preheader4.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.lr.ph.i:                              ; preds = %bb.d
  %i.cq = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.cr = icmp sgt i32 %.sroa.speculated, 0
  %i.cs = mul i32 %i.cq, 9
  br i1 %i.cr, label %.preheader4.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep139 = getelementptr i8, ptr %.val50, i64 %i.cd
  %i.ct = mul i32 %i.bi, %i.cq
  %i.cu = mul i32 %i.cq, 9
  %i.cv = getelementptr i8, ptr %.val50, i64 %i.cd
  %scevgep143 = getelementptr i8, ptr %i.cv, i64 %i.ce
  %min.iters.check149 = icmp ult i32 %.sroa.speculated, 4
  %n.vec151 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cw = shl nuw nsw i64 %n.vec151, 6
  %cmp.n160 = icmp eq i64 %n.vec151, %wide.trip.count.i
end_hunk_1
begin_hunk_2_@_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.sv = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.su, ptr %i.sv, align 4, !tbaa !39
  %i.sw = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 256 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter178.next.3 = add i32 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i32 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod174.not, label %._crit_edge.us23.i, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.sw, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.sx, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader171
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader171 ], [ %i.tc, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader171 ], [ %i.td, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader171 ], [ %epil.iter.next, %bb.f ]
  %i.sy = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.sy, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.pq
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !39
  %i.tb = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.ta, ptr %i.tb, align 4, !tbaa !39
  %i.tc = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 64
  %i.td = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter173
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !499

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa166 = phi ptr [ %i.sx, %._crit_edge.us23.i.unr-lcssa ], [ %i.td, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.te = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.te, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.tf = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa166, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.qg, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.tf, %.preheader.loopexit.i ], [ %i.rx, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.tg = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.tg, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.pp, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.th = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.ti = mul i64 %i.pw, %i.th
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.ti
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.th, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa119, %._crit_edge.i53 ] ; 6 uses
  %i.tj = mul nsw i64 %indvars.iv50.i, %i.pq
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.tj ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep120 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %bound0 = icmp ult ptr %.430.i, %scevgep123
  %bound1 = icmp ult ptr %scevgep122, %scevgep120
  %found.conflict = and i1 %bound0, %bound1
  %i.tk = or i1 %found.conflict, %stride.check
  br i1 %i.tk, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.tl = getelementptr i8, ptr %gep.i, i64 %i.qd
  %i.tm = getelementptr i8, ptr %.430.i, i64 %i.qe ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tn = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.tn
  %i.to = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep124 = getelementptr i8, ptr %i.to, i64 64
  %i.tp = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep125 = getelementptr i8, ptr %i.tp, i64 128
  %i.tq = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep126 = getelementptr i8, ptr %i.tq, i64 192
  %i.tr = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep127 = getelementptr i8, ptr %i.tr, i64 256
  %i.ts = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep128 = getelementptr i8, ptr %i.ts, i64 320
  %i.tt = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep129 = getelementptr i8, ptr %i.tt, i64 384
  %i.tu = getelementptr i8, ptr %gep.i, i64 %i.tn
  %next.gep130 = getelementptr i8, ptr %i.tu, i64 448
  %i.tv = shl i64 %index, 2
  %next.gep131 = getelementptr i8, ptr %.430.i, i64 %i.tv ; 2 uses
  %i.tw = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !500
  %i.tx = load float, ptr %next.gep124, align 4, !tbaa !39, !alias.scope !500
  %i.ty = load float, ptr %next.gep125, align 4, !tbaa !39, !alias.scope !500
  %i.tz = load float, ptr %next.gep126, align 4, !tbaa !39, !alias.scope !500
  %i.ua = insertelement <4 x float> poison, float %i.tw, i64 0
  %i.ub = insertelement <4 x float> %i.ua, float %i.tx, i64 1
  %i.uc = insertelement <4 x float> %i.ub, float %i.ty, i64 2
  %i.ud = insertelement <4 x float> %i.uc, float %i.tz, i64 3
  %i.ue = load float, ptr %next.gep127, align 4, !tbaa !39, !alias.scope !500
  %i.uf = load float, ptr %next.gep128, align 4, !tbaa !39, !alias.scope !500
  %i.ug = load float, ptr %next.gep129, align 4, !tbaa !39, !alias.scope !500
  %i.uh = load float, ptr %next.gep130, align 4, !tbaa !39, !alias.scope !500
  %i.ui = insertelement <4 x float> poison, float %i.ue, i64 0
  %i.uj = insertelement <4 x float> %i.ui, float %i.uf, i64 1
  %i.uk = insertelement <4 x float> %i.uj, float %i.ug, i64 2
  %i.ul = insertelement <4 x float> %i.uk, float %i.uh, i64 3
  %i.um = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x float> %i.ud, ptr %next.gep131, align 4, !tbaa !39, !alias.scope !503, !noalias !500
  store <4 x float> %i.ul, ptr %i.um, align 4, !tbaa !39, !alias.scope !503, !noalias !500
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.un = icmp eq i64 %index.next, %n.vec
  br i1 %i.un, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.qc, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.tl, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.tm, %middle.block ] ; 2 uses
  %i.uo = sub i32 %smin179, %.029.i.ph
  %xtraiter180 = and i32 %i.uo, 7                 ; 2 uses
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.us, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.uq, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.ur, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.up = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.up, ptr %.527.i.prol, align 4, !tbaa !39
  %i.uq = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 64 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.us = add nuw nsw i32 %.029.i.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter180
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !506

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa167.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ur, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.us, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.uq, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.ur, %scalar.ph.prol ]
  %i.ut = sub i32 %.029.i.ph, %smin179
  %i.uu = icmp ugt i32 %i.ut, -8
  br i1 %i.uu, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.029.i = phi i32 [ %i.vt, %scalar.ph ], [ %.029.i.unr, %scalar.ph.prol.loopexit ]
  %.06328.i = phi ptr [ %i.vr, %scalar.ph ], [ %.06328.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.527.i = phi ptr [ %i.vs, %scalar.ph ], [ %.527.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.uv = load float, ptr %.06328.i, align 4, !tbaa !39
  store float %i.uv, ptr %.527.i, align 4, !tbaa !39
  %i.uw = getelementptr inbounds nuw i8, ptr %.06328.i, i64 64
  %i.ux = getelementptr inbounds nuw i8, ptr %.527.i, i64 4
  %i.uy = load float, ptr %i.uw, align 4, !tbaa !39
  store float %i.uy, ptr %i.ux, align 4, !tbaa !39
  %i.uz = getelementptr inbounds nuw i8, ptr %.06328.i, i64 128
  %i.va = getelementptr inbounds nuw i8, ptr %.527.i, i64 8
  %i.vb = load float, ptr %i.uz, align 4, !tbaa !39
  store float %i.vb, ptr %i.va, align 4, !tbaa !39
  %i.vc = getelementptr inbounds nuw i8, ptr %.06328.i, i64 192
  %i.vd = getelementptr inbounds nuw i8, ptr %.527.i, i64 12
  %i.ve = load float, ptr %i.vc, align 4, !tbaa !39
  store float %i.ve, ptr %i.vd, align 4, !tbaa !39
  %i.vf = getelementptr inbounds nuw i8, ptr %.06328.i, i64 256
  %i.vg = getelementptr inbounds nuw i8, ptr %.527.i, i64 16
  %i.vh = load float, ptr %i.vf, align 4, !tbaa !39
  store float %i.vh, ptr %i.vg, align 4, !tbaa !39
  %i.vi = getelementptr inbounds nuw i8, ptr %.06328.i, i64 320
  %i.vj = getelementptr inbounds nuw i8, ptr %.527.i, i64 20
  %i.vk = load float, ptr %i.vi, align 4, !tbaa !39
  store float %i.vk, ptr %i.vj, align 4, !tbaa !39
  %i.vl = getelementptr inbounds nuw i8, ptr %.06328.i, i64 384
  %i.vm = getelementptr inbounds nuw i8, ptr %.527.i, i64 24
  %i.vn = load float, ptr %i.vl, align 4, !tbaa !39
  store float %i.vn, ptr %i.vm, align 4, !tbaa !39
  %i.vo = getelementptr inbounds nuw i8, ptr %.06328.i, i64 448
  %i.vp = getelementptr inbounds nuw i8, ptr %.527.i, i64 28
  %i.vq = load float, ptr %i.vo, align 4, !tbaa !39
  store float %i.vq, ptr %i.vp, align 4, !tbaa !39
  %i.vr = getelementptr inbounds nuw i8, ptr %.06328.i, i64 512
  %i.vs = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.vt = add nuw nsw i32 %.029.i, 8              ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.vt, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !507

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa119 = phi ptr [ %i.tm, %middle.block ], [ %.lcssa167.unr, %scalar.ph.prol.loopexit ], [ %i.vs, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 16
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.vu = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next138 = add i64 %indvar137, 1
  br i1 %i.vu, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !508

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.c
  %i.vv = landingpad { ptr, i32 }
          catch ptr null
  %i.vw = extractvalue { ptr, i32 } %i.vv, 0
  call void @__clang_call_terminate(ptr %i.vw) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 2                         ; 2 uses
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0120 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.e = add nsw i32 %i.b, -16
  %i.f = sdiv i32 %i.e, 32
  %i.g = shl nsw i32 %i.f, 2
  %.sroa.speculated110 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4) ; 3 uses
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = add i32 %i.h, %.sroa.speculated110
  %i.j = sdiv i32 %i.i, %.sroa.speculated110      ; 2 uses
  %i.k = add i32 %i.h, %i.j
  %i.l = sdiv i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 3
  %i.n = sdiv i32 %i.m, 4
  %i.o = shl nsw i32 %i.n, 2
  %.sroa.speculated105 = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.sroa.speculated110)
  store i32 %.sroa.speculated105, ptr %5, align 4, !tbaa !67
  %i.p = add nsw i32 %0, 15
  %i.q = sdiv i32 %i.p, 16                        ; 2 uses
  %i.r = add i32 %0, -1                           ; 3 uses
  %i.s = add i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, 3
  %i.v = sdiv i32 %i.u, 4
  %i.w = shl nsw i32 %i.v, 2
  %.sroa.speculated98 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 4)
  store i32 %.sroa.speculated98, ptr %3, align 4, !tbaa !67
  %i.x = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.0120)
  %i.y = load i32, ptr %3, align 4, !tbaa !67
  %i.z = mul nsw i32 %i.y, %.sroa.speculated93    ; 3 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 3
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = shl nsw i32 %i.af, 2
  %.sroa.speculated88 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.z) ; 3 uses
  %i.ah = icmp sgt i32 %.0120, 1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sdiv i32 %.sroa.speculated88, %.0120
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = add nuw nsw i32 %.sroa.speculated76, 3
  %i.ak = and i32 %i.aj, 2147483644
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated88)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %.sroa.speculated83, %bb.d ], [ %.sroa.speculated88, %bb.c ] ; 3 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !67
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %.not = icmp slt i32 %i.an, %2
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sub nsw i32 %i.b, %i.ao
  %i.aq = select i1 %.not, i32 %i.al, i32 0
  %.sink = add nsw i32 %i.an, %i.aq
  %i.ar = sdiv i32 %i.ap, %.sink
  %i.as = sdiv i32 %i.ar, 4
  %i.at = shl nsw i32 %i.as, 2
  %.sroa.speculated69 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 4) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated69
  %i.aw = udiv i32 %i.av, %.sroa.speculated69     ; 2 uses
  %i.ax = add nuw i32 %i.au, %i.aw
  %i.ay = udiv i32 %i.ax, %i.aw
  %i.az = add nuw nsw i32 %i.ay, 3
  %i.ba = and i32 %i.az, -4
  %.sroa.speculated64 = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %.sroa.speculated69)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated64, i32 4)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge80, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge80

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ak, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.02878 = phi i32 [ %i.al, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = mul i32 %i.s, %.02878                    ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67
  %i.v = sub nsw i32 %i.u, %i.t
  %.sroa.speculated57 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v) ; 7 uses
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZN4ncnn3MatD2Ev.exit29.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.lr.ph:                    ; preds = %.lr.ph.split
  %i.x = icmp sgt i32 %.sroa.speculated57, 3
  %i.y = and i32 %.sroa.speculated57, 2147483644
  %i.z = sext i32 %i.t to i64                     ; 11 uses
  %i.aa = zext nneg i32 %.sroa.speculated57 to i64 ; 2 uses
  %i.ab = sext i32 %.sroa.speculated57 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.ab, -1         ; 2 uses
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.ac = add nsw i64 %i.z, 1
  %i.ad = shl nsw i64 %i.z, 2
  %i.ae = add nsw i64 %i.ad, 12
  %i.af = shl nsw i64 %i.z, 2
  %i.ag = add nsw i64 %i.af, 8
  %i.ah = shl nsw i64 %i.z, 2
  %i.ai = add nsw i64 %i.ah, 4
  %i.aj = shl nsw i64 %i.z, 2
end_hunk_2
begin_hunk_3_@_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %.3.lcssa.i = phi ptr [ %.0139.lcssa.i, %.preheader3.i ], [ %.lcssa236, %.preheader1.loopexit110.i ], [ %.5.lcssa.us.i, %.preheader1.loopexit.i ], [ %.0139.lcssa.i, %.preheader2.preheader.i ]
  %i.ms = icmp slt i32 %.1142.lcssa.i, %.sroa.speculated57
  br i1 %i.ms, label %.lr.ph108.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph108.i:                                      ; preds = %.preheader1.i
  %i.mt = sext i32 %.076 to i64
  %i.mu = icmp sgt i32 %.sroa.speculated, 3
  %i.mv = and i32 %.sroa.speculated, -4           ; 2 uses
  %i.mw = sext i32 %.1142.lcssa.i to i64
  %i.mx = sext i32 %i.bf to i64
  %i.my = add i32 %.sroa.speculated, -4           ; 2 uses
  %i.mz = lshr i32 %i.my, 2
  %i.na = add nuw nsw i32 %i.mz, 1                ; 2 uses
  %xtraiter250 = and i32 %i.na, 3                 ; 3 uses
  %i.nb = icmp ult i32 %i.my, 12
  %unroll_iter255 = and i32 %i.na, 2147483644
  %lcmp.mod251.not = icmp eq i32 %xtraiter250, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter250, 0
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph108.i
  %indvars.iv149.i = phi i64 [ %i.mw, %.lr.ph108.i ], [ %indvars.iv.next150.i, %._crit_edge.i ] ; 2 uses
  %.6107.i = phi ptr [ %.3.lcssa.i, %.lr.ph108.i ], [ %.8.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.nc = load ptr, ptr %8, align 8, !tbaa !18
  %i.nd = add nsw i64 %indvars.iv149.i, %i.z
  %i.ne = mul nsw i64 %i.nd, %i.mx
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.ne
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.mt ; 3 uses
  br i1 %i.mu, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %i.nb, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  br i1 %lcmp.mod251.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013797.i.epil.init = phi ptr [ %i.ng, %.lr.ph.i.preheader ], [ %i.or, %.preheader.i.loopexit.unr-lcssa ]
  %.796.i.epil.init = phi ptr [ %.6107.i, %.lr.ph.i.preheader ], [ %i.oq, %.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013797.i.epil = phi ptr [ %i.nj, %.lr.ph.i.epil ], [ %.013797.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.796.i.epil = phi ptr [ %i.ni, %.lr.ph.i.epil ], [ %.796.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.nh = load <4 x float>, ptr %.013797.i.epil, align 1, !tbaa !254
  store <4 x float> %i.nh, ptr %.796.i.epil, align 1, !tbaa !254
  %i.ni = getelementptr inbounds nuw i8, ptr %.796.i.epil, i64 16 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.013797.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter250
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !542

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.h
  %.7.lcssa.i = phi ptr [ %.6107.i, %bb.h ], [ %i.oq, %.preheader.i.loopexit.unr-lcssa ], [ %i.ni, %.lr.ph.i.epil ] ; 5 uses
  %.0137.lcssa.i = phi ptr [ %i.ng, %bb.h ], [ %i.or, %.preheader.i.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph.i.epil ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.mv, %.lr.ph.i.epil ], [ %i.mv, %.preheader.i.loopexit.unr-lcssa ] ; 4 uses
  %i.nk = icmp slt i32 %.0.lcssa.i, %.sroa.speculated
  br i1 %i.nk, label %.lr.ph104.i.preheader, label %._crit_edge.i

.lr.ph104.i.preheader:                            ; preds = %.preheader.i
  %.0137.lcssa.i137 = ptrtoaddr ptr %.0137.lcssa.i to i64
  %.7.lcssa.i136 = ptrtoaddr ptr %.7.lcssa.i to i64
  %i.nl = xor i32 %.0.lcssa.i, -1
  %i.nm = add i32 %.sroa.speculated, %i.nl        ; 2 uses
  %i.nn = zext i32 %i.nm to i64
  %i.no = add nuw nsw i64 %i.nn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.nm, 7
  %i.np = sub i64 %.0137.lcssa.i137, %.7.lcssa.i136
  %diff.check = icmp ugt i64 %i.np, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph104.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph104.i.preheader
  %n.vec = and i64 %i.no, 8589934584              ; 4 uses
  %i.nq = trunc i64 %n.vec to i32
  %i.nr = add i32 %.0.lcssa.i, %i.nq
  %i.ns = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.nt = getelementptr i8, ptr %.0137.lcssa.i, i64 %i.ns
  %i.nu = getelementptr i8, ptr %.7.lcssa.i, i64 %i.ns ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0137.lcssa.i, i64 %i.nv ; 2 uses
  %next.gep138 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.nv ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x float>, ptr %i.nw, align 4, !tbaa !39
  %i.nx = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x float> %wide.load, ptr %next.gep138, align 4, !tbaa !39
  store <4 x float> %wide.load139, ptr %i.nx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ny = icmp eq i64 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph104.i.preheader227

.lr.ph104.i.preheader227:                         ; preds = %.lr.ph104.i.preheader, %middle.block
  %.1103.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nr, %middle.block ] ; 4 uses
  %.1138102.i.ph = phi ptr [ %.0137.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nt, %middle.block ] ; 2 uses
  %.8101.i.ph = phi ptr [ %.7.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nu, %middle.block ] ; 2 uses
  %i.nz = sub i32 %.sroa.speculated, %.1103.i.ph
  %xtraiter257 = and i32 %i.nz, 7                 ; 2 uses
  %lcmp.mod258.not = icmp eq i32 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol

.lr.ph104.i.prol:                                 ; preds = %.lr.ph104.i.preheader227, %.lr.ph104.i.prol
  %.1103.i.prol = phi i32 [ %i.od, %.lr.ph104.i.prol ], [ %.1103.i.ph, %.lr.ph104.i.preheader227 ]
  %.1138102.i.prol = phi ptr [ %i.oc, %.lr.ph104.i.prol ], [ %.1138102.i.ph, %.lr.ph104.i.preheader227 ] ; 2 uses
  %.8101.i.prol = phi ptr [ %i.ob, %.lr.ph104.i.prol ], [ %.8101.i.ph, %.lr.ph104.i.preheader227 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph104.i.prol ], [ 0, %.lr.ph104.i.preheader227 ]
  %i.oa = load float, ptr %.1138102.i.prol, align 4, !tbaa !39
  store float %i.oa, ptr %.8101.i.prol, align 4, !tbaa !39
  %i.ob = getelementptr inbounds nuw i8, ptr %.8101.i.prol, i64 4 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.1138102.i.prol, i64 4 ; 2 uses
  %i.od = add nuw nsw i32 %.1103.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter257
  br i1 %prol.iter.cmp.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol, !llvm.loop !544

.lr.ph104.i.prol.loopexit:                        ; preds = %.lr.ph104.i.prol, %.lr.ph104.i.preheader227
  %.lcssa243.unr = phi ptr [ poison, %.lr.ph104.i.preheader227 ], [ %i.ob, %.lr.ph104.i.prol ]
  %.1103.i.unr = phi i32 [ %.1103.i.ph, %.lr.ph104.i.preheader227 ], [ %i.od, %.lr.ph104.i.prol ]
  %.1138102.i.unr = phi ptr [ %.1138102.i.ph, %.lr.ph104.i.preheader227 ], [ %i.oc, %.lr.ph104.i.prol ]
  %.8101.i.unr = phi ptr [ %.8101.i.ph, %.lr.ph104.i.preheader227 ], [ %i.ob, %.lr.ph104.i.prol ]
  %i.oe = sub i32 %.1103.i.ph, %.sroa.speculated
  %i.of = icmp ugt i32 %i.oe, -8
  br i1 %i.of, label %._crit_edge.i, label %.lr.ph104.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013797.i = phi ptr [ %i.or, %.lr.ph.i ], [ %i.ng, %.lr.ph.i.preheader ] ; 5 uses
  %.796.i = phi ptr [ %i.oq, %.lr.ph.i ], [ %.6107.i, %.lr.ph.i.preheader ] ; 5 uses
  %niter256 = phi i32 [ %niter256.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.og = load <4 x float>, ptr %.013797.i, align 1, !tbaa !254
  store <4 x float> %i.og, ptr %.796.i, align 1, !tbaa !254
  %i.oh = getelementptr inbounds nuw i8, ptr %.796.i, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %.013797.i, i64 16
  %i.oj = load <4 x float>, ptr %i.oi, align 1, !tbaa !254
  store <4 x float> %i.oj, ptr %i.oh, align 1, !tbaa !254
  %i.ok = getelementptr inbounds nuw i8, ptr %.796.i, i64 32
  %i.ol = getelementptr inbounds nuw i8, ptr %.013797.i, i64 32
  %i.om = load <4 x float>, ptr %i.ol, align 1, !tbaa !254
  store <4 x float> %i.om, ptr %i.ok, align 1, !tbaa !254
  %i.on = getelementptr inbounds nuw i8, ptr %.796.i, i64 48
  %i.oo = getelementptr inbounds nuw i8, ptr %.013797.i, i64 48
  %i.op = load <4 x float>, ptr %i.oo, align 1, !tbaa !254
  store <4 x float> %i.op, ptr %i.on, align 1, !tbaa !254
  %i.oq = getelementptr inbounds nuw i8, ptr %.796.i, i64 64 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.013797.i, i64 64 ; 3 uses
  %niter256.next.3 = add nuw nsw i32 %niter256, 4 ; 2 uses
  %niter256.ncmp.3.not = icmp eq i32 %niter256.next.3, %unroll_iter255
  br i1 %niter256.ncmp.3.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !545

.lr.ph104.i:                                      ; preds = %.lr.ph104.i.prol.loopexit, %.lr.ph104.i
  %.1103.i = phi i32 [ %i.pq, %.lr.ph104.i ], [ %.1103.i.unr, %.lr.ph104.i.prol.loopexit ]
  %.1138102.i = phi ptr [ %i.pp, %.lr.ph104.i ], [ %.1138102.i.unr, %.lr.ph104.i.prol.loopexit ] ; 9 uses
  %.8101.i = phi ptr [ %i.po, %.lr.ph104.i ], [ %.8101.i.unr, %.lr.ph104.i.prol.loopexit ] ; 9 uses
  %i.os = load float, ptr %.1138102.i, align 4, !tbaa !39
  store float %i.os, ptr %.8101.i, align 4, !tbaa !39
  %i.ot = getelementptr inbounds nuw i8, ptr %.8101.i, i64 4
  %i.ou = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 4
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !39
  store float %i.ov, ptr %i.ot, align 4, !tbaa !39
  %i.ow = getelementptr inbounds nuw i8, ptr %.8101.i, i64 8
  %i.ox = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 8
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !39
  store float %i.oy, ptr %i.ow, align 4, !tbaa !39
  %i.oz = getelementptr inbounds nuw i8, ptr %.8101.i, i64 12
  %i.pa = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 12
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !39
  store float %i.pb, ptr %i.oz, align 4, !tbaa !39
  %i.pc = getelementptr inbounds nuw i8, ptr %.8101.i, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 16
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !39
  store float %i.pe, ptr %i.pc, align 4, !tbaa !39
  %i.pf = getelementptr inbounds nuw i8, ptr %.8101.i, i64 20
  %i.pg = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 20
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !39
  store float %i.ph, ptr %i.pf, align 4, !tbaa !39
  %i.pi = getelementptr inbounds nuw i8, ptr %.8101.i, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 24
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !39
  store float %i.pk, ptr %i.pi, align 4, !tbaa !39
  %i.pl = getelementptr inbounds nuw i8, ptr %.8101.i, i64 28
  %i.pm = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 28
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !39
  store float %i.pn, ptr %i.pl, align 4, !tbaa !39
  %i.po = getelementptr inbounds nuw i8, ptr %.8101.i, i64 32 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.1138102.i, i64 32
  %i.pq = add nuw nsw i32 %.1103.i, 8             ; 2 uses
  %exitcond148.not.i.7 = icmp eq i32 %i.pq, %.sroa.speculated
  br i1 %exitcond148.not.i.7, label %._crit_edge.i, label %.lr.ph104.i, !llvm.loop !546

._crit_edge.i:                                    ; preds = %.lr.ph104.i.prol.loopexit, %.lr.ph104.i, %middle.block, %.preheader.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader.i ], [ %i.nu, %middle.block ], [ %.lcssa243.unr, %.lr.ph104.i.prol.loopexit ], [ %i.po, %.lr.ph104.i ]
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next150.i, %i.ab
  br i1 %exitcond152.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h, !llvm.loop !547

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge.i, %.preheader1.i
  %i.pr = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.ps = add nsw i32 %i.pr, %.076                ; 2 uses
  %i.pt = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %i.pu = icmp slt i32 %i.ps, %i.pt
  br i1 %i.pu, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge, !llvm.loop !548

._crit_edge80:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge80, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn15Convolution_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 18 uses
  %i.g = alloca ptr, align 8                      ; 18 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 8 uses
  %i.u = alloca i32, align 4                      ; 7 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 31 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 33 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !66   ; 3 uses
  %.not.i179 = icmp eq i32 %i.z, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i179, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %.pre to i32
  %i.aa = shl i32 %.tr.i, 3
  %i.ab = sdiv i32 %i.aa, %i.z
  %i.ac = icmp eq i32 %i.ab, 8
  br label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.ac, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  store <2 x ptr> %i.ag, ptr %6, align 16, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.pre, ptr %i.ah, align 16, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.z, ptr %i.ai, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  store ptr %i.al, ptr %i.aj, align 16, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load <4 x i32>, ptr %i.an, align 8, !tbaa !67
  store <4 x i32> %i.ao, ptr %i.am, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20
  store i64 %i.au, ptr %i.as, align 16, !tbaa !20
  %.not.i186 = icmp eq ptr %i.af, null
  br i1 %.not.i186, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.av = atomicrmw add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.c
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !549
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !229
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !230
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %6, align 16, !tbaa !18
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK4ncnn3Mat5emptyEv.exit185.thread, label %_ZNK4ncnn3Mat5emptyEv.exit185

_ZNK4ncnn3Mat5emptyEv.exit185.thread:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.gb

bb.f:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.gi

_ZNK4ncnn3Mat5emptyEv.exit185:                    ; preds = %bb.e
  %i.bd = load i64, ptr %i.as, align 16, !tbaa !20
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !68
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  %i.bh = icmp eq i64 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br i1 %i.bh, label %bb.gb, label %bb.g

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit185, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 20 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 14 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bl, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn11Convolution12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %8, align 8, !tbaa !18
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK4ncnn3Mat5emptyEv.exit184.thread, label %_ZNK4ncnn3Mat5emptyEv.exit184

_ZNK4ncnn3Mat5emptyEv.exit184:                    ; preds = %bb.h
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !20
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bs, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK4ncnn3Mat5emptyEv.exit184.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit184
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !75
  %i.bz = load i32, ptr %i.bn, align 8, !tbaa !76
  %i.ca = load i32, ptr %i.bk, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !52
  %i.cf = add nsw i32 %i.ce, -1
  %i.cg = mul nsw i32 %i.cf, %i.cc
  %.neg = xor i32 %i.cg, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !53
  %i.cl = add nsw i32 %i.ck, -1
  %i.cm = mul nsw i32 %i.cl, %i.ci
  %.neg95 = xor i32 %i.cm, -1
end_hunk_3
begin_hunk_4_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %._crit_edge.us87.i, label %_ZN4ncnn3MatD2Ev.exit336.us.i, !llvm.loop !767

._crit_edge.us87.i:                               ; preds = %bb.aa
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 2 ; 3 uses
  %i.lb = icmp slt i64 %indvars.iv.next152.i, %invariant.op.i
  br i1 %i.lb, label %bb.s, label %.preheader.loopexit.i, !llvm.loop !768

.lr.ph83.split.i:                                 ; preds = %.lr.ph83.i
  %i.lc = add i32 %.0322.lcssa.i, 3
  %smax138.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %i.lc)
  %reass.sub = sub i32 %smax138.i, %.0322.lcssa.i
  %i.ld = and i32 %reass.sub, -2
  %i.le = add i32 %.0322.lcssa.i, %i.ld
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us87.i
  %i.lf = trunc nsw i64 %indvars.iv.next152.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph83.split.i, %.preheader55.i
  %.1323.lcssa.i = phi i32 [ %.0322.lcssa.i, %.preheader55.i ], [ %i.le, %.lr.ph83.split.i ], [ %i.lf, %.preheader.loopexit.i ] ; 2 uses
  %i.lg = icmp slt i32 %.1323.lcssa.i, %.sroa.speculated121
  br i1 %i.lg, label %.lr.ph107.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph107.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.lh = icmp sgt i32 %.sroa.speculated117, 0
  %i.li = sext i32 %.sroa.speculated117 to i64
  %i.lj = shl nsw i32 %.sroa.speculated117, 1
  %i.lk = sext i32 %i.lj to i64
  %i.ll = mul nsw i32 %.sroa.speculated117, 3
  %i.lm = sext i32 %i.ll to i64
  %i.ln = shl nsw i32 %.sroa.speculated117, 2
  %i.lo = sext i32 %i.ln to i64                   ; 12 uses
  %i.lp = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.lh, label %.lr.ph107.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.i
  %i.lq = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !769
  %i.lr = load ptr, ptr %12, align 8, !tbaa !18, !noalias !769
  %i.ls = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !769
  %i.lt = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !769 ; 2 uses
  %factor.op.mul118.i = mul i64 %i.lt, %i.ls
  %i.lu = sext i32 %i.lq to i64
  %factor.op.mul103.us.i = mul i64 %i.lt, %i.lu
  %i.lv = sext i32 %.1323.lcssa.i to i64
  %wide.trip.count167.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.us116.i, %.lr.ph107.split.us.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %._crit_edge.us116.i ], [ %i.lv, %.lr.ph107.split.us.i ] ; 3 uses
  %.pre192.i = add nsw i64 %indvars.iv169.i, %i.bi ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us115.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lw = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre192.i
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !39
  br label %.lr.ph.us115.i

.lr.ph.us115.i:                                   ; preds = %bb.ac, %bb.ab
  %i.ly = phi fast float [ %i.lx, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 4 uses
  %i.lz = trunc nsw i64 %indvars.iv169.i to i32
  %factor.op.mul100.reass.us.i = mul i32 %factor.op.mul64.i, %i.lz
  %i.ma = sext i32 %factor.op.mul100.reass.us.i to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ma
  %.reass119.i = mul i64 %factor.op.mul118.i, %.pre192.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.reass119.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us113.i, %.lr.ph.us115.i
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph.us115.i ], [ %indvars.iv.next165.i, %.split.us113.i ] ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv164.i ; 5 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.li ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.lk ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.lm ; 2 uses
  %i.mh = load float, ptr %i.md, align 4, !tbaa !39
  %i.mi = load float, ptr %i.me, align 4, !tbaa !39 ; 2 uses
  %i.mj = fadd fast float %i.mi, %i.mh
  %i.mk = load float, ptr %i.mf, align 4, !tbaa !39 ; 2 uses
  %i.ml = fadd fast float %i.mj, %i.mk            ; 2 uses
  %i.mm = fsub fast float %i.mi, %i.mk
  %i.mn = load float, ptr %i.mg, align 4, !tbaa !39
  %i.mo = fadd fast float %i.mm, %i.mn            ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.lo ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.lo ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.lo ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.lo ; 2 uses
  %i.mt = load float, ptr %i.mp, align 4, !tbaa !39
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !39 ; 2 uses
  %i.mv = fadd fast float %i.mu, %i.mt
  %i.mw = load float, ptr %i.mr, align 4, !tbaa !39 ; 2 uses
  %i.mx = fadd fast float %i.mv, %i.mw            ; 2 uses
  %i.my = fsub fast float %i.mu, %i.mw
  %i.mz = load float, ptr %i.ms, align 4, !tbaa !39
  %i.na = fadd fast float %i.my, %i.mz            ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.lo ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.lo ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.lo ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.lo ; 2 uses
  %i.nf = load float, ptr %i.nb, align 4, !tbaa !39
  %i.ng = load float, ptr %i.nc, align 4, !tbaa !39 ; 2 uses
  %i.nh = fadd fast float %i.ng, %i.nf
  %i.ni = load float, ptr %i.nd, align 4, !tbaa !39 ; 2 uses
  %i.nj = fadd fast float %i.nh, %i.ni            ; 3 uses
  %i.nk = fsub fast float %i.ng, %i.ni
  %i.nl = load float, ptr %i.ne, align 4, !tbaa !39
  %i.nm = fadd fast float %i.nk, %i.nl            ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.lo
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.lo
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.lo
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.lo
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !39
  %i.ns = load float, ptr %i.no, align 4, !tbaa !39 ; 2 uses
  %i.nt = load float, ptr %i.np, align 4, !tbaa !39 ; 2 uses
  %i.nu = load float, ptr %i.nq, align 4, !tbaa !39
  %i.nv = trunc i64 %indvars.iv164.i to i32
  %i.nw = add i32 %.044147, %i.nv                 ; 2 uses
  %i.nx = sdiv i32 %i.nw, %i.ca
  %i.ny = srem i32 %i.nw, %i.ca
  %i.nz = shl nsw i32 %i.nx, 1                    ; 4 uses
  %i.oa = sext i32 %i.nz to i64
  %.reass104.us.i = mul i64 %factor.op.mul103.us.i, %i.oa
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.reass104.us.i
  %i.oc = shl nsw i32 %i.ny, 1                    ; 2 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.od ; 7 uses
  %i.of = or disjoint i32 %i.oc, 1
  %i.og = icmp slt i32 %i.of, %i.bt
  %.fr.us.i = freeze i1 %i.og
  %.not330.us.us.i = icmp slt i32 %i.nz, %i.bu    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i
  %i.oh = fadd fast float %i.mx, %i.ly
  %i.oi = fadd fast float %i.oh, %i.ml
  %i.oj = fadd fast float %i.oi, %i.nj
  store float %i.oj, ptr %i.oe, align 4, !tbaa !39
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.lp
  br label %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i

_ZN4ncnn3MatD2Ev.exit.split.us114.1.i:            ; preds = %bb.ad, %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i
  %.1.us112.i = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i ], [ %i.ok, %bb.ad ]
  %i.ol = or disjoint i32 %i.nz, 1
  %.not330.us111.1.i = icmp slt i32 %i.ol, %i.bu
  br i1 %.not330.us111.1.i, label %bb.ae, label %.split.us113.i

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i
  %i.om = fadd fast float %i.na, %i.ly
  %i.on = fadd fast float %i.om, %i.mo
  %i.oo = fadd fast float %i.on, %i.nm
  store float %i.oo, ptr %.1.us112.i, align 4, !tbaa !39
  br label %.split.us113.i

.split.us113.i:                                   ; preds = %bb.ag, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.ae, %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  br i1 %exitcond168.not.i, label %._crit_edge.us116.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !772

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.op = fadd fast float %i.mx, %i.ly            ; 2 uses
  %i.oq = fadd fast float %i.op, %i.ml
  %i.or = fadd fast float %i.oq, %i.nj
  store float %i.or, ptr %i.oe, align 4, !tbaa !39
  %i.os = fsub fast float %i.op, %i.nj
  %i.ot = fadd fast float %i.os, %i.nr
  %i.ou = fadd fast float %i.ot, %i.ns
  %i.ov = fadd fast float %i.ou, %i.nt
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  store float %i.ov, ptr %i.ow, align 4, !tbaa !39
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.lp
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.ox, %bb.af ] ; 2 uses
  %i.oy = or disjoint i32 %i.nz, 1
  %.not330.us.us.1.i = icmp slt i32 %i.oy, %i.bu
  br i1 %.not330.us.us.1.i, label %bb.ag, label %.split.us113.i

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.oz = fadd fast float %i.na, %i.ly            ; 2 uses
  %i.pa = fadd fast float %i.oz, %i.mo
  %i.pb = fadd fast float %i.pa, %i.nm
  store float %i.pb, ptr %.1.us.us.i, align 4, !tbaa !39
  %i.pc = fadd fast float %i.oz, %i.ns
  %i.pd = fadd fast float %i.nm, %i.nt
  %i.pe = fsub fast float %i.pc, %i.pd
  %i.pf = fadd fast float %i.pe, %i.nu
  %i.pg = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store float %i.pf, ptr %i.pg, align 4, !tbaa !39
  br label %.split.us113.i

._crit_edge.us116.i:                              ; preds = %.split.us113.i
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %i.bl
  br i1 %exitcond173.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ab, !llvm.loop !773

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ph = phi i32 [ %i.re, %.noexc ], [ %.pre153, %.noexc.preheader ] ; 2 uses
  %i.pi = phi i32 [ %i.rg, %.noexc ], [ %i.br, %.noexc.preheader ]
  %.0146 = phi i32 [ %i.rf, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.pj = sub nsw i32 %i.pi, %.0146
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ph, i32 %i.pj)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.pk = load i32, ptr %3, align 4, !tbaa !67
  %i.pl = sdiv i32 %i.at, %i.pk
  %i.pm = load ptr, ptr %10, align 8, !tbaa !18, !noalias !774
  %i.pn = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !774
  %i.po = sext i32 %i.pl to i64
  %i.pp = mul i64 %i.pn, %i.po
  %i.pq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !774 ; 3 uses
  %i.pr = mul i64 %i.pp, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pr
  %i.pt = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !774
  %i.pu = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !774
  %i.pv = sdiv i32 %.0146, %i.ph
  %i.pw = sext i32 %i.pv to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !777
  store i64 %i.pq, ptr %i.u, align 8, !tbaa !65, !alias.scope !777
  store i32 %i.pt, ptr %i.v, align 8, !tbaa !66, !alias.scope !777
  store ptr %i.pu, ptr %i.w, align 8, !tbaa !17, !alias.scope !777
  store i32 2, ptr %i.x, align 8, !tbaa !227, !alias.scope !777
  %i.px = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !774
  %i.py = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !774
  %i.pz = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !774
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sext i32 %i.py to i64
  %i.qc = mul nsw i64 %i.qb, %i.qa                ; 2 uses
  %i.qd = mul i64 %i.pq, %i.qc
  %i.qe = mul i64 %i.qd, %i.pw
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qe
  store ptr %i.qf, ptr %14, align 8, !tbaa !18, !alias.scope !777
  %i.qg = shufflevector <2 x i32> %i.px, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qh = shufflevector <4 x i32> %i.qg, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.qh, ptr %i.y, align 4, !tbaa !67, !alias.scope !777
  store i64 %i.qc, ptr %i.z, align 8, !tbaa !20, !alias.scope !777
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.qi = load i32, ptr %7, align 4, !tbaa !67
  %i.qj = sdiv i32 %.044147, %i.qi
  %i.qk = load ptr, ptr %11, align 8, !tbaa !18, !noalias !780
  %i.ql = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !780
  %i.qm = sext i32 %i.qj to i64
  %i.qn = mul i64 %i.ql, %i.qm
  %i.qo = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !780 ; 3 uses
  %i.qp = mul i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qp
  %i.qr = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !780
  %i.qs = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !780
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.qo, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.qr, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.qs, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !227
  %i.qt = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !780
  %i.qu = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !780
  %i.qv = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !780
  %i.qw = sext i32 %i.qv to i64
  %i.qx = sext i32 %i.qu to i64
  %i.qy = mul nsw i64 %i.qx, %i.qw                ; 2 uses
  %i.qz = mul i64 %i.qo, %i.qy
  %i.ra = mul i64 %i.qz, %i.pw
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.ra
  store ptr %i.rb, ptr %15, align 8, !tbaa !18
  %i.rc = shufflevector <2 x i32> %i.qt, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rd = shufflevector <4 x i32> %i.rc, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.rd, ptr %i.al, align 4, !tbaa !67
  store i64 %i.qy, ptr %i.am, align 8, !tbaa !20, !alias.scope !783
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0146, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.re = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.rf = add nsw i32 %i.re, %.0146               ; 2 uses
  %i.rg = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.rh = icmp slt i32 %i.rf, %i.rg
  br i1 %i.rh, label %.noexc, label %._crit_edge, !llvm.loop !786

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge.us116.i, %.lr.ph107.i, %.preheader.i
  %i.ri = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.rj = add nsw i32 %i.ri, %.044147             ; 2 uses
  %i.rk = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.rl = icmp slt i32 %i.rj, %i.rk
  br i1 %i.rl, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !787

._crit_edge152:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge152, %bb.a
  ret void

bb.ai:                                            ; preds = %bb.c
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  %i.rn = extractvalue { ptr, i32 } %i.rm, 0
  call void @__clang_call_terminate(ptr %i.rn) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 65) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader286.lr.ph, label %.preheader281

.preheader286.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 11
  %i.g = icmp eq i32 %5, 0                        ; 6 uses
  %i.h = icmp sgt i32 %6, 0                       ; 5 uses
  %i.i = add i32 %4, -12                          ; 2 uses
  %i.j = urem i32 %i.i, 12
  %i.k = sub nuw i32 %i.i, %i.j
  %i.l = add i32 %i.k, 12
  %i.m = add i32 %6, -1                           ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add nsw i32 %4, -1                       ; 2 uses
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = zext nneg i32 %3 to i64
  %i.u = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %6, 1
  %i.v = icmp eq i32 %6, 1
  %unroll_iter = and i32 %6, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1176 = trunc i32 %6 to i1
  %xtraiter1177 = and i32 %6, 3                   ; 3 uses
  %i.w = icmp ult i32 %i.m, 3
  %unroll_iter1181 = and i32 %6, 2147483644
  %lcmp.mod1178.not = icmp eq i32 %xtraiter1177, 0
  %lcmp.mod1180 = icmp ne i32 %xtraiter1177, 0
  br label %.preheader286

.preheader286:                                    ; preds = %.preheader286.lr.ph, %bb.b
  %indvars.iv756 = phi i64 [ 0, %.preheader286.lr.ph ], [ %indvars.iv.next757, %bb.b ] ; 2 uses
  %.0472415 = phi ptr [ %.0.val, %.preheader286.lr.ph ], [ %.6478.lcssa, %bb.b ]
  %i.x = mul nsw i64 %indvars.iv756, %i.u
  br label %bb.c

.preheader281.loopexit:                           ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv.next757 to i32
  br label %.preheader281

.preheader281:                                    ; preds = %.preheader281.loopexit, %bb.a
  %.0482.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader281.loopexit ] ; 3 uses
  %.0472.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6478.lcssa, %.preheader281.loopexit ] ; 2 uses
  %i.z = or disjoint i32 %.0482.lcssa, 1
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.preheader280.lr.ph, label %.preheader275

.preheader280.lr.ph:                              ; preds = %.preheader281
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = icmp sgt i32 %4, 11
  %i.ag = icmp eq i32 %5, 0                       ; 5 uses
  %i.ah = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ai = add i32 %4, -12                         ; 2 uses
  %i.aj = urem i32 %i.ai, 12
  %i.ak = sub nuw i32 %i.ai, %i.aj
  %i.al = add i32 %i.ak, 12
  %i.am = add i32 %6, -1
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = shl nuw nsw i64 %i.an, 4
  %i.aq = shl nuw nsw i64 %i.an, 3
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = zext nneg i32 %.0482.lcssa to i64
  %i.at = sext i32 %3 to i64
  %i.au = sext i32 %6 to i64
  %wide.trip.count772 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.at, -1
  %xtraiter1183 = and i32 %6, 1
  %i.av = icmp eq i32 %6, 1
  %unroll_iter1189 = and i32 %6, 2147483646
  %lcmp.mod1185.not = icmp eq i32 %xtraiter1183, 0
  %lcmp.mod1188 = trunc i32 %6 to i1
  %i.aw = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check999 = icmp ult i32 %6, 4
  %n.vec1001 = and i64 %i.aw, 2147483644          ; 4 uses
  %i.ax = trunc nuw nsw i64 %n.vec1001 to i32
  %i.ay = shl nuw nsw i64 %n.vec1001, 3           ; 2 uses
  %cmp.n1018 = icmp eq i64 %n.vec1001, %i.aw
  %i.az = zext nneg i32 %6 to i64                 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  %i.apa = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  store float %i.aol, ptr %i.apa, align 4, !tbaa !39
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %i.amx, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.apb = getelementptr inbounds nuw i8, ptr %i.amr, i64 12
  store float %i.aos, ptr %i.apb, align 4, !tbaa !39
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.apc = getelementptr inbounds [4 x i8], ptr %i.amr, i64 %i.agl
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.amr, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.apc, %bb.db ] ; 6 uses
  %i.apd = or disjoint i32 %i.amm, 1
  %.not517.us.1.i = icmp slt i32 %i.apd, %i.bu
  br i1 %.not517.us.1.i, label %bb.dd, label %bb.dk

bb.dd:                                            ; preds = %bb.dc
  %i.ape = fadd fast <2 x float> %i.alo, %i.aln   ; 3 uses
  %i.apf = fsub fast <2 x float> %i.aln, %i.alo   ; 2 uses
  %i.apg = fadd fast float %i.aho, %i.agu
  %i.aph = fadd fast float %i.apg, %i.ahp
  %i.api = extractelement <2 x float> %i.ape, i64 0
  %i.apj = fadd fast float %i.aph, %i.api
  %i.apk = extractelement <2 x float> %i.ape, i64 1
  %i.apl = fadd fast float %i.apj, %i.apk
  %i.apm = shufflevector <2 x float> %i.ape, <2 x float> %i.apf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.apn = fmul fast <4 x float> %i.apm, <float 5.000000e-01, float 2.000000e+00, float f0x3EB504F3, float f0x403504F3> ; 4 uses
  %i.apo = extractelement <4 x float> %i.apn, i64 0
  %i.app = fadd fast float %i.apo, %i.agu
  %i.apq = extractelement <4 x float> %i.apn, i64 1
  %i.apr = fadd fast float %i.app, %i.apq
  %i.aps = extractelement <4 x float> %i.apn, i64 2
  %i.apt = fadd fast float %i.aps, %i.agu
  %i.apu = fadd fast float %i.apt, %i.amd
  %i.apv = extractelement <4 x float> %i.apn, i64 3
  %i.apw = fadd fast float %i.apu, %i.apv
  %i.apx = fadd fast float %i.apw, %i.ame
  store float %i.apl, ptr %.1.us.i, align 4, !tbaa !39
  br i1 %i.amt, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.apy = fmul fast <2 x float> %i.apf, <float f0x3F3504F3, float f0x3FB504F3> ; 2 uses
  %i.apz = extractelement <2 x float> %i.apy, i64 0
  %i.aqa = fadd fast float %i.apz, %i.agu
  %i.aqb = extractelement <2 x float> %i.apy, i64 1
  %i.aqc = fadd fast float %i.aqa, %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !39
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  br i1 %i.amv, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aqe = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store float %i.apr, ptr %i.aqe, align 4, !tbaa !39
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  br i1 %i.amx, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aqf = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store float %i.apx, ptr %i.aqf, align 4, !tbaa !39
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aqg = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.agl
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dc
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.dc ], [ %i.aqg, %bb.dj ] ; 6 uses
  %i.aqh = or disjoint i32 %i.amm, 2
  %.not517.us.2.i = icmp slt i32 %i.aqh, %i.bu
  br i1 %.not517.us.2.i, label %bb.dl, label %bb.ds

bb.dl:                                            ; preds = %bb.dk
  %i.aqi = shufflevector <4 x float> %i.ake, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.aqj = fadd fast <4 x float> %i.ake, %i.aqi   ; 3 uses
  %i.aqk = fsub fast <4 x float> %i.ake, %i.aqi   ; 3 uses
  %i.aql = shufflevector <4 x float> %i.aqj, <4 x float> %i.aqk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aqm = fadd fast float %i.ahq, %i.agu
  %i.aqn = fadd fast float %i.aqm, %i.ahr
  %i.aqo = extractelement <4 x float> %i.aqj, i64 0
  %i.aqp = fadd fast float %i.aqn, %i.aqo
  %i.aqq = extractelement <4 x float> %i.aqj, i64 1
  %i.aqr = fadd fast float %i.aqp, %i.aqq
  %i.aqs = fmul fast <4 x float> %i.aql, <float 5.000000e-01, float 2.000000e+00, float f0x3EB504F3, float f0x403504F3> ; 4 uses
  %i.aqt = extractelement <4 x float> %i.aqs, i64 0
  %i.aqu = fadd fast float %i.aqt, %i.agu
  %i.aqv = extractelement <4 x float> %i.aqs, i64 1
  %i.aqw = fadd fast float %i.aqu, %i.aqv
  %i.aqx = extractelement <4 x float> %i.aqs, i64 2
  %i.aqy = fadd fast float %i.aqx, %i.agu
  %i.aqz = fadd fast float %i.aqy, %i.amf
  %i.ara = extractelement <4 x float> %i.aqs, i64 3
  %i.arb = fadd fast float %i.aqz, %i.ara
  %i.arc = fadd fast float %i.arb, %i.amg
  store float %i.aqr, ptr %.1.us.1.i, align 4, !tbaa !39
  br i1 %i.amt, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ard = extractelement <4 x float> %i.aqk, i64 2
  %i.are = fmul fast float %i.ard, f0x3F3504F3
  %i.arf = fadd fast float %i.are, %i.agu
  %i.arg = extractelement <4 x float> %i.aqk, i64 3
  %i.arh = fmul fast float %i.arg, f0x3FB504F3
  %i.ari = fadd fast float %i.arf, %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store float %i.ari, ptr %i.arj, align 4, !tbaa !39
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  br i1 %i.amv, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ark = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store float %i.aqw, ptr %i.ark, align 4, !tbaa !39
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br i1 %i.amx, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.arl = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store float %i.arc, ptr %i.arl, align 4, !tbaa !39
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.arm = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.agl
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dk
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.dk ], [ %i.arm, %bb.dr ] ; 4 uses
  %i.arn = or disjoint i32 %i.amm, 3
  %.not517.us.3.i = icmp slt i32 %i.arn, %i.bu
  br i1 %.not517.us.3.i, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.aro = extractelement <4 x float> %i.alp, i64 2 ; 2 uses
  %i.arp = extractelement <4 x float> %i.alp, i64 3 ; 2 uses
  %i.arq = fadd fast float %i.aro, %i.arp         ; 2 uses
  %i.arr = extractelement <4 x float> %i.alp, i64 0 ; 2 uses
  %i.ars = extractelement <4 x float> %i.alp, i64 1 ; 2 uses
  %i.art = fadd fast float %i.arr, %i.ars         ; 2 uses
  %i.aru = fsub fast float %i.arp, %i.aro         ; 2 uses
  %i.arv = fsub fast float %i.ars, %i.arr         ; 2 uses
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.arq, <4 x float> %i.ahw)
  %op.rdx149 = fadd fast float %op.rdx, %i.art
  %i.arw = fmul fast float %i.arq, 5.000000e-01
  %i.arx = fadd fast float %i.arw, %i.agu
  %i.ary = fmul fast float %i.art, 2.000000e+00
  %i.arz = fadd fast float %i.arx, %i.ary
  %reass.add132 = fadd fast float %i.amc, %i.arv
  %reass.mul133 = fmul fast float %reass.add132, f0x403504F3
  %reass.add134 = fadd fast float %i.amb, %i.aru
  %reass.mul135 = fmul fast float %reass.add134, f0x3EB504F3
  %i.asa = fadd fast float %i.amh, %i.agu
  %i.asb = fadd fast float %i.asa, %reass.mul135
  %i.asc = fadd fast float %i.asb, %reass.mul133
  store float %op.rdx149, ptr %.1.us.2.i, align 4, !tbaa !39
  br i1 %i.amt, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.asd = fmul fast float %i.aru, f0x3F3504F3
  %i.ase = fadd fast float %i.asd, %i.agu
  %i.asf = fmul fast float %i.arv, f0x3FB504F3
  %i.asg = fadd fast float %i.ase, %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store float %i.asg, ptr %i.ash, align 4, !tbaa !39
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  br i1 %i.amv, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.asi = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store float %i.arz, ptr %i.asi, align 4, !tbaa !39
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  br i1 %i.amx, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.asj = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store float %i.asc, ptr %i.asj, align 4, !tbaa !39
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.ds
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %indvars.iv.next194.i, %wide.trip.count196.i
  br i1 %exitcond197.not.i, label %._crit_edge.us147.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !892

._crit_edge.us147.i:                              ; preds = %bb.dz
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next199.i, %i.bl
  br i1 %exitcond202.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ct, !llvm.loop !893

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ask = phi i32 [ %i.auh, %.noexc ], [ %.pre143, %.noexc.preheader ] ; 2 uses
  %i.asl = phi i32 [ %i.auj, %.noexc ], [ %i.br, %.noexc.preheader ]
  %.0136 = phi i32 [ %i.aui, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.asm = sub nsw i32 %i.asl, %.0136
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ask, i32 %i.asm)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.asn = load i32, ptr %3, align 4, !tbaa !67
  %i.aso = sdiv i32 %i.at, %i.asn
  %i.asp = load ptr, ptr %10, align 8, !tbaa !18, !noalias !894
  %i.asq = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !894
  %i.asr = sext i32 %i.aso to i64
  %i.ass = mul i64 %i.asq, %i.asr
  %i.ast = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !894 ; 3 uses
  %i.asu = mul i64 %i.ass, %i.ast
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asp, i64 %i.asu
  %i.asw = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !894
  %i.asx = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !894
  %i.asy = sdiv i32 %.0136, %i.ask
  %i.asz = sext i32 %i.asy to i64                 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !897
  store i64 %i.ast, ptr %i.u, align 8, !tbaa !65, !alias.scope !897
  store i32 %i.asw, ptr %i.v, align 8, !tbaa !66, !alias.scope !897
  store ptr %i.asx, ptr %i.w, align 8, !tbaa !17, !alias.scope !897
  store i32 2, ptr %i.x, align 8, !tbaa !227, !alias.scope !897
  %i.ata = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !894
  %i.atb = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !894
  %i.atc = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !894
  %i.atd = sext i32 %i.atc to i64
  %i.ate = sext i32 %i.atb to i64
  %i.atf = mul nsw i64 %i.ate, %i.atd             ; 2 uses
  %i.atg = mul i64 %i.ast, %i.atf
  %i.ath = mul i64 %i.atg, %i.asz
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ath
  store ptr %i.ati, ptr %14, align 8, !tbaa !18, !alias.scope !897
  %i.atj = shufflevector <2 x i32> %i.ata, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.atk = shufflevector <4 x i32> %i.atj, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.atk, ptr %i.y, align 4, !tbaa !67, !alias.scope !897
  store i64 %i.atf, ptr %i.z, align 8, !tbaa !20, !alias.scope !897
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.atl = load i32, ptr %7, align 4, !tbaa !67
  %i.atm = sdiv i32 %.044137, %i.atl
  %i.atn = load ptr, ptr %11, align 8, !tbaa !18, !noalias !900
  %i.ato = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !900
  %i.atp = sext i32 %i.atm to i64
  %i.atq = mul i64 %i.ato, %i.atp
  %i.atr = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !900 ; 3 uses
  %i.ats = mul i64 %i.atq, %i.atr
  %i.att = getelementptr inbounds nuw i8, ptr %i.atn, i64 %i.ats
  %i.atu = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !900
  %i.atv = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !900
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.atr, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.atu, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.atv, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !227
  %i.atw = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !900
  %i.atx = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !900
  %i.aty = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !900
  %i.atz = sext i32 %i.aty to i64
  %i.aua = sext i32 %i.atx to i64
  %i.aub = mul nsw i64 %i.aua, %i.atz             ; 2 uses
  %i.auc = mul i64 %i.atr, %i.aub
  %i.aud = mul i64 %i.auc, %i.asz
  %i.aue = getelementptr inbounds nuw i8, ptr %i.att, i64 %i.aud
  store ptr %i.aue, ptr %15, align 8, !tbaa !18
  %i.auf = shufflevector <2 x i32> %i.atw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aug = shufflevector <4 x i32> %i.auf, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.aug, ptr %i.al, align 4, !tbaa !67
  store i64 %i.aub, ptr %i.am, align 8, !tbaa !20, !alias.scope !903
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bb, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0136, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.auh = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.aui = add nsw i32 %i.auh, %.0136             ; 2 uses
  %i.auj = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.auk = icmp slt i32 %i.aui, %i.auj
  br i1 %i.auk, label %.noexc, label %._crit_edge, !llvm.loop !906

_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge.us147.i, %.lr.ph144.i, %.preheader.i
  %i.aul = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.aum = add nsw i32 %i.aul, %.044137           ; 2 uses
  %i.aun = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.auo = icmp slt i32 %i.aum, %i.aun
  br i1 %i.auo, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !907

._crit_edge142:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge142, %bb.a
  ret void

bb.eb:                                            ; preds = %bb.c
  %i.aup = landingpad { ptr, i32 }
          catch ptr null
  %i.auq = extractvalue { ptr, i32 } %i.aup, 0
  call void @__clang_call_terminate(ptr %i.auq) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.co

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not252 = icmp sgt i32 %i.k, %i.j
  br i1 %.not252, label %._crit_edge255, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge255

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.abx, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0162253 = phi i32 [ %i.aby, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0162253, 2
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.abu, %.thread.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !908
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !908
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !908
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !908 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %13, align 4, !tbaa !67   ; 61 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 12 uses
  %i.be = or disjoint i32 %i.av, 2                ; 12 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 12 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 12 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 12 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %.0697171.us.i = phi ptr [ %i.vb, %bb.bb ], [ %i.td, %bb.ba ] ; 2 uses
  %.0698170.us.i = phi ptr [ %i.va, %bb.bb ], [ %i.tc, %bb.ba ] ; 2 uses
  %i.tk = load float, ptr %.0697171.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tl = load float, ptr %.0696172.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tm = fadd fast float %i.tl, %i.tk            ; 3 uses
  %i.tn = fsub fast float %i.tk, %i.tl            ; 3 uses
  %i.to = load float, ptr %.0695173.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tp = load float, ptr %.0694174.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tq = fadd fast float %i.tp, %i.to            ; 3 uses
  %i.tr = fsub fast float %i.to, %i.tp            ; 3 uses
  %i.ts = load float, ptr %.0693175.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tt = load float, ptr %.0692176.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tu = fadd fast float %i.tt, %i.ts            ; 3 uses
  %i.tv = fsub fast float %i.ts, %i.tt            ; 3 uses
  %i.tw = load float, ptr %.0698170.us.i, align 4, !tbaa !39
  %i.tx = fmul fast float %i.tu, 3.200000e+01
  %i.ty = fadd fast float %i.tq, %i.tm
  %i.tz = fadd fast float %i.ty, %i.tw
  %i.ua = fadd fast float %i.tz, %i.tx
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv235.i
  store float %i.ua, ptr %i.ub, align 4, !tbaa !39
  %i.uc = fmul fast float %i.tv, 1.600000e+01
  %factor114.us.i = fmul fast float %i.tr, 2.000000e+00
  %i.ud = fadd fast float %factor114.us.i, %i.tn
  %i.ue = fadd fast float %i.ud, %i.uc
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv235.i
  store float %i.ue, ptr %i.uf, align 4, !tbaa !39
  %i.ug = fmul fast float %i.tq, 4.000000e+00
  %i.uh = fadd fast float %i.ug, %i.tm
  %i.ui = fmul fast float %i.tu, 8.000000e+00
  %i.uj = fadd fast float %i.uh, %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv235.i
  store float %i.uj, ptr %i.uk, align 4, !tbaa !39
  %i.ul = fmul fast float %i.tr, 8.000000e+00
  %i.um = fadd fast float %i.ul, %i.tn
  %i.un = fmul fast float %i.tv, 4.000000e+00
  %i.uo = fadd fast float %i.um, %i.un
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv235.i
  store float %i.uo, ptr %i.up, align 4, !tbaa !39
  %i.uq = fmul fast float %i.tq, 1.600000e+01
  %factor115.us.i = fmul fast float %i.tu, 2.000000e+00
  %i.ur = fadd fast float %i.uq, %i.tm
  %i.us = fadd fast float %i.ur, %factor115.us.i
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv235.i
  store float %i.us, ptr %i.ut, align 4, !tbaa !39
  %i.uu = load float, ptr %.0691177.us.i, align 4, !tbaa !39
  %i.uv = fmul fast float %i.tr, 3.200000e+01
  %i.uw = fadd fast float %i.uv, %i.tn
  %i.ux = fadd fast float %i.uw, %i.tv
  %i.uy = fadd fast float %i.ux, %i.uu
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv235.i
  store float %i.uy, ptr %i.uz, align 4, !tbaa !39
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.0698170.us.i, i64 %i.sm
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.0697171.us.i, i64 %i.sm
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %.0696172.us.i, i64 %i.sm
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.0695173.us.i, i64 %i.sm
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.0694174.us.i, i64 %i.sm
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.0693175.us.i, i64 %i.sm
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.0692176.us.i, i64 %i.sm
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.0691177.us.i, i64 %i.sm
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next236.i, 8
  br i1 %exitcond238.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.bb, !llvm.loop !956

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bb
  %i.vi = trunc i64 %indvars.iv243.i to i32
  %i.vj = add i32 %.044131, %i.vi                 ; 2 uses
  %i.vk = sdiv i32 %i.vj, %i.cs
  %i.vl = srem i32 %i.vj, %i.cs
  %i.vm = mul nsw i32 %i.vk, 6
  %i.vn = sext i32 %i.vm to i64                   ; 2 uses
  %.reass185.us.i = mul i64 %factor.op.mul184.us.i, %i.vn
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.reass185.us.i
  %i.vp = mul nsw i32 %i.vl, 6                    ; 6 uses
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.vq
  %i.vs = or disjoint i32 %i.vp, 1
  %i.vt = icmp slt i32 %i.vs, %i.cl
  %i.vu = add nsw i32 %i.vp, 2
  %i.vv = icmp slt i32 %i.vu, %i.cl
  %i.vw = add nsw i32 %i.vp, 3
  %i.vx = icmp slt i32 %i.vw, %i.cl
  %i.vy = add nsw i32 %i.vp, 4
  %i.vz = icmp slt i32 %i.vy, %i.cl
  %i.wa = add nsw i32 %i.vp, 5
  %i.wb = icmp slt i32 %i.wa, %i.cl
  %invariant.op262.i = sub nsw i64 %i.st, %i.vn
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bo, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %bb.bo ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.0689179.us.i = phi ptr [ %.1.us.i, %bb.bo ], [ %i.vr, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not734.us.i = icmp slt i64 %indvars.iv239.i, %invariant.op262.i
  br i1 %.not734.us.i, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.wc = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv239.i ; 5 uses
  %i.wd = load float, ptr %i.wc, align 16, !tbaa !39
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.wf = load float, ptr %i.we, align 4, !tbaa !39 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.wh = load float, ptr %i.wg, align 8, !tbaa !39 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 12
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 28
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !39
  %i.wl = fsub fast float %i.wf, %i.wh
  %i.wm = fadd fast float %i.wf, %i.sx
  %i.wn = fadd fast float %i.wm, %i.wh            ; 3 uses
  %i.wo = fadd fast float %i.wn, %i.wd
  %i.wp = fadd fast float %i.wl, %i.sx            ; 3 uses
  %i.wq = load <4 x float>, ptr %i.wi, align 4, !tbaa !39 ; 3 uses
  %i.wr = shufflevector <4 x float> %i.wq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ws = fadd fast <4 x float> %i.wq, %i.wr      ; 3 uses
  %i.wt = fsub fast <4 x float> %i.wq, %i.wr      ; 3 uses
  %i.wu = shufflevector <4 x float> %i.wt, <4 x float> %i.ws, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.wv = extractelement <4 x float> %i.ws, i64 3 ; 2 uses
  %i.ww = fmul fast float %i.wv, 3.200000e+01
  %i.wx = extractelement <4 x float> %i.ws, i64 1 ; 2 uses
  %i.wy = fadd fast float %i.wo, %i.wx
  %i.wz = fadd fast float %i.wy, %i.ww
  %i.xa = fmul fast <4 x float> %i.wu, <float 8.000000e+00, float 4.000000e+00, float 4.000000e+00, float 8.000000e+00> ; 4 uses
  %i.xb = extractelement <4 x float> %i.xa, i64 1
  %i.xc = fadd fast float %i.xb, %i.wn
  %i.xd = extractelement <4 x float> %i.xa, i64 3
  %i.xe = fadd fast float %i.xc, %i.xd
  %i.xf = extractelement <4 x float> %i.xa, i64 0
  %i.xg = fadd fast float %i.xf, %i.wp
  %i.xh = extractelement <4 x float> %i.xa, i64 2
  %i.xi = fadd fast float %i.xg, %i.xh
  %i.xj = fmul fast float %i.wx, 1.600000e+01
  %factor.us.i = fmul fast float %i.wv, 2.000000e+00
  %i.xk = fadd fast float %i.xj, %i.wn
  %i.xl = fadd fast float %i.xk, %factor.us.i
  %i.xm = extractelement <4 x float> %i.wt, i64 0 ; 2 uses
  %i.xn = fmul fast float %i.xm, 3.200000e+01
  %i.xo = fadd fast float %i.xn, %i.wp
  %i.xp = fadd fast float %i.xo, %i.wk
  %i.xq = extractelement <4 x float> %i.wt, i64 2 ; 2 uses
  %i.xr = fadd fast float %i.xp, %i.xq
  store float %i.wz, ptr %.0689179.us.i, align 4, !tbaa !39
  br i1 %i.vt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.xs = fmul fast float %i.xq, 1.600000e+01
  %factor113.us.i = fmul fast float %i.xm, 2.000000e+00
  %i.xt = fadd fast float %factor113.us.i, %i.wp
  %i.xu = fadd fast float %i.xt, %i.xs
  %i.xv = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 4
  store float %i.xu, ptr %i.xv, align 4, !tbaa !39
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.vv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.xw = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 8
  store float %i.xe, ptr %i.xw, align 4, !tbaa !39
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.vx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.xx = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 12
  store float %i.xi, ptr %i.xx, align 4, !tbaa !39
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.vz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.xy = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 16
  store float %i.xl, ptr %i.xy, align 4, !tbaa !39
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.wb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.xz = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 20
  store float %i.xr, ptr %i.xz, align 4, !tbaa !39
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ya = getelementptr inbounds [4 x i8], ptr %.0689179.us.i, i64 %i.sn
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bc
  %.1.us.i = phi ptr [ %.0689179.us.i, %bb.bc ], [ %i.ya, %bb.bn ]
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next240.i, 6
  br i1 %exitcond242.not.i, label %bb.bp, label %bb.bc, !llvm.loop !957

bb.bp:                                            ; preds = %bb.bo
  %indvars.iv.next244.i = add nuw nsw i64 %indvars.iv243.i, 1 ; 2 uses
  %exitcond247.not.i = icmp eq i64 %indvars.iv.next244.i, %wide.trip.count246.i
  br i1 %exitcond247.not.i, label %._crit_edge.us191.i, label %bb.ba, !llvm.loop !958

._crit_edge.us191.i:                              ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %indvars.iv.next249.i = add nuw nsw i64 %indvars.iv248.i, 1 ; 2 uses
  %exitcond252.not.i = icmp eq i64 %indvars.iv.next249.i, %i.cd
  br i1 %exitcond252.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ay, !llvm.loop !959

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.yb = phi i32 [ %i.zy, %.noexc ], [ %.pre137, %.noexc.preheader ] ; 2 uses
  %i.yc = phi i32 [ %i.aaa, %.noexc ], [ %i.cj, %.noexc.preheader ]
  %.0130 = phi i32 [ %i.zz, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.yd = sub nsw i32 %i.yc, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.yb, i32 %i.yd)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.ye = load i32, ptr %3, align 4, !tbaa !67
  %i.yf = sdiv i32 %i.bl, %i.ye
  %i.yg = load ptr, ptr %10, align 8, !tbaa !18, !noalias !960
  %i.yh = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !960
  %i.yi = sext i32 %i.yf to i64
  %i.yj = mul i64 %i.yh, %i.yi
  %i.yk = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !960 ; 3 uses
  %i.yl = mul i64 %i.yj, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yl
  %i.yn = load i32, ptr %i.u, align 8, !tbaa !66, !noalias !960
  %i.yo = load ptr, ptr %i.v, align 8, !tbaa !17, !noalias !960
  %i.yp = sdiv i32 %.0130, %i.yb
  %i.yq = sext i32 %i.yp to i64                   ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !11, !alias.scope !963
  store i64 %i.yk, ptr %i.x, align 8, !tbaa !65, !alias.scope !963
  store i32 %i.yn, ptr %i.y, align 8, !tbaa !66, !alias.scope !963
  store ptr %i.yo, ptr %i.z, align 8, !tbaa !17, !alias.scope !963
  store i32 2, ptr %i.aa, align 8, !tbaa !227, !alias.scope !963
  %i.yr = load <2 x i32>, ptr %i.q, align 4, !tbaa !67, !noalias !960
  %i.ys = load i32, ptr %i.r, align 8, !tbaa !76, !noalias !960
  %i.yt = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !960
  %i.yu = sext i32 %i.yt to i64
  %i.yv = sext i32 %i.ys to i64
  %i.yw = mul nsw i64 %i.yv, %i.yu                ; 2 uses
  %i.yx = mul i64 %i.yk, %i.yw
  %i.yy = mul i64 %i.yx, %i.yq
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yy
  store ptr %i.yz, ptr %14, align 8, !tbaa !18, !alias.scope !963
  %i.za = shufflevector <2 x i32> %i.yr, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zb = shufflevector <4 x i32> %i.za, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.zb, ptr %i.ab, align 4, !tbaa !67, !alias.scope !963
  store i64 %i.yw, ptr %i.ac, align 8, !tbaa !20, !alias.scope !963
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.zc = load i32, ptr %7, align 4, !tbaa !67
  %i.zd = sdiv i32 %.044131, %i.zc
  %i.ze = load ptr, ptr %11, align 8, !tbaa !18, !noalias !966
  %i.zf = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !966
  %i.zg = sext i32 %i.zd to i64
  %i.zh = mul i64 %i.zf, %i.zg
  %i.zi = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !966 ; 3 uses
  %i.zj = mul i64 %i.zh, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 %i.zj
  %i.zl = load i32, ptr %i.ah, align 8, !tbaa !66, !noalias !966
  %i.zm = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !966
  store ptr null, ptr %i.aj, align 8, !tbaa !11
  store i64 %i.zi, ptr %i.ak, align 8, !tbaa !65
  store i32 %i.zl, ptr %i.al, align 8, !tbaa !66
  store ptr %i.zm, ptr %i.am, align 8, !tbaa !17
  store i32 2, ptr %i.an, align 8, !tbaa !227
  %i.zn = load <2 x i32>, ptr %i.ad, align 4, !tbaa !67, !noalias !966
  %i.zo = load i32, ptr %i.ae, align 8, !tbaa !76, !noalias !966
  %i.zp = load i32, ptr %i.ad, align 4, !tbaa !75, !noalias !966
  %i.zq = sext i32 %i.zp to i64
  %i.zr = sext i32 %i.zo to i64
  %i.zs = mul nsw i64 %i.zr, %i.zq                ; 2 uses
  %i.zt = mul i64 %i.zi, %i.zs
  %i.zu = mul i64 %i.zt, %i.yq
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zu
  store ptr %i.zv, ptr %15, align 8, !tbaa !18
  %i.zw = shufflevector <2 x i32> %i.zn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zx = shufflevector <4 x i32> %i.zw, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.zx, ptr %i.ao, align 4, !tbaa !67
  store i64 %i.zs, ptr %i.ap, align 8, !tbaa !20, !alias.scope !969
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bt, i32 noundef 64, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.zy = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.zz = add nsw i32 %i.zy, %.0130               ; 2 uses
  %i.aaa = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.aab = icmp slt i32 %i.zz, %i.aaa
  br i1 %i.aab, label %.noexc, label %._crit_edge, !llvm.loop !972

_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge.us191.i, %.lr.ph188.i, %.preheader.i
  %i.aac = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.aad = add nsw i32 %i.aac, %.044131           ; 2 uses
  %i.aae = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.aaf = icmp slt i32 %i.aad, %i.aae
  br i1 %i.aaf, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !973

._crit_edge136:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge136, %bb.a
  ret void

bb.br:                                            ; preds = %bb.c
  %i.aag = landingpad { ptr, i32 }
          catch ptr null
  %i.aah = extractvalue { ptr, i32 } %i.aag, 0
  call void @__clang_call_terminate(ptr %i.aah) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [4 x float]]], align 16 ; 67 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.es

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !67
  %i.l = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not362 = icmp sgt i32 %i.l, %i.k
  br i1 %.not362, label %._crit_edge365, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.w = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split.preheader, label %._crit_edge365

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 784
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 928
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 816
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 720
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 608
end_hunk_6
begin_hunk_7_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.na = shufflevector <4 x float> %i.mr, <4 x float> %i.mt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.nb = shufflevector <4 x float> %i.mv, <4 x float> %i.mx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.nc = shufflevector <4 x float> %i.my, <4 x float> %i.mz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nd = shufflevector <4 x float> %i.mz, <4 x float> %i.my, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ne = shufflevector <4 x float> %i.na, <4 x float> %i.nb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nf = shufflevector <4 x float> %i.nb, <4 x float> %i.na, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.nc, ptr %.11192.i.i, align 16, !tbaa !254
  %i.ng = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 16
  store <4 x float> %i.nd, ptr %i.ng, align 16, !tbaa !254
  %i.nh = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 32
  store <4 x float> %i.ne, ptr %i.nh, align 16, !tbaa !254
  %i.ni = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 48
  store <4 x float> %i.nf, ptr %i.ni, align 16, !tbaa !254
  %i.nj = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 64 ; 2 uses
  %i.nk = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx355.i.i = shl i64 %i.nk, 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 %.idx355.i.i
  %i.nm = add nuw nsw i32 %.0353190.i.i, 1        ; 2 uses
  %exitcond256.not.i.i = icmp eq i32 %i.nm, %i.lk
  br i1 %exitcond256.not.i.i, label %.loopexit154.i.i, label %.lr.ph193.i.i, !llvm.loop !1005

_ZN4ncnn3MatD2Ev.exit370.i.i:                     ; preds = %bb.d
  br i1 %i.ln, label %.lr.ph198.preheader.i.i, label %.loopexit154.i.i

.lr.ph198.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit370.i.i
  %i.nn = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1006
  %i.no = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1006
  %i.np = mul i64 %i.no, %i.lm
  %i.nq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1006
  %i.nr = mul i64 %i.np, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nr
  %i.nt = getelementptr [4 x i8], ptr %i.ns, i64 %indvars.iv258.i.i
  %i.nu = getelementptr [4 x i8], ptr %i.nt, i64 %i.lq ; 2 uses
  br i1 %i.ls, label %.lr.ph198.i.i.epil.preheader, label %.lr.ph198.i.i

.lr.ph198.i.i:                                    ; preds = %.lr.ph198.preheader.i.i, %.lr.ph198.i.i
  %.13197.i.i = phi ptr [ %i.oi, %.lr.ph198.i.i ], [ %.10201.i.i, %.lr.ph198.preheader.i.i ] ; 5 uses
  %.0344195.i.i = phi ptr [ %i.ok, %.lr.ph198.i.i ], [ %i.nu, %.lr.ph198.preheader.i.i ] ; 2 uses
  %niter183 = phi i32 [ %niter183.next.3, %.lr.ph198.i.i ], [ 0, %.lr.ph198.preheader.i.i ]
  %i.nv = load <4 x float>, ptr %.0344195.i.i, align 1, !tbaa !254
  store <4 x float> %i.nv, ptr %.13197.i.i, align 1, !tbaa !254
  %i.nw = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 16
  %i.nx = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.0344195.i.i, i64 %i.nx ; 2 uses
  %i.nz = load <4 x float>, ptr %i.ny, align 1, !tbaa !254
  store <4 x float> %i.nz, ptr %i.nw, align 1, !tbaa !254
  %i.oa = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 32
  %i.ob = load i64, ptr %i.p, align 8, !tbaa !20
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.ob ; 2 uses
  %i.od = load <4 x float>, ptr %i.oc, align 1, !tbaa !254
  store <4 x float> %i.od, ptr %i.oa, align 1, !tbaa !254
  %i.oe = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 48
  %i.of = load i64, ptr %i.p, align 8, !tbaa !20
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.of ; 2 uses
  %i.oh = load <4 x float>, ptr %i.og, align 1, !tbaa !254
  store <4 x float> %i.oh, ptr %i.oe, align 1, !tbaa !254
  %i.oi = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 64 ; 3 uses
  %i.oj = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oj ; 2 uses
  %niter183.next.3 = add i32 %niter183, 4         ; 2 uses
  %niter183.ncmp.3 = icmp eq i32 %niter183.next.3, %unroll_iter182
  br i1 %niter183.ncmp.3, label %.loopexit154.i.i.loopexit149.unr-lcssa, label %.lr.ph198.i.i, !llvm.loop !1009

.loopexit154.i.i.loopexit149.unr-lcssa:           ; preds = %.lr.ph198.i.i
  br i1 %lcmp.mod179.not, label %.loopexit154.i.i, label %.lr.ph198.i.i.epil.preheader

.lr.ph198.i.i.epil.preheader:                     ; preds = %.loopexit154.i.i.loopexit149.unr-lcssa, %.lr.ph198.preheader.i.i
  %.13197.i.i.epil.init = phi ptr [ %.10201.i.i, %.lr.ph198.preheader.i.i ], [ %i.oi, %.loopexit154.i.i.loopexit149.unr-lcssa ]
  %.0344195.i.i.epil.init = phi ptr [ %i.nu, %.lr.ph198.preheader.i.i ], [ %i.ok, %.loopexit154.i.i.loopexit149.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod181)
  br label %.lr.ph198.i.i.epil

.lr.ph198.i.i.epil:                               ; preds = %.lr.ph198.i.i.epil, %.lr.ph198.i.i.epil.preheader
  %.13197.i.i.epil = phi ptr [ %i.om, %.lr.ph198.i.i.epil ], [ %.13197.i.i.epil.init, %.lr.ph198.i.i.epil.preheader ] ; 2 uses
  %.0344195.i.i.epil = phi ptr [ %i.oo, %.lr.ph198.i.i.epil ], [ %.0344195.i.i.epil.init, %.lr.ph198.i.i.epil.preheader ] ; 2 uses
  %epil.iter178 = phi i32 [ %epil.iter178.next, %.lr.ph198.i.i.epil ], [ 0, %.lr.ph198.i.i.epil.preheader ]
  %i.ol = load <4 x float>, ptr %.0344195.i.i.epil, align 1, !tbaa !254
  store <4 x float> %i.ol, ptr %.13197.i.i.epil, align 1, !tbaa !254
  %i.om = getelementptr inbounds nuw i8, ptr %.13197.i.i.epil, i64 16 ; 2 uses
  %i.on = load i64, ptr %i.p, align 8, !tbaa !20
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.0344195.i.i.epil, i64 %i.on
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %.loopexit154.i.i, label %.lr.ph198.i.i.epil, !llvm.loop !1010

.loopexit154.i.i:                                 ; preds = %.loopexit154.i.i.loopexit149.unr-lcssa, %.lr.ph198.i.i.epil, %.lr.ph193.i.i, %_ZN4ncnn3MatD2Ev.exit370.i.i, %_ZN4ncnn3MatD2Ev.exit371.i.i, %bb.d
  %.14.i.i = phi ptr [ %.10201.i.i, %bb.d ], [ %.10201.i.i, %_ZN4ncnn3MatD2Ev.exit370.i.i ], [ %i.nj, %.lr.ph193.i.i ], [ %.10201.i.i, %_ZN4ncnn3MatD2Ev.exit371.i.i ], [ %i.oi, %.loopexit154.i.i.loopexit149.unr-lcssa ], [ %i.om, %.lr.ph198.i.i.epil ] ; 2 uses
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 4 ; 3 uses
  %i.op = icmp slt i64 %indvars.iv.next259.i.i, %invariant.op309.i.i
  br i1 %i.op, label %bb.d, label %.preheader153.loopexit.i.i, !llvm.loop !1011

.preheader.loopexit.i.i:                          ; preds = %.loopexit151.i.i
  %i.oq = trunc nsw i64 %indvars.iv.next264.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader153.i.i
  %.3338.lcssa.i.i = phi i32 [ %.2337.lcssa.i.i, %.preheader153.i.i ], [ %i.oq, %.preheader.loopexit.i.i ] ; 3 uses
  %.15.lcssa.i.i = phi ptr [ %.10.lcssa.i.i, %.preheader153.i.i ], [ %.19.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.or = icmp slt i32 %.3338.lcssa.i.i, %.sroa.speculated64
  br i1 %i.or, label %.lr.ph232.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph232.i.i:                                    ; preds = %.preheader.i.i
  %i.os = sdiv i32 %i.x, 4
  %i.ot = sext i32 %i.os to i64
  %i.ou = lshr i32 %.sroa.speculated, 2           ; 3 uses
  %i.ov = sext i32 %i.x to i64
  switch i32 %i.bb, label %_ZN4ncnn3MatD2Ev.exit [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i
    i32 1, label %.lr.ph232.split.split.i.i
  ]

_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i:        ; preds = %.lr.ph232.i.i
  %i.ow = icmp sgt i32 %.sroa.speculated, 3
  %i.ox = sext i32 %i.v to i64
  %wide.trip.count276.i.i = sext i32 %.sroa.speculated64 to i64
  br i1 %i.ow, label %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i:        ; preds = %_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i
  %i.oy = sext i32 %.3338.lcssa.i.i to i64
  %.pre77.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1012
  %i.oz = add nsw i32 %i.ou, -1
  %xtraiter206 = and i32 %i.ou, 3                 ; 3 uses
  %i.pa = icmp ult i32 %i.oz, 3
  %unroll_iter212 = and i32 %i.ou, 536870908
  %lcmp.mod208.not = icmp eq i32 %xtraiter206, 0
  %lcmp.mod211 = icmp ne i32 %xtraiter206, 0
  br label %_ZN4ncnn3MatD2Ev.exit367.us.i.i

_ZN4ncnn3MatD2Ev.exit367.us.i.i:                  ; preds = %.loopexit150.us.i.loopexit.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i
  %i.pb = phi i64 [ %.lcssa165, %.loopexit150.us.i.loopexit.i ], [ %.pre77.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i ]
  %indvars.iv273.i.i = phi i64 [ %indvars.iv.next274.i.i, %.loopexit150.us.i.loopexit.i ], [ %i.oy, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i ] ; 2 uses
  %.20231.us.i.i = phi ptr [ %.lcssa166, %.loopexit150.us.i.loopexit.i ], [ %.15.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i ] ; 2 uses
  %i.pc = add nsw i64 %indvars.iv273.i.i, %i.ox
  %i.pd = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1012
  %i.pe = mul i64 %i.pb, %i.ot
  %i.pf = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1012
  %i.pg = mul i64 %i.pe, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pg
  %.idx288.i.i = shl nsw i64 %i.pc, 4
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %.idx288.i.i ; 2 uses
  br i1 %i.pa, label %.lr.ph223.us.i.i.epil.preheader, label %.lr.ph223.us.i.i

.lr.ph223.us.i.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit367.us.i.i, %.lr.ph223.us.i.i
  %.0331221.us.i.i = phi ptr [ %i.py, %.lr.ph223.us.i.i ], [ %i.pi, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ] ; 2 uses
  %.21220.us.i.i = phi ptr [ %i.pw, %.lr.ph223.us.i.i ], [ %.20231.us.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ] ; 5 uses
  %niter213 = phi i32 [ %niter213.next.3, %.lr.ph223.us.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ]
  %i.pj = load <4 x float>, ptr %.0331221.us.i.i, align 16, !tbaa !254
  store <4 x float> %i.pj, ptr %.21220.us.i.i, align 16, !tbaa !254
  %i.pk = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 16
  %i.pl = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us.i.i = shl i64 %i.pl, 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.0331221.us.i.i, i64 %.idx.us.i.i ; 2 uses
  %i.pn = load <4 x float>, ptr %i.pm, align 16, !tbaa !254
  store <4 x float> %i.pn, ptr %i.pk, align 16, !tbaa !254
  %i.po = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 32
  %i.pp = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us.i.i.1 = shl i64 %i.pp, 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.idx.us.i.i.1 ; 2 uses
  %i.pr = load <4 x float>, ptr %i.pq, align 16, !tbaa !254
  store <4 x float> %i.pr, ptr %i.po, align 16, !tbaa !254
  %i.ps = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 48
  %i.pt = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us.i.i.2 = shl i64 %i.pt, 4
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.idx.us.i.i.2 ; 2 uses
  %i.pv = load <4 x float>, ptr %i.pu, align 16, !tbaa !254
  store <4 x float> %i.pv, ptr %i.ps, align 16, !tbaa !254
  %i.pw = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 64 ; 3 uses
  %i.px = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.us.i.i.3 = shl i64 %i.px, 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.idx.us.i.i.3 ; 2 uses
  %niter213.next.3 = add i32 %niter213, 4         ; 2 uses
  %niter213.ncmp.3 = icmp eq i32 %niter213.next.3, %unroll_iter212
  br i1 %niter213.ncmp.3, label %.loopexit150.us.i.loopexit.i.unr-lcssa, label %.lr.ph223.us.i.i, !llvm.loop !1015

.loopexit150.us.i.loopexit.i.unr-lcssa:           ; preds = %.lr.ph223.us.i.i
  br i1 %lcmp.mod208.not, label %.loopexit150.us.i.loopexit.i, label %.lr.ph223.us.i.i.epil.preheader

.lr.ph223.us.i.i.epil.preheader:                  ; preds = %.loopexit150.us.i.loopexit.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit367.us.i.i
  %.0331221.us.i.i.epil.init = phi ptr [ %i.pi, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ], [ %i.py, %.loopexit150.us.i.loopexit.i.unr-lcssa ]
  %.21220.us.i.i.epil.init = phi ptr [ %.20231.us.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ], [ %i.pw, %.loopexit150.us.i.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph223.us.i.i.epil

.lr.ph223.us.i.i.epil:                            ; preds = %.lr.ph223.us.i.i.epil, %.lr.ph223.us.i.i.epil.preheader
  %.0331221.us.i.i.epil = phi ptr [ %i.qc, %.lr.ph223.us.i.i.epil ], [ %.0331221.us.i.i.epil.init, %.lr.ph223.us.i.i.epil.preheader ] ; 2 uses
  %.21220.us.i.i.epil = phi ptr [ %i.qa, %.lr.ph223.us.i.i.epil ], [ %.21220.us.i.i.epil.init, %.lr.ph223.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter207 = phi i32 [ %epil.iter207.next, %.lr.ph223.us.i.i.epil ], [ 0, %.lr.ph223.us.i.i.epil.preheader ]
  %i.pz = load <4 x float>, ptr %.0331221.us.i.i.epil, align 16, !tbaa !254
  store <4 x float> %i.pz, ptr %.21220.us.i.i.epil, align 16, !tbaa !254
  %i.qa = getelementptr inbounds nuw i8, ptr %.21220.us.i.i.epil, i64 16 ; 2 uses
  %i.qb = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.us.i.i.epil = shl i64 %i.qb, 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.0331221.us.i.i.epil, i64 %.idx.us.i.i.epil
  %epil.iter207.next = add i32 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i32 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %.loopexit150.us.i.loopexit.i, label %.lr.ph223.us.i.i.epil, !llvm.loop !1016

.loopexit150.us.i.loopexit.i:                     ; preds = %.lr.ph223.us.i.i.epil, %.loopexit150.us.i.loopexit.i.unr-lcssa
  %.lcssa166 = phi ptr [ %i.pw, %.loopexit150.us.i.loopexit.i.unr-lcssa ], [ %i.qa, %.lr.ph223.us.i.i.epil ]
  %.lcssa165 = phi i64 [ %i.px, %.loopexit150.us.i.loopexit.i.unr-lcssa ], [ %i.qb, %.lr.ph223.us.i.i.epil ]
  %indvars.iv.next274.i.i = add nuw nsw i64 %indvars.iv273.i.i, 1 ; 2 uses
  %exitcond277.not.i.i = icmp eq i64 %indvars.iv.next274.i.i, %wide.trip.count276.i.i
  br i1 %exitcond277.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit367.us.i.i, !llvm.loop !1017

.lr.ph232.split.split.i.i:                        ; preds = %.lr.ph232.i.i
  %i.qd = icmp slt i32 %.sroa.speculated, 1
  %i.qe = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1018 ; 10 uses
  br i1 %i.qd, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph232.split.split.split.i.i

.lr.ph232.split.split.split.i.i:                  ; preds = %.lr.ph232.split.split.i.i
  %i.qf = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1018
  %i.qg = mul i64 %i.qe, %i.ov
  %i.qh = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1018
  %i.qi = mul i64 %i.qg, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qi
  %i.qk = sext i32 %.3338.lcssa.i.i to i64
  %i.ql = sext i32 %i.v to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.qj, i64 %i.ql
  %i.qm = add nsw i32 %.sroa.speculated, -1
  %xtraiter199 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.qn = icmp ult i32 %i.qm, 7
  %unroll_iter204 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod201.not = icmp eq i32 %xtraiter199, 0
  %lcmp.mod203 = icmp ne i32 %xtraiter199, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.e:                                             ; preds = %.loopexit151.i.i, %.lr.ph217.i.i
  %indvars.iv263.i.i = phi i64 [ %i.mc, %.lr.ph217.i.i ], [ %indvars.iv.next264.i.i, %.loopexit151.i.i ] ; 3 uses
  %.15216.i.i = phi ptr [ %.10.lcssa.i.i, %.lr.ph217.i.i ], [ %.19.i.i, %.loopexit151.i.i ] ; 7 uses
  switch i32 %i.bb, label %.loopexit151.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit369.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit368.i.i
  ]

_ZN4ncnn3MatD2Ev.exit369.i.i:                     ; preds = %bb.e
  br i1 %i.lz, label %.lr.ph208.preheader.i.i, label %.loopexit151.i.i

.lr.ph208.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit369.i.i
  %i.qo = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1021
  %i.qp = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1021
  %i.qq = mul i64 %i.qp, %i.lx
  %i.qr = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1021
  %i.qs = mul i64 %i.qq, %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qs
  %i.qu = add nsw i64 %indvars.iv263.i.i, %i.me
  %.idx287.i.i = shl nsw i64 %i.qu, 4
  %i.qv = getelementptr inbounds i8, ptr %i.qt, i64 %.idx287.i.i ; 2 uses
  br i1 %i.mh, label %.lr.ph208.i.i.epil.preheader, label %.lr.ph208.i.i

.lr.ph208.i.i:                                    ; preds = %.lr.ph208.preheader.i.i, %.lr.ph208.i.i
  %.16207.i.i = phi ptr [ %i.rl, %.lr.ph208.i.i ], [ %.15216.i.i, %.lr.ph208.preheader.i.i ] ; 5 uses
  %.0342205.i.i = phi ptr [ %i.rn, %.lr.ph208.i.i ], [ %i.qv, %.lr.ph208.preheader.i.i ] ; 3 uses
  %niter197 = phi i32 [ %niter197.next.1, %.lr.ph208.i.i ], [ 0, %.lr.ph208.preheader.i.i ]
  %i.qw = load <4 x float>, ptr %.0342205.i.i, align 16, !tbaa !254 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0342205.i.i, i64 16
  %i.qy = load <4 x float>, ptr %i.qx, align 16, !tbaa !254 ; 2 uses
  %i.qz = shufflevector <4 x float> %i.qw, <4 x float> %i.qy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ra = shufflevector <4 x float> %i.qw, <4 x float> %i.qy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qz, ptr %.16207.i.i, align 16, !tbaa !254
  %i.rb = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 16
  store <4 x float> %i.ra, ptr %i.rb, align 16, !tbaa !254
  %i.rc = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 32
  %i.rd = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx354.i.i = shl i64 %i.rd, 4
  %i.re = getelementptr inbounds nuw i8, ptr %.0342205.i.i, i64 %.idx354.i.i ; 3 uses
  %i.rf = load <4 x float>, ptr %i.re, align 16, !tbaa !254 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rh = load <4 x float>, ptr %i.rg, align 16, !tbaa !254 ; 2 uses
  %i.ri = shufflevector <4 x float> %i.rf, <4 x float> %i.rh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.rj = shufflevector <4 x float> %i.rf, <4 x float> %i.rh, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ri, ptr %i.rc, align 16, !tbaa !254
  %i.rk = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 48
  store <4 x float> %i.rj, ptr %i.rk, align 16, !tbaa !254
  %i.rl = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 64 ; 3 uses
  %i.rm = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx354.i.i.1 = shl i64 %i.rm, 4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.re, i64 %.idx354.i.i.1 ; 2 uses
  %niter197.next.1 = add i32 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i32 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %.loopexit151.i.i.loopexit.unr-lcssa, label %.lr.ph208.i.i, !llvm.loop !1024

_ZN4ncnn3MatD2Ev.exit368.i.i:                     ; preds = %bb.e
  br i1 %i.mb, label %.lr.ph213.i.i, label %.loopexit151.i.i

.lr.ph213.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit368.i.i
  %i.ro = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1025
  %i.rp = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1025 ; 6 uses
  %i.rq = mul i64 %i.rp, %i.ma
  %i.rr = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1025
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rs
  %i.ru = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv263.i.i
  %i.rv = getelementptr [4 x i8], ptr %i.ru, i64 %i.me ; 2 uses
  br i1 %i.mg, label %.epil.preheader, label %.lr.ph213.i.i.new

.lr.ph213.i.i.new:                                ; preds = %.lr.ph213.i.i, %.lr.ph213.i.i.new
  %.0333211.i.i = phi ptr [ %i.st, %.lr.ph213.i.i.new ], [ %i.rv, %.lr.ph213.i.i ] ; 3 uses
  %.18210.i.i = phi ptr [ %i.ss, %.lr.ph213.i.i.new ], [ %.15216.i.i, %.lr.ph213.i.i ] ; 9 uses
  %niter190 = phi i32 [ %niter190.next.3, %.lr.ph213.i.i.new ], [ 0, %.lr.ph213.i.i ]
  %i.rw = load float, ptr %.0333211.i.i, align 4, !tbaa !39
  store float %i.rw, ptr %.18210.i.i, align 4, !tbaa !39
  %i.rx = getelementptr inbounds nuw i8, ptr %.0333211.i.i, i64 4
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !39
  %i.rz = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 4
  store float %i.ry, ptr %i.rz, align 4, !tbaa !39
  %i.sa = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 8
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.0333211.i.i, i64 %i.rp ; 3 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !39
  store float %i.sc, ptr %i.sa, align 4, !tbaa !39
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39
  %i.sf = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 12
  store float %i.se, ptr %i.sf, align 4, !tbaa !39
  %i.sg = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 16
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rp ; 3 uses
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  store float %i.si, ptr %i.sg, align 4, !tbaa !39
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !39
  %i.sl = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 20
  store float %i.sk, ptr %i.sl, align 4, !tbaa !39
  %i.sm = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 24
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.rp ; 3 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !39
  store float %i.so, ptr %i.sm, align 4, !tbaa !39
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !39
  %i.sr = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 28
  store float %i.sq, ptr %i.sr, align 4, !tbaa !39
  %i.ss = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 32 ; 3 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.rp ; 2 uses
  %niter190.next.3 = add i32 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i32 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.loopexit151.i.i.loopexit148.unr-lcssa, label %.lr.ph213.i.i.new, !llvm.loop !1028

.loopexit151.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph208.i.i
  br i1 %lcmp.mod193.not, label %.loopexit151.i.i, label %.lr.ph208.i.i.epil.preheader

.lr.ph208.i.i.epil.preheader:                     ; preds = %.loopexit151.i.i.loopexit.unr-lcssa, %.lr.ph208.preheader.i.i
  %.16207.i.i.epil.init = phi ptr [ %.15216.i.i, %.lr.ph208.preheader.i.i ], [ %i.rl, %.loopexit151.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0342205.i.i.epil.init = phi ptr [ %i.qv, %.lr.ph208.preheader.i.i ], [ %i.rn, %.loopexit151.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.su = load <4 x float>, ptr %.0342205.i.i.epil.init, align 16, !tbaa !254 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.0342205.i.i.epil.init, i64 16
  %i.sw = load <4 x float>, ptr %i.sv, align 16, !tbaa !254 ; 2 uses
  %i.sx = shufflevector <4 x float> %i.su, <4 x float> %i.sw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.sy = shufflevector <4 x float> %i.su, <4 x float> %i.sw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.sx, ptr %.16207.i.i.epil.init, align 16, !tbaa !254
  %i.sz = getelementptr inbounds nuw i8, ptr %.16207.i.i.epil.init, i64 16
  store <4 x float> %i.sy, ptr %i.sz, align 16, !tbaa !254
  %i.ta = getelementptr inbounds nuw i8, ptr %.16207.i.i.epil.init, i64 32
  br label %.loopexit151.i.i

.loopexit151.i.i.loopexit148.unr-lcssa:           ; preds = %.lr.ph213.i.i.new
  br i1 %lcmp.mod186.not, label %.loopexit151.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit151.i.i.loopexit148.unr-lcssa, %.lr.ph213.i.i
  %.0333211.i.i.epil.init = phi ptr [ %i.rv, %.lr.ph213.i.i ], [ %i.st, %.loopexit151.i.i.loopexit148.unr-lcssa ]
  %.18210.i.i.epil.init = phi ptr [ %.15216.i.i, %.lr.ph213.i.i ], [ %i.ss, %.loopexit151.i.i.loopexit148.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0333211.i.i.epil = phi ptr [ %.0333211.i.i.epil.init, %.epil.preheader ], [ %i.tg, %bb.f ] ; 3 uses
  %.18210.i.i.epil = phi ptr [ %.18210.i.i.epil.init, %.epil.preheader ], [ %i.tf, %bb.f ] ; 3 uses
  %epil.iter185 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter185.next, %bb.f ]
  %i.tb = load float, ptr %.0333211.i.i.epil, align 4, !tbaa !39
  store float %i.tb, ptr %.18210.i.i.epil, align 4, !tbaa !39
  %i.tc = getelementptr inbounds nuw i8, ptr %.0333211.i.i.epil, i64 4
  %i.td = load float, ptr %i.tc, align 4, !tbaa !39
  %i.te = getelementptr inbounds nuw i8, ptr %.18210.i.i.epil, i64 4
  store float %i.td, ptr %i.te, align 4, !tbaa !39
  %i.tf = getelementptr inbounds nuw i8, ptr %.18210.i.i.epil, i64 8 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.0333211.i.i.epil, i64 %i.rp
  %epil.iter185.next = add i32 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i32 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %.loopexit151.i.i, label %bb.f, !llvm.loop !1029

.loopexit151.i.i:                                 ; preds = %.loopexit151.i.i.loopexit148.unr-lcssa, %bb.f, %.lr.ph208.i.i.epil.preheader, %.loopexit151.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit368.i.i, %_ZN4ncnn3MatD2Ev.exit369.i.i, %bb.e
  %.19.i.i = phi ptr [ %.15216.i.i, %bb.e ], [ %.15216.i.i, %_ZN4ncnn3MatD2Ev.exit368.i.i ], [ %i.ta, %.lr.ph208.i.i.epil.preheader ], [ %.15216.i.i, %_ZN4ncnn3MatD2Ev.exit369.i.i ], [ %i.rl, %.loopexit151.i.i.loopexit.unr-lcssa ], [ %i.ss, %.loopexit151.i.i.loopexit148.unr-lcssa ], [ %i.tf, %bb.f ] ; 2 uses
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 2 ; 3 uses
  %i.th = icmp slt i64 %indvars.iv.next264.i.i, %invariant.op310.i.i
  br i1 %i.th, label %bb.e, label %.preheader.loopexit.i.i, !llvm.loop !1030

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %.lr.ph232.split.split.split.i.i
  %indvars.iv267.i.i = phi i64 [ %i.qk, %.lr.ph232.split.split.split.i.i ], [ %indvars.iv.next268.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.20231.i.i = phi ptr [ %.15.lcssa.i.i, %.lr.ph232.split.split.split.i.i ], [ %.lcssa164, %..loopexit_crit_edge.i.i ] ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv267.i.i ; 2 uses
  br i1 %i.qn, label %.epil.preheader198, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0329226.i.i = phi ptr [ %i.uf, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %gep.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.23225.i.i = phi ptr [ %i.ue, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.20231.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter205 = phi i32 [ %niter205.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.ti = load float, ptr %.0329226.i.i, align 4, !tbaa !39
  store float %i.ti, ptr %.23225.i.i, align 4, !tbaa !39
  %i.tj = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 4
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.0329226.i.i, i64 %i.qe ; 2 uses
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !39
  store float %i.tl, ptr %i.tj, align 4, !tbaa !39
  %i.tm = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 8
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.qe ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !39
  store float %i.to, ptr %i.tm, align 4, !tbaa !39
  %i.tp = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 12
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.qe ; 2 uses
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !39
  store float %i.tr, ptr %i.tp, align 4, !tbaa !39
  %i.ts = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 16
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.qe ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !39
  store float %i.tu, ptr %i.ts, align 4, !tbaa !39
  %i.tv = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 20
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.qe ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !39
  store float %i.tx, ptr %i.tv, align 4, !tbaa !39
  %i.ty = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 24
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.qe ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !39
  store float %i.ua, ptr %i.ty, align 4, !tbaa !39
  %i.ub = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 28
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.qe ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !39
  store float %i.ud, ptr %i.ub, align 4, !tbaa !39
  %i.ue = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 32 ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.qe ; 2 uses
  %niter205.next.7 = add i32 %niter205, 8         ; 2 uses
  %niter205.ncmp.7 = icmp eq i32 %niter205.next.7, %unroll_iter204
  br i1 %niter205.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1031

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod201.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader198

.epil.preheader198:                               ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0329226.i.i.epil.init = phi ptr [ %gep.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.uf, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.23225.i.i.epil.init = phi ptr [ %.20231.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.ue, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader198
  %.0329226.i.i.epil = phi ptr [ %.0329226.i.i.epil.init, %.epil.preheader198 ], [ %i.ui, %bb.g ] ; 2 uses
  %.23225.i.i.epil = phi ptr [ %.23225.i.i.epil.init, %.epil.preheader198 ], [ %i.uh, %bb.g ] ; 2 uses
  %epil.iter200 = phi i32 [ 0, %.epil.preheader198 ], [ %epil.iter200.next, %bb.g ]
  %i.ug = load float, ptr %.0329226.i.i.epil, align 4, !tbaa !39
  store float %i.ug, ptr %.23225.i.i.epil, align 4, !tbaa !39
  %i.uh = getelementptr inbounds nuw i8, ptr %.23225.i.i.epil, i64 4 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.0329226.i.i.epil, i64 %i.qe
  %epil.iter200.next = add i32 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i32 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.g, !llvm.loop !1032

..loopexit_crit_edge.i.i:                         ; preds = %bb.g, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa164 = phi ptr [ %i.ue, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.uh, %bb.g ]
  %indvars.iv.next268.i.i = add nuw nsw i64 %indvars.iv267.i.i, 1 ; 2 uses
  %exitcond270.not.i.i = icmp eq i64 %indvars.iv.next268.i.i, %wide.trip.count.i.i
  br i1 %exitcond270.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1017

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.uj = icmp eq i32 %i.at, 2                    ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.uj
  %i.uk = icmp eq i32 %i.au, 2                    ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.uk
  br i1 %or.cond15.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ul = icmp eq i32 %i.ap, 3
  %i.um = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.ul, %i.um
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %or.cond33.i = and i1 %or.cond21.i, %i.uj
  %or.cond35.i = and i1 %or.cond33.i, %i.uk
  br i1 %or.cond35.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.un = icmp eq i32 %i.ap, 5
  %i.uo = icmp eq i32 %i.aq, 5
  %or.cond37.i = and i1 %i.un, %i.uo
  %or.cond39.i = and i1 %or.cond37.i, %i.ax
  %or.cond41.i = and i1 %or.cond39.i, %i.ay       ; 2 uses
  %or.cond43.i = and i1 %or.cond41.i, %i.az
  %or.cond45.i = and i1 %or.cond43.i, %i.ba
  br i1 %or.cond45.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %or.cond53.i = and i1 %or.cond41.i, %i.uj
  %or.cond55.i = and i1 %or.cond53.i, %i.uk
  br i1 %or.cond55.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.up = icmp eq i32 %i.ap, 7
  %i.uq = icmp eq i32 %i.aq, 7
  %or.cond57.i = and i1 %i.up, %i.uq
  %or.cond59.i = and i1 %or.cond57.i, %i.ax
  %or.cond61.i = and i1 %or.cond59.i, %i.ay
  %or.cond63.i = and i1 %or.cond61.i, %i.uj
  %or.cond65.i = and i1 %or.cond63.i, %i.uk
  br i1 %or.cond65.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %..loopexit_crit_edge.i.i, %.loopexit150.us.i.loopexit.i, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %.lr.ph232.split.split.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i, %.lr.ph232.i.i, %.preheader.i.i
  %i.ur = add nsw i32 %.087, 1
  %i.us = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.087, %i.us
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.eg

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not266 = icmp sgt i32 %i.k, %i.j
  br i1 %.not266, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph269, %_ZN4ncnn3MatD2Ev.exit
  %.045267 = phi i32 [ %i.k, %.lr.ph269 ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.w = mul nsw i32 %i.v, %.045267               ; 3 uses
  %i.x = load i32, ptr %4, align 4, !tbaa !67
  %i.y = load i32, ptr %5, align 4, !tbaa !67
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit50

bb.d:                                             ; preds = %bb.c
  %i.aa = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.e unwind label %bb.eh

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1033
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1033
  %i.ad = sext i32 %i.aa to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1033
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.pre = load i32, ptr %3, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit50

_ZN4ncnn3MatD2Ev.exit50:                          ; preds = %bb.e, %bb.c
  %i.ai = phi i32 [ %i.v, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.0167.0 = phi ptr [ null, %bb.c ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !67
  %i.ak = sub nsw i32 %i.aj, %i.w
  %.sroa.speculated149 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ak) ; 5 uses
  %i.al = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit50
  %i.an = icmp sgt i32 %.sroa.speculated149, 3
  %i.ao = sext i32 %i.w to i64                    ; 6 uses
  %i.ap = zext i32 %.sroa.speculated149 to i64    ; 2 uses
  %i.aq = sext i32 %.sroa.speculated149 to i64
  %invariant.op.i = add nsw i64 %i.aq, -1
  %i.ar = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre354 = load i32, ptr %9, align 4, !tbaa !67
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit50
  %i.at = add nsw i32 %.045267, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045267, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge270

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.av = phi i32 [ %i.bf, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.bg, %._crit_edge ], [ %.pre354, %.lr.ph.split.preheader ] ; 2 uses
  %i.ax = phi i32 [ %i.bh, %._crit_edge ], [ %i.ar, %.lr.ph.split.preheader ] ; 3 uses
  %.044265 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %i.ay = sub nsw i32 %i.av, %.044265
  %.sroa.speculated145 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ay) ; 30 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10:bb.a
  %i.ant = sdiv i32 %i.ann, 576
  %i.anu = sdiv i32 %i.anp, 576
  %i.anv = sdiv i32 %i.ans, 576
  store i32 %i.ant, ptr %i.amd, align 4, !tbaa !67
  br i1 %i.amf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.anw = shl nsw i32 %i.anj, 1
  %i.anx = add nsw i32 %i.ani, %i.anw
  %i.any = sdiv i32 %i.anx, 576
  %i.anz = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !67
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.amh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  store i32 %i.anu, ptr %i.aoa, align 4, !tbaa !67
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %i.amj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.aob = getelementptr inbounds nuw i8, ptr %i.amd, i64 12
  store i32 %i.anv, ptr %i.aob, align 4, !tbaa !67
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.amd, i64 %i.agk
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.amd, %.preheader.us.i ], [ %i.aoc, %bb.al ] ; 6 uses
  %i.aod = or disjoint i32 %i.alw, 1
  %.not.us.1.i = icmp slt i32 %i.aod, %i.eo
  br i1 %.not.us.1.i, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.aoe = add nsw i32 %i.aix, %i.aib             ; 2 uses
  %i.aof = add nsw i32 %i.akp, %i.ajt             ; 2 uses
  %i.aog = sub nsw i32 %i.aib, %i.aix             ; 2 uses
  %i.aoh = sub nsw i32 %i.ajt, %i.akp             ; 2 uses
  %i.aoi = add i32 %i.ahi, %i.ahg
  %i.aoj = add i32 %i.aoi, %i.aoe
  %i.aok = add i32 %i.aoj, %i.aof
  %i.aol = shl nsw i32 %i.aof, 2
  %i.aom = add nsw i32 %i.aol, %i.aoe
  %reass.add = add i32 %i.aln, %i.aoh
  %reass.mul = shl i32 %reass.add, 3
  %i.aon = add i32 %i.alp, %i.aog
  %i.aoo = add i32 %i.aon, %reass.mul
  %i.aop = sdiv i32 %i.aok, 576
  %i.aoq = sdiv i32 %i.aom, 576
  %i.aor = sdiv i32 %i.aoo, 576
  store i32 %i.aop, ptr %.1.us.i, align 4, !tbaa !67
  br i1 %i.amf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aos = shl nsw i32 %i.aoh, 1
  %i.aot = add nsw i32 %i.aos, %i.aog
  %i.aou = sdiv i32 %i.aot, 576
  %i.aov = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.aou, ptr %i.aov, align 4, !tbaa !67
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.amh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aow = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.aoq, ptr %i.aow, align 4, !tbaa !67
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.amj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aox = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.aor, ptr %i.aox, align 4, !tbaa !67
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.aoy = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.agk
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.am ], [ %i.aoy, %bb.at ] ; 6 uses
  %i.aoz = or disjoint i32 %i.alw, 2
  %.not.us.2.i = icmp slt i32 %i.aoz, %i.eo
  br i1 %.not.us.2.i, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.apa = add nsw i32 %i.aiz, %i.aid             ; 2 uses
  %i.apb = add nsw i32 %i.akr, %i.ajv             ; 2 uses
  %i.apc = sub nsw i32 %i.aid, %i.aiz             ; 2 uses
  %i.apd = sub nsw i32 %i.ajv, %i.akr             ; 2 uses
  %i.ape = add i32 %i.ahj, %i.ahc
  %i.apf = add i32 %i.ape, %i.apa
  %i.apg = add i32 %i.apf, %i.apb
  %i.aph = shl nsw i32 %i.apb, 2
  %i.api = add nsw i32 %i.aph, %i.apa
  %i.apj = shl nsw i32 %i.apd, 3
  %i.apk = add i32 %i.apj, %i.apc
  %i.apl = add i32 %i.apk, %i.alr
  %i.apm = add i32 %i.apl, %i.alq
  %i.apn = sdiv i32 %i.apg, 576
  %i.apo = sdiv i32 %i.api, 576
  %i.app = sdiv i32 %i.apm, 576
  store i32 %i.apn, ptr %.1.us.1.i, align 4, !tbaa !67
  br i1 %i.amf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.apq = shl nsw i32 %i.apd, 1
  %i.apr = add nsw i32 %i.apq, %i.apc
  %i.aps = sdiv i32 %i.apr, 576
  %i.apt = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.aps, ptr %i.apt, align 4, !tbaa !67
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.amh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.apu = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.apo, ptr %i.apu, align 4, !tbaa !67
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.amj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.apv = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.app, ptr %i.apv, align 4, !tbaa !67
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.apw = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.agk
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.au ], [ %i.apw, %bb.bb ] ; 4 uses
  %i.apx = or disjoint i32 %i.alw, 3
  %.not.us.3.i = icmp slt i32 %i.apx, %i.eo
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.apy = add nsw i32 %i.aje, %i.aii             ; 2 uses
  %i.apz = add nsw i32 %i.akw, %i.aka             ; 2 uses
  %i.aqa = sub nsw i32 %i.aii, %i.aje             ; 2 uses
  %i.aqb = sub nsw i32 %i.aka, %i.akw             ; 2 uses
  %i.aqc = add i32 %i.ahk, %i.ahg
  %i.aqd = add i32 %i.aqc, %i.ahm
  %i.aqe = add i32 %i.aqd, %i.apy
  %i.aqf = add i32 %i.aqe, %i.apz
  %i.aqg = shl nsw i32 %i.apz, 2
  %i.aqh = add nsw i32 %i.aqg, %i.apy
  %i.aqi = shl nsw i32 %i.aqb, 3
  %i.aqj = add i32 %i.aqi, %i.aqa
  %i.aqk = add i32 %i.aqj, %i.alp
  %i.aql = add i32 %i.aqk, %i.alt
  %i.aqm = add i32 %i.aql, %i.als
  %i.aqn = sdiv i32 %i.aqf, 576
  %i.aqo = sdiv i32 %i.aqh, 576
  %i.aqp = sdiv i32 %i.aqm, 576
  store i32 %i.aqn, ptr %.1.us.2.i, align 4, !tbaa !67
  br i1 %i.amf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aqq = shl nsw i32 %i.aqb, 1
  %i.aqr = add nsw i32 %i.aqq, %i.aqa
  %i.aqs = sdiv i32 %i.aqr, 576
  %i.aqt = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.aqs, ptr %i.aqt, align 4, !tbaa !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.amh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aqu = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.aqo, ptr %i.aqu, align 4, !tbaa !67
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.amj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aqv = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.aqp, ptr %i.aqv, align 4, !tbaa !67
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next1027.i = add nuw nsw i64 %indvars.iv1026.i, 1 ; 2 uses
  %exitcond1030.not.i = icmp eq i64 %indvars.iv.next1027.i, %wide.trip.count1029.i
  br i1 %exitcond1030.not.i, label %._crit_edge.us942.i, label %.preheader.us.i, !llvm.loop !1287

._crit_edge.us942.i:                              ; preds = %bb.bj
  %indvars.iv.next1032.i = add nuw nsw i64 %indvars.iv1031.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1032.i, %i.ee
  br i1 %exitcond1035.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us941.i, !llvm.loop !1288

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aqw = phi i32 [ %i.asv, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 3 uses
  %i.aqx = phi i32 [ %i.asx, %.noexc ], [ %i.el, %.noexc.preheader ] ; 2 uses
  %.0133 = phi i32 [ %i.asw, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.aqy = sub nsw i32 %i.aqx, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqw, i32 %i.aqy)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.aqz = load i32, ptr %3, align 4, !tbaa !67
  %i.ara = sdiv i32 %i.dn, %i.aqz
  %i.arb = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1289
  %i.arc = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1289
  %i.ard = sext i32 %i.ara to i64
  %i.are = mul i64 %i.arc, %i.ard
  %i.arf = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1289 ; 3 uses
  %i.arg = mul i64 %i.are, %i.arf
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.arg
  %i.ari = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1289
  %i.arj = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1289
  %i.ark = sdiv i32 %.0133, %i.aqw
  %i.arl = sext i32 %i.ark to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1292
  store i64 %i.arf, ptr %i.w, align 8, !tbaa !65, !alias.scope !1292
  store i32 %i.ari, ptr %i.x, align 8, !tbaa !66, !alias.scope !1292
  store ptr %i.arj, ptr %i.y, align 8, !tbaa !17, !alias.scope !1292
  store i32 2, ptr %i.z, align 8, !tbaa !227, !alias.scope !1292
  %i.arm = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1289
  %i.arn = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1289
  %i.aro = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1289
  %i.arp = sext i32 %i.aro to i64
  %i.arq = sext i32 %i.arn to i64
  %i.arr = mul nsw i64 %i.arq, %i.arp             ; 2 uses
  %i.ars = mul i64 %i.arf, %i.arr
  %i.art = mul i64 %i.ars, %i.arl
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.art
  store ptr %i.aru, ptr %13, align 8, !tbaa !18, !alias.scope !1292
  %i.arv = shufflevector <2 x i32> %i.arm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.arw = shufflevector <4 x i32> %i.arv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.arw, ptr %i.aa, align 4, !tbaa !67, !alias.scope !1292
  store i64 %i.arr, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.arx = load i32, ptr %7, align 4, !tbaa !67
  %i.ary = sdiv i32 %.044134, %i.arx
  %i.arz = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1295
  %i.asa = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1295
  %i.asb = sext i32 %i.ary to i64
  %i.asc = mul i64 %i.asa, %i.asb
  %i.asd = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1295 ; 3 uses
  %i.ase = mul i64 %i.asc, %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ase
  %i.asg = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1295
  %i.ash = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1295
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.asd, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.asg, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.ash, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !227
  %i.asi = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1295
  %i.asj = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1295
  %i.ask = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1295
  %i.asl = sext i32 %i.ask to i64
  %i.asm = sext i32 %i.asj to i64
  %i.asn = mul nsw i64 %i.asm, %i.asl             ; 2 uses
  %i.aso = mul i64 %i.asd, %i.asn
  %i.asp = mul i64 %i.aso, %i.arl
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asf, i64 %i.asp
  store ptr %i.asq, ptr %14, align 8, !tbaa !18
  %i.asr = shufflevector <2 x i32> %i.asi, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ass = shufflevector <4 x i32> %i.asr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ass, ptr %i.an, align 4, !tbaa !67
  store i64 %i.asn, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1298
  %i.ast = add nsw i32 %i.aqw, %.0133
  %i.asu = icmp sge i32 %i.ast, %i.aqx
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.dv, i32 noundef 36, i32 noundef %.sroa.speculated118, i32 noundef %.sroa.speculated114, i32 noundef %.0133, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.asu)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.asv = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.asw = add nsw i32 %i.asv, %.0133             ; 2 uses
  %i.asx = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.asy = icmp slt i32 %i.asw, %i.asx
  br i1 %i.asy, label %.noexc, label %._crit_edge, !llvm.loop !1301

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us942.i, %.lr.ph939.i, %.preheader773.i
  %i.asz = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.ata = add nsw i32 %i.asz, %.044134           ; 2 uses
  %i.atb = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.atc = icmp slt i32 %i.ata, %i.atb
  br i1 %i.atc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1302

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.atd = landingpad { ptr, i32 }
          catch ptr null
  %i.ate = extractvalue { ptr, i32 } %i.atd, 0
  call void @__clang_call_terminate(ptr %i.ate) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader211.lr.ph, label %.preheader203

.preheader211.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 4 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1362 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1368 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1364.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1367 = trunc i32 %i.u to i1
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0655360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

.preheader203.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next750 to i32
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader203.loopexit, %bb.a
  %.0658.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader203.loopexit ] ; 3 uses
  %.0655.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader203.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0658.lcssa, 1
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader202.lr.ph, label %.preheader194

.preheader202.lr.ph:                              ; preds = %.preheader203
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 6 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0658.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count763 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -1
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1376 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1371.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1375 = trunc i32 %i.ax to i1
  %i.ba = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i32 %i.ak, 6
  %n.vec1105 = and i64 %i.ba, 4294967292          ; 4 uses
  %i.bb = trunc nuw i64 %n.vec1105 to i32
end_hunk_8
begin_hunk_9_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.11:bb.a
  %i.ms = add i32 %i.kb, %i.ko
  %i.mt = sub i32 %i.mr, %i.ms
  %i.mu = add i32 %i.mt, %i.kr
  %i.mv = ashr i32 %i.mu, 2
  %i.mw = add i32 %i.iz, %i.kh
  %i.mx = add i32 %i.jx, %i.ki
  %i.my = sub i32 %i.mw, %i.mx
  %i.mz = add i32 %i.my, %i.kp
  %i.na = ashr i32 %i.mz, 2
  %i.nb = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !67
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %i.mv, ptr %i.nc, align 4, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next129.i, %wide.trip.count131.i
  br i1 %exitcond132.not.i, label %._crit_edge.us82.i, label %_ZN4ncnn3MatD2Ev.exit301.us.i, !llvm.loop !1404

._crit_edge.us82.i:                               ; preds = %bb.x
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 2 ; 3 uses
  %i.nd = icmp slt i64 %indvars.iv.next134.i, %invariant.op.i
  br i1 %i.nd, label %.lr.ph.us81.i, label %.preheader.loopexit.i, !llvm.loop !1405

.preheader.loopexit.i:                            ; preds = %._crit_edge.us82.i
  %i.ne = trunc nsw i64 %indvars.iv.next134.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph78.split.preheader.i, %.preheader55.i
  %.1288.lcssa.i = phi i32 [ %.0287.lcssa.i, %.preheader55.i ], [ %i.ne, %.preheader.loopexit.i ], [ %i.hf, %.lr.ph78.split.preheader.i ] ; 2 uses
  %i.nf = icmp slt i32 %.1288.lcssa.i, %.sroa.speculated119
  br i1 %i.nf, label %.lr.ph96.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph96.i:                                       ; preds = %.preheader.i
  %i.ng = icmp sgt i32 %.sroa.speculated115, 0
  %i.nh = sext i32 %.sroa.speculated115 to i64
  %i.ni = shl nsw i32 %.sroa.speculated115, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = mul nsw i32 %.sroa.speculated115, 3
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl nsw i32 %.sroa.speculated115, 2
  %i.nn = sext i32 %i.nm to i64                   ; 12 uses
  %i.no = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.ng, label %.lr.ph96.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph96.split.us.i:                              ; preds = %.lr.ph96.i
  %i.np = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1406
  %i.nq = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1406
  %i.nr = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1406 ; 2 uses
  %factor.op.mul106.i = mul i64 %i.nr, %i.nq
  %i.ns = sext i32 %.1288.lcssa.i to i64
  %wide.trip.count149.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us104.i

.lr.ph.us104.i:                                   ; preds = %._crit_edge.us105.i, %.lr.ph96.split.us.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %._crit_edge.us105.i ], [ %i.ns, %.lr.ph96.split.us.i ] ; 3 uses
  %i.nt = trunc nsw i64 %indvars.iv151.i to i32
  %factor.op.mul91.reass.us.i = mul i32 %factor.op.mul64.i, %i.nt
  %i.nu = sext i32 %factor.op.mul91.reass.us.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nu
  %i.nw = add nsw i64 %indvars.iv151.i, %i.bl
  %.reass107.i = mul i64 %factor.op.mul106.i, %i.nw
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 %.reass107.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us102.i, %.lr.ph.us104.i
  %indvars.iv146.i = phi i64 [ 0, %.lr.ph.us104.i ], [ %indvars.iv.next147.i, %.split.us102.i ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv146.i ; 5 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nh ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nj ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nl ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !67
  %i.od = load i32, ptr %i.nz, align 4, !tbaa !67 ; 2 uses
  %i.oe = add nsw i32 %i.od, %i.oc
  %i.of = load i32, ptr %i.oa, align 4, !tbaa !67 ; 2 uses
  %i.og = add nsw i32 %i.oe, %i.of                ; 2 uses
  %i.oh = sub i32 %i.od, %i.of
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !67
  %i.oj = add nsw i32 %i.oh, %i.oi                ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nn ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nn ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nn ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nn ; 2 uses
  %i.oo = load i32, ptr %i.ok, align 4, !tbaa !67
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !67 ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.oo
  %i.or = load i32, ptr %i.om, align 4, !tbaa !67 ; 2 uses
  %i.os = add nsw i32 %i.oq, %i.or                ; 3 uses
  %i.ot = sub i32 %i.op, %i.or
  %i.ou = load i32, ptr %i.on, align 4, !tbaa !67
  %i.ov = add nsw i32 %i.ot, %i.ou                ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.nn ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.nn ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.nn ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nn ; 2 uses
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !67
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !67 ; 2 uses
  %i.pc = add nsw i32 %i.pb, %i.pa
  %i.pd = load i32, ptr %i.oy, align 4, !tbaa !67 ; 2 uses
  %i.pe = add nsw i32 %i.pc, %i.pd                ; 3 uses
  %i.pf = sub i32 %i.pb, %i.pd
  %i.pg = load i32, ptr %i.oz, align 4, !tbaa !67
  %i.ph = add nsw i32 %i.pf, %i.pg                ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.nn
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nn
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nn
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.nn
  %i.pm = load i32, ptr %i.pi, align 4, !tbaa !67
  %i.pn = load i32, ptr %i.pj, align 4, !tbaa !67 ; 2 uses
  %i.po = load i32, ptr %i.pk, align 4, !tbaa !67 ; 2 uses
  %i.pp = load i32, ptr %i.pl, align 4, !tbaa !67
  %i.pq = trunc i64 %indvars.iv146.i to i32
  %i.pr = add i32 %.044143, %i.pq                 ; 2 uses
  %i.ps = sdiv i32 %i.pr, %i.ca
  %i.pt = srem i32 %i.pr, %i.ca
  %i.pu = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1406
  %i.pv = sext i32 %i.pu to i64
  %i.pw = shl nsw i32 %i.ps, 1                    ; 4 uses
  %i.px = sext i32 %i.pw to i64
  %i.py = mul i64 %i.nr, %i.px
  %i.pz = mul i64 %i.py, %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.pz
  %i.qb = shl nsw i32 %i.pt, 1                    ; 2 uses
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qc ; 7 uses
  %i.qe = or disjoint i32 %i.qb, 1
  %i.qf = icmp slt i32 %i.qe, %i.bt
  %.fr.us.i = freeze i1 %i.qf
  %.not.us.us.i = icmp slt i32 %i.pw, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i
  %i.qg = add nsw i32 %i.os, %i.og
  %i.qh = add nsw i32 %i.qg, %i.pe
  %i.qi = ashr i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qd, align 4, !tbaa !67
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i

_ZN4ncnn3MatD2Ev.exit.split.us103.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i
  %.1.us101.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i ], [ %i.qj, %bb.y ]
  %i.qk = or disjoint i32 %i.pw, 1
  %.not.us100.1.i = icmp slt i32 %i.qk, %i.bu
  br i1 %.not.us100.1.i, label %bb.z, label %.split.us102.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i
  %i.ql = add nsw i32 %i.ov, %i.oj
  %i.qm = add nsw i32 %i.ql, %i.ph
  %i.qn = ashr i32 %i.qm, 2
  store i32 %i.qn, ptr %.1.us101.i, align 4, !tbaa !67
  br label %.split.us102.i

.split.us102.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %._crit_edge.us105.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1409

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qo = add nsw i32 %i.os, %i.og
  %i.qp = add nsw i32 %i.qo, %i.pe
  %i.qq = ashr i32 %i.qp, 2
  store i32 %i.qq, ptr %i.qd, align 4, !tbaa !67
  %i.qr = sub i32 %i.os, %i.pe
  %i.qs = add i32 %i.qr, %i.pm
  %i.qt = add i32 %i.qs, %i.pn
  %i.qu = add i32 %i.qt, %i.po
  %i.qv = ashr i32 %i.qu, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !67
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.qx, %bb.aa ] ; 2 uses
  %i.qy = or disjoint i32 %i.pw, 1
  %.not.us.us.1.i = icmp slt i32 %i.qy, %i.bu
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us102.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.qz = add nsw i32 %i.ov, %i.oj
  %i.ra = add nsw i32 %i.qz, %i.ph
  %i.rb = ashr i32 %i.ra, 2
  store i32 %i.rb, ptr %.1.us.us.i, align 4, !tbaa !67
  %i.rc = add i32 %i.ov, %i.pn
  %i.rd = add i32 %i.ph, %i.po
  %i.re = sub i32 %i.rc, %i.rd
  %i.rf = add i32 %i.re, %i.pp
  %i.rg = ashr i32 %i.rf, 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !67
  br label %.split.us102.i

._crit_edge.us105.i:                              ; preds = %.split.us102.i
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, %i.bk
  br i1 %exitcond155.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us104.i, !llvm.loop !1410

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ri = phi i32 [ %i.th, %.noexc ], [ %.pre149, %.noexc.preheader ] ; 3 uses
  %i.rj = phi i32 [ %i.tj, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.0142 = phi i32 [ %i.ti, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.rk = sub nsw i32 %i.rj, %.0142
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ri, i32 %i.rk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.rl = load i32, ptr %3, align 4, !tbaa !67
  %i.rm = sdiv i32 %i.at, %i.rl
  %i.rn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1411
  %i.ro = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1411
  %i.rp = sext i32 %i.rm to i64
  %i.rq = mul i64 %i.ro, %i.rp
  %i.rr = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1411 ; 3 uses
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rs
  %i.ru = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !1411
  %i.rv = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !1411
  %i.rw = sdiv i32 %.0142, %i.ri
  %i.rx = sext i32 %i.rw to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !1414
  store i64 %i.rr, ptr %i.u, align 8, !tbaa !65, !alias.scope !1414
  store i32 %i.ru, ptr %i.v, align 8, !tbaa !66, !alias.scope !1414
  store ptr %i.rv, ptr %i.w, align 8, !tbaa !17, !alias.scope !1414
  store i32 2, ptr %i.x, align 8, !tbaa !227, !alias.scope !1414
  %i.ry = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !1411
  %i.rz = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1411
  %i.sa = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1411
  %i.sb = sext i32 %i.sa to i64
  %i.sc = sext i32 %i.rz to i64
  %i.sd = mul nsw i64 %i.sc, %i.sb                ; 2 uses
  %i.se = mul i64 %i.rr, %i.sd
  %i.sf = mul i64 %i.se, %i.rx
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.sf
  store ptr %i.sg, ptr %13, align 8, !tbaa !18, !alias.scope !1414
  %i.sh = shufflevector <2 x i32> %i.ry, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.si = shufflevector <4 x i32> %i.sh, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.si, ptr %i.y, align 4, !tbaa !67, !alias.scope !1414
  store i64 %i.sd, ptr %i.z, align 8, !tbaa !20, !alias.scope !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.sj = load i32, ptr %7, align 4, !tbaa !67
  %i.sk = sdiv i32 %.044143, %i.sj
  %i.sl = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1417
  %i.sm = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !1417
  %i.sn = sext i32 %i.sk to i64
  %i.so = mul i64 %i.sm, %i.sn
  %i.sp = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !1417 ; 3 uses
  %i.sq = mul i64 %i.so, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sq
  %i.ss = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !1417
  %i.st = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !1417
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.sp, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.ss, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.st, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !227
  %i.su = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !1417
  %i.sv = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !1417
  %i.sw = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !1417
  %i.sx = sext i32 %i.sw to i64
  %i.sy = sext i32 %i.sv to i64
  %i.sz = mul nsw i64 %i.sy, %i.sx                ; 2 uses
  %i.ta = mul i64 %i.sp, %i.sz
  %i.tb = mul i64 %i.ta, %i.rx
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.tb
  store ptr %i.tc, ptr %14, align 8, !tbaa !18
  %i.td = shufflevector <2 x i32> %i.su, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.te = shufflevector <4 x i32> %i.td, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.te, ptr %i.al, align 4, !tbaa !67
  store i64 %i.sz, ptr %i.am, align 8, !tbaa !20, !alias.scope !1420
  %i.tf = add nsw i32 %i.ri, %.0142
  %i.tg = icmp sge i32 %i.tf, %i.rj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated119, i32 noundef %.sroa.speculated115, i32 noundef %.0142, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.tg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.th = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.ti = add nsw i32 %i.th, %.0142               ; 2 uses
  %i.tj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.tk = icmp slt i32 %i.ti, %i.tj
  br i1 %i.tk, label %.noexc, label %._crit_edge, !llvm.loop !1423

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us105.i, %.lr.ph96.i, %.preheader.i
  %i.tl = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.tm = add nsw i32 %i.tl, %.044143             ; 2 uses
  %i.tn = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.to = icmp slt i32 %i.tm, %i.tn
  br i1 %i.to, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1424

._crit_edge148:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge148, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.c
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  call void @__clang_call_terminate(ptr %i.tq) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not186 = icmp sgt i32 %i.k, %i.j
  br i1 %.not186, label %._crit_edge189, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge189

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.sz, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0187 = phi i32 [ %i.ta, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0187, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = shl i32 %i.t, 4
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.3
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.sw, %.thread.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.3 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 7 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1425
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1425
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1425
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1425 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 1                    ; 4 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !67   ; 25 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 8 uses
  %i.be = add nsw i32 %i.av, 2                    ; 8 uses
  %i.bf = add nsw i32 %i.av, 3                    ; 8 uses
  %i.bg = sext i32 %i.az to i64                   ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %.1247163.i.us.i = phi i32 [ %i.jv, %.lr.ph165.i.us.i ], [ %.1247163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1249162.i.us.i = phi ptr [ %i.ju, %.lr.ph165.i.us.i ], [ %.1249162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.ix = load i8, ptr %.1249162.i.us.i, align 1, !tbaa !254
  store i8 %i.ix, ptr %.10164.i.us.i, align 1, !tbaa !254
  %i.iy = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !254
  %i.jb = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 2
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !254
  %i.jd = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 3
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !254
  %i.jg = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !254
  %i.jh = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 %i.bd ; 5 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !254
  store i8 %i.jj, ptr %i.jh, align 1, !tbaa !254
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !254
  %i.jm = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !254
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !254
  %i.jp = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !254
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !254
  %i.js = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !254
  %i.jt = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.bd
  %i.jv = add nuw nsw i32 %.1247163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.jv, %.sroa.speculated
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us78.i, label %.lr.ph165.i.us.i, !llvm.loop !1453

.loopexit124.i.us78.i:                            ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us79.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa398.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.jt, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us80.i = add nuw nsw i64 %indvars.iv232.i.us76.i, 4 ; 3 uses
  %i.jw = icmp slt i64 %indvars.iv.next233.i.us80.i, %invariant.op.i.i
  br i1 %i.jw, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1448

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us78.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi73.i = phi ptr [ %i.gv, %.loopexit124.i.loopexit.us.us.i ], [ %.0238.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0238.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %.11.i.us79.i, %.loopexit124.i.us78.i ]
  %.us-phi74.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.fz, %.loopexit124.i.preheader.i ], [ %i.gf, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %indvars.iv.next233.i.us80.i, %.loopexit124.i.us78.i ]
  %i.jx = trunc nuw nsw i64 %.us-phi74.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.jx, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0238.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi73.i, %.preheader122.loopexit.i.i ] ; 2 uses
  %i.jy = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.jz = icmp slt i32 %i.jy, %.sroa.speculated64
  br i1 %i.jz, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.ka = sdiv i32 %i.y, 8
  %i.kb = sext i32 %i.ka to i64
  %i.kc = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.kd = icmp sgt i32 %.sroa.speculated, 7
  %i.ke = shl i64 %i.bd, 3                        ; 2 uses
  %i.kf = sext i32 %i.y to i64
  %i.kg = icmp sgt i32 %.sroa.speculated, 1
  %i.kh = shl i64 %i.bd, 1                        ; 3 uses
  %i.ki = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.kj = zext nneg i32 %.1241.lcssa.i.i to i64
  %i.kk = sext i32 %.sroa.speculated64 to i64
  %i.kl = sext i32 %i.w to i64                    ; 2 uses
  %invariant.op277.i.i = add nsw i64 %i.kk, -1
  %i.km = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.kn = lshr i32 %i.km, 1                       ; 2 uses
  %i.ko = add nuw i32 %i.kn, 1                    ; 2 uses
  %i.kp = icmp eq i32 %i.kn, 0
  %unroll_iter = and i32 %i.ko, -2
  %i.kq = and i32 %i.km, 2
  %lcmp.mod410.not.not = icmp eq i32 %i.kq, 0
  %lcmp.mod413 = trunc i32 %i.ko to i1
  %i.kr = icmp eq i32 %i.kc, 1
  %unroll_iter421 = and i32 %i.kc, 268435454
  %i.ks = and i32 %.sroa.speculated, 8
  %lcmp.mod418.not = icmp eq i32 %i.ks, 0
  %lcmp.mod420 = trunc i32 %i.kc to i1
  br label %bb.e

.preheader.loopexit.i.i:                          ; preds = %.loopexit120.i.i
  %i.kt = trunc nsw i64 %indvars.iv.next238.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader122.i.i
  %.2242.lcssa.i.i = phi i32 [ %.1241.lcssa.i.i, %.preheader122.i.i ], [ %i.kt, %.preheader.loopexit.i.i ] ; 3 uses
  %.12.lcssa.i.i = phi ptr [ %.6.lcssa.i.i, %.preheader122.i.i ], [ %.17.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ku = icmp slt i32 %.2242.lcssa.i.i, %.sroa.speculated64
  br i1 %i.ku, label %.lr.ph206.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph206.i.i:                                    ; preds = %.preheader.i.i
  %i.kv = sdiv i32 %i.y, 8
  %i.kw = sext i32 %i.kv to i64
  %i.kx = sdiv i32 %.sroa.speculated, 8           ; 3 uses
  %i.ky = shl i64 %i.bd, 3                        ; 9 uses
  %i.kz = sext i32 %i.y to i64
  switch i32 %i.be, label %_ZN4ncnn3MatD2Ev.exit [
    i32 8, label %.lr.ph206.split.us.split.i.i
    i32 1, label %.lr.ph206.split.split.i.i
  ]

.lr.ph206.split.us.split.i.i:                     ; preds = %.lr.ph206.i.i
  %i.la = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.la, label %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.lb = sext i32 %.2242.lcssa.i.i to i64
  %i.lc = sext i32 %i.w to i64
  %wide.trip.count249.i.i = sext i32 %.sroa.speculated64 to i64
  %i.ld = add nsw i32 %i.kx, -1
  %xtraiter430 = and i32 %i.kx, 7                 ; 3 uses
  %i.le = icmp ult i32 %i.ld, 7
  %unroll_iter435 = and i32 %i.kx, 268435448
  %lcmp.mod432.not = icmp eq i32 %xtraiter430, 0
  %lcmp.mod434 = icmp ne i32 %xtraiter430, 0
  br label %_ZN4ncnn3MatD2Ev.exit265.us.i.i

_ZN4ncnn3MatD2Ev.exit265.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.lb, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %.lcssa405, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.lf = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1454
  %i.lg = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1454
  %i.lh = mul i64 %i.lg, %i.kw
  %i.li = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1454
  %i.lj = mul i64 %i.lh, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lj
  %i.ll = add nsw i64 %indvars.iv246.i.i, %i.lc
  %i.lm = shl nsw i64 %i.ll, 3
  %i.ln = getelementptr inbounds i8, ptr %i.lk, i64 %i.lm ; 2 uses
  br i1 %i.le, label %.epil.preheader429, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new

_ZN4ncnn3MatD2Ev.exit265.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  %.0234195.us.i.i = phi ptr [ %i.ml, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %i.ln, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 2 uses
  %.19194.us.i.i = phi ptr [ %i.mk, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 9 uses
  %niter436 = phi i32 [ %niter436.next.7, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ]
  %i.lo = load i64, ptr %.0234195.us.i.i, align 1, !tbaa !254
  store i64 %i.lo, ptr %.19194.us.i.i, align 1, !tbaa !254
  %i.lp = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i, i64 %i.ky ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 1, !tbaa !254
  store i64 %i.lr, ptr %i.lp, align 1, !tbaa !254
  %i.ls = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ky ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 1, !tbaa !254
  store i64 %i.lu, ptr %i.ls, align 1, !tbaa !254
  %i.lv = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ky ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 1, !tbaa !254
  store i64 %i.lx, ptr %i.lv, align 1, !tbaa !254
  %i.ly = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ky ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 1, !tbaa !254
  store i64 %i.ma, ptr %i.ly, align 1, !tbaa !254
  %i.mb = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ky ; 2 uses
  %i.md = load i64, ptr %i.mc, align 1, !tbaa !254
  store i64 %i.md, ptr %i.mb, align 1, !tbaa !254
  %i.me = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 48
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ky ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 1, !tbaa !254
  store i64 %i.mg, ptr %i.me, align 1, !tbaa !254
  %i.mh = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 56
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.ky ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 1, !tbaa !254
  store i64 %i.mj, ptr %i.mh, align 1, !tbaa !254
  %i.mk = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 64 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ky ; 2 uses
  %niter436.next.7 = add i32 %niter436, 8         ; 2 uses
  %niter436.ncmp.7 = icmp eq i32 %niter436.next.7, %unroll_iter435
  br i1 %niter436.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new, !llvm.loop !1457

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  br i1 %lcmp.mod432.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader429

.epil.preheader429:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit265.us.i.i
  %.0234195.us.i.i.epil.init = phi ptr [ %i.ln, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.ml, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.19194.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.mk, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod434)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader429
  %.0234195.us.i.i.epil = phi ptr [ %.0234195.us.i.i.epil.init, %.epil.preheader429 ], [ %i.mo, %bb.d ] ; 2 uses
  %.19194.us.i.i.epil = phi ptr [ %.19194.us.i.i.epil.init, %.epil.preheader429 ], [ %i.mn, %bb.d ] ; 2 uses
  %epil.iter431 = phi i32 [ 0, %.epil.preheader429 ], [ %epil.iter431.next, %bb.d ]
  %i.mm = load i64, ptr %.0234195.us.i.i.epil, align 1, !tbaa !254
  store i64 %i.mm, ptr %.19194.us.i.i.epil, align 1, !tbaa !254
  %i.mn = getelementptr inbounds nuw i8, ptr %.19194.us.i.i.epil, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i.epil, i64 %i.ky
  %epil.iter431.next = add i32 %epil.iter431, 1   ; 2 uses
  %epil.iter431.cmp.not = icmp eq i32 %epil.iter431.next, %xtraiter430
  br i1 %epil.iter431.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.d, !llvm.loop !1458

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.d, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa405 = phi ptr [ %i.mk, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.mn, %bb.d ]
  %indvars.iv.next247.i.i = add nuw nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i, !llvm.loop !1459

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.mp = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.mp, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.mq = sext i32 %.2242.lcssa.i.i to i64
  %i.mr = sext i32 %i.w to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64
  %i.ms = add nsw i32 %.sroa.speculated, -1
  %xtraiter423 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.mt = icmp ult i32 %i.ms, 7
  %unroll_iter427 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod424.not = icmp eq i32 %xtraiter423, 0
  %lcmp.mod426 = icmp ne i32 %xtraiter423, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.e:                                             ; preds = %.loopexit120.i.i, %.lr.ph191.i.i
  %indvars.iv237.i.i = phi i64 [ %i.kj, %.lr.ph191.i.i ], [ %indvars.iv.next238.i.i, %.loopexit120.i.i ] ; 3 uses
  %.12190.i.i = phi ptr [ %.6.lcssa.i.i, %.lr.ph191.i.i ], [ %.17.i.i, %.loopexit120.i.i ] ; 7 uses
  switch i32 %i.be, label %.loopexit120.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit267.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit266.i.i
  ]

_ZN4ncnn3MatD2Ev.exit267.i.i:                     ; preds = %bb.e
  br i1 %i.kd, label %.lr.ph175.preheader.i.i, label %.loopexit120.i.i

.lr.ph175.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit267.i.i
  %i.mu = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1460
  %i.mv = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1460
  %i.mw = mul i64 %i.mv, %i.kb
  %i.mx = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1460
  %i.my = mul i64 %i.mw, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.my
  %i.na = add nsw i64 %indvars.iv237.i.i, %i.kl
  %i.nb = shl nsw i64 %i.na, 3
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %i.nb ; 2 uses
  br i1 %i.kr, label %.lr.ph175.i.i.epil.preheader, label %.lr.ph175.i.i

.lr.ph175.i.i:                                    ; preds = %.lr.ph175.preheader.i.i, %.lr.ph175.i.i
  %.13174.i.i = phi ptr [ %i.nv, %.lr.ph175.i.i ], [ %.12190.i.i, %.lr.ph175.preheader.i.i ] ; 3 uses
  %.0245172.i.i = phi ptr [ %i.nw, %.lr.ph175.i.i ], [ %i.nc, %.lr.ph175.preheader.i.i ] ; 3 uses
  %niter422 = phi i32 [ %niter422.next.1, %.lr.ph175.i.i ], [ 0, %.lr.ph175.preheader.i.i ]
  %i.nd = load i64, ptr %.0245172.i.i, align 1, !tbaa !254
  %i.ne = insertelement <2 x i64> poison, i64 %i.nd, i64 0
  %i.nf = getelementptr inbounds nuw i8, ptr %.0245172.i.i, i64 8
  %i.ng = load i64, ptr %i.nf, align 1, !tbaa !254
  %i.nh = insertelement <2 x i64> poison, i64 %i.ng, i64 0
  %i.ni = bitcast <2 x i64> %i.ne to <8 x i16>
  %i.nj = bitcast <2 x i64> %i.nh to <8 x i16>
  %i.nk = shufflevector <8 x i16> %i.ni, <8 x i16> %i.nj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.nk, ptr %.13174.i.i, align 1, !tbaa !254
  %i.nl = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %.0245172.i.i, i64 %i.ke ; 3 uses
  %i.nn = load i64, ptr %i.nm, align 1, !tbaa !254
  %i.no = insertelement <2 x i64> poison, i64 %i.nn, i64 0
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.nq = load i64, ptr %i.np, align 1, !tbaa !254
  %i.nr = insertelement <2 x i64> poison, i64 %i.nq, i64 0
  %i.ns = bitcast <2 x i64> %i.no to <8 x i16>
  %i.nt = bitcast <2 x i64> %i.nr to <8 x i16>
  %i.nu = shufflevector <8 x i16> %i.ns, <8 x i16> %i.nt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.nu, ptr %i.nl, align 1, !tbaa !254
  %i.nv = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 32 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.ke ; 2 uses
  %niter422.next.1 = add i32 %niter422, 2         ; 2 uses
  %niter422.ncmp.1 = icmp eq i32 %niter422.next.1, %unroll_iter421
  br i1 %niter422.ncmp.1, label %.loopexit120.i.i.loopexit.unr-lcssa, label %.lr.ph175.i.i, !llvm.loop !1463

_ZN4ncnn3MatD2Ev.exit266.i.i:                     ; preds = %bb.e
  %i.nx = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1464
  %i.ny = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1464
  %i.nz = mul i64 %i.ny, %i.kf
  %i.oa = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1464
  %i.ob = mul i64 %i.nz, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 %indvars.iv237.i.i
  %i.oe = getelementptr i8, ptr %i.od, i64 %i.kl  ; 3 uses
  br i1 %i.kg, label %.lr.ph180.i.i.preheader, label %.preheader119.i.i

.lr.ph180.i.i.preheader:                          ; preds = %_ZN4ncnn3MatD2Ev.exit266.i.i
  br i1 %i.kp, label %.lr.ph180.i.i.epil.preheader, label %.lr.ph180.i.i

.preheader119.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph180.i.i
  br i1 %lcmp.mod410.not.not, label %.lr.ph180.i.i.epil.preheader, label %.preheader119.i.i

.lr.ph180.i.i.epil.preheader:                     ; preds = %.preheader119.i.i.loopexit.unr-lcssa, %.lr.ph180.i.i.preheader
  %.0236178.i.i.epil.init = phi ptr [ %i.oe, %.lr.ph180.i.i.preheader ], [ %i.pz, %.preheader119.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.15177.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph180.i.i.preheader ], [ %i.py, %.preheader119.i.i.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod413)
  %i.of = load i8, ptr %.0236178.i.i.epil.init, align 1, !tbaa !254
  store i8 %i.of, ptr %.15177.i.i.epil.init, align 1, !tbaa !254
  %i.og = getelementptr inbounds nuw i8, ptr %.0236178.i.i.epil.init, i64 %i.bd ; 2 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !254
  %i.oi = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 1
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !254
  %i.oj = getelementptr inbounds nuw i8, ptr %.0236178.i.i.epil.init, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !254
  %i.ol = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 2
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !254
  %i.om = getelementptr i8, ptr %i.og, i64 1
  %i.on = load i8, ptr %i.om, align 1, !tbaa !254
  %i.oo = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 3
  store i8 %i.on, ptr %i.oo, align 1, !tbaa !254
  %i.op = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.0236178.i.i.epil.init, i64 %i.kh
  br label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %.lr.ph180.i.i.epil.preheader, %.preheader119.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit266.i.i
  %.15.lcssa.i.i = phi ptr [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.py, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.op, %.lr.ph180.i.i.epil.preheader ] ; 3 uses
  %.0236.lcssa.i.i = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.pz, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.oq, %.lr.ph180.i.i.epil.preheader ] ; 2 uses
  %.0235.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.ki, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.ki, %.lr.ph180.i.i.epil.preheader ] ; 5 uses
  %i.or = icmp slt i32 %.0235.lcssa.i.i, %.sroa.speculated
  br i1 %i.or, label %.lr.ph187.i.i.preheader, label %.loopexit120.i.i

.lr.ph187.i.i.preheader:                          ; preds = %.preheader119.i.i
  %i.os = sub i32 %.sroa.speculated, %.0235.lcssa.i.i
  %xtraiter414 = and i32 %i.os, 3                 ; 2 uses
  %lcmp.mod415.not = icmp eq i32 %xtraiter414, 0
  br i1 %lcmp.mod415.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol

.lr.ph187.i.i.prol:                               ; preds = %.lr.ph187.i.i.preheader, %.lr.ph187.i.i.prol
  %.1186.i.i.prol = phi i32 [ %i.oz, %.lr.ph187.i.i.prol ], [ %.0235.lcssa.i.i, %.lr.ph187.i.i.preheader ]
  %.1237185.i.i.prol = phi ptr [ %i.oy, %.lr.ph187.i.i.prol ], [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %.16184.i.i.prol = phi ptr [ %i.ox, %.lr.ph187.i.i.prol ], [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %prol.iter416 = phi i32 [ %prol.iter416.next, %.lr.ph187.i.i.prol ], [ 0, %.lr.ph187.i.i.preheader ]
  %i.ot = load i8, ptr %.1237185.i.i.prol, align 1, !tbaa !254
  store i8 %i.ot, ptr %.16184.i.i.prol, align 1, !tbaa !254
  %i.ou = getelementptr inbounds nuw i8, ptr %.1237185.i.i.prol, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !254
  %i.ow = getelementptr inbounds nuw i8, ptr %.16184.i.i.prol, i64 1
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !254
  %i.ox = getelementptr inbounds nuw i8, ptr %.16184.i.i.prol, i64 2 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.1237185.i.i.prol, i64 %i.bd ; 2 uses
  %i.oz = add nuw nsw i32 %.1186.i.i.prol, 1      ; 2 uses
  %prol.iter416.next = add i32 %prol.iter416, 1   ; 2 uses
  %prol.iter416.cmp.not = icmp eq i32 %prol.iter416.next, %xtraiter414
  br i1 %prol.iter416.cmp.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol, !llvm.loop !1467

.lr.ph187.i.i.prol.loopexit:                      ; preds = %.lr.ph187.i.i.prol, %.lr.ph187.i.i.preheader
  %.lcssa402.unr = phi ptr [ poison, %.lr.ph187.i.i.preheader ], [ %i.ox, %.lr.ph187.i.i.prol ]
  %.1186.i.i.unr = phi i32 [ %.0235.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.oz, %.lr.ph187.i.i.prol ]
  %.1237185.i.i.unr = phi ptr [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.oy, %.lr.ph187.i.i.prol ]
  %.16184.i.i.unr = phi ptr [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.ox, %.lr.ph187.i.i.prol ]
  %i.pa = sub i32 %.0235.lcssa.i.i, %.sroa.speculated
  %i.pb = icmp ugt i32 %i.pa, -4
  br i1 %i.pb, label %.loopexit120.i.i, label %.lr.ph187.i.i

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i.preheader, %.lr.ph180.i.i
  %.0236178.i.i = phi ptr [ %i.pz, %.lr.ph180.i.i ], [ %i.oe, %.lr.ph180.i.i.preheader ] ; 4 uses
  %.15177.i.i = phi ptr [ %i.py, %.lr.ph180.i.i ], [ %.12190.i.i, %.lr.ph180.i.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph180.i.i ], [ 0, %.lr.ph180.i.i.preheader ]
  %i.pc = load i8, ptr %.0236178.i.i, align 1, !tbaa !254
  store i8 %i.pc, ptr %.15177.i.i, align 1, !tbaa !254
  %i.pd = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 %i.bd ; 2 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !254
  %i.pf = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 1
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !254
  %i.pg = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !254
  %i.pi = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 2
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !254
  %i.pj = getelementptr i8, ptr %i.pd, i64 1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !254
  %i.pl = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 3
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !254
  %i.pm = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 %i.kh ; 4 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !254
  store i8 %i.po, ptr %i.pm, align 1, !tbaa !254
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.bd ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !254
  %i.pr = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 5
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !254
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !254
  %i.pu = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 6
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !254
  %i.pv = getelementptr i8, ptr %i.pp, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !254
  %i.px = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 7
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !254
  %i.py = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 8 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.kh ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader119.i.i.loopexit.unr-lcssa, label %.lr.ph180.i.i, !llvm.loop !1468

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i
  %.1186.i.i = phi i32 [ %i.qy, %.lr.ph187.i.i ], [ %.1186.i.i.unr, %.lr.ph187.i.i.prol.loopexit ]
  %.1237185.i.i = phi ptr [ %i.qx, %.lr.ph187.i.i ], [ %.1237185.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 3 uses
  %.16184.i.i = phi ptr [ %i.qw, %.lr.ph187.i.i ], [ %.16184.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 9 uses
  %i.qa = load i8, ptr %.1237185.i.i, align 1, !tbaa !254
  store i8 %i.qa, ptr %.16184.i.i, align 1, !tbaa !254
  %i.qb = getelementptr inbounds nuw i8, ptr %.1237185.i.i, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !254
  %i.qd = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !254
  %i.qe = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 2
  %i.qf = getelementptr inbounds nuw i8, ptr %.1237185.i.i, i64 %i.bd ; 3 uses
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !254
  store i8 %i.qg, ptr %i.qe, align 1, !tbaa !254
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !254
  %i.qj = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 3
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !254
  %i.qk = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.bd ; 3 uses
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !254
  store i8 %i.qm, ptr %i.qk, align 1, !tbaa !254
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !254
  %i.qp = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 5
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !254
  %i.qq = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 6
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.bd ; 3 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !254
  store i8 %i.qs, ptr %i.qq, align 1, !tbaa !254
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 1
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !254
  %i.qv = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 7
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !254
  %i.qw = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 8 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.bd
  %i.qy = add nuw nsw i32 %.1186.i.i, 4           ; 2 uses
  %exitcond236.not.i.i.3 = icmp eq i32 %i.qy, %.sroa.speculated
  br i1 %exitcond236.not.i.i.3, label %.loopexit120.i.i, label %.lr.ph187.i.i, !llvm.loop !1469

.loopexit120.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph175.i.i
  br i1 %lcmp.mod418.not, label %.loopexit120.i.i, label %.lr.ph175.i.i.epil.preheader

.lr.ph175.i.i.epil.preheader:                     ; preds = %.loopexit120.i.i.loopexit.unr-lcssa, %.lr.ph175.preheader.i.i
  %.13174.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph175.preheader.i.i ], [ %i.nv, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0245172.i.i.epil.init = phi ptr [ %i.nc, %.lr.ph175.preheader.i.i ], [ %i.nw, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod420)
  %i.qz = load i64, ptr %.0245172.i.i.epil.init, align 1, !tbaa !254
  %i.ra = insertelement <2 x i64> poison, i64 %i.qz, i64 0
  %i.rb = getelementptr inbounds nuw i8, ptr %.0245172.i.i.epil.init, i64 8
  %i.rc = load i64, ptr %i.rb, align 1, !tbaa !254
  %i.rd = insertelement <2 x i64> poison, i64 %i.rc, i64 0
  %i.re = bitcast <2 x i64> %i.ra to <8 x i16>
  %i.rf = bitcast <2 x i64> %i.rd to <8 x i16>
  %i.rg = shufflevector <8 x i16> %i.re, <8 x i16> %i.rf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.rg, ptr %.13174.i.i.epil.init, align 1, !tbaa !254
  %i.rh = getelementptr inbounds nuw i8, ptr %.13174.i.i.epil.init, i64 16
  br label %.loopexit120.i.i

.loopexit120.i.i:                                 ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i, %.lr.ph175.i.i.epil.preheader, %.loopexit120.i.i.loopexit.unr-lcssa, %.preheader119.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i, %bb.e
  %.17.i.i = phi ptr [ %.12190.i.i, %bb.e ], [ %.15.lcssa.i.i, %.preheader119.i.i ], [ %i.rh, %.lr.ph175.i.i.epil.preheader ], [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i ], [ %i.nv, %.loopexit120.i.i.loopexit.unr-lcssa ], [ %.lcssa402.unr, %.lr.ph187.i.i.prol.loopexit ], [ %i.qw, %.lr.ph187.i.i ] ; 2 uses
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 2 ; 3 uses
  %i.ri = icmp slt i64 %indvars.iv.next238.i.i, %invariant.op277.i.i
  br i1 %i.ri, label %bb.e, label %.preheader.loopexit.i.i, !llvm.loop !1470

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.mq, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa404, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.rj = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1471
  %i.rk = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1471
  %i.rl = mul i64 %i.rk, %i.kz
  %i.rm = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1471
  %i.rn = mul i64 %i.rl, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 %indvars.iv241.i.i
  %i.rq = getelementptr i8, ptr %i.rp, i64 %i.mr  ; 2 uses
  br i1 %i.mt, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.so, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.rq, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.sn, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter428 = phi i32 [ %niter428.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.rr = load i8, ptr %.0232200.i.i, align 1, !tbaa !254
  store i8 %i.rr, ptr %.21199.i.i, align 1, !tbaa !254
  %i.rs = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.rt = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.bd ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !254
  store i8 %i.ru, ptr %i.rs, align 1, !tbaa !254
  %i.rv = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.bd ; 2 uses
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !254
  store i8 %i.rx, ptr %i.rv, align 1, !tbaa !254
  %i.ry = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.bd ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !254
  store i8 %i.sa, ptr %i.ry, align 1, !tbaa !254
  %i.sb = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.bd ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !254
  store i8 %i.sd, ptr %i.sb, align 1, !tbaa !254
  %i.se = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.bd ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !254
  store i8 %i.sg, ptr %i.se, align 1, !tbaa !254
  %i.sh = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.bd ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !254
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !254
  %i.sk = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.bd ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !254
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !254
  %i.sn = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.bd ; 2 uses
  %niter428.next.7 = add i32 %niter428, 8         ; 2 uses
  %niter428.ncmp.7 = icmp eq i32 %niter428.next.7, %unroll_iter427
  br i1 %niter428.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1474

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod424.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.rq, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.so, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.sn, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod426)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.sr, %bb.f ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.sq, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.sp = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !254
  store i8 %i.sp, ptr %.21199.i.i.epil, align 1, !tbaa !254
  %i.sq = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.bd
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter423
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.f, !llvm.loop !1475

..loopexit_crit_edge.i.i:                         ; preds = %bb.f, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa404 = phi ptr [ %i.sn, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.sq, %bb.f ]
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1459

bb.g:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.ss = load i32, ptr %i.p, align 4, !tbaa !75  ; 9 uses
  %i.st = load i32, ptr %i.q, align 8, !tbaa !66  ; 9 uses
  %i.su = add nsw i32 %i.aq, -1
  %i.sv = mul nsw i32 %i.as, %i.su
  %.neg.i.i = xor i32 %i.sv, -1
  %i.sw = add i32 %i.ss, %.neg.i.i
  %i.sx = sdiv i32 %i.sw, %i.au                   ; 3 uses
  %i.sy = add nsw i32 %i.sx, 1                    ; 10 uses
  %i.sz = mul nsw i32 %i.ar, %i.aq                ; 56 uses
  %i.ta = icmp eq i32 %i.sx, 0
  br i1 %i.ta, label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.tb = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sx, i1 true) ; 3 uses
  %i.tc = sub nuw nsw i32 32, %i.tb
  %i.td = icmp eq i32 %i.tb, 0
  %i.te = shl nuw i32 1, %i.tc
  %i.tf = select i1 %i.td, i32 0, i32 %i.te
  %i.tg = sub i32 %i.tf, %i.sy
  %i.th = zext i32 %i.tg to i64
  %i.ti = shl nuw i64 %i.th, 32
  %i.tj = zext i32 %i.sy to i64
  %i.tk = udiv i64 %i.ti, %i.tj
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = add i32 %i.tl, 1
  %i.tn = xor i32 %i.tb, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i

_ZN17FastDivider_epu32C2Ej.exit1130.i.i:          ; preds = %bb.h, %bb.g
  %.012.i1127.i.i = phi i32 [ %i.tn, %bb.h ], [ 0, %bb.g ]
  %.011.i1128.i.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  %.0.i1129.i.i = phi i32 [ %i.tm, %bb.h ], [ 1, %bb.g ]
  %i.to = insertelement <4 x i32> poison, i32 %.0.i1129.i.i, i64 0
  %i.tp = shufflevector <4 x i32> %i.to, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1128.i.i, i64 0 ; 2 uses
  %i.tr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1127.i.i, i64 0 ; 3 uses
  %i.ts = icmp sgt i32 %.sroa.speculated64, 7
  br i1 %i.ts, label %.lr.ph181.i.i, label %.preheader144.i.i

.lr.ph181.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %i.tt = bitcast <4 x i32> %i.tp to <2 x i64>
  %i.tu = and <2 x i64> %i.tt, splat (i64 4294967295) ; 4 uses
  %i.tv = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tw = insertelement <4 x i32> poison, i32 %i.sy, i64 0
  %i.tx = shufflevector <4 x i32> %i.tw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ty = bitcast <4 x i32> %i.tx to <2 x i64>
  %i.tz = and <2 x i64> %i.ty, splat (i64 4294967295) ; 4 uses
  %i.ua = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ub = shufflevector <4 x i32> %i.ua, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uc = bitcast <4 x i32> %i.ub to <2 x i64>
  %i.ud = and <2 x i64> %i.uc, splat (i64 4294967295) ; 4 uses
  %i.ue = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.uf = shufflevector <4 x i32> %i.ue, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ug = bitcast <4 x i32> %i.uf to <2 x i64>
  %i.uh = and <2 x i64> %i.ug, splat (i64 4294967295) ; 4 uses
  %i.ui = insertelement <4 x i32> poison, i32 %i.ss, i64 0
  %i.uj = shufflevector <4 x i32> %i.ui, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uk = bitcast <4 x i32> %i.uj to <2 x i64>
  %i.ul = and <2 x i64> %i.uk, splat (i64 4294967295) ; 4 uses
  %i.um = icmp eq i32 %i.st, 1                    ; 2 uses
  %i.un = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.uo = mul i32 %i.ss, %i.at                    ; 8 uses
  %i.up = trunc i64 %i.bd to i32                  ; 4 uses
  %i.uq = icmp ne i32 %i.st, 8
  %i.ur = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.us = icmp slt i32 %.sroa.speculated, 8
  %i.ut = sdiv i32 %i.y, 8                        ; 2 uses
  %brmerge266.i.i = or i1 %i.us, %i.uq            ; 2 uses
  br label %bb.i

.preheader144.i.i:                                ; preds = %.loopexit146.i.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %.01096.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %i.apy, %.loopexit146.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %i.ap, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %.10.i.i, %.loopexit146.i.i ] ; 2 uses
  %i.uu = or disjoint i32 %.01096.lcssa.i.i, 3
  %i.uv = icmp slt i32 %i.uu, %.sroa.speculated64
  br i1 %i.uv, label %.lr.ph212.i.i, label %.preheader133.i.i

.lr.ph212.i.i:                                    ; preds = %.preheader144.i.i
  %i.uw = bitcast <4 x i32> %i.tp to <2 x i64>
  %i.ux = and <2 x i64> %i.uw, splat (i64 4294967295) ; 2 uses
  %i.uy = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uz = insertelement <4 x i32> poison, i32 %i.sy, i64 0
  %i.va = shufflevector <4 x i32> %i.uz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vb = bitcast <4 x i32> %i.va to <2 x i64>
  %i.vc = and <2 x i64> %i.vb, splat (i64 4294967295) ; 2 uses
  %i.vd = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ve = shufflevector <4 x i32> %i.vd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vf = bitcast <4 x i32> %i.ve to <2 x i64>
  %i.vg = and <2 x i64> %i.vf, splat (i64 4294967295) ; 2 uses
  %i.vh = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.vi = shufflevector <4 x i32> %i.vh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vj = bitcast <4 x i32> %i.vi to <2 x i64>
  %i.vk = and <2 x i64> %i.vj, splat (i64 4294967295) ; 2 uses
  %i.vl = insertelement <4 x i32> poison, i32 %i.ss, i64 0
  %i.vm = shufflevector <4 x i32> %i.vl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vn = bitcast <4 x i32> %i.vm to <2 x i64>
  %i.vo = and <2 x i64> %i.vn, splat (i64 4294967295) ; 2 uses
  %i.vp = icmp eq i32 %i.st, 1                    ; 2 uses
  %i.vq = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.vr = mul i32 %i.ss, %i.at                    ; 8 uses
  %i.vs = trunc i64 %i.bd to i32                  ; 4 uses
  %i.vt = icmp ne i32 %i.st, 8
  %i.vu = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.vv = icmp slt i32 %.sroa.speculated, 8
  %i.vw = sdiv i32 %i.y, 8                        ; 2 uses
  %brmerge272.i.i = or i1 %i.vv, %i.vt            ; 2 uses
  br label %bb.o

bb.i:                                             ; preds = %.loopexit146.i.i, %.lr.ph181.i.i
  %.0180.i.i = phi ptr [ %i.ap, %.lr.ph181.i.i ], [ %.10.i.i, %.loopexit146.i.i ] ; 8 uses
  %.01096179.i.i = phi i32 [ 0, %.lr.ph181.i.i ], [ %i.apy, %.loopexit146.i.i ] ; 2 uses
  %i.vx = add nsw i32 %.01096179.i.i, %i.w
  %i.vy = insertelement <4 x i32> poison, i32 %i.vx, i64 0
  %i.vz = shufflevector <4 x i32> %i.vy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = add <4 x i32> %i.vz, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.wb = bitcast <4 x i32> %i.wa to <2 x i64>
  %i.wc = add <4 x i32> %i.vz, <i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.wd = bitcast <4 x i32> %i.wc to <2 x i64>
  %i.we = bitcast <4 x i32> %i.wa to <2 x i64>
  %i.wf = and <2 x i64> %i.we, splat (i64 4294967295)
  %i.wg = mul nuw <2 x i64> %i.wf, %i.tu
  %i.wh = lshr <2 x i64> %i.wg, splat (i64 32)
  %i.wi = lshr <2 x i64> %i.wb, splat (i64 32)
  %i.wj = mul nuw <2 x i64> %i.wi, %i.tu
  %i.wk = and <2 x i64> %i.wj, splat (i64 -4294967296)
  %i.wl = or disjoint <2 x i64> %i.wh, %i.wk
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>    ; 2 uses
  %i.wn = sub <4 x i32> %i.wa, %i.wm
  %i.wo = lshr <4 x i32> %i.wn, %i.tv
  %i.wp = add <4 x i32> %i.wo, %i.wm
  %i.wq = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.wp, <4 x i32> %i.tr) ; 2 uses
  %i.wr = bitcast <4 x i32> %i.wc to <2 x i64>
  %i.ws = and <2 x i64> %i.wr, splat (i64 4294967295)
  %i.wt = mul nuw <2 x i64> %i.ws, %i.tu
  %i.wu = lshr <2 x i64> %i.wt, splat (i64 32)
  %i.wv = lshr <2 x i64> %i.wd, splat (i64 32)
  %i.ww = mul nuw <2 x i64> %i.wv, %i.tu
  %i.wx = and <2 x i64> %i.ww, splat (i64 -4294967296)
  %i.wy = or disjoint <2 x i64> %i.wu, %i.wx
  %i.wz = bitcast <2 x i64> %i.wy to <4 x i32>    ; 2 uses
  %i.xa = sub <4 x i32> %i.wc, %i.wz
  %i.xb = lshr <4 x i32> %i.xa, %i.tv
  %i.xc = add <4 x i32> %i.xb, %i.wz
  %i.xd = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.xc, <4 x i32> %i.tr) ; 2 uses
  %i.xe = bitcast <4 x i32> %i.wq to <2 x i64>
  %i.xf = and <2 x i64> %i.xe, splat (i64 4294967295) ; 2 uses
  %i.xg = mul nuw <2 x i64> %i.xf, %i.tz
  %i.xh = and <4 x i32> %i.wq, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner322 = shufflevector <4 x i32> %i.xh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xi = bitcast <4 x i32> %.inner322 to <2 x i64> ; 2 uses
  %i.xj = mul nuw <2 x i64> %i.tz, %i.xi
  %i.xk = bitcast <2 x i64> %i.xg to <4 x i32>    ; 2 uses
  %i.xl = bitcast <2 x i64> %i.xj to <4 x i32>    ; 2 uses
  %i.xm = shufflevector <4 x i32> %i.xk, <4 x i32> %i.xl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.xn = bitcast <4 x i32> %i.xm to <2 x i64>
  %i.xo = shufflevector <4 x i32> %i.xk, <4 x i32> %i.xl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.xp = bitcast <4 x i32> %i.xo to <2 x i64>
  %i.xq = shufflevector <2 x i64> %i.xn, <2 x i64> %i.xp, <2 x i32> <i32 0, i32 2>
  %i.xr = bitcast <2 x i64> %i.xq to <4 x i32>
  %i.xs = sub <4 x i32> %i.wa, %i.xr              ; 2 uses
  %i.xt = bitcast <4 x i32> %i.xd to <2 x i64>
  %i.xu = and <2 x i64> %i.xt, splat (i64 4294967295) ; 2 uses
  %i.xv = mul nuw <2 x i64> %i.xu, %i.tz
  %i.xw = and <4 x i32> %i.xd, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner324 = shufflevector <4 x i32> %i.xw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xx = bitcast <4 x i32> %.inner324 to <2 x i64> ; 2 uses
  %i.xy = mul nuw <2 x i64> %i.tz, %i.xx
  %i.xz = bitcast <2 x i64> %i.xv to <4 x i32>    ; 2 uses
  %i.ya = bitcast <2 x i64> %i.xy to <4 x i32>    ; 2 uses
  %i.yb = shufflevector <4 x i32> %i.xz, <4 x i32> %i.ya, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yc = bitcast <4 x i32> %i.yb to <2 x i64>
  %i.yd = shufflevector <4 x i32> %i.xz, <4 x i32> %i.ya, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ye = bitcast <4 x i32> %i.yd to <2 x i64>
  %i.yf = shufflevector <2 x i64> %i.yc, <2 x i64> %i.ye, <2 x i32> <i32 0, i32 2>
  %i.yg = bitcast <2 x i64> %i.yf to <4 x i32>
  %i.yh = sub <4 x i32> %i.wc, %i.yg              ; 2 uses
  %i.yi = mul nuw <2 x i64> %i.xf, %i.ud
  %i.yj = mul nuw <2 x i64> %i.ud, %i.xi
  %i.yk = bitcast <2 x i64> %i.yi to <4 x i32>    ; 2 uses
  %i.yl = bitcast <2 x i64> %i.yj to <4 x i32>    ; 2 uses
  %i.ym = shufflevector <4 x i32> %i.yk, <4 x i32> %i.yl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yn = bitcast <4 x i32> %i.ym to <2 x i64>
  %i.yo = shufflevector <4 x i32> %i.yk, <4 x i32> %i.yl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.yp = bitcast <4 x i32> %i.yo to <2 x i64>
  %i.yq = shufflevector <2 x i64> %i.yn, <2 x i64> %i.yp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.yr = mul nuw <2 x i64> %i.xu, %i.ud
  %i.ys = mul nuw <2 x i64> %i.ud, %i.xx
  %i.yt = bitcast <2 x i64> %i.yr to <4 x i32>    ; 2 uses
  %i.yu = bitcast <2 x i64> %i.ys to <4 x i32>    ; 2 uses
  %i.yv = shufflevector <4 x i32> %i.yt, <4 x i32> %i.yu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yw = bitcast <4 x i32> %i.yv to <2 x i64>
  %i.yx = shufflevector <4 x i32> %i.yt, <4 x i32> %i.yu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.yy = bitcast <4 x i32> %i.yx to <2 x i64>
  %i.yz = shufflevector <2 x i64> %i.yw, <2 x i64> %i.yy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.za = bitcast <4 x i32> %i.xs to <2 x i64>
  %i.zb = and <2 x i64> %i.za, splat (i64 4294967295)
end_hunk_10
begin_hunk_11_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.en = trunc nuw i32 %i.em to i16
  store i16 %i.en, ptr %.012539.us46.i, align 2, !tbaa !394
  %i.eo = load i32, ptr %gep63.i, align 4, !tbaa !39
  %i.ep = lshr i32 %i.eo, 16
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 2
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !394
  %i.es = load i32, ptr %gep65.i, align 4, !tbaa !39
  %i.et = lshr i32 %i.es, 16
  %i.eu = trunc nuw i32 %i.et to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 4
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !394
  %i.ew = load i32, ptr %gep67.i, align 4, !tbaa !39
  %i.ex = lshr i32 %i.ew, 16
  %i.ey = trunc nuw i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 6
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !394
  %i.fa = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 8 ; 2 uses
  br i1 %exitcond.not.i, label %._crit_edge.us56.i, label %bb.d

bb.d:                                             ; preds = %.preheader18.us45.i
  %i.fb = getelementptr inbounds nuw i8, ptr %gep67.i, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %gep65.i, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %gep63.i, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !39
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = trunc nuw i32 %i.fg to i16
  store i16 %i.fh, ptr %i.fa, align 2, !tbaa !394
  %i.fi = load i32, ptr %i.fd, align 4, !tbaa !39
  %i.fj = lshr i32 %i.fi, 16
  %i.fk = trunc nuw i32 %i.fj to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 10
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !394
  %i.fm = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = trunc nuw i32 %i.fn to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 12
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !394
  %i.fq = load i32, ptr %i.fb, align 4, !tbaa !39
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 14
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !394
  %i.fu = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 16 ; 2 uses
  br i1 %exitcond.not.i.1, label %._crit_edge.us56.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fv = getelementptr inbounds nuw i8, ptr %gep67.i, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %gep65.i, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %gep63.i, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.ga = lshr i32 %i.fz, 16
  %i.gb = trunc nuw i32 %i.ga to i16
  store i16 %i.gb, ptr %i.fu, align 2, !tbaa !394
  %i.gc = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.gd = lshr i32 %i.gc, 16
  %i.ge = trunc nuw i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 18
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !394
  %i.gg = load i32, ptr %i.fw, align 4, !tbaa !39
  %i.gh = lshr i32 %i.gg, 16
  %i.gi = trunc nuw i32 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 20
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !394
  %i.gk = load i32, ptr %i.fv, align 4, !tbaa !39
  %i.gl = lshr i32 %i.gk, 16
  %i.gm = trunc nuw i32 %i.gl to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 22
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !394
  %i.go = getelementptr inbounds nuw i8, ptr %.012539.us46.i, i64 24
  br label %._crit_edge.us56.i

._crit_edge.us56.i:                               ; preds = %bb.e, %bb.d, %.preheader18.us45.i
  %.lcssa = phi ptr [ %i.fa, %.preheader18.us45.i ], [ %i.fu, %bb.d ], [ %i.go, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.gp = or disjoint i64 %indvars.iv.next.i, 3
  %i.gq = icmp samesign ult i64 %i.gp, %i.aa
  br i1 %i.gq, label %.preheader18.us45.i, label %.preheader17.loopexit105.i, !llvm.loop !1654

.preheader17.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.gr = trunc nuw nsw i64 %indvars.iv.next130.i to i32
  br label %.preheader17.i

.preheader17.loopexit105.i:                       ; preds = %._crit_edge.us56.i
  %i.gs = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %.lr.ph41.split.i, %.preheader17.loopexit105.i, %.preheader17.loopexit.i, %_ZN4ncnn3MatD2Ev.exit29
  %.0133.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.gs, %.preheader17.loopexit105.i ], [ %i.gr, %.preheader17.loopexit.i ], [ %i.y, %.lr.ph41.split.i ] ; 3 uses
  %.0125.lcssa.i = phi ptr [ %i.aw, %_ZN4ncnn3MatD2Ev.exit29 ], [ %.lcssa, %.preheader17.loopexit105.i ], [ %.2.lcssa.us.i, %.preheader17.loopexit.i ], [ %i.aw, %.lr.ph41.split.i ] ; 2 uses
  %i.gt = or disjoint i32 %.0133.lcssa.i, 1
  %i.gu = icmp slt i32 %i.gt, %.sroa.speculated57
  br i1 %i.gu, label %.lr.ph83.i, label %.preheader15.i

.lr.ph83.i:                                       ; preds = %.preheader17.i
  %i.gv = sext i32 %.077 to i64                   ; 2 uses
  %i.gw = icmp sgt i32 %.sroa.speculated, 3
  %i.gx = and i32 %.sroa.speculated, -4
  %i.gy = sext i32 %.0133.lcssa.i to i64
  %i.gz = sext i32 %i.ax to i64                   ; 2 uses
  br label %bb.f

.preheader15.loopexit.i:                          ; preds = %._crit_edge.i
  %i.ha = trunc nsw i64 %indvars.iv.next134.i to i32
  br label %.preheader15.i

.preheader15.i:                                   ; preds = %.preheader15.loopexit.i, %.preheader17.i
  %.1134.lcssa.i = phi i32 [ %.0133.lcssa.i, %.preheader17.i ], [ %i.ha, %.preheader15.loopexit.i ] ; 3 uses
  %.3.lcssa.i = phi ptr [ %.0125.lcssa.i, %.preheader17.i ], [ %.5.lcssa.i, %.preheader15.loopexit.i ] ; 2 uses
  %i.hb = icmp slt i32 %.1134.lcssa.i, %.sroa.speculated57
  br i1 %i.hb, label %.lr.ph102.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph102.i:                                      ; preds = %.preheader15.i
  %i.hc = sext i32 %.077 to i64                   ; 2 uses
  %i.hd = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.hd, label %.lr.ph90.us.preheader.i, label %.lr.ph102.split.i

.lr.ph90.us.preheader.i:                          ; preds = %.lr.ph102.i
  %i.he = and i32 %.sroa.speculated, 2147483644   ; 4 uses
  %i.hf = sext i32 %.1134.lcssa.i to i64
  %i.hg = sext i32 %i.ax to i64
  %.not61 = icmp eq i32 %i.he, %.sroa.speculated
  %i.hh = add nsw i32 %.sroa.speculated, -4       ; 2 uses
  %i.hi = lshr i32 %i.hh, 2                       ; 2 uses
  %i.hj = add nuw nsw i32 %i.hi, 1                ; 2 uses
  %i.hk = icmp eq i32 %i.hi, 0
  %unroll_iter = and i32 %i.hj, 2147483646
  %i.hl = and i32 %i.hh, 4
  %lcmp.mod.not.not = icmp eq i32 %i.hl, 0
  %lcmp.mod182 = trunc i32 %i.hj to i1
  %i.hm = or disjoint i32 %i.he, 1
  %i.hn = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.hm)
  %i.ho = and i32 %.sroa.speculated, 2147483644
  %i.hp = xor i32 %i.ho, -1
  %i.hq = add nsw i32 %i.hn, %i.hp                ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.hq, 7
  %n.vec = and i64 %i.hs, 8589934584              ; 5 uses
  %i.ht = trunc i64 %n.vec to i32
  %i.hu = add i32 %i.he, %i.ht
  %i.hv = shl nuw nsw i64 %n.vec, 2
  %i.hw = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br label %.lr.ph90.us.i

.lr.ph90.us.i:                                    ; preds = %._crit_edge98.us.i, %.lr.ph90.us.preheader.i
  %indvars.iv141.i = phi i64 [ %i.hf, %.lr.ph90.us.preheader.i ], [ %indvars.iv.next142.i, %._crit_edge98.us.i ] ; 2 uses
  %.6101.us.i = phi ptr [ %.3.lcssa.i, %.lr.ph90.us.preheader.i ], [ %.8.lcssa.us.i, %._crit_edge98.us.i ] ; 2 uses
  %i.hx = load ptr, ptr %8, align 8, !tbaa !18
  %i.hy = add nsw i64 %indvars.iv141.i, %i.z
  %i.hz = mul nsw i64 %i.hy, %i.hg
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.hc ; 2 uses
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph90.us.i.new

.lr.ph90.us.i.new:                                ; preds = %.lr.ph90.us.i, %.lr.ph90.us.i.new
  %.012387.us.i = phi ptr [ %i.ir, %.lr.ph90.us.i.new ], [ %i.ib, %.lr.ph90.us.i ] ; 3 uses
  %.786.us.i = phi ptr [ %i.iq, %.lr.ph90.us.i.new ], [ %.6101.us.i, %.lr.ph90.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph90.us.i.new ], [ 0, %.lr.ph90.us.i ]
  %i.ic = load <8 x i16>, ptr %.012387.us.i, align 1, !tbaa !254
  %i.id = shufflevector <8 x i16> %i.ic, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ie = bitcast <8 x i16> %i.id to <4 x float>
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ig = bitcast <4 x float> %i.if to <2 x i64>
  %i.ih = extractelement <2 x i64> %i.ig, i64 0
  store i64 %i.ih, ptr %.786.us.i, align 1, !tbaa !254
  %i.ii = getelementptr inbounds nuw i8, ptr %.786.us.i, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %.012387.us.i, i64 16
  %i.ik = load <8 x i16>, ptr %i.ij, align 1, !tbaa !254
  %i.il = shufflevector <8 x i16> %i.ik, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.im = bitcast <8 x i16> %i.il to <4 x float>
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.io = bitcast <4 x float> %i.in to <2 x i64>
  %i.ip = extractelement <2 x i64> %i.io, i64 0
  store i64 %i.ip, ptr %i.ii, align 1, !tbaa !254
  %i.iq = getelementptr inbounds nuw i8, ptr %.786.us.i, i64 16 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.012387.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader_crit_edge.us.i.unr-lcssa, label %.lr.ph90.us.i.new, !llvm.loop !1655

.lr.ph97.us.i:                                    ; preds = %.lr.ph97.us.i.preheader162, %.lr.ph97.us.i
  %.196.us.i = phi i32 [ %i.ix, %.lr.ph97.us.i ], [ %.196.us.i.ph, %.lr.ph97.us.i.preheader162 ]
  %.112495.us.i = phi ptr [ %i.iw, %.lr.ph97.us.i ], [ %.112495.us.i.ph, %.lr.ph97.us.i.preheader162 ] ; 2 uses
  %.894.us.i = phi ptr [ %i.iv, %.lr.ph97.us.i ], [ %.894.us.i.ph, %.lr.ph97.us.i.preheader162 ] ; 2 uses
  %i.is = load i32, ptr %.112495.us.i, align 4, !tbaa !39
  %i.it = lshr i32 %i.is, 16
  %i.iu = trunc nuw i32 %i.it to i16
  store i16 %i.iu, ptr %.894.us.i, align 2, !tbaa !394
  %i.iv = getelementptr inbounds nuw i8, ptr %.894.us.i, i64 2 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.112495.us.i, i64 4
  %i.ix = add nuw nsw i32 %.196.us.i, 1           ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %.sroa.speculated
  br i1 %i.iy, label %.lr.ph97.us.i, label %._crit_edge98.us.i, !llvm.loop !1656

._crit_edge98.us.i:                               ; preds = %.lr.ph97.us.i, %middle.block, %..preheader_crit_edge.us.i
  %.8.lcssa.us.i = phi ptr [ %.lcssa177, %..preheader_crit_edge.us.i ], [ %i.ji, %middle.block ], [ %i.iv, %.lr.ph97.us.i ]
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %i.ab
  br i1 %exitcond145.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph90.us.i, !llvm.loop !1657

..preheader_crit_edge.us.i.unr-lcssa:             ; preds = %.lr.ph90.us.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader_crit_edge.us.i

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.unr-lcssa, %.lr.ph90.us.i
  %.012387.us.i.epil.init = phi ptr [ %i.ib, %.lr.ph90.us.i ], [ %i.ir, %..preheader_crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.786.us.i.epil.init = phi ptr [ %.6101.us.i, %.lr.ph90.us.i ], [ %i.iq, %..preheader_crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod182)
  %i.iz = load <8 x i16>, ptr %.012387.us.i.epil.init, align 1, !tbaa !254
  %i.ja = shufflevector <8 x i16> %i.iz, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jb = bitcast <8 x i16> %i.ja to <4 x float>
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jd = bitcast <4 x float> %i.jc to <2 x i64>
  %i.je = extractelement <2 x i64> %i.jd, i64 0
  store i64 %i.je, ptr %.786.us.i.epil.init, align 1, !tbaa !254
  %i.jf = getelementptr inbounds nuw i8, ptr %.786.us.i.epil.init, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.012387.us.i.epil.init, i64 16
  br label %..preheader_crit_edge.us.i

..preheader_crit_edge.us.i:                       ; preds = %..preheader_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa177 = phi ptr [ %i.iq, %..preheader_crit_edge.us.i.unr-lcssa ], [ %i.jf, %.epil.preheader ] ; 4 uses
  %.lcssa176 = phi ptr [ %i.ir, %..preheader_crit_edge.us.i.unr-lcssa ], [ %i.jg, %.epil.preheader ] ; 3 uses
  br i1 %.not61, label %._crit_edge98.us.i, label %.lr.ph97.us.i.preheader

.lr.ph97.us.i.preheader:                          ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check, label %.lr.ph97.us.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.us.i.preheader
  %i.jh = getelementptr i8, ptr %.lcssa176, i64 %i.hv
  %i.ji = getelementptr i8, ptr %.lcssa177, i64 %i.hw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.lcssa176, i64 %i.jj ; 2 uses
  %i.jk = shl i64 %index, 1
  %next.gep140 = getelementptr i8, ptr %.lcssa177, i64 %i.jk ; 2 uses
  %i.jl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load141 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !39
  %i.jm = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.jn = lshr <4 x i32> %wide.load141, splat (i32 16)
  %i.jo = trunc nuw <4 x i32> %i.jm to <4 x i16>
  %i.jp = trunc nuw <4 x i32> %i.jn to <4 x i16>
  %i.jq = getelementptr i8, ptr %next.gep140, i64 8
  store <4 x i16> %i.jo, ptr %next.gep140, align 2, !tbaa !394
  store <4 x i16> %i.jp, ptr %i.jq, align 2, !tbaa !394
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !1658

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge98.us.i, label %.lr.ph97.us.i.preheader162

.lr.ph97.us.i.preheader162:                       ; preds = %.lr.ph97.us.i.preheader, %middle.block
  %.196.us.i.ph = phi i32 [ %i.he, %.lr.ph97.us.i.preheader ], [ %i.hu, %middle.block ]
  %.112495.us.i.ph = phi ptr [ %.lcssa176, %.lr.ph97.us.i.preheader ], [ %i.jh, %middle.block ]
  %.894.us.i.ph = phi ptr [ %.lcssa177, %.lr.ph97.us.i.preheader ], [ %i.ji, %middle.block ]
  br label %.lr.ph97.us.i

.lr.ph102.split.i:                                ; preds = %.lr.ph102.i
  %i.js = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.js, label %.preheader.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader.i:                           ; preds = %.lr.ph102.split.i
  %i.jt = sext i32 %.1134.lcssa.i to i64
  %i.ju = sext i32 %i.ax to i64
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !18
  %invariant.gep164.i = getelementptr [4 x i8], ptr %.pre.i, i64 %i.hc
  %exitcond136.not.i = icmp eq i32 %.sroa.speculated, 1
  %exitcond136.not.i.1 = icmp eq i32 %.sroa.speculated, 2
  br label %.preheader.i

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph83.i
  %indvars.iv133.i = phi i64 [ %i.gy, %.lr.ph83.i ], [ %indvars.iv.next134.i, %._crit_edge.i ] ; 2 uses
  %.382.i = phi ptr [ %.0125.lcssa.i, %.lr.ph83.i ], [ %.5.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.jv = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.jw = add nsw i64 %indvars.iv133.i, %i.z      ; 2 uses
  %i.jx = mul nsw i64 %i.jw, %i.gz
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jx
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.gv ; 2 uses
  %i.ka = add nsw i64 %i.jw, 1
  %i.kb = mul nsw i64 %i.ka, %i.gz
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.kb
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.gv ; 2 uses
  br i1 %i.gw, label %.lr.ph.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %.lr.ph.i, %bb.f
  %.0131.lcssa.i = phi ptr [ %i.jz, %bb.f ], [ %i.lf, %.lr.ph.i ] ; 3 uses
  %.0129.lcssa.i = phi ptr [ %i.kd, %bb.f ], [ %i.lg, %.lr.ph.i ] ; 3 uses
  %.0127.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.gx, %.lr.ph.i ] ; 4 uses
  %.4.lcssa.i = phi ptr [ %.382.i, %bb.f ], [ %i.le, %.lr.ph.i ] ; 4 uses
  %i.ke = icmp slt i32 %.0127.lcssa.i, %.sroa.speculated
  br i1 %i.ke, label %.lr.ph79.i.preheader, label %._crit_edge.i

.lr.ph79.i.preheader:                             ; preds = %.preheader16.i
  %i.kf = xor i32 %.0127.lcssa.i, -1
  %i.kg = add i32 %.sroa.speculated, %i.kf        ; 2 uses
  %i.kh = zext i32 %i.kg to i64
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check145 = icmp ult i32 %i.kg, 3
  br i1 %min.iters.check145, label %.lr.ph79.i.preheader163, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph79.i.preheader
  %n.vec147 = and i64 %i.ki, 8589934588           ; 4 uses
  %i.kj = shl nuw nsw i64 %n.vec147, 2            ; 3 uses
  %i.kk = getelementptr i8, ptr %.4.lcssa.i, i64 %i.kj ; 2 uses
  %i.kl = trunc i64 %n.vec147 to i32
  %i.km = add i32 %.0127.lcssa.i, %i.kl
  %i.kn = getelementptr i8, ptr %.0129.lcssa.i, i64 %i.kj
  %i.ko = getelementptr i8, ptr %.0131.lcssa.i, i64 %i.kj
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next155, %vector.body148 ] ; 2 uses
  %i.kp = shl i64 %index149, 2                    ; 3 uses
  %next.gep150 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.kp
  %next.gep151 = getelementptr i8, ptr %.0129.lcssa.i, i64 %i.kp
  %next.gep152 = getelementptr i8, ptr %.0131.lcssa.i, i64 %i.kp
  %wide.load153 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !39
  %wide.load154 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %i.kq = shufflevector <4 x i32> %wide.load153, <4 x i32> %wide.load154, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.kr = lshr <8 x i32> %i.kq, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.kr to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep150, align 2, !tbaa !394
  %index.next155 = add nuw i64 %index149, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next155, %n.vec147
  br i1 %i.ks, label %middle.block156, label %vector.body148, !llvm.loop !1659

middle.block156:                                  ; preds = %vector.body148
  %cmp.n157 = icmp eq i64 %i.ki, %n.vec147
  br i1 %cmp.n157, label %._crit_edge.i, label %.lr.ph79.i.preheader163

.lr.ph79.i.preheader163:                          ; preds = %.lr.ph79.i.preheader, %middle.block156
  %.578.i.ph = phi ptr [ %.4.lcssa.i, %.lr.ph79.i.preheader ], [ %i.kk, %middle.block156 ]
  %.112877.i.ph = phi i32 [ %.0127.lcssa.i, %.lr.ph79.i.preheader ], [ %i.km, %middle.block156 ]
  %.113076.i.ph = phi ptr [ %.0129.lcssa.i, %.lr.ph79.i.preheader ], [ %i.kn, %middle.block156 ]
  %.113275.i.ph = phi ptr [ %.0131.lcssa.i, %.lr.ph79.i.preheader ], [ %i.ko, %middle.block156 ]
  br label %.lr.ph79.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.471.i = phi ptr [ %i.le, %.lr.ph.i ], [ %.382.i, %bb.f ] ; 2 uses
  %.012770.i = phi i32 [ %i.lh, %.lr.ph.i ], [ 0, %bb.f ]
  %.012969.i = phi ptr [ %i.lg, %.lr.ph.i ], [ %i.kd, %bb.f ] ; 2 uses
  %.013168.i = phi ptr [ %i.lf, %.lr.ph.i ], [ %i.jz, %bb.f ] ; 2 uses
  %i.kt = load <4 x float>, ptr %.013168.i, align 1, !tbaa !254 ; 2 uses
  %i.ku = load <4 x float>, ptr %.012969.i, align 1, !tbaa !254 ; 2 uses
  %i.kv = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.kw = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.kx = bitcast <4 x float> %i.kv to <8 x i16>
  %i.ky = shufflevector <8 x i16> %i.kx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kz = bitcast <8 x i16> %i.ky to <4 x float>
  %i.la = bitcast <4 x float> %i.kw to <8 x i16>
  %i.lb = shufflevector <8 x i16> %i.la, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.lc = bitcast <8 x i16> %i.lb to <4 x float>
  %i.ld = shufflevector <4 x float> %i.kz, <4 x float> %i.lc, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ld, ptr %.471.i, align 1, !tbaa !254
  %i.le = getelementptr inbounds nuw i8, ptr %.471.i, i64 16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.013168.i, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.012969.i, i64 16 ; 2 uses
  %i.lh = add nuw nsw i32 %.012770.i, 4           ; 2 uses
  %i.li = or disjoint i32 %i.lh, 3
  %i.lj = icmp slt i32 %i.li, %.sroa.speculated
  br i1 %i.lj, label %.lr.ph.i, label %.preheader16.i, !llvm.loop !1660

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader163, %.lr.ph79.i
  %.578.i = phi ptr [ %i.lr, %.lr.ph79.i ], [ %.578.i.ph, %.lr.ph79.i.preheader163 ] ; 3 uses
  %.112877.i = phi i32 [ %i.lu, %.lr.ph79.i ], [ %.112877.i.ph, %.lr.ph79.i.preheader163 ]
  %.113076.i = phi ptr [ %i.lt, %.lr.ph79.i ], [ %.113076.i.ph, %.lr.ph79.i.preheader163 ] ; 2 uses
  %.113275.i = phi ptr [ %i.ls, %.lr.ph79.i ], [ %.113275.i.ph, %.lr.ph79.i.preheader163 ] ; 2 uses
  %i.lk = load i32, ptr %.113275.i, align 4, !tbaa !39
  %i.ll = lshr i32 %i.lk, 16
  %i.lm = trunc nuw i32 %i.ll to i16
  store i16 %i.lm, ptr %.578.i, align 2, !tbaa !394
  %i.ln = load i32, ptr %.113076.i, align 4, !tbaa !39
  %i.lo = lshr i32 %i.ln, 16
  %i.lp = trunc nuw i32 %i.lo to i16
  %i.lq = getelementptr inbounds nuw i8, ptr %.578.i, i64 2
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !394
  %i.lr = getelementptr inbounds nuw i8, ptr %.578.i, i64 4 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.113275.i, i64 4
  %i.lt = getelementptr inbounds nuw i8, ptr %.113076.i, i64 4
  %i.lu = add nuw nsw i32 %.112877.i, 1           ; 2 uses
  %exitcond132.not.i = icmp eq i32 %i.lu, %.sroa.speculated
  br i1 %exitcond132.not.i, label %._crit_edge.i, label %.lr.ph79.i, !llvm.loop !1661

._crit_edge.i:                                    ; preds = %.lr.ph79.i, %middle.block156, %.preheader16.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader16.i ], [ %i.kk, %middle.block156 ], [ %i.lr, %.lr.ph79.i ] ; 2 uses
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 2 ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv.next134.i, %invariant.op.i
  br i1 %i.lv, label %bb.f, label %.preheader15.loopexit.i, !llvm.loop !1662

.preheader.i:                                     ; preds = %._crit_edge98.i, %.preheader.preheader.i
  %indvars.iv137.i = phi i64 [ %i.jt, %.preheader.preheader.i ], [ %indvars.iv.next138.i, %._crit_edge98.i ] ; 2 uses
  %.6101.i = phi ptr [ %.3.lcssa.i, %.preheader.preheader.i ], [ %.lcssa175, %._crit_edge98.i ] ; 4 uses
  %i.lw = add nsw i64 %indvars.iv137.i, %i.z
  %i.lx = mul nsw i64 %i.lw, %i.ju
  %gep165.i = getelementptr [4 x i8], ptr %invariant.gep164.i, i64 %i.lx ; 3 uses
  %i.ly = load i32, ptr %gep165.i, align 4, !tbaa !39
  %i.lz = lshr i32 %i.ly, 16
  %i.ma = trunc nuw i32 %i.lz to i16
  store i16 %i.ma, ptr %.6101.i, align 2, !tbaa !394
  %i.mb = getelementptr inbounds nuw i8, ptr %.6101.i, i64 2 ; 2 uses
  br i1 %exitcond136.not.i, label %._crit_edge98.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.mc = getelementptr inbounds nuw i8, ptr %gep165.i, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !39
  %i.me = lshr i32 %i.md, 16
  %i.mf = trunc nuw i32 %i.me to i16
  store i16 %i.mf, ptr %i.mb, align 2, !tbaa !394
  %i.mg = getelementptr inbounds nuw i8, ptr %.6101.i, i64 4 ; 2 uses
  br i1 %exitcond136.not.i.1, label %._crit_edge98.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.mh = getelementptr inbounds nuw i8, ptr %gep165.i, i64 8
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !39
  %i.mj = lshr i32 %i.mi, 16
  %i.mk = trunc nuw i32 %i.mj to i16
  store i16 %i.mk, ptr %i.mg, align 2, !tbaa !394
  %i.ml = getelementptr inbounds nuw i8, ptr %.6101.i, i64 6
  br label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %bb.h, %bb.g, %.preheader.i
  %.lcssa175 = phi ptr [ %i.mb, %.preheader.i ], [ %i.mg, %bb.g ], [ %i.ml, %bb.h ]
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next138.i, %i.ab
  br i1 %exitcond140.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.i, !llvm.loop !1657

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge98.i, %._crit_edge98.us.i, %.lr.ph102.split.i, %.preheader15.i
  %i.mm = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.mn = add nsw i32 %i.mm, %.077                ; 2 uses
  %i.mo = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %i.mp = icmp slt i32 %i.mn, %i.mo
  br i1 %i.mp, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge, !llvm.loop !1663

._crit_edge81:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge81, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -100, 1) i32 @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %7) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !67
  %i.q = add nsw <2 x i32> %i.p, splat (i32 1)
  %i.r = sdiv <2 x i32> %i.q, splat (i32 2)       ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  %i.u = mul nsw i32 %i.t, %i.s                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !66
  %i.z = mul nsw i32 %i.y, %i.w                   ; 3 uses
  store i32 %i.z, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 %i.u, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !66
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 3 uses
  store i32 %i.ae, ptr %i.g, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %i.z, i32 noundef %i.u, i32 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.af = load i32, ptr %i.h, align 4, !tbaa !67  ; 2 uses
  %i.ag = add i32 %i.z, -1
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = sdiv i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.k, align 4, !tbaa !67
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !67  ; 4 uses
  %i.ak = add i32 %i.u, -1
  %i.al = add i32 %i.ak, %i.aj
  %i.am = sdiv i32 %i.al, %i.aj                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.an = load i32, ptr %i.j, align 4, !tbaa !67  ; 4 uses
  %i.ao = add i32 %i.ae, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = sdiv i32 %i.ap, %i.an                   ; 3 uses
  store i32 %i.aq, ptr %i.l, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ar = mul nsw i32 %i.an, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !229
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ar, i32 noundef 16, i32 noundef %i.aq, i32 noundef %i.am, i64 noundef 4, ptr noundef %i.at)
  %i.bb = load ptr, ptr %8, align 8, !tbaa !18
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread, label %_ZNK4ncnn3Mat5emptyEv.exit171

_ZNK4ncnn3Mat5emptyEv.exit171:                    ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bf = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.be, %i.bg
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.bj = mul nsw i32 %i.aq, %i.am                ; 2 uses
  store i32 %i.bj, ptr %i.m, align 4, !tbaa !67
  %i.bk = icmp sgt i32 %4, 1
  %i.bl = icmp slt i32 %i.bj, %4
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  %i.bm = shl nsw i32 %i.aj, 4
  %i.bn = mul nsw i32 %i.bm, %i.an                ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !229
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.bn, i64 noundef 4, ptr noundef %i.bo)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.d

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.c
  %i.bt = load ptr, ptr %9, align 8, !tbaa !18
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit170

_ZNK4ncnn3Mat5emptyEv.exit170:                    ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !68
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bv, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit170
  %i.ca = load i32, ptr %i.m, align 4, !tbaa !67
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %_ZN4ncnn3MatD2Ev.exit92.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit92.lr.ph:                    ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.d:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.av

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %_ZN4ncnn3MatD2Ev.exit92.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %.0194 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit92.lr.ph ], [ %i.ed, %_ZN4ncnn3MatD2Ev.exit91 ] ; 3 uses
  %i.ck = load i32, ptr %i.l, align 4, !tbaa !67  ; 2 uses
  %i.cl = sdiv i32 %.0194, %i.ck
  %i.cm = srem i32 %.0194, %i.ck
  %i.cn = load i32, ptr %i.i, align 4, !tbaa !67  ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.cl                ; 3 uses
  %i.cp = load i32, ptr %i.j, align 4, !tbaa !67  ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.cm                ; 3 uses
  %i.cr = load i32, ptr %i.f, align 4, !tbaa !67
  %i.cs = sub nsw i32 %i.cr, %i.co
  %.sroa.speculated191 = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cs) ; 2 uses
  %i.ct = load i32, ptr %i.g, align 4, !tbaa !67
  %i.cu = sub nsw i32 %i.ct, %i.cq
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cu) ; 2 uses
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.co, i32 noundef %.sroa.speculated191, i32 noundef %i.cq, i32 noundef %.sroa.speculated, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.cv = load i32, ptr %i.i, align 4, !tbaa !67
  %i.cw = sdiv i32 %i.co, %i.cv
  %i.cx = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1664
  %i.cy = load i64, ptr %i.ba, align 8, !tbaa !20, !noalias !1664
  %i.cz = sext i32 %i.cw to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = load i64, ptr %i.av, align 8, !tbaa !65, !noalias !1664 ; 3 uses
  %i.dc = mul i64 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc
end_hunk_11
begin_hunk_12_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.14:bb.a
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !39 ; 4 uses
  %i.ama = extractelement <2 x float> %i.akd, i64 0
  %.0350.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ama, float %i.alx) ; 2 uses
  %i.amb = fcmp fast ogt float %.0350.us.i, %i.alz
  %.1351478.us.i = select i1 %i.amb, float %i.alz, float %.0350.us.i
  %i.amc = extractelement <2 x float> %i.akd, i64 1
  %.0352.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.amc, float %i.alx) ; 2 uses
  %i.amd = fcmp fast ogt float %.0352.us.i, %i.alz
  %i.ame = insertelement <2 x float> poison, float %.1351478.us.i, i64 0
  %i.amf = insertelement <2 x float> %i.ame, float %.0352.us.i, i64 1 ; 2 uses
  br i1 %i.amd, label %bb.az, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

bb.az:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.i
  %i.amg = insertelement <2 x float> %i.amf, float %i.alz, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.i: ; preds = %bb.at
  %i.amh = load ptr, ptr %15, align 8, !tbaa !18
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !39
  %i.amj = fcmp fast ogt <2 x float> %i.akd, zeroinitializer
  %i.amk = insertelement <2 x float> poison, float %i.ami, i64 0
  %i.aml = shufflevector <2 x float> %i.amk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amm = select <2 x i1> %i.amj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aml
  %i.amn = fmul fast <2 x float> %i.amm, %i.akd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.i: ; preds = %bb.at
  %i.amo = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.akd, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.i, %bb.az, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i, %bb.ay, %bb.ax, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, %bb.at
  %i.amp = phi <2 x float> [ %i.aku, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i ], [ %i.amo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.i ], [ %i.amn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.i ], [ %i.amg, %bb.az ], [ %i.amf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.i ], [ %i.alv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.i ], [ %i.alp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i ], [ %i.alc, %bb.ay ], [ %i.aky, %bb.ax ], [ %i.akd, %bb.at ] ; 2 uses
  %i.amq = bitcast <2 x float> %i.amp to <4 x i16>
  %i.amr = extractelement <4 x i16> %i.amq, i64 1
  store i16 %i.amr, ptr %i.ajc, align 2, !tbaa !394
  br i1 %i.aje, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.ams = bitcast <2 x float> %i.amp to <4 x i16>
  %i.amt = extractelement <4 x i16> %i.ams, i64 3
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ajc, i64 2
  store i16 %i.amt, ptr %i.amu, align 2, !tbaa !394
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.amv = getelementptr inbounds [2 x i8], ptr %i.ajc, i64 %i.ahb
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.ajc, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.amv, %bb.bb ] ; 2 uses
  %i.amw = or disjoint i32 %i.aix, 1
  %.not348.us.1.i = icmp slt i32 %i.amw, %i.cc
  br i1 %.not348.us.1.i, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.amx = fadd fast float %i.aib, %i.ahk
  %i.amy = fsub fast float %i.amx, %i.aic
  %i.amz = fadd fast float %i.amy, %i.aid         ; 2 uses
  %i.ana = fsub fast float %i.amz, %i.ail
  %i.anb = insertelement <2 x float> poison, float %i.ahx, i64 0
  %i.anc = insertelement <2 x float> %i.anb, float %i.air, i64 1
  %i.and = insertelement <2 x float> poison, float %i.amz, i64 0
  %i.ane = insertelement <2 x float> %i.and, float %i.ana, i64 1
  %i.anf = fadd fast <2 x float> %i.anc, %i.ane
  %i.ang = insertelement <2 x float> poison, float %i.ail, i64 0
  %i.anh = insertelement <2 x float> %i.ang, float %i.ais, i64 1
  %i.ani = fadd fast <2 x float> %i.anf, %i.anh   ; 13 uses
  switch i32 %i.ca, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.1.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.1.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.1.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.1.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.1.i
    i32 6, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.anj = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !39 ; 5 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anj, i64 4
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !39 ; 3 uses
  %i.ann = fneg fast float %i.anm
  %i.ano = fdiv fast float %i.ann, %i.ank         ; 4 uses
  %i.anp = extractelement <2 x float> %i.ani, i64 0 ; 5 uses
  %i.anq = fcmp fast olt float %i.anp, %i.ano
  br i1 %i.anq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.anr = fdiv fast float 1.000000e+00, %i.ank
  %i.ans = fadd fast float %i.ano, %i.anr
  %i.ant = fcmp fast ogt float %i.anp, %i.ans
  br i1 %i.ant, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.anu = fmul fast float %i.ank, %i.anp
  %i.anv = fadd fast float %i.anu, %i.anm
  %i.anw = fmul fast float %i.anv, %i.anp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %.1351472.us.1.i = phi float [ %i.anw, %bb.bg ], [ 0.000000e+00, %bb.be ], [ %i.anp, %bb.bf ] ; 2 uses
  %i.anx = extractelement <2 x float> %i.ani, i64 1 ; 4 uses
  %i.any = fcmp fast olt float %i.anx, %i.ano
  %i.anz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1351472.us.1.i, i64 0 ; 2 uses
  br i1 %i.any, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, label %bb.bh

bb.bh:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i
  %i.aoa = fdiv fast float 1.000000e+00, %i.ank
  %i.aob = fadd fast float %i.ano, %i.aoa
  %i.aoc = fcmp fast ogt float %i.anx, %i.aob
  %i.aod = insertelement <2 x float> %i.ani, float %.1351472.us.1.i, i64 0
  br i1 %i.aoc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aoe = fmul fast float %i.ank, %i.anx
  %i.aof = fadd fast float %i.aoe, %i.anm
  %i.aog = fmul fast float %i.aof, %i.anx
  %i.aoh = insertelement <2 x float> %i.anz, float %i.aog, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.1.i: ; preds = %bb.bd
  %i.aoi = extractelement <2 x float> %i.ani, i64 0
  %i.aoj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.aoi)
  %i.aok = extractelement <2 x float> %i.ani, i64 1
  %i.aol = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.aok)
  %i.aom = fadd fast float %i.aol, 1.000000e+00
  %i.aon = fadd fast float %i.aoj, 1.000000e+00
  %i.aoo = call fast float @llvm.log.f32(float %i.aom)
  %i.aop = call fast float @llvm.log.f32(float %i.aon)
  %i.aoq = call fast float @llvm.tanh.f32(float %i.aoo)
  %i.aor = call fast float @llvm.tanh.f32(float %i.aop)
  %i.aos = insertelement <2 x float> poison, float %i.aor, i64 0
  %i.aot = insertelement <2 x float> %i.aos, float %i.aoq, i64 1
  %i.aou = fmul fast <2 x float> %i.aot, %i.ani
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.1.i: ; preds = %bb.bd
  %i.aov = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ani, <2 x float> splat (float f0x42B0C0A5))
  %i.aow = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aov, <2 x float> splat (float f0xC2B0C0A5))
  %i.aox = fneg fast <2 x float> %i.aow
  %i.aoy = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aox)
  %i.aoz = fadd fast <2 x float> %i.aoy, splat (float 1.000000e+00)
  %i.apa = fdiv fast <2 x float> splat (float 1.000000e+00), %i.aoz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.1.i: ; preds = %bb.bd
  %i.apb = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !39 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  %i.ape = load float, ptr %i.apd, align 4, !tbaa !39 ; 4 uses
  %i.apf = extractelement <2 x float> %i.ani, i64 0
  %.0350.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.apf, float %i.apc) ; 2 uses
  %i.apg = fcmp fast ogt float %.0350.us.1.i, %i.ape
  %.1351478.us.1.i = select i1 %i.apg, float %i.ape, float %.0350.us.1.i
  %i.aph = extractelement <2 x float> %i.ani, i64 1
  %.0352.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.aph, float %i.apc) ; 2 uses
  %i.api = fcmp fast ogt float %.0352.us.1.i, %i.ape
  %i.apj = insertelement <2 x float> poison, float %.1351478.us.1.i, i64 0
  %i.apk = insertelement <2 x float> %i.apj, float %.0352.us.1.i, i64 1 ; 2 uses
  br i1 %i.api, label %bb.bj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

bb.bj:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.1.i
  %i.apl = insertelement <2 x float> %i.apk, float %i.ape, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.1.i: ; preds = %bb.bd
  %i.apm = load ptr, ptr %15, align 8, !tbaa !18
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !39
  %i.apo = fcmp fast ogt <2 x float> %i.ani, zeroinitializer
  %i.app = insertelement <2 x float> poison, float %i.apn, i64 0
  %i.apq = shufflevector <2 x float> %i.app, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apr = select <2 x i1> %i.apo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.apq
  %i.aps = fmul fast <2 x float> %i.apr, %i.ani
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.1.i: ; preds = %bb.bd
  %i.apt = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ani, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.1.i, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.1.i, %bb.bi, %bb.bh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i, %bb.bd
  %i.apu = phi <2 x float> [ %i.anz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.1.i ], [ %i.apt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.1.i ], [ %i.aps, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.1.i ], [ %i.apl, %bb.bj ], [ %i.apk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.1.i ], [ %i.apa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.1.i ], [ %i.aou, %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.1.i ], [ %i.aoh, %bb.bi ], [ %i.aod, %bb.bh ], [ %i.ani, %bb.bd ] ; 2 uses
  %i.apv = bitcast <2 x float> %i.apu to <4 x i16>
  %i.apw = extractelement <4 x i16> %i.apv, i64 1
  store i16 %i.apw, ptr %.1.us.i, align 2, !tbaa !394
  br i1 %i.aje, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i
  %i.apx = bitcast <2 x float> %i.apu to <4 x i16>
  %i.apy = extractelement <4 x i16> %i.apx, i64 3
  %i.apz = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 2
  store i16 %i.apy, ptr %i.apz, align 2, !tbaa !394
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, %bb.bc
  %indvars.iv.next610.i = add nuw nsw i64 %indvars.iv609.i, 1 ; 2 uses
  %exitcond613.not.i = icmp eq i64 %indvars.iv.next610.i, %wide.trip.count612.i
  br i1 %exitcond613.not.i, label %._crit_edge.us563.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1721

._crit_edge.us563.i:                              ; preds = %bb.bl
  %indvars.iv.next615.i = add nuw nsw i64 %indvars.iv614.i, 1 ; 2 uses
  %exitcond618.not.i = icmp eq i64 %indvars.iv.next615.i, %i.bs
  br i1 %exitcond618.not.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.ar, !llvm.loop !1722

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aqa = phi i32 [ %i.arx, %.noexc ], [ %.pre159, %.noexc.preheader ] ; 2 uses
  %i.aqb = phi i32 [ %i.arz, %.noexc ], [ %i.by, %.noexc.preheader ]
  %.0152 = phi i32 [ %i.ary, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.aqc = sub nsw i32 %i.aqb, %.0152
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqa, i32 %i.aqc)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.aqd = load i32, ptr %3, align 4, !tbaa !67
  %i.aqe = sdiv i32 %i.ba, %i.aqd
  %i.aqf = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1723
  %i.aqg = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !1723
  %i.aqh = sext i32 %i.aqe to i64
  %i.aqi = mul i64 %i.aqg, %i.aqh
  %i.aqj = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1723 ; 3 uses
  %i.aqk = mul i64 %i.aqi, %i.aqj
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqk
  %i.aqm = load i32, ptr %i.s, align 8, !tbaa !66, !noalias !1723
  %i.aqn = load ptr, ptr %i.t, align 8, !tbaa !17, !noalias !1723
  %i.aqo = sdiv i32 %.0152, %i.aqa
  %i.aqp = sext i32 %i.aqo to i64                 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !11, !alias.scope !1726
  store i64 %i.aqj, ptr %i.v, align 8, !tbaa !65, !alias.scope !1726
  store i32 %i.aqm, ptr %i.w, align 8, !tbaa !66, !alias.scope !1726
  store ptr %i.aqn, ptr %i.x, align 8, !tbaa !17, !alias.scope !1726
  store i32 2, ptr %i.y, align 8, !tbaa !227, !alias.scope !1726
  %i.aqq = load <2 x i32>, ptr %i.o, align 4, !tbaa !67, !noalias !1723
  %i.aqr = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1723
  %i.aqs = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1723
  %i.aqt = sext i32 %i.aqs to i64
  %i.aqu = sext i32 %i.aqr to i64
  %i.aqv = mul nsw i64 %i.aqu, %i.aqt             ; 2 uses
  %i.aqw = mul i64 %i.aqj, %i.aqv
  %i.aqx = mul i64 %i.aqw, %i.aqp
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqx
  store ptr %i.aqy, ptr %16, align 8, !tbaa !18, !alias.scope !1726
  %i.aqz = shufflevector <2 x i32> %i.aqq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ara = shufflevector <4 x i32> %i.aqz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ara, ptr %i.z, align 4, !tbaa !67, !alias.scope !1726
  store i64 %i.aqv, ptr %i.aa, align 8, !tbaa !20, !alias.scope !1726
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.arb = load i32, ptr %7, align 4, !tbaa !67
  %i.arc = sdiv i32 %.047153, %i.arb
  %i.ard = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1729
  %i.are = load i64, ptr %i.ad, align 8, !tbaa !20, !noalias !1729
  %i.arf = sext i32 %i.arc to i64
  %i.arg = mul i64 %i.are, %i.arf
  %i.arh = load i64, ptr %i.ae, align 8, !tbaa !65, !noalias !1729 ; 3 uses
  %i.ari = mul i64 %i.arg, %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ard, i64 %i.ari
  %i.ark = load i32, ptr %i.af, align 8, !tbaa !66, !noalias !1729
  %i.arl = load ptr, ptr %i.ag, align 8, !tbaa !17, !noalias !1729
  store ptr null, ptr %i.ah, align 8, !tbaa !11
  store i64 %i.arh, ptr %i.ai, align 8, !tbaa !65
  store i32 %i.ark, ptr %i.aj, align 8, !tbaa !66
  store ptr %i.arl, ptr %i.ak, align 8, !tbaa !17
  store i32 2, ptr %i.al, align 8, !tbaa !227
  %i.arm = load <2 x i32>, ptr %i.ab, align 4, !tbaa !67, !noalias !1729
  %i.arn = load i32, ptr %i.ac, align 8, !tbaa !76, !noalias !1729
  %i.aro = load i32, ptr %i.ab, align 4, !tbaa !75, !noalias !1729
  %i.arp = sext i32 %i.aro to i64
  %i.arq = sext i32 %i.arn to i64
  %i.arr = mul nsw i64 %i.arq, %i.arp             ; 2 uses
  %i.ars = mul i64 %i.arh, %i.arr
  %i.art = mul i64 %i.ars, %i.aqp
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.art
  store ptr %i.aru, ptr %17, align 8, !tbaa !18
  %i.arv = shufflevector <2 x i32> %i.arm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.arw = shufflevector <4 x i32> %i.arv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.arw, ptr %i.am, align 4, !tbaa !67
  store i64 %i.arr, ptr %i.an, align 8, !tbaa !20, !alias.scope !1732
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.bi, i32 noundef 16, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0152, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.arx = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.ary = add nsw i32 %i.arx, %.0152             ; 2 uses
  %i.arz = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.asa = icmp slt i32 %i.ary, %i.arz
  br i1 %i.asa, label %.noexc, label %._crit_edge, !llvm.loop !1735

_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge.us563.i, %.lr.ph560.i, %.preheader.i
  %i.asb = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.asc = add nsw i32 %i.asb, %.047153           ; 2 uses
  %i.asd = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.ase = icmp slt i32 %i.asc, %i.asd
  br i1 %i.ase, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1736

._crit_edge158:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge158, %bb.a
  ret void

bb.bn:                                            ; preds = %bb.c
  %i.asf = landingpad { ptr, i32 }
          catch ptr null
  %i.asg = extractvalue { ptr, i32 } %i.asf, 0
  call void @__clang_call_terminate(ptr %i.asg) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not167 = icmp sgt i32 %i.k, %i.j
  br i1 %.not167, label %._crit_edge170, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge170

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.nt, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0168 = phi i32 [ %i.nu, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0168, 2
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = shl i32 %i.t, 4
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.3
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.nq, %.thread.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.3 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 7 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1737
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1737
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1737
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1737 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 1                    ; 4 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ax ; 9 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !67   ; 25 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 8 uses
  %i.be = add nsw i32 %i.av, 2                    ; 8 uses
  %i.bf = add nsw i32 %i.av, 3                    ; 8 uses
  %i.bg = sext i32 %i.az to i64                   ; 3 uses
  %i.bh = icmp slt i32 %i.aq, %i.az
  br i1 %i.bh, label %bb.c, label %.thread
end_hunk_12
begin_hunk_13_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdk, i64 4
  %i.cdn = load float, ptr %i.cdm, align 4, !tbaa !39 ; 5 uses
  %i.cdo = fneg fast float %i.cdn
  %i.cdp = fdiv fast float %i.cdo, %i.cdl         ; 8 uses
  %i.cdq = extractelement <4 x float> %i.cdj, i64 2 ; 5 uses
  %i.cdr = fcmp fast olt float %i.cdq, %i.cdp
  br i1 %i.cdr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.cds = fdiv fast float 1.000000e+00, %i.cdl
  %i.cdt = fadd fast float %i.cdp, %i.cds
  %i.cdu = fcmp fast ogt float %i.cdq, %i.cdt
  br i1 %i.cdu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.cdv = fmul fast float %i.cdl, %i.cdq
  %i.cdw = fadd fast float %i.cdv, %i.cdn
  %i.cdx = fmul fast float %i.cdw, %i.cdq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3: ; preds = %bb.dh, %bb.dg, %bb.df
  %.17021218.us.i.3 = phi float [ %i.cdx, %bb.dh ], [ 0.000000e+00, %bb.df ], [ %i.cdq, %bb.dg ]
  %i.cdy = extractelement <4 x float> %i.cdj, i64 1 ; 5 uses
  %i.cdz = fcmp fast olt float %i.cdy, %i.cdp
  br i1 %i.cdz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3, label %bb.di

bb.di:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3
  %i.cea = fdiv fast float 1.000000e+00, %i.cdl
  %i.ceb = fadd fast float %i.cdp, %i.cea
  %i.cec = fcmp fast ogt float %i.cdy, %i.ceb
  br i1 %i.cec, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ced = fmul fast float %i.cdl, %i.cdy
  %i.cee = fadd fast float %i.ced, %i.cdn
  %i.cef = fmul fast float %i.cee, %i.cdy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3: ; preds = %bb.dj, %bb.di, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3
  %.17041241.us.i.3 = phi float [ %i.cef, %bb.dj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3 ], [ %i.cdy, %bb.di ]
  %i.ceg = extractelement <4 x float> %i.cdj, i64 0 ; 5 uses
  %i.ceh = fcmp fast olt float %i.ceg, %i.cdp
  br i1 %i.ceh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3, label %bb.dk

bb.dk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3
  %i.cei = fdiv fast float 1.000000e+00, %i.cdl
  %i.cej = fadd fast float %i.cdp, %i.cei
  %i.cek = fcmp fast ogt float %i.ceg, %i.cej
  br i1 %i.cek, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cel = fmul fast float %i.cdl, %i.ceg
  %i.cem = fadd fast float %i.cel, %i.cdn
  %i.cen = fmul fast float %i.cem, %i.ceg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3: ; preds = %bb.dl, %bb.dk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3
  %.17061277.us.i.3 = phi float [ %i.cen, %bb.dl ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3 ], [ %i.ceg, %bb.dk ]
  %i.ceo = extractelement <4 x float> %i.cdj, i64 3 ; 4 uses
  %i.cep = fcmp fast olt float %i.ceo, %i.cdp
  %i.ceq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i.3, i64 0
  %i.cer = insertelement <4 x float> %i.ceq, float %.17041241.us.i.3, i64 1
  %i.ces = insertelement <4 x float> %i.cer, float %.17021218.us.i.3, i64 2 ; 3 uses
  br i1 %i.cep, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.dm

bb.dm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3
  %i.cet = fdiv fast float 1.000000e+00, %i.cdl
  %i.ceu = fadd fast float %i.cdp, %i.cet
  %i.cev = fcmp fast ogt float %i.ceo, %i.ceu
  %i.cew = shufflevector <4 x float> %i.ces, <4 x float> %i.cdj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.cev, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.cex = fmul fast float %i.cdl, %i.ceo
  %i.cey = fadd fast float %i.cex, %i.cdn
  %i.cez = fmul fast float %i.cey, %i.ceo
  %i.cfa = insertelement <4 x float> %i.ces, float %i.cez, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3: ; preds = %bb.de
  %i.cfb = extractelement <4 x float> %i.cdj, i64 2
  %i.cfc = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cfb)
  %i.cfd = extractelement <4 x float> %i.cdj, i64 1
  %i.cfe = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cfd)
  %i.cff = extractelement <4 x float> %i.cdj, i64 0
  %i.cfg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cff)
  %i.cfh = extractelement <4 x float> %i.cdj, i64 3
  %i.cfi = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cfh)
  %i.cfj = fadd fast float %i.cfi, 1.000000e+00
  %i.cfk = fadd fast float %i.cfc, 1.000000e+00
  %i.cfl = fadd fast float %i.cfe, 1.000000e+00
  %i.cfm = fadd fast float %i.cfg, 1.000000e+00
  %i.cfn = call fast float @llvm.log.f32(float %i.cfj)
  %i.cfo = call fast float @llvm.log.f32(float %i.cfk)
  %i.cfp = call fast float @llvm.log.f32(float %i.cfl)
  %i.cfq = call fast float @llvm.log.f32(float %i.cfm)
  %i.cfr = call fast float @llvm.tanh.f32(float %i.cfn)
  %i.cfs = call fast float @llvm.tanh.f32(float %i.cfo)
  %i.cft = call fast float @llvm.tanh.f32(float %i.cfp)
  %i.cfu = call fast float @llvm.tanh.f32(float %i.cfq)
  %i.cfv = insertelement <4 x float> poison, float %i.cfu, i64 0
  %i.cfw = insertelement <4 x float> %i.cfv, float %i.cft, i64 1
  %i.cfx = insertelement <4 x float> %i.cfw, float %i.cfs, i64 2
  %i.cfy = insertelement <4 x float> %i.cfx, float %i.cfr, i64 3
  %i.cfz = fmul fast <4 x float> %i.cfy, %i.cdj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3: ; preds = %bb.de
  %i.cga = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cdj, <4 x float> splat (float f0x42B0C0A5))
  %i.cgb = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cga, <4 x float> splat (float f0xC2B0C0A5))
  %i.cgc = fneg fast <4 x float> %i.cgb
  %i.cgd = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cgc)
  %i.cge = fadd fast <4 x float> %i.cgd, splat (float 1.000000e+00)
  %i.cgf = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cge
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3: ; preds = %bb.de
  %i.cgg = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.cgh = load float, ptr %i.cgg, align 4, !tbaa !39 ; 3 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cgg, i64 4
  %i.cgj = load float, ptr %i.cgi, align 4, !tbaa !39 ; 5 uses
  %i.cgk = shufflevector <4 x float> %i.cdj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cgl = insertelement <2 x float> poison, float %i.cgh, i64 0
  %i.cgm = shufflevector <2 x float> %i.cgl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgn = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cgk, <2 x float> %i.cgm) ; 2 uses
  %i.cgo = insertelement <2 x float> poison, float %i.cgj, i64 0
  %i.cgp = shufflevector <2 x float> %i.cgo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgq = fcmp fast ogt <2 x float> %i.cgn, %i.cgp
  %i.cgr = select <2 x i1> %i.cgq, <2 x float> %i.cgp, <2 x float> %i.cgn
  %i.cgs = extractelement <4 x float> %i.cdj, i64 0
  %.0705.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cgs, float %i.cgh) ; 2 uses
  %i.cgt = fcmp fast ogt float %.0705.us.i.3, %i.cgj
  %.17061287.us.i.3 = select i1 %i.cgt, float %i.cgj, float %.0705.us.i.3
  %i.cgu = extractelement <4 x float> %i.cdj, i64 3
  %.0707.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cgu, float %i.cgh) ; 2 uses
  %i.cgv = fcmp fast ogt float %.0707.us.i.3, %i.cgj
  %i.cgw = insertelement <4 x float> poison, float %.17061287.us.i.3, i64 0
  %i.cgx = shufflevector <2 x float> %i.cgr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cgy = shufflevector <4 x float> %i.cgw, <4 x float> %i.cgx, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cgz = insertelement <4 x float> %i.cgy, float %.0707.us.i.3, i64 3 ; 2 uses
  br i1 %i.cgv, label %bb.do, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

bb.do:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3
  %i.cha = insertelement <4 x float> %i.cgz, float %i.cgj, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3: ; preds = %bb.de
  %i.chb = load ptr, ptr %15, align 8, !tbaa !18
  %i.chc = load float, ptr %i.chb, align 4, !tbaa !39
  %i.chd = fcmp fast ogt <4 x float> %i.cdj, zeroinitializer
  %i.che = insertelement <4 x float> poison, float %i.chc, i64 0
  %i.chf = shufflevector <4 x float> %i.che, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chg = select <4 x i1> %i.chd, <4 x float> splat (float 1.000000e+00), <4 x float> %i.chf
  %i.chh = fmul fast <4 x float> %i.chg, %i.cdj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3: ; preds = %bb.de
  %i.chi = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cdj, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3, %bb.do, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3, %bb.dn, %bb.dm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3, %bb.de
  %i.chj = phi <4 x float> [ %i.ces, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3 ], [ %i.chi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3 ], [ %i.chh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3 ], [ %i.cha, %bb.do ], [ %i.cgz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3 ], [ %i.cgf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3 ], [ %i.cfz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3 ], [ %i.cfa, %bb.dn ], [ %i.cew, %bb.dm ], [ %i.cdj, %bb.de ] ; 4 uses
  %i.chk = bitcast <4 x float> %i.chj to <8 x i16>
  %i.chl = extractelement <8 x i16> %i.chk, i64 5
  store i16 %i.chl, ptr %.1.us.i.2, align 2, !tbaa !394
  br i1 %i.bmo, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  %i.chm = bitcast <4 x float> %i.chj to <8 x i16>
  %i.chn = extractelement <8 x i16> %i.chm, i64 3
  %i.cho = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 2
  store i16 %i.chn, ptr %i.cho, align 2, !tbaa !394
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  br i1 %i.bmq, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.chp = bitcast <4 x float> %i.chj to <8 x i16>
  %i.chq = extractelement <8 x i16> %i.chp, i64 1
  %i.chr = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 4
  store i16 %i.chq, ptr %i.chr, align 2, !tbaa !394
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  br i1 %i.bms, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.chs = bitcast <4 x float> %i.chj to <8 x i16>
  %i.cht = extractelement <8 x i16> %i.chs, i64 7
  %i.chu = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 6
  store i16 %i.cht, ptr %i.chu, align 2, !tbaa !394
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt, %bb.dd
  %indvars.iv.next1448.i = add nuw nsw i64 %indvars.iv1447.i, 1 ; 2 uses
  %exitcond1451.not.i = icmp eq i64 %indvars.iv.next1448.i, %wide.trip.count1450.i
  br i1 %exitcond1451.not.i, label %._crit_edge.us1398.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1779

._crit_edge.us1398.i:                             ; preds = %bb.du
  %indvars.iv.next1453.i = add nuw nsw i64 %indvars.iv1452.i, 1 ; 2 uses
  %exitcond1456.not.i = icmp eq i64 %indvars.iv.next1453.i, %i.dh
  br i1 %exitcond1456.not.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.ba, !llvm.loop !1780

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.chv = phi i32 [ %i.cjs, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 2 uses
  %i.chw = phi i32 [ %i.cju, %.noexc ], [ %i.dn, %.noexc.preheader ]
  %.0133 = phi i32 [ %i.cjt, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.chx = sub nsw i32 %i.chw, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.chv, i32 %i.chx)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.chy = load i32, ptr %3, align 4, !tbaa !67
  %i.chz = sdiv i32 %i.cp, %i.chy
  %i.cia = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1781
  %i.cib = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1781
  %i.cic = sext i32 %i.chz to i64
  %i.cid = mul i64 %i.cib, %i.cic
  %i.cie = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1781 ; 3 uses
  %i.cif = mul i64 %i.cid, %i.cie
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cia, i64 %i.cif
  %i.cih = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1781
  %i.cii = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1781
  %i.cij = sdiv i32 %.0133, %i.chv
  %i.cik = sext i32 %i.cij to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1784
  store i64 %i.cie, ptr %i.w, align 8, !tbaa !65, !alias.scope !1784
  store i32 %i.cih, ptr %i.x, align 8, !tbaa !66, !alias.scope !1784
  store ptr %i.cii, ptr %i.y, align 8, !tbaa !17, !alias.scope !1784
  store i32 2, ptr %i.z, align 8, !tbaa !227, !alias.scope !1784
  %i.cil = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1781
  %i.cim = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1781
  %i.cin = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1781
  %i.cio = sext i32 %i.cin to i64
  %i.cip = sext i32 %i.cim to i64
  %i.ciq = mul nsw i64 %i.cip, %i.cio             ; 2 uses
  %i.cir = mul i64 %i.cie, %i.ciq
  %i.cis = mul i64 %i.cir, %i.cik
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cig, i64 %i.cis
  store ptr %i.cit, ptr %16, align 8, !tbaa !18, !alias.scope !1784
  %i.ciu = shufflevector <2 x i32> %i.cil, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.civ = shufflevector <4 x i32> %i.ciu, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.civ, ptr %i.aa, align 4, !tbaa !67, !alias.scope !1784
  store i64 %i.ciq, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.ciw = load i32, ptr %7, align 4, !tbaa !67
  %i.cix = sdiv i32 %.047134, %i.ciw
  %i.ciy = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1787
  %i.ciz = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1787
  %i.cja = sext i32 %i.cix to i64
  %i.cjb = mul i64 %i.ciz, %i.cja
  %i.cjc = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1787 ; 3 uses
  %i.cjd = mul i64 %i.cjb, %i.cjc
  %i.cje = getelementptr inbounds nuw i8, ptr %i.ciy, i64 %i.cjd
  %i.cjf = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1787
  %i.cjg = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1787
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.cjc, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.cjf, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.cjg, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !227
  %i.cjh = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1787
  %i.cji = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1787
  %i.cjj = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1787
  %i.cjk = sext i32 %i.cjj to i64
  %i.cjl = sext i32 %i.cji to i64
  %i.cjm = mul nsw i64 %i.cjl, %i.cjk             ; 2 uses
  %i.cjn = mul i64 %i.cjc, %i.cjm
  %i.cjo = mul i64 %i.cjn, %i.cik
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cje, i64 %i.cjo
  store ptr %i.cjp, ptr %17, align 8, !tbaa !18
  %i.cjq = shufflevector <2 x i32> %i.cjh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cjr = shufflevector <4 x i32> %i.cjq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cjr, ptr %i.an, align 4, !tbaa !67
  store i64 %i.cjm, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1790
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.cx, i32 noundef 36, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated120, i32 noundef %.0133, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.cjs = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.cjt = add nsw i32 %i.cjs, %.0133             ; 2 uses
  %i.cju = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.cjv = icmp slt i32 %i.cjt, %i.cju
  br i1 %i.cjv, label %.noexc, label %._crit_edge, !llvm.loop !1793

_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge.us1398.i, %.lr.ph1395.i, %.preheader.i
  %i.cjw = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.cjx = add nsw i32 %i.cjw, %.047134           ; 2 uses
  %i.cjy = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.cjz = icmp slt i32 %i.cjx, %i.cjy
  br i1 %i.cjz, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1794

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.dw:                                            ; preds = %bb.c
  %i.cka = landingpad { ptr, i32 }
          catch ptr null
  %i.ckb = extractvalue { ptr, i32 } %i.cka, 0
  call void @__clang_call_terminate(ptr %i.ckb) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.co

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not262 = icmp sgt i32 %i.k, %i.j
  br i1 %.not262, label %._crit_edge265, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge265

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.amn, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0162263 = phi i32 [ %i.amo, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0162263, 2
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.amk, %.thread.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1795
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1795
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1795
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1795 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %13, align 4, !tbaa !67   ; 61 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 12 uses
  %i.be = or disjoint i32 %i.av, 2                ; 12 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 12 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 12 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 12 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
end_hunk_13
begin_hunk_14_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
_ZL13activation_ssfiRKN4ncnn3MatE.exit821.thread.us.i: ; preds = %bb.co, %bb.cn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit822.thread.us.i
  %.110472380.us.i = phi float [ %i.bva, %bb.co ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit822.thread.us.i ], [ %i.but, %bb.cn ]
  %i.bvb = extractelement <2 x float> %i.btg, i64 0 ; 4 uses
  %i.bvc = fcmp fast olt float %i.bvb, %i.btm
  %i.bvd = insertelement <4 x float> poison, float %.110472380.us.i, i64 0
  %i.bve = insertelement <4 x float> %i.bvd, float %.110452318.us.i, i64 1
  %i.bvf = insertelement <4 x float> %i.bve, float %.110432269.us.i, i64 2
  %i.bvg = insertelement <4 x float> %i.bvf, float %.110412233.us.i, i64 3 ; 3 uses
  %i.bvh = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.110392210.us.i, i64 1 ; 2 uses
  br i1 %i.bvc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.cp

bb.cp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit821.thread.us.i
  %i.bvi = fdiv fast float 1.000000e+00, %i.bti
  %i.bvj = fadd fast float %i.btm, %i.bvi
  %i.bvk = fcmp fast ogt float %i.bvb, %i.bvj
  %i.bvl = insertelement <2 x float> %i.btg, float %.110392210.us.i, i64 1
  br i1 %i.bvk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.bvm = fmul fast float %i.bti, %i.bvb
  %i.bvn = fadd fast float %i.bvm, %i.btk
  %i.bvo = fmul fast float %i.bvn, %i.bvb
  %i.bvp = insertelement <2 x float> %i.bvh, float %i.bvo, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2226.us.i: ; preds = %bb.cd
  %i.bvq = extractelement <2 x float> %i.btg, i64 1
  %i.bvr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bvq)
  %i.bvs = extractelement <4 x float> %i.bte, i64 3
  %i.bvt = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bvs)
  %i.bvu = extractelement <4 x float> %i.bte, i64 2
  %i.bvv = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bvu)
  %i.bvw = extractelement <4 x float> %i.bte, i64 1
  %i.bvx = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bvw)
  %i.bvy = extractelement <4 x float> %i.bte, i64 0
  %i.bvz = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bvy)
  %i.bwa = fadd fast float %i.bvt, 1.000000e+00
  %i.bwb = fadd fast float %i.bvv, 1.000000e+00
  %i.bwc = fadd fast float %i.bvx, 1.000000e+00
  %i.bwd = fadd fast float %i.bvz, 1.000000e+00
  %i.bwe = call fast float @llvm.log.f32(float %i.bwa)
  %i.bwf = call fast float @llvm.log.f32(float %i.bwb)
  %i.bwg = call fast float @llvm.log.f32(float %i.bwc)
  %i.bwh = call fast float @llvm.log.f32(float %i.bwd)
  %i.bwi = call fast float @llvm.tanh.f32(float %i.bwe)
  %i.bwj = call fast float @llvm.tanh.f32(float %i.bwf)
  %i.bwk = call fast float @llvm.tanh.f32(float %i.bwg)
  %i.bwl = call fast float @llvm.tanh.f32(float %i.bwh)
  %i.bwm = insertelement <4 x float> poison, float %i.bwl, i64 0
  %i.bwn = insertelement <4 x float> %i.bwm, float %i.bwk, i64 1
  %i.bwo = insertelement <4 x float> %i.bwn, float %i.bwj, i64 2
  %i.bwp = insertelement <4 x float> %i.bwo, float %i.bwi, i64 3
  %i.bwq = fmul fast <4 x float> %i.bwp, %i.bte
  %i.bwr = extractelement <2 x float> %i.btg, i64 0
  %i.bws = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bwr)
  %i.bwt = fadd fast float %i.bws, 1.000000e+00
  %i.bwu = fadd fast float %i.bvr, 1.000000e+00
  %i.bwv = call fast float @llvm.log.f32(float %i.bwt)
  %i.bww = call fast float @llvm.log.f32(float %i.bwu)
  %i.bwx = call fast float @llvm.tanh.f32(float %i.bwv)
  %i.bwy = call fast float @llvm.tanh.f32(float %i.bww)
  %i.bwz = insertelement <2 x float> poison, float %i.bwx, i64 0
  %i.bxa = insertelement <2 x float> %i.bwz, float %i.bwy, i64 1
  %i.bxb = fmul fast <2 x float> %i.bxa, %i.btg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2223.us.i: ; preds = %bb.cd
  %i.bxc = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.btg, <2 x float> splat (float f0x42B0C0A5))
  %i.bxd = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bte, <4 x float> splat (float f0x42B0C0A5))
  %i.bxe = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bxd, <4 x float> splat (float f0xC2B0C0A5))
  %i.bxf = fneg fast <4 x float> %i.bxe
  %i.bxg = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bxf)
  %i.bxh = fadd fast <4 x float> %i.bxg, splat (float 1.000000e+00)
  %i.bxi = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bxh
  %i.bxj = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bxc, <2 x float> splat (float f0xC2B0C0A5))
  %i.bxk = fneg fast <2 x float> %i.bxj
  %i.bxl = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bxk)
  %i.bxm = fadd fast <2 x float> %i.bxl, splat (float 1.000000e+00)
  %i.bxn = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bxm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2214.us.i: ; preds = %bb.cd
  %i.bxo = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bxp = load float, ptr %i.bxo, align 4, !tbaa !39 ; 3 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxo, i64 4
  %i.bxr = load float, ptr %i.bxq, align 4, !tbaa !39 ; 5 uses
  %i.bxs = extractelement <2 x float> %i.btg, i64 1
  %.01038.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bxs, float %i.bxp) ; 2 uses
  %i.bxt = fcmp fast ogt float %.01038.us.i, %i.bxr
  %.110392216.us.i = select i1 %i.bxt, float %i.bxr, float %.01038.us.i
  %i.bxu = insertelement <4 x float> poison, float %i.bxp, i64 0
  %i.bxv = shufflevector <4 x float> %i.bxu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxw = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bte, <4 x float> %i.bxv) ; 2 uses
  %i.bxx = insertelement <4 x float> poison, float %i.bxr, i64 0
  %i.bxy = shufflevector <4 x float> %i.bxx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bxz = fcmp fast ogt <4 x float> %i.bxw, %i.bxy
  %i.bya = select <4 x i1> %i.bxz, <4 x float> %i.bxy, <4 x float> %i.bxw ; 2 uses
  %i.byb = extractelement <2 x float> %i.btg, i64 0
  %.01048.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.byb, float %i.bxp) ; 2 uses
  %i.byc = fcmp fast ogt float %.01048.us.i, %i.bxr
  %i.byd = insertelement <2 x float> poison, float %.01048.us.i, i64 0
  %i.bye = insertelement <2 x float> %i.byd, float %.110392216.us.i, i64 1 ; 2 uses
  br i1 %i.byc, label %bb.cr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

bb.cr:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2214.us.i
  %i.byf = insertelement <2 x float> %i.bye, float %i.bxr, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2220.us.i: ; preds = %bb.cd
  %i.byg = load ptr, ptr %15, align 8, !tbaa !18
  %i.byh = load float, ptr %i.byg, align 4, !tbaa !39 ; 2 uses
  %i.byi = fcmp fast ogt <2 x float> %i.btg, zeroinitializer
  %i.byj = fcmp fast ogt <4 x float> %i.bte, zeroinitializer
  %i.byk = insertelement <4 x float> poison, float %i.byh, i64 0
  %i.byl = shufflevector <4 x float> %i.byk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bym = select <4 x i1> %i.byj, <4 x float> splat (float 1.000000e+00), <4 x float> %i.byl
  %i.byn = fmul fast <4 x float> %i.bym, %i.bte
  %i.byo = insertelement <2 x float> poison, float %i.byh, i64 0
  %i.byp = shufflevector <2 x float> %i.byo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byq = select <2 x i1> %i.byi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.byp
  %i.byr = fmul fast <2 x float> %i.byq, %i.btg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2217.us.i: ; preds = %bb.cd
  %i.bys = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bte, <4 x float> zeroinitializer)
  %i.byt = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.btg, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2217.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2220.us.i, %bb.cr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2214.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2223.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2226.us.i, %bb.cq, %bb.cp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit821.thread.us.i, %bb.cd
  %i.byu = phi <4 x float> [ %i.bvg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit821.thread.us.i ], [ %i.bys, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2217.us.i ], [ %i.byn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2220.us.i ], [ %i.bya, %bb.cr ], [ %i.bya, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2214.us.i ], [ %i.bxi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2223.us.i ], [ %i.bwq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2226.us.i ], [ %i.bvg, %bb.cq ], [ %i.bvg, %bb.cp ], [ %i.bte, %bb.cd ] ; 4 uses
  %i.byv = phi <2 x float> [ %i.bvh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit821.thread.us.i ], [ %i.byt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2217.us.i ], [ %i.byr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2220.us.i ], [ %i.byf, %bb.cr ], [ %i.bye, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2214.us.i ], [ %i.bxn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2223.us.i ], [ %i.bxb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2226.us.i ], [ %i.bvp, %bb.cq ], [ %i.bvl, %bb.cp ], [ %i.btg, %bb.cd ] ; 2 uses
  %i.byw = bitcast <2 x float> %i.byv to <4 x i16>
  %i.byx = extractelement <4 x i16> %i.byw, i64 3
  store i16 %i.byx, ptr %.07432538.us.i, align 2, !tbaa !394
  br i1 %i.brf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.byy = bitcast <4 x float> %i.byu to <8 x i16>
  %i.byz = extractelement <8 x i16> %i.byy, i64 7
  %i.bza = getelementptr inbounds nuw i8, ptr %.07432538.us.i, i64 2
  store i16 %i.byz, ptr %i.bza, align 2, !tbaa !394
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  br i1 %i.brh, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.bzb = bitcast <4 x float> %i.byu to <8 x i16>
  %i.bzc = extractelement <8 x i16> %i.bzb, i64 5
  %i.bzd = getelementptr inbounds nuw i8, ptr %.07432538.us.i, i64 4
  store i16 %i.bzc, ptr %i.bzd, align 2, !tbaa !394
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.brj, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.bze = bitcast <4 x float> %i.byu to <8 x i16>
  %i.bzf = extractelement <8 x i16> %i.bze, i64 3
  %i.bzg = getelementptr inbounds nuw i8, ptr %.07432538.us.i, i64 6
  store i16 %i.bzf, ptr %i.bzg, align 2, !tbaa !394
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %i.brl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.bzh = bitcast <4 x float> %i.byu to <8 x i16>
  %i.bzi = extractelement <8 x i16> %i.bzh, i64 1
  %i.bzj = getelementptr inbounds nuw i8, ptr %.07432538.us.i, i64 8
  store i16 %i.bzi, ptr %i.bzj, align 2, !tbaa !394
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %i.brn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.bzk = bitcast <2 x float> %i.byv to <4 x i16>
  %i.bzl = extractelement <4 x i16> %i.bzk, i64 1
  %i.bzm = getelementptr inbounds nuw i8, ptr %.07432538.us.i, i64 10
  store i16 %i.bzl, ptr %i.bzm, align 2, !tbaa !394
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.bzn = getelementptr inbounds [2 x i8], ptr %.07432538.us.i, i64 %i.bny
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cc
  %.1.us.i = phi ptr [ %.07432538.us.i, %bb.cc ], [ %i.bzn, %bb.db ]
  %indvars.iv.next2599.i = add nuw nsw i64 %indvars.iv2598.i, 1 ; 2 uses
  %exitcond2601.not.i = icmp eq i64 %indvars.iv.next2599.i, 6
  br i1 %exitcond2601.not.i, label %bb.dd, label %bb.cc, !llvm.loop !1844

bb.dd:                                            ; preds = %bb.dc
  %indvars.iv.next2603.i = add nuw nsw i64 %indvars.iv2602.i, 1 ; 2 uses
  %exitcond2606.not.i = icmp eq i64 %indvars.iv.next2603.i, %wide.trip.count2605.i
  br i1 %exitcond2606.not.i, label %._crit_edge.us2550.i, label %bb.ca, !llvm.loop !1845

._crit_edge.us2550.i:                             ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %indvars.iv.next2608.i = add nuw nsw i64 %indvars.iv2607.i, 1 ; 2 uses
  %exitcond2611.not.i = icmp eq i64 %indvars.iv.next2608.i, %i.cd
  br i1 %exitcond2611.not.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.by, !llvm.loop !1846

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bzo = phi i32 [ %i.cbl, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 2 uses
  %i.bzp = phi i32 [ %i.cbn, %.noexc ], [ %i.cj, %.noexc.preheader ]
  %.0133 = phi i32 [ %i.cbm, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bzq = sub nsw i32 %i.bzp, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bzo, i32 %i.bzq)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.bzr = load i32, ptr %3, align 4, !tbaa !67
  %i.bzs = sdiv i32 %i.bl, %i.bzr
  %i.bzt = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1847
  %i.bzu = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1847
  %i.bzv = sext i32 %i.bzs to i64
  %i.bzw = mul i64 %i.bzu, %i.bzv
  %i.bzx = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !1847 ; 3 uses
  %i.bzy = mul i64 %i.bzw, %i.bzx
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzt, i64 %i.bzy
  %i.caa = load i32, ptr %i.u, align 8, !tbaa !66, !noalias !1847
  %i.cab = load ptr, ptr %i.v, align 8, !tbaa !17, !noalias !1847
  %i.cac = sdiv i32 %.0133, %i.bzo
  %i.cad = sext i32 %i.cac to i64                 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !11, !alias.scope !1850
  store i64 %i.bzx, ptr %i.x, align 8, !tbaa !65, !alias.scope !1850
  store i32 %i.caa, ptr %i.y, align 8, !tbaa !66, !alias.scope !1850
  store ptr %i.cab, ptr %i.z, align 8, !tbaa !17, !alias.scope !1850
  store i32 2, ptr %i.aa, align 8, !tbaa !227, !alias.scope !1850
  %i.cae = load <2 x i32>, ptr %i.q, align 4, !tbaa !67, !noalias !1847
  %i.caf = load i32, ptr %i.r, align 8, !tbaa !76, !noalias !1847
  %i.cag = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !1847
  %i.cah = sext i32 %i.cag to i64
  %i.cai = sext i32 %i.caf to i64
  %i.caj = mul nsw i64 %i.cai, %i.cah             ; 2 uses
  %i.cak = mul i64 %i.bzx, %i.caj
  %i.cal = mul i64 %i.cak, %i.cad
  %i.cam = getelementptr inbounds nuw i8, ptr %i.bzz, i64 %i.cal
  store ptr %i.cam, ptr %16, align 8, !tbaa !18, !alias.scope !1850
  %i.can = shufflevector <2 x i32> %i.cae, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cao = shufflevector <4 x i32> %i.can, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cao, ptr %i.ab, align 4, !tbaa !67, !alias.scope !1850
  store i64 %i.caj, ptr %i.ac, align 8, !tbaa !20, !alias.scope !1850
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.cap = load i32, ptr %7, align 4, !tbaa !67
  %i.caq = sdiv i32 %.047134, %i.cap
  %i.car = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1853
  %i.cas = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !1853
  %i.cat = sext i32 %i.caq to i64
  %i.cau = mul i64 %i.cas, %i.cat
  %i.cav = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !1853 ; 3 uses
  %i.caw = mul i64 %i.cau, %i.cav
  %i.cax = getelementptr inbounds nuw i8, ptr %i.car, i64 %i.caw
  %i.cay = load i32, ptr %i.ah, align 8, !tbaa !66, !noalias !1853
  %i.caz = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !1853
  store ptr null, ptr %i.aj, align 8, !tbaa !11
  store i64 %i.cav, ptr %i.ak, align 8, !tbaa !65
  store i32 %i.cay, ptr %i.al, align 8, !tbaa !66
  store ptr %i.caz, ptr %i.am, align 8, !tbaa !17
  store i32 2, ptr %i.an, align 8, !tbaa !227
  %i.cba = load <2 x i32>, ptr %i.ad, align 4, !tbaa !67, !noalias !1853
  %i.cbb = load i32, ptr %i.ae, align 8, !tbaa !76, !noalias !1853
  %i.cbc = load i32, ptr %i.ad, align 4, !tbaa !75, !noalias !1853
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = sext i32 %i.cbb to i64
  %i.cbf = mul nsw i64 %i.cbe, %i.cbd             ; 2 uses
  %i.cbg = mul i64 %i.cav, %i.cbf
  %i.cbh = mul i64 %i.cbg, %i.cad
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cax, i64 %i.cbh
  store ptr %i.cbi, ptr %17, align 8, !tbaa !18
  %i.cbj = shufflevector <2 x i32> %i.cba, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cbk = shufflevector <4 x i32> %i.cbj, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cbk, ptr %i.ao, align 4, !tbaa !67
  store i64 %i.cbf, ptr %i.ap, align 8, !tbaa !20, !alias.scope !1856
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.bt, i32 noundef 64, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated120, i32 noundef %.0133, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.cbl = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.cbm = add nsw i32 %i.cbl, %.0133             ; 2 uses
  %i.cbn = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.cbo = icmp slt i32 %i.cbm, %i.cbn
  br i1 %i.cbo, label %.noexc, label %._crit_edge, !llvm.loop !1859

_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge.us2550.i, %.lr.ph2547.i, %.preheader.i
  %i.cbp = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.cbq = add nsw i32 %i.cbp, %.047134           ; 2 uses
  %i.cbr = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.cbs = icmp slt i32 %i.cbq, %i.cbr
  br i1 %i.cbs, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1860

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.df:                                            ; preds = %bb.c
  %i.cbt = landingpad { ptr, i32 }
          catch ptr null
  %i.cbu = extractvalue { ptr, i32 } %i.cbt, 0
  call void @__clang_call_terminate(ptr %i.cbu) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [4 x float]]], align 16 ; 67 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.es

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !67
  %i.l = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not378 = icmp sgt i32 %i.l, %i.k
  br i1 %.not378, label %._crit_edge381, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.w = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split.preheader, label %._crit_edge381

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 784
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 928
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 816
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 720
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 608
end_hunk_14
begin_hunk_15_@_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined:bb.a

_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i:        ; preds = %.lr.ph181.i.split.us15.i
  %i.kd = add nsw i64 %i.hh, 4                    ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.kd)
  %i.ke = xor i64 %i.hh, -1
  %i.kf = add nsw i64 %smax.i, %i.ke
  %i.kg = and i64 %i.kf, -4
  %i.kh = add i64 %i.kd, %i.kg
  br label %.preheader.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i:     ; preds = %.lr.ph181.i.split.us15.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1885
  %xtraiter133 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.ki = icmp ult i32 %.sroa.speculated, 4
  %unroll_iter139 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod135.not = icmp eq i32 %xtraiter133, 0
  %lcmp.mod138 = icmp ne i32 %xtraiter133, 0
  br label %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i

_ZN4ncnn3MatD2Ev.exit155.i.us.us.i:               ; preds = %.loopexit134.i.loopexit2.us.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i
  %i.kj = phi i64 [ %.lcssa123, %.loopexit134.i.loopexit2.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i ]
  %indvars.iv219.i.us16.us.i = phi i64 [ %indvars.iv.next220.i.us20.us.i, %.loopexit134.i.loopexit2.us.us.i ], [ %i.hh, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i ] ; 2 uses
  %.5180.i.us17.us.i = phi ptr [ %.lcssa124, %.loopexit134.i.loopexit2.us.us.i ], [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i ] ; 2 uses
  %i.kk = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1885
  %i.kl = mul i64 %i.kj, %i.hg
  %i.km = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1885
  %i.kn = mul i64 %i.kl, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kn
  %i.kp = getelementptr [2 x i8], ptr %i.ko, i64 %indvars.iv219.i.us16.us.i
  %i.kq = getelementptr [2 x i8], ptr %i.kp, i64 %i.hj ; 2 uses
  br i1 %i.ki, label %.lr.ph177.i.us.us.i.epil.preheader, label %.lr.ph177.i.us.us.i

.lr.ph177.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i, %.lr.ph177.i.us.us.i
  %.0136175.i.us.us.i = phi ptr [ %i.lg, %.lr.ph177.i.us.us.i ], [ %i.kq, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ] ; 2 uses
  %.8174.i.us.us.i = phi ptr [ %i.le, %.lr.ph177.i.us.us.i ], [ %.5180.i.us17.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ] ; 5 uses
  %niter140 = phi i32 [ %niter140.next.3, %.lr.ph177.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ]
  %i.kr = load i64, ptr %.0136175.i.us.us.i, align 1, !tbaa !254
  store i64 %i.kr, ptr %.8174.i.us.us.i, align 1, !tbaa !254
  %i.ks = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 8
  %i.kt = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %.0136175.i.us.us.i, i64 %i.kt ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 1, !tbaa !254
  store i64 %i.kv, ptr %i.ks, align 1, !tbaa !254
  %i.kw = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 16
  %i.kx = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %i.kx ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 1, !tbaa !254
  store i64 %i.kz, ptr %i.kw, align 1, !tbaa !254
  %i.la = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 24
  %i.lb = load i64, ptr %i.p, align 8, !tbaa !20
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.lb ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 1, !tbaa !254
  store i64 %i.ld, ptr %i.la, align 1, !tbaa !254
  %i.le = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 32 ; 3 uses
  %i.lf = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.lf ; 2 uses
  %niter140.next.3 = add i32 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i32 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.loopexit134.i.loopexit2.us.us.i.unr-lcssa, label %.lr.ph177.i.us.us.i, !llvm.loop !1888

.loopexit134.i.loopexit2.us.us.i.unr-lcssa:       ; preds = %.lr.ph177.i.us.us.i
  br i1 %lcmp.mod135.not, label %.loopexit134.i.loopexit2.us.us.i, label %.lr.ph177.i.us.us.i.epil.preheader

.lr.ph177.i.us.us.i.epil.preheader:               ; preds = %.loopexit134.i.loopexit2.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i
  %.0136175.i.us.us.i.epil.init = phi ptr [ %i.kq, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ], [ %i.lg, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ]
  %.8174.i.us.us.i.epil.init = phi ptr [ %.5180.i.us17.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ], [ %i.le, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph177.i.us.us.i.epil

.lr.ph177.i.us.us.i.epil:                         ; preds = %.lr.ph177.i.us.us.i.epil, %.lr.ph177.i.us.us.i.epil.preheader
  %.0136175.i.us.us.i.epil = phi ptr [ %i.lk, %.lr.ph177.i.us.us.i.epil ], [ %.0136175.i.us.us.i.epil.init, %.lr.ph177.i.us.us.i.epil.preheader ] ; 2 uses
  %.8174.i.us.us.i.epil = phi ptr [ %i.li, %.lr.ph177.i.us.us.i.epil ], [ %.8174.i.us.us.i.epil.init, %.lr.ph177.i.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter134 = phi i32 [ %epil.iter134.next, %.lr.ph177.i.us.us.i.epil ], [ 0, %.lr.ph177.i.us.us.i.epil.preheader ]
  %i.lh = load i64, ptr %.0136175.i.us.us.i.epil, align 1, !tbaa !254
  store i64 %i.lh, ptr %.8174.i.us.us.i.epil, align 1, !tbaa !254
  %i.li = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i.epil, i64 8 ; 2 uses
  %i.lj = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.0136175.i.us.us.i.epil, i64 %i.lj
  %epil.iter134.next = add i32 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i32 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %.loopexit134.i.loopexit2.us.us.i, label %.lr.ph177.i.us.us.i.epil, !llvm.loop !1889

.loopexit134.i.loopexit2.us.us.i:                 ; preds = %.lr.ph177.i.us.us.i.epil, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa
  %.lcssa124 = phi ptr [ %i.le, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ], [ %i.li, %.lr.ph177.i.us.us.i.epil ] ; 2 uses
  %.lcssa123 = phi i64 [ %i.lf, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ], [ %i.lj, %.lr.ph177.i.us.us.i.epil ]
  %indvars.iv.next220.i.us20.us.i = add nuw nsw i64 %indvars.iv219.i.us16.us.i, 4 ; 3 uses
  %i.ll = icmp slt i64 %indvars.iv.next220.i.us20.us.i, %invariant.op.i.i
  br i1 %i.ll, label %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i, label %.preheader.loopexit.i.i, !llvm.loop !1884

.preheader.loopexit.i.i:                          ; preds = %.loopexit134.i.loopexit2.us.us.i, %.loopexit134.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i, %.loopexit134.i.preheader.i
  %.us-phi13.i = phi ptr [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i ], [ %.0137.lcssa.i.i, %.loopexit134.i.preheader.i ], [ %i.jx, %.loopexit134.i.loopexit.us.us.i ], [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i ], [ %.lcssa124, %.loopexit134.i.loopexit2.us.us.i ]
  %.us-phi14.i = phi i64 [ %i.kh, %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i ], [ %i.ho, %.loopexit134.i.preheader.i ], [ %indvars.iv.next220.i.us.us.i, %.loopexit134.i.loopexit.us.us.i ], [ %i.hu, %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i ], [ %indvars.iv.next220.i.us20.us.i, %.loopexit134.i.loopexit2.us.us.i ]
  %i.lm = trunc nsw i64 %.us-phi14.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader136.i.i
  %.1139.lcssa.i.i = phi i32 [ %.0138.lcssa.i.i, %.preheader136.i.i ], [ %i.lm, %.preheader.loopexit.i.i ] ; 2 uses
  %.5.lcssa.i.i = phi ptr [ %.0137.lcssa.i.i, %.preheader136.i.i ], [ %.us-phi13.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ln = icmp slt i32 %.1139.lcssa.i.i, %.sroa.speculated64
  br i1 %i.ln, label %.lr.ph196.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph196.i.i:                                    ; preds = %.preheader.i.i
  %i.lo = sdiv i32 %i.x, 4
  %i.lp = sext i32 %i.lo to i64
  %i.lq = lshr i32 %.sroa.speculated, 2           ; 3 uses
  %i.lr = sext i32 %i.x to i64
  %i.ls = sext i32 %.1139.lcssa.i.i to i64        ; 2 uses
  %i.lt = sext i32 %i.v to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64 ; 2 uses
  switch i32 %i.bb, label %_ZN4ncnn3MatD2Ev.exit [
    i32 4, label %.lr.ph196.i.split.us.i
    i32 1, label %.lr.ph196.i.split.us29.i
  ]

.lr.ph196.i.split.us.i:                           ; preds = %.lr.ph196.i.i
  %i.lu = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.lu, label %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i:        ; preds = %.lr.ph196.i.split.us.i
  %.pre53.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1890
  %i.lv = add nsw i32 %i.lq, -1
  %xtraiter149 = and i32 %i.lq, 3                 ; 3 uses
  %i.lw = icmp ult i32 %i.lv, 3
  %unroll_iter155 = and i32 %i.lq, 536870908
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  %lcmp.mod154 = icmp ne i32 %xtraiter149, 0
  br label %_ZN4ncnn3MatD2Ev.exit154.i.us.i

_ZN4ncnn3MatD2Ev.exit154.i.us.i:                  ; preds = %.loopexit.i.loopexit.us.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i
  %i.lx = phi i64 [ %.lcssa128, %.loopexit.i.loopexit.us.i ], [ %.pre53.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i ]
  %indvars.iv224.i.us.i = phi i64 [ %indvars.iv.next225.i.us.i, %.loopexit.i.loopexit.us.i ], [ %i.ls, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i ] ; 2 uses
  %.10195.i.us.i = phi ptr [ %.lcssa129, %.loopexit.i.loopexit.us.i ], [ %.5.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i ] ; 2 uses
  %i.ly = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1890
  %i.lz = mul i64 %i.lx, %i.lp
  %i.ma = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1890
  %i.mb = mul i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb
  %i.md = add nsw i64 %indvars.iv224.i.us.i, %i.lt
  %.idx234.i.us.i = shl nsw i64 %i.md, 3
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %.idx234.i.us.i ; 2 uses
  br i1 %i.lw, label %.lr.ph187.i.us.i.epil.preheader, label %.lr.ph187.i.us.i

.lr.ph187.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit154.i.us.i, %.lr.ph187.i.us.i
  %.0134185.i.us.i = phi ptr [ %i.mu, %.lr.ph187.i.us.i ], [ %i.me, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ] ; 2 uses
  %.11184.i.us.i = phi ptr [ %i.ms, %.lr.ph187.i.us.i ], [ %.10195.i.us.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ] ; 5 uses
  %niter156 = phi i32 [ %niter156.next.3, %.lr.ph187.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ]
  %i.mf = load i64, ptr %.0134185.i.us.i, align 1, !tbaa !254
  store i64 %i.mf, ptr %.11184.i.us.i, align 1, !tbaa !254
  %i.mg = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 8
  %i.mh = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.us.i = shl i64 %i.mh, 3
  %i.mi = getelementptr inbounds nuw i8, ptr %.0134185.i.us.i, i64 %.idx.i.us.i ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 1, !tbaa !254
  store i64 %i.mj, ptr %i.mg, align 1, !tbaa !254
  %i.mk = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 16
  %i.ml = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.us.i.1 = shl i64 %i.ml, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.idx.i.us.i.1 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 1, !tbaa !254
  store i64 %i.mn, ptr %i.mk, align 1, !tbaa !254
  %i.mo = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 24
  %i.mp = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.us.i.2 = shl i64 %i.mp, 3
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 %.idx.i.us.i.2 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 1, !tbaa !254
  store i64 %i.mr, ptr %i.mo, align 1, !tbaa !254
  %i.ms = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 32 ; 3 uses
  %i.mt = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.i.us.i.3 = shl i64 %i.mt, 3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.idx.i.us.i.3 ; 2 uses
  %niter156.next.3 = add i32 %niter156, 4         ; 2 uses
  %niter156.ncmp.3 = icmp eq i32 %niter156.next.3, %unroll_iter155
  br i1 %niter156.ncmp.3, label %.loopexit.i.loopexit.us.i.unr-lcssa, label %.lr.ph187.i.us.i, !llvm.loop !1893

.loopexit.i.loopexit.us.i.unr-lcssa:              ; preds = %.lr.ph187.i.us.i
  br i1 %lcmp.mod151.not, label %.loopexit.i.loopexit.us.i, label %.lr.ph187.i.us.i.epil.preheader

.lr.ph187.i.us.i.epil.preheader:                  ; preds = %.loopexit.i.loopexit.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit154.i.us.i
  %.0134185.i.us.i.epil.init = phi ptr [ %i.me, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ], [ %i.mu, %.loopexit.i.loopexit.us.i.unr-lcssa ]
  %.11184.i.us.i.epil.init = phi ptr [ %.10195.i.us.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ], [ %i.ms, %.loopexit.i.loopexit.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph187.i.us.i.epil

.lr.ph187.i.us.i.epil:                            ; preds = %.lr.ph187.i.us.i.epil, %.lr.ph187.i.us.i.epil.preheader
  %.0134185.i.us.i.epil = phi ptr [ %i.my, %.lr.ph187.i.us.i.epil ], [ %.0134185.i.us.i.epil.init, %.lr.ph187.i.us.i.epil.preheader ] ; 2 uses
  %.11184.i.us.i.epil = phi ptr [ %i.mw, %.lr.ph187.i.us.i.epil ], [ %.11184.i.us.i.epil.init, %.lr.ph187.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter150 = phi i32 [ %epil.iter150.next, %.lr.ph187.i.us.i.epil ], [ 0, %.lr.ph187.i.us.i.epil.preheader ]
  %i.mv = load i64, ptr %.0134185.i.us.i.epil, align 1, !tbaa !254
  store i64 %i.mv, ptr %.11184.i.us.i.epil, align 1, !tbaa !254
  %i.mw = getelementptr inbounds nuw i8, ptr %.11184.i.us.i.epil, i64 8 ; 2 uses
  %i.mx = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.i.us.i.epil = shl i64 %i.mx, 3
  %i.my = getelementptr inbounds nuw i8, ptr %.0134185.i.us.i.epil, i64 %.idx.i.us.i.epil
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %.loopexit.i.loopexit.us.i, label %.lr.ph187.i.us.i.epil, !llvm.loop !1894

.loopexit.i.loopexit.us.i:                        ; preds = %.lr.ph187.i.us.i.epil, %.loopexit.i.loopexit.us.i.unr-lcssa
  %.lcssa129 = phi ptr [ %i.ms, %.loopexit.i.loopexit.us.i.unr-lcssa ], [ %i.mw, %.lr.ph187.i.us.i.epil ]
  %.lcssa128 = phi i64 [ %i.mt, %.loopexit.i.loopexit.us.i.unr-lcssa ], [ %i.mx, %.lr.ph187.i.us.i.epil ]
  %indvars.iv.next225.i.us.i = add nuw nsw i64 %indvars.iv224.i.us.i, 1 ; 2 uses
  %exitcond227.not.i.us.i = icmp eq i64 %indvars.iv.next225.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond227.not.i.us.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit154.i.us.i, !llvm.loop !1895

.lr.ph196.i.split.us29.i:                         ; preds = %.lr.ph196.i.i
  %i.mz = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.mz, label %.lr.ph196.i.split.us29.split.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph196.i.split.us29.split.i:                   ; preds = %.lr.ph196.i.split.us29.i
  %i.na = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1896
  %i.nb = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1896 ; 10 uses
  %i.nc = mul i64 %i.nb, %i.lr
  %i.nd = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1896
  %i.ne = mul i64 %i.nc, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ne
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.nf, i64 %i.lt
  %xtraiter142 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.ng = icmp ult i32 %.sroa.speculated, 8
  %unroll_iter147 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod144.not = icmp eq i32 %xtraiter142, 0
  %lcmp.mod146 = icmp ne i32 %xtraiter142, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.us.i

_ZN4ncnn3MatD2Ev.exit.i.us.i:                     ; preds = %.loopexit.i.loopexit1.us.i, %.lr.ph196.i.split.us29.split.i
  %indvars.iv224.i.us30.i = phi i64 [ %i.ls, %.lr.ph196.i.split.us29.split.i ], [ %indvars.iv.next225.i.us34.i, %.loopexit.i.loopexit1.us.i ] ; 2 uses
  %.10195.i.us31.i = phi ptr [ %.5.lcssa.i.i, %.lr.ph196.i.split.us29.split.i ], [ %.lcssa127, %.loopexit.i.loopexit1.us.i ] ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv224.i.us30.i ; 2 uses
  br i1 %i.ng, label %.epil.preheader141, label %_ZN4ncnn3MatD2Ev.exit.i.us.i.new

_ZN4ncnn3MatD2Ev.exit.i.us.i.new:                 ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new
  %.0132190.i.us.i = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new ], [ %gep.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ] ; 2 uses
  %.13189.i.us.i = phi ptr [ %i.od, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new ], [ %.10195.i.us31.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ] ; 9 uses
  %niter148 = phi i32 [ %niter148.next.7, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us.i ]
  %i.nh = load i16, ptr %.0132190.i.us.i, align 2, !tbaa !394
  store i16 %i.nh, ptr %.13189.i.us.i, align 2, !tbaa !394
  %i.ni = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 2
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %.0132190.i.us.i, i64 %i.nb ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !394
  store i16 %i.nk, ptr %i.ni, align 2, !tbaa !394
  %i.nl = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 4
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %i.nb ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !394
  store i16 %i.nn, ptr %i.nl, align 2, !tbaa !394
  %i.no = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 6
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.nm, i64 %i.nb ; 2 uses
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !394
  store i16 %i.nq, ptr %i.no, align 2, !tbaa !394
  %i.nr = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 8
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.nb ; 2 uses
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !394
  store i16 %i.nt, ptr %i.nr, align 2, !tbaa !394
  %i.nu = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 10
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nb ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !394
  store i16 %i.nw, ptr %i.nu, align 2, !tbaa !394
  %i.nx = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 12
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %i.nb ; 2 uses
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !394
  store i16 %i.nz, ptr %i.nx, align 2, !tbaa !394
  %i.oa = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 14
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.nb ; 2 uses
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !394
  store i16 %i.oc, ptr %i.oa, align 2, !tbaa !394
  %i.od = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 16 ; 3 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.ob, i64 %i.nb ; 2 uses
  %niter148.next.7 = add i32 %niter148, 8         ; 2 uses
  %niter148.ncmp.7 = icmp eq i32 %niter148.next.7, %unroll_iter147
  br i1 %niter148.ncmp.7, label %.loopexit.i.loopexit1.us.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.us.i.new, !llvm.loop !1899

.loopexit.i.loopexit1.us.i.unr-lcssa:             ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.i.new
  br i1 %lcmp.mod144.not, label %.loopexit.i.loopexit1.us.i, label %.epil.preheader141

.epil.preheader141:                               ; preds = %.loopexit.i.loopexit1.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.us.i
  %.0132190.i.us.i.epil.init = phi ptr [ %gep.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ], [ %i.oe, %.loopexit.i.loopexit1.us.i.unr-lcssa ]
  %.13189.i.us.i.epil.init = phi ptr [ %.10195.i.us31.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ], [ %i.od, %.loopexit.i.loopexit1.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod146)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader141
  %.0132190.i.us.i.epil = phi ptr [ %.0132190.i.us.i.epil.init, %.epil.preheader141 ], [ %i.oh, %bb.e ] ; 2 uses
  %.13189.i.us.i.epil = phi ptr [ %.13189.i.us.i.epil.init, %.epil.preheader141 ], [ %i.og, %bb.e ] ; 2 uses
  %epil.iter143 = phi i32 [ 0, %.epil.preheader141 ], [ %epil.iter143.next, %bb.e ]
  %i.of = load i16, ptr %.0132190.i.us.i.epil, align 2, !tbaa !394
  store i16 %i.of, ptr %.13189.i.us.i.epil, align 2, !tbaa !394
  %i.og = getelementptr inbounds nuw i8, ptr %.13189.i.us.i.epil, i64 2 ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.0132190.i.us.i.epil, i64 %i.nb
  %epil.iter143.next = add i32 %epil.iter143, 1   ; 2 uses
  %epil.iter143.cmp.not = icmp eq i32 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %.loopexit.i.loopexit1.us.i, label %bb.e, !llvm.loop !1900

.loopexit.i.loopexit1.us.i:                       ; preds = %bb.e, %.loopexit.i.loopexit1.us.i.unr-lcssa
  %.lcssa127 = phi ptr [ %i.od, %.loopexit.i.loopexit1.us.i.unr-lcssa ], [ %i.og, %bb.e ]
  %indvars.iv.next225.i.us34.i = add nuw nsw i64 %indvars.iv224.i.us30.i, 1 ; 2 uses
  %exitcond227.not.i.us35.i = icmp eq i64 %indvars.iv.next225.i.us34.i, %wide.trip.count.i.i
  br i1 %exitcond227.not.i.us35.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us.i, !llvm.loop !1895

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.oi = icmp eq i32 %i.at, 2                    ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.oi
  %i.oj = icmp eq i32 %i.au, 2                    ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.oj
  br i1 %or.cond15.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ok = icmp eq i32 %i.ap, 3
  %i.ol = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.ok, %i.ol
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %or.cond33.i = and i1 %or.cond21.i, %i.oi
  %or.cond35.i = and i1 %or.cond33.i, %i.oj
  br i1 %or.cond35.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.om = icmp eq i32 %i.ap, 5
  %i.on = icmp eq i32 %i.aq, 5
  %or.cond37.i = and i1 %i.om, %i.on
  %or.cond39.i = and i1 %or.cond37.i, %i.ax
  %or.cond41.i = and i1 %or.cond39.i, %i.ay       ; 2 uses
  %or.cond43.i = and i1 %or.cond41.i, %i.az
  %or.cond45.i = and i1 %or.cond43.i, %i.ba
  br i1 %or.cond45.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %or.cond53.i = and i1 %or.cond41.i, %i.oi
  %or.cond55.i = and i1 %or.cond53.i, %i.oj
  br i1 %or.cond55.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.oo = icmp eq i32 %i.ap, 7
  %i.op = icmp eq i32 %i.aq, 7
  %or.cond57.i = and i1 %i.oo, %i.op
  %or.cond59.i = and i1 %or.cond57.i, %i.ax
  %or.cond61.i = and i1 %or.cond59.i, %i.ay
  %or.cond63.i = and i1 %or.cond61.i, %i.oi
  %or.cond65.i = and i1 %or.cond63.i, %i.oj
  br i1 %or.cond65.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit.i.loopexit1.us.i, %.loopexit.i.loopexit.us.i, %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %.lr.ph196.i.split.us29.i, %.lr.ph196.i.split.us.i, %.lr.ph196.i.i, %.preheader.i.i
  %i.oq = add nsw i32 %.080, 1
  %i.or = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.080, %i.or
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.17(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not183 = icmp sgt i32 %i.k, %i.j
  br i1 %.not183, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph186, %_ZN4ncnn3MatD2Ev.exit
  %.048184 = phi i32 [ %i.k, %.lr.ph186 ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul nsw i32 %i.t, %.048184               ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !67
  %i.w = load i32, ptr %5, align 4, !tbaa !67
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit53

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1901
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1901
  %i.ab = sext i32 %i.y to i64
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1901
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.pre = load i32, ptr %3, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit53

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.e, %bb.c
  %i.ag = phi i32 [ %i.t, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.0169.0 = phi ptr [ null, %bb.c ], [ %i.af, %bb.e ]
  %i.ah = load i32, ptr %7, align 4, !tbaa !67
  %i.ai = sub nsw i32 %i.ah, %i.u
  %.sroa.speculated151 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ai)
  %i.aj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit53
  %i.al = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre189 = load i32, ptr %9, align 4, !tbaa !67
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit53
  %i.an = add nsw i32 %.048184, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048184, %i.ao
  br i1 %.not.not, label %bb.c, label %._crit_edge187

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.au, %._crit_edge ], [ %i.aj, %.lr.ph.split.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.av, %._crit_edge ], [ %.pre189, %.lr.ph.split.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.aw, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 3 uses
  %.047182 = phi i32 [ %i.ax, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.as = sub nsw i32 %i.ap, %.047182
  %.sroa.speculated147 = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph.split
  %.pre190 = load i32, ptr %5, align 4, !tbaa !67
  br label %.noexc

end_hunk_15
