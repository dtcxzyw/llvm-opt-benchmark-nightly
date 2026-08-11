loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn13GroupNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE:bb.a
  call void @free(ptr noundef nonnull %i.bz) #5
  br label %_ZN4ncnn3MatD2Ev.exit29

bb.u:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %bb.p, %bb.o, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.1

bb.v:                                             ; preds = %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.az, %bb.g ]
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %.not.i31 = icmp eq ptr %i.cf, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.ae, align 16, !tbaa !17 ; 3 uses
  %.not3.i32 = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %3, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i32, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ab, !inline_history !19

bb.z:                                             ; preds = %bb.x
  %.not.i35 = icmp eq ptr %i.cj, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.cj) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %bb.v, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13GroupNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !46
  %i.i = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !46
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !46
  %i.l = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not26 = icmp sgt i32 %i.l, %i.k
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 216
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.027 = phi i32 [ %i.l, %.lr.ph ], [ %i.ak, %.thread ] ; 3 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !46     ; 2 uses
  %i.s = mul nsw i32 %i.r, %.027                  ; 2 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !46     ; 4 uses
  %i.u = sdiv i32 %i.s, %i.t
  %i.v = sdiv i32 %i.r, %i.t
  %i.w = load ptr, ptr %3, align 8, !tbaa !18, !noalias !63
  %i.x = sext i32 %i.u to i64
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27, !noalias !63
  %i.z = mul i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !66
  %.not18 = icmp eq i32 %i.ab, 0
  br i1 %.not18, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ad = sext i32 %i.s to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ad
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.ah = phi ptr [ %i.ae, %bb.d ], [ null, %bb.c ]
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.aj = load float, ptr %i.q, align 8, !tbaa !67
  call fastcc void @_ZN4ncnnL9groupnormEPfPKfS2_fiiim(ptr noundef %i.aa, ptr noundef %i.ah, ptr noundef %i.ai, float noundef nofpclass(nan inf) %i.aj, i32 noundef %i.v, i32 noundef %i.t, i32 noundef %i.t, i64 noundef 1)
  %i.ak = add nsw i32 %.027, 1
  %i.al = load i32, ptr %i.b, align 4, !tbaa !46
  %.not.not = icmp slt i32 %.027, %i.al
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL9groupnormEPfPKfS2_fiiim(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef nofpclass(nan inf) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %4, 0                       ; 4 uses
  br i1 %i.a, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %bb.a
  %i.b = sext i32 %6 to i64
  %i.c = mul i64 %7, %i.b                         ; 2 uses
  %i.d = icmp sgt i32 %5, 3
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph188.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph188
  %i.e = and i32 %5, 2147483644                   ; 3 uses
  %wide.trip.count270 = zext nneg i32 %4 to i64
  %i.f = icmp slt i32 %i.e, %5
  %i.g = add nsw i32 %5, -4                       ; 2 uses
  %i.h = lshr i32 %i.g, 2
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %xtraiter = and i32 %i.i, 3                     ; 3 uses
  %i.j = icmp ult i32 %i.g, 12
  %unroll_iter = and i32 %i.i, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod392 = icmp ne i32 %xtraiter, 0
  %i.k = and i32 %5, 2147483644
  %8 = xor i32 %i.k, -1
  %i.l = add nsw i32 %5, %8                       ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 7
  %n.vec = and i64 %i.n, 8589934584               ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = trunc i64 %n.vec to i32
  %i.q = add i32 %i.e, %i.p
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv267 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next268, %._crit_edge.us ] ; 2 uses
  %.0122186.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.1123.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.0162184.us = phi <4 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %.lcssa384, %._crit_edge.us ] ; 2 uses
  %i.r = mul i64 %i.c, %indvars.iv267
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.0130176.us = phi ptr [ %i.ae, %.lr.ph.us.new ], [ %i.s, %.lr.ph.us ] ; 5 uses
  %.1163174.us = phi <4 x float> [ %i.ad, %.lr.ph.us.new ], [ %.0162184.us, %.lr.ph.us ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.t = load <4 x float>, ptr %.0130176.us, align 1, !tbaa !52
  %i.u = fadd fast <4 x float> %i.t, %.1163174.us
  %i.v = getelementptr inbounds nuw i8, ptr %.0130176.us, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 1, !tbaa !52
  %i.x = fadd fast <4 x float> %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %.0130176.us, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !52
  %i.aa = fadd fast <4 x float> %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %.0130176.us, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !52
  %i.ad = fadd fast <4 x float> %i.ac, %i.aa      ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0130176.us, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader173_crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !68

.lr.ph182.us:                                     ; preds = %.lr.ph182.us.preheader382, %.lr.ph182.us
  %.1123181.us = phi float [ %i.ag, %.lr.ph182.us ], [ %.1123181.us.ph, %.lr.ph182.us.preheader382 ]
  %.1131180.us = phi ptr [ %i.ah, %.lr.ph182.us ], [ %.1131180.us.ph, %.lr.ph182.us.preheader382 ] ; 2 uses
  %.1140179.us = phi i32 [ %i.ai, %.lr.ph182.us ], [ %.1140179.us.ph, %.lr.ph182.us.preheader382 ]
  %i.af = load float, ptr %.1131180.us, align 4, !tbaa !70
  %i.ag = fadd fast float %i.af, %.1123181.us     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1131180.us, i64 4
  %i.ai = add nuw nsw i32 %.1140179.us, 1         ; 2 uses
  %exitcond266.not = icmp eq i32 %i.ai, %5
  br i1 %exitcond266.not, label %._crit_edge.us, label %.lr.ph182.us, !llvm.loop !71

._crit_edge.us:                                   ; preds = %.lr.ph182.us, %middle.block, %..preheader173_crit_edge.us
  %.1123.lcssa.us = phi float [ %.0122186.us, %..preheader173_crit_edge.us ], [ %i.at, %middle.block ], [ %i.ag, %.lr.ph182.us ] ; 2 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge189, label %.lr.ph.us, !llvm.loop !74

..preheader173_crit_edge.us.unr-lcssa:            ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %..preheader173_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader173_crit_edge.us.unr-lcssa, %.lr.ph.us
  %.0130176.us.epil.init = phi ptr [ %i.s, %.lr.ph.us ], [ %i.ae, %..preheader173_crit_edge.us.unr-lcssa ]
  %.1163174.us.epil.init = phi <4 x float> [ %.0162184.us, %.lr.ph.us ], [ %i.ad, %..preheader173_crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod392)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.0130176.us.epil = phi ptr [ %.0130176.us.epil.init, %.epil.preheader ], [ %i.al, %bb.b ] ; 2 uses
  %.1163174.us.epil = phi <4 x float> [ %.1163174.us.epil.init, %.epil.preheader ], [ %i.ak, %bb.b ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.aj = load <4 x float>, ptr %.0130176.us.epil, align 1, !tbaa !52
  %i.ak = fadd fast <4 x float> %i.aj, %.1163174.us.epil ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0130176.us.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader173_crit_edge.us, label %bb.b, !llvm.loop !75

..preheader173_crit_edge.us:                      ; preds = %bb.b, %..preheader173_crit_edge.us.unr-lcssa
  %.lcssa384 = phi <4 x float> [ %i.ad, %..preheader173_crit_edge.us.unr-lcssa ], [ %i.ak, %bb.b ] ; 2 uses
  %.lcssa383 = phi ptr [ %i.ae, %..preheader173_crit_edge.us.unr-lcssa ], [ %i.al, %bb.b ] ; 3 uses
  br i1 %i.f, label %.lr.ph182.us.preheader, label %._crit_edge.us

.lr.ph182.us.preheader:                           ; preds = %..preheader173_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph182.us.preheader382, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph182.us.preheader
  %i.am = getelementptr i8, ptr %.lcssa383, i64 %i.o
  %i.an = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0122186.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.an, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi315 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.ao = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.lcssa383, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !70
  %wide.load316 = load <4 x float>, ptr %i.ap, align 4, !tbaa !70
  %i.aq = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.ar = fadd fast <4 x float> %wide.load316, %vec.phi315 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ar, %i.aq
  %i.at = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph182.us.preheader382

.lr.ph182.us.preheader382:                        ; preds = %.lr.ph182.us.preheader, %middle.block
  %.1123181.us.ph = phi float [ %.0122186.us, %.lr.ph182.us.preheader ], [ %i.at, %middle.block ]
  %.1131180.us.ph = phi ptr [ %.lcssa383, %.lr.ph182.us.preheader ], [ %i.am, %middle.block ]
  %.1140179.us.ph = phi i32 [ %i.e, %.lr.ph182.us.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph182.us

.lr.ph188.split:                                  ; preds = %.lr.ph188
  %i.au = icmp sgt i32 %5, 0
  br i1 %i.au, label %.preheader173.us193.preheader, label %._crit_edge189

.preheader173.us193.preheader:                    ; preds = %.lr.ph188.split
  %wide.trip.count = zext nneg i32 %4 to i64
  %exitcond.not = icmp eq i32 %5, 1
  %exitcond.not.1 = icmp eq i32 %5, 2
  br label %.preheader173.us193

.preheader173.us193:                              ; preds = %.preheader173.us193.preheader, %._crit_edge.us201
  %indvars.iv = phi i64 [ 0, %.preheader173.us193.preheader ], [ %indvars.iv.next, %._crit_edge.us201 ] ; 2 uses
  %.0122186.us194 = phi float [ 0.000000e+00, %.preheader173.us193.preheader ], [ %.lcssa389, %._crit_edge.us201 ]
  %i.av = mul i64 %i.c, %indvars.iv
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !70
  %i.ay = fadd fast float %i.ax, %.0122186.us194  ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us201, label %bb.c

bb.c:                                             ; preds = %.preheader173.us193
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70
  %i.bb = fadd fast float %i.ba, %i.ay            ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us201, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !70
  %i.be = fadd fast float %i.bd, %i.bb
  br label %._crit_edge.us201

._crit_edge.us201:                                ; preds = %bb.d, %bb.c, %.preheader173.us193
  %.lcssa389 = phi float [ %i.ay, %.preheader173.us193 ], [ %i.bb, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond265.not, label %._crit_edge189, label %.preheader173.us193, !llvm.loop !74

._crit_edge189:                                   ; preds = %._crit_edge.us201, %._crit_edge.us, %.lr.ph188.split, %bb.a
  %.0162.lcssa = phi <4 x float> [ zeroinitializer, %bb.a ], [ %.lcssa384, %._crit_edge.us ], [ zeroinitializer, %.lr.ph188.split ], [ zeroinitializer, %._crit_edge.us201 ] ; 2 uses
  %.0122.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1123.lcssa.us, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph188.split ], [ %.lcssa389, %._crit_edge.us201 ]
  %i.bf = shufflevector <4 x float> %.0162.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bg = fadd fast <4 x float> %i.bf, %.0162.lcssa ; 2 uses
  %i.bh = extractelement <4 x float> %i.bg, i64 1
  %i.bi = extractelement <4 x float> %i.bg, i64 0
  %i.bj = fadd fast float %i.bh, %.0122.lcssa
  %i.bk = fadd fast float %i.bj, %i.bi
  %i.bl = mul nsw i32 %5, %4
  %i.bm = sitofp fast i32 %i.bl to float          ; 2 uses
  %i.bn = fdiv fast float %i.bk, %i.bm            ; 4 uses
  %i.bo = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %i.a, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %._crit_edge189
  %i.bq = sext i32 %6 to i64
  %i.br = mul i64 %7, %i.bq
  %i.bs = icmp sgt i32 %5, 3
  %i.bt = and i32 %5, -4                          ; 2 uses
  %wide.trip.count276 = zext nneg i32 %4 to i64
  %i.bu = add i32 %5, -4                          ; 2 uses
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = add nuw nsw i32 %i.bv, 1                ; 2 uses
  %xtraiter393 = and i32 %i.bw, 3                 ; 3 uses
  %i.bx = icmp ult i32 %i.bu, 12
  %unroll_iter399 = and i32 %i.bw, 2147483644
  %lcmp.mod395.not = icmp eq i32 %xtraiter393, 0
  %lcmp.mod398 = icmp ne i32 %xtraiter393, 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.e

._crit_edge222:                                   ; preds = %._crit_edge, %._crit_edge189
  %.0164.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge189 ], [ %.1165.lcssa, %._crit_edge ] ; 2 uses
  %.0137.lcssa = phi float [ 0.000000e+00, %._crit_edge189 ], [ %.1138.lcssa, %._crit_edge ]
  %i.by = shufflevector <4 x float> %.0164.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bz = fadd fast <4 x float> %i.by, %.0164.lcssa ; 2 uses
  %i.ca = extractelement <4 x float> %i.bz, i64 1
  %i.cb = extractelement <4 x float> %i.bz, i64 0
  %i.cc = fadd fast float %i.ca, %.0137.lcssa
  %i.cd = fadd fast float %i.cc, %i.cb
  %i.ce = fdiv fast float %i.cd, %i.bm
  %i.cf = fadd fast float %i.ce, %3
  %i.cg = tail call fast float @llvm.sqrt.f32(float %i.cf)
  %i.ch = fdiv fast float 1.000000e+00, %i.cg     ; 5 uses
  %i.ci = fmul fast float %i.ch, %i.bn            ; 4 uses
  %i.cj = insertelement <4 x float> poison, float %i.ch, i64 0
end_hunk_0
begin_hunk_1_@_ZNK4ncnn13GroupNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !46
  %i.i = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !46
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !46
  %i.l = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not28 = icmp sgt i32 %i.l, %i.k
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 216
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.029 = phi i32 [ %i.l, %.lr.ph ], [ %i.aq, %.thread ] ; 3 uses
  %i.s = load i32, ptr %4, align 4, !tbaa !46     ; 2 uses
  %i.t = mul nsw i32 %i.s, %.029                  ; 2 uses
  %i.u = load i32, ptr %5, align 4, !tbaa !46     ; 4 uses
  %i.v = sdiv i32 %i.t, %i.u
  %i.w = load ptr, ptr %3, align 8, !tbaa !18, !noalias !98
  %i.x = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !98
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !27, !noalias !98
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !66
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.af = sext i32 %i.t to i64                    ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.af
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.aj = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.ak = phi ptr [ %i.ai, %bb.d ], [ null, %bb.c ]
  %i.al = load float, ptr %i.r, align 8, !tbaa !67
  %i.am = sdiv i32 %i.s, %i.u
  %i.an = load i32, ptr %6, align 4, !tbaa !46
  %i.ao = mul nsw i32 %i.an, %i.u
  %i.ap = load i64, ptr %7, align 8, !tbaa !60
  call fastcc void @_ZN4ncnnL9groupnormEPfPKfS2_fiiim(ptr noundef %i.ac, ptr noundef %i.aj, ptr noundef %i.ak, float noundef nofpclass(nan inf) %i.al, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.u, i64 noundef %i.ap)
  %i.aq = add nsw i32 %.029, 1
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !46
  %.not.not = icmp slt i32 %.029, %i.ar
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13GroupNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !46
  %i.i = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !46
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !46
  %i.l = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not26 = icmp sgt i32 %i.l, %i.k
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 216
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.027 = phi i32 [ %i.l, %.lr.ph ], [ %i.ak, %.thread ] ; 3 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !46     ; 2 uses
  %i.s = mul nsw i32 %i.r, %.027                  ; 2 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !46     ; 4 uses
  %i.u = sdiv i32 %i.s, %i.t
  %i.v = sdiv i32 %i.r, %i.t
  %i.w = load ptr, ptr %3, align 8, !tbaa !18, !noalias !101
  %i.x = sext i32 %i.u to i64
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27, !noalias !101
  %i.z = mul i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !66
  %.not18 = icmp eq i32 %i.ab, 0
  br i1 %.not18, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ad = sext i32 %i.s to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ad
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.ah = phi ptr [ %i.ae, %bb.d ], [ null, %bb.c ]
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.aj = load float, ptr %i.q, align 8, !tbaa !67
  call fastcc void @_ZN4ncnnL19groupnorm_bf16s_sseEPtPKfS2_fiiim(ptr noundef %i.aa, ptr noundef %i.ah, ptr noundef %i.ai, float noundef nofpclass(nan inf) %i.aj, i32 noundef %i.v, i32 noundef %i.t, i32 noundef %i.t, i64 noundef 1)
  %i.ak = add nsw i32 %.027, 1
  %i.al = load i32, ptr %i.b, align 4, !tbaa !46
  %.not.not = icmp slt i32 %.027, %i.al
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL19groupnorm_bf16s_sseEPtPKfS2_fiiim(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef nofpclass(nan inf) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %4, 0                       ; 4 uses
  br i1 %i.a, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %bb.a
  %i.b = sext i32 %6 to i64
  %i.c = mul i64 %7, %i.b                         ; 2 uses
  %i.d = icmp sgt i32 %5, 3
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph196.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph196
  %i.e = and i32 %5, 2147483644                   ; 3 uses
  %wide.trip.count278 = zext nneg i32 %4 to i64
  %i.f = icmp slt i32 %i.e, %5
  %i.g = add nsw i32 %5, -4                       ; 2 uses
  %i.h = lshr i32 %i.g, 2                         ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i32 %i.h, 0
  %unroll_iter = and i32 %i.i, 2147483646
  %i.k = and i32 %i.g, 4
  %lcmp.mod.not.not = icmp eq i32 %i.k, 0
  %lcmp.mod398 = trunc i32 %i.i to i1
  %i.l = and i32 %5, 2147483644
  %8 = xor i32 %i.l, -1
  %i.m = add nsw i32 %5, %8                       ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 7
  %n.vec = and i64 %i.o, 8589934584               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  %i.q = trunc i64 %n.vec to i32
  %i.r = add i32 %i.e, %i.q
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv275 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next276, %._crit_edge.us ] ; 2 uses
  %.0122194.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.1123.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.0170192.us = phi <4 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %.lcssa390, %._crit_edge.us ] ; 2 uses
  %i.s = mul i64 %i.c, %indvars.iv275
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s ; 2 uses
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.0130184.us = phi ptr [ %i.ah, %.lr.ph.us.new ], [ %i.t, %.lr.ph.us ] ; 3 uses
  %.1171182.us = phi <4 x float> [ %i.ag, %.lr.ph.us.new ], [ %.0170192.us, %.lr.ph.us ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.u = load i64, ptr %.0130184.us, align 1, !tbaa !52
  %i.v = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.w = bitcast <2 x i64> %i.v to <8 x i16>
  %i.x = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.w, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.y = bitcast <8 x i16> %i.x to <4 x float>
  %i.z = fadd fast <4 x float> %.1171182.us, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0130184.us, i64 8
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !52
  %i.ac = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.ad = bitcast <2 x i64> %i.ac to <8 x i16>
  %i.ae = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.af = bitcast <8 x i16> %i.ae to <4 x float>
  %i.ag = fadd fast <4 x float> %i.z, %i.af       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0130184.us, i64 16 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader181_crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !104

.lr.ph190.us:                                     ; preds = %.lr.ph190.us.preheader388, %.lr.ph190.us
  %.1123189.us = phi float [ %i.am, %.lr.ph190.us ], [ %.1123189.us.ph, %.lr.ph190.us.preheader388 ]
  %.1131188.us = phi ptr [ %i.an, %.lr.ph190.us ], [ %.1131188.us.ph, %.lr.ph190.us.preheader388 ] ; 2 uses
  %.1140187.us = phi i32 [ %i.ao, %.lr.ph190.us ], [ %.1140187.us.ph, %.lr.ph190.us.preheader388 ]
  %i.ai = load i16, ptr %.1131188.us, align 2, !tbaa !105
  %i.aj = zext i16 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 16
  %i.al = bitcast i32 %i.ak to float
  %i.am = fadd fast float %.1123189.us, %i.al     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1131188.us, i64 2
  %i.ao = add nuw nsw i32 %.1140187.us, 1         ; 2 uses
  %exitcond274.not = icmp eq i32 %i.ao, %5
  br i1 %exitcond274.not, label %._crit_edge.us, label %.lr.ph190.us, !llvm.loop !107

._crit_edge.us:                                   ; preds = %.lr.ph190.us, %middle.block, %..preheader181_crit_edge.us
  %.1123.lcssa.us = phi float [ %.0122194.us, %..preheader181_crit_edge.us ], [ %i.bj, %middle.block ], [ %i.am, %.lr.ph190.us ] ; 2 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge197, label %.lr.ph.us, !llvm.loop !108

..preheader181_crit_edge.us.unr-lcssa:            ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader181_crit_edge.us

.epil.preheader:                                  ; preds = %..preheader181_crit_edge.us.unr-lcssa, %.lr.ph.us
  %.0130184.us.epil.init = phi ptr [ %i.t, %.lr.ph.us ], [ %i.ah, %..preheader181_crit_edge.us.unr-lcssa ] ; 2 uses
  %.1171182.us.epil.init = phi <4 x float> [ %.0170192.us, %.lr.ph.us ], [ %i.ag, %..preheader181_crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod398)
  %i.ap = load i64, ptr %.0130184.us.epil.init, align 1, !tbaa !52
  %i.aq = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.ar = bitcast <2 x i64> %i.aq to <8 x i16>
  %i.as = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.at = bitcast <8 x i16> %i.as to <4 x float>
  %i.au = fadd fast <4 x float> %.1171182.us.epil.init, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.0130184.us.epil.init, i64 8
  br label %..preheader181_crit_edge.us

..preheader181_crit_edge.us:                      ; preds = %..preheader181_crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa390 = phi <4 x float> [ %i.ag, %..preheader181_crit_edge.us.unr-lcssa ], [ %i.au, %.epil.preheader ] ; 2 uses
  %.lcssa389 = phi ptr [ %i.ah, %..preheader181_crit_edge.us.unr-lcssa ], [ %i.av, %.epil.preheader ] ; 3 uses
  br i1 %i.f, label %.lr.ph190.us.preheader, label %._crit_edge.us

.lr.ph190.us.preheader:                           ; preds = %..preheader181_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph190.us.preheader388, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph190.us.preheader
  %i.aw = getelementptr i8, ptr %.lcssa389, i64 %i.p
  %i.ax = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0122194.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ax, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi323 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ay = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.lcssa389, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !105
  %wide.load324 = load <4 x i16>, ptr %i.az, align 2, !tbaa !105
  %i.ba = zext <4 x i16> %wide.load to <4 x i32>
  %i.bb = zext <4 x i16> %wide.load324 to <4 x i32>
  %i.bc = shl nuw <4 x i32> %i.ba, splat (i32 16)
  %i.bd = shl nuw <4 x i32> %i.bb, splat (i32 16)
  %i.be = bitcast <4 x i32> %i.bc to <4 x float>
  %i.bf = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bg = fadd fast <4 x float> %vec.phi, %i.be   ; 2 uses
  %i.bh = fadd fast <4 x float> %vec.phi323, %i.bf ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bh, %i.bg
  %i.bj = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph190.us.preheader388

.lr.ph190.us.preheader388:                        ; preds = %.lr.ph190.us.preheader, %middle.block
  %.1123189.us.ph = phi float [ %.0122194.us, %.lr.ph190.us.preheader ], [ %i.bj, %middle.block ]
  %.1131188.us.ph = phi ptr [ %.lcssa389, %.lr.ph190.us.preheader ], [ %i.aw, %middle.block ]
  %.1140187.us.ph = phi i32 [ %i.e, %.lr.ph190.us.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph190.us

.lr.ph196.split:                                  ; preds = %.lr.ph196
  %i.bk = icmp sgt i32 %5, 0
  br i1 %i.bk, label %.preheader181.us201.preheader, label %._crit_edge197

.preheader181.us201.preheader:                    ; preds = %.lr.ph196.split
  %wide.trip.count = zext nneg i32 %4 to i64
  %exitcond.not = icmp eq i32 %5, 1
  %exitcond.not.1 = icmp eq i32 %5, 2
  br label %.preheader181.us201

.preheader181.us201:                              ; preds = %.preheader181.us201.preheader, %._crit_edge.us209
  %indvars.iv = phi i64 [ 0, %.preheader181.us201.preheader ], [ %indvars.iv.next, %._crit_edge.us209 ] ; 2 uses
  %.0122194.us202 = phi float [ 0.000000e+00, %.preheader181.us201.preheader ], [ %.lcssa395, %._crit_edge.us209 ]
  %i.bl = mul i64 %i.c, %indvars.iv
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bl ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !105
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw i32 %i.bo, 16
  %i.bq = bitcast i32 %i.bp to float
  %i.br = fadd fast float %.0122194.us202, %i.bq  ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us209, label %bb.b

bb.b:                                             ; preds = %.preheader181.us201
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !105
  %i.bu = zext i16 %i.bt to i32
  %i.bv = shl nuw i32 %i.bu, 16
  %i.bw = bitcast i32 %i.bv to float
  %i.bx = fadd fast float %i.br, %i.bw            ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us209, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !105
  %i.ca = zext i16 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 16
  %i.cc = bitcast i32 %i.cb to float
  %i.cd = fadd fast float %i.bx, %i.cc
  br label %._crit_edge.us209

._crit_edge.us209:                                ; preds = %bb.c, %bb.b, %.preheader181.us201
  %.lcssa395 = phi float [ %i.br, %.preheader181.us201 ], [ %i.bx, %bb.b ], [ %i.cd, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond273.not, label %._crit_edge197, label %.preheader181.us201, !llvm.loop !108

._crit_edge197:                                   ; preds = %._crit_edge.us209, %._crit_edge.us, %.lr.ph196.split, %bb.a
  %.0170.lcssa = phi <4 x float> [ zeroinitializer, %bb.a ], [ %.lcssa390, %._crit_edge.us ], [ zeroinitializer, %.lr.ph196.split ], [ zeroinitializer, %._crit_edge.us209 ] ; 2 uses
  %.0122.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1123.lcssa.us, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph196.split ], [ %.lcssa395, %._crit_edge.us209 ]
  %i.ce = shufflevector <4 x float> %.0170.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.cf = fadd fast <4 x float> %i.ce, %.0170.lcssa ; 2 uses
  %i.cg = extractelement <4 x float> %i.cf, i64 1
  %i.ch = extractelement <4 x float> %i.cf, i64 0
  %i.ci = fadd fast float %i.cg, %.0122.lcssa
  %i.cj = fadd fast float %i.ci, %i.ch
  %i.ck = mul nsw i32 %5, %4
  %i.cl = sitofp fast i32 %i.ck to float          ; 2 uses
  %i.cm = fdiv fast float %i.cj, %i.cl            ; 4 uses
  %i.cn = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.a, label %.lr.ph229, label %._crit_edge230

.lr.ph229:                                        ; preds = %._crit_edge197
  %i.cp = sext i32 %6 to i64
  %i.cq = mul i64 %7, %i.cp
  %i.cr = icmp sgt i32 %5, 3
  %i.cs = and i32 %5, -4
  %wide.trip.count284 = zext nneg i32 %4 to i64
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.d

._crit_edge230:                                   ; preds = %._crit_edge, %._crit_edge197
  %.0172.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge197 ], [ %.1173.lcssa, %._crit_edge ] ; 2 uses
  %.0137.lcssa = phi float [ 0.000000e+00, %._crit_edge197 ], [ %.1138.lcssa, %._crit_edge ]
  %i.ct = shufflevector <4 x float> %.0172.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.cu = fadd fast <4 x float> %i.ct, %.0172.lcssa ; 2 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 1
  %i.cw = extractelement <4 x float> %i.cu, i64 0
end_hunk_1
