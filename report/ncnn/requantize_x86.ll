Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/requantize_x86?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bd = load ptr, ptr %2, align 8, !tbaa !19
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZNK4ncnn3Mat5emptyEv.exit39.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !48
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bg, %i.bj
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZNK4ncnn3Mat5emptyEv.exit39.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.bn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  br label %_ZNK4ncnn3Mat5emptyEv.exit39.thread

_ZNK4ncnn3Mat5emptyEv.exit39.thread:              ; preds = %bb.j, %bb.e, %bb.c, %bb.d, %bb.b, %bb.k, %bb.f, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit38, %_ZNK4ncnn3Mat5emptyEv.exit39
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit39 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit38 ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.e ], [ -100, %bb.b ], [ -100, %bb.d ], [ 0, %bb.c ], [ -100, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn14Requantize_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(512) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn10RequantizeC2Ev(ptr noundef nonnull align 8 dereferenceable(512) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn14Requantize_x86E, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !53
  ret void
}

declare void @_ZN4ncnn10RequantizeC2Ev(ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.h = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !22
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %.not31 = icmp sgt i32 %i.k, %i.j
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 296
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 368
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.q = getelementptr i8, ptr %8, i64 340
  %i.r = getelementptr i8, ptr %8, i64 484
  %i.s = getelementptr i8, ptr %8, i64 412
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.032 = phi i32 [ %i.k, %.lr.ph ], [ %i.ag, %bb.c ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !22     ; 2 uses
  %i.u = mul nsw i32 %i.t, %.032                  ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !19
  %i.w = load i32, ptr %5, align 4, !tbaa !22     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %6, align 8, !tbaa !19
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.y
  %i.ac = load i32, ptr %7, align 4, !tbaa !22
  %i.ad = sub nsw i32 %i.ac, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ad)
  %i.ae = mul nsw i32 %.sroa.speculated, %i.w
  %i.af = load i32, ptr %i.o, align 4, !tbaa !38
  %.val = load ptr, ptr %i.l, align 8, !tbaa !19
  %.val25 = load i32, ptr %i.q, align 4, !tbaa !21
  %.val26 = load ptr, ptr %i.m, align 8
  %.val27 = load i32, ptr %i.r, align 4, !tbaa !21
  %.val28 = load ptr, ptr %i.n, align 8
  %.val29 = load i32, ptr %i.s, align 4, !tbaa !21
  call fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr noundef %i.z, ptr noundef %i.ab, ptr %.val, i32 %.val25, ptr %.val26, i32 %.val27, ptr %.val28, i32 %.val29, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ae, i32 noundef 1)
  %i.ag = add nsw i32 %.032, 1
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !22
  %.not.not = icmp slt i32 %.032, %i.ah
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val, i32 %.44.val, ptr nofree readonly captures(none) %.0.val1, i32 %.44.val3, ptr nofree readonly captures(none) %.0.val5, i32 %.44.val7, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = mul i32 %5, %4                           ; 14 uses
  %i.b = load float, ptr %.0.val, align 4, !tbaa !61 ; 3 uses
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = icmp sgt i32 %.44.val, 1
  %i.f = icmp eq i32 %5, 8                        ; 3 uses
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load <4 x float>, ptr %.0.val, align 4, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load <4 x float>, ptr %i.h, align 4, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0682 = phi nsz <4 x float> [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.0681 = phi nsz <4 x float> [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = load float, ptr %.0.val5, align 4, !tbaa !61 ; 3 uses
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = icmp sgt i32 %.44.val7, 1
  %or.cond3 = and i1 %i.m, %i.f
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load <4 x float>, ptr %.0.val5, align 4, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val5, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0131 = phi nsz <4 x float> [ %i.n, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %.0130 = phi nsz <4 x float> [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader758, label %bb.u

.preheader758:                                    ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 7
  br i1 %i.r, label %.lr.ph781.preheader, label %.preheader757

.lr.ph781.preheader:                              ; preds = %.preheader758
  %i.s = load ptr, ptr %3, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load ptr, ptr %3, align 8
  br label %.lr.ph781

.preheader757.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %i.w = and i32 %i.a, 2147483640
  br label %.preheader757

.preheader757:                                    ; preds = %.preheader757.loopexit, %.preheader758
  %.0127.lcssa = phi i32 [ 0, %.preheader758 ], [ %i.w, %.preheader757.loopexit ] ; 3 uses
  %.0118.lcssa = phi ptr [ %1, %.preheader758 ], [ %i.mq, %.preheader757.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader758 ], [ %i.mp, %.preheader757.loopexit ] ; 2 uses
  %i.x = or disjoint i32 %.0127.lcssa, 3
  %i.y = icmp slt i32 %i.x, %i.a
  br i1 %i.y, label %.lr.ph788, label %.preheader

.lr.ph781:                                        ; preds = %.lr.ph781.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %.0780 = phi ptr [ %0, %.lr.ph781.preheader ], [ %i.mp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ] ; 3 uses
  %.0118779 = phi ptr [ %1, %.lr.ph781.preheader ], [ %i.mq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ] ; 2 uses
  %.0127778 = phi i32 [ 0, %.lr.ph781.preheader ], [ %i.mr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ]
  %i.z = load <4 x i32>, ptr %.0780, align 1, !tbaa !62
  %i.aa = sitofp fast <4 x i32> %i.z to <4 x float>
  %i.ab = getelementptr inbounds nuw i8, ptr %.0780, i64 16
  %i.ac = load <4 x i32>, ptr %i.ab, align 1, !tbaa !62
  %i.ad = sitofp fast <4 x i32> %i.ac to <4 x float>
  %i.ae = fmul fast <4 x float> %.0682, %i.aa     ; 10 uses
  %i.af = fmul fast <4 x float> %.0681, %i.ad     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread: ; preds = %.lr.ph781
  %i.ag = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ae, <4 x float> zeroinitializer)
  %i.ah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690: ; preds = %.lr.ph781
  %i.ai = load float, ptr %i.v, align 4, !tbaa !61
  %i.aj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ae)
  %i.ak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ae)
  %i.al = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = fmul fast <4 x float> %i.am, %i.ak
  %i.ao = fadd fast <4 x float> %i.an, %i.aj
  %i.ap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.ar = fmul fast <4 x float> %i.am, %i.aq
  %i.as = fadd fast <4 x float> %i.ar, %i.ap
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693: ; preds = %.lr.ph781
  %i.at = load float, ptr %i.s, align 4, !tbaa !61
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aw = load float, ptr %i.u, align 4, !tbaa !61
  %i.ax = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.az = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ae, <4 x float> nofpclass(nan inf) %i.av)
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.az, <4 x float> nofpclass(nan inf) %i.ay)
  %i.bb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> nofpclass(nan inf) %i.av)
  %i.bc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> nofpclass(nan inf) %i.ay)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696: ; preds = %.lr.ph781
  %i.bd = fneg fast <4 x float> %i.ae
  %i.be = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bd, <4 x float> splat (float f0x42B0C0A5))
  %i.bf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.be, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bg = fmul fast <4 x float> %i.bf, splat (float f0x3FB8AA3B)
  %i.bh = fadd fast <4 x float> %i.bg, splat (float 5.000000e-01) ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bh)
  %i.bj = sitofp fast <4 x i32> %i.bi to <4 x float> ; 2 uses
  %i.bk = fcmp fast olt <4 x float> %i.bh, %i.bj
  %i.bl = select <4 x i1> %i.bk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bm = fsub fast <4 x float> %i.bj, %i.bl      ; 2 uses
  %i.bn = fmul fast <4 x float> %i.bm, splat (float f0x3F317218)
  %i.bo = fsub fast <4 x float> %i.bf, %i.bn      ; 8 uses
  %i.bp = fmul fast <4 x float> %i.bo, %i.bo
  %i.bq = fmul fast <4 x float> %i.bo, splat (float f0x39506967)
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0x3AB743CE)
  %i.bs = fmul fast <4 x float> %i.br, %i.bo
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3C088908)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bo
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3D2AA9C1)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bo
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0x3E2AAAAA)
  %i.by = fmul fast <4 x float> %i.bx, %i.bo
  %i.bz = fadd fast <4 x float> %i.by, splat (float 5.000000e-01)
  %i.ca = fmul fast <4 x float> %i.bp, %i.bz
  %i.cb = fadd fast <4 x float> %i.bo, %i.ca
  %i.cc = fadd fast <4 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bm)
  %i.ce = shl <4 x i32> %i.cd, splat (i32 23)
  %i.cf = add <4 x i32> %i.ce, splat (i32 1065353216)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>
  %i.ch = fmul fast <4 x float> %i.cc, %i.cg
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ci
  %i.ck = fneg fast <4 x float> %i.af
  %i.cl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ck, <4 x float> splat (float f0x42B0C0A5))
  %i.cm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3FB8AA3B)
  %i.co = fadd fast <4 x float> %i.cn, splat (float 5.000000e-01) ; 2 uses
  %i.cp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.co)
  %i.cq = sitofp fast <4 x i32> %i.cp to <4 x float> ; 2 uses
  %i.cr = fcmp fast olt <4 x float> %i.co, %i.cq
  %i.cs = select <4 x i1> %i.cr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ct = fsub fast <4 x float> %i.cq, %i.cs      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.ct, splat (float f0x3F317218)
  %i.cv = fsub fast <4 x float> %i.cm, %i.cu      ; 8 uses
  %i.cw = fmul fast <4 x float> %i.cv, %i.cv
  %i.cx = fmul fast <4 x float> %i.cv, splat (float f0x39506967)
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0x3AB743CE)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cv
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3C088908)
  %i.db = fmul fast <4 x float> %i.da, %i.cv
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0x3D2AA9C1)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cv
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3E2AAAAA)
  %i.df = fmul fast <4 x float> %i.de, %i.cv
  %i.dg = fadd fast <4 x float> %i.df, splat (float 5.000000e-01)
  %i.dh = fmul fast <4 x float> %i.cw, %i.dg
  %i.di = fadd fast <4 x float> %i.cv, %i.dh
  %i.dj = fadd fast <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ct)
  %i.dl = shl <4 x i32> %i.dk, splat (i32 23)
  %i.dm = add <4 x i32> %i.dl, splat (i32 1065353216)
  %i.dn = bitcast <4 x i32> %i.dm to <4 x float>
  %i.do = fmul fast <4 x float> %i.dj, %i.dn
  %i.dp = fadd fast <4 x float> %i.do, splat (float 1.000000e+00)
  %i.dq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699: ; preds = %.lr.ph781
  %i.dr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ae, <4 x float> splat (float f0x42B0C0A5))
  %i.ds = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dt = fmul fast <4 x float> %i.ds, splat (float f0x3FB8AA3B)
  %i.du = fadd fast <4 x float> %i.dt, splat (float 5.000000e-01) ; 2 uses
  %i.dv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.du)
  %i.dw = sitofp fast <4 x i32> %i.dv to <4 x float> ; 2 uses
  %i.dx = fcmp fast olt <4 x float> %i.du, %i.dw
  %i.dy = select <4 x i1> %i.dx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dz = fsub fast <4 x float> %i.dw, %i.dy      ; 2 uses
  %i.ea = fmul fast <4 x float> %i.dz, splat (float f0x3F317218)
  %i.eb = fsub fast <4 x float> %i.ds, %i.ea      ; 8 uses
  %i.ec = fmul fast <4 x float> %i.eb, %i.eb
  %i.ed = fmul fast <4 x float> %i.eb, splat (float f0x39506967)
  %i.ee = fadd fast <4 x float> %i.ed, splat (float f0x3AB743CE)
  %i.ef = fmul fast <4 x float> %i.ee, %i.eb
  %i.eg = fadd fast <4 x float> %i.ef, splat (float f0x3C088908)
  %i.eh = fmul fast <4 x float> %i.eg, %i.eb
  %i.ei = fadd fast <4 x float> %i.eh, splat (float f0x3D2AA9C1)
  %i.ej = fmul fast <4 x float> %i.ei, %i.eb
  %i.ek = fadd fast <4 x float> %i.ej, splat (float f0x3E2AAAAA)
  %i.el = fmul fast <4 x float> %i.ek, %i.eb
  %i.em = fadd fast <4 x float> %i.el, splat (float 5.000000e-01)
  %i.en = fmul fast <4 x float> %i.ec, %i.em
  %i.eo = fadd fast <4 x float> %i.eb, %i.en
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 1.000000e+00)
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.er = shl <4 x i32> %i.eq, splat (i32 23)
  %i.es = add <4 x i32> %i.er, splat (i32 1065353216)
  %i.et = bitcast <4 x i32> %i.es to <4 x float>
  %i.eu = fmul fast <4 x float> %i.ep, %i.et
  %i.ev = fadd fast <4 x float> %i.eu, splat (float 1.000000e+00) ; 2 uses
  %i.ew = fcmp fast ole <4 x float> %i.ev, zeroinitializer
  %i.ex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ev, <4 x float> splat (float f0x00800000))
  %i.ey = bitcast <4 x float> %i.ex to <4 x i32>  ; 2 uses
  %i.ez = lshr <4 x i32> %i.ey, splat (i32 23)
  %i.fa = and <4 x i32> %i.ey, splat (i32 -2139095041)
  %i.fb = or disjoint <4 x i32> %i.fa, splat (i32 1056964608)
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>  ; 3 uses
  %i.fd = add nsw <4 x i32> %i.ez, splat (i32 -127)
  %i.fe = sitofp fast <4 x i32> %i.fd to <4 x float> ; 2 uses
  %i.ff = fadd fast <4 x float> %i.fe, splat (float 1.000000e+00)
  %i.fg = fcmp fast olt <4 x float> %i.fc, splat (float f0x3F3504F3) ; 2 uses
  %i.fh = select <4 x i1> %i.fg, <4 x float> %i.fc, <4 x float> zeroinitializer
  %i.fi = fadd fast <4 x float> %i.fc, splat (float -1.000000e+00)
  %i.fj = select fast <4 x i1> %i.fg, <4 x float> %i.fe, <4 x float> %i.ff
  %i.fk = fadd fast <4 x float> %i.fi, %i.fh      ; 12 uses
  %i.fl = fmul fast <4 x float> %i.fk, %i.fk
  %i.fm = fmul fast <4 x float> %i.fk, splat (float f0x3D9021BB)
  %i.fn = fadd fast <4 x float> %i.fm, splat (float f0xBDEBD1B8)
  %i.fo = fmul fast <4 x float> %i.fn, %i.fk
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0x3DEF251A)
  %i.fq = fmul fast <4 x float> %i.fp, %i.fk
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0xBDFE5D4F)
  %i.fs = fmul fast <4 x float> %i.fr, %i.fk
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0x3E11E9BF)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fk
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0xBE2AAE50)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fk
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0x3E4CCEAC)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fk
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0xBE7FFFFC)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fk
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0x3EAAAAAA)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fk
  %reass.mul749 = fmul fast <4 x float> %i.fj, splat (float f0x3F317218)
  %reass.add753 = fadd fast <4 x float> %i.gc, splat (float -5.000000e-01)
  %reass.mul754 = fmul fast <4 x float> %i.fl, %reass.add753
  %i.gd = fadd fast <4 x float> %reass.mul749, %i.fk
  %i.ge = fadd fast <4 x float> %i.gd, %reass.mul754
  %.neg730 = fmul fast <4 x float> %i.ge, splat (float -2.000000e+00)
  %i.gf = select fast <4 x i1> %i.ew, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg730
  %i.gg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gf, <4 x float> splat (float f0x42B0C0A5))
  %i.gh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gi = fmul fast <4 x float> %i.gh, splat (float f0x3FB8AA3B)
  %i.gj = fadd fast <4 x float> %i.gi, splat (float 5.000000e-01) ; 2 uses
  %i.gk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gj)
  %i.gl = sitofp fast <4 x i32> %i.gk to <4 x float> ; 2 uses
  %i.gm = fcmp fast olt <4 x float> %i.gj, %i.gl
  %i.gn = select <4 x i1> %i.gm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.go = fsub fast <4 x float> %i.gl, %i.gn      ; 2 uses
  %i.gp = fmul fast <4 x float> %i.go, splat (float f0x3F317218)
  %i.gq = fsub fast <4 x float> %i.gh, %i.gp      ; 8 uses
  %i.gr = fmul fast <4 x float> %i.gq, %i.gq
  %i.gs = fmul fast <4 x float> %i.gq, splat (float f0x39506967)
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0x3AB743CE)
  %i.gu = fmul fast <4 x float> %i.gt, %i.gq
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3C088908)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gq
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3D2AA9C1)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gq
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3E2AAAAA)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gq
  %i.hb = fadd fast <4 x float> %i.ha, splat (float 5.000000e-01)
  %i.hc = fmul fast <4 x float> %i.gr, %i.hb
  %i.hd = fadd fast <4 x float> %i.gq, %i.hc
  %i.he = fadd fast <4 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.go)
  %i.hg = shl <4 x i32> %i.hf, splat (i32 23)
  %i.hh = add <4 x i32> %i.hg, splat (i32 1065353216)
  %i.hi = bitcast <4 x i32> %i.hh to <4 x float>
  %i.hj = fmul fast <4 x float> %i.he, %i.hi
  %i.hk = fadd fast <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, splat (float -1.000000e+00)
  %i.hn = fmul fast <4 x float> %i.hm, %i.ae
  %i.ho = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> splat (float f0x42B0C0A5))
  %i.hp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ho, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hq = fmul fast <4 x float> %i.hp, splat (float f0x3FB8AA3B)
  %i.hr = fadd fast <4 x float> %i.hq, splat (float 5.000000e-01) ; 2 uses
  %i.hs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hr)
  %i.ht = sitofp fast <4 x i32> %i.hs to <4 x float> ; 2 uses
  %i.hu = fcmp fast olt <4 x float> %i.hr, %i.ht
  %i.hv = select <4 x i1> %i.hu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hw = fsub fast <4 x float> %i.ht, %i.hv      ; 2 uses
  %i.hx = fmul fast <4 x float> %i.hw, splat (float f0x3F317218)
  %i.hy = fsub fast <4 x float> %i.hp, %i.hx      ; 8 uses
  %i.hz = fmul fast <4 x float> %i.hy, %i.hy
  %i.ia = fmul fast <4 x float> %i.hy, splat (float f0x39506967)
  %i.ib = fadd fast <4 x float> %i.ia, splat (float f0x3AB743CE)
end_hunk_0
