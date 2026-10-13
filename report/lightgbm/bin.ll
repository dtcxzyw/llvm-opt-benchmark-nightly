Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 531
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZN8LightGBM17MultiValSparseBinImtED2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !332
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !372  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !371  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef nonnull %i.s) #19
  br label %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !372
  br label %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !420
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #38
  br label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit

_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !407 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.ab) #19
  br label %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit

_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit: ; preds = %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.ad) #19
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit: ; preds = %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImtED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8LightGBM17MultiValSparseBinImtED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM17MultiValSparseBinImtE8num_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !409
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM17MultiValSparseBinImtE7num_binEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !410
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK8LightGBM17MultiValSparseBinImtE19num_element_per_rowEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !411
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8LightGBM17MultiValSparseBinImtE7offsetsEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImtE10PushOneRowEiiRKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 9 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !241    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !407
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store i64 %i.g, ptr %i.l, align 8, !tbaa !91
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.p = load i64, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = add i64 %i.p, %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !111  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 1                   ; 4 uses
  %i.z = icmp ugt i64 %i.q, %i.y
  br i1 %i.z, label %bb.c, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = mul i64 %i.g, 50
  %i.ab = add i64 %i.p, %i.aa                     ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, %i.y
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = sub nuw i64 %i.ab, %i.y
  tail call void @_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ad)
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !71
  %.pre45 = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp ult i64 %i.ab, %i.y
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ab ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.af, ptr %i.s, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.ag = phi ptr [ %i.b, %bb.g ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %.pre45, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %i.ah = phi ptr [ %i.c, %bb.g ], [ %i.c, %bb.f ], [ %i.c, %bb.e ], [ %.pre44, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %.not3337 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not3337, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !331 ; 2 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !111 ; 2 uses
  %.promoted40 = load i64, ptr %i.ai, align 8, !tbaa !91 ; 3 uses
  %4 = ptrtoaddr ptr %i.ag to i64
  %5 = ptrtoaddr ptr %i.ah to i64
  %i.ak = add i64 %4, -4
  %i.al = sub i64 %i.ak, %5                       ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check62, label %scalar.ph61.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph39
  %n.vec64 = and i64 %i.an, 9223372036854775800   ; 4 uses
  %i.ao = add i64 %.promoted40, %n.vec64          ; 2 uses
  %i.ap = shl i64 %n.vec64, 2
  %i.aq = getelementptr i8, ptr %i.ah, i64 %i.ap
  %i.ar = getelementptr [2 x i8], ptr %i.aj, i64 %.promoted40
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next70, %vector.body65 ] ; 3 uses
  %i.as = shl i64 %index66, 2
  %next.gep67 = getelementptr i8, ptr %i.ah, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !58
  %wide.load69 = load <4 x i32>, ptr %i.at, align 4, !tbaa !58
  %i.au = trunc <4 x i32> %wide.load68 to <4 x i16>
  %i.av = trunc <4 x i32> %wide.load69 to <4 x i16>
  %i.aw = getelementptr [2 x i8], ptr %i.ar, i64 %index66 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <4 x i16> %i.au, ptr %i.aw, align 2, !tbaa !89
  store <4 x i16> %i.av, ptr %i.ax, align 2, !tbaa !89
  %index.next70 = add nuw i64 %index66, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next70, %n.vec64
  br i1 %i.ay, label %middle.block71, label %vector.body65, !llvm.loop !2395

middle.block71:                                   ; preds = %vector.body65
  %cmp.n72 = icmp eq i64 %i.an, %n.vec64
  br i1 %cmp.n72, label %..loopexit_crit_edge, label %scalar.ph61.preheader

scalar.ph61.preheader:                            ; preds = %.lr.ph39, %middle.block71
  %.ph = phi i64 [ %.promoted40, %.lr.ph39 ], [ %i.ao, %middle.block71 ]
  %.sroa.030.038.ph = phi ptr [ %i.ah, %.lr.ph39 ], [ %i.aq, %middle.block71 ]
  br label %scalar.ph61

scalar.ph61:                                      ; preds = %scalar.ph61.preheader, %scalar.ph61
  %i.az = phi i64 [ %i.bc, %scalar.ph61 ], [ %.ph, %scalar.ph61.preheader ] ; 2 uses
  %.sroa.030.038 = phi ptr [ %i.be, %scalar.ph61 ], [ %.sroa.030.038.ph, %scalar.ph61.preheader ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.030.038, align 4, !tbaa !58
  %i.bb = trunc i32 %i.ba to i16
  %i.bc = add i64 %i.az, 1                        ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.az
  store i16 %i.bb, ptr %i.bd, align 2, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 4 ; 2 uses
  %.not33 = icmp eq ptr %i.be, %i.ag
  br i1 %.not33, label %..loopexit_crit_edge, label %scalar.ph61, !llvm.loop !2396

bb.h:                                             ; preds = %bb.a
  %i.bf = sext i32 %1 to i64                      ; 2 uses
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !91 ; 2 uses
  %i.bj = add i64 %i.bi, %i.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bl = add nsw i32 %1, -1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !372
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !117 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !111 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 1                 ; 4 uses
  %i.bw = icmp ugt i64 %i.bj, %i.bv
  br i1 %i.bw, label %bb.i, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25

bb.i:                                             ; preds = %bb.h
  %i.bx = mul i64 %i.g, 50
  %i.by = add i64 %i.bi, %i.bx                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %i.bv
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = sub nuw i64 %i.by, %i.bv
  tail call void @_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.ca)
  %.pre = load ptr, ptr %3, align 8, !tbaa !71
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25

bb.k:                                             ; preds = %bb.i
  %i.cb = icmp ult i64 %i.by, %i.bv
  br i1 %i.cb, label %bb.l, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.by ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bq, %i.cc
  br i1 %.not.i.i24, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.cc, ptr %i.bp, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %i.cd = phi ptr [ %i.b, %bb.m ], [ %i.b, %bb.l ], [ %i.b, %bb.k ], [ %.pre43, %bb.j ], [ %i.b, %bb.h ] ; 3 uses
  %i.ce = phi ptr [ %i.c, %bb.m ], [ %i.c, %bb.l ], [ %i.c, %bb.k ], [ %.pre, %bb.j ], [ %i.c, %bb.h ] ; 5 uses
  %.not35 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !372
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.bm
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bf ; 2 uses
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !111 ; 2 uses
  %.promoted = load i64, ptr %i.ci, align 8, !tbaa !91 ; 3 uses
  %6 = ptrtoaddr ptr %i.cd to i64
  %7 = ptrtoaddr ptr %i.ce to i64
  %i.ck = add i64 %6, -4
  %i.cl = sub i64 %i.ck, %7                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cn, 9223372036854775800     ; 4 uses
  %i.co = add i64 %.promoted, %n.vec              ; 2 uses
  %i.cp = shl i64 %n.vec, 2
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %i.cr = getelementptr [2 x i8], ptr %i.cj, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !58
  %wide.load59 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !58
  %i.cu = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cv = trunc <4 x i32> %wide.load59 to <4 x i16>
  %i.cw = getelementptr [2 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store <4 x i16> %i.cu, ptr %i.cw, align 2, !tbaa !89
  store <4 x i16> %i.cv, ptr %i.cx, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !2397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %..loopexit34_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph76 = phi i64 [ %.promoted, %.lr.ph ], [ %i.co, %middle.block ]
  %.sroa.026.036.ph = phi ptr [ %i.ce, %.lr.ph ], [ %i.cq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.cz = phi i64 [ %i.dc, %scalar.ph ], [ %.ph76, %scalar.ph.preheader ] ; 2 uses
  %.sroa.026.036 = phi ptr [ %i.de, %scalar.ph ], [ %.sroa.026.036.ph, %scalar.ph.preheader ] ; 2 uses
  %i.da = load i32, ptr %.sroa.026.036, align 4, !tbaa !58
  %i.db = trunc i32 %i.da to i16
  %i.dc = add i64 %i.cz, 1                        ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.cz
  store i16 %i.db, ptr %i.dd, align 2, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.026.036, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.cd
  br i1 %.not, label %..loopexit34_crit_edge, label %scalar.ph, !llvm.loop !2398

..loopexit_crit_edge:                             ; preds = %scalar.ph61, %middle.block71
  %.lcssa = phi i64 [ %i.ao, %middle.block71 ], [ %i.bc, %scalar.ph61 ]
  store i64 %.lcssa, ptr %i.ai, align 8, !tbaa !91
  br label %.loopexit

..loopexit34_crit_edge:                           ; preds = %scalar.ph, %middle.block
  %.lcssa58 = phi i64 [ %i.co, %middle.block ], [ %i.dc, %scalar.ph ]
  store i64 %.lcssa58, ptr %i.ci, align 8, !tbaa !91
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit25, %..loopexit34_crit_edge, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImtE10CopySubrowEPKNS_11MultiValBinEPKii(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %5 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %6 = alloca %"class.std::vector.120", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8LightGBM17MultiValSparseBinImtE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.g = load ptr, ptr %5, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIjSaIjEED2Ev.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit6

_ZNSt6vectorIjSaIjEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %4, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIjSaIjEED2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit6
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !268
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit8

_ZNSt6vectorIjSaIjEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit6, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %6, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIjSaIjEED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !268
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit10

_ZNSt6vectorIjSaIjEED2Ev.exit10:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.z = load ptr, ptr %5, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIjSaIjEED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !268
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit12

_ZNSt6vectorIjSaIjEED2Ev.exit12:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.af = load ptr, ptr %4, align 8, !tbaa !241   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit12
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !268
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit12, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM17MultiValSparseBinImtE10CreateLikeEiiidRKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #39 ; 3 uses
  invoke void @_ZN8LightGBM17MultiValSparseBinImtEC2Eiid(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i32 noundef %1, i32 noundef %2, double noundef %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #38
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImtE10CopySubcolEPKNS_11MultiValBinERKSt6vectorIiSaIiEERKS5_IjSaIjEESD_SD_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #1 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN8LightGBM17MultiValSparseBinImjED2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !332
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !383  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !382  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef nonnull %i.s) #19
  br label %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !383
  br label %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !423
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #38
  br label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !407 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.ab) #19
  br label %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit

_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit: ; preds = %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.ad) #19
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit: ; preds = %_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImjED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8LightGBM17MultiValSparseBinImjED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM17MultiValSparseBinImjE8num_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !413
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM17MultiValSparseBinImjE7num_binEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !414
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK8LightGBM17MultiValSparseBinImjE19num_element_per_rowEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !415
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8LightGBM17MultiValSparseBinImjE7offsetsEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImjE10PushOneRowEiiRKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.c = load ptr, ptr %3, align 8, !tbaa !241
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !407
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store i64 %i.g, ptr %i.l, align 8, !tbaa !91
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.p = load i64, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = add i64 %i.p, %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !127  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 4 uses
  %i.z = icmp ugt i64 %i.q, %i.y
  br i1 %i.z, label %bb.c, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = mul i64 %i.g, 50
  %i.ab = add i64 %i.p, %i.aa                     ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, %i.y
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = sub nuw i64 %i.ab, %i.y
  tail call void @_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ad)
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp ult i64 %i.ab, %i.y
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.af, ptr %i.s, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.ag = load ptr, ptr %3, align 8, !tbaa !71    ; 6 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !71  ; 3 uses
  %.not3337 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not3337, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !331 ; 2 uses
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !127 ; 3 uses
  %.promoted40 = load i64, ptr %i.aj, align 8, !tbaa !91 ; 5 uses
  %4 = ptrtoaddr ptr %i.ai to i64
  %i.al = add i64 %4, -4
  %i.am = sub i64 %i.al, %i.ah                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.am, 60
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph39
  %i.ap = ptrtoaddr ptr %i.ak to i64
  %i.aq = shl i64 %.promoted40, 2
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = sub i64 %i.ah, %i.ar
  %diff.check59 = icmp ugt i64 %i.as, -32
  br i1 %diff.check59, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ao, 9223372036854775800   ; 4 uses
  %i.at = add i64 %.promoted40, %n.vec63          ; 2 uses
  %i.au = shl i64 %n.vec63, 2
  %i.av = getelementptr i8, ptr %i.ag, i64 %i.au
  %i.aw = getelementptr [4 x i8], ptr %i.ak, i64 %.promoted40
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next69, %vector.body64 ] ; 3 uses
  %i.ax = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.ag, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !58
  %wide.load68 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !58
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %index65 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %wide.load67, ptr %i.az, align 4, !tbaa !58
  store <4 x i32> %wide.load68, ptr %i.ba, align 4, !tbaa !58
  %index.next69 = add nuw i64 %index65, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next69, %n.vec63
  br i1 %i.bb, label %middle.block70, label %vector.body64, !llvm.loop !2482

middle.block70:                                   ; preds = %vector.body64
  %cmp.n71 = icmp eq i64 %i.ao, %n.vec63
  br i1 %cmp.n71, label %..loopexit_crit_edge, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %vector.memcheck58, %.lr.ph39, %middle.block70
  %.ph = phi i64 [ %.promoted40, %vector.memcheck58 ], [ %.promoted40, %.lr.ph39 ], [ %i.at, %middle.block70 ]
  %.sroa.030.038.ph = phi ptr [ %i.ag, %vector.memcheck58 ], [ %i.ag, %.lr.ph39 ], [ %i.av, %middle.block70 ]
  br label %scalar.ph60

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %i.bc = phi i64 [ %i.be, %scalar.ph60 ], [ %.ph, %scalar.ph60.preheader ] ; 2 uses
  %.sroa.030.038 = phi ptr [ %i.bg, %scalar.ph60 ], [ %.sroa.030.038.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.030.038, align 4, !tbaa !58
  %i.be = add i64 %i.bc, 1                        ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bc
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 4 ; 2 uses
  %.not33 = icmp eq ptr %i.bg, %i.ai
  br i1 %.not33, label %..loopexit_crit_edge, label %scalar.ph60, !llvm.loop !2483

bb.h:                                             ; preds = %bb.a
  %i.bh = sext i32 %1 to i64                      ; 2 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !91 ; 2 uses
  %i.bl = add i64 %i.bk, %i.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bn = add nsw i32 %1, -1
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !383
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bo ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !132 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !127 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 4 uses
  %i.by = icmp ugt i64 %i.bl, %i.bx
  br i1 %i.by, label %bb.i, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25

bb.i:                                             ; preds = %bb.h
  %i.bz = mul i64 %i.g, 50
  %i.ca = add i64 %i.bk, %i.bz                    ; 4 uses
  %i.cb = icmp ugt i64 %i.ca, %i.bx
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = sub nuw i64 %i.ca, %i.bx
  tail call void @_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.cc)
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp ult i64 %i.ca, %i.bx
  br i1 %i.cd, label %bb.l, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ca ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bs, %i.ce
  br i1 %.not.i.i24, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %i.br, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %i.cf = load ptr, ptr %3, align 8, !tbaa !71    ; 6 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64              ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !71  ; 3 uses
  %.not35 = icmp eq ptr %i.cf, %i.ch
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25
  %i.ci = load ptr, ptr %i.bm, align 8, !tbaa !383
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.bo
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.bh ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !127 ; 3 uses
  %.promoted = load i64, ptr %i.cl, align 8, !tbaa !91 ; 5 uses
  %5 = ptrtoaddr ptr %i.ch to i64
  %i.cn = add i64 %5, -4
  %i.co = sub i64 %i.cn, %i.cg                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cr = ptrtoaddr ptr %i.cm to i64
  %i.cs = shl i64 %.promoted, 2
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = sub i64 %i.cg, %i.ct
  %diff.check = icmp ugt i64 %i.cu, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 4 uses
  %i.cv = add i64 %.promoted, %n.vec              ; 2 uses
  %i.cw = shl i64 %n.vec, 2
  %i.cx = getelementptr i8, ptr %i.cf, i64 %i.cw
  %i.cy = getelementptr [4 x i8], ptr %i.cm, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !58
  %wide.load56 = load <4 x i32>, ptr %i.da, align 4, !tbaa !58
  %i.db = getelementptr [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %wide.load, ptr %i.db, align 4, !tbaa !58
  store <4 x i32> %wide.load56, ptr %i.dc, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !2484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %..loopexit34_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph75 = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.cv, %middle.block ]
  %.sroa.026.036.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph ], [ %i.cx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.de = phi i64 [ %i.dg, %scalar.ph ], [ %.ph75, %scalar.ph.preheader ] ; 2 uses
  %.sroa.026.036 = phi ptr [ %i.di, %scalar.ph ], [ %.sroa.026.036.ph, %scalar.ph.preheader ] ; 2 uses
  %i.df = load i32, ptr %.sroa.026.036, align 4, !tbaa !58
  %i.dg = add i64 %i.de, 1                        ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.de
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !58
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.026.036, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.di, %i.ch
  br i1 %.not, label %..loopexit34_crit_edge, label %scalar.ph, !llvm.loop !2485

..loopexit_crit_edge:                             ; preds = %scalar.ph60, %middle.block70
  %.lcssa = phi i64 [ %i.at, %middle.block70 ], [ %i.be, %scalar.ph60 ]
  store i64 %.lcssa, ptr %i.aj, align 8, !tbaa !91
  br label %.loopexit

..loopexit34_crit_edge:                           ; preds = %scalar.ph, %middle.block
  %.lcssa55 = phi i64 [ %i.cv, %middle.block ], [ %i.dg, %scalar.ph ]
  store i64 %.lcssa55, ptr %i.cl, align 8, !tbaa !91
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit25, %..loopexit34_crit_edge, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImjE10CopySubrowEPKNS_11MultiValBinEPKii(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %5 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %6 = alloca %"class.std::vector.120", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8LightGBM17MultiValSparseBinImjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.g = load ptr, ptr %5, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIjSaIjEED2Ev.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit6

_ZNSt6vectorIjSaIjEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %4, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIjSaIjEED2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit6
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !268
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit8

_ZNSt6vectorIjSaIjEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit6, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %6, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIjSaIjEED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !268
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit10

_ZNSt6vectorIjSaIjEED2Ev.exit10:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.z = load ptr, ptr %5, align 8, !tbaa !241    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIjSaIjEED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !268
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit12

_ZNSt6vectorIjSaIjEED2Ev.exit12:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.af = load ptr, ptr %4, align 8, !tbaa !241   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit12
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !268
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit12, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM17MultiValSparseBinImjE10CreateLikeEiiidRKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #39 ; 3 uses
  invoke void @_ZN8LightGBM17MultiValSparseBinImjEC2Eiid(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i32 noundef %1, i32 noundef %2, double noundef %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #38
end_hunk_1
