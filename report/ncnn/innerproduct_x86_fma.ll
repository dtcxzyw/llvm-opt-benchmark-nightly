Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_fma?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ncnn12InnerProductD2Ev:bb.a
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit3:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit4, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit3
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit2

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit2 unwind label %bb.s, !inline_history !19

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
  tail call void @__clang_call_terminate(ptr %i.aq) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit3, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit1

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not3.i14 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.y, !inline_history !19

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
  tail call void @__clang_call_terminate(ptr %i.bf) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit2, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bk, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 3 uses
  %.not3.i18 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae, !inline_history !19

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
  tail call void @__clang_call_terminate(ptr %i.bu) #20
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
  tail call void @_ZSt9terminatev() #20
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
define hidden noundef i32 @_ZN4ncnn20InnerProduct_x86_fma24create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.g = load i8, ptr %i.f, align 1, !tbaa !48, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = and i32 %i.d, 7
  %i.j = icmp eq i32 %i.i, 0
  %i.k = and i1 %i.j, %i.h                        ; 4 uses
  %.036 = select i1 %i.k, i32 8, i32 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.o = sdiv i32 %i.n, 8
  %3 = select i1 %i.k, i32 %i.o, i32 %i.n
  %i.p = zext nneg i32 %.036 to i64               ; 4 uses
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.e, i32 noundef %3, i64 noundef %i.p, i32 noundef %.036, ptr noundef null)
          to label %.preheader50 unwind label %bb.i

.preheader50:                                     ; preds = %bb.a
  %i.q = add nsw i32 %.036, -1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !47
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
  %i.y = zext nneg i32 %i.q to i64
  %wide.trip.count64 = zext nneg i32 %i.e to i64
  %xtraiter = and i64 %i.p, 1
  %unroll_iter = and i64 %i.p, 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %.036 to i1
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv66 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next67, %._crit_edge.us ] ; 5 uses
  %i.z = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.aa = lshr i32 %i.z, %i.s
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !49
  %i.ad = sext i32 %i.ac to i64
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = mul nsw i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !50
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  br label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.151.us = phi ptr [ %i.be, %.preheader.us.new ], [ %.03453.us, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.aj = add nuw nsw i64 %indvars.iv, %indvars.iv66
  %i.ak = load ptr, ptr %2, align 8, !tbaa !18
  %i.al = load i32, ptr %i.w, align 4, !tbaa !49
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !50
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv61
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %.151.us, i64 1
  store i8 %i.as, ptr %.151.us, align 1, !tbaa !77
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.au = add nuw nsw i64 %indvars.iv.next, %indvars.iv66
  %i.av = load ptr, ptr %2, align 8, !tbaa !18
  %i.aw = load i32, ptr %i.w, align 4, !tbaa !49
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.au, %i.ax
  %i.az = load i64, ptr %i.x, align 8, !tbaa !50
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv61
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %.151.us, i64 2 ; 3 uses
  store i8 %i.bd, ptr %i.at, align 1, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.us.new, !llvm.loop !116

.unr-lcssa:                                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.151.us.epil.init = phi ptr [ %.03453.us, %.preheader.us ], [ %i.be, %.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.bf = add nuw nsw i64 %indvars.iv.epil.init, %indvars.iv66
  %i.bg = load ptr, ptr %2, align 8, !tbaa !18
  %i.bh = load i32, ptr %i.w, align 4, !tbaa !49
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bf, %i.bi
  %i.bk = load i64, ptr %i.x, align 8, !tbaa !50
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv61
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %.151.us.epil.init, i64 1
  store i8 %i.bo, ptr %.151.us.epil.init, align 1, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.be, %.unr-lcssa ], [ %i.bp, %.epil.preheader ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !117

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %bb.b
  %indvars.iv61 = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvars.iv.next62, %bb.b ] ; 4 uses
  %.03453.us = phi ptr [ %i.ai, %.preheader.lr.ph.us ], [ %.lcssa, %bb.b ] ; 2 uses
  br i1 %i.k, label %.preheader.us.new, label %.epil.preheader

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, %i.p ; 2 uses
  %i.bq = add nuw nsw i64 %indvars.iv.next67, %i.y
  %i.br = load i32, ptr %i.c, align 8, !tbaa !47
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %.preheader.lr.ph.us, label %._crit_edge56, !llvm.loop !118

._crit_edge56:                                    ; preds = %._crit_edge.us, %.lr.ph, %.preheader50
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.c

bb.c:                                             ; preds = %._crit_edge56
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit37

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.ca)
          to label %_ZN4ncnn3MatD2Ev.exit37 unwind label %bb.h, !inline_history !19

bb.f:                                             ; preds = %bb.d
  %.not.i48 = icmp eq ptr %i.ca, null
  br i1 %.not.i48, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.ca) #10
  br label %_ZN4ncnn3MatD2Ev.exit37

bb.h:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %bb.c, %._crit_edge56, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ch = load i32, ptr %i.c, align 8, !tbaa !47
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i32 noundef %i.ch, i64 noundef 4, ptr noundef null)
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit37
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !18 ; 3 uses
  %wide.trip.count72 = zext nneg i32 %i.ci to i64 ; 2 uses
  %xtraiter90 = and i64 %wide.trip.count72, 1
  %i.co = icmp eq i32 %i.ci, 1
  br i1 %i.co, label %.epil.preheader89, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter93 = and i64 %wide.trip.count72, 2147483646
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cr, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
end_hunk_0
begin_hunk_1_@_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_fp16sERKNS_6OptionE:bb.a
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %bb.bn, label %_ZN4ncnn3Mat7releaseEv.exit

bb.bn:                                            ; preds = %bb.bm
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.lp, null
  %i.lq = load ptr, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lr = load ptr, ptr %i.lp, align 8, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef %i.lq), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i3 = icmp eq ptr %i.lq, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef nonnull %i.lq) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.bq, %bb.bp, %bb.bl, %bb.bm, %bb.bo
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.lv, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.lu, i8 0, i64 20, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  ret i32 0
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %9 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !47
  %i.j = sdiv i32 %i.g, %i.i
  store i32 %i.j, ptr %i.a, align 4, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99   ; 3 uses
  %.not.i106 = icmp eq i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 2 uses
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !98
  store <2 x ptr> %i.s, ptr %4, align 16, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %.pre, ptr %i.t, align 16, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.l, ptr %i.u, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  store ptr %i.x, ptr %i.v, align 16, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = load <4 x i32>, ptr %i.z, align 8, !tbaa !100
  store <4 x i32> %i.ac, ptr %i.y, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !101
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  store i64 %i.ai, ptr %i.ag, align 16, !tbaa !20
  %.not.i111 = icmp eq ptr %i.r, null
  br i1 %.not.i111, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.aj = atomicrmw add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.c
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !110
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 520
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %4, align 16, !tbaa !18
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK4ncnn3Mat5emptyEv.exit110.thread, label %_ZNK4ncnn3Mat5emptyEv.exit110

_ZNK4ncnn3Mat5emptyEv.exit110.thread:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.bj

bb.f:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.bq

_ZNK4ncnn3Mat5emptyEv.exit110:                    ; preds = %bb.e
  %i.ar = load i64, ptr %i.ag, align 16, !tbaa !20
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !101
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %i.av, label %bb.bj, label %bb.g

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit110, %_ZN4ncnn3Mat6addrefEv.exit
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !103 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 2
  %.pre116 = load i32, ptr %i.aa, align 4, !tbaa !49 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = icmp eq i32 %.pre116, %i.ay
  %or.cond147 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond147, label %bb.h, label %bb.ah

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !110
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !105
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %6, align 8, !tbaa !18
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK4ncnn3Mat5emptyEv.exit109.thread, label %_ZNK4ncnn3Mat5emptyEv.exit109

_ZNK4ncnn3Mat5emptyEv.exit109:                    ; preds = %bb.i
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !20
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !101
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.bk, %i.bm
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZNK4ncnn3Mat5emptyEv.exit109.thread, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit109
  %i.bq = load i32, ptr %i.bc, align 8, !tbaa !104 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !48, !range !41, !noundef !42
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = and i32 %i.bq, 3
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = and i1 %i.bv, %i.bt                     ; 6 uses
  %.0 = select i1 %i.bw, i32 4, i32 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bx = sdiv i32 %i.bq, 4
  %10 = select i1 %i.bw, i32 %i.bx, i32 %i.bq     ; 2 uses
  store i32 %10, ptr %i.b, align 4, !tbaa !100
  %i.by = load i32, ptr %i.h, align 8, !tbaa !47
  %i.bz = shl nuw nsw i32 %.0, 2
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !105
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.by, i32 noundef %10, i64 noundef %i.ca, i32 noundef %.0, ptr noundef %i.cc)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %2, align 8, !tbaa !18
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNK4ncnn3Mat5emptyEv.exit108.thread, label %_ZNK4ncnn3Mat5emptyEv.exit108

_ZNK4ncnn3Mat5emptyEv.exit108:                    ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !101
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cg, %i.cj
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZNK4ncnn3Mat5emptyEv.exit108.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.aa

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !100
  %i.cn = load i8, ptr %i.br, align 1, !tbaa !48, !range !41, !noundef !42
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.o, label %.thread142

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %i.h, align 8, !tbaa !47
  %i.cq = and i32 %i.cp, 7
  %i.cr = icmp eq i32 %i.cq, 0                    ; 2 uses
  %i.cs = select i1 %i.cr, i32 8, i32 1           ; 2 uses
  store i32 %i.cs, ptr %i.c, align 4, !tbaa !100
  %or.cond = and i1 %i.bw, %i.cr
  br i1 %or.cond, label %bb.p, label %.thread142

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !109
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.cu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.a)
  %.pre119 = load i32, ptr %i.c, align 4, !tbaa !100
  br label %.thread142

.thread142:                                       ; preds = %bb.n, %bb.p, %bb.o
  %i.cv = phi i32 [ %.pre119, %bb.p ], [ %i.cs, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 1
  %or.cond4 = and i1 %i.bw, %i.cw
  br i1 %or.cond4, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %.thread142
  %i.cx = icmp ne i32 %i.cv, 8
  %or.cond6.not = or i1 %i.bw, %i.cx
  br i1 %or.cond6.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !109
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.cz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.14, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.da = load i32, ptr %i.c, align 4, !tbaa !100
  %i.db = icmp ne i32 %i.da, 1
  %or.cond8.not = or i1 %i.db, %i.bw
  br i1 %or.cond8.not, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %.thread142
  %_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13.sink = phi ptr [ @_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13, %.thread142 ], [ @_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.15, %bb.s ]
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !109
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull %_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13.sink, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %6, ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit108.thread

_ZNK4ncnn3Mat5emptyEv.exit108.thread:             ; preds = %bb.l, %_ZNK4ncnn3Mat5emptyEv.exit108, %bb.t
  %.2 = phi i32 [ 0, %bb.t ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit108 ], [ -100, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit109.thread

_ZNK4ncnn3Mat5emptyEv.exit109.thread:             ; preds = %bb.i, %_ZNK4ncnn3Mat5emptyEv.exit109, %_ZNK4ncnn3Mat5emptyEv.exit108.thread
  %.3 = phi i32 [ %.2, %_ZNK4ncnn3Mat5emptyEv.exit108.thread ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit109 ], [ -100, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.de, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.u

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit109.thread
  %i.df = atomicrmw add ptr %i.de, i32 -1 acq_rel, align 4
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit74

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.dh, null
  %i.di = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.di)
          to label %_ZN4ncnn3MatD2Ev.exit74 unwind label %bb.z, !inline_history !19

bb.x:                                             ; preds = %bb.v
  %.not.i104 = icmp eq ptr %i.di, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.di) #10
  br label %_ZN4ncnn3MatD2Ev.exit74

bb.z:                                             ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit74:                          ; preds = %bb.u, %_ZNK4ncnn3Mat5emptyEv.exit109.thread, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bj

bb.aa:                                            ; preds = %bb.m, %bb.j
  %.pn67 = phi { ptr, i32 } [ %i.cm, %bb.m ], [ %i.bp, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.do = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i75 = icmp eq ptr %i.do, null
  br i1 %.not.i75, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.ac, label %_ZN4ncnn3MatD2Ev.exit73

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %.not3.i76 = icmp eq ptr %i.dr, null
  %i.ds = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i76, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.ds)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.ag, !inline_history !19

bb.ae:                                            ; preds = %bb.ac
  %.not.i102 = icmp eq ptr %i.ds, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.ds) #10
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.ag:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.ab, %bb.aa, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bq

bb.ah:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %i.ea = load <2 x ptr>, ptr %4, align 16, !tbaa !98
  store <2 x ptr> %i.ea, ptr %8, align 16, !tbaa !98
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ec = load i64, ptr %i.t, align 16, !tbaa !50
  store i64 %i.ec, ptr %i.eb, align 16, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ee = load i32, ptr %i.u, align 8, !tbaa !99
  store i32 %i.ee, ptr %i.ed, align 8, !tbaa !99
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.eg = load ptr, ptr %i.v, align 16, !tbaa !17
  store ptr %i.eg, ptr %i.ef, align 16, !tbaa !17
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.aw, ptr %i.eh, align 8, !tbaa !103
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %.pre116, ptr %i.ei, align 4, !tbaa !49
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ek = load <2 x i32>, ptr %i.ab, align 16, !tbaa !100
  store <2 x i32> %i.ek, ptr %i.ej, align 16, !tbaa !100
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.em = load i32, ptr %i.ad, align 8, !tbaa !101
end_hunk_1
