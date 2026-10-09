Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fuzzy_F0_math?download=true
inline.NumInlined: 545
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv2ft16FT02D_FL_processERKNS_11_InputArrayEiRKNS_12_OutputArrayE:bb.a
  %8 = alloca [3 x %"class.cv::Mat"], align 16    ; 16 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.std::vector.8", align 8    ; 13 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv2ft16FT02D_FL_processERKNS_11_InputArrayEiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 48) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bg

bb.g:                                             ; preds = %bb.a
  %i.j = shl nsw i32 %1, 1
  %i.k = or disjoint i32 %i.j, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !19
  store ptr %5, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %1, i32 noundef %i.k, i32 noundef %1, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #18
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #18
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull %8)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = sdiv i32 %i.u, %1                        ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = sdiv i32 %i.w, %1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 7 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc228 unwind label %bb.w  ; 7 uses

.noexc228:                                        ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 4 uses
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  %i.ag = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 0                    ; 3 uses
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ag, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.noexc228, %bb.l
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc234 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit268.thread ; 6 uses

.noexc234:                                        ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ac  ; 3 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc234
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.ag, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.noexc234, %bb.n
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc241 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit266.thread ; 5 uses

.noexc241:                                        ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ac  ; 2 uses
  store i8 0, ptr %i.am, align 1, !tbaa !16
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242, label %bb.p

bb.p:                                             ; preds = %.noexc241
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242:            ; preds = %bb.p, %.noexc241, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14295.0358 = phi ptr [ %i.ak, %bb.p ], [ %i.ak, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0287.0348 = phi ptr [ %i.aj, %bb.p ], [ %i.aj, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.14306.0319338 = phi ptr [ %i.af, %bb.p ], [ %i.af, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0298.0330336 = phi ptr [ %i.ae, %bb.p ], [ %i.ae, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.0278.0 = phi ptr [ %i.am, %bb.p ], [ %i.am, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.14.0 = phi ptr [ %i.an, %bb.p ], [ %i.an, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ap = add i32 %1, 1                           ; 4 uses
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = icmp slt i32 %1, -1
  br i1 %i.ar, label %bb.q, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc245 unwind label %bb.x

.noexc245:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242
  %.not.i.i.i.i243 = icmp eq i32 %i.ap, 0         ; 2 uses
  br i1 %.not.i.i.i.i243, label %.preheader382, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #21
          to label %.noexc246 unwind label %bb.x  ; 6 uses

.noexc246:                                        ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !30
  %i.av = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc246
  %i.ax = getelementptr i8, ptr %i.at, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc246
  %wide.trip.count = zext i32 %i.ap to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph.preheader546, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.az = sub <4 x i32> %broadcast.splat, %vec.ind ; 2 uses
  %14 = add <4 x i32> %i.az, splat (i32 -4)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.az, ptr %i.ay, align 4, !tbaa !30
  store <4 x i32> %14, ptr %i.ba, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader382.loopexit, label %.lr.ph.preheader546

.lr.ph.preheader546:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader382.loopexit:                           ; preds = %.lr.ph, %middle.block
  %i.bc = ptrtoint ptr %i.au to i64
  br label %.preheader382

.preheader382:                                    ; preds = %.preheader382.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0506 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bc, %.preheader382.loopexit ] ; 2 uses
  %.sroa.0271.0499 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.at, %.preheader382.loopexit ] ; 8 uses
  %i.bd = sub nsw i32 %i.w, %1                    ; 2 uses
  %i.be = icmp slt i32 %1, %i.bd
  br i1 %i.be, label %.preheader.lr.ph, label %._crit_edge420

.preheader.lr.ph:                                 ; preds = %.preheader382
  %i.bf = sub nsw i32 %i.u, %1                    ; 3 uses
  %i.bg = icmp slt i32 %1, %i.bf
  br i1 %i.bg, label %.preheader.us.preheader, label %._crit_edge420

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bh = sext i32 %i.u to i64
  %i.bi = sext i32 %1 to i64                      ; 4 uses
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = sext i32 %i.x to i64
  %i.bl = add nsw i64 %i.bk, 1
  %i.bm = zext nneg i32 %i.bd to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge415.us
  %indvars.iv465 = phi i64 [ %i.bi, %.preheader.us.preheader ], [ %indvars.iv.next466, %._crit_edge415.us ] ; 2 uses
  %indvars.iv455 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next456, %._crit_edge415.us ] ; 3 uses
  %indvars.iv448 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next449, %._crit_edge415.us ] ; 2 uses
  %i.bn = sext i32 %indvars.iv448 to i64
  %indvars.iv.next466 = add nsw i64 %indvars.iv465, %i.bi ; 3 uses
  br i1 %.not.i.i.i.i243, label %iter.check, label %.lr.ph391.us.preheader

.lr.ph391.us.preheader:                           ; preds = %.preheader.us, %._crit_edge403.us
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %._crit_edge403.us ], [ %indvars.iv455, %.preheader.us ] ; 4 uses
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %._crit_edge403.us ], [ %i.bi, %.preheader.us ] ; 2 uses
  %indvars.iv443 = phi i32 [ %indvars.iv.next444, %._crit_edge403.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.bo = sext i32 %indvars.iv443 to i64
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, %i.bi ; 3 uses
  br label %.lr.ph391.us

.lr.ph391.us:                                     ; preds = %.lr.ph391.us.preheader, %._crit_edge.us
  %indvars.iv450 = phi i64 [ %i.bn, %.lr.ph391.us.preheader ], [ %indvars.iv.next451, %._crit_edge.us ] ; 4 uses
  %.0176399.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.ct, %._crit_edge.us ]
  %.0177398.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cs, %._crit_edge.us ]
  %.0179397.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cn, %._crit_edge.us ]
  %.0181396.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.ci, %._crit_edge.us ]
  %i.bp = mul nsw i64 %indvars.iv450, %i.bh
  %i.bq = sub nsw i64 %indvars.iv450, %indvars.iv465
  %i.br = trunc nsw i64 %i.bq to i32
  %i.bs = call i32 @llvm.abs.i32(i32 %i.br, i1 true)
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0271.0499, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph391.us
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %bb.s ], [ %i.bo, %.lr.ph391.us ] ; 4 uses
  %.1389.us = phi i32 [ %i.ct, %bb.s ], [ %.0176399.us, %.lr.ph391.us ]
  %.1178388.us = phi i32 [ %i.cs, %bb.s ], [ %.0177398.us, %.lr.ph391.us ]
  %.1180387.us = phi i32 [ %i.cn, %bb.s ], [ %.0179397.us, %.lr.ph391.us ]
  %.1182386.us = phi i32 [ %i.ci, %bb.s ], [ %.0181396.us, %.lr.ph391.us ]
  %i.bw = sub nsw i64 %indvars.iv445, %indvars.iv453
  %i.bx = trunc nsw i64 %i.bw to i32
  %i.by = call i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0271.0499, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !30
  %i.cc = mul nsw i32 %i.cb, %i.bv                ; 4 uses
  %i.cd = add nsw i64 %indvars.iv445, %i.bp       ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %i.o, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = zext i8 %i.cf to i32
  %i.ch = mul nsw i32 %i.cc, %i.cg
  %i.ci = add nsw i32 %i.ch, %.1182386.us         ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.q, i64 %i.cd
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nsw i32 %i.cc, %i.cl
  %i.cn = add nsw i32 %i.cm, %.1180387.us         ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 %i.cd
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i32
  %i.cr = mul nsw i32 %i.cc, %i.cq
  %i.cs = add nsw i32 %i.cr, %.1178388.us         ; 3 uses
  %i.ct = add nsw i32 %i.cc, %.1389.us            ; 3 uses
  %indvars.iv.next446 = add nsw i64 %indvars.iv445, 1
  %.not227.us.not = icmp slt i64 %indvars.iv445, %indvars.iv.next454
  br i1 %.not227.us.not, label %bb.s, label %._crit_edge.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %bb.s
  %indvars.iv.next451 = add nsw i64 %indvars.iv450, 1
  %.not217.us426.not = icmp slt i64 %indvars.iv450, %indvars.iv.next466
  br i1 %.not217.us426.not, label %.lr.ph391.us, label %._crit_edge403.us, !llvm.loop !60

._crit_edge403.us:                                ; preds = %._crit_edge.us
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fdiv float 1.000000e+00, %i.cu          ; 3 uses
  %i.cw = sitofp i32 %i.ci to float
  %i.cx = fmul float %i.cv, %i.cw
  %i.cy = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.cz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cy)
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv457
  store i8 %i.da, ptr %i.db, align 1, !tbaa !16
  %i.dc = sitofp i32 %i.cn to float
  %i.dd = fmul float %i.cv, %i.dc
  %i.de = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.df = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.de)
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv457
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !16
  %i.di = sitofp i32 %i.cs to float
  %i.dj = fmul float %i.cv, %i.di
  %i.dk = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dk)
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv457
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !16
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1
  %i.do = icmp slt i64 %indvars.iv.next454, %i.bj
  %indvars.iv.next444 = add i32 %indvars.iv443, %1
  br i1 %i.do, label %.lr.ph391.us.preheader, label %._crit_edge415.us, !llvm.loop !61

iter.check:                                       ; preds = %.preheader.us
  %i.dp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> <float +qnan, float poison, float poison, float poison>)
  %i.dq = trunc i32 %i.dp to i8                   ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %iter.check, %bb.t
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %bb.t ], [ %indvars.iv455, %iter.check ] ; 4 uses
  %.0171412.us.us = phi i32 [ %i.du, %bb.t ], [ %1, %iter.check ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv462
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv462
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv462
  store i8 %i.dq, ptr %i.dt, align 1, !tbaa !16
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1
  %i.du = add nsw i32 %.0171412.us.us, %1         ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.bf
  br i1 %i.dv, label %bb.t, label %._crit_edge415.us, !llvm.loop !62

._crit_edge415.us:                                ; preds = %._crit_edge403.us, %bb.t
  %indvars.iv.next456 = add i64 %indvars.iv455, %i.bl
  %i.dw = icmp slt i64 %indvars.iv.next466, %i.bm
  %indvars.iv.next449 = add i32 %indvars.iv448, %1
  br i1 %i.dw, label %.preheader.us, label %._crit_edge420, !llvm.loop !63

bb.u:                                             ; preds = %bb.g
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bf

bb.v:                                             ; preds = %bb.h
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit270

bb.w:                                             ; preds = %bb.k, %bb.j
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit270

_ZNSt6vectorIhSaIhEED2Ev.exit268.thread:          ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt6vectorIhSaIhEED2Ev.exit266.thread:          ; preds = %bb.o
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

.lr.ph:                                           ; preds = %.lr.ph.preheader546, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader546 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_ZN2cv2ft22FT02D_FL_process_floatERKNS_11_InputArrayEiRKNS_12_OutputArrayE:bb.a
  %12 = alloca %"class.std::vector.8", align 8    ; 13 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv2ft22FT02D_FL_process_floatERKNS_11_InputArrayEiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 176) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bc

bb.g:                                             ; preds = %bb.a
  %i.j = shl nsw i32 %1, 1
  %i.k = or disjoint i32 %i.j, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !19
  store ptr %5, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %1, i32 noundef %i.k, i32 noundef %1, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #18
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #18
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull %8)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = sdiv i32 %i.u, %1                        ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = sdiv i32 %i.w, %1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 5 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %i.ac, 2                ; 3 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc225 unwind label %bb.s  ; 7 uses

.noexc225:                                        ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac ; 4 uses
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !42
  %i.ah = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0                    ; 3 uses
  br i1 %i.ai, label %bb.l, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc225
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %.noexc225, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc233 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread ; 6 uses

.noexc233:                                        ; preds = %bb.l
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac ; 3 uses
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !42
  br i1 %i.ai, label %bb.m, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228: ; preds = %.noexc233
  %i.am = getelementptr i8, ptr %i.ak, i64 4
  %.idx.i.i.i.i.i.i.i229 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %.idx.i.i.i.i.i.i.i229, i1 false), !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %.noexc233, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc242 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ; 5 uses

.noexc242:                                        ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ac ; 2 uses
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !42
  br i1 %i.ai, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237: ; preds = %.noexc242
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %.idx.i.i.i.i.i.i.i238 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %.idx.i.i.i.i.i.i.i238, i1 false), !tbaa !42
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237, %.noexc242, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14297.0360 = phi ptr [ %i.al, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.al, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0289.0350 = phi ptr [ %i.ak, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ak, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.14308.0321340 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ag, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0300.0332338 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.af, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.0280.0 = phi ptr [ %i.an, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.an, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.14.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ao, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.aq = add i32 %1, 1                           ; 4 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = icmp slt i32 %1, -1
  br i1 %i.as, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc247 unwind label %bb.t

.noexc247:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243
  %.not.i.i.i.i244 = icmp eq i32 %i.aq, 0         ; 2 uses
  br i1 %.not.i.i.i.i244, label %.preheader384, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #21
          to label %.noexc248 unwind label %bb.t  ; 6 uses

.noexc248:                                        ; preds = %bb.o
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  store i32 0, ptr %i.au, align 4, !tbaa !30
  %i.aw = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc248
  %i.ay = getelementptr i8, ptr %i.au, i64 4
  %.idx.i.i.i.i.i.i.i245 = shl nuw nsw i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %.idx.i.i.i.i.i.i.i245, i1 false), !tbaa !30
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc248
  %wide.trip.count = zext i32 %i.aq to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.preheader528, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ba = sub <4 x i32> %broadcast.splat, %vec.ind ; 2 uses
  %14 = add <4 x i32> %i.ba, splat (i32 -4)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %i.ba, ptr %i.az, align 4, !tbaa !30
  store <4 x i32> %14, ptr %i.bb, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader384.loopexit, label %.lr.ph.preheader528

.lr.ph.preheader528:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader384.loopexit:                           ; preds = %.lr.ph, %middle.block
  %i.bd = ptrtoint ptr %i.av to i64
  br label %.preheader384

.preheader384:                                    ; preds = %.preheader384.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0508 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bd, %.preheader384.loopexit ] ; 2 uses
  %.sroa.0273.0501 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.au, %.preheader384.loopexit ] ; 8 uses
  %i.be = sub nsw i32 %i.w, %1                    ; 2 uses
  %i.bf = icmp slt i32 %1, %i.be
  br i1 %i.bf, label %.preheader.lr.ph, label %._crit_edge422

.preheader.lr.ph:                                 ; preds = %.preheader384
  %i.bg = sub nsw i32 %i.u, %1                    ; 3 uses
  %i.bh = icmp slt i32 %1, %i.bg
  br i1 %i.bh, label %.preheader.us.preheader, label %._crit_edge422

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bi = sext i32 %i.u to i64
  %i.bj = sext i32 %1 to i64                      ; 4 uses
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = sext i32 %i.x to i64
  %i.bm = add nsw i64 %i.bl, 1
  %i.bn = zext nneg i32 %i.be to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge417.us
  %indvars.iv467 = phi i64 [ %i.bj, %.preheader.us.preheader ], [ %indvars.iv.next468, %._crit_edge417.us ] ; 2 uses
  %indvars.iv457 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next458, %._crit_edge417.us ] ; 3 uses
  %indvars.iv450 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next451, %._crit_edge417.us ] ; 2 uses
  %i.bo = sext i32 %indvars.iv450 to i64
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, %i.bj ; 3 uses
  br i1 %.not.i.i.i.i244, label %.lr.ph416.split.us.us, label %.lr.ph393.us.preheader

.lr.ph393.us.preheader:                           ; preds = %.preheader.us, %._crit_edge405.us
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %._crit_edge405.us ], [ %indvars.iv457, %.preheader.us ] ; 4 uses
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %._crit_edge405.us ], [ %i.bj, %.preheader.us ] ; 2 uses
  %indvars.iv445 = phi i32 [ %indvars.iv.next446, %._crit_edge405.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.bp = sext i32 %indvars.iv445 to i64
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, %i.bj ; 3 uses
  br label %.lr.ph393.us

.lr.ph393.us:                                     ; preds = %.lr.ph393.us.preheader, %._crit_edge.us
  %indvars.iv452 = phi i64 [ %i.bo, %.lr.ph393.us.preheader ], [ %indvars.iv.next453, %._crit_edge.us ] ; 4 uses
  %.0176401.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.cu, %._crit_edge.us ]
  %.0177400.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.ct, %._crit_edge.us ]
  %.0179399.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.co, %._crit_edge.us ]
  %.0181398.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.cj, %._crit_edge.us ]
  %i.bq = mul nsw i64 %indvars.iv452, %i.bi
  %i.br = sub nsw i64 %indvars.iv452, %indvars.iv467
  %i.bs = trunc nsw i64 %i.br to i32
  %i.bt = call i32 @llvm.abs.i32(i32 %i.bs, i1 true)
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0501, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph393.us
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %bb.p ], [ %i.bp, %.lr.ph393.us ] ; 4 uses
  %.1391.us = phi i32 [ %i.cu, %bb.p ], [ %.0176401.us, %.lr.ph393.us ]
  %.1178390.us = phi i32 [ %i.ct, %bb.p ], [ %.0177400.us, %.lr.ph393.us ]
  %.1180389.us = phi i32 [ %i.co, %bb.p ], [ %.0179399.us, %.lr.ph393.us ]
  %.1182388.us = phi i32 [ %i.cj, %bb.p ], [ %.0181398.us, %.lr.ph393.us ]
  %i.bx = sub nsw i64 %indvars.iv447, %indvars.iv455
  %i.by = trunc nsw i64 %i.bx to i32
  %i.bz = call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0501, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = mul nsw i32 %i.cc, %i.bw                ; 4 uses
  %i.ce = add nsw i64 %indvars.iv447, %i.bq       ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %i.o, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i32
  %i.ci = mul nsw i32 %i.cd, %i.ch
  %i.cj = add nsw i32 %i.ci, %.1182388.us         ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %i.q, i64 %i.ce
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.cd, %i.cm
  %i.co = add nsw i32 %i.cn, %.1180389.us         ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %i.s, i64 %i.ce
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nsw i32 %i.cd, %i.cr
  %i.ct = add nsw i32 %i.cs, %.1178390.us         ; 3 uses
  %i.cu = add nsw i32 %i.cd, %.1391.us            ; 3 uses
  %indvars.iv.next448 = add nsw i64 %indvars.iv447, 1
  %.not224.us.not = icmp slt i64 %indvars.iv447, %indvars.iv.next456
  br i1 %.not224.us.not, label %bb.p, label %._crit_edge.us, !llvm.loop !71

._crit_edge.us:                                   ; preds = %bb.p
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1
  %.not223.us428.not = icmp slt i64 %indvars.iv452, %indvars.iv.next468
  br i1 %.not223.us428.not, label %.lr.ph393.us, label %._crit_edge405.us, !llvm.loop !72

._crit_edge405.us:                                ; preds = %._crit_edge.us
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = fdiv float 1.000000e+00, %i.cv          ; 3 uses
  %i.cx = sitofp i32 %i.cj to float
  %i.cy = fmul float %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv459
  store float %i.cy, ptr %i.cz, align 4, !tbaa !42
  %i.da = sitofp i32 %i.co to float
  %i.db = fmul float %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv459
  store float %i.db, ptr %i.dc, align 4, !tbaa !42
  %i.dd = sitofp i32 %i.ct to float
  %i.de = fmul float %i.cw, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv459
  store float %i.de, ptr %i.df, align 4, !tbaa !42
  %indvars.iv.next460 = add nsw i64 %indvars.iv459, 1
  %i.dg = icmp slt i64 %indvars.iv.next456, %i.bk
  %indvars.iv.next446 = add i32 %indvars.iv445, %1
  br i1 %i.dg, label %.lr.ph393.us.preheader, label %._crit_edge417.us, !llvm.loop !73

.lr.ph416.split.us.us:                            ; preds = %.preheader.us, %.lr.ph416.split.us.us
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %.lr.ph416.split.us.us ], [ %indvars.iv457, %.preheader.us ] ; 4 uses
  %.0171414.us.us = phi i32 [ %i.dk, %.lr.ph416.split.us.us ], [ %1, %.preheader.us ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv464
  store float +qnan, ptr %i.dh, align 4, !tbaa !42
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv464
  store float +qnan, ptr %i.di, align 4, !tbaa !42
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv464
  store float +qnan, ptr %i.dj, align 4, !tbaa !42
  %indvars.iv.next465 = add nsw i64 %indvars.iv464, 1
  %i.dk = add nsw i32 %.0171414.us.us, %1         ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.bg
  br i1 %i.dl, label %.lr.ph416.split.us.us, label %._crit_edge417.us, !llvm.loop !73

._crit_edge417.us:                                ; preds = %._crit_edge405.us, %.lr.ph416.split.us.us
  %indvars.iv.next458 = add i64 %indvars.iv457, %i.bm
  %i.dm = icmp slt i64 %indvars.iv.next468, %i.bn
  %indvars.iv.next451 = add i32 %indvars.iv450, %1
  br i1 %i.dm, label %.preheader.us, label %._crit_edge422, !llvm.loop !74

bb.q:                                             ; preds = %bb.g
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bb

bb.r:                                             ; preds = %bb.h
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit272

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit272

_ZNSt6vectorIfSaIfEED2Ev.exit270.thread:          ; preds = %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt6vectorIfSaIfEED2Ev.exit268.thread:          ; preds = %bb.m
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit266

.lr.ph:                                           ; preds = %.lr.ph.preheader528, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader528 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.du = trunc i64 %indvars.iv to i32
  %i.dv = sub i32 %1, %i.du
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader384.loopexit, label %.lr.ph, !llvm.loop !75

._crit_edge422:                                   ; preds = %._crit_edge417.us, %.preheader.lr.ph, %.preheader384
  %i.dw = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.u unwind label %bb.z       ; 5 uses

bb.u:                                             ; preds = %._crit_edge422
  %i.dx = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.v unwind label %bb.aa      ; 6 uses
end_hunk_1
