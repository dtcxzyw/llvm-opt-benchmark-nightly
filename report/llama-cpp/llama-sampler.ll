Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL24llama_sampler_temp_clonePK13llama_sampler:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !148 ; 2 uses
  %i.e = fcmp oeq float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !782 ; 2 uses
  store ptr @.str.20, ptr %i.f, align 8, !tbaa !135
  br label %llama_sampler_init_temp.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37, !inline_history !783 ; 4 uses
  invoke void @_ZN21llama_sampler_backendC2EPKc(ptr noundef nonnull align 8 dereferenceable(66) %i.g, ptr noundef nonnull @.str.21)
          to label %bb.d unwind label %bb.e, !inline_history !783

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store float %i.d, ptr %i.h, align 4, !tbaa !148
  br label %llama_sampler_init_temp.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 72) #39, !inline_history !783
  resume { ptr, i32 } %i.i

llama_sampler_init_temp.exit:                     ; preds = %bb.b, %bb.d
  %_ZL20llama_sampler_temp_i.sink.i = phi ptr [ @_ZL20llama_sampler_temp_i, %bb.d ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink.i = phi ptr [ %i.g, %bb.d ], [ %i.f, %bb.b ]
  %i.j = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !783 ; 3 uses
  store ptr %_ZL20llama_sampler_temp_i.sink.i, ptr %i.j, align 16, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sink.i, ptr %i.k, align 8, !tbaa !54
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23llama_sampler_temp_freeP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !87
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN21llama_sampler_backendD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !87
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #39
  br label %_ZN21llama_sampler_backendD2Ev.exit

_ZN21llama_sampler_backendD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #39
  br label %bb.c

bb.c:                                             ; preds = %_ZN21llama_sampler_backendD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL31llama_sampler_temp_backend_initP13llama_samplerP24ggml_backend_buffer_typej(ptr noundef %0, ptr noundef %1, i32 %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL29llama_sampler_backend_supportP13llama_samplerP24ggml_backend_buffer_type(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !116, !range !78, !noundef !79
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_ZN21llama_sampler_backend4initEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #38
  unreachable

_ZN21llama_sampler_backend4initEb.exit:           ; preds = %bb.a
  %i.g = zext i1 %i.c to i8
  store i8 1, ptr %i.d, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.g, ptr %i.h, align 1, !tbaa !117
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL32llama_sampler_temp_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !148
  tail call fastcc void @_ZL35llama_sampler_backend_temp_samplingP12ggml_contextP11ggml_cgraphP18llama_sampler_dataf(ptr noundef %1, ptr noundef %3, float noundef %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL32llama_sampler_backend_copy_stateI18llama_sampler_tempEvPK13llama_samplerPS1_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL35llama_sampler_backend_temp_samplingP12ggml_contextP11ggml_cgraphP18llama_sampler_dataf(ptr noundef %0, ptr nofree noundef captures(none) %1, float noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = fcmp ugt float %2, 0.000000e+00
  %i.b = load ptr, ptr %1, align 8, !tbaa !285    ; 3 uses
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @ggml_nelements(ptr noundef %i.b)
  %i.d = tail call ptr @ggml_reshape_1d(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.c) ; 3 uses
  %i.e = tail call ptr @ggml_argmax(ptr noundef %0, ptr noundef %i.d) ; 4 uses
  %i.f = tail call ptr @ggml_set_name(ptr noundef %i.e, ptr noundef nonnull @.str.87) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286  ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @ggml_nelements(ptr noundef nonnull %i.h)
  %i.j = tail call ptr @ggml_reshape_2d(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef %i.i)
  %i.k = tail call ptr @ggml_get_rows(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge29 = phi ptr [ %i.k, %bb.c ], [ %i.e, %bb.b ]
  store ptr %storemerge29, ptr %i.g, align 8, !tbaa !286
  %i.l = tail call i64 @ggml_nelements(ptr noundef %i.d)
  %i.m = tail call ptr @ggml_reshape_2d(ptr noundef %0, ptr noundef %i.d, i64 noundef 1, i64 noundef %i.l)
  %i.n = tail call ptr @ggml_get_rows(ptr noundef %0, ptr noundef %i.m, ptr noundef %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = fdiv float 1.000000e+00, %2
  %i.p = tail call ptr @ggml_scale(ptr noundef %0, ptr noundef %i.b, float noundef %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi ptr [ %i.p, %bb.e ], [ %i.n, %bb.d ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !285
  ret void
}

declare ptr @ggml_scale(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL27llama_sampler_temp_ext_namePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN21llama_sampler_backend8get_nameEv(ptr noundef nonnull align 8 dereferenceable(66) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL28llama_sampler_temp_ext_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load float, ptr %i.c, align 8, !tbaa !151 ; 3 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = load float, ptr %i.f, align 4, !tbaa !150 ; 5 uses
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = fsub float %i.g, %i.d                    ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %.sroa.speculated = select i1 %i.i, float %i.h, float 0.000000e+00 ; 2 uses
  %i.j = fadd float %i.d, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.l = load float, ptr %i.k, align 4, !tbaa !152 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = uitofp i64 %i.n to float
  %i.q = fdiv float 1.000000e+00, %i.p
  %i.r = tail call float @logf(float noundef %i.q) #40 ; 2 uses
  %i.s = fneg float %i.r
  tail call fastcc void @_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb(ptr noundef nonnull %1, i1 noundef zeroext true)
  %i.t = load i64, ptr %i.m, align 8, !tbaa !93   ; 16 uses
  %.not = icmp eq i64 %i.t, 0
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !92 ; 20 uses
  br i1 %.not, label %.preheader.thread.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.u = add i64 %i.t, -1                         ; 4 uses
  %xtraiter133 = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter137 = and i64 %i.t, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.o
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.05072.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.de, %._crit_edge.unr-lcssa ]
  %.05171.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.05072.epil.init
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !292 ; 3 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.epil.preheader
  %i.aa = tail call float @llvm.log.f32(float %i.y)
  %i.ab = fneg float %i.y
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.aa, float %.05171.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.d, %._crit_edge.unr-lcssa
  %.1.lcssa = phi float [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.ac, %bb.d ], [ %.05171.epil.init, %.lr.ph.epil.preheader ]
  %i.ad = fdiv float %.1.lcssa, %i.s
  %i.ae = fsub float %i.j, %.sroa.speculated
  %i.af = tail call float @powf(float noundef %i.ad, float noundef %i.l) #40
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %.sroa.speculated) ; 3 uses
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %.preheader.i.preheader, label %bb.e

.preheader.i.preheader:                           ; preds = %._crit_edge
  %min.iters.check105 = icmp ult i64 %i.t, 5
  br i1 %min.iters.check105, label %.preheader.i.preheader127, label %vector.ph106

.preheader.i.preheader127:                        ; preds = %vector.body110, %.preheader.i.preheader
  %.030.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec107, %vector.body110 ]
  br label %.preheader.i

vector.ph106:                                     ; preds = %.preheader.i.preheader
  %i.ai = and i64 %i.t, 3                         ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 4, i64 %i.ai
  %n.vec107 = sub i64 %i.t, %i.ak                 ; 2 uses
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %i.ag, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph106
  %index111 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body110 ] ; 5 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %index111
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %index111
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %index111
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %index111
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 28 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.at = load float, ptr %i.ap, align 4, !tbaa !290
  %i.au = load float, ptr %i.aq, align 4, !tbaa !290
  %i.av = load float, ptr %i.ar, align 4, !tbaa !290
  %i.aw = load float, ptr %i.as, align 4, !tbaa !290
  %i.ax = insertelement <4 x float> poison, float %i.at, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 3
  %i.bb = fdiv <4 x float> %i.ba, %broadcast.splat109 ; 4 uses
  %i.bc = extractelement <4 x float> %i.bb, i64 0
  store float %i.bc, ptr %i.ap, align 4, !tbaa !290
  %i.bd = extractelement <4 x float> %i.bb, i64 1
  store float %i.bd, ptr %i.aq, align 4, !tbaa !290
  %i.be = extractelement <4 x float> %i.bb, i64 2
  store float %i.be, ptr %i.ar, align 4, !tbaa !290
  %i.bf = extractelement <4 x float> %i.bb, i64 3
  store float %i.bf, ptr %i.as, align 4, !tbaa !290
  %index.next112 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.bg, label %.preheader.i.preheader127, label %vector.body110, !llvm.loop !784

bb.e:                                             ; preds = %._crit_edge
  %.not.i = icmp eq i64 %i.t, 1
  br i1 %.not.i, label %.lr.ph76.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !290 ; 2 uses
  %xtraiter139 = and i64 %i.u, 1
  %i.bj = icmp eq i64 %i.t, 2
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter142 = and i64 %i.u, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i.new
  %.02129.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.bz, %bb.j ] ; 4 uses
  %.02228.i = phi float [ %i.bi, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.j ] ; 2 uses
  %.02327.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.124.i.1, %bb.j ] ; 2 uses
  %niter143 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter143.next.1, %bb.j ]
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.02129.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !290
  %i.bn = fcmp ogt float %i.bm, %.02228.i
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.02327.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float -inf, ptr %i.bp, align 4, !tbaa !290
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !290
  br label %.lr.ph.i.1

bb.g:                                             ; preds = %.lr.ph.i
  store float -inf, ptr %i.bl, align 4, !tbaa !290
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g, %bb.f
  %.124.i = phi i64 [ %.02129.i, %bb.f ], [ %.02327.i, %bb.g ] ; 2 uses
  %.1.i = phi float [ %i.bq, %bb.f ], [ %.02228.i, %bb.g ] ; 2 uses
  %i.br = add nuw i64 %.02129.i, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !290
  %i.bv = fcmp ogt float %i.bu, %.1.i
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.1
  store float -inf, ptr %i.bt, align 4, !tbaa !290
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.124.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store float -inf, ptr %i.bx, align 4, !tbaa !290
  %i.by = load float, ptr %i.bt, align 4, !tbaa !290
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.124.i.1 = phi i64 [ %i.br, %bb.i ], [ %.124.i, %bb.h ] ; 2 uses
  %.1.i.1 = phi float [ %i.by, %bb.i ], [ %.1.i, %bb.h ] ; 2 uses
  %i.bz = add nuw i64 %.02129.i, 2                ; 2 uses
  %niter143.next.1 = add i64 %niter143, 2         ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %.lr.ph76.preheader.loopexit128.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.preheader.i.preheader127, %.preheader.i
  %.030.i = phi i64 [ %i.ce, %.preheader.i ], [ %.030.i.ph, %.preheader.i.preheader127 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.030.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !290
  %i.cd = fdiv float %i.cc, %i.ag
  store float %i.cd, ptr %i.cb, align 4, !tbaa !290
  %i.ce = add nuw i64 %.030.i, 1                  ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.ce, %i.t
  br i1 %exitcond32.not.i, label %.lr.ph76.preheader, label %.preheader.i, !llvm.loop !785

.preheader.thread.critedge:                       ; preds = %bb.c
  %i.cf = fdiv float -0.000000e+00, %i.r
  %i.cg = tail call float @powf(float noundef %i.cf, float noundef %i.l) #40 ; 0 uses
  br label %.critedge

.lr.ph76.preheader.loopexit128.unr-lcssa:         ; preds = %bb.j
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph76.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph76.preheader.loopexit128.unr-lcssa, %.lr.ph.preheader.i
  %.02129.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bz, %.lr.ph76.preheader.loopexit128.unr-lcssa ]
  %.02228.i.epil.init = phi float [ %i.bi, %.lr.ph.preheader.i ], [ %.1.i.1, %.lr.ph76.preheader.loopexit128.unr-lcssa ]
  %.02327.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.124.i.1, %.lr.ph76.preheader.loopexit128.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.02129.i.epil.init
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !290
  %i.ck = fcmp ogt float %i.cj, %.02228.i.epil.init
  br i1 %i.ck, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.epil.preheader
  store float -inf, ptr %i.ci, align 4, !tbaa !290
  br label %.lr.ph76.preheader

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.02327.i.epil.init
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store float -inf, ptr %i.cm, align 4, !tbaa !290
  br label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.preheader.loopexit128.unr-lcssa, %bb.l, %bb.k, %.preheader.i, %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !290
  %i.cp = fpext float %i.co to double
  br label %.lr.ph76

.lr.ph:                                           ; preds = %bb.o, %.lr.ph.preheader.new
  %.05072 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.de, %bb.o ] ; 3 uses
  %.05171 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1.1, %bb.o ] ; 2 uses
  %niter138 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter138.next.1, %bb.o ]
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.05072
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !292 ; 3 uses
  %i.ct = fcmp ogt float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.m, label %.lr.ph.1

bb.m:                                             ; preds = %.lr.ph
  %i.cu = tail call float @llvm.log.f32(float %i.cs)
  %i.cv = fneg float %i.cs
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cu, float %.05171)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.m, %.lr.ph
  %.1 = phi float [ %i.cw, %bb.m ], [ %.05171, %.lr.ph ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.05072
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !292 ; 3 uses
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.1
  %i.db = tail call float @llvm.log.f32(float %i.cz)
  %i.dc = fneg float %i.cz
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.db, float %.1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %.1.1 = phi float [ %i.dd, %bb.n ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %i.de = add nuw i64 %.05072, 2                  ; 2 uses
  %niter138.next.1 = add nuw i64 %niter138, 2     ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !786

.lr.ph79.preheader:                               ; preds = %.lr.ph76
  %min.iters.check116 = icmp ult i64 %i.t, 3
  br i1 %min.iters.check116, label %.lr.ph79.preheader126, label %vector.ph117

.lr.ph79.preheader126:                            ; preds = %vector.body121, %.lr.ph79.preheader
  %.078.ph = phi i64 [ 0, %.lr.ph79.preheader ], [ %n.vec118, %vector.body121 ]
  br label %.lr.ph79

vector.ph117:                                     ; preds = %.lr.ph79.preheader
  %.neg = or i64 %i.t, -2
  %n.vec118 = add i64 %.neg, %i.t                 ; 2 uses
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph117
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next123, %vector.body121 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %index122
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %index122
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 20 ; 2 uses
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !292
  %i.dk = load float, ptr %i.di, align 4, !tbaa !292
  %i.dl = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dk, i64 1
  %i.dn = fpext <2 x float> %i.dm to <2 x double>
  %i.do = fdiv <2 x double> %i.dn, %broadcast.splat120
  %i.dp = fptrunc <2 x double> %i.do to <2 x float> ; 2 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  store float %i.dq, ptr %i.dh, align 4, !tbaa !292
  %i.dr = extractelement <2 x float> %i.dp, i64 1
  store float %i.dr, ptr %i.di, align 4, !tbaa !292
  %index.next123 = add nuw i64 %index122, 2       ; 2 uses
  %i.ds = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.ds, label %.lr.ph79.preheader126, label %vector.body121, !llvm.loop !787

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %.04875 = phi i64 [ %i.ec, %.lr.ph76 ], [ 0, %.lr.ph76.preheader ] ; 2 uses
  %.04974 = phi double [ %i.eb, %.lr.ph76 ], [ 0.000000e+00, %.lr.ph76.preheader ]
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.04875 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !290
  %i.dw = fpext float %i.dv to double
  %i.dx = fsub double %i.dw, %i.cp
  %i.dy = tail call double @exp(double noundef %i.dx) #40 ; 2 uses
  %i.dz = fptrunc double %i.dy to float
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store float %i.dz, ptr %i.ea, align 4, !tbaa !292
  %i.eb = fadd double %.04974, %i.dy              ; 3 uses
  %i.ec = add nuw i64 %.04875, 1                  ; 2 uses
  %exitcond85.not = icmp eq i64 %i.ec, %i.t
  br i1 %exitcond85.not, label %.lr.ph79.preheader, label %.lr.ph76, !llvm.loop !788

.lr.ph79:                                         ; preds = %.lr.ph79.preheader126, %.lr.ph79
  %.078 = phi i64 [ %i.ej, %.lr.ph79 ], [ %.078.ph, %.lr.ph79.preheader126 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %.078
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !292
  %i.eg = fpext float %i.ef to double
  %i.eh = fdiv double %i.eg, %i.eb
  %i.ei = fptrunc double %i.eh to float
  store float %i.ei, ptr %i.ee, align 4, !tbaa !292
  %i.ej = add nuw i64 %.078, 1                    ; 2 uses
  %exitcond86.not = icmp eq i64 %i.ej, %i.t
  br i1 %exitcond86.not, label %.critedge, label %.lr.ph79, !llvm.loop !789

bb.p:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !93 ; 8 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = fcmp ugt float %i.g, 0.000000e+00
  %i.eo = load ptr, ptr %1, align 8, !tbaa !92    ; 12 uses
  br i1 %i.en, label %.preheader.i64.preheader, label %bb.r

.preheader.i64.preheader:                         ; preds = %bb.q
  %min.iters.check = icmp ult i64 %i.el, 5
  br i1 %min.iters.check, label %.preheader.i64.preheader129, label %vector.ph

.preheader.i64.preheader129:                      ; preds = %vector.body, %.preheader.i64.preheader
  %.030.i65.ph = phi i64 [ 0, %.preheader.i64.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader.i64

vector.ph:                                        ; preds = %.preheader.i64.preheader
  %i.ep = and i64 %i.el, 3                        ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = select i1 %i.eq, i64 4, i64 %i.ep
  %n.vec = sub i64 %i.el, %i.er                   ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %index
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %index
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %index
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %index
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 28 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 40 ; 2 uses
  %i.fa = load float, ptr %i.ew, align 4, !tbaa !290
  %i.fb = load float, ptr %i.ex, align 4, !tbaa !290
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !290
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !290
  %i.fe = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 2
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 3
  %i.fi = fdiv <4 x float> %i.fh, %broadcast.splat ; 4 uses
  %i.fj = extractelement <4 x float> %i.fi, i64 0
  store float %i.fj, ptr %i.ew, align 4, !tbaa !290
  %i.fk = extractelement <4 x float> %i.fi, i64 1
  store float %i.fk, ptr %i.ex, align 4, !tbaa !290
  %i.fl = extractelement <4 x float> %i.fi, i64 2
  store float %i.fl, ptr %i.ey, align 4, !tbaa !290
  %i.fm = extractelement <4 x float> %i.fi, i64 3
  store float %i.fm, ptr %i.ez, align 4, !tbaa !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %.preheader.i64.preheader129, label %vector.body, !llvm.loop !790

bb.r:                                             ; preds = %bb.q
  %.not.i55 = icmp eq i64 %i.el, 1
  br i1 %.not.i55, label %.critedge, label %.lr.ph.preheader.i56

.lr.ph.preheader.i56:                             ; preds = %bb.r
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !290 ; 2 uses
  %i.fq = add i64 %i.el, -1                       ; 3 uses
  %xtraiter = and i64 %i.fq, 1
  %i.fr = icmp eq i64 %i.el, 2
  br i1 %i.fr, label %.lr.ph.i57.epil.preheader, label %.lr.ph.preheader.i56.new

.lr.ph.preheader.i56.new:                         ; preds = %.lr.ph.preheader.i56
  %unroll_iter = and i64 %i.fq, -2
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.w, %.lr.ph.preheader.i56.new
  %.02129.i58 = phi i64 [ 1, %.lr.ph.preheader.i56.new ], [ %i.gh, %bb.w ] ; 4 uses
  %.02228.i59 = phi float [ %i.fp, %.lr.ph.preheader.i56.new ], [ %.1.i62.1, %bb.w ] ; 2 uses
  %.02327.i60 = phi i64 [ 0, %.lr.ph.preheader.i56.new ], [ %.124.i61.1, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i56.new ], [ %niter.next.1, %bb.w ]
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %.02129.i58
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4 ; 3 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !290
  %i.fv = fcmp ogt float %i.fu, %.02228.i59
  br i1 %i.fv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i57
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %.02327.i60
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store float -inf, ptr %i.fx, align 4, !tbaa !290
  %i.fy = load float, ptr %i.ft, align 4, !tbaa !290
  br label %.lr.ph.i57.1

bb.t:                                             ; preds = %.lr.ph.i57
  store float -inf, ptr %i.ft, align 4, !tbaa !290
  br label %.lr.ph.i57.1

.lr.ph.i57.1:                                     ; preds = %bb.t, %bb.s
  %.124.i61 = phi i64 [ %.02129.i58, %bb.s ], [ %.02327.i60, %bb.t ] ; 2 uses
  %.1.i62 = phi float [ %i.fy, %bb.s ], [ %.02228.i59, %bb.t ] ; 2 uses
  %i.fz = add nuw i64 %.02129.i58, 1              ; 2 uses
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !290
  %i.gd = fcmp ogt float %i.gc, %.1.i62
  br i1 %i.gd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i57.1
  store float -inf, ptr %i.gb, align 4, !tbaa !290
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i57.1
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %.124.i61
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store float -inf, ptr %i.gf, align 4, !tbaa !290
  %i.gg = load float, ptr %i.gb, align 4, !tbaa !290
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.124.i61.1 = phi i64 [ %i.fz, %bb.v ], [ %.124.i61, %bb.u ] ; 2 uses
  %.1.i62.1 = phi float [ %i.gg, %bb.v ], [ %.1.i62, %bb.u ] ; 2 uses
  %i.gh = add nuw i64 %.02129.i58, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit131.unr-lcssa, label %.lr.ph.i57, !llvm.loop !11

.preheader.i64:                                   ; preds = %.preheader.i64.preheader129, %.preheader.i64
  %.030.i65 = phi i64 [ %i.gm, %.preheader.i64 ], [ %.030.i65.ph, %.preheader.i64.preheader129 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %.030.i65
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !290
  %i.gl = fdiv float %i.gk, %i.g
  store float %i.gl, ptr %i.gj, align 4, !tbaa !290
  %i.gm = add nuw i64 %.030.i65, 1                ; 2 uses
  %exitcond32.not.i66 = icmp eq i64 %i.gm, %i.el
  br i1 %exitcond32.not.i66, label %.critedge, label %.preheader.i64, !llvm.loop !791

.critedge.loopexit131.unr-lcssa:                  ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.i57.epil.preheader

.lr.ph.i57.epil.preheader:                        ; preds = %.critedge.loopexit131.unr-lcssa, %.lr.ph.preheader.i56
  %.02129.i58.epil.init = phi i64 [ 1, %.lr.ph.preheader.i56 ], [ %i.gh, %.critedge.loopexit131.unr-lcssa ]
  %.02228.i59.epil.init = phi float [ %i.fp, %.lr.ph.preheader.i56 ], [ %.1.i62.1, %.critedge.loopexit131.unr-lcssa ]
  %.02327.i60.epil.init = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %.124.i61.1, %.critedge.loopexit131.unr-lcssa ]
end_hunk_0
