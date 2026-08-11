inline.NumInlined: 43
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4ncnn22DeconvolutionDepthWise7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.not.i36 = icmp eq ptr %i.dt, null
  br i1 %.not.i36, label %_ZN4ncnn3MatD2Ev.exit30, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.dt) #9
  br label %_ZN4ncnn3MatD2Ev.exit30

bb.y:                                             ; preds = %bb.v
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit30:                          ; preds = %bb.t, %_ZNK4ncnn3Mat5emptyEv.exit40.thread, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.1

bb.z:                                             ; preds = %bb.q, %bb.g
  %.pn = phi { ptr, i32 } [ %i.df, %bb.q ], [ %i.bj, %bb.g ]
  %i.dz = load ptr, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %.not.i31 = icmp eq ptr %i.dz, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = atomicrmw add ptr %i.dz, i32 -1 acq_rel, align 4
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load ptr, ptr %i.an, align 16, !tbaa !17 ; 3 uses
  %.not3.i32 = icmp eq ptr %i.ec, null
  %i.ed = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i32, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %i.ed)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.af, !inline_history !19

bb.ad:                                            ; preds = %bb.ab
  %.not.i35 = icmp eq ptr %i.ed, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.ed) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.af:                                            ; preds = %bb.ac
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.aa, %bb.z, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22DeconvolutionDepthWiseC2Ev(ptr noundef nonnull align 8 dereferenceable(512) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn22DeconvolutionDepthWiseE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.j, align 1, !tbaa !87
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL22deconvolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %13) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store i32 %6, ptr %i.a, align 4, !tbaa !59
  store i32 %7, ptr %i.b, align 4, !tbaa !59
  store i32 %10, ptr %i.c, align 4, !tbaa !59
  store i32 %11, ptr %i.d, align 4, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.p = mul nsw i32 %5, %4                       ; 4 uses
  store i32 %i.p, ptr %i.e, align 4, !tbaa !59
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc44

.noexc44:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !59
  %i.v = add nsw i64 %i.q, -1                     ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc44
  %i.x = getelementptr i8, ptr %i.t, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !59
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc44, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.u, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.u, %.noexc44 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.045.0 = phi ptr [ %i.t, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.t, %.noexc44 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr %.sroa.045.0, ptr %i.f, align 8, !tbaa !88
  %i.y = mul nsw i32 %i.m, %9
  %i.z = mul nsw i32 %8, %4
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = icmp sgt i32 %5, 0
  %i.ac = icmp sgt i32 %4, 0
  %or.cond55 = and i1 %i.ab, %i.ac
  br i1 %or.cond55, label %.preheader.preheader, label %._crit_edge54.split

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ad = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.ad, 2147483640              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ae = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %i.af = mul i32 %8, %i.ae
  %i.ag = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %i.ah = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = add <4 x i32> %i.ag, %i.ag
  %cmp.n = icmp eq i64 %n.vec, %i.ad
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03953.a = phi i32 [ %i.aq, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04052 = phi i32 [ %i.ap, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.04151 = phi i32 [ %14, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ai = sext i32 %.03953.a to i64               ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.aj = add nsw i64 %n.vec, %i.ai
  %i.ak = add i32 %.04151, %i.af                  ; 2 uses
  %broadcast.splatinsert1 = insertelement <4 x i32> poison, i32 %.04151, i64 0
  %broadcast.splat2 = shufflevector <4 x i32> %broadcast.splatinsert1, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat2, %i.ah
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.045.0, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.ag
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind, ptr %gep, align 4, !tbaa !59
  store <4 x i32> %step.add, ptr %i.al, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ai, %.preheader ], [ %i.aj, %middle.block ]
  %.049.ph = phi i32 [ 0, %.preheader ], [ %i.ae, %middle.block ]
  %.14247.ph = phi i32 [ %.04151, %.preheader ], [ %i.ak, %middle.block ]
  br label %scalar.ph

._crit_edge54.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.an = icmp eq i32 %i.k, %10
  %i.ao = icmp eq i32 %10, %i.o
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ak, %middle.block ], [ %i.as, %scalar.ph ]
  %14 = add nsw i32 %i.aa, %.lcssa
  %i.ap = add nuw nsw i32 %.04052, 1              ; 2 uses
  %i.aq = add i32 %.03953.a, %4
  %exitcond58.not = icmp eq i32 %i.ap, %5
  br i1 %exitcond58.not, label %._crit_edge54.split, label %.preheader, !llvm.loop !90

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.049 = phi i32 [ %15, %scalar.ph ], [ %.049.ph, %scalar.ph.preheader ]
  %.14247 = phi i32 [ %i.as, %scalar.ph ], [ %.14247.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %.sroa.045.0, i64 %indvars.iv
  store i32 %.14247, ptr %i.ar, align 4, !tbaa !59
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.as = add nsw i32 %.14247, %8                 ; 2 uses
  %15 = add nuw nsw i32 %.049, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %15, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !91

bb.b:                                             ; preds = %._crit_edge54.split
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !92
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.au)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL22deconvolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %3, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %12)
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge54.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.av = sdiv i32 %i.k, %10
  store i32 %i.av, ptr %i.g, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.aw = sdiv i32 %i.o, %10
  store i32 %i.aw, ptr %i.h, align 4, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !92
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.ay)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL22deconvolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.h, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %3, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %.not.i.i.i = icmp eq ptr %.sroa.045.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = ptrtoint ptr %.sroa.9.0 to i64
  %i.ba = ptrtoint ptr %.sroa.045.0 to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.0, i64 noundef %i.bb) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn22DeconvolutionDepthWise11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !44 ; 4 uses
  %i.d = icmp sgt i32 %.pre, 0
  %or.cond46 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond46, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  tail call void @_ZN4ncnn15copy_cut_borderERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.b, i32 noundef %.pre, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64
  %i.w = sub nsw i32 %i.v, %i.p                   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !65
  %i.z = sub nsw i32 %i.y, %i.s                   ; 4 uses
  %i.aa = icmp eq i32 %i.b, -233
  %i.ab = icmp eq i32 %.pre, -233
  %or.cond = or i1 %i.aa, %i.ab
  %i.ac = icmp eq i32 %i.f, -233
  %or.cond30 = or i1 %or.cond, %i.ac
  %i.ad = icmp eq i32 %i.i, -233
  %or.cond31 = or i1 %or.cond30, %i.ad
  br i1 %or.cond31, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.z, 2                        ; 2 uses
  %i.af = sub nsw i32 %i.z, %i.ae
  %i.ag = sdiv i32 %i.w, 2                        ; 2 uses
  %i.ah = sub nsw i32 %i.w, %i.ag
  tail call void @_ZN4ncnn15copy_cut_borderERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = icmp eq i32 %i.b, -234
  %i.aj = icmp eq i32 %.pre, -234
  %or.cond32 = or i1 %i.ai, %i.aj
  %i.ak = icmp eq i32 %i.f, -234
  %or.cond33 = or i1 %or.cond32, %i.ak
  %i.al = icmp eq i32 %i.i, -234
  %or.cond34 = or i1 %or.cond33, %i.al
  br i1 %or.cond34, label %bb.i, label %_ZN4ncnn3MataSERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = sdiv i32 %i.z, 2                        ; 2 uses
  %i.an = sub nsw i32 %i.z, %i.am
  %i.ao = sdiv i32 %i.w, 2                        ; 2 uses
  %i.ap = sub nsw i32 %i.w, %i.ao
  tail call void @_ZN4ncnn15copy_cut_borderERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.an, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.aq = icmp eq ptr %2, %1
  br i1 %i.aq, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = atomicrmw add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.o, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba), !inline_history !93
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i18.i = icmp eq ptr %i.ba, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ba) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.q, %bb.r, %bb.p, %bb.n, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bj = load <2 x ptr>, ptr %1, align 8, !tbaa !56
  store <2 x ptr> %i.bj, ptr %2, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !57
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !58
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load <4 x i32>, ptr %i.br, align 8, !tbaa !59
  store <4 x i32> %i.bs, ptr %i.bg, align 8, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !60
end_hunk_0
