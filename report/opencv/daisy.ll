Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/daisy?download=true
inline.NumInlined: 694
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv11xfeatures2dL15quantize_radiusEfiRKNS_3MatE:bb.a
  %i.aa = sext i32 %i.m to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit18

bb.f:                                             ; preds = %bb.d
  %i.ad = sdiv i32 %i.m, %i.w                     ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.w                 ; 0 uses
  %.recomposed = srem i32 %i.m, %i.w
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !57
  %i.ah = sext i32 %i.ad to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ai
  %i.ak = sext i32 %.recomposed to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit18

_ZNK2cv3Mat2atIdEERKT_i.exit18:                   ; preds = %.thread, %bb.c, %bb.e, %bb.f
  %i.am = phi i32 [ %i.j, %.thread ], [ %i.m, %bb.c ], [ %i.m, %bb.e ], [ %i.m, %bb.f ]
  %.0.i17 = phi ptr [ %i.l, %.thread ], [ %i.u, %bb.c ], [ %i.ac, %bb.e ], [ %i.al, %bb.f ]
  %i.an = load double, ptr %.0.i17, align 8, !tbaa !50
  %i.ao = fcmp ugt double %i.an, %i.b
  br i1 %i.ao, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store double %i.b, ptr %6, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  call void @_ZN2cvmiERKNS_3MatERKNS_7Scalar_IdEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
  invoke void @_ZN2cv3absERKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(688) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(688) %4)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv9minMaxIdxERKNS_11_InputArrayEPdS3_PiS4_S2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ar) #24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #24
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #24
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %4) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.az, %bb.l ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit.thread, %_ZNK2cv3Mat2atIdEERKT_i.exit18, %_ZNK2cv3Mat2atIdEERKT_i.exit, %bb.k
  %.012 = phi i32 [ %i.ay, %bb.k ], [ 0, %_ZNK2cv3Mat2atIdEERKT_i.exit ], [ %i.am, %_ZNK2cv3Mat2atIdEERKT_i.exit18 ], [ 0, %_ZNK2cv3Mat2atIdEERKT_i.exit.thread ]
  ret i32 %.012
}

declare void @_ZN2cv9minMaxIdxERKNS_11_InputArrayEPdS3_PiS4_S2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3absERKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmiERKNS_3MatERKNS_7Scalar_IdEE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #24
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d10DAISY_Impl19compute_cube_sigmasEv(ptr noundef nonnull align 8 dereferenceable(4424) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  br i1 %i.b, label %bb.b, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !95
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre26 = load i32, ptr %.phi.trans.insert25, align 4, !tbaa !67
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.d, i32 noundef 6)
  %i.e = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 8, !tbaa !95 ; 3 uses
  %i.h = fpext float %i.g to double
  %i.i = load i32, ptr %i.c, align 4, !tbaa !67   ; 10 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fdiv double %i.h, %i.j
  %i.l = fmul double %i.k, 5.000000e-01           ; 5 uses
  %i.m = icmp sgt i32 %i.i, 0
  br i1 %i.m, label %.lr.ph, label %_ZN2cv11xfeatures2d10DAISY_Impl21update_selected_cubesEv.exit

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54
  %i.p = icmp slt i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1212
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %wide.trip.count23 = zext nneg i32 %i.i to i64  ; 3 uses
  %min.iters.check32 = icmp ult i32 %i.i, 4
  br i1 %min.iters.check32, label %_ZN2cv3Mat2atIdEERT_i.exit.us.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.split.us
  %n.vec34 = and i64 %wide.trip.count23, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat36 = shufflevector <2 x double> %broadcast.splatinsert35, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph33 ], [ %vec.ind.next42, %vector.body37 ] ; 3 uses
  %2 = trunc <2 x i64> %vec.ind39 to <2 x i32>
  %3 = add <2 x i32> %2, splat (i32 1)
  %4 = trunc <2 x i64> %vec.ind39 to <2 x i32>
  %i.w = add <2 x i32> %4, splat (i32 3)
  %i.x = uitofp nneg <2 x i32> %3 to <2 x double>
  %i.y = uitofp nneg <2 x i32> %i.w to <2 x double>
  %i.z = fmul <2 x double> %broadcast.splat36, %i.x
  %i.aa = fmul <2 x double> %broadcast.splat36, %i.y
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %i.z, ptr %i.ab, align 8, !tbaa !50
  store <2 x double> %i.aa, ptr %i.ac, align 8, !tbaa !50
  %index.next41 = add nuw i64 %index38, 4         ; 2 uses
  %vec.ind.next42 = add nuw <2 x i64> %vec.ind39, splat (i64 4)
  %i.ad = icmp eq i64 %index.next41, %n.vec34
  br i1 %i.ad, label %middle.block43, label %vector.body37, !llvm.loop !234

middle.block43:                                   ; preds = %vector.body37
  %cmp.n44 = icmp eq i64 %n.vec34, %wide.trip.count23
  br i1 %cmp.n44, label %.loopexit.thread, label %_ZN2cv3Mat2atIdEERT_i.exit.us.preheader

_ZN2cv3Mat2atIdEERT_i.exit.us.preheader:          ; preds = %.lr.ph.split.us, %middle.block43
  %indvars.iv20.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec34, %middle.block43 ]
  br label %_ZN2cv3Mat2atIdEERT_i.exit.us

_ZN2cv3Mat2atIdEERT_i.exit.us:                    ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us.preheader, %_ZN2cv3Mat2atIdEERT_i.exit.us
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %_ZN2cv3Mat2atIdEERT_i.exit.us ], [ %indvars.iv20.ph, %_ZN2cv3Mat2atIdEERT_i.exit.us.preheader ] ; 2 uses
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 3 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv.next21 to i32
  %i.af = uitofp nneg i32 %i.ae to double
  %i.ag = fmul double %i.l, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv20
  store double %i.ag, ptr %i.ah, align 8, !tbaa !50
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %.loopexit.thread, label %_ZN2cv3Mat2atIdEERT_i.exit.us, !llvm.loop !235

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !55
  %.fr = freeze i32 %i.ai
  %i.aj = and i32 %.fr, 16384
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %.lr.ph.split.split.preheader, label %.lr.ph.split.split.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count18 = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !56  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  br i1 %min.iters.check, label %_ZN2cv3Mat2atIdEERT_i.exit.us9.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %6 = add <2 x i32> %5, splat (i32 1)
  %7 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.al = add <2 x i32> %7, splat (i32 3)
  %i.am = uitofp nneg <2 x i32> %6 to <2 x double>
  %i.an = uitofp nneg <2 x i32> %i.al to <2 x double>
  %i.ao = fmul <2 x double> %broadcast.splat, %i.am
  %i.ap = fmul <2 x double> %broadcast.splat, %i.an
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !50
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.thread, label %_ZN2cv3Mat2atIdEERT_i.exit.us9.preheader

_ZN2cv3Mat2atIdEERT_i.exit.us9.preheader:         ; preds = %.lr.ph.split.split.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %n.vec, %middle.block ]
  br label %_ZN2cv3Mat2atIdEERT_i.exit.us9

_ZN2cv3Mat2atIdEERT_i.exit.us9:                   ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us9.preheader, %_ZN2cv3Mat2atIdEERT_i.exit.us9
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3Mat2atIdEERT_i.exit.us9 ], [ %indvars.iv.ph, %_ZN2cv3Mat2atIdEERT_i.exit.us9.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = fmul double %i.l, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store double %i.av, ptr %i.aw, align 8, !tbaa !50
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.thread, label %_ZN2cv3Mat2atIdEERT_i.exit.us9, !llvm.loop !237

bb.d:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ax

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_ZN2cv3Mat2atIdEERT_i.exit
  %indvars.iv15 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next16, %_ZN2cv3Mat2atIdEERT_i.exit ] ; 4 uses
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv.next16 to i32
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = fmul double %i.l, %i.az
  %i.bb = load i32, ptr %i.q, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv15
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.bf = load i32, ptr %i.r, align 8, !tbaa !43
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.bi = load i64, ptr %i.u, align 8, !tbaa !57
  %i.bj = mul i64 %i.bi, %indvars.iv15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.h:                                             ; preds = %bb.f
  %i.bl = load i32, ptr %i.s, align 4, !tbaa !58  ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv15 to i32  ; 2 uses
  %i.bn = sdiv i32 %i.bm, %i.bl                   ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bl                ; 0 uses
  %.recomposed = srem i32 %i.bm, %i.bl
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.bq = load i64, ptr %i.u, align 8, !tbaa !57
  %i.br = sext i32 %i.bn to i64
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs
  %i.bu = sext i32 %.recomposed to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.bv, %bb.h ], [ %i.be, %bb.e ], [ %i.bk, %bb.g ]
  store double %i.ba, ptr %.0.i, align 8, !tbaa !50
  %exitcond19.not = icmp eq i64 %indvars.iv.next16, %wide.trip.count18
  br i1 %exitcond19.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !238

.loopexit.thread:                                 ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us9, %_ZN2cv3Mat2atIdEERT_i.exit.us, %middle.block, %middle.block43
  %i.bw = uitofp nneg i32 %i.i to float
  %i.bx = fdiv float %i.g, %i.bw
  br label %.lr.ph.i.preheader

.loopexit:                                        ; preds = %_ZN2cv3Mat2atIdEERT_i.exit, %..loopexit_crit_edge
  %i.by = phi i32 [ %.pre26, %..loopexit_crit_edge ], [ %i.i, %_ZN2cv3Mat2atIdEERT_i.exit ] ; 3 uses
  %i.bz = phi float [ %.pre, %..loopexit_crit_edge ], [ %i.g, %_ZN2cv3Mat2atIdEERT_i.exit ]
  %i.ca = sitofp i32 %i.by to float
  %i.cb = fdiv float %i.bz, %i.ca
  %i.cc = icmp sgt i32 %i.by, 0
  br i1 %i.cc, label %.lr.ph.i.preheader, label %_ZN2cv11xfeatures2d10DAISY_Impl21update_selected_cubesEv.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.in.in = phi float [ %i.bx, %.loopexit.thread ], [ %i.cb, %.loopexit ]
  %i.cd = phi i32 [ %i.i, %.loopexit.thread ], [ %i.by, %.loopexit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.in = fpext float %.in.in to double
  %i.cf = fmul double %.in, 5.000000e-01
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.cg = phi i32 [ %i.cn, %.lr.ph.i ], [ %i.cd, %.lr.ph.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fmul double %i.cf, %i.ci
  %i.ck = fptrunc double %i.cj to float
  %i.cl = call fastcc noundef i32 @_ZN2cv11xfeatures2dL15quantize_radiusEfiRKNS_3MatE(float noundef %i.ck, i32 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cv11xfeatures2d16g_selected_cubesE, i64 %indvars.iv.i
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !43
  %i.cn = load i32, ptr %i.ce, align 4, !tbaa !67 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next.i, %i.co
  br i1 %i.cp, label %.lr.ph.i, label %_ZN2cv11xfeatures2d10DAISY_Impl21update_selected_cubesEv.exit, !llvm.loop !239

_ZN2cv11xfeatures2d10DAISY_Impl21update_selected_cubesEv.exit: ; preds = %.lr.ph.i, %bb.c, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d10DAISY_Impl19compute_grid_pointsEv(ptr noundef nonnull align 8 dereferenceable(4424) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !95
  %i.c = fpext float %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x i32>, ptr %i.d, align 4, !tbaa !43
  %i.g = sitofp <2 x i32> %i.f to <2 x double>
  %i.h = insertelement <2 x double> <double poison, double f0x401921FB54442D18>, double %i.c, i64 0
  %i.i = fdiv <2 x double> %i.h, %i.g             ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.l, i32 noundef 2, i32 noundef 6)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.n = load i32, ptr %i.k, align 8, !tbaa !34   ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.q = load i32, ptr %i.p, align 4, !tbaa !54
  %.fr47 = freeze i32 %i.q
  %i.r = icmp slt i32 %.fr47, 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 6 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %i.n, 1
  br i1 %i.v, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %.preheader

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod68)
  %i.w = load i64, ptr %i.u, align 8
  %i.x = mul i64 %i.w, %indvars.iv.epil.init
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  store double 0.000000e+00, ptr %.sink.i.epil, align 8, !tbaa !50
  %i.y = load i64, ptr %i.u, align 8
  %i.z = mul i64 %i.y, %indvars.iv.epil.init
  %.sink.i26.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink.i26.epil, i64 8
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.split.epil.preheader, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us, %bb.b
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !67  ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %.preheader
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !32  ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  br i1 %i.ae, label %.lr.ph39.split, label %._crit_edge40.split
end_hunk_0
