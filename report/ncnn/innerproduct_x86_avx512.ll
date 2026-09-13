Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_avx512?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN4ncnn12InnerProductD2Ev:bb.a
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
  tail call void @__clang_call_terminate(ptr %i.aq) #22
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
  tail call void @__clang_call_terminate(ptr %i.bf) #22
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
  tail call void @__clang_call_terminate(ptr %i.bu) #22
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
  tail call void @_ZSt9terminatev() #22
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
define hidden noundef i32 @_ZN4ncnn23InnerProduct_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = and i32 %i.d, 7
  %i.j = icmp eq i32 %i.i, 0
  %i.k = and i1 %i.j, %i.h                        ; 3 uses
  %.036 = select i1 %i.k, i32 8, i32 1            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !46
  %i.o = sdiv i32 %i.n, %.036
  %i.p = zext nneg i32 %.036 to i64               ; 4 uses
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.e, i32 noundef %i.o, i64 noundef %i.p, i32 noundef %.036, ptr noundef null)
          to label %.preheader50 unwind label %bb.i

.preheader50:                                     ; preds = %bb.a
  %i.q = add nsw i32 %.036, -1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !46
  %.not = icmp sgt i32 %.036, %i.r
  br i1 %.not, label %._crit_edge56, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.s = select i1 %i.k, i32 3, i32 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.v = icmp sgt i32 %i.e, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br i1 %i.v, label %.preheader.lr.ph.us.preheader, label %._crit_edge56

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %3 = zext nneg i32 %i.q to i64
  %wide.trip.count64 = zext nneg i32 %i.e to i64
  %xtraiter = and i64 %i.p, 1
  %unroll_iter = and i64 %i.p, 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %.036 to i1
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv66 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next67, %._crit_edge.us ] ; 5 uses
  %i.y = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.z = lshr i32 %i.y, %i.s
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !48
  %i.ac = sext i32 %i.ab to i64
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.u, align 8, !tbaa !49
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  br label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.151.us = phi ptr [ %i.bd, %.preheader.us.new ], [ %.03453.us, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ai = add nuw nsw i64 %indvars.iv, %indvars.iv66
  %i.aj = load ptr, ptr %2, align 8, !tbaa !19
  %i.ak = load i32, ptr %i.w, align 4, !tbaa !48
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.ai, %i.al
  %i.an = load i64, ptr %i.x, align 8, !tbaa !49
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv61
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %.151.us, i64 1
  store i8 %i.ar, ptr %.151.us, align 1, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.at = add nuw nsw i64 %indvars.iv.next, %indvars.iv66
  %i.au = load ptr, ptr %2, align 8, !tbaa !19
  %i.av = load i32, ptr %i.w, align 4, !tbaa !48
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.at, %i.aw
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !49
  %i.az = mul i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv61
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %.151.us, i64 2 ; 3 uses
  store i8 %i.bc, ptr %i.as, align 1, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.us.new, !llvm.loop !170

.unr-lcssa:                                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.151.us.epil.init = phi ptr [ %.03453.us, %.preheader.us ], [ %i.bd, %.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.be = add nuw nsw i64 %indvars.iv.epil.init, %indvars.iv66
  %i.bf = load ptr, ptr %2, align 8, !tbaa !19
  %i.bg = load i32, ptr %i.w, align 4, !tbaa !48
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.be, %i.bh
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !49
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv61
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 1
  store i8 %i.bn, ptr %.151.us.epil.init, align 1, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.bd, %.unr-lcssa ], [ %i.bo, %.epil.preheader ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !171

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %bb.b
  %indvars.iv61 = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvars.iv.next62, %bb.b ] ; 4 uses
  %.03453.us = phi ptr [ %i.ah, %.preheader.lr.ph.us ], [ %.lcssa, %bb.b ] ; 2 uses
  br i1 %i.k, label %.preheader.us.new, label %.epil.preheader

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, %i.p ; 2 uses
  %4 = add nuw nsw i64 %indvars.iv.next67, %3
  %5 = load i32, ptr %i.c, align 8, !tbaa !46
  %6 = sext i32 %5 to i64
  %i.bp = icmp slt i64 %4, %6
  br i1 %i.bp, label %.preheader.lr.ph.us, label %._crit_edge56, !llvm.loop !172

._crit_edge56:                                    ; preds = %._crit_edge.us, %.lr.ph, %.preheader50
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.c

bb.c:                                             ; preds = %._crit_edge56
  %i.bs = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit37

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %i.bw)
          to label %_ZN4ncnn3MatD2Ev.exit37 unwind label %bb.h, !inline_history !0

bb.f:                                             ; preds = %bb.d
  %.not.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i48, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.bw) #10
  br label %_ZN4ncnn3MatD2Ev.exit37

bb.h:                                             ; preds = %bb.e
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %bb.c, %._crit_edge56, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !46
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, i32 noundef %i.cd, i64 noundef 4, ptr noundef null)
  %i.ce = load i32, ptr %i.c, align 8, !tbaa !46  ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit37
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !19 ; 3 uses
  %wide.trip.count72 = zext nneg i32 %i.ce to i64 ; 2 uses
  %xtraiter90 = and i64 %wide.trip.count72, 1
  %i.ck = icmp eq i32 %i.ce, 1
  br i1 %i.ck, label %.epil.preheader89, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter93 = and i64 %wide.trip.count72, 2147483646
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cn, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = atomicrmw add ptr %i.cn, i32 -1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !0

bb.m:                                             ; preds = %bb.k
  %.not.i46 = icmp eq ptr %i.cs, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cs) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %i.cl

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %._crit_edge, label %.epil.preheader89

.epil.preheader89:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph58
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next70.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i32 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod92)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv69.epil.init
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !53 ; 2 uses
  %i.da = fcmp fast oeq float %i.cz, 0.000000e+00
  br i1 %i.da, label %._crit_edge.loopexit.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader89
  %i.db = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.dc = load float, ptr %i.db, align 4, !tbaa !53
  %i.dd = fmul fast float %i.dc, %i.cz
  %i.de = fdiv fast float 1.000000e+00, %i.dd
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.p, %.epil.preheader89
  %.0.epil = phi nsz float [ %i.de, %bb.p ], [ 0.000000e+00, %.epil.preheader89 ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv69.epil.init
  store float %.0.epil, ptr %i.df, align 4, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit37
  %i.dg = load i8, ptr %1, align 8, !tbaa !61, !range !41, !noundef !42
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.v, label %bb.ab

bb.q:                                             ; preds = %bb.u, %.lr.ph58.new
  %indvars.iv69 = phi i64 [ 0, %.lr.ph58.new ], [ %indvars.iv.next70.1, %bb.u ] ; 4 uses
  %niter94 = phi i64 [ 0, %.lr.ph58.new ], [ %niter94.next.1, %bb.u ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv69
  %i.dj = load float, ptr %i.di, align 4, !tbaa !53 ; 2 uses
  %i.dk = fcmp fast oeq float %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !53
  %i.dn = fmul fast float %i.dm, %i.dj
  %i.do = fdiv fast float 1.000000e+00, %i.dn
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0 = phi nsz float [ %i.do, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv69
  store float %.0, ptr %i.dp, align 4, !tbaa !53
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next70
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !53 ; 2 uses
  %i.ds = fcmp fast oeq float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.du = load float, ptr %i.dt, align 4, !tbaa !53
  %i.dv = fmul fast float %i.du, %i.dr
  %i.dw = fdiv fast float 1.000000e+00, %i.dv
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.1 = phi nsz float [ %i.dw, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next70
  store float %.0.1, ptr %i.dx, align 4, !tbaa !53
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.q, !llvm.loop !173

bb.v:                                             ; preds = %._crit_edge
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !17 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dz, null
  br i1 %.not.i42, label %_ZN4ncnn3Mat7releaseEv.exit44, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = atomicrmw add ptr %i.dz, i32 -1 acq_rel, align 4
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.x, label %_ZN4ncnn3Mat7releaseEv.exit44

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.ed, null
  %i.ee = load ptr, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i43, label %bb.z, label %bb.y
end_hunk_0
