Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4ncnn12InnerProductD2Ev:bb.a
          to label %_ZN4ncnn3MatD2Ev.exit3 unwind label %bb.m, !inline_history !0

bb.k:                                             ; preds = %bb.i
  %.not.i26 = icmp eq ptr %i.w, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.w) #10
  br label %_ZN4ncnn3MatD2Ev.exit3

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit3:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit4, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit3
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit2

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit2 unwind label %bb.s, !inline_history !0

bb.q:                                             ; preds = %bb.o
  %.not.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i24, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.al) #10
  br label %_ZN4ncnn3MatD2Ev.exit2

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit3, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %.not.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit1

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 3 uses
  %.not3.i14 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.y, !inline_history !0

bb.w:                                             ; preds = %bb.u
  %.not.i22 = icmp eq ptr %i.ba, null
  br i1 %.not.i22, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ba) #10
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.y:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit2, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bk, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !18 ; 3 uses
  %.not3.i18 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae, !inline_history !0

bb.ac:                                            ; preds = %bb.aa
  %.not.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i21, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bp) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.z, %_ZN4ncnn3MatD2Ev.exit1, %bb.ab, %bb.ac, %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bw, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #10
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn16InnerProduct_x8624create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = and i32 %i.d, 7
  %i.j = icmp eq i32 %i.i, 0
  %i.k = and i1 %i.j, %i.h                        ; 3 uses
  %.036 = select i1 %i.k, i32 8, i32 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !45
  %i.o = sdiv i32 %i.n, %.036
  %i.p = zext nneg i32 %.036 to i64               ; 2 uses
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.e, i32 noundef %i.o, i64 noundef %i.p, i32 noundef %.036, ptr noundef null)
          to label %.preheader50 unwind label %bb.h

.preheader50:                                     ; preds = %bb.a
  %i.q = add nsw i32 %.036, -1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !45
  %.not = icmp sgt i32 %.036, %i.r
  br i1 %.not, label %._crit_edge56, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.s = select i1 %i.k, i32 3, i32 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.v = icmp sgt i32 %i.e, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  br i1 %i.v, label %.preheader.lr.ph.us.preheader, label %._crit_edge56

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.y = zext nneg i32 %i.q to i64
  %wide.trip.count64 = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv66 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next67, %._crit_edge.us ] ; 10 uses
  %i.z = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.aa = lshr i32 %i.z, %i.s
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !47
  %i.ad = sext i32 %i.ac to i64
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = mul nsw i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !48
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %3 = add nuw nsw i64 %indvars.iv66, 1
  %4 = add nuw nsw i64 %indvars.iv66, 2
  %5 = add nuw nsw i64 %indvars.iv66, 3
  %6 = add nuw nsw i64 %indvars.iv66, 4
  %7 = add nuw nsw i64 %indvars.iv66, 5
  %8 = add nuw nsw i64 %indvars.iv66, 6
  %9 = add nuw nsw i64 %indvars.iv66, 7
  br label %.epil.preheader.a

.preheader.us.new:                                ; preds = %.epil.preheader.a
  %10 = load ptr, ptr %2, align 8, !tbaa !19
  %11 = load i32, ptr %i.w, align 4, !tbaa !47
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %3, %12
  %14 = load i64, ptr %i.x, align 8, !tbaa !48
  %15 = mul i64 %13, %14
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %indvars.iv.epil.init
  %18 = load i8, ptr %17, align 1, !tbaa !49
  store i8 %18, ptr %i.bm, align 1, !tbaa !49
  %19 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 2
  %i.aj = load ptr, ptr %2, align 8, !tbaa !19
  %i.ak = load i32, ptr %i.w, align 4, !tbaa !47
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %4, %i.al
  %i.an = load i64, ptr %i.x, align 8, !tbaa !48
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !49
  store i8 %i.ar, ptr %19, align 1, !tbaa !49
  %20 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 3
  %21 = load ptr, ptr %2, align 8, !tbaa !19
  %22 = load i32, ptr %i.w, align 4, !tbaa !47
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %5, %23
  %25 = load i64, ptr %i.x, align 8, !tbaa !48
  %26 = mul i64 %24, %25
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %26
  %i.as = getelementptr inbounds nuw i8, ptr %27, i64 %indvars.iv.epil.init
  %28 = load i8, ptr %i.as, align 1, !tbaa !49
  store i8 %28, ptr %20, align 1, !tbaa !49
  %29 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 4
  %30 = load ptr, ptr %2, align 8, !tbaa !19
  %31 = load i32, ptr %i.w, align 4, !tbaa !47
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %6, %32
  %34 = load i64, ptr %i.x, align 8, !tbaa !48
  %35 = mul i64 %33, %34
  %36 = getelementptr inbounds nuw i8, ptr %30, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %indvars.iv.epil.init
  %38 = load i8, ptr %37, align 1, !tbaa !49
  store i8 %38, ptr %29, align 1, !tbaa !49
  %39 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 5
  %i.at = load ptr, ptr %2, align 8, !tbaa !19
  %i.au = load i32, ptr %i.w, align 4, !tbaa !47
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %7, %i.av
  %i.ax = load i64, ptr %i.x, align 8, !tbaa !48
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !49
  store i8 %i.bb, ptr %39, align 1, !tbaa !49
  %40 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 6
  %41 = load ptr, ptr %2, align 8, !tbaa !19
  %42 = load i32, ptr %i.w, align 4, !tbaa !47
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %8, %43
  %45 = load i64, ptr %i.x, align 8, !tbaa !48
  %46 = mul i64 %44, %45
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 %46
  %i.bc = getelementptr inbounds nuw i8, ptr %47, i64 %indvars.iv.epil.init
  %48 = load i8, ptr %i.bc, align 1, !tbaa !49
  store i8 %48, ptr %40, align 1, !tbaa !49
  %49 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 7
  %50 = load ptr, ptr %2, align 8, !tbaa !19
  %51 = load i32, ptr %i.w, align 4, !tbaa !47
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %9, %52
  %54 = load i64, ptr %i.x, align 8, !tbaa !48
  %55 = mul i64 %53, %54
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %indvars.iv.epil.init
  %58 = load i8, ptr %57, align 1, !tbaa !49
  %59 = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 8
  store i8 %58, ptr %49, align 1, !tbaa !49
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %.preheader.us.new, %.epil.preheader.a
  %.lcssa = phi ptr [ %i.bm, %.epil.preheader.a ], [ %59, %.preheader.us.new ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge.us, label %.epil.preheader.a, !llvm.loop !97

.epil.preheader.a:                                ; preds = %.preheader.lr.ph.us, %.unr-lcssa
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvars.iv.next62, %.unr-lcssa ] ; 9 uses
  %.151.us.epil.init = phi ptr [ %i.ai, %.preheader.lr.ph.us ], [ %.lcssa, %.unr-lcssa ] ; 9 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !19
  %i.be = load i32, ptr %i.w, align 4, !tbaa !47
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %indvars.iv66, %i.bf
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !48
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.epil.init
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 1 ; 2 uses
  store i8 %i.bl, ptr %.151.us.epil.init, align 1, !tbaa !49
  br i1 %i.k, label %.preheader.us.new, label %.unr-lcssa

._crit_edge.us:                                   ; preds = %.unr-lcssa
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, %i.p ; 2 uses
  %i.bn = add nuw nsw i64 %indvars.iv.next67, %i.y
  %i.bo = load i32, ptr %i.c, align 8, !tbaa !45
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %i.bn, %i.bp
  br i1 %i.bq, label %.preheader.lr.ph.us, label %._crit_edge56, !llvm.loop !98

._crit_edge56:                                    ; preds = %._crit_edge.us, %.lr.ph, %.preheader50
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.b

bb.b:                                             ; preds = %._crit_edge56
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit37

bb.c:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bx)
          to label %_ZN4ncnn3MatD2Ev.exit37 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i48 = icmp eq ptr %i.bx, null
  br i1 %.not.i48, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.bx) #10
  br label %_ZN4ncnn3MatD2Ev.exit37

bb.g:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %bb.b, %._crit_edge56, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ce = load i32, ptr %i.c, align 8, !tbaa !45
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i32 noundef %i.ce, i64 noundef 4, ptr noundef null)
  %i.cf = load i32, ptr %i.c, align 8, !tbaa !45  ; 4 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit37
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !19 ; 3 uses
  %wide.trip.count72 = zext nneg i32 %i.cf to i64 ; 2 uses
  %xtraiter90 = and i64 %wide.trip.count72, 1
  %i.cl = icmp eq i32 %i.cf, 1
  br i1 %i.cl, label %.epil.preheader89, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter93 = and i64 %wide.trip.count72, 2147483646
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !17 ; 2 uses
  %.not.i38 = icmp eq ptr %i.co, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = atomicrmw add ptr %i.co, i32 -1 acq_rel, align 4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !18 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.cs, null
  %i.ct = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.ct)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i46 = icmp eq ptr %i.ct, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ct) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %i.cm

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %._crit_edge, label %.epil.preheader89

.epil.preheader89:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph58
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next70.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i32 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod92)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv69.epil.init
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52 ; 2 uses
  %i.db = fcmp fast oeq float %i.da, 0.000000e+00
  br i1 %i.db, label %._crit_edge.loopexit.epilog-lcssa, label %bb.o

bb.o:                                             ; preds = %.epil.preheader89
  %i.dc = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !52
  %i.de = fmul fast float %i.dd, %i.da
  %i.df = fdiv fast float 1.000000e+00, %i.de
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.o, %.epil.preheader89
  %.0.epil = phi nsz float [ %i.df, %bb.o ], [ 0.000000e+00, %.epil.preheader89 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv69.epil.init
  store float %.0.epil, ptr %i.dg, align 4, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit37
  %i.dh = load i8, ptr %1, align 8, !tbaa !59, !range !41, !noundef !42
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %bb.aa

bb.p:                                             ; preds = %bb.t, %.lr.ph58.new
  %indvars.iv69 = phi i64 [ 0, %.lr.ph58.new ], [ %indvars.iv.next70.1, %bb.t ] ; 4 uses
  %niter94 = phi i64 [ 0, %.lr.ph58.new ], [ %niter94.next.1, %bb.t ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv69
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !52 ; 2 uses
  %i.dl = fcmp fast oeq float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !52
  %i.do = fmul fast float %i.dn, %i.dk
  %i.dp = fdiv fast float 1.000000e+00, %i.do
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0 = phi nsz float [ %i.dp, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv69
  store float %.0, ptr %i.dq, align 4, !tbaa !52
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next70
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !52 ; 2 uses
  %i.dt = fcmp fast oeq float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.dv = load float, ptr %i.du, align 4, !tbaa !52
  %i.dw = fmul fast float %i.dv, %i.ds
  %i.dx = fdiv fast float 1.000000e+00, %i.dw
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.1 = phi nsz float [ %i.dx, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next70
  store float %.0.1, ptr %i.dy, align 4, !tbaa !52
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.p, !llvm.loop !99

bb.u:                                             ; preds = %._crit_edge
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !17 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ea, null
  br i1 %.not.i42, label %_ZN4ncnn3Mat7releaseEv.exit44, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.w, label %_ZN4ncnn3Mat7releaseEv.exit44

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !18 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.ee, null
  %i.ef = load ptr, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i43, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit44

bb.y:                                             ; preds = %bb.w
  %.not.i45 = icmp eq ptr %i.ef, null
  br i1 %.not.i45, label %_ZN4ncnn3Mat7releaseEv.exit44, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ef) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit44

_ZN4ncnn3Mat7releaseEv.exit44:                    ; preds = %bb.z, %bb.y, %bb.u, %bb.v, %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.ek, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ej, i8 0, i64 20, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit44, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn16InnerProduct_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 7 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.i = load i8, ptr %i.h, align 1, !tbaa !46, !range !41, !noundef !42
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = and i32 %i.d, 3
  %i.l = icmp eq i32 %i.k, 0
  %i.m = and i1 %i.l, %i.j
  br i1 %i.m, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.n = ashr exact i32 %i.d, 2
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef %i.e, i32 noundef %i.n, i64 noundef 8, i32 noundef 4, ptr noundef null)
          to label %.preheader110.i unwind label %bb.i

.preheader110.i:                                  ; preds = %bb.b
  %i.o = icmp sgt i32 %i.d, 3
  br i1 %i.o, label %.lr.ph130.i, label %._crit_edge131.i

.lr.ph130.i:                                      ; preds = %.preheader110.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp sgt i32 %i.e, 3
  %i.u = and i32 %i.e, -4                         ; 4 uses
  %i.v = zext nneg i32 %i.d to i64                ; 2 uses
  %.pre138.i = load ptr, ptr %2, align 8, !tbaa !19 ; 5 uses
  br i1 %i.t, label %.lr.ph130.i.split.us, label %.lr.ph130.i.split

.lr.ph130.i.split.us:                             ; preds = %.lr.ph130.i
  %.not = icmp eq i32 %i.u, %i.e
  %.neg = or disjoint i32 %i.u, 1
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.w = or disjoint i32 %i.u, 1
  %i.x = icmp eq i32 %i.e, %.neg
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %._crit_edge.i.us, %.lr.ph130.i.split.us
  %i.y = phi ptr [ %.pre138.i, %.lr.ph130.i.split.us ], [ %.pre.i.us, %._crit_edge.i.us ] ; 4 uses
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph130.i.split.us ], [ %indvars.iv.next.i.us, %._crit_edge.i.us ] ; 6 uses
  %i.z = or disjoint i64 %indvars.iv.i.us, 3
  %i.aa = lshr exact i64 %indvars.iv.i.us, 2
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.aa, %i.ad
  %i.af = load i64, ptr %i.q, align 8, !tbaa !48
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !47
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !48
  %i.al = mul i64 %i.ak, %i.aj                    ; 4 uses
  %i.am = mul i64 %i.al, %indvars.iv.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am
  %i.ao = or disjoint i64 %indvars.iv.i.us, 1
  %i.ap = mul i64 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ap
  %i.ar = or disjoint i64 %indvars.iv.i.us, 2
  %i.as = mul i64 %i.al, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.as
  %i.au = mul i64 %i.al, %i.z
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.064116.i.us = phi ptr [ %i.cb, %.lr.ph.i.us ], [ %i.ah, %.lr.ph.i.preheader.us ] ; 7 uses
  %.065115.i.us = phi ptr [ %i.bx, %.lr.ph.i.us ], [ %i.an, %.lr.ph.i.preheader.us ] ; 3 uses
  %.067114.i.us = phi i32 [ %i.cc, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %.069113.i.us = phi ptr [ %i.ca, %.lr.ph.i.us ], [ %i.av, %.lr.ph.i.preheader.us ] ; 3 uses
  %.071112.i.us = phi ptr [ %i.bz, %.lr.ph.i.us ], [ %i.at, %.lr.ph.i.preheader.us ] ; 3 uses
  %.073111.i.us = phi ptr [ %i.by, %.lr.ph.i.us ], [ %i.aq, %.lr.ph.i.preheader.us ] ; 3 uses
  %i.aw = load <4 x float>, ptr %.065115.i.us, align 1, !tbaa !49 ; 2 uses
  %i.ax = load <4 x float>, ptr %.073111.i.us, align 1, !tbaa !49 ; 2 uses
  %i.ay = load <4 x float>, ptr %.071112.i.us, align 1, !tbaa !49 ; 2 uses
  %i.az = load <4 x float>, ptr %.069113.i.us, align 1, !tbaa !49 ; 2 uses
  %i.ba = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bc = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bd = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.be = shufflevector <4 x float> %i.ba, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bf = shufflevector <4 x float> %i.bb, <4 x float> %i.ba, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bg = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bh = shufflevector <4 x float> %i.bd, <4 x float> %i.bc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bi = bitcast <4 x float> %i.be to <8 x i16>
  %i.bj = bitcast <4 x float> %i.bf to <8 x i16>
  %i.bk = shufflevector <8 x i16> %i.bi, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.bl = shufflevector <8 x i16> %i.bj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.bm = bitcast <8 x i16> %i.bk to <4 x float>
  %i.bn = bitcast <8 x i16> %i.bl to <4 x float>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> %i.bn, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bp = bitcast <4 x float> %i.bg to <8 x i16>
  %i.bq = bitcast <4 x float> %i.bh to <8 x i16>
  %i.br = shufflevector <8 x i16> %i.bp, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x i16> %i.bq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.bt = bitcast <8 x i16> %i.br to <4 x float>
  %i.bu = bitcast <8 x i16> %i.bs to <4 x float>
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.bo, ptr %.064116.i.us, align 1, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %.064116.i.us, i64 16
  store <4 x float> %i.bv, ptr %i.bw, align 1, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %.065115.i.us, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.073111.i.us, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.071112.i.us, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.069113.i.us, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.064116.i.us, i64 32 ; 3 uses
  %i.cc = add nuw nsw i32 %.067114.i.us, 4        ; 2 uses
  %i.cd = or disjoint i32 %i.cc, 3
  %i.ce = icmp slt i32 %i.cd, %i.e
  br i1 %i.ce, label %.lr.ph.i.us, label %.preheader.loopexit.i.us, !llvm.loop !100

.preheader.loopexit.i.us:                         ; preds = %.lr.ph.i.us
  %.pre.i.us = load ptr, ptr %2, align 8, !tbaa !19
  br i1 %.not, label %._crit_edge.i.us, label %.lr.ph128.i.us.preheader

.lr.ph128.i.us.preheader:                         ; preds = %.preheader.loopexit.i.us
  br i1 %lcmp.mod.not, label %.lr.ph128.i.us.prol.loopexit, label %.lr.ph128.i.us.prol

.lr.ph128.i.us.prol:                              ; preds = %.lr.ph128.i.us.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.065115.i.us, i64 20
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !52
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = trunc nuw i32 %i.ch to i16
  store i16 %i.ci, ptr %i.cb, align 2, !tbaa !72
  %i.cj = getelementptr inbounds nuw i8, ptr %.073111.i.us, i64 20
  %i.ck = load i32, ptr %i.by, align 4, !tbaa !52
  %i.cl = lshr i32 %i.ck, 16
  %i.cm = trunc nuw i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %.064116.i.us, i64 34
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !72
  %i.co = getelementptr inbounds nuw i8, ptr %.071112.i.us, i64 20
  %i.cp = load i32, ptr %i.bz, align 4, !tbaa !52
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %.064116.i.us, i64 36
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !72
  %i.ct = getelementptr inbounds nuw i8, ptr %.069113.i.us, i64 20
  %i.cu = load i32, ptr %i.ca, align 4, !tbaa !52
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc nuw i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %.064116.i.us, i64 38
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %.064116.i.us, i64 40
  br label %.lr.ph128.i.us.prol.loopexit

.lr.ph128.i.us.prol.loopexit:                     ; preds = %.lr.ph128.i.us.prol, %.lr.ph128.i.us.preheader
  %.1127.i.us.unr = phi ptr [ %i.cb, %.lr.ph128.i.us.preheader ], [ %i.cy, %.lr.ph128.i.us.prol ]
  %.166126.i.us.unr = phi ptr [ %i.bx, %.lr.ph128.i.us.preheader ], [ %i.cf, %.lr.ph128.i.us.prol ]
  %.168125.i.us.unr = phi i32 [ %i.u, %.lr.ph128.i.us.preheader ], [ %i.w, %.lr.ph128.i.us.prol ]
  %.170124.i.us.unr = phi ptr [ %i.ca, %.lr.ph128.i.us.preheader ], [ %i.ct, %.lr.ph128.i.us.prol ]
  %.172123.i.us.unr = phi ptr [ %i.bz, %.lr.ph128.i.us.preheader ], [ %i.co, %.lr.ph128.i.us.prol ]
  %.174122.i.us.unr = phi ptr [ %i.by, %.lr.ph128.i.us.preheader ], [ %i.cj, %.lr.ph128.i.us.prol ]
  br i1 %i.x, label %._crit_edge.i.us, label %.lr.ph128.i.us

.lr.ph128.i.us:                                   ; preds = %.lr.ph128.i.us.prol.loopexit, %.lr.ph128.i.us
  %.1127.i.us = phi ptr [ %i.em, %.lr.ph128.i.us ], [ %.1127.i.us.unr, %.lr.ph128.i.us.prol.loopexit ] ; 9 uses
  %.166126.i.us = phi ptr [ %i.dt, %.lr.ph128.i.us ], [ %.166126.i.us.unr, %.lr.ph128.i.us.prol.loopexit ] ; 3 uses
  %.168125.i.us = phi i32 [ %i.en, %.lr.ph128.i.us ], [ %.168125.i.us.unr, %.lr.ph128.i.us.prol.loopexit ]
  %.170124.i.us = phi ptr [ %i.eh, %.lr.ph128.i.us ], [ %.170124.i.us.unr, %.lr.ph128.i.us.prol.loopexit ] ; 3 uses
  %.172123.i.us = phi ptr [ %i.ec, %.lr.ph128.i.us ], [ %.172123.i.us.unr, %.lr.ph128.i.us.prol.loopexit ] ; 3 uses
  %.174122.i.us = phi ptr [ %i.dx, %.lr.ph128.i.us ], [ %.174122.i.us.unr, %.lr.ph128.i.us.prol.loopexit ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.166126.i.us, i64 4
  %i.da = load i32, ptr %.166126.i.us, align 4, !tbaa !52
  %i.db = lshr i32 %i.da, 16
  %i.dc = trunc nuw i32 %i.db to i16
  store i16 %i.dc, ptr %.1127.i.us, align 2, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %.174122.i.us, i64 4
  %i.de = load i32, ptr %.174122.i.us, align 4, !tbaa !52
  %i.df = lshr i32 %i.de, 16
  %i.dg = trunc nuw i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 2
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %.172123.i.us, i64 4
  %i.dj = load i32, ptr %.172123.i.us, align 4, !tbaa !52
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc nuw i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 4
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !72
  %i.dn = getelementptr inbounds nuw i8, ptr %.170124.i.us, i64 4
  %i.do = load i32, ptr %.170124.i.us, align 4, !tbaa !52
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 6
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !72
  %i.ds = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.166126.i.us, i64 8
  %i.du = load i32, ptr %i.cz, align 4, !tbaa !52
  %i.dv = lshr i32 %i.du, 16
  %i.dw = trunc nuw i32 %i.dv to i16
  store i16 %i.dw, ptr %i.ds, align 2, !tbaa !72
  %i.dx = getelementptr inbounds nuw i8, ptr %.174122.i.us, i64 8
  %i.dy = load i32, ptr %i.dd, align 4, !tbaa !52
  %i.dz = lshr i32 %i.dy, 16
  %i.ea = trunc nuw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 10
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !72
  %i.ec = getelementptr inbounds nuw i8, ptr %.172123.i.us, i64 8
  %i.ed = load i32, ptr %i.di, align 4, !tbaa !52
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc nuw i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 12
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !72
  %i.eh = getelementptr inbounds nuw i8, ptr %.170124.i.us, i64 8
  %i.ei = load i32, ptr %i.dn, align 4, !tbaa !52
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc nuw i32 %i.ej to i16
  %i.el = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 14
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !72
  %i.em = getelementptr inbounds nuw i8, ptr %.1127.i.us, i64 16
  %i.en = add nuw nsw i32 %.168125.i.us, 2        ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.en, %i.e
  br i1 %exitcond.not.i.us.1, label %._crit_edge.i.us, label %.lr.ph128.i.us, !llvm.loop !101

._crit_edge.i.us:                                 ; preds = %.lr.ph128.i.us.prol.loopexit, %.lr.ph128.i.us, %.preheader.loopexit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.eo = or disjoint i64 %indvars.iv.next.i.us, 3
  %i.ep = icmp samesign ult i64 %i.eo, %i.v
  br i1 %i.ep, label %.lr.ph.i.preheader.us, label %._crit_edge131.i, !llvm.loop !102

.lr.ph130.i.split:                                ; preds = %.lr.ph130.i
  %i.eq = icmp sgt i32 %i.e, 0
  br i1 %i.eq, label %.preheader.i.preheader, label %._crit_edge131.i

.preheader.i.preheader:                           ; preds = %.lr.ph130.i.split
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !19
  %.pre13 = load i32, ptr %i.p, align 4, !tbaa !47
  %.pre14 = load i64, ptr %i.q, align 8, !tbaa !48
  %.pre15 = load i32, ptr %i.r, align 4, !tbaa !47
  %.pre16 = load i64, ptr %i.s, align 8, !tbaa !48
  %i.er = sext i32 %.pre13 to i64
  %factor.op.mul = mul i64 %.pre14, %i.er
  %i.es = sext i32 %.pre15 to i64
  %i.et = mul i64 %.pre16, %i.es                  ; 4 uses
  %exitcond.not.i = icmp eq i32 %i.e, 1
  %exitcond.not.i.1 = icmp eq i32 %i.e, 2
  br label %.preheader.i

._crit_edge131.i:                                 ; preds = %._crit_edge.i.loopexit, %._crit_edge.i.us, %.lr.ph130.i.split, %.preheader110.i
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit79.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge131.i
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 4
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit79.i

bb.d:                                             ; preds = %bb.c
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !18 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ez, null
  %i.fa = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef %i.fa)
          to label %_ZN4ncnn3MatD2Ev.exit79.i unwind label %bb.h, !inline_history !0

bb.f:                                             ; preds = %bb.d
  %.not.i97.i = icmp eq ptr %i.fa, null
  br i1 %.not.i97.i, label %_ZN4ncnn3MatD2Ev.exit79.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.fa) #10
  br label %_ZN4ncnn3MatD2Ev.exit79.i

bb.h:                                             ; preds = %bb.e
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit79.i:                        ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.i:                                             ; preds = %bb.b
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !17 ; 2 uses
  %.not.i80.i = icmp eq ptr %i.fi, null
  br i1 %.not.i80.i, label %_ZN4ncnn3MatD2Ev.exit78.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit78.i

bb.k:                                             ; preds = %bb.j
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !18 ; 3 uses
  %.not3.i81.i = icmp eq ptr %i.fm, null
  %i.fn = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i81.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fn)
          to label %_ZN4ncnn3MatD2Ev.exit78.i unwind label %bb.o, !inline_history !0

bb.m:                                             ; preds = %bb.k
  %.not.i95.i = icmp eq ptr %i.fn, null
  br i1 %.not.i95.i, label %_ZN4ncnn3MatD2Ev.exit78.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.fn) #10
  br label %_ZN4ncnn3MatD2Ev.exit78.i

bb.o:                                             ; preds = %bb.l
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit78.i:                        ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.ae

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.preheader.i.preheader ] ; 6 uses
  %i.ft = or disjoint i64 %indvars.iv.i, 3
  %i.fu = mul i64 %i.et, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre138.i, i64 %i.fu ; 3 uses
  %i.fw = or disjoint i64 %indvars.iv.i, 2
  %i.fx = mul i64 %i.et, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre138.i, i64 %i.fx ; 3 uses
  %i.fz = or disjoint i64 %indvars.iv.i, 1
  %i.ga = mul i64 %i.et, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre138.i, i64 %i.ga ; 3 uses
  %i.gc = mul i64 %i.et, %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre138.i, i64 %i.gc ; 3 uses
  %i.ge = lshr exact i64 %indvars.iv.i, 2
  %.reass = mul i64 %i.ge, %factor.op.mul
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass ; 12 uses
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !52
  %i.gh = lshr i32 %i.gg, 16
  %i.gi = trunc nuw i32 %i.gh to i16
  store i16 %i.gi, ptr %i.gf, align 2, !tbaa !72
  %i.gj = load i32, ptr %i.gb, align 4, !tbaa !52
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !72
  %i.gn = load i32, ptr %i.fy, align 4, !tbaa !52
  %i.go = lshr i32 %i.gn, 16
  %i.gp = trunc nuw i32 %i.go to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !72
  %i.gr = load i32, ptr %i.fv, align 4, !tbaa !52
  %i.gs = lshr i32 %i.gr, 16
  %i.gt = trunc nuw i32 %i.gs to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 6
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !72
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph128.i.1

.lr.ph128.i.1:                                    ; preds = %.preheader.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !52
  %i.hb = lshr i32 %i.ha, 16
  %i.hc = trunc nuw i32 %i.hb to i16
  store i16 %i.hc, ptr %i.gv, align 2, !tbaa !72
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !52
  %i.he = lshr i32 %i.hd, 16
  %i.hf = trunc nuw i32 %i.he to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 10
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !72
  %i.hh = load i32, ptr %i.gx, align 4, !tbaa !52
  %i.hi = lshr i32 %i.hh, 16
  %i.hj = trunc nuw i32 %i.hi to i16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !72
  %i.hl = load i32, ptr %i.gw, align 4, !tbaa !52
  %i.hm = lshr i32 %i.hl, 16
  %i.hn = trunc nuw i32 %i.hm to i16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gf, i64 14
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !72
  br i1 %exitcond.not.i.1, label %._crit_edge.i.loopexit, label %.lr.ph128.i.2

.lr.ph128.i.2:                                    ; preds = %.lr.ph128.i.1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !52
  %i.hv = lshr i32 %i.hu, 16
  %i.hw = trunc nuw i32 %i.hv to i16
  store i16 %i.hw, ptr %i.hp, align 2, !tbaa !72
  %i.hx = load i32, ptr %i.hs, align 4, !tbaa !52
  %i.hy = lshr i32 %i.hx, 16
  %i.hz = trunc nuw i32 %i.hy to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gf, i64 18
  store i16 %i.hz, ptr %i.ia, align 2, !tbaa !72
  %i.ib = load i32, ptr %i.hr, align 4, !tbaa !52
  %i.ic = lshr i32 %i.ib, 16
  %i.id = trunc nuw i32 %i.ic to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !72
  %i.if = load i32, ptr %i.hq, align 4, !tbaa !52
  %i.ig = lshr i32 %i.if, 16
  %i.ih = trunc nuw i32 %i.ig to i16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gf, i64 22
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !72
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %.lr.ph128.i.2, %.lr.ph128.i.1, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ij = or disjoint i64 %indvars.iv.next.i, 3
  %i.ik = icmp samesign ult i64 %i.ij, %i.v
  br i1 %i.ik, label %.preheader.i, label %._crit_edge131.i, !llvm.loop !102

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  invoke void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !17 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.im, null
  br i1 %.not.i84.i, label %_ZN4ncnn3MatD2Ev.exit77.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.in = atomicrmw add ptr %i.im, i32 -1 acq_rel, align 4
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit77.i

bb.s:                                             ; preds = %bb.r
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !18 ; 3 uses
  %.not3.i85.i = icmp eq ptr %i.iq, null
  %i.ir = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i85.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !11
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef %i.ir)
          to label %_ZN4ncnn3MatD2Ev.exit77.i unwind label %bb.w, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i93.i = icmp eq ptr %i.ir, null
  br i1 %.not.i93.i, label %_ZN4ncnn3MatD2Ev.exit77.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ir) #10
  br label %_ZN4ncnn3MatD2Ev.exit77.i

bb.w:                                             ; preds = %bb.t
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit77.i:                        ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.x:                                             ; preds = %bb.p
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !17 ; 2 uses
  %.not.i88.i = icmp eq ptr %i.iz, null
  br i1 %.not.i88.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ja = atomicrmw add ptr %i.iz, i32 -1 acq_rel, align 4
  %i.jb = icmp eq i32 %i.ja, 1
  br i1 %i.jb, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit.i

bb.z:                                             ; preds = %bb.y
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !18 ; 3 uses
  %.not3.i89.i = icmp eq ptr %i.jd, null
  %i.je = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i89.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !11
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef %i.je)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ad, !inline_history !0

bb.ab:                                            ; preds = %bb.z
  %.not.i92.i = icmp eq ptr %i.je, null
  br i1 %.not.i92.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.je) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit78.i
  %.pn.i = phi { ptr, i32 } [ %i.ix, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.fg, %_ZN4ncnn3MatD2Ev.exit78.i ]
  resume { ptr, i32 } %.pn.i

_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit79.i, %_ZN4ncnn3MatD2Ev.exit77.i
  %i.jk = load i8, ptr %1, align 8, !tbaa !59, !range !41, !noundef !42
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.jn, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jo = atomicrmw add ptr %i.jn, i32 -1 acq_rel, align 4
  %i.jp = icmp eq i32 %i.jo, 1
  br i1 %i.jp, label %bb.ah, label %_ZN4ncnn3Mat7releaseEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.jr, null
  %i.js = load ptr, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !11
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.js), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i3 = icmp eq ptr %i.js, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.js) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.ak, %bb.aj, %bb.af, %bb.ag, %bb.ai
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.jx, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jw, i8 0, i64 20, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  ret i32 0
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %9 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = sdiv i32 %i.g, %i.i
  store i32 %i.j, ptr %i.a, align 4, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %.not.i106 = icmp eq i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  br i1 %.not.i106, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %.pre to i32
  %i.m = shl i32 %.tr.i, 3
  %i.n = sdiv i32 %i.m, %i.l
  %i.o = icmp eq i32 %i.n, 8
  br label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.s, ptr %4, align 16, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZNK4ncnn16InnerProduct_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  call void @__clang_call_terminate(ptr %i.fh) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit41:                          ; preds = %bb.q, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit50.thread

bb.w:                                             ; preds = %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.m ], [ %i.cw, %bb.j ]
  %i.fi = load ptr, ptr %i.bk, align 8, !tbaa !17 ; 2 uses
  %.not.i42 = icmp eq ptr %i.fi, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.bu, align 16, !tbaa !18 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i46 = icmp eq ptr %i.fm, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fm) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.x, %bb.w, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %.pn

_ZNK4ncnn3Mat5emptyEv.exit50.thread:              ; preds = %bb.c, %_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit50, %_ZN4ncnn3MatD2Ev.exit41
  %.4 = phi i32 [ %.3, %_ZN4ncnn3MatD2Ev.exit41 ], [ 0, %_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit50 ], [ -100, %bb.c ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not1217 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1217, label %._crit_edge1224, label %.lr.ph1223

.lr.ph1223:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %3, align 4, !tbaa !57    ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1223, %.thread1090
  %.pr10891282 = phi i32 [ %.pre, %.lr.ph1223 ], [ %.pr10891283, %.thread1090 ] ; 3 uses
  %.pr10911274 = phi i32 [ %.pre, %.lr.ph1223 ], [ %.pr10911275, %.thread1090 ] ; 3 uses
  %.pr1270 = phi i32 [ %.pre, %.lr.ph1223 ], [ %.pr1268, %.thread1090 ] ; 2 uses
  %i.t = phi i32 [ %.pre, %.lr.ph1223 ], [ %i.bba, %.thread1090 ] ; 2 uses
  %indvars.iv1263 = phi i64 [ %i.r, %.lr.ph1223 ], [ %indvars.iv.next1264, %.thread1090 ] ; 9 uses
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %4, align 4, !tbaa !57     ; 2 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %6, align 4, !tbaa !57
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.lr.ph1140.preheader, label %thread-pre-split

.lr.ph1140.preheader:                             ; preds = %bb.e
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv1263, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  br label %.lr.ph1140

.lr.ph1140:                                       ; preds = %.lr.ph1140.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193
  %indvars.iv = phi i64 [ 0, %.lr.ph1140.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193 ] ; 3 uses
  %.01701137 = phi ptr [ %i.af, %.lr.ph1140.preheader ], [ %i.zs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193 ] ; 5 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !19
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %indvars.iv, %i.ai
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !48
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %8, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv1263, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !48
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load ptr, ptr %9, align 8, !tbaa !65    ; 2 uses
  %.not178 = icmp eq ptr %i.au, null
  br i1 %.not178, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1140
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph1140
  %.0991 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1140 ], [ %i.aw, %bb.f ] ; 8 uses
  %i.ax = load i32, ptr %10, align 4, !tbaa !57   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.01661133 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %bb.g ]
  %.01671132 = phi ptr [ %i.bx, %.lr.ph ], [ %i.at, %bb.g ] ; 5 uses
  %.01681131 = phi ptr [ %i.by, %.lr.ph ], [ %i.am, %bb.g ] ; 2 uses
  %.09881130 = phi <4 x float> [ %i.bw, %.lr.ph ], [ %.0991, %bb.g ]
  %.09891129 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.0991, %bb.g ]
  %.09901128 = phi <4 x float> [ %i.bs, %.lr.ph ], [ %.0991, %bb.g ]
  %.19921127 = phi <4 x float> [ %i.bq, %.lr.ph ], [ %.0991, %bb.g ]
  %i.az = load float, ptr %.01671132, align 4, !tbaa !52
  %i.ba = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.01671132, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !52
  %i.be = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = getelementptr inbounds nuw i8, ptr %.01671132, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !52
  %i.bi = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = getelementptr inbounds nuw i8, ptr %.01671132, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !52
  %i.bm = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = load <4 x float>, ptr %.01681131, align 1, !tbaa !49 ; 4 uses
  %i.bp = fmul fast <4 x float> %i.bo, %i.bb
  %i.bq = fadd fast <4 x float> %i.bp, %.19921127 ; 2 uses
  %i.br = fmul fast <4 x float> %i.bo, %i.bf
  %i.bs = fadd fast <4 x float> %i.br, %.09901128 ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bj, %i.bo
  %i.bu = fadd fast <4 x float> %i.bt, %.09891129 ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bn, %i.bo
  %i.bw = fadd fast <4 x float> %i.bv, %.09881130 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01671132, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.01681131, i64 16
  %i.bz = add nuw nsw i32 %.01661133, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.1992.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bq, %.lr.ph ] ; 10 uses
  %.0990.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bs, %.lr.ph ] ; 10 uses
  %.0989.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bu, %.lr.ph ] ; 10 uses
  %.0988.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bw, %.lr.ph ] ; 10 uses
  %i.ca = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.ca, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread: ; preds = %._crit_edge
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1992.lcssa, <4 x float> zeroinitializer)
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0990.lcssa, <4 x float> zeroinitializer)
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0989.lcssa, <4 x float> zeroinitializer)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0988.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998: ; preds = %._crit_edge
  %i.cf = load ptr, ptr %12, align 8, !tbaa !19
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !52
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1992.lcssa)
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1992.lcssa)
  %i.cj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = fmul fast <4 x float> %i.ck, %i.ci
  %i.cm = fadd fast <4 x float> %i.cl, %i.ch
  %i.cn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0990.lcssa)
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0990.lcssa)
  %i.cp = fmul fast <4 x float> %i.ck, %i.co
  %i.cq = fadd fast <4 x float> %i.cp, %i.cn
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0989.lcssa)
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0989.lcssa)
  %i.ct = fmul fast <4 x float> %i.ck, %i.cs
  %i.cu = fadd fast <4 x float> %i.ct, %i.cr
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0988.lcssa)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0988.lcssa)
  %i.cx = fmul fast <4 x float> %i.ck, %i.cw
  %i.cy = fadd fast <4 x float> %i.cx, %i.cv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001: ; preds = %._crit_edge
  %i.cz = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !52
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1992.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0990.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0989.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0988.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.dg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004: ; preds = %._crit_edge
  %i.dp = fneg fast <4 x float> %.1992.lcssa
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dr, splat (float f0x3FB8AA3B)
  %i.dt = fadd fast <4 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = sitofp fast <4 x i32> %i.du to <4 x float> ; 2 uses
  %i.dw = fcmp fast olt <4 x float> %i.dt, %i.dv
  %i.dx = select <4 x i1> %i.dw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dy = fsub fast <4 x float> %i.dv, %i.dx      ; 2 uses
  %i.dz = fmul fast <4 x float> %i.dy, splat (float f0x3F317218)
  %i.ea = fsub fast <4 x float> %i.dr, %i.dz      ; 8 uses
  %i.eb = fmul fast <4 x float> %i.ea, %i.ea
  %i.ec = fmul fast <4 x float> %i.ea, splat (float f0x39506967)
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3AB743CE)
  %i.ee = fmul fast <4 x float> %i.ed, %i.ea
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3C088908)
  %i.eg = fmul fast <4 x float> %i.ef, %i.ea
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3D2AA9C1)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ea
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3E2AAAAA)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ea
  %i.el = fadd fast <4 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = fmul fast <4 x float> %i.eb, %i.el
  %i.en = fadd fast <4 x float> %i.ea, splat (float 1.000000e+00)
  %i.eo = fadd fast <4 x float> %i.en, %i.em
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eq = shl <4 x i32> %i.ep, splat (i32 23)
  %i.er = add <4 x i32> %i.eq, splat (i32 1065353216)
  %i.es = bitcast <4 x i32> %i.er to <4 x float>
  %i.et = fmul fast <4 x float> %i.eo, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eu
  %i.ew = fneg fast <4 x float> %.0990.lcssa
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ey, splat (float f0x3FB8AA3B)
  %i.fa = fadd fast <4 x float> %i.ez, splat (float 5.000000e-01) ; 2 uses
  %i.fb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fa)
  %i.fc = sitofp fast <4 x i32> %i.fb to <4 x float> ; 2 uses
  %i.fd = fcmp fast olt <4 x float> %i.fa, %i.fc
  %i.fe = select <4 x i1> %i.fd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ff = fsub fast <4 x float> %i.fc, %i.fe      ; 2 uses
  %i.fg = fmul fast <4 x float> %i.ff, splat (float f0x3F317218)
  %i.fh = fsub fast <4 x float> %i.ey, %i.fg      ; 8 uses
  %i.fi = fmul fast <4 x float> %i.fh, %i.fh
  %i.fj = fmul fast <4 x float> %i.fh, splat (float f0x39506967)
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3AB743CE)
  %i.fl = fmul fast <4 x float> %i.fk, %i.fh
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3C088908)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fh
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0x3D2AA9C1)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fh
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3E2AAAAA)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fh
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 5.000000e-01)
  %i.ft = fmul fast <4 x float> %i.fi, %i.fs
  %i.fu = fadd fast <4 x float> %i.fh, splat (float 1.000000e+00)
  %i.fv = fadd fast <4 x float> %i.fu, %i.ft
  %i.fw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fx = shl <4 x i32> %i.fw, splat (i32 23)
  %i.fy = add <4 x i32> %i.fx, splat (i32 1065353216)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = fmul fast <4 x float> %i.fv, %i.fz
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 1.000000e+00)
  %i.gc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gb
  %i.gd = fneg fast <4 x float> %.0989.lcssa
  %i.ge = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gd, <4 x float> splat (float f0x42B0C0A5))
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gg = fmul fast <4 x float> %i.gf, splat (float f0x3FB8AA3B)
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 5.000000e-01) ; 2 uses
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gh)
  %i.gj = sitofp fast <4 x i32> %i.gi to <4 x float> ; 2 uses
  %i.gk = fcmp fast olt <4 x float> %i.gh, %i.gj
  %i.gl = select <4 x i1> %i.gk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gm = fsub fast <4 x float> %i.gj, %i.gl      ; 2 uses
  %i.gn = fmul fast <4 x float> %i.gm, splat (float f0x3F317218)
  %i.go = fsub fast <4 x float> %i.gf, %i.gn      ; 8 uses
  %i.gp = fmul fast <4 x float> %i.go, %i.go
  %i.gq = fmul fast <4 x float> %i.go, splat (float f0x39506967)
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3AB743CE)
  %i.gs = fmul fast <4 x float> %i.gr, %i.go
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0x3C088908)
  %i.gu = fmul fast <4 x float> %i.gt, %i.go
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3D2AA9C1)
  %i.gw = fmul fast <4 x float> %i.gv, %i.go
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3E2AAAAA)
  %i.gy = fmul fast <4 x float> %i.gx, %i.go
  %i.gz = fadd fast <4 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = fmul fast <4 x float> %i.gp, %i.gz
  %i.hb = fadd fast <4 x float> %i.go, splat (float 1.000000e+00)
  %i.hc = fadd fast <4 x float> %i.hb, %i.ha
  %i.hd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gm)
  %i.he = shl <4 x i32> %i.hd, splat (i32 23)
  %i.hf = add <4 x i32> %i.he, splat (i32 1065353216)
  %i.hg = bitcast <4 x i32> %i.hf to <4 x float>
  %i.hh = fmul fast <4 x float> %i.hc, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.hi
  %i.hk = fneg fast <4 x float> %.0988.lcssa
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hk, <4 x float> splat (float f0x42B0C0A5))
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hn = fmul fast <4 x float> %i.hm, splat (float f0x3FB8AA3B)
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 5.000000e-01) ; 2 uses
  %i.hp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ho)
  %i.hq = sitofp fast <4 x i32> %i.hp to <4 x float> ; 2 uses
  %i.hr = fcmp fast olt <4 x float> %i.ho, %i.hq
  %i.hs = select <4 x i1> %i.hr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ht = fsub fast <4 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = fmul fast <4 x float> %i.ht, splat (float f0x3F317218)
  %i.hv = fsub fast <4 x float> %i.hm, %i.hu      ; 8 uses
  %i.hw = fmul fast <4 x float> %i.hv, %i.hv
  %i.hx = fmul fast <4 x float> %i.hv, splat (float f0x39506967)
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3AB743CE)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hv
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0x3C088908)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hv
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3D2AA9C1)
  %i.id = fmul fast <4 x float> %i.ic, %i.hv
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0x3E2AAAAA)
  %i.if = fmul fast <4 x float> %i.ie, %i.hv
  %i.ig = fadd fast <4 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fmul fast <4 x float> %i.hw, %i.ig
  %i.ii = fadd fast <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.ij = fadd fast <4 x float> %i.ii, %i.ih
  %i.ik = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.il = shl <4 x i32> %i.ik, splat (i32 23)
  %i.im = add <4 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.ij, %i.in
  %i.ip = fadd fast <4 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ip
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

end_hunk_1
begin_hunk_2_@_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.sz = select fast <4 x i1> %i.rq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1097
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> splat (float f0x42B0C0A5))
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.tc = fmul fast <4 x float> %i.tb, splat (float f0x3FB8AA3B)
  %i.td = fadd fast <4 x float> %i.tc, splat (float 5.000000e-01) ; 2 uses
  %i.te = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.td)
  %i.tf = sitofp fast <4 x i32> %i.te to <4 x float> ; 2 uses
  %i.tg = fcmp fast olt <4 x float> %i.td, %i.tf
  %i.th = select <4 x i1> %i.tg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ti = fsub fast <4 x float> %i.tf, %i.th      ; 2 uses
  %i.tj = fmul fast <4 x float> %i.ti, splat (float f0x3F317218)
  %i.tk = fsub fast <4 x float> %i.tb, %i.tj      ; 8 uses
  %i.tl = fmul fast <4 x float> %i.tk, %i.tk
  %i.tm = fmul fast <4 x float> %i.tk, splat (float f0x39506967)
  %i.tn = fadd fast <4 x float> %i.tm, splat (float f0x3AB743CE)
  %i.to = fmul fast <4 x float> %i.tn, %i.tk
  %i.tp = fadd fast <4 x float> %i.to, splat (float f0x3C088908)
  %i.tq = fmul fast <4 x float> %i.tp, %i.tk
  %i.tr = fadd fast <4 x float> %i.tq, splat (float f0x3D2AA9C1)
  %i.ts = fmul fast <4 x float> %i.tr, %i.tk
  %i.tt = fadd fast <4 x float> %i.ts, splat (float f0x3E2AAAAA)
  %i.tu = fmul fast <4 x float> %i.tt, %i.tk
  %i.tv = fadd fast <4 x float> %i.tu, splat (float 5.000000e-01)
  %i.tw = fmul fast <4 x float> %i.tl, %i.tv
  %i.tx = fadd fast <4 x float> %i.tk, splat (float 1.000000e+00)
  %i.ty = fadd fast <4 x float> %i.tx, %i.tw
  %i.tz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.ua = shl <4 x i32> %i.tz, splat (i32 23)
  %i.ub = add <4 x i32> %i.ua, splat (i32 1065353216)
  %i.uc = bitcast <4 x i32> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %i.ty, %i.uc
  %i.ue = fadd fast <4 x float> %i.ud, splat (float 1.000000e+00)
  %i.uf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ue
  %i.ug = fadd fast <4 x float> %i.uf, splat (float -1.000000e+00)
  %i.uh = fmul fast <4 x float> %i.ug, %.0989.lcssa
  %i.ui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0988.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.uj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ui, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.uk = fmul fast <4 x float> %i.uj, splat (float f0x3FB8AA3B)
  %i.ul = fadd fast <4 x float> %i.uk, splat (float 5.000000e-01) ; 2 uses
  %i.um = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ul)
  %i.un = sitofp fast <4 x i32> %i.um to <4 x float> ; 2 uses
  %i.uo = fcmp fast olt <4 x float> %i.ul, %i.un
  %i.up = select <4 x i1> %i.uo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uq = fsub fast <4 x float> %i.un, %i.up      ; 2 uses
  %i.ur = fmul fast <4 x float> %i.uq, splat (float f0x3F317218)
  %i.us = fsub fast <4 x float> %i.uj, %i.ur      ; 8 uses
  %i.ut = fmul fast <4 x float> %i.us, %i.us
  %i.uu = fmul fast <4 x float> %i.us, splat (float f0x39506967)
  %i.uv = fadd fast <4 x float> %i.uu, splat (float f0x3AB743CE)
  %i.uw = fmul fast <4 x float> %i.uv, %i.us
  %i.ux = fadd fast <4 x float> %i.uw, splat (float f0x3C088908)
  %i.uy = fmul fast <4 x float> %i.ux, %i.us
  %i.uz = fadd fast <4 x float> %i.uy, splat (float f0x3D2AA9C1)
  %i.va = fmul fast <4 x float> %i.uz, %i.us
  %i.vb = fadd fast <4 x float> %i.va, splat (float f0x3E2AAAAA)
  %i.vc = fmul fast <4 x float> %i.vb, %i.us
  %i.vd = fadd fast <4 x float> %i.vc, splat (float 5.000000e-01)
  %i.ve = fmul fast <4 x float> %i.ut, %i.vd
  %i.vf = fadd fast <4 x float> %i.us, splat (float 1.000000e+00)
  %i.vg = fadd fast <4 x float> %i.vf, %i.ve
  %i.vh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uq)
  %i.vi = shl <4 x i32> %i.vh, splat (i32 23)
  %i.vj = add <4 x i32> %i.vi, splat (i32 1065353216)
  %i.vk = bitcast <4 x i32> %i.vj to <4 x float>
  %i.vl = fmul fast <4 x float> %i.vg, %i.vk
  %i.vm = fadd fast <4 x float> %i.vl, splat (float 1.000000e+00) ; 2 uses
  %i.vn = fcmp fast ole <4 x float> %i.vm, zeroinitializer
  %i.vo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vm, <4 x float> splat (float f0x00800000))
  %i.vp = bitcast <4 x float> %i.vo to <4 x i32>  ; 2 uses
  %i.vq = lshr <4 x i32> %i.vp, splat (i32 23)
  %i.vr = and <4 x i32> %i.vp, splat (i32 -2139095041)
  %i.vs = or disjoint <4 x i32> %i.vr, splat (i32 1056964608)
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>  ; 3 uses
  %i.vu = add nsw <4 x i32> %i.vq, splat (i32 -127)
  %i.vv = sitofp fast <4 x i32> %i.vu to <4 x float> ; 2 uses
  %i.vw = fadd fast <4 x float> %i.vv, splat (float 1.000000e+00)
  %i.vx = fcmp fast olt <4 x float> %i.vt, splat (float f0x3F3504F3) ; 2 uses
  %i.vy = select <4 x i1> %i.vx, <4 x float> %i.vt, <4 x float> zeroinitializer
  %i.vz = fadd fast <4 x float> %i.vt, splat (float -1.000000e+00)
  %i.wa = select fast <4 x i1> %i.vx, <4 x float> %i.vv, <4 x float> %i.vw
  %i.wb = fadd fast <4 x float> %i.vz, %i.vy      ; 12 uses
  %i.wc = fmul fast <4 x float> %i.wb, %i.wb
  %i.wd = fmul fast <4 x float> %i.wb, splat (float f0x3D9021BB)
  %i.we = fadd fast <4 x float> %i.wd, splat (float f0xBDEBD1B8)
  %i.wf = fmul fast <4 x float> %i.we, %i.wb
  %i.wg = fadd fast <4 x float> %i.wf, splat (float f0x3DEF251A)
  %i.wh = fmul fast <4 x float> %i.wg, %i.wb
  %i.wi = fadd fast <4 x float> %i.wh, splat (float f0xBDFE5D4F)
  %i.wj = fmul fast <4 x float> %i.wi, %i.wb
  %i.wk = fadd fast <4 x float> %i.wj, splat (float f0x3E11E9BF)
  %i.wl = fmul fast <4 x float> %i.wk, %i.wb
  %i.wm = fadd fast <4 x float> %i.wl, splat (float f0xBE2AAE50)
  %i.wn = fmul fast <4 x float> %i.wm, %i.wb
  %i.wo = fadd fast <4 x float> %i.wn, splat (float f0x3E4CCEAC)
  %i.wp = fmul fast <4 x float> %i.wo, %i.wb
  %i.wq = fadd fast <4 x float> %i.wp, splat (float f0xBE7FFFFC)
  %i.wr = fmul fast <4 x float> %i.wq, %i.wb
  %i.ws = fadd fast <4 x float> %i.wr, splat (float f0x3EAAAAAA)
  %i.wt = fmul fast <4 x float> %i.ws, %i.wb
  %reass.mul1116 = fmul fast <4 x float> %i.wa, splat (float f0x3F317218)
  %reass.add1123 = fadd fast <4 x float> %i.wt, splat (float -5.000000e-01)
  %reass.mul1124 = fmul fast <4 x float> %i.wc, %reass.add1123
  %i.wu = fadd fast <4 x float> %reass.mul1116, %i.wb
  %i.wv = fadd fast <4 x float> %i.wu, %reass.mul1124
  %.neg1098 = fmul fast <4 x float> %i.wv, splat (float -2.000000e+00)
  %i.ww = select fast <4 x i1> %i.vn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1098
  %i.wx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ww, <4 x float> splat (float f0x42B0C0A5))
  %i.wy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wz = fmul fast <4 x float> %i.wy, splat (float f0x3FB8AA3B)
  %i.xa = fadd fast <4 x float> %i.wz, splat (float 5.000000e-01) ; 2 uses
  %i.xb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xa)
  %i.xc = sitofp fast <4 x i32> %i.xb to <4 x float> ; 2 uses
  %i.xd = fcmp fast olt <4 x float> %i.xa, %i.xc
  %i.xe = select <4 x i1> %i.xd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xf = fsub fast <4 x float> %i.xc, %i.xe      ; 2 uses
  %i.xg = fmul fast <4 x float> %i.xf, splat (float f0x3F317218)
  %i.xh = fsub fast <4 x float> %i.wy, %i.xg      ; 8 uses
  %i.xi = fmul fast <4 x float> %i.xh, %i.xh
  %i.xj = fmul fast <4 x float> %i.xh, splat (float f0x39506967)
  %i.xk = fadd fast <4 x float> %i.xj, splat (float f0x3AB743CE)
  %i.xl = fmul fast <4 x float> %i.xk, %i.xh
  %i.xm = fadd fast <4 x float> %i.xl, splat (float f0x3C088908)
  %i.xn = fmul fast <4 x float> %i.xm, %i.xh
  %i.xo = fadd fast <4 x float> %i.xn, splat (float f0x3D2AA9C1)
  %i.xp = fmul fast <4 x float> %i.xo, %i.xh
  %i.xq = fadd fast <4 x float> %i.xp, splat (float f0x3E2AAAAA)
  %i.xr = fmul fast <4 x float> %i.xq, %i.xh
  %i.xs = fadd fast <4 x float> %i.xr, splat (float 5.000000e-01)
  %i.xt = fmul fast <4 x float> %i.xi, %i.xs
  %i.xu = fadd fast <4 x float> %i.xh, splat (float 1.000000e+00)
  %i.xv = fadd fast <4 x float> %i.xu, %i.xt
  %i.xw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xf)
  %i.xx = shl <4 x i32> %i.xw, splat (i32 23)
  %i.xy = add <4 x i32> %i.xx, splat (i32 1065353216)
  %i.xz = bitcast <4 x i32> %i.xy to <4 x float>
  %i.ya = fmul fast <4 x float> %i.xv, %i.xz
  %i.yb = fadd fast <4 x float> %i.ya, splat (float 1.000000e+00)
  %i.yc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.yb
  %i.yd = fadd fast <4 x float> %i.yc, splat (float -1.000000e+00)
  %i.ye = fmul fast <4 x float> %i.yd, %.0988.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010: ; preds = %._crit_edge
  %i.yf = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yh = insertelement <4 x float> poison, float %i.yg, i64 0
  %i.yi = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !52
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yn = fmul fast <4 x float> %i.yi, %.1992.lcssa
  %i.yo = fadd fast <4 x float> %i.yn, %i.ym
  %i.yp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yo, <4 x float> zeroinitializer)
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> splat (float 1.000000e+00))
  %i.yr = fmul fast <4 x float> %i.yq, %.1992.lcssa
  %i.ys = fmul fast <4 x float> %i.yi, %.0990.lcssa
  %i.yt = fadd fast <4 x float> %i.ys, %i.ym
  %i.yu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> zeroinitializer)
  %i.yv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> splat (float 1.000000e+00))
  %i.yw = fmul fast <4 x float> %i.yv, %.0990.lcssa
  %i.yx = fmul fast <4 x float> %i.yi, %.0989.lcssa
  %i.yy = fadd fast <4 x float> %i.yx, %i.ym
  %i.yz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yy, <4 x float> zeroinitializer)
  %i.za = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yz, <4 x float> splat (float 1.000000e+00))
  %i.zb = fmul fast <4 x float> %i.za, %.0989.lcssa
  %i.zc = fmul fast <4 x float> %i.yi, %.0988.lcssa
  %i.zd = fadd fast <4 x float> %i.zc, %i.ym
  %i.ze = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zd, <4 x float> zeroinitializer)
  %i.zf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ze, <4 x float> splat (float 1.000000e+00))
  %i.zg = fmul fast <4 x float> %i.zf, %.0988.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193:   ; preds = %._crit_edge, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread
  %.0.i1941052 = phi <4 x float> [ %i.zb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.cd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.dm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.hj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.uh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.0989.lcssa, %._crit_edge ] ; 2 uses
  %.0.i20699710161050 = phi <4 x float> [ %i.yr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.cb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.di, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.ev, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.mn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.1992.lcssa, %._crit_edge ] ; 2 uses
  %.0.i20010181048 = phi <4 x float> [ %i.yw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.cc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.dk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.gc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.qk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.0990.lcssa, %._crit_edge ] ; 2 uses
  %.0.i188 = phi nsz <4 x float> [ %i.zg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.ce, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.do, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.iq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.ye, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.0988.lcssa, %._crit_edge ] ; 2 uses
  %i.zh = shufflevector <4 x float> %.0.i20699710161050, <4 x float> %.0.i20010181048, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zi = shufflevector <4 x float> %.0.i1941052, <4 x float> %.0.i188, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zj = shufflevector <4 x float> %.0.i20699710161050, <4 x float> %.0.i20010181048, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zk = shufflevector <4 x float> %.0.i1941052, <4 x float> %.0.i188, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zm = shufflevector <4 x float> %i.zi, <4 x float> %i.zh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zn = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zo = shufflevector <4 x float> %i.zk, <4 x float> %i.zj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.zl, ptr %.01701137, align 1, !tbaa !49
  %i.zp = getelementptr inbounds nuw i8, ptr %.01701137, i64 16
  store <4 x float> %i.zm, ptr %i.zp, align 1, !tbaa !49
  %i.zq = getelementptr inbounds nuw i8, ptr %.01701137, i64 32
  store <4 x float> %i.zn, ptr %i.zq, align 1, !tbaa !49
  %i.zr = getelementptr inbounds nuw i8, ptr %.01701137, i64 48
  store <4 x float> %i.zo, ptr %i.zr, align 1, !tbaa !49
  %i.zs = getelementptr inbounds nuw i8, ptr %.01701137, i64 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zt = load i32, ptr %6, align 4, !tbaa !57
  %i.zu = load i32, ptr %4, align 4, !tbaa !57
  %i.zv = sdiv i32 %i.zt, %i.zu
  %i.zw = sext i32 %i.zv to i64
  %i.zx = icmp slt i64 %indvars.iv.next, %i.zw
  br i1 %i.zx, label %.lr.ph1140, label %thread-pre-split.loopexit, !llvm.loop !104

thread-pre-split.loopexit:                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193
  %.pr.pre = load i32, ptr %3, align 4, !tbaa !57 ; 3 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %thread-pre-split.loopexit, %bb.c
  %.pr10891280 = phi i32 [ %.pr10891282, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10891282, %bb.e ] ; 3 uses
  %.pr10911271 = phi i32 [ %.pr10911274, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10911274, %bb.e ] ; 3 uses
  %i.zy = phi i32 [ %i.t, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr1270, %bb.e ]
  %i.zz = icmp eq i32 %i.zy, 1
  br i1 %i.zz, label %bb.h, label %.thread

bb.h:                                             ; preds = %thread-pre-split
  %i.aaa = load i32, ptr %4, align 4, !tbaa !57
  %i.aab = icmp eq i32 %i.aaa, 4
  br i1 %i.aab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aac = load i32, ptr %6, align 4, !tbaa !57
  %i.aad = icmp sgt i32 %i.aac, 3
  br i1 %i.aad, label %.lr.ph1168.preheader, label %.thread

.lr.ph1168.preheader:                             ; preds = %bb.i
  %i.aae = load ptr, ptr %5, align 8, !tbaa !19
  %i.aaf = load i32, ptr %i.l, align 4, !tbaa !47
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = mul nsw i64 %indvars.iv1263, %i.aag
  %i.aai = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aaj = mul i64 %i.aah, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aaj
  br label %.lr.ph1168

.lr.ph1168:                                       ; preds = %.lr.ph1168.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187
  %indvars.iv1251 = phi i64 [ 0, %.lr.ph1168.preheader ], [ %indvars.iv.next1252, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187 ] ; 3 uses
  %.01641165 = phi ptr [ %i.aak, %.lr.ph1168.preheader ], [ %i.akv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187 ] ; 2 uses
  %i.aal = load ptr, ptr %7, align 8, !tbaa !19
  %i.aam = load i32, ptr %i.n, align 4, !tbaa !47
  %i.aan = sext i32 %i.aam to i64
  %i.aao = mul nsw i64 %indvars.iv1251, %i.aan
  %i.aap = load i64, ptr %i.o, align 8, !tbaa !48
  %i.aaq = mul i64 %i.aao, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aaq ; 2 uses
  %i.aas = load ptr, ptr %8, align 8, !tbaa !19
  %i.aat = load i32, ptr %i.p, align 4, !tbaa !47
  %i.aau = sext i32 %i.aat to i64
  %i.aav = mul nsw i64 %indvars.iv1263, %i.aau
  %i.aaw = load i64, ptr %i.q, align 8, !tbaa !48
  %i.aax = mul i64 %i.aav, %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aax ; 2 uses
  %i.aaz = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not177 = icmp eq ptr %i.aaz, null
  br i1 %.not177, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1168
  %.idx1303 = shl nuw nsw i64 %indvars.iv1251, 4
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %.idx1303
  %i.abb = load <4 x float>, ptr %i.aba, align 1, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph1168
  %.0985 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1168 ], [ %i.abb, %bb.j ] ; 2 uses
  %i.abc = load i32, ptr %10, align 4, !tbaa !57  ; 7 uses
  %i.abd = icmp sgt i32 %i.abc, 3
  br i1 %i.abd, label %.lr.ph1149, label %.preheader1126

.preheader1126.loopexit:                          ; preds = %.lr.ph1149
  %i.abe = and i32 %i.abc, 2147483644
  %i.abf = fadd fast <4 x float> %i.acu, %i.acs
  %i.abg = fadd fast <4 x float> %i.abf, %i.acw
  br label %.preheader1126

.preheader1126:                                   ; preds = %.preheader1126.loopexit, %bb.k
  %.1986.lcssa = phi <4 x float> [ %.0985, %bb.k ], [ %i.acq, %.preheader1126.loopexit ] ; 3 uses
  %.0983.lcssa = phi <4 x float> [ zeroinitializer, %bb.k ], [ %i.abg, %.preheader1126.loopexit ]
  %.0161.lcssa = phi ptr [ %i.aar, %bb.k ], [ %i.acy, %.preheader1126.loopexit ] ; 2 uses
  %.0159.lcssa = phi ptr [ %i.aay, %bb.k ], [ %i.acx, %.preheader1126.loopexit ] ; 2 uses
  %.0157.lcssa = phi i32 [ 0, %bb.k ], [ %i.abe, %.preheader1126.loopexit ] ; 4 uses
  %i.abh = icmp slt i32 %.0157.lcssa, %i.abc
  br i1 %i.abh, label %.lr.ph1162.preheader, label %._crit_edge1163

.lr.ph1162.preheader:                             ; preds = %.preheader1126
  %xtraiter = and i32 %i.abc, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1162.prol.loopexit, label %.lr.ph1162.prol

.lr.ph1162.prol:                                  ; preds = %.lr.ph1162.preheader, %.lr.ph1162.prol
  %.11581161.prol = phi i32 [ %i.abq, %.lr.ph1162.prol ], [ %.0157.lcssa, %.lr.ph1162.preheader ]
  %.11601160.prol = phi ptr [ %i.abo, %.lr.ph1162.prol ], [ %.0159.lcssa, %.lr.ph1162.preheader ] ; 2 uses
  %.11621159.prol = phi ptr [ %i.abp, %.lr.ph1162.prol ], [ %.0161.lcssa, %.lr.ph1162.preheader ] ; 2 uses
  %.29871158.prol = phi <4 x float> [ %i.abn, %.lr.ph1162.prol ], [ %.1986.lcssa, %.lr.ph1162.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1162.prol ], [ 0, %.lr.ph1162.preheader ]
  %i.abi = load float, ptr %.11601160.prol, align 4, !tbaa !52
  %i.abj = insertelement <4 x float> poison, float %i.abi, i64 0
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abl = load <4 x float>, ptr %.11621159.prol, align 1, !tbaa !49
  %i.abm = fmul fast <4 x float> %i.abk, %i.abl
  %i.abn = fadd fast <4 x float> %i.abm, %.29871158.prol ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.11601160.prol, i64 4 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.11621159.prol, i64 16 ; 2 uses
  %i.abq = add nuw nsw i32 %.11581161.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1162.prol.loopexit, label %.lr.ph1162.prol, !llvm.loop !105

.lr.ph1162.prol.loopexit:                         ; preds = %.lr.ph1162.prol, %.lr.ph1162.preheader
  %.lcssa1363.unr = phi <4 x float> [ poison, %.lr.ph1162.preheader ], [ %i.abn, %.lr.ph1162.prol ]
  %.11581161.unr = phi i32 [ %.0157.lcssa, %.lr.ph1162.preheader ], [ %i.abq, %.lr.ph1162.prol ]
  %.11601160.unr = phi ptr [ %.0159.lcssa, %.lr.ph1162.preheader ], [ %i.abo, %.lr.ph1162.prol ]
  %.11621159.unr = phi ptr [ %.0161.lcssa, %.lr.ph1162.preheader ], [ %i.abp, %.lr.ph1162.prol ]
  %.29871158.unr = phi <4 x float> [ %.1986.lcssa, %.lr.ph1162.preheader ], [ %i.abn, %.lr.ph1162.prol ]
  %i.abr = sub i32 %.0157.lcssa, %i.abc
  %i.abs = icmp ugt i32 %i.abr, -4
  br i1 %i.abs, label %._crit_edge1163, label %.lr.ph1162

.lr.ph1149:                                       ; preds = %bb.k, %.lr.ph1149
  %.01571147 = phi i32 [ %i.acz, %.lr.ph1149 ], [ 0, %bb.k ]
  %.01591146 = phi ptr [ %i.acx, %.lr.ph1149 ], [ %i.aay, %bb.k ] ; 5 uses
  %.01611145 = phi ptr [ %i.acy, %.lr.ph1149 ], [ %i.aar, %bb.k ] ; 5 uses
  %.09821144 = phi <4 x float> [ %i.acw, %.lr.ph1149 ], [ zeroinitializer, %bb.k ]
  %.09831143 = phi <4 x float> [ %i.acu, %.lr.ph1149 ], [ zeroinitializer, %bb.k ]
  %.09841142 = phi <4 x float> [ %i.acs, %.lr.ph1149 ], [ zeroinitializer, %bb.k ]
  %.19861141 = phi <4 x float> [ %i.acq, %.lr.ph1149 ], [ %.0985, %bb.k ]
  %i.abt = load float, ptr %.01591146, align 4, !tbaa !52
  %i.abu = insertelement <4 x float> poison, float %i.abt, i64 0
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abw = getelementptr inbounds nuw i8, ptr %.01591146, i64 4
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !52
  %i.aby = insertelement <4 x float> poison, float %i.abx, i64 0
  %i.abz = shufflevector <4 x float> %i.aby, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aca = getelementptr inbounds nuw i8, ptr %.01591146, i64 8
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !52
  %i.acc = insertelement <4 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <4 x float> %i.acc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ace = getelementptr inbounds nuw i8, ptr %.01591146, i64 12
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !52
  %i.acg = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aci = load <4 x float>, ptr %.01611145, align 1, !tbaa !49
  %i.acj = getelementptr inbounds nuw i8, ptr %.01611145, i64 16
  %i.ack = load <4 x float>, ptr %i.acj, align 1, !tbaa !49
  %i.acl = getelementptr inbounds nuw i8, ptr %.01611145, i64 32
  %i.acm = load <4 x float>, ptr %i.acl, align 1, !tbaa !49
  %i.acn = getelementptr inbounds nuw i8, ptr %.01611145, i64 48
  %i.aco = load <4 x float>, ptr %i.acn, align 1, !tbaa !49
  %i.acp = fmul fast <4 x float> %i.aci, %i.abv
  %i.acq = fadd fast <4 x float> %i.acp, %.19861141 ; 2 uses
  %i.acr = fmul fast <4 x float> %i.ack, %i.abz
  %i.acs = fadd fast <4 x float> %i.acr, %.09841142 ; 2 uses
  %i.act = fmul fast <4 x float> %i.acm, %i.acd
  %i.acu = fadd fast <4 x float> %i.act, %.09831143 ; 2 uses
  %i.acv = fmul fast <4 x float> %i.aco, %i.ach
  %i.acw = fadd fast <4 x float> %i.acv, %.09821144 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.01591146, i64 16 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.01611145, i64 64 ; 2 uses
  %i.acz = add nuw nsw i32 %.01571147, 4          ; 2 uses
  %i.ada = or disjoint i32 %i.acz, 3
  %i.adb = icmp slt i32 %i.ada, %i.abc
  br i1 %i.adb, label %.lr.ph1149, label %.preheader1126.loopexit, !llvm.loop !106

.lr.ph1162:                                       ; preds = %.lr.ph1162.prol.loopexit, %.lr.ph1162
  %.11581161 = phi i32 [ %i.aei, %.lr.ph1162 ], [ %.11581161.unr, %.lr.ph1162.prol.loopexit ]
  %.11601160 = phi ptr [ %i.aeg, %.lr.ph1162 ], [ %.11601160.unr, %.lr.ph1162.prol.loopexit ] ; 5 uses
  %.11621159 = phi ptr [ %i.aeh, %.lr.ph1162 ], [ %.11621159.unr, %.lr.ph1162.prol.loopexit ] ; 5 uses
  %.29871158 = phi <4 x float> [ %i.aef, %.lr.ph1162 ], [ %.29871158.unr, %.lr.ph1162.prol.loopexit ]
  %i.adc = load float, ptr %.11601160, align 4, !tbaa !52
  %i.add = insertelement <4 x float> poison, float %i.adc, i64 0
  %i.ade = shufflevector <4 x float> %i.add, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adf = load <4 x float>, ptr %.11621159, align 1, !tbaa !49
  %i.adg = fmul fast <4 x float> %i.ade, %i.adf
  %i.adh = fadd fast <4 x float> %i.adg, %.29871158
  %i.adi = getelementptr inbounds nuw i8, ptr %.11601160, i64 4
  %i.adj = getelementptr inbounds nuw i8, ptr %.11621159, i64 16
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !52
  %i.adl = insertelement <4 x float> poison, float %i.adk, i64 0
  %i.adm = shufflevector <4 x float> %i.adl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adn = load <4 x float>, ptr %i.adj, align 1, !tbaa !49
  %i.ado = fmul fast <4 x float> %i.adm, %i.adn
  %i.adp = fadd fast <4 x float> %i.ado, %i.adh
  %i.adq = getelementptr inbounds nuw i8, ptr %.11601160, i64 8
  %i.adr = getelementptr inbounds nuw i8, ptr %.11621159, i64 32
  %i.ads = load float, ptr %i.adq, align 4, !tbaa !52
  %i.adt = insertelement <4 x float> poison, float %i.ads, i64 0
  %i.adu = shufflevector <4 x float> %i.adt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adv = load <4 x float>, ptr %i.adr, align 1, !tbaa !49
  %i.adw = fmul fast <4 x float> %i.adu, %i.adv
  %i.adx = fadd fast <4 x float> %i.adw, %i.adp
  %i.ady = getelementptr inbounds nuw i8, ptr %.11601160, i64 12
  %i.adz = getelementptr inbounds nuw i8, ptr %.11621159, i64 48
  %i.aea = load float, ptr %i.ady, align 4, !tbaa !52
  %i.aeb = insertelement <4 x float> poison, float %i.aea, i64 0
  %i.aec = shufflevector <4 x float> %i.aeb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aed = load <4 x float>, ptr %i.adz, align 1, !tbaa !49
  %i.aee = fmul fast <4 x float> %i.aec, %i.aed
  %i.aef = fadd fast <4 x float> %i.aee, %i.adx   ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.11601160, i64 16
  %i.aeh = getelementptr inbounds nuw i8, ptr %.11621159, i64 64
  %i.aei = add nuw nsw i32 %.11581161, 4          ; 2 uses
  %exitcond1250.not.3 = icmp eq i32 %i.aei, %i.abc
  br i1 %exitcond1250.not.3, label %._crit_edge1163, label %.lr.ph1162, !llvm.loop !107

._crit_edge1163:                                  ; preds = %.lr.ph1162.prol.loopexit, %.lr.ph1162, %.preheader1126
  %.2987.lcssa = phi <4 x float> [ %.1986.lcssa, %.preheader1126 ], [ %.lcssa1363.unr, %.lr.ph1162.prol.loopexit ], [ %i.aef, %.lr.ph1162 ]
  %i.aej = fadd fast <4 x float> %.0983.lcssa, %.2987.lcssa ; 10 uses
  %i.aek = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.aek, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187 [
    i32 1, label %bb.l
    i32 2, label %.noexc183
    i32 3, label %bb.m
    i32 4, label %.noexc184
    i32 5, label %.noexc185
    i32 6, label %.noexc186
  ]

bb.l:                                             ; preds = %._crit_edge1163
  %i.ael = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aej, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc183:                                        ; preds = %._crit_edge1163
  %i.aem = load ptr, ptr %12, align 8, !tbaa !19
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !52
  %i.aeo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aej)
  %i.aep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aej)
  %i.aeq = insertelement <4 x float> poison, float %i.aen, i64 0
  %i.aer = shufflevector <4 x float> %i.aeq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aes = fmul fast <4 x float> %i.aer, %i.aep
  %i.aet = fadd fast <4 x float> %i.aes, %i.aeo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

bb.m:                                             ; preds = %._crit_edge1163
  %i.aeu = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !52
  %i.aew = insertelement <4 x float> poison, float %i.aev, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !52
  %i.afa = insertelement <4 x float> poison, float %i.aez, i64 0
  %i.afb = shufflevector <4 x float> %i.afa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aej, <4 x float> nofpclass(nan inf) %i.aex)
  %i.afd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afc, <4 x float> nofpclass(nan inf) %i.afb)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc184:                                        ; preds = %._crit_edge1163
  %i.afe = fneg fast <4 x float> %i.aej
  %i.aff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afe, <4 x float> splat (float f0x42B0C0A5))
  %i.afg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aff, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afh = fmul fast <4 x float> %i.afg, splat (float f0x3FB8AA3B)
  %i.afi = fadd fast <4 x float> %i.afh, splat (float 5.000000e-01) ; 2 uses
  %i.afj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afi)
  %i.afk = sitofp fast <4 x i32> %i.afj to <4 x float> ; 2 uses
  %i.afl = fcmp fast olt <4 x float> %i.afi, %i.afk
  %i.afm = select <4 x i1> %i.afl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.afn = fsub fast <4 x float> %i.afk, %i.afm   ; 2 uses
  %i.afo = fmul fast <4 x float> %i.afn, splat (float f0x3F317218)
  %i.afp = fsub fast <4 x float> %i.afg, %i.afo   ; 8 uses
  %i.afq = fmul fast <4 x float> %i.afp, %i.afp
  %i.afr = fmul fast <4 x float> %i.afp, splat (float f0x39506967)
  %i.afs = fadd fast <4 x float> %i.afr, splat (float f0x3AB743CE)
  %i.aft = fmul fast <4 x float> %i.afs, %i.afp
  %i.afu = fadd fast <4 x float> %i.aft, splat (float f0x3C088908)
  %i.afv = fmul fast <4 x float> %i.afu, %i.afp
  %i.afw = fadd fast <4 x float> %i.afv, splat (float f0x3D2AA9C1)
  %i.afx = fmul fast <4 x float> %i.afw, %i.afp
  %i.afy = fadd fast <4 x float> %i.afx, splat (float f0x3E2AAAAA)
  %i.afz = fmul fast <4 x float> %i.afy, %i.afp
  %i.aga = fadd fast <4 x float> %i.afz, splat (float 5.000000e-01)
  %i.agb = fmul fast <4 x float> %i.afq, %i.aga
  %i.agc = fadd fast <4 x float> %i.afp, splat (float 1.000000e+00)
  %i.agd = fadd fast <4 x float> %i.agc, %i.agb
  %i.age = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afn)
  %i.agf = shl <4 x i32> %i.age, splat (i32 23)
  %i.agg = add <4 x i32> %i.agf, splat (i32 1065353216)
  %i.agh = bitcast <4 x i32> %i.agg to <4 x float>
  %i.agi = fmul fast <4 x float> %i.agd, %i.agh
  %i.agj = fadd fast <4 x float> %i.agi, splat (float 1.000000e+00)
  %i.agk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.agj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc185:                                        ; preds = %._crit_edge1163
  %i.agl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aej, <4 x float> splat (float f0x42B0C0A5))
  %i.agm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agn = fmul fast <4 x float> %i.agm, splat (float f0x3FB8AA3B)
  %i.ago = fadd fast <4 x float> %i.agn, splat (float 5.000000e-01) ; 2 uses
  %i.agp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ago)
  %i.agq = sitofp fast <4 x i32> %i.agp to <4 x float> ; 2 uses
  %i.agr = fcmp fast olt <4 x float> %i.ago, %i.agq
  %i.ags = select <4 x i1> %i.agr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agt = fsub fast <4 x float> %i.agq, %i.ags   ; 2 uses
  %i.agu = fmul fast <4 x float> %i.agt, splat (float f0x3F317218)
  %i.agv = fsub fast <4 x float> %i.agm, %i.agu   ; 8 uses
  %i.agw = fmul fast <4 x float> %i.agv, %i.agv
  %i.agx = fmul fast <4 x float> %i.agv, splat (float f0x39506967)
  %i.agy = fadd fast <4 x float> %i.agx, splat (float f0x3AB743CE)
  %i.agz = fmul fast <4 x float> %i.agy, %i.agv
  %i.aha = fadd fast <4 x float> %i.agz, splat (float f0x3C088908)
  %i.ahb = fmul fast <4 x float> %i.aha, %i.agv
  %i.ahc = fadd fast <4 x float> %i.ahb, splat (float f0x3D2AA9C1)
  %i.ahd = fmul fast <4 x float> %i.ahc, %i.agv
  %i.ahe = fadd fast <4 x float> %i.ahd, splat (float f0x3E2AAAAA)
  %i.ahf = fmul fast <4 x float> %i.ahe, %i.agv
  %i.ahg = fadd fast <4 x float> %i.ahf, splat (float 5.000000e-01)
  %i.ahh = fmul fast <4 x float> %i.agw, %i.ahg
  %i.ahi = fadd fast <4 x float> %i.agv, splat (float 1.000000e+00)
  %i.ahj = fadd fast <4 x float> %i.ahi, %i.ahh
  %i.ahk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agt)
  %i.ahl = shl <4 x i32> %i.ahk, splat (i32 23)
  %i.ahm = add <4 x i32> %i.ahl, splat (i32 1065353216)
  %i.ahn = bitcast <4 x i32> %i.ahm to <4 x float>
  %i.aho = fmul fast <4 x float> %i.ahj, %i.ahn
  %i.ahp = fadd fast <4 x float> %i.aho, splat (float 1.000000e+00) ; 2 uses
  %i.ahq = fcmp fast ole <4 x float> %i.ahp, zeroinitializer
  %i.ahr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahp, <4 x float> splat (float f0x00800000))
  %i.ahs = bitcast <4 x float> %i.ahr to <4 x i32> ; 2 uses
  %i.aht = lshr <4 x i32> %i.ahs, splat (i32 23)
  %i.ahu = and <4 x i32> %i.ahs, splat (i32 -2139095041)
  %i.ahv = or disjoint <4 x i32> %i.ahu, splat (i32 1056964608)
  %i.ahw = bitcast <4 x i32> %i.ahv to <4 x float> ; 3 uses
  %i.ahx = add nsw <4 x i32> %i.aht, splat (i32 -127)
  %i.ahy = sitofp fast <4 x i32> %i.ahx to <4 x float> ; 2 uses
  %i.ahz = fadd fast <4 x float> %i.ahy, splat (float 1.000000e+00)
  %i.aia = fcmp fast olt <4 x float> %i.ahw, splat (float f0x3F3504F3) ; 2 uses
  %i.aib = select <4 x i1> %i.aia, <4 x float> %i.ahw, <4 x float> zeroinitializer
  %i.aic = fadd fast <4 x float> %i.ahw, splat (float -1.000000e+00)
  %i.aid = select fast <4 x i1> %i.aia, <4 x float> %i.ahy, <4 x float> %i.ahz
  %i.aie = fadd fast <4 x float> %i.aic, %i.aib   ; 12 uses
  %i.aif = fmul fast <4 x float> %i.aie, %i.aie
  %i.aig = fmul fast <4 x float> %i.aie, splat (float f0x3D9021BB)
  %i.aih = fadd fast <4 x float> %i.aig, splat (float f0xBDEBD1B8)
  %i.aii = fmul fast <4 x float> %i.aih, %i.aie
  %i.aij = fadd fast <4 x float> %i.aii, splat (float f0x3DEF251A)
  %i.aik = fmul fast <4 x float> %i.aij, %i.aie
  %i.ail = fadd fast <4 x float> %i.aik, splat (float f0xBDFE5D4F)
  %i.aim = fmul fast <4 x float> %i.ail, %i.aie
  %i.ain = fadd fast <4 x float> %i.aim, splat (float f0x3E11E9BF)
  %i.aio = fmul fast <4 x float> %i.ain, %i.aie
  %i.aip = fadd fast <4 x float> %i.aio, splat (float f0xBE2AAE50)
  %i.aiq = fmul fast <4 x float> %i.aip, %i.aie
  %i.air = fadd fast <4 x float> %i.aiq, splat (float f0x3E4CCEAC)
  %i.ais = fmul fast <4 x float> %i.air, %i.aie
  %i.ait = fadd fast <4 x float> %i.ais, splat (float f0xBE7FFFFC)
  %i.aiu = fmul fast <4 x float> %i.ait, %i.aie
  %i.aiv = fadd fast <4 x float> %i.aiu, splat (float f0x3EAAAAAA)
  %i.aiw = fmul fast <4 x float> %i.aiv, %i.aie
  %reass.mul1103 = fmul fast <4 x float> %i.aid, splat (float f0x3F317218)
  %reass.add1104 = fadd fast <4 x float> %i.aiw, splat (float -5.000000e-01)
  %reass.mul1105 = fmul fast <4 x float> %i.aif, %reass.add1104
  %i.aix = fadd fast <4 x float> %reass.mul1103, %i.aie
  %i.aiy = fadd fast <4 x float> %i.aix, %reass.mul1105
  %.neg1094 = fmul fast <4 x float> %i.aiy, splat (float -2.000000e+00)
  %i.aiz = select fast <4 x i1> %i.ahq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1094
  %i.aja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aiz, <4 x float> splat (float f0x42B0C0A5))
  %i.ajb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aja, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajc = fmul fast <4 x float> %i.ajb, splat (float f0x3FB8AA3B)
  %i.ajd = fadd fast <4 x float> %i.ajc, splat (float 5.000000e-01) ; 2 uses
  %i.aje = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajd)
  %i.ajf = sitofp fast <4 x i32> %i.aje to <4 x float> ; 2 uses
  %i.ajg = fcmp fast olt <4 x float> %i.ajd, %i.ajf
  %i.ajh = select <4 x i1> %i.ajg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aji = fsub fast <4 x float> %i.ajf, %i.ajh   ; 2 uses
  %i.ajj = fmul fast <4 x float> %i.aji, splat (float f0x3F317218)
  %i.ajk = fsub fast <4 x float> %i.ajb, %i.ajj   ; 8 uses
  %i.ajl = fmul fast <4 x float> %i.ajk, %i.ajk
  %i.ajm = fmul fast <4 x float> %i.ajk, splat (float f0x39506967)
  %i.ajn = fadd fast <4 x float> %i.ajm, splat (float f0x3AB743CE)
  %i.ajo = fmul fast <4 x float> %i.ajn, %i.ajk
  %i.ajp = fadd fast <4 x float> %i.ajo, splat (float f0x3C088908)
  %i.ajq = fmul fast <4 x float> %i.ajp, %i.ajk
  %i.ajr = fadd fast <4 x float> %i.ajq, splat (float f0x3D2AA9C1)
  %i.ajs = fmul fast <4 x float> %i.ajr, %i.ajk
  %i.ajt = fadd fast <4 x float> %i.ajs, splat (float f0x3E2AAAAA)
  %i.aju = fmul fast <4 x float> %i.ajt, %i.ajk
  %i.ajv = fadd fast <4 x float> %i.aju, splat (float 5.000000e-01)
  %i.ajw = fmul fast <4 x float> %i.ajl, %i.ajv
  %i.ajx = fadd fast <4 x float> %i.ajk, splat (float 1.000000e+00)
  %i.ajy = fadd fast <4 x float> %i.ajx, %i.ajw
  %i.ajz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aji)
  %i.aka = shl <4 x i32> %i.ajz, splat (i32 23)
  %i.akb = add <4 x i32> %i.aka, splat (i32 1065353216)
  %i.akc = bitcast <4 x i32> %i.akb to <4 x float>
  %i.akd = fmul fast <4 x float> %i.ajy, %i.akc
  %i.ake = fadd fast <4 x float> %i.akd, splat (float 1.000000e+00)
  %i.akf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ake
  %i.akg = fadd fast <4 x float> %i.akf, splat (float -1.000000e+00)
  %i.akh = fmul fast <4 x float> %i.akg, %i.aej
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc186:                                        ; preds = %._crit_edge1163
  %i.aki = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !52
  %i.akk = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.akl = shufflevector <4 x float> %i.akk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aki, i64 4
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !52
  %i.ako = insertelement <4 x float> poison, float %i.akn, i64 0
  %i.akp = shufflevector <4 x float> %i.ako, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akq = fmul fast <4 x float> %i.akl, %i.aej
  %i.akr = fadd fast <4 x float> %i.akq, %i.akp
  %i.aks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akr, <4 x float> zeroinitializer)
  %i.akt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float 1.000000e+00))
  %i.aku = fmul fast <4 x float> %i.akt, %i.aej
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187:   ; preds = %.noexc186, %.noexc185, %.noexc184, %bb.m, %.noexc183, %bb.l, %._crit_edge1163
  %.0.i182 = phi nsz <4 x float> [ %i.aku, %.noexc186 ], [ %i.ael, %bb.l ], [ %i.aet, %.noexc183 ], [ %i.afd, %bb.m ], [ %i.agk, %.noexc184 ], [ %i.akh, %.noexc185 ], [ %i.aej, %._crit_edge1163 ]
  store <4 x float> %.0.i182, ptr %.01641165, align 1, !tbaa !49
  %i.akv = getelementptr inbounds nuw i8, ptr %.01641165, i64 16
  %indvars.iv.next1252 = add nuw nsw i64 %indvars.iv1251, 1 ; 2 uses
  %i.akw = load i32, ptr %6, align 4, !tbaa !57
  %i.akx = load i32, ptr %4, align 4, !tbaa !57
  %i.aky = sdiv i32 %i.akw, %i.akx
  %i.akz = sext i32 %i.aky to i64
  %i.ala = icmp slt i64 %indvars.iv.next1252, %i.akz
  br i1 %i.ala, label %.lr.ph1168, label %.thread.loopexit, !llvm.loop !108

.thread.loopexit:                                 ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187
  %.pr1091.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.i, %bb.h, %thread-pre-split
  %.pr10891279 = phi i32 [ %.pr1091.pre, %.thread.loopexit ], [ %.pr10891280, %bb.i ], [ %.pr10891280, %bb.h ], [ %.pr10891280, %thread-pre-split ] ; 2 uses
  %.pr1091 = phi i32 [ %.pr1091.pre, %.thread.loopexit ], [ %.pr10911271, %bb.i ], [ %.pr10911271, %bb.h ], [ %.pr10911271, %thread-pre-split ] ; 2 uses
  %i.alb = icmp eq i32 %.pr1091, 4
  br i1 %i.alb, label %thread-pre-split1092, label %thread-pre-split1088

thread-pre-split1092:                             ; preds = %.thread
  %.pr1093 = load i32, ptr %4, align 4, !tbaa !57
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %thread-pre-split1092
  %.pr10891278 = phi i32 [ %.pr10891279, %thread-pre-split1092 ], [ %.pr10891282, %bb.d ] ; 3 uses
  %.pr10911272 = phi i32 [ 4, %thread-pre-split1092 ], [ %.pr10911274, %bb.d ]
  %.pr1269 = phi i32 [ 4, %thread-pre-split1092 ], [ %.pr1270, %bb.d ]
  %i.alc = phi i32 [ %.pr1093, %thread-pre-split1092 ], [ %i.v, %bb.d ]
  %i.ald = icmp eq i32 %i.alc, 1
  br i1 %i.ald, label %bb.n, label %.thread1090

bb.n:                                             ; preds = %.thread.thread
  %i.ale = load i32, ptr %6, align 4, !tbaa !57
  %i.alf = icmp sgt i32 %i.ale, 0
  br i1 %i.alf, label %.lr.ph1195.preheader, label %thread-pre-split1088

.lr.ph1195.preheader:                             ; preds = %bb.n
  %i.alg = load ptr, ptr %5, align 8, !tbaa !19
  %i.alh = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ali = sext i32 %i.alh to i64
  %i.alj = mul nsw i64 %indvars.iv1263, %i.ali
  %i.alk = load i64, ptr %i.m, align 8, !tbaa !48
  %i.all = mul i64 %i.alj, %i.alk
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.all
  br label %.lr.ph1195

.lr.ph1195:                                       ; preds = %.lr.ph1195.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv1255 = phi i64 [ 0, %.lr.ph1195.preheader ], [ %indvars.iv.next1256, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01561192 = phi ptr [ %i.alm, %.lr.ph1195.preheader ], [ %i.avx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.aln = load ptr, ptr %7, align 8, !tbaa !19
  %i.alo = load i32, ptr %10, align 4, !tbaa !57  ; 8 uses
  %i.alp = trunc nuw nsw i64 %indvars.iv1255 to i32
  %i.alq = mul nsw i32 %i.alo, %i.alp
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.alr ; 2 uses
  %i.alt = load ptr, ptr %8, align 8, !tbaa !19
  %i.alu = load i32, ptr %i.p, align 4, !tbaa !47
  %i.alv = sext i32 %i.alu to i64
  %i.alw = mul nsw i64 %indvars.iv1263, %i.alv
  %i.alx = load i64, ptr %i.q, align 8, !tbaa !48
  %i.aly = mul i64 %i.alw, %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.aly ; 2 uses
  %i.ama = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not176 = icmp eq ptr %i.ama, null
  br i1 %.not176, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph1195
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %indvars.iv1255
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !52
  %i.amd = insertelement <4 x float> poison, float %i.amc, i64 0
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph1195
  %.0980 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1195 ], [ %i.ame, %bb.o ] ; 2 uses
  %i.amf = icmp sgt i32 %i.alo, 3
  br i1 %i.amf, label %.lr.ph1177, label %.preheader1125

.preheader1125.loopexit:                          ; preds = %.lr.ph1177
  %i.amg = and i32 %i.alo, 2147483644
  %i.amh = fadd fast <4 x float> %i.anw, %i.anu
  %i.ami = fadd fast <4 x float> %i.amh, %i.any
  br label %.preheader1125

.preheader1125:                                   ; preds = %.preheader1125.loopexit, %bb.p
  %.1981.lcssa = phi <4 x float> [ %.0980, %bb.p ], [ %i.ans, %.preheader1125.loopexit ] ; 3 uses
  %.0978.lcssa = phi <4 x float> [ zeroinitializer, %bb.p ], [ %i.ami, %.preheader1125.loopexit ]
  %.0153.lcssa = phi ptr [ %i.als, %bb.p ], [ %i.aoa, %.preheader1125.loopexit ] ; 2 uses
  %.0151.lcssa = phi ptr [ %i.alz, %bb.p ], [ %i.anz, %.preheader1125.loopexit ] ; 2 uses
  %.0149.lcssa = phi i32 [ 0, %bb.p ], [ %i.amg, %.preheader1125.loopexit ] ; 4 uses
  %i.amj = icmp slt i32 %.0149.lcssa, %i.alo
  br i1 %i.amj, label %.lr.ph1189.preheader, label %._crit_edge1190

.lr.ph1189.preheader:                             ; preds = %.preheader1125
  %xtraiter1377 = and i32 %i.alo, 3               ; 2 uses
  %lcmp.mod1378.not = icmp eq i32 %xtraiter1377, 0
  br i1 %lcmp.mod1378.not, label %.lr.ph1189.prol.loopexit, label %.lr.ph1189.prol

.lr.ph1189.prol:                                  ; preds = %.lr.ph1189.preheader, %.lr.ph1189.prol
  %.11501188.prol = phi i32 [ %i.ams, %.lr.ph1189.prol ], [ %.0149.lcssa, %.lr.ph1189.preheader ]
  %.11521187.prol = phi ptr [ %i.amq, %.lr.ph1189.prol ], [ %.0151.lcssa, %.lr.ph1189.preheader ] ; 2 uses
  %.11541186.prol = phi ptr [ %i.amr, %.lr.ph1189.prol ], [ %.0153.lcssa, %.lr.ph1189.preheader ] ; 2 uses
  %.21185.prol = phi <4 x float> [ %i.amp, %.lr.ph1189.prol ], [ %.1981.lcssa, %.lr.ph1189.preheader ]
  %prol.iter1379 = phi i32 [ %prol.iter1379.next, %.lr.ph1189.prol ], [ 0, %.lr.ph1189.preheader ]
  %i.amk = load <4 x float>, ptr %.11521187.prol, align 1, !tbaa !49
  %i.aml = load float, ptr %.11541186.prol, align 4, !tbaa !52
  %i.amm = insertelement <4 x float> poison, float %i.aml, i64 0
  %i.amn = shufflevector <4 x float> %i.amm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amo = fmul fast <4 x float> %i.amn, %i.amk
  %i.amp = fadd fast <4 x float> %i.amo, %.21185.prol ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.11521187.prol, i64 16 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.11541186.prol, i64 4 ; 2 uses
  %i.ams = add nuw nsw i32 %.11501188.prol, 1     ; 2 uses
  %prol.iter1379.next = add i32 %prol.iter1379, 1 ; 2 uses
  %prol.iter1379.cmp.not = icmp eq i32 %prol.iter1379.next, %xtraiter1377
  br i1 %prol.iter1379.cmp.not, label %.lr.ph1189.prol.loopexit, label %.lr.ph1189.prol, !llvm.loop !109

.lr.ph1189.prol.loopexit:                         ; preds = %.lr.ph1189.prol, %.lr.ph1189.preheader
  %.lcssa1370.unr = phi <4 x float> [ poison, %.lr.ph1189.preheader ], [ %i.amp, %.lr.ph1189.prol ]
  %.11501188.unr = phi i32 [ %.0149.lcssa, %.lr.ph1189.preheader ], [ %i.ams, %.lr.ph1189.prol ]
  %.11521187.unr = phi ptr [ %.0151.lcssa, %.lr.ph1189.preheader ], [ %i.amq, %.lr.ph1189.prol ]
  %.11541186.unr = phi ptr [ %.0153.lcssa, %.lr.ph1189.preheader ], [ %i.amr, %.lr.ph1189.prol ]
  %.21185.unr = phi <4 x float> [ %.1981.lcssa, %.lr.ph1189.preheader ], [ %i.amp, %.lr.ph1189.prol ]
  %i.amt = sub i32 %.0149.lcssa, %i.alo
  %i.amu = icmp ugt i32 %i.amt, -4
  br i1 %i.amu, label %._crit_edge1190, label %.lr.ph1189

.lr.ph1177:                                       ; preds = %bb.p, %.lr.ph1177
  %.01491175 = phi i32 [ %i.aob, %.lr.ph1177 ], [ 0, %bb.p ]
  %.01511174 = phi ptr [ %i.anz, %.lr.ph1177 ], [ %i.alz, %bb.p ] ; 5 uses
  %.01531173 = phi ptr [ %i.aoa, %.lr.ph1177 ], [ %i.als, %bb.p ] ; 5 uses
  %.09771172 = phi <4 x float> [ %i.any, %.lr.ph1177 ], [ zeroinitializer, %bb.p ]
  %.09781171 = phi <4 x float> [ %i.anw, %.lr.ph1177 ], [ zeroinitializer, %bb.p ]
  %.09791170 = phi <4 x float> [ %i.anu, %.lr.ph1177 ], [ zeroinitializer, %bb.p ]
  %.19811169 = phi <4 x float> [ %i.ans, %.lr.ph1177 ], [ %.0980, %bb.p ]
  %i.amv = load <4 x float>, ptr %.01511174, align 1, !tbaa !49
  %i.amw = getelementptr inbounds nuw i8, ptr %.01511174, i64 16
  %i.amx = load <4 x float>, ptr %i.amw, align 1, !tbaa !49
  %i.amy = getelementptr inbounds nuw i8, ptr %.01511174, i64 32
  %i.amz = load <4 x float>, ptr %i.amy, align 1, !tbaa !49
  %i.ana = getelementptr inbounds nuw i8, ptr %.01511174, i64 48
  %i.anb = load <4 x float>, ptr %i.ana, align 1, !tbaa !49
  %i.anc = load float, ptr %.01531173, align 4, !tbaa !52
  %i.and = insertelement <4 x float> poison, float %i.anc, i64 0
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anf = getelementptr inbounds nuw i8, ptr %.01531173, i64 4
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !52
  %i.anh = insertelement <4 x float> poison, float %i.ang, i64 0
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anj = getelementptr inbounds nuw i8, ptr %.01531173, i64 8
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !52
  %i.anl = insertelement <4 x float> poison, float %i.ank, i64 0
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ann = getelementptr inbounds nuw i8, ptr %.01531173, i64 12
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !52
  %i.anp = insertelement <4 x float> poison, float %i.ano, i64 0
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anr = fmul fast <4 x float> %i.ane, %i.amv
  %i.ans = fadd fast <4 x float> %i.anr, %.19811169 ; 2 uses
  %i.ant = fmul fast <4 x float> %i.ani, %i.amx
  %i.anu = fadd fast <4 x float> %i.ant, %.09791170 ; 2 uses
  %i.anv = fmul fast <4 x float> %i.anm, %i.amz
  %i.anw = fadd fast <4 x float> %i.anv, %.09781171 ; 2 uses
  %i.anx = fmul fast <4 x float> %i.anq, %i.anb
  %i.any = fadd fast <4 x float> %i.anx, %.09771172 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.01511174, i64 64 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.01531173, i64 16 ; 2 uses
  %i.aob = add nuw nsw i32 %.01491175, 4          ; 2 uses
  %i.aoc = or disjoint i32 %i.aob, 3
  %i.aod = icmp slt i32 %i.aoc, %i.alo
  br i1 %i.aod, label %.lr.ph1177, label %.preheader1125.loopexit, !llvm.loop !110

.lr.ph1189:                                       ; preds = %.lr.ph1189.prol.loopexit, %.lr.ph1189
  %.11501188 = phi i32 [ %i.apk, %.lr.ph1189 ], [ %.11501188.unr, %.lr.ph1189.prol.loopexit ]
  %.11521187 = phi ptr [ %i.api, %.lr.ph1189 ], [ %.11521187.unr, %.lr.ph1189.prol.loopexit ] ; 5 uses
  %.11541186 = phi ptr [ %i.apj, %.lr.ph1189 ], [ %.11541186.unr, %.lr.ph1189.prol.loopexit ] ; 5 uses
  %.21185 = phi <4 x float> [ %i.aph, %.lr.ph1189 ], [ %.21185.unr, %.lr.ph1189.prol.loopexit ]
  %i.aoe = load <4 x float>, ptr %.11521187, align 1, !tbaa !49
  %i.aof = load float, ptr %.11541186, align 4, !tbaa !52
  %i.aog = insertelement <4 x float> poison, float %i.aof, i64 0
  %i.aoh = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoi = fmul fast <4 x float> %i.aoh, %i.aoe
  %i.aoj = fadd fast <4 x float> %i.aoi, %.21185
  %i.aok = getelementptr inbounds nuw i8, ptr %.11521187, i64 16
  %i.aol = getelementptr inbounds nuw i8, ptr %.11541186, i64 4
  %i.aom = load <4 x float>, ptr %i.aok, align 1, !tbaa !49
  %i.aon = load float, ptr %i.aol, align 4, !tbaa !52
  %i.aoo = insertelement <4 x float> poison, float %i.aon, i64 0
  %i.aop = shufflevector <4 x float> %i.aoo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoq = fmul fast <4 x float> %i.aop, %i.aom
  %i.aor = fadd fast <4 x float> %i.aoq, %i.aoj
  %i.aos = getelementptr inbounds nuw i8, ptr %.11521187, i64 32
  %i.aot = getelementptr inbounds nuw i8, ptr %.11541186, i64 8
  %i.aou = load <4 x float>, ptr %i.aos, align 1, !tbaa !49
  %i.aov = load float, ptr %i.aot, align 4, !tbaa !52
  %i.aow = insertelement <4 x float> poison, float %i.aov, i64 0
  %i.aox = shufflevector <4 x float> %i.aow, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoy = fmul fast <4 x float> %i.aox, %i.aou
  %i.aoz = fadd fast <4 x float> %i.aoy, %i.aor
  %i.apa = getelementptr inbounds nuw i8, ptr %.11521187, i64 48
  %i.apb = getelementptr inbounds nuw i8, ptr %.11541186, i64 12
  %i.apc = load <4 x float>, ptr %i.apa, align 1, !tbaa !49
  %i.apd = load float, ptr %i.apb, align 4, !tbaa !52
  %i.ape = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = fmul fast <4 x float> %i.apf, %i.apc
  %i.aph = fadd fast <4 x float> %i.apg, %i.aoz   ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.11521187, i64 64
  %i.apj = getelementptr inbounds nuw i8, ptr %.11541186, i64 16
  %i.apk = add nuw nsw i32 %.11501188, 4          ; 2 uses
  %exitcond1254.not.3 = icmp eq i32 %i.apk, %i.alo
  br i1 %exitcond1254.not.3, label %._crit_edge1190, label %.lr.ph1189, !llvm.loop !111

._crit_edge1190:                                  ; preds = %.lr.ph1189.prol.loopexit, %.lr.ph1189, %.preheader1125
  %.2.lcssa = phi <4 x float> [ %.1981.lcssa, %.preheader1125 ], [ %.lcssa1370.unr, %.lr.ph1189.prol.loopexit ], [ %i.aph, %.lr.ph1189 ]
  %i.apl = fadd fast <4 x float> %.0978.lcssa, %.2.lcssa ; 10 uses
  %i.apm = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.apm, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.q
    i32 2, label %.noexc
    i32 3, label %bb.r
    i32 4, label %.noexc179
    i32 5, label %.noexc180
    i32 6, label %.noexc181
  ]

bb.q:                                             ; preds = %._crit_edge1190
  %i.apn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge1190
  %i.apo = load ptr, ptr %12, align 8, !tbaa !19
  %i.app = load float, ptr %i.apo, align 4, !tbaa !52
  %i.apq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.apl)
  %i.apr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.apl)
  %i.aps = insertelement <4 x float> poison, float %i.app, i64 0
  %i.apt = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apu = fmul fast <4 x float> %i.apt, %i.apr
  %i.apv = fadd fast <4 x float> %i.apu, %i.apq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.r:                                             ; preds = %._crit_edge1190
  %i.apw = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !52
  %i.apy = insertelement <4 x float> poison, float %i.apx, i64 0
  %i.apz = shufflevector <4 x float> %i.apy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apw, i64 4
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !52
  %i.aqc = insertelement <4 x float> poison, float %i.aqb, i64 0
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> nofpclass(nan inf) %i.apz)
  %i.aqf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aqe, <4 x float> nofpclass(nan inf) %i.aqd)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc179:                                        ; preds = %._crit_edge1190
  %i.aqg = fneg fast <4 x float> %i.apl
  %i.aqh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aqg, <4 x float> splat (float f0x42B0C0A5))
  %i.aqi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aqh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aqj = fmul fast <4 x float> %i.aqi, splat (float f0x3FB8AA3B)
  %i.aqk = fadd fast <4 x float> %i.aqj, splat (float 5.000000e-01) ; 2 uses
  %i.aql = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aqk)
  %i.aqm = sitofp fast <4 x i32> %i.aql to <4 x float> ; 2 uses
  %i.aqn = fcmp fast olt <4 x float> %i.aqk, %i.aqm
  %i.aqo = select <4 x i1> %i.aqn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aqp = fsub fast <4 x float> %i.aqm, %i.aqo   ; 2 uses
  %i.aqq = fmul fast <4 x float> %i.aqp, splat (float f0x3F317218)
  %i.aqr = fsub fast <4 x float> %i.aqi, %i.aqq   ; 8 uses
  %i.aqs = fmul fast <4 x float> %i.aqr, %i.aqr
  %i.aqt = fmul fast <4 x float> %i.aqr, splat (float f0x39506967)
  %i.aqu = fadd fast <4 x float> %i.aqt, splat (float f0x3AB743CE)
  %i.aqv = fmul fast <4 x float> %i.aqu, %i.aqr
  %i.aqw = fadd fast <4 x float> %i.aqv, splat (float f0x3C088908)
  %i.aqx = fmul fast <4 x float> %i.aqw, %i.aqr
  %i.aqy = fadd fast <4 x float> %i.aqx, splat (float f0x3D2AA9C1)
  %i.aqz = fmul fast <4 x float> %i.aqy, %i.aqr
  %i.ara = fadd fast <4 x float> %i.aqz, splat (float f0x3E2AAAAA)
  %i.arb = fmul fast <4 x float> %i.ara, %i.aqr
  %i.arc = fadd fast <4 x float> %i.arb, splat (float 5.000000e-01)
  %i.ard = fmul fast <4 x float> %i.aqs, %i.arc
  %i.are = fadd fast <4 x float> %i.aqr, splat (float 1.000000e+00)
  %i.arf = fadd fast <4 x float> %i.are, %i.ard
  %i.arg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aqp)
  %i.arh = shl <4 x i32> %i.arg, splat (i32 23)
  %i.ari = add <4 x i32> %i.arh, splat (i32 1065353216)
  %i.arj = bitcast <4 x i32> %i.ari to <4 x float>
  %i.ark = fmul fast <4 x float> %i.arf, %i.arj
  %i.arl = fadd fast <4 x float> %i.ark, splat (float 1.000000e+00)
  %i.arm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.arl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc180:                                        ; preds = %._crit_edge1190
  %i.arn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> splat (float f0x42B0C0A5))
  %i.aro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.arn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.arp = fmul fast <4 x float> %i.aro, splat (float f0x3FB8AA3B)
  %i.arq = fadd fast <4 x float> %i.arp, splat (float 5.000000e-01) ; 2 uses
  %i.arr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arq)
  %i.ars = sitofp fast <4 x i32> %i.arr to <4 x float> ; 2 uses
  %i.art = fcmp fast olt <4 x float> %i.arq, %i.ars
  %i.aru = select <4 x i1> %i.art, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.arv = fsub fast <4 x float> %i.ars, %i.aru   ; 2 uses
  %i.arw = fmul fast <4 x float> %i.arv, splat (float f0x3F317218)
  %i.arx = fsub fast <4 x float> %i.aro, %i.arw   ; 8 uses
  %i.ary = fmul fast <4 x float> %i.arx, %i.arx
  %i.arz = fmul fast <4 x float> %i.arx, splat (float f0x39506967)
  %i.asa = fadd fast <4 x float> %i.arz, splat (float f0x3AB743CE)
  %i.asb = fmul fast <4 x float> %i.asa, %i.arx
  %i.asc = fadd fast <4 x float> %i.asb, splat (float f0x3C088908)
  %i.asd = fmul fast <4 x float> %i.asc, %i.arx
  %i.ase = fadd fast <4 x float> %i.asd, splat (float f0x3D2AA9C1)
  %i.asf = fmul fast <4 x float> %i.ase, %i.arx
  %i.asg = fadd fast <4 x float> %i.asf, splat (float f0x3E2AAAAA)
  %i.ash = fmul fast <4 x float> %i.asg, %i.arx
  %i.asi = fadd fast <4 x float> %i.ash, splat (float 5.000000e-01)
  %i.asj = fmul fast <4 x float> %i.ary, %i.asi
  %i.ask = fadd fast <4 x float> %i.arx, splat (float 1.000000e+00)
  %i.asl = fadd fast <4 x float> %i.ask, %i.asj
  %i.asm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arv)
  %i.asn = shl <4 x i32> %i.asm, splat (i32 23)
  %i.aso = add <4 x i32> %i.asn, splat (i32 1065353216)
  %i.asp = bitcast <4 x i32> %i.aso to <4 x float>
  %i.asq = fmul fast <4 x float> %i.asl, %i.asp
  %i.asr = fadd fast <4 x float> %i.asq, splat (float 1.000000e+00) ; 2 uses
  %i.ass = fcmp fast ole <4 x float> %i.asr, zeroinitializer
  %i.ast = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.asr, <4 x float> splat (float f0x00800000))
  %i.asu = bitcast <4 x float> %i.ast to <4 x i32> ; 2 uses
  %i.asv = lshr <4 x i32> %i.asu, splat (i32 23)
  %i.asw = and <4 x i32> %i.asu, splat (i32 -2139095041)
  %i.asx = or disjoint <4 x i32> %i.asw, splat (i32 1056964608)
  %i.asy = bitcast <4 x i32> %i.asx to <4 x float> ; 3 uses
  %i.asz = add nsw <4 x i32> %i.asv, splat (i32 -127)
  %i.ata = sitofp fast <4 x i32> %i.asz to <4 x float> ; 2 uses
  %i.atb = fadd fast <4 x float> %i.ata, splat (float 1.000000e+00)
  %i.atc = fcmp fast olt <4 x float> %i.asy, splat (float f0x3F3504F3) ; 2 uses
  %i.atd = select <4 x i1> %i.atc, <4 x float> %i.asy, <4 x float> zeroinitializer
  %i.ate = fadd fast <4 x float> %i.asy, splat (float -1.000000e+00)
  %i.atf = select fast <4 x i1> %i.atc, <4 x float> %i.ata, <4 x float> %i.atb
  %i.atg = fadd fast <4 x float> %i.ate, %i.atd   ; 12 uses
  %i.ath = fmul fast <4 x float> %i.atg, %i.atg
  %i.ati = fmul fast <4 x float> %i.atg, splat (float f0x3D9021BB)
  %i.atj = fadd fast <4 x float> %i.ati, splat (float f0xBDEBD1B8)
  %i.atk = fmul fast <4 x float> %i.atj, %i.atg
  %i.atl = fadd fast <4 x float> %i.atk, splat (float f0x3DEF251A)
  %i.atm = fmul fast <4 x float> %i.atl, %i.atg
  %i.atn = fadd fast <4 x float> %i.atm, splat (float f0xBDFE5D4F)
  %i.ato = fmul fast <4 x float> %i.atn, %i.atg
  %i.atp = fadd fast <4 x float> %i.ato, splat (float f0x3E11E9BF)
  %i.atq = fmul fast <4 x float> %i.atp, %i.atg
  %i.atr = fadd fast <4 x float> %i.atq, splat (float f0xBE2AAE50)
  %i.ats = fmul fast <4 x float> %i.atr, %i.atg
  %i.att = fadd fast <4 x float> %i.ats, splat (float f0x3E4CCEAC)
  %i.atu = fmul fast <4 x float> %i.att, %i.atg
  %i.atv = fadd fast <4 x float> %i.atu, splat (float f0xBE7FFFFC)
  %i.atw = fmul fast <4 x float> %i.atv, %i.atg
  %i.atx = fadd fast <4 x float> %i.atw, splat (float f0x3EAAAAAA)
  %i.aty = fmul fast <4 x float> %i.atx, %i.atg
  %reass.mul = fmul fast <4 x float> %i.atf, splat (float f0x3F317218)
  %reass.add1100 = fadd fast <4 x float> %i.aty, splat (float -5.000000e-01)
  %reass.mul1101 = fmul fast <4 x float> %i.ath, %reass.add1100
  %i.atz = fadd fast <4 x float> %reass.mul, %i.atg
  %i.aua = fadd fast <4 x float> %i.atz, %reass.mul1101
  %.neg = fmul fast <4 x float> %i.aua, splat (float -2.000000e+00)
  %i.aub = select fast <4 x i1> %i.ass, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.auc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aub, <4 x float> splat (float f0x42B0C0A5))
  %i.aud = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.auc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aue = fmul fast <4 x float> %i.aud, splat (float f0x3FB8AA3B)
  %i.auf = fadd fast <4 x float> %i.aue, splat (float 5.000000e-01) ; 2 uses
  %i.aug = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.auf)
  %i.auh = sitofp fast <4 x i32> %i.aug to <4 x float> ; 2 uses
  %i.aui = fcmp fast olt <4 x float> %i.auf, %i.auh
  %i.auj = select <4 x i1> %i.aui, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.auk = fsub fast <4 x float> %i.auh, %i.auj   ; 2 uses
  %i.aul = fmul fast <4 x float> %i.auk, splat (float f0x3F317218)
  %i.aum = fsub fast <4 x float> %i.aud, %i.aul   ; 8 uses
  %i.aun = fmul fast <4 x float> %i.aum, %i.aum
  %i.auo = fmul fast <4 x float> %i.aum, splat (float f0x39506967)
  %i.aup = fadd fast <4 x float> %i.auo, splat (float f0x3AB743CE)
  %i.auq = fmul fast <4 x float> %i.aup, %i.aum
  %i.aur = fadd fast <4 x float> %i.auq, splat (float f0x3C088908)
  %i.aus = fmul fast <4 x float> %i.aur, %i.aum
  %i.aut = fadd fast <4 x float> %i.aus, splat (float f0x3D2AA9C1)
  %i.auu = fmul fast <4 x float> %i.aut, %i.aum
  %i.auv = fadd fast <4 x float> %i.auu, splat (float f0x3E2AAAAA)
  %i.auw = fmul fast <4 x float> %i.auv, %i.aum
  %i.aux = fadd fast <4 x float> %i.auw, splat (float 5.000000e-01)
  %i.auy = fmul fast <4 x float> %i.aun, %i.aux
  %i.auz = fadd fast <4 x float> %i.aum, splat (float 1.000000e+00)
  %i.ava = fadd fast <4 x float> %i.auz, %i.auy
  %i.avb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.auk)
  %i.avc = shl <4 x i32> %i.avb, splat (i32 23)
  %i.avd = add <4 x i32> %i.avc, splat (i32 1065353216)
  %i.ave = bitcast <4 x i32> %i.avd to <4 x float>
  %i.avf = fmul fast <4 x float> %i.ava, %i.ave
  %i.avg = fadd fast <4 x float> %i.avf, splat (float 1.000000e+00)
  %i.avh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.avg
  %i.avi = fadd fast <4 x float> %i.avh, splat (float -1.000000e+00)
  %i.avj = fmul fast <4 x float> %i.avi, %i.apl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc181:                                        ; preds = %._crit_edge1190
  %i.avk = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !52
  %i.avm = insertelement <4 x float> poison, float %i.avl, i64 0
  %i.avn = shufflevector <4 x float> %i.avm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avk, i64 4
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !52
  %i.avq = insertelement <4 x float> poison, float %i.avp, i64 0
  %i.avr = shufflevector <4 x float> %i.avq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avs = fmul fast <4 x float> %i.avn, %i.apl
  %i.avt = fadd fast <4 x float> %i.avs, %i.avr
  %i.avu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avt, <4 x float> zeroinitializer)
  %i.avv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.avu, <4 x float> splat (float 1.000000e+00))
  %i.avw = fmul fast <4 x float> %i.avv, %i.apl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc181, %.noexc180, %.noexc179, %bb.r, %.noexc, %bb.q, %._crit_edge1190
  %.0.i = phi nsz <4 x float> [ %i.avw, %.noexc181 ], [ %i.apn, %bb.q ], [ %i.apv, %.noexc ], [ %i.aqf, %bb.r ], [ %i.arm, %.noexc179 ], [ %i.avj, %.noexc180 ], [ %i.apl, %._crit_edge1190 ]
  store <4 x float> %.0.i, ptr %.01561192, align 1, !tbaa !49
  %i.avx = getelementptr inbounds nuw i8, ptr %.01561192, i64 16
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 1 ; 2 uses
  %i.avy = load i32, ptr %6, align 4, !tbaa !57
  %i.avz = sext i32 %i.avy to i64
  %i.awa = icmp slt i64 %indvars.iv.next1256, %i.avz
  br i1 %i.awa, label %.lr.ph1195, label %thread-pre-split1088.loopexit, !llvm.loop !112

thread-pre-split1088.loopexit:                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pr1089.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %thread-pre-split1088

thread-pre-split1088:                             ; preds = %bb.n, %thread-pre-split1088.loopexit, %.thread
  %.pr10891284 = phi i32 [ %.pr10891279, %.thread ], [ %.pr1089.pre, %thread-pre-split1088.loopexit ], [ %.pr10891278, %bb.n ] ; 4 uses
  %.pr10911276 = phi i32 [ %.pr1091, %.thread ], [ %.pr1089.pre, %thread-pre-split1088.loopexit ], [ %.pr10891278, %bb.n ] ; 4 uses
  %i.awb = icmp eq i32 %.pr10911276, 1
  br i1 %i.awb, label %bb.s, label %.thread1090

bb.s:                                             ; preds = %thread-pre-split1088
  %i.awc = load i32, ptr %4, align 4, !tbaa !57
  %i.awd = icmp eq i32 %i.awc, 1
  br i1 %i.awd, label %bb.t, label %.thread1090

bb.t:                                             ; preds = %bb.s
  %i.awe = load i32, ptr %6, align 4, !tbaa !57   ; 2 uses
  %i.awf = icmp sgt i32 %i.awe, 0
  br i1 %i.awf, label %.lr.ph1216, label %.thread1090

.lr.ph1216:                                       ; preds = %bb.t
  %i.awg = load ptr, ptr %5, align 8, !tbaa !19
  %i.awh = load i32, ptr %i.l, align 4, !tbaa !47
  %i.awi = sext i32 %i.awh to i64
  %i.awj = mul nsw i64 %indvars.iv1263, %i.awi
  %i.awk = load i64, ptr %i.m, align 8, !tbaa !48
  %i.awl = mul i64 %i.awj, %i.awk
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awl
  %i.awn = load ptr, ptr %7, align 8, !tbaa !19
  %i.awo = load i32, ptr %10, align 4, !tbaa !57  ; 7 uses
  %i.awp = load ptr, ptr %8, align 8, !tbaa !19
  %i.awq = load i32, ptr %i.p, align 4, !tbaa !47
  %i.awr = sext i32 %i.awq to i64
  %i.aws = mul nsw i64 %indvars.iv1263, %i.awr
  %i.awt = load i64, ptr %i.q, align 8, !tbaa !48
  %i.awu = mul i64 %i.aws, %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.awu ; 3 uses
  %i.aww = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not175 = icmp eq ptr %i.aww, null
  %i.awx = icmp sgt i32 %i.awo, 3
  %i.awy = load i32, ptr %11, align 4, !tbaa !57
  %i.awz = and i32 %i.awo, -4                     ; 2 uses
  %i.axa = sext i32 %i.awo to i64
  %wide.trip.count = zext nneg i32 %i.awe to i64
  %i.axb = add i32 %i.awo, -4                     ; 2 uses
  %i.axc = lshr i32 %i.axb, 2
  %i.axd = add nuw nsw i32 %i.axc, 1              ; 2 uses
  %xtraiter1380 = and i32 %i.axd, 3               ; 3 uses
  %i.axe = icmp ult i32 %i.axb, 12
  %unroll_iter = and i32 %i.axd, 2147483644
  %lcmp.mod1381.not = icmp eq i32 %xtraiter1380, 0
  %lcmp.mod1385 = icmp ne i32 %xtraiter1380, 0
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph1216, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv1259 = phi i64 [ 0, %.lr.ph1216 ], [ %indvars.iv.next1260, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01481213 = phi ptr [ %i.awm, %.lr.ph1216 ], [ %i.baz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.axf = mul nsw i64 %indvars.iv1259, %i.axa
  %i.axg = getelementptr inbounds [4 x i8], ptr %i.awn, i64 %i.axf ; 3 uses
  br i1 %.not175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv1259
  %i.axi = load float, ptr %i.axh, align 4, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0141 = phi nsz float [ %i.axi, %bb.v ], [ 0.000000e+00, %bb.u ] ; 3 uses
  br i1 %i.awx, label %.lr.ph1201.preheader, label %.preheader

.lr.ph1201.preheader:                             ; preds = %bb.w
  br i1 %i.axe, label %.lr.ph1201.epil.preheader, label %.lr.ph1201

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph1201
  br i1 %lcmp.mod1381.not, label %.preheader, label %.lr.ph1201.epil.preheader

.lr.ph1201.epil.preheader:                        ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph1201.preheader
  %.01431198.epil.init = phi ptr [ %i.awv, %.lr.ph1201.preheader ], [ %i.azf, %.preheader.loopexit.unr-lcssa ]
  %.01451197.epil.init = phi ptr [ %i.axg, %.lr.ph1201.preheader ], [ %i.azg, %.preheader.loopexit.unr-lcssa ]
  %.09761196.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1201.preheader ], [ %i.aze, %.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1385)
  br label %.lr.ph1201.epil

.lr.ph1201.epil:                                  ; preds = %.lr.ph1201.epil, %.lr.ph1201.epil.preheader
  %.01431198.epil = phi ptr [ %i.axn, %.lr.ph1201.epil ], [ %.01431198.epil.init, %.lr.ph1201.epil.preheader ] ; 2 uses
  %.01451197.epil = phi ptr [ %i.axo, %.lr.ph1201.epil ], [ %.01451197.epil.init, %.lr.ph1201.epil.preheader ] ; 2 uses
  %.09761196.epil = phi <4 x float> [ %i.axm, %.lr.ph1201.epil ], [ %.09761196.epil.init, %.lr.ph1201.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1201.epil ], [ 0, %.lr.ph1201.epil.preheader ]
  %i.axj = load <4 x float>, ptr %.01431198.epil, align 1, !tbaa !49
  %i.axk = load <4 x float>, ptr %.01451197.epil, align 1, !tbaa !49
  %i.axl = fmul fast <4 x float> %i.axk, %i.axj
  %i.axm = fadd fast <4 x float> %i.axl, %.09761196.epil ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.01431198.epil, i64 16 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.01451197.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1380
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph1201.epil, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph1201.epil, %bb.w
  %.0976.lcssa = phi <4 x float> [ zeroinitializer, %bb.w ], [ %i.aze, %.preheader.loopexit.unr-lcssa ], [ %i.axm, %.lr.ph1201.epil ] ; 2 uses
  %.0145.lcssa = phi ptr [ %i.axg, %bb.w ], [ %i.azg, %.preheader.loopexit.unr-lcssa ], [ %i.axo, %.lr.ph1201.epil ] ; 3 uses
  %.0143.lcssa = phi ptr [ %i.awv, %bb.w ], [ %i.azf, %.preheader.loopexit.unr-lcssa ], [ %i.axn, %.lr.ph1201.epil ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.w ], [ %i.awz, %.lr.ph1201.epil ], [ %i.awz, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.axp = icmp slt i32 %.0.lcssa, %i.awo
  br i1 %i.axp, label %.lr.ph1210.preheader, label %._crit_edge1211

.lr.ph1210.preheader:                             ; preds = %.preheader
  %i.axq = xor i32 %.0.lcssa, -1
  %i.axr = add i32 %i.awo, %i.axq                 ; 2 uses
  %i.axs = zext i32 %i.axr to i64
  %i.axt = add nuw nsw i64 %i.axs, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.axr, 7
  br i1 %min.iters.check, label %.lr.ph1210.preheader1353, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1210.preheader
  %n.vec = and i64 %i.axt, 8589934584             ; 4 uses
  %i.axu = trunc i64 %n.vec to i32
  %i.axv = add i32 %.0.lcssa, %i.axu
  %i.axw = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.axx = getelementptr i8, ptr %.0143.lcssa, i64 %i.axw
  %i.axy = getelementptr i8, ptr %.0145.lcssa, i64 %i.axw
  %i.axz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0141, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.axz, %vector.ph ], [ %i.ayf, %vector.body ]
  %vec.phi1346 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ayg, %vector.body ]
  %i.aya = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0143.lcssa, i64 %i.aya ; 2 uses
  %next.gep1347 = getelementptr i8, ptr %.0145.lcssa, i64 %i.aya ; 2 uses
  %i.ayb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !52
  %wide.load1348 = load <4 x float>, ptr %i.ayb, align 4, !tbaa !52
  %i.ayc = getelementptr i8, ptr %next.gep1347, i64 16
  %wide.load1349 = load <4 x float>, ptr %next.gep1347, align 4, !tbaa !52
  %wide.load1350 = load <4 x float>, ptr %i.ayc, align 4, !tbaa !52
  %i.ayd = fmul fast <4 x float> %wide.load1349, %wide.load
  %i.aye = fmul fast <4 x float> %wide.load1350, %wide.load1348
  %i.ayf = fadd fast <4 x float> %i.ayd, %vec.phi ; 2 uses
  %i.ayg = fadd fast <4 x float> %i.aye, %vec.phi1346 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ayh = icmp eq i64 %index.next, %n.vec
  br i1 %i.ayh, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ayg, %i.ayf
  %i.ayi = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.axt, %n.vec
  br i1 %cmp.n, label %._crit_edge1211, label %.lr.ph1210.preheader1353

.lr.ph1210.preheader1353:                         ; preds = %.lr.ph1210.preheader, %middle.block
  %.11209.ph = phi i32 [ %.0.lcssa, %.lr.ph1210.preheader ], [ %i.axv, %middle.block ]
  %.11421208.ph = phi float [ %.0141, %.lr.ph1210.preheader ], [ %i.ayi, %middle.block ]
  %.11441207.ph = phi ptr [ %.0143.lcssa, %.lr.ph1210.preheader ], [ %i.axx, %middle.block ]
  %.11461206.ph = phi ptr [ %.0145.lcssa, %.lr.ph1210.preheader ], [ %i.axy, %middle.block ]
  br label %.lr.ph1210

.lr.ph1201:                                       ; preds = %.lr.ph1201.preheader, %.lr.ph1201
  %.01431198 = phi ptr [ %i.azf, %.lr.ph1201 ], [ %i.awv, %.lr.ph1201.preheader ] ; 5 uses
  %.01451197 = phi ptr [ %i.azg, %.lr.ph1201 ], [ %i.axg, %.lr.ph1201.preheader ] ; 5 uses
  %.09761196 = phi <4 x float> [ %i.aze, %.lr.ph1201 ], [ zeroinitializer, %.lr.ph1201.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph1201 ], [ 0, %.lr.ph1201.preheader ]
  %i.ayj = load <4 x float>, ptr %.01431198, align 1, !tbaa !49
  %i.ayk = load <4 x float>, ptr %.01451197, align 1, !tbaa !49
  %i.ayl = fmul fast <4 x float> %i.ayk, %i.ayj
  %i.aym = fadd fast <4 x float> %i.ayl, %.09761196
  %i.ayn = getelementptr inbounds nuw i8, ptr %.01431198, i64 16
  %i.ayo = getelementptr inbounds nuw i8, ptr %.01451197, i64 16
  %i.ayp = load <4 x float>, ptr %i.ayn, align 1, !tbaa !49
  %i.ayq = load <4 x float>, ptr %i.ayo, align 1, !tbaa !49
  %i.ayr = fmul fast <4 x float> %i.ayq, %i.ayp
  %i.ays = fadd fast <4 x float> %i.ayr, %i.aym
  %i.ayt = getelementptr inbounds nuw i8, ptr %.01431198, i64 32
  %i.ayu = getelementptr inbounds nuw i8, ptr %.01451197, i64 32
  %i.ayv = load <4 x float>, ptr %i.ayt, align 1, !tbaa !49
  %i.ayw = load <4 x float>, ptr %i.ayu, align 1, !tbaa !49
  %i.ayx = fmul fast <4 x float> %i.ayw, %i.ayv
  %i.ayy = fadd fast <4 x float> %i.ayx, %i.ays
  %i.ayz = getelementptr inbounds nuw i8, ptr %.01431198, i64 48
  %i.aza = getelementptr inbounds nuw i8, ptr %.01451197, i64 48
  %i.azb = load <4 x float>, ptr %i.ayz, align 1, !tbaa !49
  %i.azc = load <4 x float>, ptr %i.aza, align 1, !tbaa !49
  %i.azd = fmul fast <4 x float> %i.azc, %i.azb
  %i.aze = fadd fast <4 x float> %i.azd, %i.ayy   ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %.01431198, i64 64 ; 3 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %.01451197, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph1201, !llvm.loop !115

.lr.ph1210:                                       ; preds = %.lr.ph1210.preheader1353, %.lr.ph1210
  %.11209 = phi i32 [ %i.azn, %.lr.ph1210 ], [ %.11209.ph, %.lr.ph1210.preheader1353 ]
  %.11421208 = phi float [ %i.azm, %.lr.ph1210 ], [ %.11421208.ph, %.lr.ph1210.preheader1353 ]
  %.11441207 = phi ptr [ %i.azh, %.lr.ph1210 ], [ %.11441207.ph, %.lr.ph1210.preheader1353 ] ; 2 uses
  %.11461206 = phi ptr [ %i.azj, %.lr.ph1210 ], [ %.11461206.ph, %.lr.ph1210.preheader1353 ] ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %.11441207, i64 4
  %i.azi = load float, ptr %.11441207, align 4, !tbaa !52
  %i.azj = getelementptr inbounds nuw i8, ptr %.11461206, i64 4
  %i.azk = load float, ptr %.11461206, align 4, !tbaa !52
  %i.azl = fmul fast float %i.azk, %i.azi
  %i.azm = fadd fast float %i.azl, %.11421208     ; 2 uses
  %i.azn = add nuw nsw i32 %.11209, 1             ; 2 uses
  %exitcond1258.not = icmp eq i32 %i.azn, %i.awo
  br i1 %exitcond1258.not, label %._crit_edge1211, label %.lr.ph1210, !llvm.loop !116

._crit_edge1211:                                  ; preds = %.lr.ph1210, %middle.block, %.preheader
  %.1142.lcssa = phi float [ %.0141, %.preheader ], [ %i.ayi, %middle.block ], [ %i.azm, %.lr.ph1210 ]
  %i.azo = shufflevector <4 x float> %.0976.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.azp = shufflevector <4 x float> %.0976.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.azq = fadd fast <2 x float> %i.azo, %i.azp
  %i.azr = call fast float @llvm.vector.reduce.fadd.v2f32(float %.1142.lcssa, <2 x float> %i.azq) ; 13 uses
  switch i32 %i.awy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.ab
    i32 5, label %bb.ac
    i32 6, label %bb.ad
  ]

bb.x:                                             ; preds = %._crit_edge1211
  %i.azs = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.azr, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge1211
  %i.azt = load ptr, ptr %12, align 8, !tbaa !19
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !52
  %i.azv = fcmp fast ogt float %i.azr, 0.000000e+00
  %i.azw = select fast i1 %i.azv, float 1.000000e+00, float %i.azu
  %i.azx = fmul fast float %i.azw, %i.azr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.z:                                             ; preds = %._crit_edge1211
  %i.azy = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.azz = load float, ptr %i.azy, align 4, !tbaa !52
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azy, i64 4
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !52 ; 2 uses
  %.0993 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.azr, float %i.azz) ; 2 uses
  %i.bac = fcmp fast ogt float %.0993, %i.bab
  br i1 %i.bac, label %bb.aa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aa:                                            ; preds = %bb.z
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ab:                                            ; preds = %._crit_edge1211
  %.sroa.speculated355 = call nnan ninf nsz float @llvm.minnum.f32(float %i.azr, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated355, float f0xC2B0C0A5)
  %i.bad = fneg fast float %.sroa.speculated
  %i.bae = call fast float @llvm.exp.f32(float %i.bad)
  %i.baf = fadd fast float %i.bae, 1.000000e+00
  %i.bag = fdiv fast float 1.000000e+00, %i.baf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ac:                                            ; preds = %._crit_edge1211
  %i.bah = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.azr)
  %i.bai = fadd fast float %i.bah, 1.000000e+00
  %i.baj = call fast float @llvm.log.f32(float %i.bai)
  %i.bak = call fast float @llvm.tanh.f32(float %i.baj)
  %i.bal = fmul fast float %i.bak, %i.azr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ad:                                            ; preds = %._crit_edge1211
  %i.bam = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.ban = load float, ptr %i.bam, align 4, !tbaa !52 ; 3 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bam, i64 4
  %i.bap = load float, ptr %i.bao, align 4, !tbaa !52 ; 2 uses
  %i.baq = fneg fast float %i.bap
  %i.bar = fdiv fast float %i.baq, %i.ban         ; 2 uses
  %i.bas = fcmp fast olt float %i.azr, %i.bar
  br i1 %i.bas, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bat = fdiv fast float 1.000000e+00, %i.ban
  %i.bau = fadd fast float %i.bar, %i.bat
  %i.bav = fcmp fast ogt float %i.azr, %i.bau
  br i1 %i.bav, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.baw = fmul fast float %i.ban, %i.azr
  %i.bax = fadd fast float %i.baw, %i.bap
  %i.bay = fmul fast float %i.bax, %i.azr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %._crit_edge1211, %bb.ad
  %.1994 = phi nsz float [ %i.azr, %._crit_edge1211 ], [ %i.azs, %bb.x ], [ %i.azx, %bb.y ], [ %i.bab, %bb.aa ], [ %.0993, %bb.z ], [ %i.bag, %bb.ab ], [ %i.bal, %bb.ac ], [ %i.bay, %bb.af ], [ %i.azr, %bb.ae ], [ 0.000000e+00, %bb.ad ]
  store float %.1994, ptr %.01481213, align 4, !tbaa !52
  %i.baz = getelementptr inbounds nuw i8, ptr %.01481213, i64 4
  %indvars.iv.next1260 = add nuw nsw i64 %indvars.iv1259, 1 ; 2 uses
  %exitcond1262.not = icmp eq i64 %indvars.iv.next1260, %wide.trip.count
  br i1 %exitcond1262.not, label %.thread1090, label %bb.u, !llvm.loop !117

.thread1090:                                      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.t, %.thread.thread, %bb.s, %thread-pre-split1088
  %.pr10891283 = phi i32 [ %.pr10891284, %thread-pre-split1088 ], [ %.pr10891284, %bb.t ], [ %.pr10891278, %.thread.thread ], [ %.pr10891284, %bb.s ], [ %.pr10891284, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr10911275 = phi i32 [ %.pr10911276, %thread-pre-split1088 ], [ 1, %bb.t ], [ %.pr10911272, %.thread.thread ], [ 1, %bb.s ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr1268 = phi i32 [ %.pr10911276, %thread-pre-split1088 ], [ 1, %bb.t ], [ %.pr1269, %.thread.thread ], [ 1, %bb.s ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %i.bba = phi i32 [ %.pr10911276, %thread-pre-split1088 ], [ 1, %bb.t ], [ 4, %.thread.thread ], [ 1, %bb.s ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %indvars.iv.next1264 = add nsw i64 %indvars.iv1263, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1264 to i32
  %exitcond1266.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond1266.not, label %._crit_edge1224, label %bb.c

._crit_edge1224:                                  ; preds = %.thread1090, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1224, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !75 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not212 = icmp sgt i32 %i.k, %i.j
  br i1 %.not212, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph215, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph215 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0187 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !19
  %i.t = load i32, ptr %i.l, align 4, !tbaa !47
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !48
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !57    ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ac = and i32 %i.aa, 2147483644
  %i.ad = fadd fast <4 x float> %i.bs, %i.bq
  %i.ae = fadd fast <4 x float> %i.ad, %i.bu
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.1188.lcssa = phi <4 x float> [ %.0187, %bb.e ], [ %i.bo, %.preheader.loopexit ] ; 3 uses
  %.0185.lcssa = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.ae, %.preheader.loopexit ]
  %.046.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.bw, %.preheader.loopexit ] ; 2 uses
  %.044.lcssa = phi ptr [ %i.z, %bb.e ], [ %i.bv, %.preheader.loopexit ] ; 2 uses
  %.043.lcssa = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader.loopexit ] ; 4 uses
  %i.af = icmp slt i32 %.043.lcssa, %i.aa
  br i1 %i.af, label %.lr.ph210.preheader, label %._crit_edge

.lr.ph210.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader, %.lr.ph210.prol
  %.1209.prol = phi i32 [ %i.ao, %.lr.ph210.prol ], [ %.043.lcssa, %.lr.ph210.preheader ]
  %.145208.prol = phi ptr [ %i.am, %.lr.ph210.prol ], [ %.044.lcssa, %.lr.ph210.preheader ] ; 2 uses
  %.147207.prol = phi ptr [ %i.an, %.lr.ph210.prol ], [ %.046.lcssa, %.lr.ph210.preheader ] ; 2 uses
  %.2206.prol = phi <4 x float> [ %i.al, %.lr.ph210.prol ], [ %.1188.lcssa, %.lr.ph210.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader ]
  %i.ag = load float, ptr %.145208.prol, align 4, !tbaa !52
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load <4 x float>, ptr %.147207.prol, align 1, !tbaa !49
  %i.ak = fmul fast <4 x float> %i.ai, %i.aj
  %i.al = fadd fast <4 x float> %i.ak, %.2206.prol ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.145208.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.147207.prol, i64 16 ; 2 uses
  %i.ao = add nuw nsw i32 %.1209.prol, 1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !118

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader
  %.lcssa248.unr = phi <4 x float> [ poison, %.lr.ph210.preheader ], [ %i.al, %.lr.ph210.prol ]
  %.1209.unr = phi i32 [ %.043.lcssa, %.lr.ph210.preheader ], [ %i.ao, %.lr.ph210.prol ]
  %.145208.unr = phi ptr [ %.044.lcssa, %.lr.ph210.preheader ], [ %i.am, %.lr.ph210.prol ]
  %.147207.unr = phi ptr [ %.046.lcssa, %.lr.ph210.preheader ], [ %i.an, %.lr.ph210.prol ]
  %.2206.unr = phi <4 x float> [ %.1188.lcssa, %.lr.ph210.preheader ], [ %i.al, %.lr.ph210.prol ]
  %i.ap = sub i32 %.043.lcssa, %i.aa
  %i.aq = icmp ugt i32 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph210

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.043198 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %bb.e ]
  %.044197 = phi ptr [ %i.bv, %.lr.ph ], [ %i.z, %bb.e ] ; 5 uses
  %.046196 = phi ptr [ %i.bw, %.lr.ph ], [ %i.y, %bb.e ] ; 5 uses
  %.0184195 = phi <4 x float> [ %i.bu, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0185194 = phi <4 x float> [ %i.bs, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0186193 = phi <4 x float> [ %i.bq, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.1188192 = phi <4 x float> [ %i.bo, %.lr.ph ], [ %.0187, %bb.e ]
  %i.ar = load float, ptr %.044197, align 4, !tbaa !52
  %i.as = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = getelementptr inbounds nuw i8, ptr %.044197, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !52
  %i.aw = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = getelementptr inbounds nuw i8, ptr %.044197, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !52
  %i.ba = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.044197, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !52
  %i.be = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = load <4 x float>, ptr %.046196, align 1, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %.046196, i64 16
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %.046196, i64 32
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %.046196, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !tbaa !49
  %i.bn = fmul fast <4 x float> %i.bg, %i.at
  %i.bo = fadd fast <4 x float> %i.bn, %.1188192  ; 2 uses
  %i.bp = fmul fast <4 x float> %i.bi, %i.ax
  %i.bq = fadd fast <4 x float> %i.bp, %.0186193  ; 2 uses
  %i.br = fmul fast <4 x float> %i.bk, %i.bb
  %i.bs = fadd fast <4 x float> %i.br, %.0185194  ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bm, %i.bf
  %i.bu = fadd fast <4 x float> %i.bt, %.0184195  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.044197, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.046196, i64 64 ; 2 uses
  %i.bx = add nuw nsw i32 %.043198, 4             ; 2 uses
  %i.by = or disjoint i32 %i.bx, 3
  %i.bz = icmp slt i32 %i.by, %i.aa
  br i1 %i.bz, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !119

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %.1209 = phi i32 [ %i.dg, %.lr.ph210 ], [ %.1209.unr, %.lr.ph210.prol.loopexit ]
  %.145208 = phi ptr [ %i.de, %.lr.ph210 ], [ %.145208.unr, %.lr.ph210.prol.loopexit ] ; 5 uses
  %.147207 = phi ptr [ %i.df, %.lr.ph210 ], [ %.147207.unr, %.lr.ph210.prol.loopexit ] ; 5 uses
  %.2206 = phi <4 x float> [ %i.dd, %.lr.ph210 ], [ %.2206.unr, %.lr.ph210.prol.loopexit ]
  %i.ca = load float, ptr %.145208, align 4, !tbaa !52
  %i.cb = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = load <4 x float>, ptr %.147207, align 1, !tbaa !49
  %i.ce = fmul fast <4 x float> %i.cc, %i.cd
  %i.cf = fadd fast <4 x float> %i.ce, %.2206
  %i.cg = getelementptr inbounds nuw i8, ptr %.145208, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.147207, i64 16
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !52
  %i.cj = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = load <4 x float>, ptr %i.ch, align 1, !tbaa !49
  %i.cm = fmul fast <4 x float> %i.ck, %i.cl
  %i.cn = fadd fast <4 x float> %i.cm, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %.145208, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.147207, i64 32
  %i.cq = load float, ptr %i.co, align 4, !tbaa !52
  %i.cr = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = load <4 x float>, ptr %i.cp, align 1, !tbaa !49
  %i.cu = fmul fast <4 x float> %i.cs, %i.ct
  %i.cv = fadd fast <4 x float> %i.cu, %i.cn
  %i.cw = getelementptr inbounds nuw i8, ptr %.145208, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %.147207, i64 48
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !52
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = load <4 x float>, ptr %i.cx, align 1, !tbaa !49
  %i.dc = fmul fast <4 x float> %i.da, %i.db
  %i.dd = fadd fast <4 x float> %i.dc, %i.cv      ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.145208, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.147207, i64 64
  %i.dg = add nuw nsw i32 %.1209, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dg, %i.aa
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph210, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %.preheader
  %.2.lcssa = phi <4 x float> [ %.1188.lcssa, %.preheader ], [ %.lcssa248.unr, %.lr.ph210.prol.loopexit ], [ %i.dd, %.lr.ph210 ]
  %i.dh = fadd fast <4 x float> %.0185.lcssa, %.2.lcssa ; 10 uses
  %i.di = load i32, ptr %7, align 4, !tbaa !57
  switch i32 %i.di, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc50
    i32 5, label %.noexc51
    i32 6, label %.noexc52
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.dk = load ptr, ptr %8, align 8, !tbaa !19
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !52
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dh)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dh)
  %i.do = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul fast <4 x float> %i.dp, %i.dn
  %i.dr = fadd fast <4 x float> %i.dq, %i.dm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ds = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !52
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !52
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dv)
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dz)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc50:                                         ; preds = %._crit_edge
  %i.ec = fneg fast <4 x float> %i.dh
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0x42B0C0A5))
  %i.ee = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ef = fmul fast <4 x float> %i.ee, splat (float f0x3FB8AA3B)
  %i.eg = fadd fast <4 x float> %i.ef, splat (float 5.000000e-01) ; 2 uses
  %i.eh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = sitofp fast <4 x i32> %i.eh to <4 x float> ; 2 uses
  %i.ej = fcmp fast olt <4 x float> %i.eg, %i.ei
  %i.ek = select <4 x i1> %i.ej, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.el = fsub fast <4 x float> %i.ei, %i.ek      ; 2 uses
  %i.em = fmul fast <4 x float> %i.el, splat (float f0x3F317218)
  %i.en = fsub fast <4 x float> %i.ee, %i.em      ; 8 uses
  %i.eo = fmul fast <4 x float> %i.en, %i.en
  %i.ep = fmul fast <4 x float> %i.en, splat (float f0x39506967)
  %i.eq = fadd fast <4 x float> %i.ep, splat (float f0x3AB743CE)
  %i.er = fmul fast <4 x float> %i.eq, %i.en
  %i.es = fadd fast <4 x float> %i.er, splat (float f0x3C088908)
  %i.et = fmul fast <4 x float> %i.es, %i.en
  %i.eu = fadd fast <4 x float> %i.et, splat (float f0x3D2AA9C1)
  %i.ev = fmul fast <4 x float> %i.eu, %i.en
  %i.ew = fadd fast <4 x float> %i.ev, splat (float f0x3E2AAAAA)
  %i.ex = fmul fast <4 x float> %i.ew, %i.en
  %i.ey = fadd fast <4 x float> %i.ex, splat (float 5.000000e-01)
  %i.ez = fmul fast <4 x float> %i.eo, %i.ey
  %i.fa = fadd fast <4 x float> %i.en, splat (float 1.000000e+00)
  %i.fb = fadd fast <4 x float> %i.fa, %i.ez
  %i.fc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.el)
  %i.fd = shl <4 x i32> %i.fc, splat (i32 23)
  %i.fe = add <4 x i32> %i.fd, splat (i32 1065353216)
  %i.ff = bitcast <4 x i32> %i.fe to <4 x float>
  %i.fg = fmul fast <4 x float> %i.fb, %i.ff
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc51:                                         ; preds = %._crit_edge
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> splat (float f0x42B0C0A5))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fk, splat (float f0x3FB8AA3B)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 5.000000e-01) ; 2 uses
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fm)
  %i.fo = sitofp fast <4 x i32> %i.fn to <4 x float> ; 2 uses
  %i.fp = fcmp fast olt <4 x float> %i.fm, %i.fo
  %i.fq = select <4 x i1> %i.fp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fr = fsub fast <4 x float> %i.fo, %i.fq      ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float f0x3F317218)
  %i.ft = fsub fast <4 x float> %i.fk, %i.fs      ; 8 uses
  %i.fu = fmul fast <4 x float> %i.ft, %i.ft
  %i.fv = fmul fast <4 x float> %i.ft, splat (float f0x39506967)
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0x3AB743CE)
  %i.fx = fmul fast <4 x float> %i.fw, %i.ft
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3C088908)
  %i.fz = fmul fast <4 x float> %i.fy, %i.ft
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3D2AA9C1)
  %i.gb = fmul fast <4 x float> %i.ga, %i.ft
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3E2AAAAA)
  %i.gd = fmul fast <4 x float> %i.gc, %i.ft
  %i.ge = fadd fast <4 x float> %i.gd, splat (float 5.000000e-01)
  %i.gf = fmul fast <4 x float> %i.fu, %i.ge
  %i.gg = fadd fast <4 x float> %i.ft, splat (float 1.000000e+00)
  %i.gh = fadd fast <4 x float> %i.gg, %i.gf
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fr)
  %i.gj = shl <4 x i32> %i.gi, splat (i32 23)
  %i.gk = add <4 x i32> %i.gj, splat (i32 1065353216)
  %i.gl = bitcast <4 x i32> %i.gk to <4 x float>
  %i.gm = fmul fast <4 x float> %i.gh, %i.gl
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 1.000000e+00) ; 2 uses
  %i.go = fcmp fast ole <4 x float> %i.gn, zeroinitializer
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0x00800000))
  %i.gq = bitcast <4 x float> %i.gp to <4 x i32>  ; 2 uses
  %i.gr = lshr <4 x i32> %i.gq, splat (i32 23)
  %i.gs = and <4 x i32> %i.gq, splat (i32 -2139095041)
  %i.gt = or disjoint <4 x i32> %i.gs, splat (i32 1056964608)
  %i.gu = bitcast <4 x i32> %i.gt to <4 x float>  ; 3 uses
  %i.gv = add nsw <4 x i32> %i.gr, splat (i32 -127)
  %i.gw = sitofp fast <4 x i32> %i.gv to <4 x float> ; 2 uses
  %i.gx = fadd fast <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fcmp fast olt <4 x float> %i.gu, splat (float f0x3F3504F3) ; 2 uses
  %i.gz = select <4 x i1> %i.gy, <4 x float> %i.gu, <4 x float> zeroinitializer
  %i.ha = fadd fast <4 x float> %i.gu, splat (float -1.000000e+00)
  %i.hb = select fast <4 x i1> %i.gy, <4 x float> %i.gw, <4 x float> %i.gx
  %i.hc = fadd fast <4 x float> %i.ha, %i.gz      ; 12 uses
  %i.hd = fmul fast <4 x float> %i.hc, %i.hc
  %i.he = fmul fast <4 x float> %i.hc, splat (float f0x3D9021BB)
  %i.hf = fadd fast <4 x float> %i.he, splat (float f0xBDEBD1B8)
  %i.hg = fmul fast <4 x float> %i.hf, %i.hc
  %i.hh = fadd fast <4 x float> %i.hg, splat (float f0x3DEF251A)
  %i.hi = fmul fast <4 x float> %i.hh, %i.hc
  %i.hj = fadd fast <4 x float> %i.hi, splat (float f0xBDFE5D4F)
  %i.hk = fmul fast <4 x float> %i.hj, %i.hc
  %i.hl = fadd fast <4 x float> %i.hk, splat (float f0x3E11E9BF)
  %i.hm = fmul fast <4 x float> %i.hl, %i.hc
  %i.hn = fadd fast <4 x float> %i.hm, splat (float f0xBE2AAE50)
  %i.ho = fmul fast <4 x float> %i.hn, %i.hc
  %i.hp = fadd fast <4 x float> %i.ho, splat (float f0x3E4CCEAC)
  %i.hq = fmul fast <4 x float> %i.hp, %i.hc
  %i.hr = fadd fast <4 x float> %i.hq, splat (float f0xBE7FFFFC)
  %i.hs = fmul fast <4 x float> %i.hr, %i.hc
  %i.ht = fadd fast <4 x float> %i.hs, splat (float f0x3EAAAAAA)
  %i.hu = fmul fast <4 x float> %i.ht, %i.hc
  %reass.mul = fmul fast <4 x float> %i.hb, splat (float f0x3F317218)
  %reass.add190 = fadd fast <4 x float> %i.hu, splat (float -5.000000e-01)
  %reass.mul191 = fmul fast <4 x float> %i.hd, %reass.add190
  %i.hv = fadd fast <4 x float> %reass.mul, %i.hc
  %i.hw = fadd fast <4 x float> %i.hv, %reass.mul191
  %.neg = fmul fast <4 x float> %i.hw, splat (float -2.000000e+00)
  %i.hx = select fast <4 x i1> %i.go, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> splat (float f0x42B0C0A5))
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ia = fmul fast <4 x float> %i.hz, splat (float f0x3FB8AA3B)
  %i.ib = fadd fast <4 x float> %i.ia, splat (float 5.000000e-01) ; 2 uses
  %i.ic = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ib)
  %i.id = sitofp fast <4 x i32> %i.ic to <4 x float> ; 2 uses
  %i.ie = fcmp fast olt <4 x float> %i.ib, %i.id
  %i.if = select <4 x i1> %i.ie, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ig = fsub fast <4 x float> %i.id, %i.if      ; 2 uses
  %i.ih = fmul fast <4 x float> %i.ig, splat (float f0x3F317218)
  %i.ii = fsub fast <4 x float> %i.hz, %i.ih      ; 8 uses
  %i.ij = fmul fast <4 x float> %i.ii, %i.ii
  %i.ik = fmul fast <4 x float> %i.ii, splat (float f0x39506967)
  %i.il = fadd fast <4 x float> %i.ik, splat (float f0x3AB743CE)
  %i.im = fmul fast <4 x float> %i.il, %i.ii
  %i.in = fadd fast <4 x float> %i.im, splat (float f0x3C088908)
  %i.io = fmul fast <4 x float> %i.in, %i.ii
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3D2AA9C1)
  %i.iq = fmul fast <4 x float> %i.ip, %i.ii
  %i.ir = fadd fast <4 x float> %i.iq, splat (float f0x3E2AAAAA)
  %i.is = fmul fast <4 x float> %i.ir, %i.ii
  %i.it = fadd fast <4 x float> %i.is, splat (float 5.000000e-01)
  %i.iu = fmul fast <4 x float> %i.ij, %i.it
  %i.iv = fadd fast <4 x float> %i.ii, splat (float 1.000000e+00)
  %i.iw = fadd fast <4 x float> %i.iv, %i.iu
  %i.ix = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ig)
  %i.iy = shl <4 x i32> %i.ix, splat (i32 23)
  %i.iz = add <4 x i32> %i.iy, splat (i32 1065353216)
  %i.ja = bitcast <4 x i32> %i.iz to <4 x float>
  %i.jb = fmul fast <4 x float> %i.iw, %i.ja
  %i.jc = fadd fast <4 x float> %i.jb, splat (float 1.000000e+00)
  %i.jd = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jc
  %i.je = fadd fast <4 x float> %i.jd, splat (float -1.000000e+00)
  %i.jf = fmul fast <4 x float> %i.je, %i.dh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc52:                                         ; preds = %._crit_edge
  %i.jg = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !52
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !52
  %i.jm = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = fmul fast <4 x float> %i.jj, %i.dh
  %i.jp = fadd fast <4 x float> %i.jo, %i.jn
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jp, <4 x float> zeroinitializer)
  %i.jr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> splat (float 1.000000e+00))
  %i.js = fmul fast <4 x float> %i.jr, %i.dh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc52, %.noexc51, %.noexc50, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.js, %.noexc52 ], [ %i.dj, %bb.f ], [ %i.dr, %.noexc ], [ %i.eb, %bb.g ], [ %i.fi, %.noexc50 ], [ %i.jf, %.noexc51 ], [ %i.dh, %._crit_edge ]
  %i.jt = load ptr, ptr %9, align 8, !tbaa !19
  %.idx230 = shl nsw i64 %indvars.iv, 4
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %.idx230
  store <4 x float> %.0.i, ptr %i.ju, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond225.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge216, label %bb.c

._crit_edge216:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge216, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not275 = icmp sgt i32 %i.k, %i.j
  br i1 %.not275, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.b, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0276 = phi i32 [ %i.jb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !57
  %i.m = shl nsw i32 %.0276, 2
  %i.n = add nsw i32 %i.l, %i.m                   ; 6 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not89 = icmp eq ptr %i.o, null
  br i1 %.not89, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph278
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load <4 x float>, ptr %i.q, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph278
  %.sroa.0.0 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph278 ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !19     ; 4 uses
  %i.t = load i32, ptr %6, align 4, !tbaa !57     ; 9 uses
  %i.u = mul nsw i32 %i.t, %i.n
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %i.n, 1
  %i.y = mul nsw i32 %i.t, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z ; 2 uses
  %i.ab = add nsw i32 %i.n, 2
  %i.ac = mul nsw i32 %i.t, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = add nsw i32 %i.n, 3
  %i.ag = mul nsw i32 %i.t, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ak = icmp sgt i32 %i.t, 3
  br i1 %i.ak, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.al = and i32 %i.t, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.0243.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.at, %.preheader.loopexit ] ; 2 uses
  %.0242.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.av, %.preheader.loopexit ] ; 2 uses
  %.0241.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ax, %.preheader.loopexit ] ; 2 uses
  %.0240.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.az, %.preheader.loopexit ] ; 2 uses
  %.086.lcssa = phi ptr [ %i.w, %bb.d ], [ %i.bb, %.preheader.loopexit ]
  %.084.lcssa = phi ptr [ %i.aa, %bb.d ], [ %i.bc, %.preheader.loopexit ]
  %.082.lcssa = phi ptr [ %i.ae, %bb.d ], [ %i.bd, %.preheader.loopexit ]
  %.080.lcssa = phi ptr [ %i.ai, %bb.d ], [ %i.be, %.preheader.loopexit ]
  %.078.lcssa = phi ptr [ %i.aj, %bb.d ], [ %i.ba, %.preheader.loopexit ]
  %.077.lcssa = phi i32 [ 0, %bb.d ], [ %i.al, %.preheader.loopexit ] ; 2 uses
  %i.am = icmp slt i32 %.077.lcssa, %i.t
  br i1 %i.am, label %.lr.ph273, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.077256 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %bb.d ]
  %.078255 = phi ptr [ %i.ba, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %.080254 = phi ptr [ %i.be, %.lr.ph ], [ %i.ai, %bb.d ] ; 2 uses
  %.082253 = phi ptr [ %i.bd, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %.084252 = phi ptr [ %i.bc, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.086251 = phi ptr [ %i.bb, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %.0240250 = phi <4 x float> [ %i.az, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %.0241249 = phi <4 x float> [ %i.ax, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %.0242248 = phi <4 x float> [ %i.av, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %.0243247 = phi <4 x float> [ %i.at, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %i.an = load <4 x float>, ptr %.078255, align 1, !tbaa !49 ; 4 uses
  %i.ao = load <4 x float>, ptr %.086251, align 1, !tbaa !49
  %i.ap = load <4 x float>, ptr %.084252, align 1, !tbaa !49
  %i.aq = load <4 x float>, ptr %.082253, align 1, !tbaa !49
  %i.ar = load <4 x float>, ptr %.080254, align 1, !tbaa !49
  %i.as = fmul fast <4 x float> %i.ao, %i.an
  %i.at = fadd fast <4 x float> %i.as, %.0243247  ; 2 uses
  %i.au = fmul fast <4 x float> %i.ap, %i.an
  %i.av = fadd fast <4 x float> %i.au, %.0242248  ; 2 uses
  %i.aw = fmul fast <4 x float> %i.aq, %i.an
  %i.ax = fadd fast <4 x float> %i.aw, %.0241249  ; 2 uses
  %i.ay = fmul fast <4 x float> %i.ar, %i.an
  %i.az = fadd fast <4 x float> %i.ay, %.0240250  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.078255, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.086251, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.084252, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.082253, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.080254, i64 16 ; 2 uses
  %i.bf = add nuw nsw i32 %.077256, 4             ; 2 uses
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = icmp slt i32 %i.bg, %i.t
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !121

.lr.ph273:                                        ; preds = %.preheader, %.lr.ph273
  %.1272 = phi i32 [ %i.ca, %.lr.ph273 ], [ %.077.lcssa, %.preheader ]
  %.179271 = phi ptr [ %i.bv, %.lr.ph273 ], [ %.078.lcssa, %.preheader ] ; 2 uses
  %.181270 = phi ptr [ %i.bz, %.lr.ph273 ], [ %.080.lcssa, %.preheader ] ; 2 uses
  %.183269 = phi ptr [ %i.by, %.lr.ph273 ], [ %.082.lcssa, %.preheader ] ; 2 uses
  %.185268 = phi ptr [ %i.bx, %.lr.ph273 ], [ %.084.lcssa, %.preheader ] ; 2 uses
  %.187267 = phi ptr [ %i.bw, %.lr.ph273 ], [ %.086.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1266 = phi <4 x float> [ %i.bu, %.lr.ph273 ], [ %.sroa.0.0, %.preheader ]
  %i.bi = load float, ptr %.179271, align 4, !tbaa !52
  %i.bj = load float, ptr %.187267, align 4, !tbaa !52
  %i.bk = load float, ptr %.185268, align 4, !tbaa !52
  %i.bl = load float, ptr %.183269, align 4, !tbaa !52
  %i.bm = load float, ptr %.181270, align 4, !tbaa !52
  %i.bn = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 2
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 3
  %i.br = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul fast <4 x float> %i.bq, %i.bs
  %i.bu = fadd fast <4 x float> %i.bt, %.sroa.0.1266 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.179271, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.187267, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.185268, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.183269, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.181270, i64 4
  %i.ca = add nuw nsw i32 %.1272, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph273, !llvm.loop !122

._crit_edge:                                      ; preds = %.lr.ph273, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.bu, %.lr.ph273 ]
  %i.cb = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cc = shufflevector <4 x float> %.0241.lcssa, <4 x float> %.0240.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cd = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ce = shufflevector <4 x float> %.0241.lcssa, <4 x float> %.0240.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cf = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cg = shufflevector <4 x float> %i.cc, <4 x float> %i.cb, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ch = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> %i.cd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cj = fadd fast <4 x float> %i.cg, %i.cf
  %i.ck = fadd fast <4 x float> %i.cj, %i.ch
  %i.cl = fadd fast <4 x float> %i.ck, %i.ci
  %i.cm = fadd fast <4 x float> %i.cl, %.sroa.0.1.lcssa ; 10 uses
  %i.cn = load i32, ptr %8, align 4, !tbaa !57
  switch i32 %i.cn, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc
    i32 3, label %bb.f
    i32 4, label %.noexc90
    i32 5, label %.noexc91
    i32 6, label %.noexc92
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.cp = load ptr, ptr %9, align 8, !tbaa !19
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !52
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cm)
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cm)
  %i.ct = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul fast <4 x float> %i.cu, %i.cs
  %i.cw = fadd fast <4 x float> %i.cv, %i.cr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !52
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !52
  %i.dd = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> nofpclass(nan inf) %i.da)
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.de)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc90:                                         ; preds = %._crit_edge
  %i.dh = fneg fast <4 x float> %i.cm
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> splat (float f0x42B0C0A5))
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dk = fmul fast <4 x float> %i.dj, splat (float f0x3FB8AA3B)
  %i.dl = fadd fast <4 x float> %i.dk, splat (float 5.000000e-01) ; 2 uses
  %i.dm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dl)
  %i.dn = sitofp fast <4 x i32> %i.dm to <4 x float> ; 2 uses
  %i.do = fcmp fast olt <4 x float> %i.dl, %i.dn
  %i.dp = select <4 x i1> %i.do, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dq = fsub fast <4 x float> %i.dn, %i.dp      ; 2 uses
  %i.dr = fmul fast <4 x float> %i.dq, splat (float f0x3F317218)
  %i.ds = fsub fast <4 x float> %i.dj, %i.dr      ; 8 uses
  %i.dt = fmul fast <4 x float> %i.ds, %i.ds
  %i.du = fmul fast <4 x float> %i.ds, splat (float f0x39506967)
  %i.dv = fadd fast <4 x float> %i.du, splat (float f0x3AB743CE)
  %i.dw = fmul fast <4 x float> %i.dv, %i.ds
  %i.dx = fadd fast <4 x float> %i.dw, splat (float f0x3C088908)
  %i.dy = fmul fast <4 x float> %i.dx, %i.ds
  %i.dz = fadd fast <4 x float> %i.dy, splat (float f0x3D2AA9C1)
  %i.ea = fmul fast <4 x float> %i.dz, %i.ds
  %i.eb = fadd fast <4 x float> %i.ea, splat (float f0x3E2AAAAA)
  %i.ec = fmul fast <4 x float> %i.eb, %i.ds
  %i.ed = fadd fast <4 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = fmul fast <4 x float> %i.dt, %i.ed
  %i.ef = fadd fast <4 x float> %i.ds, splat (float 1.000000e+00)
  %i.eg = fadd fast <4 x float> %i.ef, %i.ee
  %i.eh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.ei = shl <4 x i32> %i.eh, splat (i32 23)
  %i.ej = add <4 x i32> %i.ei, splat (i32 1065353216)
  %i.ek = bitcast <4 x i32> %i.ej to <4 x float>
  %i.el = fmul fast <4 x float> %i.eg, %i.ek
  %i.em = fadd fast <4 x float> %i.el, splat (float 1.000000e+00)
  %i.en = fdiv fast <4 x float> splat (float 1.000000e+00), %i.em
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc91:                                         ; preds = %._crit_edge
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> splat (float f0x42B0C0A5))
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ep, splat (float f0x3FB8AA3B)
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01) ; 2 uses
  %i.es = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.er)
  %i.et = sitofp fast <4 x i32> %i.es to <4 x float> ; 2 uses
  %i.eu = fcmp fast olt <4 x float> %i.er, %i.et
  %i.ev = select <4 x i1> %i.eu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ew = fsub fast <4 x float> %i.et, %i.ev      ; 2 uses
  %i.ex = fmul fast <4 x float> %i.ew, splat (float f0x3F317218)
  %i.ey = fsub fast <4 x float> %i.ep, %i.ex      ; 8 uses
  %i.ez = fmul fast <4 x float> %i.ey, %i.ey
  %i.fa = fmul fast <4 x float> %i.ey, splat (float f0x39506967)
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3AB743CE)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ey
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3C088908)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ey
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3D2AA9C1)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ey
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0x3E2AAAAA)
  %i.fi = fmul fast <4 x float> %i.fh, %i.ey
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 5.000000e-01)
  %i.fk = fmul fast <4 x float> %i.ez, %i.fj
  %i.fl = fadd fast <4 x float> %i.ey, splat (float 1.000000e+00)
  %i.fm = fadd fast <4 x float> %i.fl, %i.fk
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ew)
  %i.fo = shl <4 x i32> %i.fn, splat (i32 23)
  %i.fp = add <4 x i32> %i.fo, splat (i32 1065353216)
  %i.fq = bitcast <4 x i32> %i.fp to <4 x float>
  %i.fr = fmul fast <4 x float> %i.fm, %i.fq
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 1.000000e+00) ; 2 uses
  %i.ft = fcmp fast ole <4 x float> %i.fs, zeroinitializer
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> splat (float f0x00800000))
  %i.fv = bitcast <4 x float> %i.fu to <4 x i32>  ; 2 uses
  %i.fw = lshr <4 x i32> %i.fv, splat (i32 23)
  %i.fx = and <4 x i32> %i.fv, splat (i32 -2139095041)
  %i.fy = or disjoint <4 x i32> %i.fx, splat (i32 1056964608)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>  ; 3 uses
  %i.ga = add nsw <4 x i32> %i.fw, splat (i32 -127)
  %i.gb = sitofp fast <4 x i32> %i.ga to <4 x float> ; 2 uses
  %i.gc = fadd fast <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = fcmp fast olt <4 x float> %i.fz, splat (float f0x3F3504F3) ; 2 uses
  %i.ge = select <4 x i1> %i.gd, <4 x float> %i.fz, <4 x float> zeroinitializer
  %i.gf = fadd fast <4 x float> %i.fz, splat (float -1.000000e+00)
  %i.gg = select fast <4 x i1> %i.gd, <4 x float> %i.gb, <4 x float> %i.gc
  %i.gh = fadd fast <4 x float> %i.gf, %i.ge      ; 12 uses
  %i.gi = fmul fast <4 x float> %i.gh, %i.gh
  %i.gj = fmul fast <4 x float> %i.gh, splat (float f0x3D9021BB)
  %i.gk = fadd fast <4 x float> %i.gj, splat (float f0xBDEBD1B8)
  %i.gl = fmul fast <4 x float> %i.gk, %i.gh
  %i.gm = fadd fast <4 x float> %i.gl, splat (float f0x3DEF251A)
  %i.gn = fmul fast <4 x float> %i.gm, %i.gh
  %i.go = fadd fast <4 x float> %i.gn, splat (float f0xBDFE5D4F)
  %i.gp = fmul fast <4 x float> %i.go, %i.gh
  %i.gq = fadd fast <4 x float> %i.gp, splat (float f0x3E11E9BF)
  %i.gr = fmul fast <4 x float> %i.gq, %i.gh
  %i.gs = fadd fast <4 x float> %i.gr, splat (float f0xBE2AAE50)
  %i.gt = fmul fast <4 x float> %i.gs, %i.gh
  %i.gu = fadd fast <4 x float> %i.gt, splat (float f0x3E4CCEAC)
  %i.gv = fmul fast <4 x float> %i.gu, %i.gh
  %i.gw = fadd fast <4 x float> %i.gv, splat (float f0xBE7FFFFC)
  %i.gx = fmul fast <4 x float> %i.gw, %i.gh
  %i.gy = fadd fast <4 x float> %i.gx, splat (float f0x3EAAAAAA)
  %i.gz = fmul fast <4 x float> %i.gy, %i.gh
  %reass.mul = fmul fast <4 x float> %i.gg, splat (float f0x3F317218)
  %reass.add245 = fadd fast <4 x float> %i.gz, splat (float -5.000000e-01)
  %reass.mul246 = fmul fast <4 x float> %i.gi, %reass.add245
  %i.ha = fadd fast <4 x float> %reass.mul, %i.gh
  %i.hb = fadd fast <4 x float> %i.ha, %reass.mul246
  %.neg = fmul fast <4 x float> %i.hb, splat (float -2.000000e+00)
  %i.hc = select fast <4 x i1> %i.ft, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hc, <4 x float> splat (float f0x42B0C0A5))
  %i.he = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hf = fmul fast <4 x float> %i.he, splat (float f0x3FB8AA3B)
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 5.000000e-01) ; 2 uses
  %i.hh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hg)
  %i.hi = sitofp fast <4 x i32> %i.hh to <4 x float> ; 2 uses
  %i.hj = fcmp fast olt <4 x float> %i.hg, %i.hi
  %i.hk = select <4 x i1> %i.hj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hl = fsub fast <4 x float> %i.hi, %i.hk      ; 2 uses
  %i.hm = fmul fast <4 x float> %i.hl, splat (float f0x3F317218)
  %i.hn = fsub fast <4 x float> %i.he, %i.hm      ; 8 uses
  %i.ho = fmul fast <4 x float> %i.hn, %i.hn
  %i.hp = fmul fast <4 x float> %i.hn, splat (float f0x39506967)
  %i.hq = fadd fast <4 x float> %i.hp, splat (float f0x3AB743CE)
  %i.hr = fmul fast <4 x float> %i.hq, %i.hn
  %i.hs = fadd fast <4 x float> %i.hr, splat (float f0x3C088908)
  %i.ht = fmul fast <4 x float> %i.hs, %i.hn
  %i.hu = fadd fast <4 x float> %i.ht, splat (float f0x3D2AA9C1)
  %i.hv = fmul fast <4 x float> %i.hu, %i.hn
  %i.hw = fadd fast <4 x float> %i.hv, splat (float f0x3E2AAAAA)
  %i.hx = fmul fast <4 x float> %i.hw, %i.hn
  %i.hy = fadd fast <4 x float> %i.hx, splat (float 5.000000e-01)
  %i.hz = fmul fast <4 x float> %i.ho, %i.hy
  %i.ia = fadd fast <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.ib = fadd fast <4 x float> %i.ia, %i.hz
  %i.ic = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hl)
  %i.id = shl <4 x i32> %i.ic, splat (i32 23)
  %i.ie = add <4 x i32> %i.id, splat (i32 1065353216)
  %i.if = bitcast <4 x i32> %i.ie to <4 x float>
  %i.ig = fmul fast <4 x float> %i.ib, %i.if
  %i.ih = fadd fast <4 x float> %i.ig, splat (float 1.000000e+00)
  %i.ii = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ih
  %i.ij = fadd fast <4 x float> %i.ii, splat (float -1.000000e+00)
  %i.ik = fmul fast <4 x float> %i.ij, %i.cm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc92:                                         ; preds = %._crit_edge
  %i.il = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !52
  %i.in = insertelement <4 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !52
  %i.ir = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul fast <4 x float> %i.io, %i.cm
  %i.iu = fadd fast <4 x float> %i.it, %i.is
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> zeroinitializer)
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iv, <4 x float> splat (float 1.000000e+00))
  %i.ix = fmul fast <4 x float> %i.iw, %i.cm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc92, %.noexc91, %.noexc90, %bb.f, %.noexc, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.ix, %.noexc92 ], [ %i.co, %bb.e ], [ %i.cw, %.noexc ], [ %i.dg, %bb.f ], [ %i.en, %.noexc90 ], [ %i.ik, %.noexc91 ], [ %i.cm, %._crit_edge ]
  %i.iy = load ptr, ptr %10, align 8, !tbaa !19
  %i.iz = sext i32 %i.n to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.iz
  store <4 x float> %.0.i, ptr %i.ja, align 1, !tbaa !49
  %i.jb = add i32 %.0276, 1
  %exitcond289.not = icmp eq i32 %.0276, %i.j
  br i1 %exitcond289.not, label %._crit_edge279, label %.lr.ph278

._crit_edge279:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge279, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !57     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.i, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.j = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !57
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !57
  %i.m = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %5, align 8, !tbaa !19
  %i.r = load i32, ptr %6, align 4, !tbaa !57     ; 7 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !19     ; 3 uses
  %i.t = icmp sgt i32 %i.r, 3
  %i.u = load i32, ptr %8, align 4, !tbaa !57
  %i.v = load ptr, ptr %10, align 8, !tbaa !19
  %i.w = and i32 %i.r, -4                         ; 2 uses
  %i.x = add i32 %i.r, -4                         ; 2 uses
  %i.y = lshr i32 %i.x, 2
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %xtraiter = and i32 %i.z, 3                     ; 3 uses
  %i.aa = icmp ult i32 %i.x, 12
  %unroll_iter = and i32 %i.z, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod125 = icmp ne i32 %xtraiter, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph87, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.085 = phi i32 [ %i.m, %.lr.ph87 ], [ %i.ea, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.ab = add i32 %.085, %i.e                     ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.051 = phi nsz float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.af = mul nsw i32 %i.r, %i.ab
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ag ; 3 uses
  br i1 %i.t, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04774.epil.init = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.ce, %.preheader.loopexit.unr-lcssa ]
  %.04973.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.cf, %.preheader.loopexit.unr-lcssa ]
  %.06972.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cd, %.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04774.epil = phi ptr [ %i.am, %.lr.ph.epil ], [ %.04774.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.04973.epil = phi ptr [ %i.an, %.lr.ph.epil ], [ %.04973.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.06972.epil = phi <4 x float> [ %i.al, %.lr.ph.epil ], [ %.06972.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ai = load <4 x float>, ptr %.04774.epil, align 1, !tbaa !49
  %i.aj = load <4 x float>, ptr %.04973.epil, align 1, !tbaa !49
  %i.ak = fmul fast <4 x float> %i.aj, %i.ai
  %i.al = fadd fast <4 x float> %i.ak, %.06972.epil ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04774.epil, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04973.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !123

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %.069.lcssa = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.cd, %.preheader.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.epil ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.ah, %bb.e ], [ %i.cf, %.preheader.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ] ; 3 uses
  %.047.lcssa = phi ptr [ %i.s, %bb.e ], [ %i.ce, %.preheader.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil ] ; 3 uses
  %.046.lcssa = phi i32 [ 0, %bb.e ], [ %i.w, %.lr.ph.epil ], [ %i.w, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.ao = icmp slt i32 %.046.lcssa, %i.r
  br i1 %i.ao, label %.lr.ph83.preheader, label %._crit_edge

.lr.ph83.preheader:                               ; preds = %.preheader
  %i.ap = xor i32 %.046.lcssa, -1
  %i.aq = add i32 %i.r, %i.ap                     ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 7
  br i1 %min.iters.check, label %.lr.ph83.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph83.preheader
  %n.vec = and i64 %i.as, 8589934584              ; 4 uses
  %i.at = trunc i64 %n.vec to i32
  %i.au = add i32 %.046.lcssa, %i.at
  %i.av = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.aw = getelementptr i8, ptr %.047.lcssa, i64 %i.av
  %i.ax = getelementptr i8, ptr %.049.lcssa, i64 %i.av
  %i.ay = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.051, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ay, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi109 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047.lcssa, i64 %i.az ; 2 uses
  %next.gep110 = getelementptr i8, ptr %.049.lcssa, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !52
  %wide.load111 = load <4 x float>, ptr %i.ba, align 4, !tbaa !52
  %i.bb = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load112 = load <4 x float>, ptr %next.gep110, align 4, !tbaa !52
  %wide.load113 = load <4 x float>, ptr %i.bb, align 4, !tbaa !52
  %i.bc = fmul fast <4 x float> %wide.load112, %wide.load
  %i.bd = fmul fast <4 x float> %wide.load113, %wide.load111
  %i.be = fadd fast <4 x float> %i.bc, %vec.phi   ; 2 uses
  %i.bf = fadd fast <4 x float> %i.bd, %vec.phi109 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bf, %i.be
  %i.bh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph83.preheader116

.lr.ph83.preheader116:                            ; preds = %.lr.ph83.preheader, %middle.block
  %.182.ph = phi i32 [ %.046.lcssa, %.lr.ph83.preheader ], [ %i.au, %middle.block ]
  %.14881.ph = phi ptr [ %.047.lcssa, %.lr.ph83.preheader ], [ %i.aw, %middle.block ]
  %.15080.ph = phi ptr [ %.049.lcssa, %.lr.ph83.preheader ], [ %i.ax, %middle.block ]
  %.15279.ph = phi float [ %.051, %.lr.ph83.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph83

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04774 = phi ptr [ %i.ce, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 5 uses
  %.04973 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 5 uses
  %.06972 = phi <4 x float> [ %i.cd, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bi = load <4 x float>, ptr %.04774, align 1, !tbaa !49
  %i.bj = load <4 x float>, ptr %.04973, align 1, !tbaa !49
  %i.bk = fmul fast <4 x float> %i.bj, %i.bi
  %i.bl = fadd fast <4 x float> %i.bk, %.06972
  %i.bm = getelementptr inbounds nuw i8, ptr %.04774, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.04973, i64 16
  %i.bo = load <4 x float>, ptr %i.bm, align 1, !tbaa !49
  %i.bp = load <4 x float>, ptr %i.bn, align 1, !tbaa !49
  %i.bq = fmul fast <4 x float> %i.bp, %i.bo
  %i.br = fadd fast <4 x float> %i.bq, %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %.04774, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %.04973, i64 32
  %i.bu = load <4 x float>, ptr %i.bs, align 1, !tbaa !49
  %i.bv = load <4 x float>, ptr %i.bt, align 1, !tbaa !49
  %i.bw = fmul fast <4 x float> %i.bv, %i.bu
  %i.bx = fadd fast <4 x float> %i.bw, %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %.04774, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %.04973, i64 48
  %i.ca = load <4 x float>, ptr %i.by, align 1, !tbaa !49
  %i.cb = load <4 x float>, ptr %i.bz, align 1, !tbaa !49
  %i.cc = fmul fast <4 x float> %i.cb, %i.ca
  %i.cd = fadd fast <4 x float> %i.cc, %i.bx      ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04774, i64 64 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04973, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !125

.lr.ph83:                                         ; preds = %.lr.ph83.preheader116, %.lr.ph83
  %.182 = phi i32 [ %i.cm, %.lr.ph83 ], [ %.182.ph, %.lr.ph83.preheader116 ]
  %.14881 = phi ptr [ %i.ck, %.lr.ph83 ], [ %.14881.ph, %.lr.ph83.preheader116 ] ; 2 uses
  %.15080 = phi ptr [ %i.cl, %.lr.ph83 ], [ %.15080.ph, %.lr.ph83.preheader116 ] ; 2 uses
  %.15279 = phi float [ %i.cj, %.lr.ph83 ], [ %.15279.ph, %.lr.ph83.preheader116 ]
  %i.cg = load float, ptr %.14881, align 4, !tbaa !52
  %i.ch = load float, ptr %.15080, align 4, !tbaa !52
  %i.ci = fmul fast float %i.ch, %i.cg
  %i.cj = fadd fast float %i.ci, %.15279          ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.14881, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.15080, i64 4
  %i.cm = add nuw nsw i32 %.182, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph83, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph83, %middle.block, %.preheader
  %.152.lcssa = phi float [ %.051, %.preheader ], [ %i.bh, %middle.block ], [ %i.cj, %.lr.ph83 ]
  %i.cn = shufflevector <4 x float> %.069.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.co = shufflevector <4 x float> %.069.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cp = fadd fast <2 x float> %i.cn, %i.co
  %i.cq = call fast float @llvm.vector.reduce.fadd.v2f32(float %.152.lcssa, <2 x float> %i.cp) ; 13 uses
  switch i32 %i.u, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.cr = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.cq, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cs = load ptr, ptr %9, align 8, !tbaa !19
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !52
  %i.cu = fcmp fast ogt float %i.cq, 0.000000e+00
  %i.cv = select fast i1 %i.cu, float 1.000000e+00, float %i.ct
  %i.cw = fmul fast float %i.cv, %i.cq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !52
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52 ; 2 uses
  %.070 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cq, float %i.cy) ; 2 uses
  %i.db = fcmp fast ogt float %.070, %i.da
  br i1 %i.db, label %bb.i, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %.sroa.speculated60 = call nnan ninf nsz float @llvm.minnum.f32(float %i.cq, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated60, float f0xC2B0C0A5)
  %i.dc = fneg fast float %.sroa.speculated
  %i.dd = call fast float @llvm.exp.f32(float %i.dc)
  %i.de = fadd fast float %i.dd, 1.000000e+00
  %i.df = fdiv fast float 1.000000e+00, %i.de
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.dg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cq)
  %i.dh = fadd fast float %i.dg, 1.000000e+00
  %i.di = call fast float @llvm.log.f32(float %i.dh)
  %i.dj = call fast float @llvm.tanh.f32(float %i.di)
  %i.dk = fmul fast float %i.dj, %i.cq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %._crit_edge
  %i.dl = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !52 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !52 ; 2 uses
  %i.dp = fneg fast float %i.do
  %i.dq = fdiv fast float %i.dp, %i.dm            ; 2 uses
  %i.dr = fcmp fast olt float %i.cq, %i.dq
  br i1 %i.dr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = fdiv fast float 1.000000e+00, %i.dm
  %i.dt = fadd fast float %i.dq, %i.ds
  %i.du = fcmp fast ogt float %i.cq, %i.dt
  br i1 %i.du, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = fmul fast float %i.dm, %i.cq
  %i.dw = fadd fast float %i.dv, %i.do
  %i.dx = fmul fast float %i.dw, %i.cq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge, %bb.l
  %.171 = phi nsz float [ %i.cq, %._crit_edge ], [ %i.cr, %bb.f ], [ %i.cw, %bb.g ], [ %i.da, %bb.i ], [ %.070, %bb.h ], [ %i.df, %bb.j ], [ %i.dk, %bb.k ], [ %i.dx, %bb.n ], [ %i.cq, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.dy = sext i32 %i.ab to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dy
  store float %.171, ptr %i.dz, align 4, !tbaa !52
  %i.ea = add nuw i32 %.085, 1
  %exitcond93.not = icmp eq i32 %.085, %i.l
  br i1 %exitcond93.not, label %._crit_edge88, label %bb.c

._crit_edge88:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge88, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

declare void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not1185 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1185, label %._crit_edge1192, label %.lr.ph1191

.lr.ph1191:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %3, align 4, !tbaa !57    ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1191, %.thread1072
  %.pr10711243 = phi i32 [ %.pre, %.lr.ph1191 ], [ %.pr10711244, %.thread1072 ] ; 3 uses
  %.pr10731235 = phi i32 [ %.pre, %.lr.ph1191 ], [ %.pr10731236, %.thread1072 ] ; 3 uses
  %.pr1231 = phi i32 [ %.pre, %.lr.ph1191 ], [ %.pr1229, %.thread1072 ] ; 2 uses
  %i.t = phi i32 [ %.pre, %.lr.ph1191 ], [ %i.ayx, %.thread1072 ] ; 2 uses
  %indvars.iv1224 = phi i64 [ %i.r, %.lr.ph1191 ], [ %indvars.iv.next1225, %.thread1072 ] ; 9 uses
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %4, align 4, !tbaa !57     ; 2 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %6, align 4, !tbaa !57
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.lr.ph1122.preheader, label %thread-pre-split

.lr.ph1122.preheader:                             ; preds = %bb.e
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv1224, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  br label %.lr.ph1122

.lr.ph1122:                                       ; preds = %.lr.ph1122.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183
  %indvars.iv = phi i64 [ 0, %.lr.ph1122.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183 ] ; 3 uses
  %.01561120 = phi ptr [ %i.af, %.lr.ph1122.preheader ], [ %i.aae, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183 ] ; 3 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !19
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %indvars.iv, %i.ai
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !48
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %8, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv1224, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !48
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load ptr, ptr %9, align 8, !tbaa !65    ; 2 uses
  %.not168 = icmp eq ptr %i.au, null
  br i1 %.not168, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1122
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph1122
  %.0973 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1122 ], [ %i.aw, %bb.f ] ; 8 uses
  %i.ax = load i32, ptr %10, align 4, !tbaa !57   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.01581115 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %bb.g ]
  %.01591114 = phi ptr [ %i.bx, %.lr.ph ], [ %i.at, %bb.g ] ; 2 uses
  %.01601113 = phi ptr [ %i.by, %.lr.ph ], [ %i.am, %bb.g ] ; 2 uses
  %.09701112 = phi <4 x float> [ %i.bw, %.lr.ph ], [ %.0973, %bb.g ]
  %.09711111 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.0973, %bb.g ]
  %.09721110 = phi <4 x float> [ %i.bs, %.lr.ph ], [ %.0973, %bb.g ]
  %.19741109 = phi <4 x float> [ %i.bq, %.lr.ph ], [ %.0973, %bb.g ]
  %i.az = load <4 x i16>, ptr %.01591114, align 2, !tbaa !72
  %i.ba = zext <4 x i16> %i.az to <4 x i32>
  %i.bb = shl nuw <4 x i32> %i.ba, splat (i32 16) ; 4 uses
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bg = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bi = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bk = load i64, ptr %.01601113, align 1, !tbaa !49
  %i.bl = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %i.bm = bitcast <2 x i64> %i.bl to <8 x i16>
  %i.bn = shufflevector <8 x i16> %i.bm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bo = bitcast <8 x i16> %i.bn to <4 x float>  ; 4 uses
  %i.bp = fmul fast <4 x float> %i.bd, %i.bo
  %i.bq = fadd fast <4 x float> %i.bp, %.19741109 ; 2 uses
  %i.br = fmul fast <4 x float> %i.bf, %i.bo
  %i.bs = fadd fast <4 x float> %i.br, %.09721110 ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bh, %i.bo
  %i.bu = fadd fast <4 x float> %i.bt, %.09711111 ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bj, %i.bo
  %i.bw = fadd fast <4 x float> %i.bv, %.09701112 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01591114, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.01601113, i64 8
  %i.bz = add nuw nsw i32 %.01581115, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.1974.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bq, %.lr.ph ] ; 10 uses
  %.0972.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bs, %.lr.ph ] ; 10 uses
  %.0971.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bu, %.lr.ph ] ; 10 uses
  %.0970.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bw, %.lr.ph ] ; 10 uses
  %i.ca = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.ca, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread: ; preds = %._crit_edge
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1974.lcssa, <4 x float> zeroinitializer)
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0972.lcssa, <4 x float> zeroinitializer)
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0971.lcssa, <4 x float> zeroinitializer)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0970.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980: ; preds = %._crit_edge
  %i.cf = load ptr, ptr %12, align 8, !tbaa !19
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !52
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1974.lcssa)
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1974.lcssa)
  %i.cj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = fmul fast <4 x float> %i.ck, %i.ci
  %i.cm = fadd fast <4 x float> %i.cl, %i.ch
  %i.cn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0972.lcssa)
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0972.lcssa)
  %i.cp = fmul fast <4 x float> %i.ck, %i.co
  %i.cq = fadd fast <4 x float> %i.cp, %i.cn
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0971.lcssa)
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0971.lcssa)
  %i.ct = fmul fast <4 x float> %i.ck, %i.cs
  %i.cu = fadd fast <4 x float> %i.ct, %i.cr
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0970.lcssa)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0970.lcssa)
  %i.cx = fmul fast <4 x float> %i.ck, %i.cw
  %i.cy = fadd fast <4 x float> %i.cx, %i.cv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983: ; preds = %._crit_edge
  %i.cz = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !52
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1974.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0972.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0971.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0970.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.dg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986: ; preds = %._crit_edge
  %i.dp = fneg fast <4 x float> %.1974.lcssa
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dr, splat (float f0x3FB8AA3B)
  %i.dt = fadd fast <4 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = sitofp fast <4 x i32> %i.du to <4 x float> ; 2 uses
  %i.dw = fcmp fast olt <4 x float> %i.dt, %i.dv
  %i.dx = select <4 x i1> %i.dw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dy = fsub fast <4 x float> %i.dv, %i.dx      ; 2 uses
  %i.dz = fmul fast <4 x float> %i.dy, splat (float f0x3F317218)
  %i.ea = fsub fast <4 x float> %i.dr, %i.dz      ; 8 uses
  %i.eb = fmul fast <4 x float> %i.ea, %i.ea
  %i.ec = fmul fast <4 x float> %i.ea, splat (float f0x39506967)
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3AB743CE)
  %i.ee = fmul fast <4 x float> %i.ed, %i.ea
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3C088908)
  %i.eg = fmul fast <4 x float> %i.ef, %i.ea
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3D2AA9C1)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ea
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3E2AAAAA)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ea
  %i.el = fadd fast <4 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = fmul fast <4 x float> %i.eb, %i.el
  %i.en = fadd fast <4 x float> %i.ea, splat (float 1.000000e+00)
  %i.eo = fadd fast <4 x float> %i.en, %i.em
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eq = shl <4 x i32> %i.ep, splat (i32 23)
  %i.er = add <4 x i32> %i.eq, splat (i32 1065353216)
  %i.es = bitcast <4 x i32> %i.er to <4 x float>
  %i.et = fmul fast <4 x float> %i.eo, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eu
  %i.ew = fneg fast <4 x float> %.0972.lcssa
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ey, splat (float f0x3FB8AA3B)
  %i.fa = fadd fast <4 x float> %i.ez, splat (float 5.000000e-01) ; 2 uses
  %i.fb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fa)
  %i.fc = sitofp fast <4 x i32> %i.fb to <4 x float> ; 2 uses
  %i.fd = fcmp fast olt <4 x float> %i.fa, %i.fc
  %i.fe = select <4 x i1> %i.fd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ff = fsub fast <4 x float> %i.fc, %i.fe      ; 2 uses
  %i.fg = fmul fast <4 x float> %i.ff, splat (float f0x3F317218)
  %i.fh = fsub fast <4 x float> %i.ey, %i.fg      ; 8 uses
  %i.fi = fmul fast <4 x float> %i.fh, %i.fh
  %i.fj = fmul fast <4 x float> %i.fh, splat (float f0x39506967)
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3AB743CE)
  %i.fl = fmul fast <4 x float> %i.fk, %i.fh
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3C088908)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fh
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0x3D2AA9C1)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fh
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3E2AAAAA)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fh
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 5.000000e-01)
  %i.ft = fmul fast <4 x float> %i.fi, %i.fs
  %i.fu = fadd fast <4 x float> %i.fh, splat (float 1.000000e+00)
  %i.fv = fadd fast <4 x float> %i.fu, %i.ft
  %i.fw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fx = shl <4 x i32> %i.fw, splat (i32 23)
  %i.fy = add <4 x i32> %i.fx, splat (i32 1065353216)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = fmul fast <4 x float> %i.fv, %i.fz
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 1.000000e+00)
  %i.gc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gb
  %i.gd = fneg fast <4 x float> %.0971.lcssa
  %i.ge = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gd, <4 x float> splat (float f0x42B0C0A5))
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gg = fmul fast <4 x float> %i.gf, splat (float f0x3FB8AA3B)
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 5.000000e-01) ; 2 uses
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gh)
  %i.gj = sitofp fast <4 x i32> %i.gi to <4 x float> ; 2 uses
  %i.gk = fcmp fast olt <4 x float> %i.gh, %i.gj
  %i.gl = select <4 x i1> %i.gk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gm = fsub fast <4 x float> %i.gj, %i.gl      ; 2 uses
  %i.gn = fmul fast <4 x float> %i.gm, splat (float f0x3F317218)
  %i.go = fsub fast <4 x float> %i.gf, %i.gn      ; 8 uses
  %i.gp = fmul fast <4 x float> %i.go, %i.go
  %i.gq = fmul fast <4 x float> %i.go, splat (float f0x39506967)
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3AB743CE)
  %i.gs = fmul fast <4 x float> %i.gr, %i.go
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0x3C088908)
  %i.gu = fmul fast <4 x float> %i.gt, %i.go
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3D2AA9C1)
  %i.gw = fmul fast <4 x float> %i.gv, %i.go
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3E2AAAAA)
  %i.gy = fmul fast <4 x float> %i.gx, %i.go
  %i.gz = fadd fast <4 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = fmul fast <4 x float> %i.gp, %i.gz
  %i.hb = fadd fast <4 x float> %i.go, splat (float 1.000000e+00)
  %i.hc = fadd fast <4 x float> %i.hb, %i.ha
  %i.hd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gm)
  %i.he = shl <4 x i32> %i.hd, splat (i32 23)
  %i.hf = add <4 x i32> %i.he, splat (i32 1065353216)
  %i.hg = bitcast <4 x i32> %i.hf to <4 x float>
  %i.hh = fmul fast <4 x float> %i.hc, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.hi
  %i.hk = fneg fast <4 x float> %.0970.lcssa
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hk, <4 x float> splat (float f0x42B0C0A5))
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hn = fmul fast <4 x float> %i.hm, splat (float f0x3FB8AA3B)
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 5.000000e-01) ; 2 uses
  %i.hp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ho)
  %i.hq = sitofp fast <4 x i32> %i.hp to <4 x float> ; 2 uses
  %i.hr = fcmp fast olt <4 x float> %i.ho, %i.hq
  %i.hs = select <4 x i1> %i.hr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ht = fsub fast <4 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = fmul fast <4 x float> %i.ht, splat (float f0x3F317218)
  %i.hv = fsub fast <4 x float> %i.hm, %i.hu      ; 8 uses
  %i.hw = fmul fast <4 x float> %i.hv, %i.hv
  %i.hx = fmul fast <4 x float> %i.hv, splat (float f0x39506967)
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3AB743CE)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hv
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0x3C088908)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hv
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3D2AA9C1)
  %i.id = fmul fast <4 x float> %i.ic, %i.hv
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0x3E2AAAAA)
  %i.if = fmul fast <4 x float> %i.ie, %i.hv
  %i.ig = fadd fast <4 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fmul fast <4 x float> %i.hw, %i.ig
  %i.ii = fadd fast <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.ij = fadd fast <4 x float> %i.ii, %i.ih
  %i.ik = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.il = shl <4 x i32> %i.ik, splat (i32 23)
  %i.im = add <4 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.ij, %i.in
  %i.ip = fadd fast <4 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ip
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

end_hunk_2
begin_hunk_3_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.tj = fmul fast <4 x float> %i.ti, splat (float f0x3F317218)
  %i.tk = fsub fast <4 x float> %i.tb, %i.tj      ; 8 uses
  %i.tl = fmul fast <4 x float> %i.tk, %i.tk
  %i.tm = fmul fast <4 x float> %i.tk, splat (float f0x39506967)
  %i.tn = fadd fast <4 x float> %i.tm, splat (float f0x3AB743CE)
  %i.to = fmul fast <4 x float> %i.tn, %i.tk
  %i.tp = fadd fast <4 x float> %i.to, splat (float f0x3C088908)
  %i.tq = fmul fast <4 x float> %i.tp, %i.tk
  %i.tr = fadd fast <4 x float> %i.tq, splat (float f0x3D2AA9C1)
  %i.ts = fmul fast <4 x float> %i.tr, %i.tk
  %i.tt = fadd fast <4 x float> %i.ts, splat (float f0x3E2AAAAA)
  %i.tu = fmul fast <4 x float> %i.tt, %i.tk
  %i.tv = fadd fast <4 x float> %i.tu, splat (float 5.000000e-01)
  %i.tw = fmul fast <4 x float> %i.tl, %i.tv
  %i.tx = fadd fast <4 x float> %i.tk, splat (float 1.000000e+00)
  %i.ty = fadd fast <4 x float> %i.tx, %i.tw
  %i.tz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.ua = shl <4 x i32> %i.tz, splat (i32 23)
  %i.ub = add <4 x i32> %i.ua, splat (i32 1065353216)
  %i.uc = bitcast <4 x i32> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %i.ty, %i.uc
  %i.ue = fadd fast <4 x float> %i.ud, splat (float 1.000000e+00)
  %i.uf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ue
  %i.ug = fadd fast <4 x float> %i.uf, splat (float -1.000000e+00)
  %i.uh = fmul fast <4 x float> %i.ug, %.0971.lcssa
  %i.ui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0970.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.uj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ui, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.uk = fmul fast <4 x float> %i.uj, splat (float f0x3FB8AA3B)
  %i.ul = fadd fast <4 x float> %i.uk, splat (float 5.000000e-01) ; 2 uses
  %i.um = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ul)
  %i.un = sitofp fast <4 x i32> %i.um to <4 x float> ; 2 uses
  %i.uo = fcmp fast olt <4 x float> %i.ul, %i.un
  %i.up = select <4 x i1> %i.uo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uq = fsub fast <4 x float> %i.un, %i.up      ; 2 uses
  %i.ur = fmul fast <4 x float> %i.uq, splat (float f0x3F317218)
  %i.us = fsub fast <4 x float> %i.uj, %i.ur      ; 8 uses
  %i.ut = fmul fast <4 x float> %i.us, %i.us
  %i.uu = fmul fast <4 x float> %i.us, splat (float f0x39506967)
  %i.uv = fadd fast <4 x float> %i.uu, splat (float f0x3AB743CE)
  %i.uw = fmul fast <4 x float> %i.uv, %i.us
  %i.ux = fadd fast <4 x float> %i.uw, splat (float f0x3C088908)
  %i.uy = fmul fast <4 x float> %i.ux, %i.us
  %i.uz = fadd fast <4 x float> %i.uy, splat (float f0x3D2AA9C1)
  %i.va = fmul fast <4 x float> %i.uz, %i.us
  %i.vb = fadd fast <4 x float> %i.va, splat (float f0x3E2AAAAA)
  %i.vc = fmul fast <4 x float> %i.vb, %i.us
  %i.vd = fadd fast <4 x float> %i.vc, splat (float 5.000000e-01)
  %i.ve = fmul fast <4 x float> %i.ut, %i.vd
  %i.vf = fadd fast <4 x float> %i.us, splat (float 1.000000e+00)
  %i.vg = fadd fast <4 x float> %i.vf, %i.ve
  %i.vh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uq)
  %i.vi = shl <4 x i32> %i.vh, splat (i32 23)
  %i.vj = add <4 x i32> %i.vi, splat (i32 1065353216)
  %i.vk = bitcast <4 x i32> %i.vj to <4 x float>
  %i.vl = fmul fast <4 x float> %i.vg, %i.vk
  %i.vm = fadd fast <4 x float> %i.vl, splat (float 1.000000e+00) ; 2 uses
  %i.vn = fcmp fast ole <4 x float> %i.vm, zeroinitializer
  %i.vo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vm, <4 x float> splat (float f0x00800000))
  %i.vp = bitcast <4 x float> %i.vo to <4 x i32>  ; 2 uses
  %i.vq = lshr <4 x i32> %i.vp, splat (i32 23)
  %i.vr = and <4 x i32> %i.vp, splat (i32 -2139095041)
  %i.vs = or disjoint <4 x i32> %i.vr, splat (i32 1056964608)
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>  ; 3 uses
  %i.vu = add nsw <4 x i32> %i.vq, splat (i32 -127)
  %i.vv = sitofp fast <4 x i32> %i.vu to <4 x float> ; 2 uses
  %i.vw = fadd fast <4 x float> %i.vv, splat (float 1.000000e+00)
  %i.vx = fcmp fast olt <4 x float> %i.vt, splat (float f0x3F3504F3) ; 2 uses
  %i.vy = select <4 x i1> %i.vx, <4 x float> %i.vt, <4 x float> zeroinitializer
  %i.vz = fadd fast <4 x float> %i.vt, splat (float -1.000000e+00)
  %i.wa = select fast <4 x i1> %i.vx, <4 x float> %i.vv, <4 x float> %i.vw
  %i.wb = fadd fast <4 x float> %i.vz, %i.vy      ; 12 uses
  %i.wc = fmul fast <4 x float> %i.wb, %i.wb
  %i.wd = fmul fast <4 x float> %i.wb, splat (float f0x3D9021BB)
  %i.we = fadd fast <4 x float> %i.wd, splat (float f0xBDEBD1B8)
  %i.wf = fmul fast <4 x float> %i.we, %i.wb
  %i.wg = fadd fast <4 x float> %i.wf, splat (float f0x3DEF251A)
  %i.wh = fmul fast <4 x float> %i.wg, %i.wb
  %i.wi = fadd fast <4 x float> %i.wh, splat (float f0xBDFE5D4F)
  %i.wj = fmul fast <4 x float> %i.wi, %i.wb
  %i.wk = fadd fast <4 x float> %i.wj, splat (float f0x3E11E9BF)
  %i.wl = fmul fast <4 x float> %i.wk, %i.wb
  %i.wm = fadd fast <4 x float> %i.wl, splat (float f0xBE2AAE50)
  %i.wn = fmul fast <4 x float> %i.wm, %i.wb
  %i.wo = fadd fast <4 x float> %i.wn, splat (float f0x3E4CCEAC)
  %i.wp = fmul fast <4 x float> %i.wo, %i.wb
  %i.wq = fadd fast <4 x float> %i.wp, splat (float f0xBE7FFFFC)
  %i.wr = fmul fast <4 x float> %i.wq, %i.wb
  %i.ws = fadd fast <4 x float> %i.wr, splat (float f0x3EAAAAAA)
  %i.wt = fmul fast <4 x float> %i.ws, %i.wb
  %reass.mul1098 = fmul fast <4 x float> %i.wa, splat (float f0x3F317218)
  %reass.add1105 = fadd fast <4 x float> %i.wt, splat (float -5.000000e-01)
  %reass.mul1106 = fmul fast <4 x float> %i.wc, %reass.add1105
  %i.wu = fadd fast <4 x float> %reass.mul1098, %i.wb
  %i.wv = fadd fast <4 x float> %i.wu, %reass.mul1106
  %.neg1080 = fmul fast <4 x float> %i.wv, splat (float -2.000000e+00)
  %i.ww = select fast <4 x i1> %i.vn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1080
  %i.wx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ww, <4 x float> splat (float f0x42B0C0A5))
  %i.wy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wz = fmul fast <4 x float> %i.wy, splat (float f0x3FB8AA3B)
  %i.xa = fadd fast <4 x float> %i.wz, splat (float 5.000000e-01) ; 2 uses
  %i.xb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xa)
  %i.xc = sitofp fast <4 x i32> %i.xb to <4 x float> ; 2 uses
  %i.xd = fcmp fast olt <4 x float> %i.xa, %i.xc
  %i.xe = select <4 x i1> %i.xd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xf = fsub fast <4 x float> %i.xc, %i.xe      ; 2 uses
  %i.xg = fmul fast <4 x float> %i.xf, splat (float f0x3F317218)
  %i.xh = fsub fast <4 x float> %i.wy, %i.xg      ; 8 uses
  %i.xi = fmul fast <4 x float> %i.xh, %i.xh
  %i.xj = fmul fast <4 x float> %i.xh, splat (float f0x39506967)
  %i.xk = fadd fast <4 x float> %i.xj, splat (float f0x3AB743CE)
  %i.xl = fmul fast <4 x float> %i.xk, %i.xh
  %i.xm = fadd fast <4 x float> %i.xl, splat (float f0x3C088908)
  %i.xn = fmul fast <4 x float> %i.xm, %i.xh
  %i.xo = fadd fast <4 x float> %i.xn, splat (float f0x3D2AA9C1)
  %i.xp = fmul fast <4 x float> %i.xo, %i.xh
  %i.xq = fadd fast <4 x float> %i.xp, splat (float f0x3E2AAAAA)
  %i.xr = fmul fast <4 x float> %i.xq, %i.xh
  %i.xs = fadd fast <4 x float> %i.xr, splat (float 5.000000e-01)
  %i.xt = fmul fast <4 x float> %i.xi, %i.xs
  %i.xu = fadd fast <4 x float> %i.xh, splat (float 1.000000e+00)
  %i.xv = fadd fast <4 x float> %i.xu, %i.xt
  %i.xw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xf)
  %i.xx = shl <4 x i32> %i.xw, splat (i32 23)
  %i.xy = add <4 x i32> %i.xx, splat (i32 1065353216)
  %i.xz = bitcast <4 x i32> %i.xy to <4 x float>
  %i.ya = fmul fast <4 x float> %i.xv, %i.xz
  %i.yb = fadd fast <4 x float> %i.ya, splat (float 1.000000e+00)
  %i.yc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.yb
  %i.yd = fadd fast <4 x float> %i.yc, splat (float -1.000000e+00)
  %i.ye = fmul fast <4 x float> %i.yd, %.0970.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992: ; preds = %._crit_edge
  %i.yf = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yh = insertelement <4 x float> poison, float %i.yg, i64 0
  %i.yi = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !52
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yn = fmul fast <4 x float> %i.yi, %.1974.lcssa
  %i.yo = fadd fast <4 x float> %i.yn, %i.ym
  %i.yp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yo, <4 x float> zeroinitializer)
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> splat (float 1.000000e+00))
  %i.yr = fmul fast <4 x float> %i.yq, %.1974.lcssa
  %i.ys = fmul fast <4 x float> %i.yi, %.0972.lcssa
  %i.yt = fadd fast <4 x float> %i.ys, %i.ym
  %i.yu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> zeroinitializer)
  %i.yv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> splat (float 1.000000e+00))
  %i.yw = fmul fast <4 x float> %i.yv, %.0972.lcssa
  %i.yx = fmul fast <4 x float> %i.yi, %.0971.lcssa
  %i.yy = fadd fast <4 x float> %i.yx, %i.ym
  %i.yz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yy, <4 x float> zeroinitializer)
  %i.za = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yz, <4 x float> splat (float 1.000000e+00))
  %i.zb = fmul fast <4 x float> %i.za, %.0971.lcssa
  %i.zc = fmul fast <4 x float> %i.yi, %.0970.lcssa
  %i.zd = fadd fast <4 x float> %i.zc, %i.ym
  %i.ze = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zd, <4 x float> zeroinitializer)
  %i.zf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ze, <4 x float> splat (float 1.000000e+00))
  %i.zg = fmul fast <4 x float> %i.zf, %.0970.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183:   ; preds = %._crit_edge, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread
  %.0.i1841034 = phi <4 x float> [ %i.zb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.cd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.dm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.hj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.uh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.0971.lcssa, %._crit_edge ] ; 2 uses
  %.0.i1969799981032 = phi <4 x float> [ %i.yr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.cb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.di, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.ev, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.mn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.1974.lcssa, %._crit_edge ] ; 2 uses
  %.0.i19010001030 = phi <4 x float> [ %i.yw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.cc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.dk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.gc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.qk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.0972.lcssa, %._crit_edge ] ; 2 uses
  %.0.i178 = phi nsz <4 x float> [ %i.zg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.ce, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.do, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.iq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.ye, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.0970.lcssa, %._crit_edge ] ; 2 uses
  %i.zh = shufflevector <4 x float> %.0.i1969799981032, <4 x float> %.0.i19010001030, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zi = shufflevector <4 x float> %.0.i1841034, <4 x float> %.0.i178, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zj = shufflevector <4 x float> %.0.i1969799981032, <4 x float> %.0.i19010001030, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zk = shufflevector <4 x float> %.0.i1841034, <4 x float> %.0.i178, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zm = shufflevector <4 x float> %i.zi, <4 x float> %i.zh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zn = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zo = shufflevector <4 x float> %i.zk, <4 x float> %i.zj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zp = bitcast <4 x float> %i.zl to <8 x i16>
  %i.zq = bitcast <4 x float> %i.zm to <8 x i16>
  %i.zr = shufflevector <8 x i16> %i.zp, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.zs = shufflevector <8 x i16> %i.zq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.zt = bitcast <8 x i16> %i.zr to <4 x float>
  %i.zu = bitcast <8 x i16> %i.zs to <4 x float>
  %i.zv = shufflevector <4 x float> %i.zt, <4 x float> %i.zu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zw = bitcast <4 x float> %i.zn to <8 x i16>
  %i.zx = bitcast <4 x float> %i.zo to <8 x i16>
  %i.zy = shufflevector <8 x i16> %i.zw, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.zz = shufflevector <8 x i16> %i.zx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aaa = bitcast <8 x i16> %i.zy to <4 x float>
  %i.aab = bitcast <8 x i16> %i.zz to <4 x float>
  %i.aac = shufflevector <4 x float> %i.aaa, <4 x float> %i.aab, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.zv, ptr %.01561120, align 1, !tbaa !49
  %i.aad = getelementptr inbounds nuw i8, ptr %.01561120, i64 16
  store <4 x float> %i.aac, ptr %i.aad, align 1, !tbaa !49
  %i.aae = getelementptr inbounds nuw i8, ptr %.01561120, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aaf = load i32, ptr %6, align 4, !tbaa !57
  %i.aag = load i32, ptr %4, align 4, !tbaa !57
  %i.aah = sdiv i32 %i.aaf, %i.aag
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = icmp slt i64 %indvars.iv.next, %i.aai
  br i1 %i.aaj, label %.lr.ph1122, label %thread-pre-split.loopexit, !llvm.loop !128

thread-pre-split.loopexit:                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183
  %.pr.pre = load i32, ptr %3, align 4, !tbaa !57 ; 3 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %thread-pre-split.loopexit, %bb.c
  %.pr10711241 = phi i32 [ %.pr10711243, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10711243, %bb.e ] ; 3 uses
  %.pr10731232 = phi i32 [ %.pr10731235, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10731235, %bb.e ] ; 3 uses
  %i.aak = phi i32 [ %i.t, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr1231, %bb.e ]
  %i.aal = icmp eq i32 %i.aak, 1
  br i1 %i.aal, label %bb.h, label %.thread

bb.h:                                             ; preds = %thread-pre-split
  %i.aam = load i32, ptr %4, align 4, !tbaa !57
  %i.aan = icmp eq i32 %i.aam, 4
  br i1 %i.aan, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aao = load i32, ptr %6, align 4, !tbaa !57
  %i.aap = icmp sgt i32 %i.aao, 3
  br i1 %i.aap, label %.lr.ph1134.preheader, label %.thread

.lr.ph1134.preheader:                             ; preds = %bb.i
  %i.aaq = load ptr, ptr %5, align 8, !tbaa !19
  %i.aar = load i32, ptr %i.l, align 4, !tbaa !47
  %i.aas = sext i32 %i.aar to i64
  %i.aat = mul nsw i64 %indvars.iv1224, %i.aas
  %i.aau = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aav = mul i64 %i.aat, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aav
  br label %.lr.ph1134

.lr.ph1134:                                       ; preds = %.lr.ph1134.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177
  %indvars.iv1212 = phi i64 [ 0, %.lr.ph1134.preheader ], [ %indvars.iv.next1213, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177 ] ; 3 uses
  %.01541131 = phi ptr [ %i.aaw, %.lr.ph1134.preheader ], [ %i.aix, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177 ] ; 2 uses
  %i.aax = load ptr, ptr %7, align 8, !tbaa !19
  %i.aay = load i32, ptr %i.n, align 4, !tbaa !47
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = mul nsw i64 %indvars.iv1212, %i.aaz
  %i.abb = load i64, ptr %i.o, align 8, !tbaa !48
  %i.abc = mul i64 %i.aba, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.abc
  %i.abe = load ptr, ptr %8, align 8, !tbaa !19
  %i.abf = load i32, ptr %i.p, align 4, !tbaa !47
  %i.abg = sext i32 %i.abf to i64
  %i.abh = mul nsw i64 %indvars.iv1224, %i.abg
  %i.abi = load i64, ptr %i.q, align 8, !tbaa !48
  %i.abj = mul i64 %i.abh, %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abj
  %i.abl = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not167 = icmp eq ptr %i.abl, null
  br i1 %.not167, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1134
  %.idx1263 = shl nuw nsw i64 %indvars.iv1212, 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.idx1263
  %i.abn = load <4 x float>, ptr %i.abm, align 1, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph1134
  %.0968 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1134 ], [ %i.abn, %bb.j ] ; 2 uses
  %i.abo = load i32, ptr %10, align 4, !tbaa !57  ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %.lr.ph1128, label %._crit_edge1129

.lr.ph1128:                                       ; preds = %bb.k, %.lr.ph1128
  %.01501126 = phi i32 [ %i.acf, %.lr.ph1128 ], [ 0, %bb.k ]
  %.01511125 = phi ptr [ %i.acd, %.lr.ph1128 ], [ %i.abk, %bb.k ] ; 2 uses
  %.01521124 = phi ptr [ %i.ace, %.lr.ph1128 ], [ %i.abd, %bb.k ] ; 2 uses
  %.19691123 = phi <4 x float> [ %i.acc, %.lr.ph1128 ], [ %.0968, %bb.k ]
  %i.abq = load i16, ptr %.01511125, align 2, !tbaa !72
  %i.abr = zext i16 %i.abq to i32
  %i.abs = shl nuw i32 %i.abr, 16
  %i.abt = insertelement <4 x i32> poison, i32 %i.abs, i64 0
  %i.abu = bitcast <4 x i32> %i.abt to <4 x float>
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abw = load i64, ptr %.01521124, align 1, !tbaa !49
  %i.abx = insertelement <2 x i64> poison, i64 %i.abw, i64 0
  %i.aby = bitcast <2 x i64> %i.abx to <8 x i16>
  %i.abz = shufflevector <8 x i16> %i.aby, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aca = bitcast <8 x i16> %i.abz to <4 x float>
  %i.acb = fmul fast <4 x float> %i.abv, %i.aca
  %i.acc = fadd fast <4 x float> %i.acb, %.19691123 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.01511125, i64 2
  %i.ace = getelementptr inbounds nuw i8, ptr %.01521124, i64 8
  %i.acf = add nuw nsw i32 %.01501126, 1          ; 2 uses
  %exitcond1211.not = icmp eq i32 %i.acf, %i.abo
  br i1 %exitcond1211.not, label %._crit_edge1129, label %.lr.ph1128, !llvm.loop !129

._crit_edge1129:                                  ; preds = %.lr.ph1128, %bb.k
  %.1969.lcssa = phi <4 x float> [ %.0968, %bb.k ], [ %i.acc, %.lr.ph1128 ] ; 10 uses
  %i.acg = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.acg, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177 [
    i32 1, label %bb.l
    i32 2, label %.noexc173
    i32 3, label %bb.m
    i32 4, label %.noexc174
    i32 5, label %.noexc175
    i32 6, label %.noexc176
  ]

bb.l:                                             ; preds = %._crit_edge1129
  %i.ach = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1969.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc173:                                        ; preds = %._crit_edge1129
  %i.aci = load ptr, ptr %12, align 8, !tbaa !19
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !52
  %i.ack = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1969.lcssa)
  %i.acl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1969.lcssa)
  %i.acm = insertelement <4 x float> poison, float %i.acj, i64 0
  %i.acn = shufflevector <4 x float> %i.acm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aco = fmul fast <4 x float> %i.acn, %i.acl
  %i.acp = fadd fast <4 x float> %i.aco, %i.ack
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

bb.m:                                             ; preds = %._crit_edge1129
  %i.acq = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !52
  %i.acs = insertelement <4 x float> poison, float %i.acr, i64 0
  %i.act = shufflevector <4 x float> %i.acs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !52
  %i.acw = insertelement <4 x float> poison, float %i.acv, i64 0
  %i.acx = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1969.lcssa, <4 x float> nofpclass(nan inf) %i.act)
  %i.acz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acy, <4 x float> nofpclass(nan inf) %i.acx)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc174:                                        ; preds = %._crit_edge1129
  %i.ada = fneg fast <4 x float> %.1969.lcssa
  %i.adb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ada, <4 x float> splat (float f0x42B0C0A5))
  %i.adc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.add = fmul fast <4 x float> %i.adc, splat (float f0x3FB8AA3B)
  %i.ade = fadd fast <4 x float> %i.add, splat (float 5.000000e-01) ; 2 uses
  %i.adf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ade)
  %i.adg = sitofp fast <4 x i32> %i.adf to <4 x float> ; 2 uses
  %i.adh = fcmp fast olt <4 x float> %i.ade, %i.adg
  %i.adi = select <4 x i1> %i.adh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.adj = fsub fast <4 x float> %i.adg, %i.adi   ; 2 uses
  %i.adk = fmul fast <4 x float> %i.adj, splat (float f0x3F317218)
  %i.adl = fsub fast <4 x float> %i.adc, %i.adk   ; 8 uses
  %i.adm = fmul fast <4 x float> %i.adl, %i.adl
  %i.adn = fmul fast <4 x float> %i.adl, splat (float f0x39506967)
  %i.ado = fadd fast <4 x float> %i.adn, splat (float f0x3AB743CE)
  %i.adp = fmul fast <4 x float> %i.ado, %i.adl
  %i.adq = fadd fast <4 x float> %i.adp, splat (float f0x3C088908)
  %i.adr = fmul fast <4 x float> %i.adq, %i.adl
  %i.ads = fadd fast <4 x float> %i.adr, splat (float f0x3D2AA9C1)
  %i.adt = fmul fast <4 x float> %i.ads, %i.adl
  %i.adu = fadd fast <4 x float> %i.adt, splat (float f0x3E2AAAAA)
  %i.adv = fmul fast <4 x float> %i.adu, %i.adl
  %i.adw = fadd fast <4 x float> %i.adv, splat (float 5.000000e-01)
  %i.adx = fmul fast <4 x float> %i.adm, %i.adw
  %i.ady = fadd fast <4 x float> %i.adl, splat (float 1.000000e+00)
  %i.adz = fadd fast <4 x float> %i.ady, %i.adx
  %i.aea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adj)
  %i.aeb = shl <4 x i32> %i.aea, splat (i32 23)
  %i.aec = add <4 x i32> %i.aeb, splat (i32 1065353216)
  %i.aed = bitcast <4 x i32> %i.aec to <4 x float>
  %i.aee = fmul fast <4 x float> %i.adz, %i.aed
  %i.aef = fadd fast <4 x float> %i.aee, splat (float 1.000000e+00)
  %i.aeg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.aef
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc175:                                        ; preds = %._crit_edge1129
  %i.aeh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1969.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.aei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aeh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aej = fmul fast <4 x float> %i.aei, splat (float f0x3FB8AA3B)
  %i.aek = fadd fast <4 x float> %i.aej, splat (float 5.000000e-01) ; 2 uses
  %i.ael = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aek)
  %i.aem = sitofp fast <4 x i32> %i.ael to <4 x float> ; 2 uses
  %i.aen = fcmp fast olt <4 x float> %i.aek, %i.aem
  %i.aeo = select <4 x i1> %i.aen, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aep = fsub fast <4 x float> %i.aem, %i.aeo   ; 2 uses
  %i.aeq = fmul fast <4 x float> %i.aep, splat (float f0x3F317218)
  %i.aer = fsub fast <4 x float> %i.aei, %i.aeq   ; 8 uses
  %i.aes = fmul fast <4 x float> %i.aer, %i.aer
  %i.aet = fmul fast <4 x float> %i.aer, splat (float f0x39506967)
  %i.aeu = fadd fast <4 x float> %i.aet, splat (float f0x3AB743CE)
  %i.aev = fmul fast <4 x float> %i.aeu, %i.aer
  %i.aew = fadd fast <4 x float> %i.aev, splat (float f0x3C088908)
  %i.aex = fmul fast <4 x float> %i.aew, %i.aer
  %i.aey = fadd fast <4 x float> %i.aex, splat (float f0x3D2AA9C1)
  %i.aez = fmul fast <4 x float> %i.aey, %i.aer
  %i.afa = fadd fast <4 x float> %i.aez, splat (float f0x3E2AAAAA)
  %i.afb = fmul fast <4 x float> %i.afa, %i.aer
  %i.afc = fadd fast <4 x float> %i.afb, splat (float 5.000000e-01)
  %i.afd = fmul fast <4 x float> %i.aes, %i.afc
  %i.afe = fadd fast <4 x float> %i.aer, splat (float 1.000000e+00)
  %i.aff = fadd fast <4 x float> %i.afe, %i.afd
  %i.afg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aep)
  %i.afh = shl <4 x i32> %i.afg, splat (i32 23)
  %i.afi = add <4 x i32> %i.afh, splat (i32 1065353216)
  %i.afj = bitcast <4 x i32> %i.afi to <4 x float>
  %i.afk = fmul fast <4 x float> %i.aff, %i.afj
  %i.afl = fadd fast <4 x float> %i.afk, splat (float 1.000000e+00) ; 2 uses
  %i.afm = fcmp fast ole <4 x float> %i.afl, zeroinitializer
  %i.afn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afl, <4 x float> splat (float f0x00800000))
  %i.afo = bitcast <4 x float> %i.afn to <4 x i32> ; 2 uses
  %i.afp = lshr <4 x i32> %i.afo, splat (i32 23)
  %i.afq = and <4 x i32> %i.afo, splat (i32 -2139095041)
  %i.afr = or disjoint <4 x i32> %i.afq, splat (i32 1056964608)
  %i.afs = bitcast <4 x i32> %i.afr to <4 x float> ; 3 uses
  %i.aft = add nsw <4 x i32> %i.afp, splat (i32 -127)
  %i.afu = sitofp fast <4 x i32> %i.aft to <4 x float> ; 2 uses
  %i.afv = fadd fast <4 x float> %i.afu, splat (float 1.000000e+00)
  %i.afw = fcmp fast olt <4 x float> %i.afs, splat (float f0x3F3504F3) ; 2 uses
  %i.afx = select <4 x i1> %i.afw, <4 x float> %i.afs, <4 x float> zeroinitializer
  %i.afy = fadd fast <4 x float> %i.afs, splat (float -1.000000e+00)
  %i.afz = select fast <4 x i1> %i.afw, <4 x float> %i.afu, <4 x float> %i.afv
  %i.aga = fadd fast <4 x float> %i.afy, %i.afx   ; 12 uses
  %i.agb = fmul fast <4 x float> %i.aga, %i.aga
  %i.agc = fmul fast <4 x float> %i.aga, splat (float f0x3D9021BB)
  %i.agd = fadd fast <4 x float> %i.agc, splat (float f0xBDEBD1B8)
  %i.age = fmul fast <4 x float> %i.agd, %i.aga
  %i.agf = fadd fast <4 x float> %i.age, splat (float f0x3DEF251A)
  %i.agg = fmul fast <4 x float> %i.agf, %i.aga
  %i.agh = fadd fast <4 x float> %i.agg, splat (float f0xBDFE5D4F)
  %i.agi = fmul fast <4 x float> %i.agh, %i.aga
  %i.agj = fadd fast <4 x float> %i.agi, splat (float f0x3E11E9BF)
  %i.agk = fmul fast <4 x float> %i.agj, %i.aga
  %i.agl = fadd fast <4 x float> %i.agk, splat (float f0xBE2AAE50)
  %i.agm = fmul fast <4 x float> %i.agl, %i.aga
  %i.agn = fadd fast <4 x float> %i.agm, splat (float f0x3E4CCEAC)
  %i.ago = fmul fast <4 x float> %i.agn, %i.aga
  %i.agp = fadd fast <4 x float> %i.ago, splat (float f0xBE7FFFFC)
  %i.agq = fmul fast <4 x float> %i.agp, %i.aga
  %i.agr = fadd fast <4 x float> %i.agq, splat (float f0x3EAAAAAA)
  %i.ags = fmul fast <4 x float> %i.agr, %i.aga
  %reass.mul1085 = fmul fast <4 x float> %i.afz, splat (float f0x3F317218)
  %reass.add1086 = fadd fast <4 x float> %i.ags, splat (float -5.000000e-01)
  %reass.mul1087 = fmul fast <4 x float> %i.agb, %reass.add1086
  %i.agt = fadd fast <4 x float> %reass.mul1085, %i.aga
  %i.agu = fadd fast <4 x float> %i.agt, %reass.mul1087
  %.neg1076 = fmul fast <4 x float> %i.agu, splat (float -2.000000e+00)
  %i.agv = select fast <4 x i1> %i.afm, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1076
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agv, <4 x float> splat (float f0x42B0C0A5))
  %i.agx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agy = fmul fast <4 x float> %i.agx, splat (float f0x3FB8AA3B)
  %i.agz = fadd fast <4 x float> %i.agy, splat (float 5.000000e-01) ; 2 uses
  %i.aha = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agz)
  %i.ahb = sitofp fast <4 x i32> %i.aha to <4 x float> ; 2 uses
  %i.ahc = fcmp fast olt <4 x float> %i.agz, %i.ahb
  %i.ahd = select <4 x i1> %i.ahc, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ahe = fsub fast <4 x float> %i.ahb, %i.ahd   ; 2 uses
  %i.ahf = fmul fast <4 x float> %i.ahe, splat (float f0x3F317218)
  %i.ahg = fsub fast <4 x float> %i.agx, %i.ahf   ; 8 uses
  %i.ahh = fmul fast <4 x float> %i.ahg, %i.ahg
  %i.ahi = fmul fast <4 x float> %i.ahg, splat (float f0x39506967)
  %i.ahj = fadd fast <4 x float> %i.ahi, splat (float f0x3AB743CE)
  %i.ahk = fmul fast <4 x float> %i.ahj, %i.ahg
  %i.ahl = fadd fast <4 x float> %i.ahk, splat (float f0x3C088908)
  %i.ahm = fmul fast <4 x float> %i.ahl, %i.ahg
  %i.ahn = fadd fast <4 x float> %i.ahm, splat (float f0x3D2AA9C1)
  %i.aho = fmul fast <4 x float> %i.ahn, %i.ahg
  %i.ahp = fadd fast <4 x float> %i.aho, splat (float f0x3E2AAAAA)
  %i.ahq = fmul fast <4 x float> %i.ahp, %i.ahg
  %i.ahr = fadd fast <4 x float> %i.ahq, splat (float 5.000000e-01)
  %i.ahs = fmul fast <4 x float> %i.ahh, %i.ahr
  %i.aht = fadd fast <4 x float> %i.ahg, splat (float 1.000000e+00)
  %i.ahu = fadd fast <4 x float> %i.aht, %i.ahs
  %i.ahv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahe)
  %i.ahw = shl <4 x i32> %i.ahv, splat (i32 23)
  %i.ahx = add <4 x i32> %i.ahw, splat (i32 1065353216)
  %i.ahy = bitcast <4 x i32> %i.ahx to <4 x float>
  %i.ahz = fmul fast <4 x float> %i.ahu, %i.ahy
  %i.aia = fadd fast <4 x float> %i.ahz, splat (float 1.000000e+00)
  %i.aib = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aia
  %i.aic = fadd fast <4 x float> %i.aib, splat (float -1.000000e+00)
  %i.aid = fmul fast <4 x float> %i.aic, %.1969.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc176:                                        ; preds = %._crit_edge1129
  %i.aie = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !52
  %i.aig = insertelement <4 x float> poison, float %i.aif, i64 0
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !52
  %i.aik = insertelement <4 x float> poison, float %i.aij, i64 0
  %i.ail = shufflevector <4 x float> %i.aik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aim = fmul fast <4 x float> %i.aih, %.1969.lcssa
  %i.ain = fadd fast <4 x float> %i.aim, %i.ail
  %i.aio = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ain, <4 x float> zeroinitializer)
  %i.aip = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aio, <4 x float> splat (float 1.000000e+00))
  %i.aiq = fmul fast <4 x float> %i.aip, %.1969.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177:   ; preds = %.noexc176, %.noexc175, %.noexc174, %bb.m, %.noexc173, %bb.l, %._crit_edge1129
  %.0.i172 = phi nsz <4 x float> [ %i.aiq, %.noexc176 ], [ %i.ach, %bb.l ], [ %i.acp, %.noexc173 ], [ %i.acz, %bb.m ], [ %i.aeg, %.noexc174 ], [ %i.aid, %.noexc175 ], [ %.1969.lcssa, %._crit_edge1129 ]
  %i.air = bitcast <4 x float> %.0.i172 to <8 x i16>
  %i.ais = shufflevector <8 x i16> %i.air, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ait = bitcast <8 x i16> %i.ais to <4 x float>
  %i.aiu = shufflevector <4 x float> %i.ait, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aiv = bitcast <4 x float> %i.aiu to <2 x i64>
  %i.aiw = extractelement <2 x i64> %i.aiv, i64 0
  store i64 %i.aiw, ptr %.01541131, align 1, !tbaa !49
  %i.aix = getelementptr inbounds nuw i8, ptr %.01541131, i64 8
  %indvars.iv.next1213 = add nuw nsw i64 %indvars.iv1212, 1 ; 2 uses
  %i.aiy = load i32, ptr %6, align 4, !tbaa !57
  %i.aiz = load i32, ptr %4, align 4, !tbaa !57
  %i.aja = sdiv i32 %i.aiy, %i.aiz
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = icmp slt i64 %indvars.iv.next1213, %i.ajb
  br i1 %i.ajc, label %.lr.ph1134, label %.thread.loopexit, !llvm.loop !130

.thread.loopexit:                                 ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177
  %.pr1073.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.i, %bb.h, %thread-pre-split
  %.pr10711240 = phi i32 [ %.pr1073.pre, %.thread.loopexit ], [ %.pr10711241, %bb.i ], [ %.pr10711241, %bb.h ], [ %.pr10711241, %thread-pre-split ] ; 2 uses
  %.pr1073 = phi i32 [ %.pr1073.pre, %.thread.loopexit ], [ %.pr10731232, %bb.i ], [ %.pr10731232, %bb.h ], [ %.pr10731232, %thread-pre-split ] ; 2 uses
  %i.ajd = icmp eq i32 %.pr1073, 4
  br i1 %i.ajd, label %thread-pre-split1074, label %thread-pre-split1070

thread-pre-split1074:                             ; preds = %.thread
  %.pr1075 = load i32, ptr %4, align 4, !tbaa !57
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %thread-pre-split1074
  %.pr10711239 = phi i32 [ %.pr10711240, %thread-pre-split1074 ], [ %.pr10711243, %bb.d ] ; 3 uses
  %.pr10731233 = phi i32 [ 4, %thread-pre-split1074 ], [ %.pr10731235, %bb.d ]
  %.pr1230 = phi i32 [ 4, %thread-pre-split1074 ], [ %.pr1231, %bb.d ]
  %i.aje = phi i32 [ %.pr1075, %thread-pre-split1074 ], [ %i.v, %bb.d ]
  %i.ajf = icmp eq i32 %i.aje, 1
  br i1 %i.ajf, label %bb.n, label %.thread1072

bb.n:                                             ; preds = %.thread.thread
  %i.ajg = load i32, ptr %6, align 4, !tbaa !57
  %i.ajh = icmp sgt i32 %i.ajg, 0
  br i1 %i.ajh, label %.lr.ph1162.preheader, label %thread-pre-split1070

.lr.ph1162.preheader:                             ; preds = %bb.n
  %i.aji = load ptr, ptr %5, align 8, !tbaa !19
  %i.ajj = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = mul nsw i64 %indvars.iv1224, %i.ajk
  %i.ajm = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ajn = mul i64 %i.ajl, %i.ajm
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.ajn
  br label %.lr.ph1162

.lr.ph1162:                                       ; preds = %.lr.ph1162.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv1216 = phi i64 [ 0, %.lr.ph1162.preheader ], [ %indvars.iv.next1217, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01491159 = phi ptr [ %i.ajo, %.lr.ph1162.preheader ], [ %i.atp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.ajp = load ptr, ptr %7, align 8, !tbaa !19
  %i.ajq = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = mul nsw i64 %indvars.iv1216, %i.ajr
  %i.ajt = load i64, ptr %i.o, align 8, !tbaa !48
  %i.aju = mul i64 %i.ajs, %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.aju ; 2 uses
  %i.ajw = load ptr, ptr %8, align 8, !tbaa !19
  %i.ajx = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = mul nsw i64 %indvars.iv1224, %i.ajy
  %i.aka = load i64, ptr %i.q, align 8, !tbaa !48
  %i.akb = mul i64 %i.ajz, %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.akb ; 2 uses
  %i.akd = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not166 = icmp eq ptr %i.akd, null
  br i1 %.not166, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph1162
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %indvars.iv1216
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !52
  %i.akg = insertelement <4 x float> poison, float %i.akf, i64 0
  %i.akh = shufflevector <4 x float> %i.akg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph1162
  %.0966 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1162 ], [ %i.akh, %bb.o ] ; 2 uses
  %i.aki = load i32, ptr %10, align 4, !tbaa !57  ; 5 uses
  %i.akj = icmp sgt i32 %i.aki, 3
  br i1 %i.akj, label %.lr.ph1143, label %.preheader1107

.preheader1107.loopexit:                          ; preds = %.lr.ph1143
  %i.akk = and i32 %i.aki, 2147483644
  %i.akl = fadd fast <4 x float> %i.alz, %i.alx
  %i.akm = fadd fast <4 x float> %i.akl, %i.amb
  br label %.preheader1107

.preheader1107:                                   ; preds = %.preheader1107.loopexit, %bb.p
  %.1967.lcssa = phi <4 x float> [ %.0966, %bb.p ], [ %i.alv, %.preheader1107.loopexit ] ; 2 uses
  %.0964.lcssa = phi <4 x float> [ zeroinitializer, %bb.p ], [ %i.akm, %.preheader1107.loopexit ]
  %.0146.lcssa = phi ptr [ %i.ajv, %bb.p ], [ %i.amd, %.preheader1107.loopexit ]
  %.0144.lcssa = phi ptr [ %i.akc, %bb.p ], [ %i.amc, %.preheader1107.loopexit ]
  %.0142.lcssa = phi i32 [ 0, %bb.p ], [ %i.akk, %.preheader1107.loopexit ] ; 2 uses
  %i.akn = icmp slt i32 %.0142.lcssa, %i.aki
  br i1 %i.akn, label %.lr.ph1156, label %._crit_edge1157

.lr.ph1143:                                       ; preds = %bb.p, %.lr.ph1143
  %.01421141 = phi i32 [ %i.ame, %.lr.ph1143 ], [ 0, %bb.p ]
  %.01441140 = phi ptr [ %i.amc, %.lr.ph1143 ], [ %i.akc, %bb.p ] ; 5 uses
  %.01461139 = phi ptr [ %i.amd, %.lr.ph1143 ], [ %i.ajv, %bb.p ] ; 2 uses
  %.09631138 = phi <4 x float> [ %i.amb, %.lr.ph1143 ], [ zeroinitializer, %bb.p ]
  %.09641137 = phi <4 x float> [ %i.alz, %.lr.ph1143 ], [ zeroinitializer, %bb.p ]
  %.09651136 = phi <4 x float> [ %i.alx, %.lr.ph1143 ], [ zeroinitializer, %bb.p ]
  %.19671135 = phi <4 x float> [ %i.alv, %.lr.ph1143 ], [ %.0966, %bb.p ]
  %i.ako = load i64, ptr %.01441140, align 1, !tbaa !49
  %i.akp = insertelement <2 x i64> poison, i64 %i.ako, i64 0
  %i.akq = bitcast <2 x i64> %i.akp to <8 x i16>
  %i.akr = shufflevector <8 x i16> %i.akq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aks = bitcast <8 x i16> %i.akr to <4 x float>
  %i.akt = getelementptr inbounds nuw i8, ptr %.01441140, i64 8
  %i.aku = load i64, ptr %i.akt, align 1, !tbaa !49
  %i.akv = insertelement <2 x i64> poison, i64 %i.aku, i64 0
  %i.akw = bitcast <2 x i64> %i.akv to <8 x i16>
  %i.akx = shufflevector <8 x i16> %i.akw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aky = bitcast <8 x i16> %i.akx to <4 x float>
  %i.akz = getelementptr inbounds nuw i8, ptr %.01441140, i64 16
  %i.ala = load i64, ptr %i.akz, align 1, !tbaa !49
  %i.alb = insertelement <2 x i64> poison, i64 %i.ala, i64 0
  %i.alc = bitcast <2 x i64> %i.alb to <8 x i16>
  %i.ald = shufflevector <8 x i16> %i.alc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ale = bitcast <8 x i16> %i.ald to <4 x float>
  %i.alf = getelementptr inbounds nuw i8, ptr %.01441140, i64 24
  %i.alg = load i64, ptr %i.alf, align 1, !tbaa !49
  %i.alh = insertelement <2 x i64> poison, i64 %i.alg, i64 0
  %i.ali = bitcast <2 x i64> %i.alh to <8 x i16>
  %i.alj = shufflevector <8 x i16> %i.ali, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.alk = bitcast <8 x i16> %i.alj to <4 x float>
  %i.all = load i64, ptr %.01461139, align 1, !tbaa !49
  %i.alm = insertelement <2 x i64> poison, i64 %i.all, i64 0
  %i.aln = bitcast <2 x i64> %i.alm to <8 x i16>
  %i.alo = shufflevector <8 x i16> %i.aln, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.alp = bitcast <8 x i16> %i.alo to <4 x float> ; 4 uses
  %i.alq = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alr = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.als = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.alt = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.alu = fmul fast <4 x float> %i.alq, %i.aks
  %i.alv = fadd fast <4 x float> %i.alu, %.19671135 ; 2 uses
  %i.alw = fmul fast <4 x float> %i.alr, %i.aky
  %i.alx = fadd fast <4 x float> %i.alw, %.09651136 ; 2 uses
  %i.aly = fmul fast <4 x float> %i.als, %i.ale
  %i.alz = fadd fast <4 x float> %i.aly, %.09641137 ; 2 uses
  %i.ama = fmul fast <4 x float> %i.alt, %i.alk
  %i.amb = fadd fast <4 x float> %i.ama, %.09631138 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.01441140, i64 32 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.01461139, i64 8 ; 2 uses
  %i.ame = add nuw nsw i32 %.01421141, 4          ; 2 uses
  %i.amf = or disjoint i32 %i.ame, 3
  %i.amg = icmp slt i32 %i.amf, %i.aki
  br i1 %i.amg, label %.lr.ph1143, label %.preheader1107.loopexit, !llvm.loop !131

.lr.ph1156:                                       ; preds = %.preheader1107, %.lr.ph1156
  %.11431155 = phi i32 [ %i.amw, %.lr.ph1156 ], [ %.0142.lcssa, %.preheader1107 ]
  %.11451154 = phi ptr [ %i.amu, %.lr.ph1156 ], [ %.0144.lcssa, %.preheader1107 ] ; 2 uses
  %.11471153 = phi ptr [ %i.amv, %.lr.ph1156 ], [ %.0146.lcssa, %.preheader1107 ] ; 2 uses
  %.21152 = phi <4 x float> [ %i.amt, %.lr.ph1156 ], [ %.1967.lcssa, %.preheader1107 ]
  %i.amh = load i64, ptr %.11451154, align 1, !tbaa !49
  %i.ami = insertelement <2 x i64> poison, i64 %i.amh, i64 0
  %i.amj = bitcast <2 x i64> %i.ami to <8 x i16>
  %i.amk = shufflevector <8 x i16> %i.amj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aml = bitcast <8 x i16> %i.amk to <4 x float>
  %i.amm = load i16, ptr %.11471153, align 2, !tbaa !72
  %i.amn = zext i16 %i.amm to i32
  %i.amo = shl nuw i32 %i.amn, 16
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = bitcast <4 x i32> %i.amp to <4 x float>
  %i.amr = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ams = fmul fast <4 x float> %i.amr, %i.aml
  %i.amt = fadd fast <4 x float> %i.ams, %.21152  ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.11451154, i64 8
  %i.amv = getelementptr inbounds nuw i8, ptr %.11471153, i64 2
  %i.amw = add nuw nsw i32 %.11431155, 1          ; 2 uses
  %exitcond1215.not = icmp eq i32 %i.amw, %i.aki
  br i1 %exitcond1215.not, label %._crit_edge1157, label %.lr.ph1156, !llvm.loop !132

._crit_edge1157:                                  ; preds = %.lr.ph1156, %.preheader1107
  %.2.lcssa = phi <4 x float> [ %.1967.lcssa, %.preheader1107 ], [ %i.amt, %.lr.ph1156 ]
  %i.amx = fadd fast <4 x float> %.0964.lcssa, %.2.lcssa ; 10 uses
  %i.amy = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.amy, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.q
    i32 2, label %.noexc
    i32 3, label %bb.r
    i32 4, label %.noexc169
    i32 5, label %.noexc170
    i32 6, label %.noexc171
  ]

bb.q:                                             ; preds = %._crit_edge1157
  %i.amz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amx, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge1157
  %i.ana = load ptr, ptr %12, align 8, !tbaa !19
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !52
  %i.anc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.amx)
  %i.and = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.amx)
  %i.ane = insertelement <4 x float> poison, float %i.anb, i64 0
  %i.anf = shufflevector <4 x float> %i.ane, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ang = fmul fast <4 x float> %i.anf, %i.and
  %i.anh = fadd fast <4 x float> %i.ang, %i.anc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.r:                                             ; preds = %._crit_edge1157
  %i.ani = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !52
  %i.ank = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anl = shufflevector <4 x float> %i.ank, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !52
  %i.ano = insertelement <4 x float> poison, float %i.ann, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amx, <4 x float> nofpclass(nan inf) %i.anl)
  %i.anr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.anq, <4 x float> nofpclass(nan inf) %i.anp)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc169:                                        ; preds = %._crit_edge1157
  %i.ans = fneg fast <4 x float> %i.amx
  %i.ant = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ans, <4 x float> splat (float f0x42B0C0A5))
  %i.anu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anv = fmul fast <4 x float> %i.anu, splat (float f0x3FB8AA3B)
  %i.anw = fadd fast <4 x float> %i.anv, splat (float 5.000000e-01) ; 2 uses
  %i.anx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.anw)
  %i.any = sitofp fast <4 x i32> %i.anx to <4 x float> ; 2 uses
  %i.anz = fcmp fast olt <4 x float> %i.anw, %i.any
  %i.aoa = select <4 x i1> %i.anz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aob = fsub fast <4 x float> %i.any, %i.aoa   ; 2 uses
  %i.aoc = fmul fast <4 x float> %i.aob, splat (float f0x3F317218)
  %i.aod = fsub fast <4 x float> %i.anu, %i.aoc   ; 8 uses
  %i.aoe = fmul fast <4 x float> %i.aod, %i.aod
  %i.aof = fmul fast <4 x float> %i.aod, splat (float f0x39506967)
  %i.aog = fadd fast <4 x float> %i.aof, splat (float f0x3AB743CE)
  %i.aoh = fmul fast <4 x float> %i.aog, %i.aod
  %i.aoi = fadd fast <4 x float> %i.aoh, splat (float f0x3C088908)
  %i.aoj = fmul fast <4 x float> %i.aoi, %i.aod
  %i.aok = fadd fast <4 x float> %i.aoj, splat (float f0x3D2AA9C1)
  %i.aol = fmul fast <4 x float> %i.aok, %i.aod
  %i.aom = fadd fast <4 x float> %i.aol, splat (float f0x3E2AAAAA)
  %i.aon = fmul fast <4 x float> %i.aom, %i.aod
  %i.aoo = fadd fast <4 x float> %i.aon, splat (float 5.000000e-01)
  %i.aop = fmul fast <4 x float> %i.aoe, %i.aoo
  %i.aoq = fadd fast <4 x float> %i.aod, splat (float 1.000000e+00)
  %i.aor = fadd fast <4 x float> %i.aoq, %i.aop
  %i.aos = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aob)
  %i.aot = shl <4 x i32> %i.aos, splat (i32 23)
  %i.aou = add <4 x i32> %i.aot, splat (i32 1065353216)
  %i.aov = bitcast <4 x i32> %i.aou to <4 x float>
  %i.aow = fmul fast <4 x float> %i.aor, %i.aov
  %i.aox = fadd fast <4 x float> %i.aow, splat (float 1.000000e+00)
  %i.aoy = fdiv fast <4 x float> splat (float 1.000000e+00), %i.aox
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc170:                                        ; preds = %._crit_edge1157
  %i.aoz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amx, <4 x float> splat (float f0x42B0C0A5))
  %i.apa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aoz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.apb = fmul fast <4 x float> %i.apa, splat (float f0x3FB8AA3B)
  %i.apc = fadd fast <4 x float> %i.apb, splat (float 5.000000e-01) ; 2 uses
  %i.apd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.apc)
  %i.ape = sitofp fast <4 x i32> %i.apd to <4 x float> ; 2 uses
  %i.apf = fcmp fast olt <4 x float> %i.apc, %i.ape
  %i.apg = select <4 x i1> %i.apf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aph = fsub fast <4 x float> %i.ape, %i.apg   ; 2 uses
  %i.api = fmul fast <4 x float> %i.aph, splat (float f0x3F317218)
  %i.apj = fsub fast <4 x float> %i.apa, %i.api   ; 8 uses
  %i.apk = fmul fast <4 x float> %i.apj, %i.apj
  %i.apl = fmul fast <4 x float> %i.apj, splat (float f0x39506967)
  %i.apm = fadd fast <4 x float> %i.apl, splat (float f0x3AB743CE)
  %i.apn = fmul fast <4 x float> %i.apm, %i.apj
  %i.apo = fadd fast <4 x float> %i.apn, splat (float f0x3C088908)
  %i.app = fmul fast <4 x float> %i.apo, %i.apj
  %i.apq = fadd fast <4 x float> %i.app, splat (float f0x3D2AA9C1)
  %i.apr = fmul fast <4 x float> %i.apq, %i.apj
  %i.aps = fadd fast <4 x float> %i.apr, splat (float f0x3E2AAAAA)
  %i.apt = fmul fast <4 x float> %i.aps, %i.apj
  %i.apu = fadd fast <4 x float> %i.apt, splat (float 5.000000e-01)
  %i.apv = fmul fast <4 x float> %i.apk, %i.apu
  %i.apw = fadd fast <4 x float> %i.apj, splat (float 1.000000e+00)
  %i.apx = fadd fast <4 x float> %i.apw, %i.apv
  %i.apy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aph)
  %i.apz = shl <4 x i32> %i.apy, splat (i32 23)
  %i.aqa = add <4 x i32> %i.apz, splat (i32 1065353216)
  %i.aqb = bitcast <4 x i32> %i.aqa to <4 x float>
  %i.aqc = fmul fast <4 x float> %i.apx, %i.aqb
  %i.aqd = fadd fast <4 x float> %i.aqc, splat (float 1.000000e+00) ; 2 uses
  %i.aqe = fcmp fast ole <4 x float> %i.aqd, zeroinitializer
  %i.aqf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aqd, <4 x float> splat (float f0x00800000))
  %i.aqg = bitcast <4 x float> %i.aqf to <4 x i32> ; 2 uses
  %i.aqh = lshr <4 x i32> %i.aqg, splat (i32 23)
  %i.aqi = and <4 x i32> %i.aqg, splat (i32 -2139095041)
  %i.aqj = or disjoint <4 x i32> %i.aqi, splat (i32 1056964608)
  %i.aqk = bitcast <4 x i32> %i.aqj to <4 x float> ; 3 uses
  %i.aql = add nsw <4 x i32> %i.aqh, splat (i32 -127)
  %i.aqm = sitofp fast <4 x i32> %i.aql to <4 x float> ; 2 uses
  %i.aqn = fadd fast <4 x float> %i.aqm, splat (float 1.000000e+00)
  %i.aqo = fcmp fast olt <4 x float> %i.aqk, splat (float f0x3F3504F3) ; 2 uses
  %i.aqp = select <4 x i1> %i.aqo, <4 x float> %i.aqk, <4 x float> zeroinitializer
  %i.aqq = fadd fast <4 x float> %i.aqk, splat (float -1.000000e+00)
  %i.aqr = select fast <4 x i1> %i.aqo, <4 x float> %i.aqm, <4 x float> %i.aqn
  %i.aqs = fadd fast <4 x float> %i.aqq, %i.aqp   ; 12 uses
  %i.aqt = fmul fast <4 x float> %i.aqs, %i.aqs
  %i.aqu = fmul fast <4 x float> %i.aqs, splat (float f0x3D9021BB)
  %i.aqv = fadd fast <4 x float> %i.aqu, splat (float f0xBDEBD1B8)
  %i.aqw = fmul fast <4 x float> %i.aqv, %i.aqs
  %i.aqx = fadd fast <4 x float> %i.aqw, splat (float f0x3DEF251A)
  %i.aqy = fmul fast <4 x float> %i.aqx, %i.aqs
  %i.aqz = fadd fast <4 x float> %i.aqy, splat (float f0xBDFE5D4F)
  %i.ara = fmul fast <4 x float> %i.aqz, %i.aqs
  %i.arb = fadd fast <4 x float> %i.ara, splat (float f0x3E11E9BF)
  %i.arc = fmul fast <4 x float> %i.arb, %i.aqs
  %i.ard = fadd fast <4 x float> %i.arc, splat (float f0xBE2AAE50)
  %i.are = fmul fast <4 x float> %i.ard, %i.aqs
  %i.arf = fadd fast <4 x float> %i.are, splat (float f0x3E4CCEAC)
  %i.arg = fmul fast <4 x float> %i.arf, %i.aqs
  %i.arh = fadd fast <4 x float> %i.arg, splat (float f0xBE7FFFFC)
  %i.ari = fmul fast <4 x float> %i.arh, %i.aqs
  %i.arj = fadd fast <4 x float> %i.ari, splat (float f0x3EAAAAAA)
  %i.ark = fmul fast <4 x float> %i.arj, %i.aqs
  %reass.mul = fmul fast <4 x float> %i.aqr, splat (float f0x3F317218)
  %reass.add1082 = fadd fast <4 x float> %i.ark, splat (float -5.000000e-01)
  %reass.mul1083 = fmul fast <4 x float> %i.aqt, %reass.add1082
  %i.arl = fadd fast <4 x float> %reass.mul, %i.aqs
  %i.arm = fadd fast <4 x float> %i.arl, %reass.mul1083
  %.neg = fmul fast <4 x float> %i.arm, splat (float -2.000000e+00)
  %i.arn = select fast <4 x i1> %i.aqe, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.aro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.arn, <4 x float> splat (float f0x42B0C0A5))
  %i.arp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aro, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.arq = fmul fast <4 x float> %i.arp, splat (float f0x3FB8AA3B)
  %i.arr = fadd fast <4 x float> %i.arq, splat (float 5.000000e-01) ; 2 uses
  %i.ars = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arr)
  %i.art = sitofp fast <4 x i32> %i.ars to <4 x float> ; 2 uses
  %i.aru = fcmp fast olt <4 x float> %i.arr, %i.art
  %i.arv = select <4 x i1> %i.aru, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.arw = fsub fast <4 x float> %i.art, %i.arv   ; 2 uses
  %i.arx = fmul fast <4 x float> %i.arw, splat (float f0x3F317218)
  %i.ary = fsub fast <4 x float> %i.arp, %i.arx   ; 8 uses
  %i.arz = fmul fast <4 x float> %i.ary, %i.ary
  %i.asa = fmul fast <4 x float> %i.ary, splat (float f0x39506967)
  %i.asb = fadd fast <4 x float> %i.asa, splat (float f0x3AB743CE)
  %i.asc = fmul fast <4 x float> %i.asb, %i.ary
  %i.asd = fadd fast <4 x float> %i.asc, splat (float f0x3C088908)
  %i.ase = fmul fast <4 x float> %i.asd, %i.ary
  %i.asf = fadd fast <4 x float> %i.ase, splat (float f0x3D2AA9C1)
  %i.asg = fmul fast <4 x float> %i.asf, %i.ary
  %i.ash = fadd fast <4 x float> %i.asg, splat (float f0x3E2AAAAA)
  %i.asi = fmul fast <4 x float> %i.ash, %i.ary
  %i.asj = fadd fast <4 x float> %i.asi, splat (float 5.000000e-01)
  %i.ask = fmul fast <4 x float> %i.arz, %i.asj
  %i.asl = fadd fast <4 x float> %i.ary, splat (float 1.000000e+00)
  %i.asm = fadd fast <4 x float> %i.asl, %i.ask
  %i.asn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arw)
  %i.aso = shl <4 x i32> %i.asn, splat (i32 23)
  %i.asp = add <4 x i32> %i.aso, splat (i32 1065353216)
  %i.asq = bitcast <4 x i32> %i.asp to <4 x float>
  %i.asr = fmul fast <4 x float> %i.asm, %i.asq
  %i.ass = fadd fast <4 x float> %i.asr, splat (float 1.000000e+00)
  %i.ast = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ass
  %i.asu = fadd fast <4 x float> %i.ast, splat (float -1.000000e+00)
  %i.asv = fmul fast <4 x float> %i.asu, %i.amx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc171:                                        ; preds = %._crit_edge1157
  %i.asw = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !52
  %i.asy = insertelement <4 x float> poison, float %i.asx, i64 0
  %i.asz = shufflevector <4 x float> %i.asy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 4
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !52
  %i.atc = insertelement <4 x float> poison, float %i.atb, i64 0
  %i.atd = shufflevector <4 x float> %i.atc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ate = fmul fast <4 x float> %i.asz, %i.amx
  %i.atf = fadd fast <4 x float> %i.ate, %i.atd
  %i.atg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.atf, <4 x float> zeroinitializer)
  %i.ath = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.atg, <4 x float> splat (float 1.000000e+00))
  %i.ati = fmul fast <4 x float> %i.ath, %i.amx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc171, %.noexc170, %.noexc169, %bb.r, %.noexc, %bb.q, %._crit_edge1157
  %.0.i = phi nsz <4 x float> [ %i.ati, %.noexc171 ], [ %i.amz, %bb.q ], [ %i.anh, %.noexc ], [ %i.anr, %bb.r ], [ %i.aoy, %.noexc169 ], [ %i.asv, %.noexc170 ], [ %i.amx, %._crit_edge1157 ]
  %i.atj = bitcast <4 x float> %.0.i to <8 x i16>
  %i.atk = shufflevector <8 x i16> %i.atj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.atl = bitcast <8 x i16> %i.atk to <4 x float>
  %i.atm = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.atn = bitcast <4 x float> %i.atm to <2 x i64>
  %i.ato = extractelement <2 x i64> %i.atn, i64 0
  store i64 %i.ato, ptr %.01491159, align 1, !tbaa !49
  %i.atp = getelementptr inbounds nuw i8, ptr %.01491159, i64 8
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 1 ; 2 uses
  %i.atq = load i32, ptr %6, align 4, !tbaa !57
  %i.atr = sext i32 %i.atq to i64
  %i.ats = icmp slt i64 %indvars.iv.next1217, %i.atr
  br i1 %i.ats, label %.lr.ph1162, label %thread-pre-split1070.loopexit, !llvm.loop !133

thread-pre-split1070.loopexit:                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pr1071.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %thread-pre-split1070

thread-pre-split1070:                             ; preds = %bb.n, %thread-pre-split1070.loopexit, %.thread
  %.pr10711245 = phi i32 [ %.pr10711240, %.thread ], [ %.pr1071.pre, %thread-pre-split1070.loopexit ], [ %.pr10711239, %bb.n ] ; 4 uses
  %.pr10731237 = phi i32 [ %.pr1073, %.thread ], [ %.pr1071.pre, %thread-pre-split1070.loopexit ], [ %.pr10711239, %bb.n ] ; 4 uses
  %i.att = icmp eq i32 %.pr10731237, 1
  br i1 %i.att, label %bb.s, label %.thread1072

bb.s:                                             ; preds = %thread-pre-split1070
  %i.atu = load i32, ptr %4, align 4, !tbaa !57
  %i.atv = icmp eq i32 %i.atu, 1
  br i1 %i.atv, label %bb.t, label %.thread1072

bb.t:                                             ; preds = %bb.s
  %i.atw = load i32, ptr %6, align 4, !tbaa !57   ; 2 uses
  %i.atx = icmp sgt i32 %i.atw, 0
  br i1 %i.atx, label %.lr.ph1184, label %.thread1072

.lr.ph1184:                                       ; preds = %bb.t
  %i.aty = load ptr, ptr %5, align 8, !tbaa !19
  %i.atz = load i32, ptr %i.l, align 4, !tbaa !47
  %i.aua = sext i32 %i.atz to i64
  %i.aub = mul nsw i64 %indvars.iv1224, %i.aua
  %i.auc = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aud = mul i64 %i.aub, %i.auc
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.aud
  %i.auf = load ptr, ptr %7, align 8, !tbaa !19
  %i.aug = load i32, ptr %i.n, align 4, !tbaa !47
  %i.auh = sext i32 %i.aug to i64
  %i.aui = load i64, ptr %i.o, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.aui, %i.auh
  %i.auj = load ptr, ptr %8, align 8, !tbaa !19
  %i.auk = load i32, ptr %i.p, align 4, !tbaa !47
  %i.aul = sext i32 %i.auk to i64
  %i.aum = mul nsw i64 %indvars.iv1224, %i.aul
  %i.aun = load i64, ptr %i.q, align 8, !tbaa !48
  %i.auo = mul i64 %i.aum, %i.aun
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auj, i64 %i.auo ; 2 uses
  %i.auq = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not165 = icmp eq ptr %i.auq, null
  %i.aur = load i32, ptr %10, align 4, !tbaa !57  ; 6 uses
  %i.aus = icmp sgt i32 %i.aur, 3
  %i.aut = load i32, ptr %11, align 4, !tbaa !57
  %i.auu = and i32 %i.aur, -4
  %wide.trip.count = zext nneg i32 %i.atw to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph1184, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv1220 = phi i64 [ 0, %.lr.ph1184 ], [ %indvars.iv.next1221, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01411181 = phi ptr [ %i.aue, %.lr.ph1184 ], [ %i.ayw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv1220
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auf, i64 %.reass ; 2 uses
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %indvars.iv1220
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0134 = phi nsz float [ %i.aux, %bb.v ], [ 0.000000e+00, %bb.u ] ; 3 uses
  br i1 %i.aus, label %.lr.ph1168, label %.preheader

.preheader:                                       ; preds = %.lr.ph1168, %bb.w
  %.0962.lcssa = phi <4 x float> [ zeroinitializer, %bb.w ], [ %i.awp, %.lr.ph1168 ] ; 2 uses
  %.0138.lcssa = phi ptr [ %i.auv, %bb.w ], [ %i.awr, %.lr.ph1168 ] ; 3 uses
  %.0136.lcssa = phi ptr [ %i.aup, %bb.w ], [ %i.awq, %.lr.ph1168 ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.w ], [ %i.auu, %.lr.ph1168 ] ; 4 uses
  %i.auy = icmp slt i32 %.0.lcssa, %i.aur
  br i1 %i.auy, label %.lr.ph1178.preheader, label %._crit_edge1179

.lr.ph1178.preheader:                             ; preds = %.preheader
  %i.auz = xor i32 %.0.lcssa, -1
  %i.ava = add i32 %i.aur, %i.auz                 ; 2 uses
  %i.avb = zext i32 %i.ava to i64
  %i.avc = add nuw nsw i64 %i.avb, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ava, 7
  br i1 %min.iters.check, label %.lr.ph1178.preheader1301, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1178.preheader
  %n.vec = and i64 %i.avc, 8589934584             ; 4 uses
  %i.avd = trunc i64 %n.vec to i32
  %i.ave = add i32 %.0.lcssa, %i.avd
  %i.avf = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.avg = getelementptr i8, ptr %.0136.lcssa, i64 %i.avf
  %i.avh = getelementptr i8, ptr %.0138.lcssa, i64 %i.avf
  %i.avi = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0134, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.avi, %vector.ph ], [ %i.awa, %vector.body ]
  %vec.phi1294 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.awb, %vector.body ]
  %i.avj = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0136.lcssa, i64 %i.avj ; 2 uses
  %next.gep1295 = getelementptr i8, ptr %.0138.lcssa, i64 %i.avj ; 2 uses
  %i.avk = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !72
  %wide.load1296 = load <4 x i16>, ptr %i.avk, align 2, !tbaa !72
  %i.avl = zext <4 x i16> %wide.load to <4 x i32>
  %i.avm = zext <4 x i16> %wide.load1296 to <4 x i32>
  %i.avn = shl nuw <4 x i32> %i.avl, splat (i32 16)
  %i.avo = shl nuw <4 x i32> %i.avm, splat (i32 16)
  %i.avp = bitcast <4 x i32> %i.avn to <4 x float>
  %i.avq = bitcast <4 x i32> %i.avo to <4 x float>
  %i.avr = getelementptr i8, ptr %next.gep1295, i64 8
  %wide.load1297 = load <4 x i16>, ptr %next.gep1295, align 2, !tbaa !72
  %wide.load1298 = load <4 x i16>, ptr %i.avr, align 2, !tbaa !72
  %i.avs = zext <4 x i16> %wide.load1297 to <4 x i32>
  %i.avt = zext <4 x i16> %wide.load1298 to <4 x i32>
  %i.avu = shl nuw <4 x i32> %i.avs, splat (i32 16)
  %i.avv = shl nuw <4 x i32> %i.avt, splat (i32 16)
  %i.avw = bitcast <4 x i32> %i.avu to <4 x float>
  %i.avx = bitcast <4 x i32> %i.avv to <4 x float>
  %i.avy = fmul fast <4 x float> %i.avw, %i.avp
  %i.avz = fmul fast <4 x float> %i.avx, %i.avq
  %i.awa = fadd fast <4 x float> %i.avy, %vec.phi ; 2 uses
  %i.awb = fadd fast <4 x float> %i.avz, %vec.phi1294 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.awc = icmp eq i64 %index.next, %n.vec
  br i1 %i.awc, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.awb, %i.awa
  %i.awd = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.avc, %n.vec
  br i1 %cmp.n, label %._crit_edge1179, label %.lr.ph1178.preheader1301

.lr.ph1178.preheader1301:                         ; preds = %.lr.ph1178.preheader, %middle.block
  %.11177.ph = phi i32 [ %.0.lcssa, %.lr.ph1178.preheader ], [ %i.ave, %middle.block ]
  %.11351176.ph = phi float [ %.0134, %.lr.ph1178.preheader ], [ %i.awd, %middle.block ]
  %.11371175.ph = phi ptr [ %.0136.lcssa, %.lr.ph1178.preheader ], [ %i.avg, %middle.block ]
  %.11391174.ph = phi ptr [ %.0138.lcssa, %.lr.ph1178.preheader ], [ %i.avh, %middle.block ]
  br label %.lr.ph1178

.lr.ph1168:                                       ; preds = %bb.w, %.lr.ph1168
  %.01166 = phi i32 [ %i.aws, %.lr.ph1168 ], [ 0, %bb.w ]
  %.01361165 = phi ptr [ %i.awq, %.lr.ph1168 ], [ %i.aup, %bb.w ] ; 2 uses
  %.01381164 = phi ptr [ %i.awr, %.lr.ph1168 ], [ %i.auv, %bb.w ] ; 2 uses
  %.09621163 = phi <4 x float> [ %i.awp, %.lr.ph1168 ], [ zeroinitializer, %bb.w ]
  %i.awe = load i64, ptr %.01361165, align 1, !tbaa !49
  %i.awf = insertelement <2 x i64> poison, i64 %i.awe, i64 0
  %i.awg = bitcast <2 x i64> %i.awf to <8 x i16>
  %i.awh = shufflevector <8 x i16> %i.awg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.awi = bitcast <8 x i16> %i.awh to <4 x float>
  %i.awj = load i64, ptr %.01381164, align 1, !tbaa !49
  %i.awk = insertelement <2 x i64> poison, i64 %i.awj, i64 0
  %i.awl = bitcast <2 x i64> %i.awk to <8 x i16>
  %i.awm = shufflevector <8 x i16> %i.awl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.awn = bitcast <8 x i16> %i.awm to <4 x float>
  %i.awo = fmul fast <4 x float> %i.awn, %i.awi
  %i.awp = fadd fast <4 x float> %i.awo, %.09621163 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.01361165, i64 8 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %.01381164, i64 8 ; 2 uses
  %i.aws = add nuw nsw i32 %.01166, 4             ; 2 uses
  %i.awt = or disjoint i32 %i.aws, 3
  %i.awu = icmp slt i32 %i.awt, %i.aur
  br i1 %i.awu, label %.lr.ph1168, label %.preheader, !llvm.loop !135

.lr.ph1178:                                       ; preds = %.lr.ph1178.preheader1301, %.lr.ph1178
  %.11177 = phi i32 [ %i.axh, %.lr.ph1178 ], [ %.11177.ph, %.lr.ph1178.preheader1301 ]
  %.11351176 = phi float [ %i.axg, %.lr.ph1178 ], [ %.11351176.ph, %.lr.ph1178.preheader1301 ]
  %.11371175 = phi ptr [ %i.awv, %.lr.ph1178 ], [ %.11371175.ph, %.lr.ph1178.preheader1301 ] ; 2 uses
  %.11391174 = phi ptr [ %i.axa, %.lr.ph1178 ], [ %.11391174.ph, %.lr.ph1178.preheader1301 ] ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.11371175, i64 2
  %i.aww = load i16, ptr %.11371175, align 2, !tbaa !72
  %i.awx = zext i16 %i.aww to i32
  %i.awy = shl nuw i32 %i.awx, 16
  %i.awz = bitcast i32 %i.awy to float
  %i.axa = getelementptr inbounds nuw i8, ptr %.11391174, i64 2
  %i.axb = load i16, ptr %.11391174, align 2, !tbaa !72
  %i.axc = zext i16 %i.axb to i32
  %i.axd = shl nuw i32 %i.axc, 16
  %i.axe = bitcast i32 %i.axd to float
  %i.axf = fmul fast float %i.axe, %i.awz
  %i.axg = fadd fast float %i.axf, %.11351176     ; 2 uses
  %i.axh = add nuw nsw i32 %.11177, 1             ; 2 uses
  %exitcond1219.not = icmp eq i32 %i.axh, %i.aur
  br i1 %exitcond1219.not, label %._crit_edge1179, label %.lr.ph1178, !llvm.loop !136

._crit_edge1179:                                  ; preds = %.lr.ph1178, %middle.block, %.preheader
  %.1135.lcssa = phi float [ %.0134, %.preheader ], [ %i.awd, %middle.block ], [ %i.axg, %.lr.ph1178 ]
  %i.axi = shufflevector <4 x float> %.0962.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.axj = shufflevector <4 x float> %.0962.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.axk = fadd fast <2 x float> %i.axi, %i.axj
  %i.axl = call fast float @llvm.vector.reduce.fadd.v2f32(float %.1135.lcssa, <2 x float> %i.axk) ; 13 uses
  switch i32 %i.aut, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.ab
    i32 5, label %bb.ac
    i32 6, label %bb.ad
  ]

bb.x:                                             ; preds = %._crit_edge1179
  %i.axm = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.axl, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge1179
  %i.axn = load ptr, ptr %12, align 8, !tbaa !19
  %i.axo = load float, ptr %i.axn, align 4, !tbaa !52
  %i.axp = fcmp fast ogt float %i.axl, 0.000000e+00
  %i.axq = select fast i1 %i.axp, float 1.000000e+00, float %i.axo
  %i.axr = fmul fast float %i.axq, %i.axl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.z:                                             ; preds = %._crit_edge1179
  %i.axs = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.axt = load float, ptr %i.axs, align 4, !tbaa !52
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !52 ; 2 uses
  %.0975 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.axl, float %i.axt) ; 2 uses
  %i.axw = fcmp fast ogt float %.0975, %i.axv
  br i1 %i.axw, label %bb.aa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aa:                                            ; preds = %bb.z
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ab:                                            ; preds = %._crit_edge1179
  %.sroa.speculated341 = call nnan ninf nsz float @llvm.minnum.f32(float %i.axl, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated341, float f0xC2B0C0A5)
  %i.axx = fneg fast float %.sroa.speculated
  %i.axy = call fast float @llvm.exp.f32(float %i.axx)
  %i.axz = fadd fast float %i.axy, 1.000000e+00
  %i.aya = fdiv fast float 1.000000e+00, %i.axz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ac:                                            ; preds = %._crit_edge1179
  %i.ayb = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.axl)
  %i.ayc = fadd fast float %i.ayb, 1.000000e+00
  %i.ayd = call fast float @llvm.log.f32(float %i.ayc)
  %i.aye = call fast float @llvm.tanh.f32(float %i.ayd)
  %i.ayf = fmul fast float %i.aye, %i.axl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ad:                                            ; preds = %._crit_edge1179
  %i.ayg = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !52 ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 4
  %i.ayj = load float, ptr %i.ayi, align 4, !tbaa !52 ; 2 uses
  %i.ayk = fneg fast float %i.ayj
  %i.ayl = fdiv fast float %i.ayk, %i.ayh         ; 2 uses
  %i.aym = fcmp fast olt float %i.axl, %i.ayl
  br i1 %i.aym, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ayn = fdiv fast float 1.000000e+00, %i.ayh
  %i.ayo = fadd fast float %i.ayl, %i.ayn
  %i.ayp = fcmp fast ogt float %i.axl, %i.ayo
  br i1 %i.ayp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ayq = fmul fast float %i.ayh, %i.axl
  %i.ayr = fadd fast float %i.ayq, %i.ayj
  %i.ays = fmul fast float %i.ayr, %i.axl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %._crit_edge1179, %bb.ad
  %.1976 = phi nsz float [ %i.axl, %._crit_edge1179 ], [ %i.axm, %bb.x ], [ %i.axr, %bb.y ], [ %i.axv, %bb.aa ], [ %.0975, %bb.z ], [ %i.aya, %bb.ab ], [ %i.ayf, %bb.ac ], [ %i.ays, %bb.af ], [ %i.axl, %bb.ae ], [ 0.000000e+00, %bb.ad ]
  %i.ayt = bitcast float %.1976 to i32
  %i.ayu = lshr i32 %i.ayt, 16
  %i.ayv = trunc nuw i32 %i.ayu to i16
  store i16 %i.ayv, ptr %.01411181, align 2, !tbaa !72
  %i.ayw = getelementptr inbounds nuw i8, ptr %.01411181, i64 2
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, 1 ; 2 uses
  %exitcond1223.not = icmp eq i64 %indvars.iv.next1221, %wide.trip.count
  br i1 %exitcond1223.not, label %.thread1072, label %bb.u, !llvm.loop !137

.thread1072:                                      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.t, %.thread.thread, %bb.s, %thread-pre-split1070
  %.pr10711244 = phi i32 [ %.pr10711245, %thread-pre-split1070 ], [ %.pr10711245, %bb.t ], [ %.pr10711239, %.thread.thread ], [ %.pr10711245, %bb.s ], [ %.pr10711245, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr10731236 = phi i32 [ %.pr10731237, %thread-pre-split1070 ], [ 1, %bb.t ], [ %.pr10731233, %.thread.thread ], [ 1, %bb.s ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr1229 = phi i32 [ %.pr10731237, %thread-pre-split1070 ], [ 1, %bb.t ], [ %.pr1230, %.thread.thread ], [ 1, %bb.s ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %i.ayx = phi i32 [ %.pr10731237, %thread-pre-split1070 ], [ 1, %bb.t ], [ 4, %.thread.thread ], [ 1, %bb.s ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %indvars.iv.next1225 = add nsw i64 %indvars.iv1224, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1225 to i32
  %exitcond1227.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond1227.not, label %._crit_edge1192, label %bb.c

._crit_edge1192:                                  ; preds = %.thread1072, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1192, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not218 = icmp sgt i32 %i.k, %i.j
  br i1 %.not218, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph221, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph221 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0193 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !19
  %i.t = load i32, ptr %i.l, align 4, !tbaa !47
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !48
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !57    ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ac = and i32 %i.aa, 2147483644
  %i.ad = fadd fast <4 x float> %i.bt, %i.br
  %i.ae = fadd fast <4 x float> %i.ad, %i.bv
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.1194.lcssa = phi <4 x float> [ %.0193, %bb.e ], [ %i.bp, %.preheader.loopexit ] ; 2 uses
  %.0191.lcssa = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.ae, %.preheader.loopexit ]
  %.046.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.bx, %.preheader.loopexit ]
  %.044.lcssa = phi ptr [ %i.z, %bb.e ], [ %i.bw, %.preheader.loopexit ]
  %.043.lcssa = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader.loopexit ] ; 2 uses
  %i.af = icmp slt i32 %.043.lcssa, %i.aa
  br i1 %i.af, label %.lr.ph216, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.043204 = phi i32 [ %i.by, %.lr.ph ], [ 0, %bb.e ]
  %.044203 = phi ptr [ %i.bw, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.046202 = phi ptr [ %i.bx, %.lr.ph ], [ %i.y, %bb.e ] ; 5 uses
  %.0190201 = phi <4 x float> [ %i.bv, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0191200 = phi <4 x float> [ %i.bt, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0192199 = phi <4 x float> [ %i.br, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.1194198 = phi <4 x float> [ %i.bp, %.lr.ph ], [ %.0193, %bb.e ]
  %i.ag = load <4 x i16>, ptr %.044203, align 2, !tbaa !72
  %i.ah = zext <4 x i16> %i.ag to <4 x i32>
  %i.ai = shl nuw <4 x i32> %i.ah, splat (i32 16) ; 4 uses
  %i.aj = bitcast <4 x i32> %i.ai to <4 x float>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = bitcast <4 x i32> %i.ai to <4 x float>
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = bitcast <4 x i32> %i.ai to <4 x float>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = bitcast <4 x i32> %i.ai to <4 x float>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = load i64, ptr %.046202, align 1, !tbaa !49
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> %i.at, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.av = bitcast <8 x i16> %i.au to <4 x float>
  %i.aw = getelementptr inbounds nuw i8, ptr %.046202, i64 8
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !49
  %i.ay = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %i.az = bitcast <2 x i64> %i.ay to <8 x i16>
  %i.ba = shufflevector <8 x i16> %i.az, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bb = bitcast <8 x i16> %i.ba to <4 x float>
  %i.bc = getelementptr inbounds nuw i8, ptr %.046202, i64 16
  %i.bd = load i64, ptr %i.bc, align 1, !tbaa !49
  %i.be = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <8 x i16>
  %i.bg = shufflevector <8 x i16> %i.bf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bh = bitcast <8 x i16> %i.bg to <4 x float>
  %i.bi = getelementptr inbounds nuw i8, ptr %.046202, i64 24
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !49
  %i.bk = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <8 x i16>
  %i.bm = shufflevector <8 x i16> %i.bl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bn = bitcast <8 x i16> %i.bm to <4 x float>
  %i.bo = fmul fast <4 x float> %i.ak, %i.av
  %i.bp = fadd fast <4 x float> %i.bo, %.1194198  ; 2 uses
  %i.bq = fmul fast <4 x float> %i.am, %i.bb
  %i.br = fadd fast <4 x float> %i.bq, %.0192199  ; 2 uses
  %i.bs = fmul fast <4 x float> %i.ao, %i.bh
  %i.bt = fadd fast <4 x float> %i.bs, %.0191200  ; 2 uses
  %i.bu = fmul fast <4 x float> %i.aq, %i.bn
  %i.bv = fadd fast <4 x float> %i.bu, %.0190201  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.044203, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.046202, i64 32 ; 2 uses
  %i.by = add nuw nsw i32 %.043204, 4             ; 2 uses
  %i.bz = or disjoint i32 %i.by, 3
  %i.ca = icmp slt i32 %i.bz, %i.aa
  br i1 %i.ca, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !138

.lr.ph216:                                        ; preds = %.preheader, %.lr.ph216
  %.1215 = phi i32 [ %i.cq, %.lr.ph216 ], [ %.043.lcssa, %.preheader ]
  %.145214 = phi ptr [ %i.co, %.lr.ph216 ], [ %.044.lcssa, %.preheader ] ; 2 uses
  %.147213 = phi ptr [ %i.cp, %.lr.ph216 ], [ %.046.lcssa, %.preheader ] ; 2 uses
  %.2212 = phi <4 x float> [ %i.cn, %.lr.ph216 ], [ %.1194.lcssa, %.preheader ]
  %i.cb = load i16, ptr %.145214, align 2, !tbaa !72
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 16
  %i.ce = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.cf = bitcast <4 x i32> %i.ce to <4 x float>
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = load i64, ptr %.147213, align 1, !tbaa !49
  %i.ci = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.cj = bitcast <2 x i64> %i.ci to <8 x i16>
  %i.ck = shufflevector <8 x i16> %i.cj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cl = bitcast <8 x i16> %i.ck to <4 x float>
  %i.cm = fmul fast <4 x float> %i.cg, %i.cl
  %i.cn = fadd fast <4 x float> %i.cm, %.2212     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.145214, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.147213, i64 8
  %i.cq = add nuw nsw i32 %.1215, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph216, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph216, %.preheader
  %.2.lcssa = phi <4 x float> [ %.1194.lcssa, %.preheader ], [ %i.cn, %.lr.ph216 ]
  %i.cr = fadd fast <4 x float> %.0191.lcssa, %.2.lcssa ; 10 uses
  %i.cs = load i32, ptr %7, align 4, !tbaa !57
  switch i32 %i.cs, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc50
    i32 5, label %.noexc51
    i32 6, label %.noexc52
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.cu = load ptr, ptr %8, align 8, !tbaa !19
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !52
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cr)
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cr)
  %i.cy = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.da = fmul fast <4 x float> %i.cz, %i.cx
  %i.db = fadd fast <4 x float> %i.da, %i.cw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.dc = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !52
  %i.de = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !52
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> nofpclass(nan inf) %i.df)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dj)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc50:                                         ; preds = %._crit_edge
  %i.dm = fneg fast <4 x float> %i.cr
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> splat (float f0x42B0C0A5))
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dp = fmul fast <4 x float> %i.do, splat (float f0x3FB8AA3B)
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 5.000000e-01) ; 2 uses
  %i.dr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.ds = sitofp fast <4 x i32> %i.dr to <4 x float> ; 2 uses
  %i.dt = fcmp fast olt <4 x float> %i.dq, %i.ds
  %i.du = select <4 x i1> %i.dt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dv = fsub fast <4 x float> %i.ds, %i.du      ; 2 uses
  %i.dw = fmul fast <4 x float> %i.dv, splat (float f0x3F317218)
  %i.dx = fsub fast <4 x float> %i.do, %i.dw      ; 8 uses
  %i.dy = fmul fast <4 x float> %i.dx, %i.dx
  %i.dz = fmul fast <4 x float> %i.dx, splat (float f0x39506967)
  %i.ea = fadd fast <4 x float> %i.dz, splat (float f0x3AB743CE)
  %i.eb = fmul fast <4 x float> %i.ea, %i.dx
  %i.ec = fadd fast <4 x float> %i.eb, splat (float f0x3C088908)
  %i.ed = fmul fast <4 x float> %i.ec, %i.dx
  %i.ee = fadd fast <4 x float> %i.ed, splat (float f0x3D2AA9C1)
  %i.ef = fmul fast <4 x float> %i.ee, %i.dx
  %i.eg = fadd fast <4 x float> %i.ef, splat (float f0x3E2AAAAA)
  %i.eh = fmul fast <4 x float> %i.eg, %i.dx
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fmul fast <4 x float> %i.dy, %i.ei
  %i.ek = fadd fast <4 x float> %i.dx, splat (float 1.000000e+00)
  %i.el = fadd fast <4 x float> %i.ek, %i.ej
  %i.em = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.en = shl <4 x i32> %i.em, splat (i32 23)
  %i.eo = add <4 x i32> %i.en, splat (i32 1065353216)
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>
  %i.eq = fmul fast <4 x float> %i.el, %i.ep
  %i.er = fadd fast <4 x float> %i.eq, splat (float 1.000000e+00)
  %i.es = fdiv fast <4 x float> splat (float 1.000000e+00), %i.er
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc51:                                         ; preds = %._crit_edge
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0x42B0C0A5))
  %i.eu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.et, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, splat (float f0x3FB8AA3B)
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 5.000000e-01) ; 2 uses
  %i.ex = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ew)
  %i.ey = sitofp fast <4 x i32> %i.ex to <4 x float> ; 2 uses
  %i.ez = fcmp fast olt <4 x float> %i.ew, %i.ey
  %i.fa = select <4 x i1> %i.ez, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fb = fsub fast <4 x float> %i.ey, %i.fa      ; 2 uses
  %i.fc = fmul fast <4 x float> %i.fb, splat (float f0x3F317218)
  %i.fd = fsub fast <4 x float> %i.eu, %i.fc      ; 8 uses
  %i.fe = fmul fast <4 x float> %i.fd, %i.fd
  %i.ff = fmul fast <4 x float> %i.fd, splat (float f0x39506967)
  %i.fg = fadd fast <4 x float> %i.ff, splat (float f0x3AB743CE)
  %i.fh = fmul fast <4 x float> %i.fg, %i.fd
  %i.fi = fadd fast <4 x float> %i.fh, splat (float f0x3C088908)
  %i.fj = fmul fast <4 x float> %i.fi, %i.fd
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3D2AA9C1)
  %i.fl = fmul fast <4 x float> %i.fk, %i.fd
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3E2AAAAA)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fd
  %i.fo = fadd fast <4 x float> %i.fn, splat (float 5.000000e-01)
  %i.fp = fmul fast <4 x float> %i.fe, %i.fo
  %i.fq = fadd fast <4 x float> %i.fd, splat (float 1.000000e+00)
  %i.fr = fadd fast <4 x float> %i.fq, %i.fp
  %i.fs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fb)
  %i.ft = shl <4 x i32> %i.fs, splat (i32 23)
  %i.fu = add <4 x i32> %i.ft, splat (i32 1065353216)
  %i.fv = bitcast <4 x i32> %i.fu to <4 x float>
  %i.fw = fmul fast <4 x float> %i.fr, %i.fv
  %i.fx = fadd fast <4 x float> %i.fw, splat (float 1.000000e+00) ; 2 uses
  %i.fy = fcmp fast ole <4 x float> %i.fx, zeroinitializer
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> splat (float f0x00800000))
  %i.ga = bitcast <4 x float> %i.fz to <4 x i32>  ; 2 uses
  %i.gb = lshr <4 x i32> %i.ga, splat (i32 23)
  %i.gc = and <4 x i32> %i.ga, splat (i32 -2139095041)
  %i.gd = or disjoint <4 x i32> %i.gc, splat (i32 1056964608)
  %i.ge = bitcast <4 x i32> %i.gd to <4 x float>  ; 3 uses
  %i.gf = add nsw <4 x i32> %i.gb, splat (i32 -127)
  %i.gg = sitofp fast <4 x i32> %i.gf to <4 x float> ; 2 uses
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fcmp fast olt <4 x float> %i.ge, splat (float f0x3F3504F3) ; 2 uses
  %i.gj = select <4 x i1> %i.gi, <4 x float> %i.ge, <4 x float> zeroinitializer
  %i.gk = fadd fast <4 x float> %i.ge, splat (float -1.000000e+00)
  %i.gl = select fast <4 x i1> %i.gi, <4 x float> %i.gg, <4 x float> %i.gh
  %i.gm = fadd fast <4 x float> %i.gk, %i.gj      ; 12 uses
  %i.gn = fmul fast <4 x float> %i.gm, %i.gm
  %i.go = fmul fast <4 x float> %i.gm, splat (float f0x3D9021BB)
  %i.gp = fadd fast <4 x float> %i.go, splat (float f0xBDEBD1B8)
  %i.gq = fmul fast <4 x float> %i.gp, %i.gm
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3DEF251A)
  %i.gs = fmul fast <4 x float> %i.gr, %i.gm
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0xBDFE5D4F)
  %i.gu = fmul fast <4 x float> %i.gt, %i.gm
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3E11E9BF)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gm
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0xBE2AAE50)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gm
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3E4CCEAC)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gm
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0xBE7FFFFC)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gm
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3EAAAAAA)
  %i.he = fmul fast <4 x float> %i.hd, %i.gm
  %reass.mul = fmul fast <4 x float> %i.gl, splat (float f0x3F317218)
  %reass.add196 = fadd fast <4 x float> %i.he, splat (float -5.000000e-01)
  %reass.mul197 = fmul fast <4 x float> %i.gn, %reass.add196
  %i.hf = fadd fast <4 x float> %reass.mul, %i.gm
  %i.hg = fadd fast <4 x float> %i.hf, %reass.mul197
  %.neg = fmul fast <4 x float> %i.hg, splat (float -2.000000e+00)
  %i.hh = select fast <4 x i1> %i.fy, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hh, <4 x float> splat (float f0x42B0C0A5))
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hk = fmul fast <4 x float> %i.hj, splat (float f0x3FB8AA3B)
  %i.hl = fadd fast <4 x float> %i.hk, splat (float 5.000000e-01) ; 2 uses
  %i.hm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hl)
  %i.hn = sitofp fast <4 x i32> %i.hm to <4 x float> ; 2 uses
  %i.ho = fcmp fast olt <4 x float> %i.hl, %i.hn
  %i.hp = select <4 x i1> %i.ho, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hq = fsub fast <4 x float> %i.hn, %i.hp      ; 2 uses
  %i.hr = fmul fast <4 x float> %i.hq, splat (float f0x3F317218)
  %i.hs = fsub fast <4 x float> %i.hj, %i.hr      ; 8 uses
  %i.ht = fmul fast <4 x float> %i.hs, %i.hs
  %i.hu = fmul fast <4 x float> %i.hs, splat (float f0x39506967)
  %i.hv = fadd fast <4 x float> %i.hu, splat (float f0x3AB743CE)
  %i.hw = fmul fast <4 x float> %i.hv, %i.hs
  %i.hx = fadd fast <4 x float> %i.hw, splat (float f0x3C088908)
  %i.hy = fmul fast <4 x float> %i.hx, %i.hs
  %i.hz = fadd fast <4 x float> %i.hy, splat (float f0x3D2AA9C1)
  %i.ia = fmul fast <4 x float> %i.hz, %i.hs
  %i.ib = fadd fast <4 x float> %i.ia, splat (float f0x3E2AAAAA)
  %i.ic = fmul fast <4 x float> %i.ib, %i.hs
  %i.id = fadd fast <4 x float> %i.ic, splat (float 5.000000e-01)
  %i.ie = fmul fast <4 x float> %i.ht, %i.id
  %i.if = fadd fast <4 x float> %i.hs, splat (float 1.000000e+00)
  %i.ig = fadd fast <4 x float> %i.if, %i.ie
  %i.ih = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hq)
  %i.ii = shl <4 x i32> %i.ih, splat (i32 23)
  %i.ij = add <4 x i32> %i.ii, splat (i32 1065353216)
  %i.ik = bitcast <4 x i32> %i.ij to <4 x float>
  %i.il = fmul fast <4 x float> %i.ig, %i.ik
  %i.im = fadd fast <4 x float> %i.il, splat (float 1.000000e+00)
  %i.in = fdiv fast <4 x float> splat (float 2.000000e+00), %i.im
  %i.io = fadd fast <4 x float> %i.in, splat (float -1.000000e+00)
  %i.ip = fmul fast <4 x float> %i.io, %i.cr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc52:                                         ; preds = %._crit_edge
  %i.iq = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !52
  %i.is = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !52
  %i.iw = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = fmul fast <4 x float> %i.it, %i.cr
  %i.iz = fadd fast <4 x float> %i.iy, %i.ix
  %i.ja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> zeroinitializer)
  %i.jb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> splat (float 1.000000e+00))
  %i.jc = fmul fast <4 x float> %i.jb, %i.cr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc52, %.noexc51, %.noexc50, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.jc, %.noexc52 ], [ %i.ct, %bb.f ], [ %i.db, %.noexc ], [ %i.dl, %bb.g ], [ %i.es, %.noexc50 ], [ %i.ip, %.noexc51 ], [ %i.cr, %._crit_edge ]
  %i.jd = load ptr, ptr %9, align 8, !tbaa !19
  %.idx236 = shl nsw i64 %indvars.iv, 3
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %.idx236
  %i.jf = bitcast <4 x float> %.0.i to <8 x i16>
  %i.jg = shufflevector <8 x i16> %i.jf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jh = bitcast <8 x i16> %i.jg to <4 x float>
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jj = bitcast <4 x float> %i.ji to <2 x i64>
  %i.jk = extractelement <2 x i64> %i.jj, i64 0
  store i64 %i.jk, ptr %i.je, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond231.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond231.not, label %._crit_edge222, label %bb.c

._crit_edge222:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge222, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not278 = icmp sgt i32 %i.k, %i.j
  br i1 %.not278, label %._crit_edge282, label %.lr.ph281

.lr.ph281:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph281, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0279 = phi i32 [ %i.k, %.lr.ph281 ], [ %i.kk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !57
  %i.o = shl nsw i32 %.0279, 2
  %i.p = add nsw i32 %i.n, %i.o                   ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not83 = icmp eq ptr %i.q, null
  %.pre = sext i32 %i.p to i64                    ; 3 uses
  br i1 %.not83, label %._crit_edge293, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !52
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi nsz <4 x float> [ %i.s, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !19     ; 4 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !47
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.m, align 8, !tbaa !48
  %i.x = mul i64 %i.w, %i.v                       ; 4 uses
  %i.y = mul i64 %i.x, %.pre
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = add nsw i32 %i.p, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = add nsw i32 %i.p, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.x, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ag ; 2 uses
  %i.ai = add nsw i32 %i.p, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.x, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !57    ; 5 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ap = and i32 %i.an, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge293
  %.0245.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.br, %.preheader.loopexit ] ; 2 uses
  %.0244.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.bt, %.preheader.loopexit ] ; 2 uses
  %.0243.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.bv, %.preheader.loopexit ] ; 2 uses
  %.0242.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.bx, %.preheader.loopexit ] ; 2 uses
  %.080.lcssa = phi ptr [ %i.z, %._crit_edge293 ], [ %i.bz, %.preheader.loopexit ]
  %.078.lcssa = phi ptr [ %i.ad, %._crit_edge293 ], [ %i.ca, %.preheader.loopexit ]
  %.076.lcssa = phi ptr [ %i.ah, %._crit_edge293 ], [ %i.cb, %.preheader.loopexit ]
  %.074.lcssa = phi ptr [ %i.al, %._crit_edge293 ], [ %i.cc, %.preheader.loopexit ]
  %.072.lcssa = phi ptr [ %i.am, %._crit_edge293 ], [ %i.by, %.preheader.loopexit ]
  %.071.lcssa = phi i32 [ 0, %._crit_edge293 ], [ %i.ap, %.preheader.loopexit ] ; 2 uses
  %i.aq = icmp slt i32 %.071.lcssa, %i.an
  br i1 %i.aq, label %.lr.ph276, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge293, %.lr.ph
  %.071258 = phi i32 [ %i.cd, %.lr.ph ], [ 0, %._crit_edge293 ]
  %.072257 = phi ptr [ %i.by, %.lr.ph ], [ %i.am, %._crit_edge293 ] ; 2 uses
  %.074256 = phi ptr [ %i.cc, %.lr.ph ], [ %i.al, %._crit_edge293 ] ; 2 uses
  %.076255 = phi ptr [ %i.cb, %.lr.ph ], [ %i.ah, %._crit_edge293 ] ; 2 uses
  %.078254 = phi ptr [ %i.ca, %.lr.ph ], [ %i.ad, %._crit_edge293 ] ; 2 uses
  %.080253 = phi ptr [ %i.bz, %.lr.ph ], [ %i.z, %._crit_edge293 ] ; 2 uses
  %.0242252 = phi <4 x float> [ %i.bx, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %.0243251 = phi <4 x float> [ %i.bv, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %.0244250 = phi <4 x float> [ %i.bt, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %.0245249 = phi <4 x float> [ %i.br, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %i.ar = load i64, ptr %.072257, align 1, !tbaa !49
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> %i.at, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.av = bitcast <8 x i16> %i.au to <4 x float>  ; 4 uses
  %i.aw = load i64, ptr %.080253, align 1, !tbaa !49
  %i.ax = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.ay = bitcast <2 x i64> %i.ax to <8 x i16>
  %i.az = shufflevector <8 x i16> %i.ay, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ba = bitcast <8 x i16> %i.az to <4 x float>
  %i.bb = load i64, ptr %.078254, align 1, !tbaa !49
  %i.bc = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <8 x i16>
  %i.be = shufflevector <8 x i16> %i.bd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bf = bitcast <8 x i16> %i.be to <4 x float>
  %i.bg = load i64, ptr %.076255, align 1, !tbaa !49
  %i.bh = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %i.bi = bitcast <2 x i64> %i.bh to <8 x i16>
  %i.bj = shufflevector <8 x i16> %i.bi, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bk = bitcast <8 x i16> %i.bj to <4 x float>
  %i.bl = load i64, ptr %.074256, align 1, !tbaa !49
  %i.bm = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bn = bitcast <2 x i64> %i.bm to <8 x i16>
  %i.bo = shufflevector <8 x i16> %i.bn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bp = bitcast <8 x i16> %i.bo to <4 x float>
  %i.bq = fmul fast <4 x float> %i.ba, %i.av
  %i.br = fadd fast <4 x float> %i.bq, %.0245249  ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bf, %i.av
  %i.bt = fadd fast <4 x float> %i.bs, %.0244250  ; 2 uses
  %i.bu = fmul fast <4 x float> %i.bk, %i.av
  %i.bv = fadd fast <4 x float> %i.bu, %.0243251  ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bp, %i.av
  %i.bx = fadd fast <4 x float> %i.bw, %.0242252  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.072257, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.080253, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.078254, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.076255, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.074256, i64 8 ; 2 uses
  %i.cd = add nuw nsw i32 %.071258, 4             ; 2 uses
  %i.ce = or disjoint i32 %i.cd, 3
  %i.cf = icmp slt i32 %i.ce, %i.an
  br i1 %i.cf, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !140

.lr.ph276:                                        ; preds = %.preheader, %.lr.ph276
  %.1275 = phi i32 [ %i.de, %.lr.ph276 ], [ %.071.lcssa, %.preheader ]
  %.173274 = phi ptr [ %i.cz, %.lr.ph276 ], [ %.072.lcssa, %.preheader ] ; 2 uses
  %.175273 = phi ptr [ %i.dd, %.lr.ph276 ], [ %.074.lcssa, %.preheader ] ; 2 uses
  %.177272 = phi ptr [ %i.dc, %.lr.ph276 ], [ %.076.lcssa, %.preheader ] ; 2 uses
  %.179271 = phi ptr [ %i.db, %.lr.ph276 ], [ %.078.lcssa, %.preheader ] ; 2 uses
  %.181270 = phi ptr [ %i.da, %.lr.ph276 ], [ %.080.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1269 = phi <4 x float> [ %i.cy, %.lr.ph276 ], [ %.sroa.0.0, %.preheader ]
  %i.cg = load i16, ptr %.173274, align 2, !tbaa !72
  %i.ch = zext i16 %i.cg to i32
  %i.ci = shl nuw i32 %i.ch, 16
  %i.cj = load i16, ptr %.181270, align 2, !tbaa !72
  %i.ck = load i16, ptr %.179271, align 2, !tbaa !72
  %i.cl = load i16, ptr %.177272, align 2, !tbaa !72
  %i.cm = load i16, ptr %.175273, align 2, !tbaa !72
  %i.cn = insertelement <4 x i16> poison, i16 %i.cj, i64 0
  %i.co = insertelement <4 x i16> %i.cn, i16 %i.ck, i64 1
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.cl, i64 2
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 3
  %i.cr = zext <4 x i16> %i.cq to <4 x i32>
  %i.cs = shl nuw <4 x i32> %i.cr, splat (i32 16)
  %i.ct = bitcast <4 x i32> %i.cs to <4 x float>
  %i.cu = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.cv = bitcast <4 x i32> %i.cu to <4 x float>
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = fmul fast <4 x float> %i.cw, %i.ct
  %i.cy = fadd fast <4 x float> %i.cx, %.sroa.0.1269 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.173274, i64 2
  %i.da = getelementptr inbounds nuw i8, ptr %.181270, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.179271, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.177272, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.175273, i64 2
  %i.de = add nuw nsw i32 %.1275, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph276, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph276, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.cy, %.lr.ph276 ]
  %i.df = shufflevector <4 x float> %.0245.lcssa, <4 x float> %.0244.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dg = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %.0245.lcssa, <4 x float> %.0244.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.di = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = shufflevector <4 x float> %i.dg, <4 x float> %i.df, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dl = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dm = shufflevector <4 x float> %i.di, <4 x float> %i.dh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dn = fadd fast <4 x float> %i.dk, %i.dj
  %i.do = fadd fast <4 x float> %i.dn, %i.dl
  %i.dp = fadd fast <4 x float> %i.do, %i.dm
  %i.dq = fadd fast <4 x float> %i.dp, %.sroa.0.1.lcssa ; 10 uses
  %i.dr = load i32, ptr %8, align 4, !tbaa !57
  switch i32 %i.dr, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc
    i32 3, label %bb.f
    i32 4, label %.noexc84
    i32 5, label %.noexc85
    i32 6, label %.noexc86
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.dt = load ptr, ptr %9, align 8, !tbaa !19
  %i.du = load float, ptr %i.dt, align 4, !tbaa !52
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dq)
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dq)
  %i.dx = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = fmul fast <4 x float> %i.dy, %i.dw
  %i.ea = fadd fast <4 x float> %i.dz, %i.dv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.eb = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !52
  %i.ed = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !52
  %i.eh = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.ee)
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.ei)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc84:                                         ; preds = %._crit_edge
  %i.el = fneg fast <4 x float> %i.dq
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.el, <4 x float> splat (float f0x42B0C0A5))
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.em, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eo = fmul fast <4 x float> %i.en, splat (float f0x3FB8AA3B)
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 5.000000e-01) ; 2 uses
  %i.eq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.er = sitofp fast <4 x i32> %i.eq to <4 x float> ; 2 uses
  %i.es = fcmp fast olt <4 x float> %i.ep, %i.er
  %i.et = select <4 x i1> %i.es, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eu = fsub fast <4 x float> %i.er, %i.et      ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, splat (float f0x3F317218)
  %i.ew = fsub fast <4 x float> %i.en, %i.ev      ; 8 uses
  %i.ex = fmul fast <4 x float> %i.ew, %i.ew
  %i.ey = fmul fast <4 x float> %i.ew, splat (float f0x39506967)
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0x3AB743CE)
  %i.fa = fmul fast <4 x float> %i.ez, %i.ew
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3C088908)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ew
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3D2AA9C1)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ew
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3E2AAAAA)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ew
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 5.000000e-01)
  %i.fi = fmul fast <4 x float> %i.ex, %i.fh
  %i.fj = fadd fast <4 x float> %i.ew, splat (float 1.000000e+00)
  %i.fk = fadd fast <4 x float> %i.fj, %i.fi
  %i.fl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eu)
  %i.fm = shl <4 x i32> %i.fl, splat (i32 23)
  %i.fn = add <4 x i32> %i.fm, splat (i32 1065353216)
  %i.fo = bitcast <4 x i32> %i.fn to <4 x float>
  %i.fp = fmul fast <4 x float> %i.fk, %i.fo
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc85:                                         ; preds = %._crit_edge
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0x42B0C0A5))
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fu = fmul fast <4 x float> %i.ft, splat (float f0x3FB8AA3B)
  %i.fv = fadd fast <4 x float> %i.fu, splat (float 5.000000e-01) ; 2 uses
  %i.fw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fv)
  %i.fx = sitofp fast <4 x i32> %i.fw to <4 x float> ; 2 uses
  %i.fy = fcmp fast olt <4 x float> %i.fv, %i.fx
  %i.fz = select <4 x i1> %i.fy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ga = fsub fast <4 x float> %i.fx, %i.fz      ; 2 uses
  %i.gb = fmul fast <4 x float> %i.ga, splat (float f0x3F317218)
  %i.gc = fsub fast <4 x float> %i.ft, %i.gb      ; 8 uses
  %i.gd = fmul fast <4 x float> %i.gc, %i.gc
  %i.ge = fmul fast <4 x float> %i.gc, splat (float f0x39506967)
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3AB743CE)
  %i.gg = fmul fast <4 x float> %i.gf, %i.gc
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3C088908)
  %i.gi = fmul fast <4 x float> %i.gh, %i.gc
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3D2AA9C1)
  %i.gk = fmul fast <4 x float> %i.gj, %i.gc
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0x3E2AAAAA)
  %i.gm = fmul fast <4 x float> %i.gl, %i.gc
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 5.000000e-01)
  %i.go = fmul fast <4 x float> %i.gd, %i.gn
  %i.gp = fadd fast <4 x float> %i.gc, splat (float 1.000000e+00)
  %i.gq = fadd fast <4 x float> %i.gp, %i.go
  %i.gr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ga)
  %i.gs = shl <4 x i32> %i.gr, splat (i32 23)
  %i.gt = add <4 x i32> %i.gs, splat (i32 1065353216)
  %i.gu = bitcast <4 x i32> %i.gt to <4 x float>
  %i.gv = fmul fast <4 x float> %i.gq, %i.gu
  %i.gw = fadd fast <4 x float> %i.gv, splat (float 1.000000e+00) ; 2 uses
  %i.gx = fcmp fast ole <4 x float> %i.gw, zeroinitializer
  %i.gy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gw, <4 x float> splat (float f0x00800000))
  %i.gz = bitcast <4 x float> %i.gy to <4 x i32>  ; 2 uses
  %i.ha = lshr <4 x i32> %i.gz, splat (i32 23)
  %i.hb = and <4 x i32> %i.gz, splat (i32 -2139095041)
  %i.hc = or disjoint <4 x i32> %i.hb, splat (i32 1056964608)
  %i.hd = bitcast <4 x i32> %i.hc to <4 x float>  ; 3 uses
  %i.he = add nsw <4 x i32> %i.ha, splat (i32 -127)
  %i.hf = sitofp fast <4 x i32> %i.he to <4 x float> ; 2 uses
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 1.000000e+00)
  %i.hh = fcmp fast olt <4 x float> %i.hd, splat (float f0x3F3504F3) ; 2 uses
  %i.hi = select <4 x i1> %i.hh, <4 x float> %i.hd, <4 x float> zeroinitializer
  %i.hj = fadd fast <4 x float> %i.hd, splat (float -1.000000e+00)
  %i.hk = select fast <4 x i1> %i.hh, <4 x float> %i.hf, <4 x float> %i.hg
  %i.hl = fadd fast <4 x float> %i.hj, %i.hi      ; 12 uses
  %i.hm = fmul fast <4 x float> %i.hl, %i.hl
  %i.hn = fmul fast <4 x float> %i.hl, splat (float f0x3D9021BB)
  %i.ho = fadd fast <4 x float> %i.hn, splat (float f0xBDEBD1B8)
  %i.hp = fmul fast <4 x float> %i.ho, %i.hl
  %i.hq = fadd fast <4 x float> %i.hp, splat (float f0x3DEF251A)
  %i.hr = fmul fast <4 x float> %i.hq, %i.hl
  %i.hs = fadd fast <4 x float> %i.hr, splat (float f0xBDFE5D4F)
  %i.ht = fmul fast <4 x float> %i.hs, %i.hl
  %i.hu = fadd fast <4 x float> %i.ht, splat (float f0x3E11E9BF)
  %i.hv = fmul fast <4 x float> %i.hu, %i.hl
  %i.hw = fadd fast <4 x float> %i.hv, splat (float f0xBE2AAE50)
  %i.hx = fmul fast <4 x float> %i.hw, %i.hl
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3E4CCEAC)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hl
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0xBE7FFFFC)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hl
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3EAAAAAA)
  %i.id = fmul fast <4 x float> %i.ic, %i.hl
  %reass.mul = fmul fast <4 x float> %i.hk, splat (float f0x3F317218)
  %reass.add247 = fadd fast <4 x float> %i.id, splat (float -5.000000e-01)
  %reass.mul248 = fmul fast <4 x float> %i.hm, %reass.add247
  %i.ie = fadd fast <4 x float> %reass.mul, %i.hl
  %i.if = fadd fast <4 x float> %i.ie, %reass.mul248
  %.neg = fmul fast <4 x float> %i.if, splat (float -2.000000e+00)
  %i.ig = select fast <4 x i1> %i.gx, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> splat (float f0x42B0C0A5))
  %i.ii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ij = fmul fast <4 x float> %i.ii, splat (float f0x3FB8AA3B)
  %i.ik = fadd fast <4 x float> %i.ij, splat (float 5.000000e-01) ; 2 uses
  %i.il = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ik)
  %i.im = sitofp fast <4 x i32> %i.il to <4 x float> ; 2 uses
  %i.in = fcmp fast olt <4 x float> %i.ik, %i.im
  %i.io = select <4 x i1> %i.in, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ip = fsub fast <4 x float> %i.im, %i.io      ; 2 uses
  %i.iq = fmul fast <4 x float> %i.ip, splat (float f0x3F317218)
  %i.ir = fsub fast <4 x float> %i.ii, %i.iq      ; 8 uses
  %i.is = fmul fast <4 x float> %i.ir, %i.ir
  %i.it = fmul fast <4 x float> %i.ir, splat (float f0x39506967)
  %i.iu = fadd fast <4 x float> %i.it, splat (float f0x3AB743CE)
  %i.iv = fmul fast <4 x float> %i.iu, %i.ir
  %i.iw = fadd fast <4 x float> %i.iv, splat (float f0x3C088908)
  %i.ix = fmul fast <4 x float> %i.iw, %i.ir
  %i.iy = fadd fast <4 x float> %i.ix, splat (float f0x3D2AA9C1)
  %i.iz = fmul fast <4 x float> %i.iy, %i.ir
  %i.ja = fadd fast <4 x float> %i.iz, splat (float f0x3E2AAAAA)
  %i.jb = fmul fast <4 x float> %i.ja, %i.ir
  %i.jc = fadd fast <4 x float> %i.jb, splat (float 5.000000e-01)
  %i.jd = fmul fast <4 x float> %i.is, %i.jc
  %i.je = fadd fast <4 x float> %i.ir, splat (float 1.000000e+00)
  %i.jf = fadd fast <4 x float> %i.je, %i.jd
  %i.jg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ip)
  %i.jh = shl <4 x i32> %i.jg, splat (i32 23)
  %i.ji = add <4 x i32> %i.jh, splat (i32 1065353216)
  %i.jj = bitcast <4 x i32> %i.ji to <4 x float>
  %i.jk = fmul fast <4 x float> %i.jf, %i.jj
  %i.jl = fadd fast <4 x float> %i.jk, splat (float 1.000000e+00)
  %i.jm = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jl
  %i.jn = fadd fast <4 x float> %i.jm, splat (float -1.000000e+00)
  %i.jo = fmul fast <4 x float> %i.jn, %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc86:                                         ; preds = %._crit_edge
  %i.jp = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !52
  %i.jr = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !52
  %i.jv = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fmul fast <4 x float> %i.js, %i.dq
  %i.jy = fadd fast <4 x float> %i.jx, %i.jw
  %i.jz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jy, <4 x float> zeroinitializer)
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> splat (float 1.000000e+00))
  %i.kb = fmul fast <4 x float> %i.ka, %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc86, %.noexc85, %.noexc84, %bb.f, %.noexc, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.kb, %.noexc86 ], [ %i.ds, %bb.e ], [ %i.ea, %.noexc ], [ %i.ek, %bb.f ], [ %i.fr, %.noexc84 ], [ %i.jo, %.noexc85 ], [ %i.dq, %._crit_edge ]
  %i.kc = load ptr, ptr %10, align 8, !tbaa !19
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %.pre
  %i.ke = bitcast <4 x float> %.0.i to <8 x i16>
  %i.kf = shufflevector <8 x i16> %i.ke, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kg = bitcast <8 x i16> %i.kf to <4 x float>
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ki = bitcast <4 x float> %i.kh to <2 x i64>
  %i.kj = extractelement <2 x i64> %i.ki, i64 0
  store i64 %i.kj, ptr %i.kd, align 1, !tbaa !49
  %i.kk = add i32 %.0279, 1
  %exitcond292.not = icmp eq i32 %.0279, %i.j
  br i1 %exitcond292.not, label %._crit_edge282, label %bb.c

._crit_edge282:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge282, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !57     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.i, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.j = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !57
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !57
  %i.m = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %5, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.v, %i.t
  %i.w = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !57     ; 6 uses
  %i.y = icmp sgt i32 %i.x, 3
  %i.z = load i32, ptr %8, align 4, !tbaa !57
  %i.aa = load ptr, ptr %10, align 8, !tbaa !19
  %i.ab = and i32 %i.x, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph90, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.088 = phi i32 [ %i.m, %.lr.ph90 ], [ %i.ef, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.ac = add i32 %.088, %i.e
  %.pre = sext i32 %i.ac to i64                   ; 3 uses
  br i1 %.not, label %._crit_edge97, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.pre
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !52
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %bb.c, %bb.d
  %.051 = phi nsz float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %.pre
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass ; 2 uses
  br i1 %i.y, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %._crit_edge97
  %.071.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge97 ], [ %i.bx, %.lr.ph ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.af, %._crit_edge97 ], [ %i.bz, %.lr.ph ] ; 3 uses
  %.047.lcssa = phi ptr [ %i.w, %._crit_edge97 ], [ %i.by, %.lr.ph ] ; 3 uses
  %.046.lcssa = phi i32 [ 0, %._crit_edge97 ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.ag = icmp slt i32 %.046.lcssa, %i.x
  br i1 %i.ag, label %.lr.ph86.preheader, label %._crit_edge

.lr.ph86.preheader:                               ; preds = %.preheader
  %i.ah = xor i32 %.046.lcssa, -1
  %i.ai = add i32 %i.x, %i.ah                     ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ai, 7
  br i1 %min.iters.check, label %.lr.ph86.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph86.preheader
  %n.vec = and i64 %i.ak, 8589934584              ; 4 uses
  %i.al = trunc i64 %n.vec to i32
  %i.am = add i32 %.046.lcssa, %i.al
  %i.an = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.ao = getelementptr i8, ptr %.047.lcssa, i64 %i.an
  %i.ap = getelementptr i8, ptr %.049.lcssa, i64 %i.an
  %i.aq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.051, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.aq, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi113 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.ar = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047.lcssa, i64 %i.ar ; 2 uses
  %next.gep114 = getelementptr i8, ptr %.049.lcssa, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !72
  %wide.load115 = load <4 x i16>, ptr %i.as, align 2, !tbaa !72
  %i.at = zext <4 x i16> %wide.load to <4 x i32>
  %i.au = zext <4 x i16> %wide.load115 to <4 x i32>
  %i.av = shl nuw <4 x i32> %i.at, splat (i32 16)
  %i.aw = shl nuw <4 x i32> %i.au, splat (i32 16)
  %i.ax = bitcast <4 x i32> %i.av to <4 x float>
  %i.ay = bitcast <4 x i32> %i.aw to <4 x float>
  %i.az = getelementptr i8, ptr %next.gep114, i64 8
  %wide.load116 = load <4 x i16>, ptr %next.gep114, align 2, !tbaa !72
  %wide.load117 = load <4 x i16>, ptr %i.az, align 2, !tbaa !72
  %i.ba = zext <4 x i16> %wide.load116 to <4 x i32>
  %i.bb = zext <4 x i16> %wide.load117 to <4 x i32>
  %i.bc = shl nuw <4 x i32> %i.ba, splat (i32 16)
  %i.bd = shl nuw <4 x i32> %i.bb, splat (i32 16)
  %i.be = bitcast <4 x i32> %i.bc to <4 x float>
  %i.bf = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bg = fmul fast <4 x float> %i.be, %i.ax
  %i.bh = fmul fast <4 x float> %i.bf, %i.ay
  %i.bi = fadd fast <4 x float> %i.bg, %vec.phi   ; 2 uses
  %i.bj = fadd fast <4 x float> %i.bh, %vec.phi113 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bj, %i.bi
  %i.bl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph86.preheader120

.lr.ph86.preheader120:                            ; preds = %.lr.ph86.preheader, %middle.block
  %.185.ph = phi i32 [ %.046.lcssa, %.lr.ph86.preheader ], [ %i.am, %middle.block ]
  %.14884.ph = phi ptr [ %.047.lcssa, %.lr.ph86.preheader ], [ %i.ao, %middle.block ]
  %.15083.ph = phi ptr [ %.049.lcssa, %.lr.ph86.preheader ], [ %i.ap, %middle.block ]
  %.15282.ph = phi float [ %.051, %.lr.ph86.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph86

.lr.ph:                                           ; preds = %._crit_edge97, %.lr.ph
  %.04677 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %._crit_edge97 ]
  %.04776 = phi ptr [ %i.by, %.lr.ph ], [ %i.w, %._crit_edge97 ] ; 2 uses
  %.04975 = phi ptr [ %i.bz, %.lr.ph ], [ %i.af, %._crit_edge97 ] ; 2 uses
  %.07174 = phi <4 x float> [ %i.bx, %.lr.ph ], [ zeroinitializer, %._crit_edge97 ]
  %i.bm = load i64, ptr %.04776, align 1, !tbaa !49
  %i.bn = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.bo = bitcast <2 x i64> %i.bn to <8 x i16>
  %i.bp = shufflevector <8 x i16> %i.bo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bq = bitcast <8 x i16> %i.bp to <4 x float>
  %i.br = load i64, ptr %.04975, align 1, !tbaa !49
  %i.bs = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %i.bt = bitcast <2 x i64> %i.bs to <8 x i16>
  %i.bu = shufflevector <8 x i16> %i.bt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bv = bitcast <8 x i16> %i.bu to <4 x float>
  %i.bw = fmul fast <4 x float> %i.bv, %i.bq
  %i.bx = fadd fast <4 x float> %i.bw, %.07174    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04776, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.04975, i64 8 ; 2 uses
  %i.ca = add nuw nsw i32 %.04677, 4              ; 2 uses
  %i.cb = or disjoint i32 %i.ca, 3
  %i.cc = icmp slt i32 %i.cb, %i.x
  br i1 %i.cc, label %.lr.ph, label %.preheader, !llvm.loop !143

.lr.ph86:                                         ; preds = %.lr.ph86.preheader120, %.lr.ph86
  %.185 = phi i32 [ %i.cp, %.lr.ph86 ], [ %.185.ph, %.lr.ph86.preheader120 ]
  %.14884 = phi ptr [ %i.cn, %.lr.ph86 ], [ %.14884.ph, %.lr.ph86.preheader120 ] ; 2 uses
  %.15083 = phi ptr [ %i.co, %.lr.ph86 ], [ %.15083.ph, %.lr.ph86.preheader120 ] ; 2 uses
  %.15282 = phi float [ %i.cm, %.lr.ph86 ], [ %.15282.ph, %.lr.ph86.preheader120 ]
  %i.cd = load i16, ptr %.14884, align 2, !tbaa !72
  %i.ce = zext i16 %i.cd to i32
  %i.cf = shl nuw i32 %i.ce, 16
  %i.cg = bitcast i32 %i.cf to float
  %i.ch = load i16, ptr %.15083, align 2, !tbaa !72
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 16
  %i.ck = bitcast i32 %i.cj to float
  %i.cl = fmul fast float %i.ck, %i.cg
  %i.cm = fadd fast float %i.cl, %.15282          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.14884, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %.15083, i64 2
  %i.cp = add nuw nsw i32 %.185, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cp, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph86, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph86, %middle.block, %.preheader
  %.152.lcssa = phi float [ %.051, %.preheader ], [ %i.bl, %middle.block ], [ %i.cm, %.lr.ph86 ]
  %i.cq = shufflevector <4 x float> %.071.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cr = shufflevector <4 x float> %.071.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cs = fadd fast <2 x float> %i.cq, %i.cr
  %i.ct = call fast float @llvm.vector.reduce.fadd.v2f32(float %.152.lcssa, <2 x float> %i.cs) ; 13 uses
  switch i32 %i.z, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.cu = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.ct, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !52
  %i.cx = fcmp fast ogt float %i.ct, 0.000000e+00
  %i.cy = select fast i1 %i.cx, float 1.000000e+00, float %i.cw
  %i.cz = fmul fast float %i.cy, %i.ct
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.da = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !52
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !52 ; 2 uses
  %.072 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ct, float %i.db) ; 2 uses
  %i.de = fcmp fast ogt float %.072, %i.dd
  br i1 %i.de, label %bb.h, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.g
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge
  %.sroa.speculated62 = call nnan ninf nsz float @llvm.minnum.f32(float %i.ct, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated62, float f0xC2B0C0A5)
  %i.df = fneg fast float %.sroa.speculated
  %i.dg = call fast float @llvm.exp.f32(float %i.df)
  %i.dh = fadd fast float %i.dg, 1.000000e+00
  %i.di = fdiv fast float 1.000000e+00, %i.dh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.dj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ct)
  %i.dk = fadd fast float %i.dj, 1.000000e+00
  %i.dl = call fast float @llvm.log.f32(float %i.dk)
  %i.dm = call fast float @llvm.tanh.f32(float %i.dl)
  %i.dn = fmul fast float %i.dm, %i.ct
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.do = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !52 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !52 ; 2 uses
  %i.ds = fneg fast float %i.dr
  %i.dt = fdiv fast float %i.ds, %i.dp            ; 2 uses
  %i.du = fcmp fast olt float %i.ct, %i.dt
  br i1 %i.du, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = fdiv fast float 1.000000e+00, %i.dp
  %i.dw = fadd fast float %i.dt, %i.dv
  %i.dx = fcmp fast ogt float %i.ct, %i.dw
  br i1 %i.dx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = fmul fast float %i.dp, %i.ct
  %i.dz = fadd fast float %i.dy, %i.dr
  %i.ea = fmul fast float %i.dz, %i.ct
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %._crit_edge, %bb.k
  %.173 = phi nsz float [ %i.ct, %._crit_edge ], [ %i.cu, %bb.e ], [ %i.cz, %bb.f ], [ %i.dd, %bb.h ], [ %.072, %bb.g ], [ %i.di, %bb.i ], [ %i.dn, %bb.j ], [ %i.ea, %bb.m ], [ %i.ct, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.eb = bitcast float %.173 to i32
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %.pre
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !72
  %i.ef = add nuw i32 %.088, 1
  %exitcond96.not = icmp eq i32 %.088, %i.l
  br i1 %exitcond96.not, label %._crit_edge91, label %bb.c

._crit_edge91:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge91, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not1642 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1642, label %._crit_edge1646, label %.lr.ph1645

.lr.ph1645:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %i.n, align 8, !tbaa !45
  %.pre1660 = load i32, ptr %5, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1645, %._crit_edge1641
  %i.aa = phi i32 [ %.pre1660, %.lr.ph1645 ], [ %i.ap, %._crit_edge1641 ] ; 2 uses
  %i.ab = phi i32 [ %.pre, %.lr.ph1645 ], [ %i.aq, %._crit_edge1641 ] ; 2 uses
  %indvars.iv1656 = phi i64 [ %i.y, %.lr.ph1645 ], [ %indvars.iv.next1657, %._crit_edge1641 ] ; 3 uses
  %i.ac = sdiv i32 %i.ab, %i.aa
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph1640, label %._crit_edge1641

.lr.ph1640:                                       ; preds = %bb.c
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  %i.af = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv1656, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = shl nsw i64 %indvars.iv1656, 2          ; 4 uses
  %i.am = or disjoint i64 %i.al, 1
  %i.an = or disjoint i64 %i.al, 2
  %i.ao = or disjoint i64 %i.al, 3
  br label %bb.d

._crit_edge1641:                                  ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.c
  %i.ap = phi i32 [ %i.aa, %bb.c ], [ %i.bam, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.aq = phi i32 [ %i.ab, %bb.c ], [ %i.bal, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %indvars.iv.next1657 = add nsw i64 %indvars.iv1656, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1657 to i32
  %exitcond1659.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond1659.not, label %._crit_edge1646, label %bb.c

bb.d:                                             ; preds = %.lr.ph1640, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph1640 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01951638 = phi ptr [ %i.ak, %.lr.ph1640 ], [ %i.bak, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 9 uses
  %i.ar = load i32, ptr %7, align 4, !tbaa !57    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.at = load ptr, ptr %6, align 8, !tbaa !19    ; 4 uses
  %i.au = load i64, ptr %i.s, align 8, !tbaa !48
  %i.av = load i32, ptr %i.r, align 4, !tbaa !47
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.au, %i.aw                    ; 4 uses
  %i.ay = mul i64 %i.ax, %i.ao
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  %i.ba = mul i64 %i.ax, %i.an
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba
  %i.bc = mul i64 %i.ax, %i.am
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bc
  %i.be = mul i64 %i.ax, %i.al
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.be
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !47
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %indvars.iv, %i.bi
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !48
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01971629 = phi ptr [ %i.ea, %.lr.ph ], [ %i.bm, %.lr.ph.preheader ] ; 2 uses
  %.01981628 = phi ptr [ %i.dw, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 2 uses
  %.01991627 = phi ptr [ %i.dx, %.lr.ph ], [ %i.bd, %.lr.ph.preheader ] ; 2 uses
  %.02001626 = phi ptr [ %i.dy, %.lr.ph ], [ %i.bb, %.lr.ph.preheader ] ; 2 uses
  %.02091625 = phi ptr [ %i.dz, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 2 uses
  %i.bn = phi <4 x i32> [ %i.dh, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bo = phi <4 x i32> [ %i.dj, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bp = phi <4 x i32> [ %i.dl, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bq = phi <4 x i32> [ %i.dn, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.br = phi <4 x i32> [ %i.dp, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bs = phi <4 x i32> [ %i.dr, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bt = phi <4 x i32> [ %i.dt, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bu = phi <4 x i32> [ %i.dv, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.02181624 = phi i32 [ %i.eb, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bv = load i64, ptr %.01971629, align 1, !tbaa !49
  %i.bw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bw to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.bx, splat (i8 7)
  %i.by = shufflevector <16 x i8> %i.bx, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bz = load i8, ptr %.01981628, align 1, !tbaa !49
  %i.ca = sext i8 %i.bz to i16
  %i.cb = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cd = load i8, ptr %.01991627, align 1, !tbaa !49
  %i.ce = sext i8 %i.cd to i16
  %i.cf = insertelement <8 x i16> poison, i16 %i.ce, i64 0
  %i.cg = shufflevector <8 x i16> %i.cf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ch = load i8, ptr %.02001626, align 1, !tbaa !49
  %i.ci = sext i8 %i.ch to i16
  %i.cj = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %i.ck = shufflevector <8 x i16> %i.cj, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cl = load i8, ptr %.02091625, align 1, !tbaa !49
  %i.cm = sext i8 %i.cl to i16
  %i.cn = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cp = bitcast <16 x i8> %i.by to <8 x i16>    ; 8 uses
  %i.cq = mul <8 x i16> %i.cc, %i.cp              ; 2 uses
  %i.cr = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.cc, <8 x i16> %i.cp) ; 2 uses
  %i.cs = mul <8 x i16> %i.cg, %i.cp              ; 2 uses
  %i.ct = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.cg, <8 x i16> %i.cp) ; 2 uses
  %i.cu = mul <8 x i16> %i.ck, %i.cp              ; 2 uses
  %i.cv = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ck, <8 x i16> %i.cp) ; 2 uses
  %i.cw = mul <8 x i16> %i.co, %i.cp              ; 2 uses
  %i.cx = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.co, <8 x i16> %i.cp) ; 2 uses
  %i.cy = shufflevector <8 x i16> %i.cq, <8 x i16> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cz = shufflevector <8 x i16> %i.cq, <8 x i16> %i.cr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.da = shufflevector <8 x i16> %i.cs, <8 x i16> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.db = shufflevector <8 x i16> %i.cs, <8 x i16> %i.ct, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dc = shufflevector <8 x i16> %i.cu, <8 x i16> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dd = shufflevector <8 x i16> %i.cu, <8 x i16> %i.cv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.de = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.df = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dg = bitcast <8 x i16> %i.cy to <4 x i32>
  %i.dh = add <4 x i32> %i.bn, %i.dg              ; 2 uses
  %i.di = bitcast <8 x i16> %i.cz to <4 x i32>
  %i.dj = add <4 x i32> %i.bo, %i.di              ; 2 uses
  %i.dk = bitcast <8 x i16> %i.da to <4 x i32>
  %i.dl = add <4 x i32> %i.bp, %i.dk              ; 2 uses
  %i.dm = bitcast <8 x i16> %i.db to <4 x i32>
  %i.dn = add <4 x i32> %i.bq, %i.dm              ; 2 uses
  %i.do = bitcast <8 x i16> %i.dc to <4 x i32>
  %i.dp = add <4 x i32> %i.br, %i.do              ; 2 uses
  %i.dq = bitcast <8 x i16> %i.dd to <4 x i32>
  %i.dr = add <4 x i32> %i.bs, %i.dq              ; 2 uses
  %i.ds = bitcast <8 x i16> %i.de to <4 x i32>
  %i.dt = add <4 x i32> %i.bt, %i.ds              ; 2 uses
  %i.du = bitcast <8 x i16> %i.df to <4 x i32>
  %i.dv = add <4 x i32> %i.bu, %i.du              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01981628, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.01991627, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.02001626, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.02091625, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.01971629, i64 8
  %i.eb = add nuw nsw i32 %.02181624, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.ar
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !145

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ec = sitofp fast <4 x i32> %i.dh to <4 x float>
  %i.ed = sitofp fast <4 x i32> %i.dj to <4 x float>
  %i.ee = sitofp fast <4 x i32> %i.dl to <4 x float>
  %i.ef = sitofp fast <4 x i32> %i.dn to <4 x float>
  %i.eg = sitofp fast <4 x i32> %i.dp to <4 x float>
  %i.eh = sitofp fast <4 x i32> %i.dr to <4 x float>
  %i.ei = sitofp fast <4 x i32> %i.dt to <4 x float>
  %i.ej = sitofp fast <4 x i32> %i.dv to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.lcssa1623 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1622 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ei, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1621 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.eh, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1620 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.eg, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1619 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ef, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1618 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ee, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1617 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ed, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ec, %._crit_edge.loopexit ] ; 2 uses
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.el = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = load <4 x float>, ptr %i.em, align 1, !tbaa !49 ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !tbaa !49 ; 8 uses
  %i.eq = load i32, ptr %i.u, align 4, !tbaa !76
  %.not219 = icmp eq i32 %i.eq, 0
  br i1 %.not219, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.er = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.el ; 2 uses
  %i.et = load <4 x float>, ptr %i.es, align 1, !tbaa !49 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ev = load <4 x float>, ptr %i.eu, align 1, !tbaa !49 ; 4 uses
  %i.ew = fmul fast <4 x float> %i.en, %.lcssa
  %i.ex = fadd fast <4 x float> %i.et, %i.ew
  %i.ey = fmul fast <4 x float> %i.ep, %.lcssa1617
  %i.ez = fadd fast <4 x float> %i.ev, %i.ey
  %i.fa = fmul fast <4 x float> %i.en, %.lcssa1618
  %i.fb = fadd fast <4 x float> %i.et, %i.fa
  %i.fc = fmul fast <4 x float> %i.ep, %.lcssa1619
  %i.fd = fadd fast <4 x float> %i.ev, %i.fc
  %i.fe = fmul fast <4 x float> %i.en, %.lcssa1620
  %i.ff = fadd fast <4 x float> %i.et, %i.fe
  %i.fg = fmul fast <4 x float> %i.ep, %.lcssa1621
  %i.fh = fadd fast <4 x float> %i.ev, %i.fg
  %i.fi = fmul fast <4 x float> %i.en, %.lcssa1622
  %i.fj = fadd fast <4 x float> %i.et, %i.fi
  %i.fk = fmul fast <4 x float> %i.ep, %.lcssa1623
  %i.fl = fadd fast <4 x float> %i.ev, %i.fk
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.fm = fmul fast <4 x float> %i.en, %.lcssa
  %i.fn = fmul fast <4 x float> %i.ep, %.lcssa1617
  %i.fo = fmul fast <4 x float> %i.en, %.lcssa1618
  %i.fp = fmul fast <4 x float> %i.ep, %.lcssa1619
  %i.fq = fmul fast <4 x float> %i.en, %.lcssa1620
  %i.fr = fmul fast <4 x float> %i.ep, %.lcssa1621
  %i.fs = fmul fast <4 x float> %i.en, %.lcssa1622
  %i.ft = fmul fast <4 x float> %i.ep, %.lcssa1623
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0208 = phi nsz <4 x float> [ %i.ex, %bb.e ], [ %i.fm, %bb.f ] ; 10 uses
  %.0207 = phi nsz <4 x float> [ %i.ez, %bb.e ], [ %i.fn, %bb.f ] ; 10 uses
  %.0206 = phi nsz <4 x float> [ %i.fb, %bb.e ], [ %i.fo, %bb.f ] ; 10 uses
  %.0205 = phi nsz <4 x float> [ %i.fd, %bb.e ], [ %i.fp, %bb.f ] ; 10 uses
  %.0204 = phi nsz <4 x float> [ %i.ff, %bb.e ], [ %i.fq, %bb.f ] ; 10 uses
  %.0203 = phi nsz <4 x float> [ %i.fh, %bb.e ], [ %i.fr, %bb.f ] ; 10 uses
  %.0202 = phi nsz <4 x float> [ %i.fj, %bb.e ], [ %i.fs, %bb.f ] ; 10 uses
  %.0201 = phi nsz <4 x float> [ %i.fl, %bb.e ], [ %i.ft, %bb.f ] ; 10 uses
  %i.fu = load i32, ptr %i.w, align 8, !tbaa !63
  switch i32 %i.fu, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread: ; preds = %bb.g
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0208, <4 x float> zeroinitializer)
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0207, <4 x float> zeroinitializer)
  %i.fx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0206, <4 x float> zeroinitializer)
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0205, <4 x float> zeroinitializer)
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0204, <4 x float> zeroinitializer)
  %i.ga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0203, <4 x float> zeroinitializer)
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0202, <4 x float> zeroinitializer)
  %i.gc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0201, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176: ; preds = %bb.g
  %i.gd = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !52
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0208)
  %i.gg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0208)
  %i.gh = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.gj = fmul fast <4 x float> %i.gi, %i.gg
  %i.gk = fadd fast <4 x float> %i.gj, %i.gf
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0207)
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0207)
  %i.gn = fmul fast <4 x float> %i.gi, %i.gm
  %i.go = fadd fast <4 x float> %i.gn, %i.gl
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0206)
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0206)
  %i.gr = fmul fast <4 x float> %i.gi, %i.gq
  %i.gs = fadd fast <4 x float> %i.gr, %i.gp
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0205)
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0205)
  %i.gv = fmul fast <4 x float> %i.gi, %i.gu
  %i.gw = fadd fast <4 x float> %i.gv, %i.gt
  %i.gx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0204)
  %i.gy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0204)
  %i.gz = fmul fast <4 x float> %i.gi, %i.gy
  %i.ha = fadd fast <4 x float> %i.gz, %i.gx
  %i.hb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0203)
  %i.hc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0203)
  %i.hd = fmul fast <4 x float> %i.gi, %i.hc
  %i.he = fadd fast <4 x float> %i.hd, %i.hb
  %i.hf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0202)
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0202)
  %i.hh = fmul fast <4 x float> %i.gi, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, %i.hf
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0201)
  %i.hk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0201)
  %i.hl = fmul fast <4 x float> %i.gi, %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, %i.hj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179: ; preds = %bb.g
  %i.hn = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !52
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !52
  %i.ht = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.hv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0208, <4 x float> nofpclass(nan inf) %i.hq)
  %i.hw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> nofpclass(nan inf) %i.hu)
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0207, <4 x float> nofpclass(nan inf) %i.hq)
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> nofpclass(nan inf) %i.hu)
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0206, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hz, <4 x float> nofpclass(nan inf) %i.hu)
  %i.ib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0205, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> nofpclass(nan inf) %i.hu)
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0204, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.id, <4 x float> nofpclass(nan inf) %i.hu)
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0203, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.if, <4 x float> nofpclass(nan inf) %i.hu)
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0202, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> nofpclass(nan inf) %i.hu)
  %i.ij = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0201, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ij, <4 x float> nofpclass(nan inf) %i.hu)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182: ; preds = %bb.g
  %i.il = fneg fast <4 x float> %.0208
  %i.im = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.il, <4 x float> splat (float f0x42B0C0A5))
  %i.in = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.im, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.io = fmul fast <4 x float> %i.in, splat (float f0x3FB8AA3B)
  %i.ip = fadd fast <4 x float> %i.io, splat (float 5.000000e-01) ; 2 uses
  %i.iq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ip)
  %i.ir = sitofp fast <4 x i32> %i.iq to <4 x float> ; 2 uses
  %i.is = fcmp fast olt <4 x float> %i.ip, %i.ir
  %i.it = select <4 x i1> %i.is, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.iu = fsub fast <4 x float> %i.ir, %i.it      ; 2 uses
  %i.iv = fmul fast <4 x float> %i.iu, splat (float f0x3F317218)
  %i.iw = fsub fast <4 x float> %i.in, %i.iv      ; 8 uses
  %i.ix = fmul fast <4 x float> %i.iw, %i.iw
  %i.iy = fmul fast <4 x float> %i.iw, splat (float f0x39506967)
  %i.iz = fadd fast <4 x float> %i.iy, splat (float f0x3AB743CE)
  %i.ja = fmul fast <4 x float> %i.iz, %i.iw
  %i.jb = fadd fast <4 x float> %i.ja, splat (float f0x3C088908)
  %i.jc = fmul fast <4 x float> %i.jb, %i.iw
  %i.jd = fadd fast <4 x float> %i.jc, splat (float f0x3D2AA9C1)
  %i.je = fmul fast <4 x float> %i.jd, %i.iw
  %i.jf = fadd fast <4 x float> %i.je, splat (float f0x3E2AAAAA)
  %i.jg = fmul fast <4 x float> %i.jf, %i.iw
  %i.jh = fadd fast <4 x float> %i.jg, splat (float 5.000000e-01)
  %i.ji = fmul fast <4 x float> %i.ix, %i.jh
  %i.jj = fadd fast <4 x float> %i.iw, splat (float 1.000000e+00)
  %i.jk = fadd fast <4 x float> %i.jj, %i.ji
  %i.jl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iu)
  %i.jm = shl <4 x i32> %i.jl, splat (i32 23)
  %i.jn = add <4 x i32> %i.jm, splat (i32 1065353216)
  %i.jo = bitcast <4 x i32> %i.jn to <4 x float>
  %i.jp = fmul fast <4 x float> %i.jk, %i.jo
  %i.jq = fadd fast <4 x float> %i.jp, splat (float 1.000000e+00)
  %i.jr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.jq
  %i.js = fneg fast <4 x float> %.0207
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.js, <4 x float> splat (float f0x42B0C0A5))
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jv = fmul fast <4 x float> %i.ju, splat (float f0x3FB8AA3B)
end_hunk_3
begin_hunk_4_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.atz = sitofp fast <4 x i32> %i.aty to <4 x float> ; 2 uses
  %i.aua = fcmp fast olt <4 x float> %i.atx, %i.atz
  %i.aub = select <4 x i1> %i.aua, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.auc = fsub fast <4 x float> %i.atz, %i.aub   ; 2 uses
  %i.aud = fmul fast <4 x float> %i.auc, splat (float f0x3F317218)
  %i.aue = fsub fast <4 x float> %i.atv, %i.aud   ; 8 uses
  %i.auf = fmul fast <4 x float> %i.aue, %i.aue
  %i.aug = fmul fast <4 x float> %i.aue, splat (float f0x39506967)
  %i.auh = fadd fast <4 x float> %i.aug, splat (float f0x3AB743CE)
  %i.aui = fmul fast <4 x float> %i.auh, %i.aue
  %i.auj = fadd fast <4 x float> %i.aui, splat (float f0x3C088908)
  %i.auk = fmul fast <4 x float> %i.auj, %i.aue
  %i.aul = fadd fast <4 x float> %i.auk, splat (float f0x3D2AA9C1)
  %i.aum = fmul fast <4 x float> %i.aul, %i.aue
  %i.aun = fadd fast <4 x float> %i.aum, splat (float f0x3E2AAAAA)
  %i.auo = fmul fast <4 x float> %i.aun, %i.aue
  %i.aup = fadd fast <4 x float> %i.auo, splat (float 5.000000e-01)
  %i.auq = fmul fast <4 x float> %i.auf, %i.aup
  %i.aur = fadd fast <4 x float> %i.aue, splat (float 1.000000e+00)
  %i.aus = fadd fast <4 x float> %i.aur, %i.auq
  %i.aut = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.auc)
  %i.auu = shl <4 x i32> %i.aut, splat (i32 23)
  %i.auv = add <4 x i32> %i.auu, splat (i32 1065353216)
  %i.auw = bitcast <4 x i32> %i.auv to <4 x float>
  %i.aux = fmul fast <4 x float> %i.aus, %i.auw
  %i.auy = fadd fast <4 x float> %i.aux, splat (float 1.000000e+00) ; 2 uses
  %i.auz = fcmp fast ole <4 x float> %i.auy, zeroinitializer
  %i.ava = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.auy, <4 x float> splat (float f0x00800000))
  %i.avb = bitcast <4 x float> %i.ava to <4 x i32> ; 2 uses
  %i.avc = lshr <4 x i32> %i.avb, splat (i32 23)
  %i.avd = and <4 x i32> %i.avb, splat (i32 -2139095041)
  %i.ave = or disjoint <4 x i32> %i.avd, splat (i32 1056964608)
  %i.avf = bitcast <4 x i32> %i.ave to <4 x float> ; 3 uses
  %i.avg = add nsw <4 x i32> %i.avc, splat (i32 -127)
  %i.avh = sitofp fast <4 x i32> %i.avg to <4 x float> ; 2 uses
  %i.avi = fadd fast <4 x float> %i.avh, splat (float 1.000000e+00)
  %i.avj = fcmp fast olt <4 x float> %i.avf, splat (float f0x3F3504F3) ; 2 uses
  %i.avk = select <4 x i1> %i.avj, <4 x float> %i.avf, <4 x float> zeroinitializer
  %i.avl = fadd fast <4 x float> %i.avf, splat (float -1.000000e+00)
  %i.avm = select fast <4 x i1> %i.avj, <4 x float> %i.avh, <4 x float> %i.avi
  %i.avn = fadd fast <4 x float> %i.avl, %i.avk   ; 12 uses
  %i.avo = fmul fast <4 x float> %i.avn, %i.avn
  %i.avp = fmul fast <4 x float> %i.avn, splat (float f0x3D9021BB)
  %i.avq = fadd fast <4 x float> %i.avp, splat (float f0xBDEBD1B8)
  %i.avr = fmul fast <4 x float> %i.avq, %i.avn
  %i.avs = fadd fast <4 x float> %i.avr, splat (float f0x3DEF251A)
  %i.avt = fmul fast <4 x float> %i.avs, %i.avn
  %i.avu = fadd fast <4 x float> %i.avt, splat (float f0xBDFE5D4F)
  %i.avv = fmul fast <4 x float> %i.avu, %i.avn
  %i.avw = fadd fast <4 x float> %i.avv, splat (float f0x3E11E9BF)
  %i.avx = fmul fast <4 x float> %i.avw, %i.avn
  %i.avy = fadd fast <4 x float> %i.avx, splat (float f0xBE2AAE50)
  %i.avz = fmul fast <4 x float> %i.avy, %i.avn
  %i.awa = fadd fast <4 x float> %i.avz, splat (float f0x3E4CCEAC)
  %i.awb = fmul fast <4 x float> %i.awa, %i.avn
  %i.awc = fadd fast <4 x float> %i.awb, splat (float f0xBE7FFFFC)
  %i.awd = fmul fast <4 x float> %i.awc, %i.avn
  %i.awe = fadd fast <4 x float> %i.awd, splat (float f0x3EAAAAAA)
  %i.awf = fmul fast <4 x float> %i.awe, %i.avn
  %reass.mul1600 = fmul fast <4 x float> %i.avm, splat (float f0x3F317218)
  %reass.add1615 = fadd fast <4 x float> %i.awf, splat (float -5.000000e-01)
  %reass.mul1616 = fmul fast <4 x float> %i.avo, %reass.add1615
  %i.awg = fadd fast <4 x float> %reass.mul1600, %i.avn
  %i.awh = fadd fast <4 x float> %i.awg, %reass.mul1616
  %.neg1578 = fmul fast <4 x float> %i.awh, splat (float -2.000000e+00)
  %i.awi = select fast <4 x i1> %i.auz, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1578
  %i.awj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.awi, <4 x float> splat (float f0x42B0C0A5))
  %i.awk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.awj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.awl = fmul fast <4 x float> %i.awk, splat (float f0x3FB8AA3B)
  %i.awm = fadd fast <4 x float> %i.awl, splat (float 5.000000e-01) ; 2 uses
  %i.awn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awm)
  %i.awo = sitofp fast <4 x i32> %i.awn to <4 x float> ; 2 uses
  %i.awp = fcmp fast olt <4 x float> %i.awm, %i.awo
  %i.awq = select <4 x i1> %i.awp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.awr = fsub fast <4 x float> %i.awo, %i.awq   ; 2 uses
  %i.aws = fmul fast <4 x float> %i.awr, splat (float f0x3F317218)
  %i.awt = fsub fast <4 x float> %i.awk, %i.aws   ; 8 uses
  %i.awu = fmul fast <4 x float> %i.awt, %i.awt
  %i.awv = fmul fast <4 x float> %i.awt, splat (float f0x39506967)
  %i.aww = fadd fast <4 x float> %i.awv, splat (float f0x3AB743CE)
  %i.awx = fmul fast <4 x float> %i.aww, %i.awt
  %i.awy = fadd fast <4 x float> %i.awx, splat (float f0x3C088908)
  %i.awz = fmul fast <4 x float> %i.awy, %i.awt
  %i.axa = fadd fast <4 x float> %i.awz, splat (float f0x3D2AA9C1)
  %i.axb = fmul fast <4 x float> %i.axa, %i.awt
  %i.axc = fadd fast <4 x float> %i.axb, splat (float f0x3E2AAAAA)
  %i.axd = fmul fast <4 x float> %i.axc, %i.awt
  %i.axe = fadd fast <4 x float> %i.axd, splat (float 5.000000e-01)
  %i.axf = fmul fast <4 x float> %i.awu, %i.axe
  %i.axg = fadd fast <4 x float> %i.awt, splat (float 1.000000e+00)
  %i.axh = fadd fast <4 x float> %i.axg, %i.axf
  %i.axi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awr)
  %i.axj = shl <4 x i32> %i.axi, splat (i32 23)
  %i.axk = add <4 x i32> %i.axj, splat (i32 1065353216)
  %i.axl = bitcast <4 x i32> %i.axk to <4 x float>
  %i.axm = fmul fast <4 x float> %i.axh, %i.axl
  %i.axn = fadd fast <4 x float> %i.axm, splat (float 1.000000e+00)
  %i.axo = fdiv fast <4 x float> splat (float 2.000000e+00), %i.axn
  %i.axp = fadd fast <4 x float> %i.axo, splat (float -1.000000e+00)
  %i.axq = fmul fast <4 x float> %i.axp, %.0201
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188: ; preds = %bb.g
  %i.axr = load ptr, ptr %i.x, align 8, !tbaa !19 ; 2 uses
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !52
  %i.axt = insertelement <4 x float> poison, float %i.axs, i64 0
  %i.axu = shufflevector <4 x float> %i.axt, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axr, i64 4
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !52
  %i.axx = insertelement <4 x float> poison, float %i.axw, i64 0
  %i.axy = shufflevector <4 x float> %i.axx, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.axz = fmul fast <4 x float> %i.axu, %.0208
  %i.aya = fadd fast <4 x float> %i.axz, %i.axy
  %i.ayb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aya, <4 x float> zeroinitializer)
  %i.ayc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayb, <4 x float> splat (float 1.000000e+00))
  %i.ayd = fmul fast <4 x float> %i.ayc, %.0208
  %i.aye = fmul fast <4 x float> %i.axu, %.0207
  %i.ayf = fadd fast <4 x float> %i.aye, %i.axy
  %i.ayg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayf, <4 x float> zeroinitializer)
  %i.ayh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayg, <4 x float> splat (float 1.000000e+00))
  %i.ayi = fmul fast <4 x float> %i.ayh, %.0207
  %i.ayj = fmul fast <4 x float> %i.axu, %.0206
  %i.ayk = fadd fast <4 x float> %i.ayj, %i.axy
  %i.ayl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayk, <4 x float> zeroinitializer)
  %i.aym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayl, <4 x float> splat (float 1.000000e+00))
  %i.ayn = fmul fast <4 x float> %i.aym, %.0206
  %i.ayo = fmul fast <4 x float> %i.axu, %.0205
  %i.ayp = fadd fast <4 x float> %i.ayo, %i.axy
  %i.ayq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayp, <4 x float> zeroinitializer)
  %i.ayr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayq, <4 x float> splat (float 1.000000e+00))
  %i.ays = fmul fast <4 x float> %i.ayr, %.0205
  %i.ayt = fmul fast <4 x float> %i.axu, %.0204
  %i.ayu = fadd fast <4 x float> %i.ayt, %i.axy
  %i.ayv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayu, <4 x float> zeroinitializer)
  %i.ayw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayv, <4 x float> splat (float 1.000000e+00))
  %i.ayx = fmul fast <4 x float> %i.ayw, %.0204
  %i.ayy = fmul fast <4 x float> %i.axu, %.0203
  %i.ayz = fadd fast <4 x float> %i.ayy, %i.axy
  %i.aza = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayz, <4 x float> zeroinitializer)
  %i.azb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aza, <4 x float> splat (float 1.000000e+00))
  %i.azc = fmul fast <4 x float> %i.azb, %.0203
  %i.azd = fmul fast <4 x float> %i.axu, %.0202
  %i.aze = fadd fast <4 x float> %i.azd, %i.axy
  %i.azf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aze, <4 x float> zeroinitializer)
  %i.azg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.azf, <4 x float> splat (float 1.000000e+00))
  %i.azh = fmul fast <4 x float> %i.azg, %.0202
  %i.azi = fmul fast <4 x float> %i.axu, %.0201
  %i.azj = fadd fast <4 x float> %i.azi, %i.axy
  %i.azk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azj, <4 x float> zeroinitializer)
  %i.azl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.azk, <4 x float> splat (float 1.000000e+00))
  %i.azm = fmul fast <4 x float> %i.azl, %.0201
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread
  %.0.i2231496 = phi <4 x float> [ %i.azh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.gb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.hi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ii, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.rh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.att, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0202, %bb.g ] ; 2 uses
  %.0.i235133714001494 = phi <4 x float> [ %i.ayx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.ha, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ie, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.ot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.alz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0204, %bb.g ] ; 2 uses
  %.0.i24712301271133514021492 = phi <4 x float> [ %i.ayn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.gs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ia, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.mf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.aef, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0206, %bb.g ] ; 2 uses
  %.0.i2591175119412281273133314041490 = phi <4 x float> [ %i.ayd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.gk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.hw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.jr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.wl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0208, %bb.g ] ; 2 uses
  %.0.i253119612261275133114061488 = phi <4 x float> [ %i.ayi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.go, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.hy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.ky, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.aai, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0207, %bb.g ] ; 2 uses
  %.0.i2411277132914081486 = phi <4 x float> [ %i.ays, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.gw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ic, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.nm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.aic, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0205, %bb.g ] ; 2 uses
  %.0.i22914101484 = phi <4 x float> [ %i.azc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.ga, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.he, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ig, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.qa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.apw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0203, %bb.g ] ; 2 uses
  %.0.i = phi nsz <4 x float> [ %i.azm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.gc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.hm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ik, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.so, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.axq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0201, %bb.g ] ; 2 uses
  %i.azn = shufflevector <4 x float> %.0.i2591175119412281273133314041490, <4 x float> %.0.i24712301271133514021492, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azo = shufflevector <4 x float> %.0.i235133714001494, <4 x float> %.0.i2231496, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azp = shufflevector <4 x float> %.0.i2591175119412281273133314041490, <4 x float> %.0.i24712301271133514021492, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azq = shufflevector <4 x float> %.0.i235133714001494, <4 x float> %.0.i2231496, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azr = shufflevector <4 x float> %i.azn, <4 x float> %i.azo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.azs = shufflevector <4 x float> %i.azo, <4 x float> %i.azn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.azt = shufflevector <4 x float> %i.azp, <4 x float> %i.azq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.azu = shufflevector <4 x float> %i.azq, <4 x float> %i.azp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.azv = shufflevector <4 x float> %.0.i253119612261275133114061488, <4 x float> %.0.i2411277132914081486, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azw = shufflevector <4 x float> %.0.i22914101484, <4 x float> %.0.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azx = shufflevector <4 x float> %.0.i253119612261275133114061488, <4 x float> %.0.i2411277132914081486, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azy = shufflevector <4 x float> %.0.i22914101484, <4 x float> %.0.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azz = shufflevector <4 x float> %i.azv, <4 x float> %i.azw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.baa = shufflevector <4 x float> %i.azw, <4 x float> %i.azv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bab = shufflevector <4 x float> %i.azx, <4 x float> %i.azy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bac = shufflevector <4 x float> %i.azy, <4 x float> %i.azx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.azr, ptr %.01951638, align 1, !tbaa !49
  %i.bad = getelementptr inbounds nuw i8, ptr %.01951638, i64 16
  store <4 x float> %i.azs, ptr %i.bad, align 1, !tbaa !49
  %i.bae = getelementptr inbounds nuw i8, ptr %.01951638, i64 32
  store <4 x float> %i.azt, ptr %i.bae, align 1, !tbaa !49
  %i.baf = getelementptr inbounds nuw i8, ptr %.01951638, i64 48
  store <4 x float> %i.azu, ptr %i.baf, align 1, !tbaa !49
  %i.bag = getelementptr inbounds nuw i8, ptr %.01951638, i64 64
  store <4 x float> %i.azz, ptr %i.bag, align 1, !tbaa !49
  %i.bah = getelementptr inbounds nuw i8, ptr %.01951638, i64 80
  store <4 x float> %i.baa, ptr %i.bah, align 1, !tbaa !49
  %i.bai = getelementptr inbounds nuw i8, ptr %.01951638, i64 96
  store <4 x float> %i.bab, ptr %i.bai, align 1, !tbaa !49
  %i.baj = getelementptr inbounds nuw i8, ptr %.01951638, i64 112
  store <4 x float> %i.bac, ptr %i.baj, align 1, !tbaa !49
  %i.bak = getelementptr inbounds nuw i8, ptr %.01951638, i64 128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bal = load i32, ptr %i.n, align 8, !tbaa !45 ; 2 uses
  %i.bam = load i32, ptr %5, align 4, !tbaa !57   ; 2 uses
  %i.ban = sdiv i32 %i.bal, %i.bam
  %i.bao = sext i32 %i.ban to i64
  %i.bap = icmp slt i64 %indvars.iv.next, %i.bao
  br i1 %i.bap, label %bb.d, label %._crit_edge1641, !llvm.loop !146

._crit_edge1646:                                  ; preds = %._crit_edge1641, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge1646, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not209 = icmp sgt i32 %i.k, %i.j
  br i1 %.not209, label %._crit_edge213.split, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %factor.op.mul214 = mul i64 %i.q, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  br i1 %i.t, label %.lr.ph212.split, label %._crit_edge213.split

.lr.ph212.split:                                  ; preds = %.lr.ph212
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.ah, %i.ag
  %i.ai = load ptr, ptr %5, align 8, !tbaa !19    ; 4 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i64, ptr %i.z, align 8, !tbaa !48
  %i.am = mul i64 %i.al, %i.ak                    ; 4 uses
  %i.an = load i32, ptr %6, align 4, !tbaa !57    ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.x, align 4, !tbaa !76
  %.not79 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !63
  %i.as = sext i32 %i.k to i64
  %i.at = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.au = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  %n.vec = and i64 %i.au, 2147483644              ; 8 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph212.split, %._crit_edge208
  %indvars.iv221 = phi i64 [ %i.as, %.lr.ph212.split ], [ %indvars.iv.next222, %._crit_edge208 ] ; 3 uses
  %.reass215 = mul i64 %factor.op.mul214, %indvars.iv221
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass215
  %i.ax = shl nsw i64 %indvars.iv221, 2           ; 4 uses
  %i.ay = mul i64 %i.am, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ay ; 3 uses
  %i.ba = or disjoint i64 %i.ax, 1
  %i.bb = mul i64 %i.am, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bb ; 3 uses
  %i.bd = or disjoint i64 %i.ax, 2
  %i.be = mul i64 %i.am, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.be ; 3 uses
  %i.bg = or disjoint i64 %i.ax, 3
  %i.bh = mul i64 %i.am, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %n.vec
  %i.bk = getelementptr i8, ptr %i.bf, i64 %n.vec
  %i.bl = getelementptr i8, ptr %i.bc, i64 %n.vec
  %i.bm = getelementptr i8, ptr %i.az, i64 %n.vec
  br label %bb.c

._crit_edge208:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next222 to i32
  %exitcond224.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond224.not, label %._crit_edge213.split, label %.lr.ph207

bb.c:                                             ; preds = %.lr.ph207, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %.077204 = phi ptr [ %i.aw, %.lr.ph207 ], [ %i.jg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 20 uses
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader260, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bo = getelementptr i8, ptr %i.bn, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi241 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi242 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep244 = getelementptr i8, ptr %i.bf, i64 %index
  %next.gep245 = getelementptr i8, ptr %i.bc, i64 %index
  %next.gep246 = getelementptr i8, ptr %i.az, i64 %index
  %next.gep247 = getelementptr i8, ptr %i.bn, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep246, align 1, !tbaa !49
  %i.bp = sext <4 x i8> %wide.load to <4 x i32>
  %wide.load248 = load <4 x i8>, ptr %next.gep247, align 1, !tbaa !49
  %i.bq = sext <4 x i8> %wide.load248 to <4 x i32> ; 4 uses
  %i.br = mul nsw <4 x i32> %i.bq, %i.bp
  %i.bs = add <4 x i32> %i.br, %vec.phi243        ; 2 uses
  %wide.load249 = load <4 x i8>, ptr %next.gep245, align 1, !tbaa !49
  %i.bt = sext <4 x i8> %wide.load249 to <4 x i32>
  %i.bu = mul nsw <4 x i32> %i.bt, %i.bq
  %i.bv = add <4 x i32> %i.bu, %vec.phi242        ; 2 uses
  %wide.load250 = load <4 x i8>, ptr %next.gep244, align 1, !tbaa !49
  %i.bw = sext <4 x i8> %wide.load250 to <4 x i32>
  %i.bx = mul nsw <4 x i32> %i.bw, %i.bq
  %i.by = add <4 x i32> %i.bx, %vec.phi241        ; 2 uses
  %wide.load251 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %i.bz = sext <4 x i8> %wide.load251 to <4 x i32>
  %i.ca = mul nsw <4 x i32> %i.bz, %i.bq
  %i.cb = add <4 x i32> %i.ca, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %i.cd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cb) ; 2 uses
  %i.ce = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.by) ; 2 uses
  %i.cf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bv) ; 2 uses
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bs) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader260

.lr.ph.preheader260:                              ; preds = %.lr.ph.preheader, %middle.block
  %.066200.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  %.067199.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cd, %middle.block ]
  %.068198.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ce, %middle.block ]
  %.069197.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cf, %middle.block ]
  %.070196.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cg, %middle.block ]
  %.071195.ph = phi ptr [ %i.bi, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  %.072194.ph = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.bk, %middle.block ]
  %.073193.ph = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  %.074192.ph = phi ptr [ %i.az, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  %.075191.ph = phi ptr [ %i.bn, %.lr.ph.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader260, %.lr.ph
  %.066200 = phi i32 [ %i.de, %.lr.ph ], [ %.066200.ph, %.lr.ph.preheader260 ]
  %.067199 = phi i32 [ %i.dc, %.lr.ph ], [ %.067199.ph, %.lr.ph.preheader260 ]
  %.068198 = phi i32 [ %i.cx, %.lr.ph ], [ %.068198.ph, %.lr.ph.preheader260 ]
  %.069197 = phi i32 [ %i.cs, %.lr.ph ], [ %.069197.ph, %.lr.ph.preheader260 ]
  %.070196 = phi i32 [ %i.cp, %.lr.ph ], [ %.070196.ph, %.lr.ph.preheader260 ]
  %.071195 = phi ptr [ %i.cy, %.lr.ph ], [ %.071195.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.072194 = phi ptr [ %i.ct, %.lr.ph ], [ %.072194.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.073193 = phi ptr [ %i.cl, %.lr.ph ], [ %.073193.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.074192 = phi ptr [ %i.ch, %.lr.ph ], [ %.074192.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.075191 = phi ptr [ %i.dd, %.lr.ph ], [ %.075191.ph, %.lr.ph.preheader260 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.074192, i64 1
  %i.ci = load i8, ptr %.074192, align 1, !tbaa !49
  %i.cj = load i8, ptr %.075191, align 1, !tbaa !49
  %i.ck = sext i8 %i.cj to i32                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.073193, i64 1
  %i.cm = load i8, ptr %.073193, align 1, !tbaa !49
  %i.cn = sext i8 %i.ci to i32
  %i.co = mul nsw i32 %i.ck, %i.cn
  %i.cp = add nsw i32 %i.co, %.070196             ; 2 uses
  %i.cq = sext i8 %i.cm to i32
  %i.cr = mul nsw i32 %i.cq, %i.ck
  %i.cs = add nsw i32 %i.cr, %.069197             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.072194, i64 1
  %i.cu = load i8, ptr %.072194, align 1, !tbaa !49
  %i.cv = sext i8 %i.cu to i32
  %i.cw = mul nsw i32 %i.cv, %i.ck
  %i.cx = add nsw i32 %i.cw, %.068198             ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.071195, i64 1
  %i.cz = load i8, ptr %.071195, align 1, !tbaa !49
  %i.da = sext i8 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.ck
  %i.dc = add nsw i32 %i.db, %.067199             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.075191, i64 1
  %i.de = add nuw nsw i32 %.066200, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !148

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa240 = phi i32 [ %i.cg, %middle.block ], [ %i.cp, %.lr.ph ]
  %.lcssa239 = phi i32 [ %i.cf, %middle.block ], [ %i.cs, %.lr.ph ]
  %.lcssa238 = phi i32 [ %i.ce, %middle.block ], [ %i.cx, %.lr.ph ]
  %.lcssa = phi i32 [ %i.cd, %middle.block ], [ %i.dc, %.lr.ph ]
  %i.df = insertelement <2 x i32> poison, i32 %.lcssa240, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %.lcssa239, i64 1
  %i.dh = sitofp fast <2 x i32> %i.dg to <2 x float>
  %i.di = sitofp fast i32 %.lcssa238 to float
  %i.dj = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.068.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.di, %._crit_edge.loopexit ]
  %.067.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dj, %._crit_edge.loopexit ]
  %i.dk = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.dh, %._crit_edge.loopexit ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !52 ; 3 uses
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul fast <2 x float> %i.do, %i.dk      ; 2 uses
  %i.dq = fmul fast float %i.dm, %.068.lcssa      ; 2 uses
  %i.dr = fmul fast float %i.dm, %.067.lcssa      ; 2 uses
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv
  %i.du = load float, ptr %i.dt, align 4, !tbaa !52 ; 3 uses
  %i.dv = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fadd fast <2 x float> %i.dw, %i.dp
  %i.dy = fadd fast float %i.du, %i.dq
  %i.dz = fadd fast float %i.du, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.063 = phi nsz float [ %i.dy, %bb.d ], [ %i.dq, %._crit_edge ] ; 13 uses
  %.0 = phi nsz float [ %i.dz, %bb.d ], [ %i.dr, %._crit_edge ] ; 13 uses
  %i.ea = phi <2 x float> [ %i.dx, %bb.d ], [ %i.dp, %._crit_edge ] ; 13 uses
  switch i32 %i.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163
    i32 6, label %bb.f
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157: ; preds = %bb.e
  %i.eb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ea, <2 x float> zeroinitializer)
  store <2 x float> %i.eb, ptr %.077204, align 4, !tbaa !52
  %i.ec = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.063, float 0.000000e+00)
  %i.ed = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %i.ec, ptr %i.ed, align 4, !tbaa !52
  %i.ee = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159: ; preds = %bb.e
  %i.ef = load ptr, ptr %i.v, align 8, !tbaa !19  ; 4 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !52
  %i.eh = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.ei = fcmp fast ogt float %i.eh, 0.000000e+00
  %i.ej = select fast i1 %i.ei, float 1.000000e+00, float %i.eg
  %i.ek = fmul fast float %i.ej, %i.eh
  store float %i.ek, ptr %.077204, align 4, !tbaa !52
  %i.el = load float, ptr %i.ef, align 4, !tbaa !52
  %i.em = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.en = fcmp fast ogt float %i.em, 0.000000e+00
  %i.eo = select fast i1 %i.en, float 1.000000e+00, float %i.el
  %i.ep = fmul fast float %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  store float %i.ep, ptr %i.eq, align 4, !tbaa !52
  %i.er = load float, ptr %i.ef, align 4, !tbaa !52
  %i.es = fcmp fast ogt float %.063, 0.000000e+00
  %i.et = select fast i1 %i.es, float 1.000000e+00, float %i.er
  %i.eu = fmul fast float %i.et, %.063
  %i.ev = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %i.eu, ptr %i.ev, align 4, !tbaa !52
  %i.ew = load float, ptr %i.ef, align 4, !tbaa !52
  %i.ex = fcmp fast ogt float %.0, 0.000000e+00
  %i.ey = select fast i1 %i.ex, float 1.000000e+00, float %i.ew
  %i.ez = fmul fast float %i.ey, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155: ; preds = %bb.e
  %i.fa = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !52
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 4 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !52 ; 2 uses
  %i.fe = extractelement <2 x float> %i.ea, i64 0
  %.0145 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fe, float %i.fb) ; 2 uses
  %i.ff = fcmp fast ogt float %.0145, %i.fd
  %.1.ph154 = select i1 %i.ff, float %i.fd, float %.0145
  store float %.1.ph154, ptr %.077204, align 4, !tbaa !52
  %i.fg = load float, ptr %i.fa, align 4, !tbaa !52
  %i.fh = load float, ptr %i.fc, align 4, !tbaa !52 ; 2 uses
  %i.fi = extractelement <2 x float> %i.ea, i64 1
  %.0146 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fi, float %i.fg) ; 2 uses
  %i.fj = fcmp fast ogt float %.0146, %i.fh
  %.1147.ph167 = select i1 %i.fj, float %i.fh, float %.0146
  %i.fk = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  store float %.1147.ph167, ptr %i.fk, align 4, !tbaa !52
  %i.fl = load float, ptr %i.fa, align 4, !tbaa !52
  %i.fm = load float, ptr %i.fc, align 4, !tbaa !52 ; 2 uses
  %.0150 = call nnan ninf nsz float @llvm.maxnum.f32(float %.063, float %i.fl) ; 2 uses
  %i.fn = fcmp fast ogt float %.0150, %i.fm
  %.1151.ph180 = select i1 %i.fn, float %i.fm, float %.0150
  %i.fo = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %.1151.ph180, ptr %i.fo, align 4, !tbaa !52
  %i.fp = load float, ptr %i.fa, align 4, !tbaa !52
  %i.fq = load float, ptr %i.fc, align 4, !tbaa !52 ; 2 uses
  %.0148 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.fp) ; 2 uses
  %i.fr = fcmp fast ogt float %.0148, %i.fq
  br i1 %i.fr, label %bb.m, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161: ; preds = %bb.e
  %i.fs = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  %i.ft = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fu = insertelement <4 x float> %i.ft, float %.063, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %.0, i64 3
  %i.fw = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fv, <4 x float> splat (float f0x42B0C0A5))
  %i.fx = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fw, <4 x float> splat (float f0xC2B0C0A5))
  %i.fy = fneg fast <4 x float> %i.fx
  %i.fz = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fy)
  %i.ga = fadd fast <4 x float> %i.fz, splat (float 1.000000e+00)
  %i.gb = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ga ; 3 uses
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.gc, ptr %.077204, align 4, !tbaa !52
  %i.gd = extractelement <4 x float> %i.gb, i64 2
  store float %i.gd, ptr %i.fs, align 4, !tbaa !52
  %i.ge = extractelement <4 x float> %i.gb, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163: ; preds = %bb.e
  %i.gf = extractelement <2 x float> %i.ea, i64 0
  %i.gg = extractelement <2 x float> %i.ea, i64 1
  %i.gh = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gf)
  %i.gi = fadd fast float %i.gh, 1.000000e+00
  %i.gj = call fast float @llvm.log.f32(float %i.gi)
  %i.gk = call fast float @llvm.tanh.f32(float %i.gj)
  %i.gl = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gg)
  %i.gm = fadd fast float %i.gl, 1.000000e+00
  %i.gn = call fast float @llvm.log.f32(float %i.gm)
  %i.go = call fast float @llvm.tanh.f32(float %i.gn)
  %i.gp = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.go, i64 1
  %i.gr = fmul fast <2 x float> %i.gq, %i.ea
  store <2 x float> %i.gr, ptr %.077204, align 4, !tbaa !52
  %i.gs = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.063)
  %i.gt = fadd fast float %i.gs, 1.000000e+00
  %i.gu = call fast float @llvm.log.f32(float %i.gt)
  %i.gv = call fast float @llvm.tanh.f32(float %i.gu)
  %i.gw = fmul fast float %i.gv, %.063
  %i.gx = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %i.gw, ptr %i.gx, align 4, !tbaa !52
  %i.gy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.gz = fadd fast float %i.gy, 1.000000e+00
  %i.ha = call fast float @llvm.log.f32(float %i.gz)
  %i.hb = call fast float @llvm.tanh.f32(float %i.ha)
  %i.hc = fmul fast float %i.hb, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %bb.e
  %i.hd = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !52 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 4 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !52 ; 2 uses
  %i.hh = fneg fast float %i.hg
  %i.hi = fdiv fast float %i.hh, %i.he            ; 2 uses
  %i.hj = extractelement <2 x float> %i.ea, i64 0 ; 5 uses
  %i.hk = fcmp fast olt float %i.hj, %i.hi
  br i1 %i.hk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hl = fdiv fast float 1.000000e+00, %i.he
  %i.hm = fadd fast float %i.hi, %i.hl
  %i.hn = fcmp fast ogt float %i.hj, %i.hm
  br i1 %i.hn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ho = fmul fast float %i.he, %i.hj
  %i.hp = fadd fast float %i.ho, %i.hg
  %i.hq = fmul fast float %i.hp, %i.hj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread:  ; preds = %bb.h, %bb.g, %bb.f
  %.1.ph = phi float [ 0.000000e+00, %bb.f ], [ %i.hj, %bb.g ], [ %i.hq, %bb.h ]
  store float %.1.ph, ptr %.077204, align 4, !tbaa !52
  %i.hr = load float, ptr %i.hd, align 4, !tbaa !52 ; 3 uses
  %i.hs = load float, ptr %i.hf, align 4, !tbaa !52 ; 2 uses
  %i.ht = fneg fast float %i.hs
  %i.hu = fdiv fast float %i.ht, %i.hr            ; 2 uses
  %i.hv = extractelement <2 x float> %i.ea, i64 1 ; 5 uses
  %i.hw = fcmp fast olt float %i.hv, %i.hu
  br i1 %i.hw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit82:         ; preds = %bb.e
  %i.hx = extractelement <2 x float> %i.ea, i64 0
  store float %i.hx, ptr %.077204, align 4, !tbaa !52
  %i.hy = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  %i.hz = extractelement <2 x float> %i.ea, i64 1
  store float %i.hz, ptr %i.hy, align 4, !tbaa !52
  %i.ia = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %.063, ptr %i.ia, align 4, !tbaa !52
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread
  %i.ib = fdiv fast float 1.000000e+00, %i.hr
  %i.ic = fadd fast float %i.hu, %i.ib
  %i.id = fcmp fast ogt float %i.hv, %i.ic
  br i1 %i.id, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ie = fmul fast float %i.hr, %i.hv
  %i.if = fadd fast float %i.ie, %i.hs
  %i.ig = fmul fast float %i.if, %i.hv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread:  ; preds = %bb.j, %bb.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread
  %.1147.ph = phi float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread ], [ %i.hv, %bb.i ], [ %i.ig, %bb.j ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  store float %.1147.ph, ptr %i.ih, align 4, !tbaa !52
  %i.ii = load float, ptr %i.hd, align 4, !tbaa !52 ; 3 uses
  %i.ij = load float, ptr %i.hf, align 4, !tbaa !52 ; 2 uses
  %i.ik = fneg fast float %i.ij
  %i.il = fdiv fast float %i.ik, %i.ii            ; 2 uses
  %i.im = fcmp fast olt float %.063, %i.il
  br i1 %i.im, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread, label %bb.k

bb.k:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread
  %i.in = fdiv fast float 1.000000e+00, %i.ii
  %i.io = fadd fast float %i.il, %i.in
  %i.ip = fcmp fast ogt float %.063, %i.io
  br i1 %i.ip, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iq = fmul fast float %i.ii, %.063
  %i.ir = fadd fast float %i.iq, %i.ij
  %i.is = fmul fast float %i.ir, %.063
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread:  ; preds = %bb.l, %bb.k, %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread
  %.1151.ph = phi float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread ], [ %.063, %bb.k ], [ %i.is, %bb.l ]
  %i.it = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %.1151.ph, ptr %i.it, align 4, !tbaa !52
  %i.iu = load float, ptr %i.hd, align 4, !tbaa !52 ; 3 uses
  %i.iv = load float, ptr %i.hf, align 4, !tbaa !52 ; 2 uses
  %i.iw = fneg fast float %i.iv
  %i.ix = fdiv fast float %i.iw, %i.iu            ; 2 uses
  %i.iy = fcmp fast olt float %.0, %i.ix
  br i1 %i.iy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.m:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread
  %i.iz = fdiv fast float 1.000000e+00, %i.iu
  %i.ja = fadd fast float %i.ix, %i.iz
  %i.jb = fcmp fast ogt float %.0, %i.ja
  br i1 %i.jb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jc = fmul fast float %i.iu, %.0
  %i.jd = fadd fast float %i.jc, %i.iv
  %i.je = fmul fast float %i.jd, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82, %bb.o, %bb.n, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161, %bb.m, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157, %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread
  %.1149 = phi nsz float [ %.0, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 ], [ %i.ee, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157 ], [ %i.ez, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159 ], [ %i.fq, %bb.m ], [ %.0148, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155 ], [ %i.ge, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161 ], [ %i.hc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163 ], [ %i.je, %bb.o ], [ %.0, %bb.n ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.077204, i64 12
  store float %.1149, ptr %i.jf, align 4, !tbaa !52
  %i.jg = getelementptr inbounds nuw i8, ptr %.077204, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond220.not, label %._crit_edge208, label %bb.c, !llvm.loop !149

._crit_edge213.split:                             ; preds = %._crit_edge208, %.lr.ph212, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge213.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not344 = icmp sgt i32 %i.k, %i.j
  br i1 %.not344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %i.n, align 8, !tbaa !45
  %.pre356 = load i32, ptr %5, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph347, %._crit_edge343
  %i.aa = phi i32 [ %.pre356, %.lr.ph347 ], [ %i.al, %._crit_edge343 ] ; 2 uses
  %i.ab = phi i32 [ %.pre, %.lr.ph347 ], [ %i.am, %._crit_edge343 ] ; 2 uses
  %indvars.iv352 = phi i64 [ %i.y, %.lr.ph347 ], [ %indvars.iv.next353, %._crit_edge343 ] ; 3 uses
  %i.ac = sdiv i32 %i.ab, %i.aa
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph342.preheader, label %._crit_edge343

.lr.ph342.preheader:                              ; preds = %bb.c
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  %i.af = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv352, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  br label %.lr.ph342

._crit_edge343:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.c
  %i.al = phi i32 [ %i.aa, %bb.c ], [ %i.ox, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.am = phi i32 [ %i.ab, %bb.c ], [ %i.ow, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %indvars.iv.next353 = add nsw i64 %indvars.iv352, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next353 to i32
  %exitcond355.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond355.not, label %._crit_edge348, label %bb.c

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph342.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.066340 = phi ptr [ %i.ak, %.lr.ph342.preheader ], [ %i.ov, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !57    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph342
  %i.ap = load ptr, ptr %6, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !47
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %indvars.iv352, %i.ar
  %i.at = load i64, ptr %i.s, align 8, !tbaa !48
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %indvars.iv, %i.ay
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !48
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.068337 = phi ptr [ %i.bx, %.lr.ph ], [ %i.bc, %.lr.ph.preheader ] ; 2 uses
  %.069336 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bd = phi <4 x i32> [ %i.bv, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.be = phi <4 x i32> [ %i.bt, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.072335 = phi ptr [ %i.bw, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 2 uses
  %i.bf = load i8, ptr %.072335, align 1, !tbaa !49
  %i.bg = sext i8 %i.bf to i16
  %i.bh = insertelement <8 x i16> poison, i16 %i.bg, i64 0
  %i.bi = shufflevector <8 x i16> %i.bh, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bj = load i64, ptr %.068337, align 1, !tbaa !49
  %i.bk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.bl, splat (i8 7)
  %i.bm = shufflevector <16 x i8> %i.bl, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bn = bitcast <16 x i8> %i.bm to <8 x i16>    ; 2 uses
  %i.bo = mul <8 x i16> %i.bi, %i.bn              ; 2 uses
  %i.bp = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bi, <8 x i16> %i.bn) ; 2 uses
  %i.bq = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.br = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bs = bitcast <8 x i16> %i.bq to <4 x i32>
  %i.bt = add <4 x i32> %i.be, %i.bs              ; 2 uses
  %i.bu = bitcast <8 x i16> %i.br to <4 x i32>
  %i.bv = add <4 x i32> %i.bd, %i.bu              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.072335, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.068337, i64 8
  %i.by = add nuw nsw i32 %.069336, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !150

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bz = sitofp fast <4 x i32> %i.bt to <4 x float>
  %i.ca = sitofp fast <4 x i32> %i.bv to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph342
  %.lcssa334 = phi <4 x float> [ zeroinitializer, %.lr.ph342 ], [ %i.bz, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph342 ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.cc = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load <4 x float>, ptr %i.cd, align 1, !tbaa !49 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !49 ; 2 uses
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !76
  %.not73 = icmp eq i32 %i.ch, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cc ; 2 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !tbaa !49
  %i.cn = fmul fast <4 x float> %i.ce, %.lcssa334
  %i.co = fadd fast <4 x float> %i.ck, %i.cn
  %i.cp = fmul fast <4 x float> %i.cg, %.lcssa
  %i.cq = fadd fast <4 x float> %i.cm, %i.cp
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.cr = fmul fast <4 x float> %i.ce, %.lcssa334
  %i.cs = fmul fast <4 x float> %i.cg, %.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.065 = phi nsz <4 x float> [ %i.co, %bb.d ], [ %i.cr, %bb.e ] ; 10 uses
  %.064 = phi nsz <4 x float> [ %i.cq, %bb.d ], [ %i.cs, %bb.e ] ; 10 uses
  %i.ct = load i32, ptr %i.w, align 8, !tbaa !63
  switch i32 %i.ct, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread: ; preds = %bb.f
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> zeroinitializer)
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310: ; preds = %bb.f
  %i.cw = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !52
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.065)
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.065)
  %i.da = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.cz
  %i.dd = fadd fast <4 x float> %i.dc, %i.cy
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.064)
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.064)
  %i.dg = fmul fast <4 x float> %i.db, %i.df
  %i.dh = fadd fast <4 x float> %i.dg, %i.de
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313: ; preds = %bb.f
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !52
  %i.dk = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !52
  %i.do = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> nofpclass(nan inf) %i.dl)
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dp)
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> nofpclass(nan inf) %i.dl)
  %i.dt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.dp)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316: ; preds = %bb.f
  %i.du = fneg fast <4 x float> %.065
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float f0x42B0C0A5))
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dx = fmul fast <4 x float> %i.dw, splat (float f0x3FB8AA3B)
  %i.dy = fadd fast <4 x float> %i.dx, splat (float 5.000000e-01) ; 2 uses
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.ea = sitofp fast <4 x i32> %i.dz to <4 x float> ; 2 uses
  %i.eb = fcmp fast olt <4 x float> %i.dy, %i.ea
  %i.ec = select <4 x i1> %i.eb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ed = fsub fast <4 x float> %i.ea, %i.ec      ; 2 uses
  %i.ee = fmul fast <4 x float> %i.ed, splat (float f0x3F317218)
  %i.ef = fsub fast <4 x float> %i.dw, %i.ee      ; 8 uses
  %i.eg = fmul fast <4 x float> %i.ef, %i.ef
  %i.eh = fmul fast <4 x float> %i.ef, splat (float f0x39506967)
  %i.ei = fadd fast <4 x float> %i.eh, splat (float f0x3AB743CE)
  %i.ej = fmul fast <4 x float> %i.ei, %i.ef
  %i.ek = fadd fast <4 x float> %i.ej, splat (float f0x3C088908)
  %i.el = fmul fast <4 x float> %i.ek, %i.ef
  %i.em = fadd fast <4 x float> %i.el, splat (float f0x3D2AA9C1)
  %i.en = fmul fast <4 x float> %i.em, %i.ef
  %i.eo = fadd fast <4 x float> %i.en, splat (float f0x3E2AAAAA)
  %i.ep = fmul fast <4 x float> %i.eo, %i.ef
  %i.eq = fadd fast <4 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fmul fast <4 x float> %i.eg, %i.eq
  %i.es = fadd fast <4 x float> %i.ef, splat (float 1.000000e+00)
  %i.et = fadd fast <4 x float> %i.es, %i.er
  %i.eu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ed)
  %i.ev = shl <4 x i32> %i.eu, splat (i32 23)
  %i.ew = add <4 x i32> %i.ev, splat (i32 1065353216)
  %i.ex = bitcast <4 x i32> %i.ew to <4 x float>
  %i.ey = fmul fast <4 x float> %i.et, %i.ex
  %i.ez = fadd fast <4 x float> %i.ey, splat (float 1.000000e+00)
  %i.fa = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ez
  %i.fb = fneg fast <4 x float> %.064
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> splat (float f0x42B0C0A5))
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fe = fmul fast <4 x float> %i.fd, splat (float f0x3FB8AA3B)
  %i.ff = fadd fast <4 x float> %i.fe, splat (float 5.000000e-01) ; 2 uses
  %i.fg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fh = sitofp fast <4 x i32> %i.fg to <4 x float> ; 2 uses
  %i.fi = fcmp fast olt <4 x float> %i.ff, %i.fh
  %i.fj = select <4 x i1> %i.fi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fk = fsub fast <4 x float> %i.fh, %i.fj      ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fk, splat (float f0x3F317218)
  %i.fm = fsub fast <4 x float> %i.fd, %i.fl      ; 8 uses
  %i.fn = fmul fast <4 x float> %i.fm, %i.fm
  %i.fo = fmul fast <4 x float> %i.fm, splat (float f0x39506967)
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0x3AB743CE)
  %i.fq = fmul fast <4 x float> %i.fp, %i.fm
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0x3C088908)
  %i.fs = fmul fast <4 x float> %i.fr, %i.fm
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0x3D2AA9C1)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fm
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0x3E2AAAAA)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fm
  %i.fx = fadd fast <4 x float> %i.fw, splat (float 5.000000e-01)
  %i.fy = fmul fast <4 x float> %i.fn, %i.fx
  %i.fz = fadd fast <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.ga = fadd fast <4 x float> %i.fz, %i.fy
  %i.gb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fk)
  %i.gc = shl <4 x i32> %i.gb, splat (i32 23)
  %i.gd = add <4 x i32> %i.gc, splat (i32 1065353216)
  %i.ge = bitcast <4 x i32> %i.gd to <4 x float>
  %i.gf = fmul fast <4 x float> %i.ga, %i.ge
  %i.gg = fadd fast <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gg
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319: ; preds = %bb.f
  %i.gi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> splat (float f0x42B0C0A5))
  %i.gj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gj, splat (float f0x3FB8AA3B)
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 5.000000e-01) ; 2 uses
  %i.gm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gl)
  %i.gn = sitofp fast <4 x i32> %i.gm to <4 x float> ; 2 uses
  %i.go = fcmp fast olt <4 x float> %i.gl, %i.gn
  %i.gp = select <4 x i1> %i.go, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gq = fsub fast <4 x float> %i.gn, %i.gp      ; 2 uses
  %i.gr = fmul fast <4 x float> %i.gq, splat (float f0x3F317218)
  %i.gs = fsub fast <4 x float> %i.gj, %i.gr      ; 8 uses
  %i.gt = fmul fast <4 x float> %i.gs, %i.gs
  %i.gu = fmul fast <4 x float> %i.gs, splat (float f0x39506967)
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3AB743CE)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gs
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3C088908)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gs
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3D2AA9C1)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gs
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3E2AAAAA)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gs
  %i.hd = fadd fast <4 x float> %i.hc, splat (float 5.000000e-01)
  %i.he = fmul fast <4 x float> %i.gt, %i.hd
  %i.hf = fadd fast <4 x float> %i.gs, splat (float 1.000000e+00)
  %i.hg = fadd fast <4 x float> %i.hf, %i.he
  %i.hh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gq)
  %i.hi = shl <4 x i32> %i.hh, splat (i32 23)
  %i.hj = add <4 x i32> %i.hi, splat (i32 1065353216)
  %i.hk = bitcast <4 x i32> %i.hj to <4 x float>
  %i.hl = fmul fast <4 x float> %i.hg, %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, splat (float 1.000000e+00) ; 2 uses
  %i.hn = fcmp fast ole <4 x float> %i.hm, zeroinitializer
  %i.ho = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hm, <4 x float> splat (float f0x00800000))
  %i.hp = bitcast <4 x float> %i.ho to <4 x i32>  ; 2 uses
  %i.hq = lshr <4 x i32> %i.hp, splat (i32 23)
  %i.hr = and <4 x i32> %i.hp, splat (i32 -2139095041)
  %i.hs = or disjoint <4 x i32> %i.hr, splat (i32 1056964608)
  %i.ht = bitcast <4 x i32> %i.hs to <4 x float>  ; 3 uses
  %i.hu = add nsw <4 x i32> %i.hq, splat (i32 -127)
  %i.hv = sitofp fast <4 x i32> %i.hu to <4 x float> ; 2 uses
  %i.hw = fadd fast <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.hx = fcmp fast olt <4 x float> %i.ht, splat (float f0x3F3504F3) ; 2 uses
  %i.hy = select <4 x i1> %i.hx, <4 x float> %i.ht, <4 x float> zeroinitializer
  %i.hz = fadd fast <4 x float> %i.ht, splat (float -1.000000e+00)
  %i.ia = select fast <4 x i1> %i.hx, <4 x float> %i.hv, <4 x float> %i.hw
  %i.ib = fadd fast <4 x float> %i.hz, %i.hy      ; 12 uses
  %i.ic = fmul fast <4 x float> %i.ib, %i.ib
  %i.id = fmul fast <4 x float> %i.ib, splat (float f0x3D9021BB)
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0xBDEBD1B8)
  %i.if = fmul fast <4 x float> %i.ie, %i.ib
  %i.ig = fadd fast <4 x float> %i.if, splat (float f0x3DEF251A)
  %i.ih = fmul fast <4 x float> %i.ig, %i.ib
  %i.ii = fadd fast <4 x float> %i.ih, splat (float f0xBDFE5D4F)
  %i.ij = fmul fast <4 x float> %i.ii, %i.ib
  %i.ik = fadd fast <4 x float> %i.ij, splat (float f0x3E11E9BF)
  %i.il = fmul fast <4 x float> %i.ik, %i.ib
  %i.im = fadd fast <4 x float> %i.il, splat (float f0xBE2AAE50)
  %i.in = fmul fast <4 x float> %i.im, %i.ib
  %i.io = fadd fast <4 x float> %i.in, splat (float f0x3E4CCEAC)
  %i.ip = fmul fast <4 x float> %i.io, %i.ib
  %i.iq = fadd fast <4 x float> %i.ip, splat (float f0xBE7FFFFC)
  %i.ir = fmul fast <4 x float> %i.iq, %i.ib
  %i.is = fadd fast <4 x float> %i.ir, splat (float f0x3EAAAAAA)
  %i.it = fmul fast <4 x float> %i.is, %i.ib
  %reass.mul = fmul fast <4 x float> %i.ia, splat (float f0x3F317218)
  %reass.add330 = fadd fast <4 x float> %i.it, splat (float -5.000000e-01)
  %reass.mul331 = fmul fast <4 x float> %i.ic, %reass.add330
  %i.iu = fadd fast <4 x float> %reass.mul, %i.ib
  %i.iv = fadd fast <4 x float> %i.iu, %reass.mul331
  %.neg = fmul fast <4 x float> %i.iv, splat (float -2.000000e+00)
  %i.iw = select fast <4 x i1> %i.hn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iw, <4 x float> splat (float f0x42B0C0A5))
  %i.iy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ix, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iz = fmul fast <4 x float> %i.iy, splat (float f0x3FB8AA3B)
  %i.ja = fadd fast <4 x float> %i.iz, splat (float 5.000000e-01) ; 2 uses
  %i.jb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ja)
  %i.jc = sitofp fast <4 x i32> %i.jb to <4 x float> ; 2 uses
  %i.jd = fcmp fast olt <4 x float> %i.ja, %i.jc
  %i.je = select <4 x i1> %i.jd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jf = fsub fast <4 x float> %i.jc, %i.je      ; 2 uses
  %i.jg = fmul fast <4 x float> %i.jf, splat (float f0x3F317218)
  %i.jh = fsub fast <4 x float> %i.iy, %i.jg      ; 8 uses
  %i.ji = fmul fast <4 x float> %i.jh, %i.jh
  %i.jj = fmul fast <4 x float> %i.jh, splat (float f0x39506967)
  %i.jk = fadd fast <4 x float> %i.jj, splat (float f0x3AB743CE)
  %i.jl = fmul fast <4 x float> %i.jk, %i.jh
  %i.jm = fadd fast <4 x float> %i.jl, splat (float f0x3C088908)
  %i.jn = fmul fast <4 x float> %i.jm, %i.jh
  %i.jo = fadd fast <4 x float> %i.jn, splat (float f0x3D2AA9C1)
  %i.jp = fmul fast <4 x float> %i.jo, %i.jh
  %i.jq = fadd fast <4 x float> %i.jp, splat (float f0x3E2AAAAA)
  %i.jr = fmul fast <4 x float> %i.jq, %i.jh
  %i.js = fadd fast <4 x float> %i.jr, splat (float 5.000000e-01)
  %i.jt = fmul fast <4 x float> %i.ji, %i.js
  %i.ju = fadd fast <4 x float> %i.jh, splat (float 1.000000e+00)
  %i.jv = fadd fast <4 x float> %i.ju, %i.jt
  %i.jw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jf)
  %i.jx = shl <4 x i32> %i.jw, splat (i32 23)
  %i.jy = add <4 x i32> %i.jx, splat (i32 1065353216)
  %i.jz = bitcast <4 x i32> %i.jy to <4 x float>
  %i.ka = fmul fast <4 x float> %i.jv, %i.jz
  %i.kb = fadd fast <4 x float> %i.ka, splat (float 1.000000e+00)
  %i.kc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.kb
  %i.kd = fadd fast <4 x float> %i.kc, splat (float -1.000000e+00)
  %i.ke = fmul fast <4 x float> %i.kd, %.065
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> splat (float f0x42B0C0A5))
  %i.kg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kh = fmul fast <4 x float> %i.kg, splat (float f0x3FB8AA3B)
  %i.ki = fadd fast <4 x float> %i.kh, splat (float 5.000000e-01) ; 2 uses
  %i.kj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ki)
  %i.kk = sitofp fast <4 x i32> %i.kj to <4 x float> ; 2 uses
  %i.kl = fcmp fast olt <4 x float> %i.ki, %i.kk
  %i.km = select <4 x i1> %i.kl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kn = fsub fast <4 x float> %i.kk, %i.km      ; 2 uses
  %i.ko = fmul fast <4 x float> %i.kn, splat (float f0x3F317218)
  %i.kp = fsub fast <4 x float> %i.kg, %i.ko      ; 8 uses
  %i.kq = fmul fast <4 x float> %i.kp, %i.kp
  %i.kr = fmul fast <4 x float> %i.kp, splat (float f0x39506967)
  %i.ks = fadd fast <4 x float> %i.kr, splat (float f0x3AB743CE)
  %i.kt = fmul fast <4 x float> %i.ks, %i.kp
  %i.ku = fadd fast <4 x float> %i.kt, splat (float f0x3C088908)
  %i.kv = fmul fast <4 x float> %i.ku, %i.kp
  %i.kw = fadd fast <4 x float> %i.kv, splat (float f0x3D2AA9C1)
  %i.kx = fmul fast <4 x float> %i.kw, %i.kp
  %i.ky = fadd fast <4 x float> %i.kx, splat (float f0x3E2AAAAA)
  %i.kz = fmul fast <4 x float> %i.ky, %i.kp
  %i.la = fadd fast <4 x float> %i.kz, splat (float 5.000000e-01)
  %i.lb = fmul fast <4 x float> %i.kq, %i.la
  %i.lc = fadd fast <4 x float> %i.kp, splat (float 1.000000e+00)
  %i.ld = fadd fast <4 x float> %i.lc, %i.lb
  %i.le = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kn)
  %i.lf = shl <4 x i32> %i.le, splat (i32 23)
  %i.lg = add <4 x i32> %i.lf, splat (i32 1065353216)
  %i.lh = bitcast <4 x i32> %i.lg to <4 x float>
  %i.li = fmul fast <4 x float> %i.ld, %i.lh
  %i.lj = fadd fast <4 x float> %i.li, splat (float 1.000000e+00) ; 2 uses
  %i.lk = fcmp fast ole <4 x float> %i.lj, zeroinitializer
  %i.ll = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lj, <4 x float> splat (float f0x00800000))
  %i.lm = bitcast <4 x float> %i.ll to <4 x i32>  ; 2 uses
  %i.ln = lshr <4 x i32> %i.lm, splat (i32 23)
  %i.lo = and <4 x i32> %i.lm, splat (i32 -2139095041)
  %i.lp = or disjoint <4 x i32> %i.lo, splat (i32 1056964608)
  %i.lq = bitcast <4 x i32> %i.lp to <4 x float>  ; 3 uses
  %i.lr = add nsw <4 x i32> %i.ln, splat (i32 -127)
  %i.ls = sitofp fast <4 x i32> %i.lr to <4 x float> ; 2 uses
  %i.lt = fadd fast <4 x float> %i.ls, splat (float 1.000000e+00)
  %i.lu = fcmp fast olt <4 x float> %i.lq, splat (float f0x3F3504F3) ; 2 uses
  %i.lv = select <4 x i1> %i.lu, <4 x float> %i.lq, <4 x float> zeroinitializer
  %i.lw = fadd fast <4 x float> %i.lq, splat (float -1.000000e+00)
  %i.lx = select fast <4 x i1> %i.lu, <4 x float> %i.ls, <4 x float> %i.lt
  %i.ly = fadd fast <4 x float> %i.lw, %i.lv      ; 12 uses
  %i.lz = fmul fast <4 x float> %i.ly, %i.ly
  %i.ma = fmul fast <4 x float> %i.ly, splat (float f0x3D9021BB)
  %i.mb = fadd fast <4 x float> %i.ma, splat (float f0xBDEBD1B8)
  %i.mc = fmul fast <4 x float> %i.mb, %i.ly
  %i.md = fadd fast <4 x float> %i.mc, splat (float f0x3DEF251A)
  %i.me = fmul fast <4 x float> %i.md, %i.ly
  %i.mf = fadd fast <4 x float> %i.me, splat (float f0xBDFE5D4F)
  %i.mg = fmul fast <4 x float> %i.mf, %i.ly
  %i.mh = fadd fast <4 x float> %i.mg, splat (float f0x3E11E9BF)
  %i.mi = fmul fast <4 x float> %i.mh, %i.ly
  %i.mj = fadd fast <4 x float> %i.mi, splat (float f0xBE2AAE50)
  %i.mk = fmul fast <4 x float> %i.mj, %i.ly
  %i.ml = fadd fast <4 x float> %i.mk, splat (float f0x3E4CCEAC)
  %i.mm = fmul fast <4 x float> %i.ml, %i.ly
  %i.mn = fadd fast <4 x float> %i.mm, splat (float f0xBE7FFFFC)
  %i.mo = fmul fast <4 x float> %i.mn, %i.ly
  %i.mp = fadd fast <4 x float> %i.mo, splat (float f0x3EAAAAAA)
  %i.mq = fmul fast <4 x float> %i.mp, %i.ly
  %reass.mul329 = fmul fast <4 x float> %i.lx, splat (float f0x3F317218)
  %reass.add332 = fadd fast <4 x float> %i.mq, splat (float -5.000000e-01)
  %reass.mul333 = fmul fast <4 x float> %i.lz, %reass.add332
  %i.mr = fadd fast <4 x float> %reass.mul329, %i.ly
  %i.ms = fadd fast <4 x float> %i.mr, %reass.mul333
  %.neg325 = fmul fast <4 x float> %i.ms, splat (float -2.000000e+00)
  %i.mt = select fast <4 x i1> %i.lk, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg325
  %i.mu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mt, <4 x float> splat (float f0x42B0C0A5))
  %i.mv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mw = fmul fast <4 x float> %i.mv, splat (float f0x3FB8AA3B)
  %i.mx = fadd fast <4 x float> %i.mw, splat (float 5.000000e-01) ; 2 uses
  %i.my = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mx)
  %i.mz = sitofp fast <4 x i32> %i.my to <4 x float> ; 2 uses
  %i.na = fcmp fast olt <4 x float> %i.mx, %i.mz
  %i.nb = select <4 x i1> %i.na, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nc = fsub fast <4 x float> %i.mz, %i.nb      ; 2 uses
  %i.nd = fmul fast <4 x float> %i.nc, splat (float f0x3F317218)
  %i.ne = fsub fast <4 x float> %i.mv, %i.nd      ; 8 uses
  %i.nf = fmul fast <4 x float> %i.ne, %i.ne
  %i.ng = fmul fast <4 x float> %i.ne, splat (float f0x39506967)
  %i.nh = fadd fast <4 x float> %i.ng, splat (float f0x3AB743CE)
  %i.ni = fmul fast <4 x float> %i.nh, %i.ne
  %i.nj = fadd fast <4 x float> %i.ni, splat (float f0x3C088908)
  %i.nk = fmul fast <4 x float> %i.nj, %i.ne
  %i.nl = fadd fast <4 x float> %i.nk, splat (float f0x3D2AA9C1)
  %i.nm = fmul fast <4 x float> %i.nl, %i.ne
  %i.nn = fadd fast <4 x float> %i.nm, splat (float f0x3E2AAAAA)
  %i.no = fmul fast <4 x float> %i.nn, %i.ne
  %i.np = fadd fast <4 x float> %i.no, splat (float 5.000000e-01)
  %i.nq = fmul fast <4 x float> %i.nf, %i.np
  %i.nr = fadd fast <4 x float> %i.ne, splat (float 1.000000e+00)
  %i.ns = fadd fast <4 x float> %i.nr, %i.nq
  %i.nt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nc)
  %i.nu = shl <4 x i32> %i.nt, splat (i32 23)
  %i.nv = add <4 x i32> %i.nu, splat (i32 1065353216)
  %i.nw = bitcast <4 x i32> %i.nv to <4 x float>
  %i.nx = fmul fast <4 x float> %i.ns, %i.nw
  %i.ny = fadd fast <4 x float> %i.nx, splat (float 1.000000e+00)
  %i.nz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ny
  %i.oa = fadd fast <4 x float> %i.nz, splat (float -1.000000e+00)
  %i.ob = fmul fast <4 x float> %i.oa, %.064
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322: ; preds = %bb.f
  %i.oc = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !52
  %i.oe = insertelement <4 x float> poison, float %i.od, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oh = load float, ptr %i.og, align 4, !tbaa !52
  %i.oi = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <4 x float> %i.oi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ok = fmul fast <4 x float> %i.of, %.065
  %i.ol = fadd fast <4 x float> %i.ok, %i.oj
  %i.om = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ol, <4 x float> zeroinitializer)
  %i.on = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.om, <4 x float> splat (float 1.000000e+00))
  %i.oo = fmul fast <4 x float> %i.on, %.065
  %i.op = fmul fast <4 x float> %i.of, %.064
  %i.oq = fadd fast <4 x float> %i.op, %i.oj
  %i.or = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oq, <4 x float> zeroinitializer)
  %i.os = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.or, <4 x float> splat (float 1.000000e+00))
  %i.ot = fmul fast <4 x float> %i.os, %.064
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.f, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread
  %.0.i77309 = phi <4 x float> [ %i.oo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322 ], [ %i.cu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread ], [ %i.dd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310 ], [ %i.dr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313 ], [ %i.fa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316 ], [ %i.ke, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319 ], [ %.065, %bb.f ]
  %.0.i = phi nsz <4 x float> [ %i.ot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322 ], [ %i.cv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread ], [ %i.dh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310 ], [ %i.dt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313 ], [ %i.gh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316 ], [ %i.ob, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319 ], [ %.064, %bb.f ]
  store <4 x float> %.0.i77309, ptr %.066340, align 1, !tbaa !49
  %i.ou = getelementptr inbounds nuw i8, ptr %.066340, i64 16
  store <4 x float> %.0.i, ptr %i.ou, align 1, !tbaa !49
  %i.ov = getelementptr inbounds nuw i8, ptr %.066340, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ow = load i32, ptr %i.n, align 8, !tbaa !45  ; 2 uses
  %i.ox = load i32, ptr %5, align 4, !tbaa !57    ; 2 uses
  %i.oy = sdiv i32 %i.ow, %i.ox
  %i.oz = sext i32 %i.oy to i64
  %i.pa = icmp slt i64 %indvars.iv.next, %i.oz
  br i1 %i.pa, label %.lr.ph342, label %._crit_edge343, !llvm.loop !151

._crit_edge348:                                   ; preds = %._crit_edge343, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge348, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge65.split, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %factor.op.mul66 = mul i64 %i.q, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  br i1 %i.t, label %.lr.ph64.split, label %._crit_edge65.split

.lr.ph64.split:                                   ; preds = %.lr.ph64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.ah, %i.ag
  %i.ai = load ptr, ptr %5, align 8, !tbaa !19
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i64, ptr %i.z, align 8, !tbaa !48
  %factor.op.mul68 = mul i64 %i.al, %i.ak
  %i.am = load i32, ptr %6, align 4, !tbaa !57    ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !76
  %.not39 = icmp eq i32 %i.ap, 0
  %i.aq = load i32, ptr %i.w, align 8, !tbaa !63
  %i.ar = sext i32 %i.k to i64
  %i.as = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.at = zext nneg i32 %i.am to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  %n.vec = and i64 %i.at, 2147483640              ; 5 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph64.split, %._crit_edge60
  %indvars.iv72 = phi i64 [ %i.ar, %.lr.ph64.split ], [ %indvars.iv.next73, %._crit_edge60 ] ; 3 uses
  %.reass67 = mul i64 %factor.op.mul66, %indvars.iv72
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass67
  %.reass69 = mul i64 %factor.op.mul68, %indvars.iv72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.reass69 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %n.vec
  br label %bb.c

._crit_edge60:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32
  %exitcond75.not = icmp eq i32 %i.as, %lftr.wideiv
  br i1 %exitcond75.not, label %._crit_edge65.split, label %.lr.ph59

bb.c:                                             ; preds = %.lr.ph59, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %.03756 = phi ptr [ %i.av, %.lr.ph59 ], [ %i.dk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.az = getelementptr i8, ptr %i.ay, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.aw, i64 %index ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.ay, i64 %index ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %wide.load85 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !49
  %i.bb = sext <4 x i8> %wide.load to <4 x i32>
  %i.bc = sext <4 x i8> %wide.load85 to <4 x i32>
  %i.bd = getelementptr i8, ptr %next.gep84, i64 4
  %wide.load86 = load <4 x i8>, ptr %next.gep84, align 1, !tbaa !49
  %wide.load87 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !49
  %i.be = sext <4 x i8> %wide.load86 to <4 x i32>
  %i.bf = sext <4 x i8> %wide.load87 to <4 x i32>
  %i.bg = mul nsw <4 x i32> %i.be, %i.bb
  %i.bh = mul nsw <4 x i32> %i.bf, %i.bc
  %i.bi = add <4 x i32> %i.bg, %vec.phi           ; 2 uses
  %i.bj = add <4 x i32> %i.bh, %vec.phi83         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03255.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.au, %middle.block ]
  %.03354.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  %.03453.ph = phi ptr [ %i.aw, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  %.03552.ph = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph
  %.03255 = phi i32 [ %i.bu, %.lr.ph ], [ %.03255.ph, %.lr.ph.preheader90 ]
  %.03354 = phi i32 [ %i.bt, %.lr.ph ], [ %.03354.ph, %.lr.ph.preheader90 ]
  %.03453 = phi ptr [ %i.bm, %.lr.ph ], [ %.03453.ph, %.lr.ph.preheader90 ] ; 2 uses
  %.03552 = phi ptr [ %i.bp, %.lr.ph ], [ %.03552.ph, %.lr.ph.preheader90 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.03453, i64 1
  %i.bn = load i8, ptr %.03453, align 1, !tbaa !49
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.03552, i64 1
  %i.bq = load i8, ptr %.03552, align 1, !tbaa !49
  %i.br = sext i8 %i.bq to i32
  %i.bs = mul nsw i32 %i.br, %i.bo
  %i.bt = add nsw i32 %i.bs, %.03354              ; 2 uses
  %i.bu = add nuw nsw i32 %.03255, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %i.am
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !153

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.bl, %middle.block ], [ %i.bt, %.lr.ph ]
  %i.bv = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.033.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bv, %._crit_edge.loopexit ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !52
  %i.by = fmul fast float %i.bx, %.033.lcssa      ; 2 uses
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !52
  %i.cc = fadd fast float %i.cb, %i.by
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0 = phi nsz float [ %i.cc, %bb.d ], [ %i.by, %._crit_edge ] ; 13 uses
  switch i32 %i.aq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.cd = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %bb.e
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !52
  %i.cg = fcmp fast ogt float %.0, 0.000000e+00
  %i.ch = select fast i1 %i.cg, float 1.000000e+00, float %i.cf
  %i.ci = fmul fast float %i.ch, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.e
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !52
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !52 ; 2 uses
  %.051 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.ck) ; 2 uses
  %i.cn = fcmp fast ogt float %.051, %i.cm
  br i1 %i.cn, label %bb.i, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.e
  %.sroa.speculated42 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated42, float f0xC2B0C0A5)
  %i.co = fneg fast float %.sroa.speculated
  %i.cp = call fast float @llvm.exp.f32(float %i.co)
  %i.cq = fadd fast float %i.cp, 1.000000e+00
  %i.cr = fdiv fast float 1.000000e+00, %i.cq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.e
  %i.cs = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.ct = fadd fast float %i.cs, 1.000000e+00
  %i.cu = call fast float @llvm.log.f32(float %i.ct)
  %i.cv = call fast float @llvm.tanh.f32(float %i.cu)
  %i.cw = fmul fast float %i.cv, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.e
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !52 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52 ; 2 uses
  %i.db = fneg fast float %i.da
  %i.dc = fdiv fast float %i.db, %i.cy            ; 2 uses
  %i.dd = fcmp fast olt float %.0, %i.dc
  br i1 %i.dd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = fdiv fast float 1.000000e+00, %i.cy
  %i.df = fadd fast float %i.dc, %i.de
  %i.dg = fcmp fast ogt float %.0, %i.df
  br i1 %i.dg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = fmul fast float %i.cy, %.0
  %i.di = fadd fast float %i.dh, %i.da
  %i.dj = fmul fast float %i.di, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.l
  %.1 = phi nsz float [ %.0, %bb.e ], [ %i.cd, %bb.f ], [ %i.ci, %bb.g ], [ %i.cm, %bb.i ], [ %.051, %bb.h ], [ %i.cr, %bb.j ], [ %i.cw, %bb.k ], [ %i.dj, %bb.n ], [ %.0, %bb.m ], [ 0.000000e+00, %bb.l ]
  store float %.1, ptr %.03756, align 4, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %.03756, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond71.not, label %._crit_edge60, label %bb.c, !llvm.loop !154

._crit_edge65.split:                              ; preds = %._crit_edge60, %.lr.ph64, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge65.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = load i32, ptr %3, align 4, !tbaa !57
  %i.h = sdiv i32 %i.f, %i.g                      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.k = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !57
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !57
  %i.n = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not332 = icmp sgt i32 %i.n, %i.m
  br i1 %.not332, label %._crit_edge336, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  %i.w = sext i32 %i.n to i64
  %i.x = add nsw i32 %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph335, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.w, %.lr.ph335 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !57     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = load ptr, ptr %4, align 8, !tbaa !19
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv, %i.ad
  %i.af = load i64, ptr %i.q, align 8, !tbaa !48
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ai = phi <4 x i32> [ %i.ay, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.aj = phi <4 x i32> [ %i.ba, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.063330 = phi ptr [ %i.bc, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.064329 = phi ptr [ %i.bb, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.065328 = phi i32 [ %i.bd, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ak = load i8, ptr %.064329, align 1, !tbaa !49
  %i.al = sext i8 %i.ak to i16
  %i.am = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ao = load i64, ptr %.063330, align 1, !tbaa !49
  %i.ap = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ao, i64 0
  %i.aq = bitcast <2 x i64> %i.ap to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.aq, splat (i8 7)
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.as = bitcast <16 x i8> %i.ar to <8 x i16>    ; 2 uses
  %i.at = mul <8 x i16> %i.an, %i.as              ; 2 uses
  %i.au = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.an, <8 x i16> %i.as) ; 2 uses
  %i.av = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ax = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %i.ai, %i.ax              ; 2 uses
  %i.az = bitcast <8 x i16> %i.aw to <4 x i32>
  %i.ba = add <4 x i32> %i.aj, %i.az              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.064329, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.063330, i64 8
  %i.bd = add nuw nsw i32 %.065328, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.y
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !155

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.be = sitofp fast <4 x i32> %i.ay to <4 x float>
  %i.bf = sitofp fast <4 x i32> %i.ba to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa327 = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.bf, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.be, %._crit_edge.loopexit ] ; 2 uses
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.bh = shl nsw i64 %indvars.iv, 3              ; 3 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load <4 x float>, ptr %i.bi, align 1, !tbaa !49 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !49 ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !76
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bh ; 2 uses
  %i.bp = load <4 x float>, ptr %i.bo, align 1, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !49
  %i.bs = fmul fast <4 x float> %i.bj, %.lcssa
  %i.bt = fadd fast <4 x float> %i.bp, %i.bs
  %i.bu = fmul fast <4 x float> %i.bl, %.lcssa327
  %i.bv = fadd fast <4 x float> %i.br, %i.bu
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bw = fmul fast <4 x float> %i.bj, %.lcssa
  %i.bx = fmul fast <4 x float> %i.bl, %.lcssa327
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.060 = phi nsz <4 x float> [ %i.bt, %bb.d ], [ %i.bw, %bb.e ] ; 10 uses
  %.059 = phi nsz <4 x float> [ %i.bv, %bb.d ], [ %i.bx, %bb.e ] ; 10 uses
  %i.by = load i32, ptr %i.u, align 8, !tbaa !63
  switch i32 %i.by, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread: ; preds = %bb.f
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.060, <4 x float> zeroinitializer)
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.059, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303: ; preds = %bb.f
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !52
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.060)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.060)
  %i.cf = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul fast <4 x float> %i.cg, %i.ce
  %i.ci = fadd fast <4 x float> %i.ch, %i.cd
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.059)
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.059)
  %i.cl = fmul fast <4 x float> %i.cg, %i.ck
  %i.cm = fadd fast <4 x float> %i.cl, %i.cj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306: ; preds = %bb.f
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !52
  %i.cp = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !52
  %i.ct = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.060, <4 x float> nofpclass(nan inf) %i.cq)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cu)
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.059, <4 x float> nofpclass(nan inf) %i.cq)
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cu)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309: ; preds = %bb.f
  %i.cz = fneg fast <4 x float> %.060
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0x42B0C0A5))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.da, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, splat (float f0x3FB8AA3B)
  %i.dd = fadd fast <4 x float> %i.dc, splat (float 5.000000e-01) ; 2 uses
  %i.de = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dd)
  %i.df = sitofp fast <4 x i32> %i.de to <4 x float> ; 2 uses
  %i.dg = fcmp fast olt <4 x float> %i.dd, %i.df
  %i.dh = select <4 x i1> %i.dg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.di = fsub fast <4 x float> %i.df, %i.dh      ; 2 uses
  %i.dj = fmul fast <4 x float> %i.di, splat (float f0x3F317218)
  %i.dk = fsub fast <4 x float> %i.db, %i.dj      ; 8 uses
  %i.dl = fmul fast <4 x float> %i.dk, %i.dk
  %i.dm = fmul fast <4 x float> %i.dk, splat (float f0x39506967)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0x3AB743CE)
  %i.do = fmul fast <4 x float> %i.dn, %i.dk
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0x3C088908)
  %i.dq = fmul fast <4 x float> %i.dp, %i.dk
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3D2AA9C1)
  %i.ds = fmul fast <4 x float> %i.dr, %i.dk
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3E2AAAAA)
  %i.du = fmul fast <4 x float> %i.dt, %i.dk
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fmul fast <4 x float> %i.dl, %i.dv
  %i.dx = fadd fast <4 x float> %i.dk, splat (float 1.000000e+00)
  %i.dy = fadd fast <4 x float> %i.dx, %i.dw
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.di)
  %i.ea = shl <4 x i32> %i.dz, splat (i32 23)
  %i.eb = add <4 x i32> %i.ea, splat (i32 1065353216)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>
  %i.ed = fmul fast <4 x float> %i.dy, %i.ec
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 1.000000e+00)
  %i.ef = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ee
  %i.eg = fneg fast <4 x float> %.059
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> splat (float f0x42B0C0A5))
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ej = fmul fast <4 x float> %i.ei, splat (float f0x3FB8AA3B)
  %i.ek = fadd fast <4 x float> %i.ej, splat (float 5.000000e-01) ; 2 uses
  %i.el = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ek)
  %i.em = sitofp fast <4 x i32> %i.el to <4 x float> ; 2 uses
  %i.en = fcmp fast olt <4 x float> %i.ek, %i.em
  %i.eo = select <4 x i1> %i.en, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ep = fsub fast <4 x float> %i.em, %i.eo      ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ep, splat (float f0x3F317218)
  %i.er = fsub fast <4 x float> %i.ei, %i.eq      ; 8 uses
  %i.es = fmul fast <4 x float> %i.er, %i.er
  %i.et = fmul fast <4 x float> %i.er, splat (float f0x39506967)
  %i.eu = fadd fast <4 x float> %i.et, splat (float f0x3AB743CE)
  %i.ev = fmul fast <4 x float> %i.eu, %i.er
  %i.ew = fadd fast <4 x float> %i.ev, splat (float f0x3C088908)
  %i.ex = fmul fast <4 x float> %i.ew, %i.er
  %i.ey = fadd fast <4 x float> %i.ex, splat (float f0x3D2AA9C1)
  %i.ez = fmul fast <4 x float> %i.ey, %i.er
  %i.fa = fadd fast <4 x float> %i.ez, splat (float f0x3E2AAAAA)
  %i.fb = fmul fast <4 x float> %i.fa, %i.er
  %i.fc = fadd fast <4 x float> %i.fb, splat (float 5.000000e-01)
  %i.fd = fmul fast <4 x float> %i.es, %i.fc
  %i.fe = fadd fast <4 x float> %i.er, splat (float 1.000000e+00)
  %i.ff = fadd fast <4 x float> %i.fe, %i.fd
  %i.fg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.fh = shl <4 x i32> %i.fg, splat (i32 23)
  %i.fi = add <4 x i32> %i.fh, splat (i32 1065353216)
  %i.fj = bitcast <4 x i32> %i.fi to <4 x float>
  %i.fk = fmul fast <4 x float> %i.ff, %i.fj
  %i.fl = fadd fast <4 x float> %i.fk, splat (float 1.000000e+00)
  %i.fm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312: ; preds = %bb.f
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.060, <4 x float> splat (float f0x42B0C0A5))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fo, splat (float f0x3FB8AA3B)
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 5.000000e-01) ; 2 uses
  %i.fr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fq)
  %i.fs = sitofp fast <4 x i32> %i.fr to <4 x float> ; 2 uses
  %i.ft = fcmp fast olt <4 x float> %i.fq, %i.fs
  %i.fu = select <4 x i1> %i.ft, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fv = fsub fast <4 x float> %i.fs, %i.fu      ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fv, splat (float f0x3F317218)
  %i.fx = fsub fast <4 x float> %i.fo, %i.fw      ; 8 uses
  %i.fy = fmul fast <4 x float> %i.fx, %i.fx
  %i.fz = fmul fast <4 x float> %i.fx, splat (float f0x39506967)
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3AB743CE)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fx
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3C088908)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fx
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3D2AA9C1)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fx
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3E2AAAAA)
  %i.gh = fmul fast <4 x float> %i.gg, %i.fx
  %i.gi = fadd fast <4 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = fmul fast <4 x float> %i.fy, %i.gi
  %i.gk = fadd fast <4 x float> %i.fx, splat (float 1.000000e+00)
  %i.gl = fadd fast <4 x float> %i.gk, %i.gj
  %i.gm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fv)
  %i.gn = shl <4 x i32> %i.gm, splat (i32 23)
  %i.go = add <4 x i32> %i.gn, splat (i32 1065353216)
  %i.gp = bitcast <4 x i32> %i.go to <4 x float>
  %i.gq = fmul fast <4 x float> %i.gl, %i.gp
  %i.gr = fadd fast <4 x float> %i.gq, splat (float 1.000000e+00) ; 2 uses
  %i.gs = fcmp fast ole <4 x float> %i.gr, zeroinitializer
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gr, <4 x float> splat (float f0x00800000))
  %i.gu = bitcast <4 x float> %i.gt to <4 x i32>  ; 2 uses
  %i.gv = lshr <4 x i32> %i.gu, splat (i32 23)
  %i.gw = and <4 x i32> %i.gu, splat (i32 -2139095041)
  %i.gx = or disjoint <4 x i32> %i.gw, splat (i32 1056964608)
  %i.gy = bitcast <4 x i32> %i.gx to <4 x float>  ; 3 uses
  %i.gz = add nsw <4 x i32> %i.gv, splat (i32 -127)
  %i.ha = sitofp fast <4 x i32> %i.gz to <4 x float> ; 2 uses
  %i.hb = fadd fast <4 x float> %i.ha, splat (float 1.000000e+00)
  %i.hc = fcmp fast olt <4 x float> %i.gy, splat (float f0x3F3504F3) ; 2 uses
  %i.hd = select <4 x i1> %i.hc, <4 x float> %i.gy, <4 x float> zeroinitializer
  %i.he = fadd fast <4 x float> %i.gy, splat (float -1.000000e+00)
  %i.hf = select fast <4 x i1> %i.hc, <4 x float> %i.ha, <4 x float> %i.hb
  %i.hg = fadd fast <4 x float> %i.he, %i.hd      ; 12 uses
end_hunk_4
begin_hunk_5_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8:bb.a
  %i.ll = fmul fast <4 x float> %i.lk, %i.ld
  %i.lm = fadd fast <4 x float> %i.ll, splat (float f0x3E11E9BF)
  %i.ln = fmul fast <4 x float> %i.lm, %i.ld
  %i.lo = fadd fast <4 x float> %i.ln, splat (float f0xBE2AAE50)
  %i.lp = fmul fast <4 x float> %i.lo, %i.ld
  %i.lq = fadd fast <4 x float> %i.lp, splat (float f0x3E4CCEAC)
  %i.lr = fmul fast <4 x float> %i.lq, %i.ld
  %i.ls = fadd fast <4 x float> %i.lr, splat (float f0xBE7FFFFC)
  %i.lt = fmul fast <4 x float> %i.ls, %i.ld
  %i.lu = fadd fast <4 x float> %i.lt, splat (float f0x3EAAAAAA)
  %i.lv = fmul fast <4 x float> %i.lu, %i.ld
  %reass.mul322 = fmul fast <4 x float> %i.lc, splat (float f0x3F317218)
  %reass.add325 = fadd fast <4 x float> %i.lv, splat (float -5.000000e-01)
  %reass.mul326 = fmul fast <4 x float> %i.le, %reass.add325
  %i.lw = fadd fast <4 x float> %reass.mul322, %i.ld
  %i.lx = fadd fast <4 x float> %i.lw, %reass.mul326
  %.neg318 = fmul fast <4 x float> %i.lx, splat (float -2.000000e+00)
  %i.ly = select fast <4 x i1> %i.kp, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg318
  %i.lz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ly, <4 x float> splat (float f0x42B0C0A5))
  %i.ma = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mb = fmul fast <4 x float> %i.ma, splat (float f0x3FB8AA3B)
  %i.mc = fadd fast <4 x float> %i.mb, splat (float 5.000000e-01) ; 2 uses
  %i.md = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mc)
  %i.me = sitofp fast <4 x i32> %i.md to <4 x float> ; 2 uses
  %i.mf = fcmp fast olt <4 x float> %i.mc, %i.me
  %i.mg = select <4 x i1> %i.mf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mh = fsub fast <4 x float> %i.me, %i.mg      ; 2 uses
  %i.mi = fmul fast <4 x float> %i.mh, splat (float f0x3F317218)
  %i.mj = fsub fast <4 x float> %i.ma, %i.mi      ; 8 uses
  %i.mk = fmul fast <4 x float> %i.mj, %i.mj
  %i.ml = fmul fast <4 x float> %i.mj, splat (float f0x39506967)
  %i.mm = fadd fast <4 x float> %i.ml, splat (float f0x3AB743CE)
  %i.mn = fmul fast <4 x float> %i.mm, %i.mj
  %i.mo = fadd fast <4 x float> %i.mn, splat (float f0x3C088908)
  %i.mp = fmul fast <4 x float> %i.mo, %i.mj
  %i.mq = fadd fast <4 x float> %i.mp, splat (float f0x3D2AA9C1)
  %i.mr = fmul fast <4 x float> %i.mq, %i.mj
  %i.ms = fadd fast <4 x float> %i.mr, splat (float f0x3E2AAAAA)
  %i.mt = fmul fast <4 x float> %i.ms, %i.mj
  %i.mu = fadd fast <4 x float> %i.mt, splat (float 5.000000e-01)
  %i.mv = fmul fast <4 x float> %i.mk, %i.mu
  %i.mw = fadd fast <4 x float> %i.mj, splat (float 1.000000e+00)
  %i.mx = fadd fast <4 x float> %i.mw, %i.mv
  %i.my = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mh)
  %i.mz = shl <4 x i32> %i.my, splat (i32 23)
  %i.na = add <4 x i32> %i.mz, splat (i32 1065353216)
  %i.nb = bitcast <4 x i32> %i.na to <4 x float>
  %i.nc = fmul fast <4 x float> %i.mx, %i.nb
  %i.nd = fadd fast <4 x float> %i.nc, splat (float 1.000000e+00)
  %i.ne = fdiv fast <4 x float> splat (float 2.000000e+00), %i.nd
  %i.nf = fadd fast <4 x float> %i.ne, splat (float -1.000000e+00)
  %i.ng = fmul fast <4 x float> %i.nf, %.059
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315: ; preds = %bb.f
  %i.nh = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !52
  %i.nj = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !52
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.np = fmul fast <4 x float> %i.nk, %.060
  %i.nq = fadd fast <4 x float> %i.np, %i.no
  %i.nr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nq, <4 x float> zeroinitializer)
  %i.ns = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> splat (float 1.000000e+00))
  %i.nt = fmul fast <4 x float> %i.ns, %.060
  %i.nu = fmul fast <4 x float> %i.nk, %.059
  %i.nv = fadd fast <4 x float> %i.nu, %i.no
  %i.nw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nv, <4 x float> zeroinitializer)
  %i.nx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nw, <4 x float> splat (float 1.000000e+00))
  %i.ny = fmul fast <4 x float> %i.nx, %.059
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.f, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread
  %.0.i70302 = phi <4 x float> [ %i.nt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315 ], [ %i.bz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread ], [ %i.ci, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303 ], [ %i.cw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306 ], [ %i.ef, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309 ], [ %i.jj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312 ], [ %.060, %bb.f ]
  %.0.i = phi nsz <4 x float> [ %i.ny, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315 ], [ %i.ca, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread ], [ %i.cm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303 ], [ %i.cy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306 ], [ %i.fm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309 ], [ %i.ng, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312 ], [ %.059, %bb.f ]
  %i.nz = load ptr, ptr %6, align 8, !tbaa !19
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.bh ; 2 uses
  store <4 x float> %.0.i70302, ptr %i.oa, align 1, !tbaa !49
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <4 x float> %.0.i, ptr %i.ob, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond340.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond340.not, label %._crit_edge336, label %bb.c

._crit_edge336:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge336, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = load i32, ptr %3, align 4, !tbaa !57
  %i.h = sdiv i32 %i.f, %i.g                      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.k = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !57
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !57
  %i.n = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not54 = icmp sgt i32 %i.n, %i.m
  br i1 %.not54, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 644
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %4, align 8, !tbaa !19     ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !57     ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76
  %.not37 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  %i.ag = load ptr, ptr %6, align 8, !tbaa !19
  %i.ah = sext i32 %i.n to i64
  %i.ai = add nsw i32 %i.m, 1
  %i.aj = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 8
  %n.vec = and i64 %i.aj, 2147483640              ; 5 uses
  %i.ak = trunc nuw nsw i64 %n.vec to i32
  %i.al = getelementptr i8, ptr %i.v, i64 %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph57 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 5 uses
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.an = getelementptr i8, ptr %i.am, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %wide.load69 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !49
  %i.ap = getelementptr i8, ptr %next.gep68, i64 4
  %wide.load70 = load <4 x i8>, ptr %next.gep68, align 1, !tbaa !49
  %wide.load71 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !49
  %i.aq = sext <4 x i8> %wide.load to <4 x i32>
  %i.ar = sext <4 x i8> %wide.load69 to <4 x i32>
  %i.as = sext <4 x i8> %wide.load70 to <4 x i32>
  %i.at = sext <4 x i8> %wide.load71 to <4 x i32>
  %i.au = mul nsw <4 x i32> %i.as, %i.aq
  %i.av = mul nsw <4 x i32> %i.at, %i.ar
  %i.aw = add <4 x i32> %i.au, %vec.phi           ; 2 uses
  %i.ax = add <4 x i32> %i.av, %vec.phi67         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03353.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.03452.ph = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.03551.ph = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.03650.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader74, %.lr.ph
  %.03353 = phi i32 [ %i.bi, %.lr.ph ], [ %.03353.ph, %.lr.ph.preheader74 ]
  %.03452 = phi ptr [ %i.bg, %.lr.ph ], [ %.03452.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03551 = phi ptr [ %i.bh, %.lr.ph ], [ %.03551.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03650 = phi i32 [ %i.bf, %.lr.ph ], [ %.03650.ph, %.lr.ph.preheader74 ]
  %i.ba = load i8, ptr %.03452, align 1, !tbaa !49
  %i.bb = load i8, ptr %.03551, align 1, !tbaa !49
  %i.bc = sext i8 %i.ba to i32
  %i.bd = sext i8 %i.bb to i32
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = add nsw i32 %i.be, %.03650              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03452, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.03551, i64 1
  %i.bi = add nuw nsw i32 %.03353, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.w
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !157

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.az, %middle.block ], [ %i.bf, %.lr.ph ]
  %i.bj = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.036.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !52
  %i.bm = fmul fast float %i.bl, %.036.lcssa      ; 2 uses
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !52
  %i.bq = fadd fast float %i.bp, %i.bm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0 = phi nsz float [ %i.bq, %bb.d ], [ %i.bm, %._crit_edge ] ; 13 uses
  switch i32 %i.ae, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.br = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %bb.e
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !52
  %i.bu = fcmp fast ogt float %.0, 0.000000e+00
  %i.bv = select fast i1 %i.bu, float 1.000000e+00, float %i.bt
  %i.bw = fmul fast float %i.bv, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !52 ; 2 uses
  %.049 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.by) ; 2 uses
  %i.cb = fcmp fast ogt float %.049, %i.ca
  br i1 %i.cb, label %bb.i, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.e
  %.sroa.speculated40 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated40, float f0xC2B0C0A5)
  %i.cc = fneg fast float %.sroa.speculated
  %i.cd = call fast float @llvm.exp.f32(float %i.cc)
  %i.ce = fadd fast float %i.cd, 1.000000e+00
  %i.cf = fdiv fast float 1.000000e+00, %i.ce
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.e
  %i.cg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.ch = fadd fast float %i.cg, 1.000000e+00
  %i.ci = call fast float @llvm.log.f32(float %i.ch)
  %i.cj = call fast float @llvm.tanh.f32(float %i.ci)
  %i.ck = fmul fast float %i.cj, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.e
  %i.cl = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !52 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !52 ; 2 uses
  %i.cp = fneg fast float %i.co
  %i.cq = fdiv fast float %i.cp, %i.cm            ; 2 uses
  %i.cr = fcmp fast olt float %.0, %i.cq
  br i1 %i.cr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = fdiv fast float 1.000000e+00, %i.cm
  %i.ct = fadd fast float %i.cq, %i.cs
  %i.cu = fcmp fast ogt float %.0, %i.ct
  br i1 %i.cu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = fmul fast float %i.cm, %.0
  %i.cw = fadd fast float %i.cv, %i.co
  %i.cx = fmul fast float %i.cw, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.l
  %.1 = phi nsz float [ %.0, %bb.e ], [ %i.br, %bb.f ], [ %i.bw, %bb.g ], [ %i.ca, %bb.i ], [ %.049, %bb.h ], [ %i.cf, %bb.j ], [ %i.ck, %bb.k ], [ %i.cx, %bb.n ], [ %.0, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  store float %.1, ptr %i.cy, align 4, !tbaa !52
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond60.not = icmp eq i32 %i.ai, %lftr.wideiv
  br i1 %exitcond60.not, label %._crit_edge58, label %bb.c

._crit_edge58:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge58, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn12InnerProductE", !34, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !16, i64 232, !16, i64 304, !16, i64 376, !16, i64 448, !16, i64 520}
!36 = !{!"p1 _ZTSN4ncnn5LayerE", !12, i64 0}
!37 = !{!"_ZTSN4ncnn16InnerProduct_x86E", !35, i64 0, !36, i64 592, !16, i64 600, !16, i64 672}
!38 = !{!37, !36, i64 592}
!39 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!40 = !{!39, !21, i64 30}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!39, !21, i64 32}
!44 = !{!35, !7, i64 216}
!45 = !{!35, !7, i64 208}
!46 = !{!39, !21, i64 39}
!47 = !{!16, !7, i64 44}
!48 = !{!16, !14, i64 16}
!49 = !{!6, !6, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"float", !6, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!12, !12, i64 0}
!56 = !{!16, !7, i64 24}
!57 = !{!7, !7, i64 0}
!58 = !{!16, !7, i64 56}
!59 = !{!39, !21, i64 0}
!60 = !{!16, !7, i64 40}
!61 = !{!16, !7, i64 48}
!62 = !{!39, !15, i64 8}
!63 = !{!35, !7, i64 224}
!64 = !{!"p1 float", !12, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!39, !7, i64 4}
!67 = !{!21, !21, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{i64 0, i64 1, !67, i64 1, i64 1, !67, i64 2, i64 1, !67, i64 3, i64 1, !67, i64 4, i64 4, !57, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 4, !57, i64 28, i64 1, !67, i64 29, i64 1, !67, i64 30, i64 1, !67, i64 31, i64 1, !67, i64 32, i64 1, !67, i64 33, i64 1, !67, i64 34, i64 1, !67, i64 35, i64 1, !67, i64 36, i64 1, !67, i64 37, i64 1, !67, i64 38, i64 1, !67, i64 39, i64 1, !67, i64 40, i64 4, !57, i64 44, i64 1, !67, i64 45, i64 1, !67, i64 46, i64 1, !67, i64 47, i64 1, !67, i64 48, i64 1, !49, i64 49, i64 1, !67, i64 50, i64 1, !67, i64 51, i64 1, !67, i64 52, i64 1, !67, i64 53, i64 1, !67, i64 54, i64 1, !67, i64 55, i64 1, !67, i64 56, i64 1, !67, i64 57, i64 1, !67, i64 58, i64 1, !67, i64 59, i64 1, !67, i64 60, i64 1, !67, i64 61, i64 1, !67, i64 62, i64 1, !67, i64 63, i64 1, !67}
!70 = !{!39, !15, i64 16}
!71 = !{!"short", !6, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{i64 2, i64 -1, i64 -1, i1 true}
!75 = !{!74}
!76 = !{!35, !7, i64 212}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50, !53}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !50, !53, !54}
!87 = distinct !{null}
!88 = !{!35, !14, i64 320}
!89 = !{!81}
!90 = !{!82}
!91 = !{!83}
!92 = !{!84}
!93 = !{!85}
!94 = !{!84, !83, !82, !81}
!95 = !{!34, !21, i64 11}
!96 = !{!34, !21, i64 12}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !73}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !73}
!110 = distinct !{!110, !50}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50}
!113 = distinct !{!113, !73}
!114 = distinct !{!114, !50, !53, !54}
!115 = distinct !{!115, !50}
!116 = distinct !{!116, !50, !54, !53}
!117 = distinct !{!117, !50}
!118 = distinct !{!118, !73}
!119 = distinct !{!119, !50}
!120 = distinct !{!120, !50}
!121 = distinct !{!121, !50}
!122 = distinct !{!122, !50}
!123 = distinct !{!123, !73}
!124 = distinct !{!124, !50, !53, !54}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50, !54, !53}
!127 = distinct !{!127, !50}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !50}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !50}
!132 = distinct !{!132, !50}
!133 = distinct !{!133, !50}
!134 = distinct !{!134, !50, !53, !54}
!135 = distinct !{!135, !50}
!136 = distinct !{!136, !50, !54, !53}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = distinct !{!141, !50}
!142 = distinct !{!142, !50, !53, !54}
!143 = distinct !{!143, !50}
!144 = distinct !{!144, !50, !54, !53}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50}
!147 = distinct !{!147, !50, !53, !54}
!148 = distinct !{!148, !50, !54, !53}
!149 = distinct !{!149, !50}
!150 = distinct !{!150, !50}
!151 = distinct !{!151, !50}
!152 = distinct !{!152, !50, !53, !54}
!153 = distinct !{!153, !50, !54, !53}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = distinct !{!156, !50, !53, !54}
!157 = distinct !{!157, !50, !54, !53}
end_hunk_5
