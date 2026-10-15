Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_examples-085ecd10d3ae1230.candle_examples.78b420d2006c9c22-cgu.13?download=true
inline.NumInlined: 128
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs2_NtCs1fJj97VvEPD_9minijinja8templateNtB6_8Template6renderNtNtB8_5value5ValueECsamv9RYRPgRi_15candle_examples:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !53, !noalias !42, !nonnull !4, !noundef !4
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !54
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit.i.i

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEE9drop_slowB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #17
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit.i.i unwind label %bb.t, !noalias !42

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapReNtNtNtCs1fJj97VvEPD_9minijinja2vm5state10BlockStackEECsamv9RYRPgRi_15candle_examples.exit12.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit15.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapReNtNtNtCs1fJj97VvEPD_9minijinja2vm5state10BlockStackEECsamv9RYRPgRi_15candle_examples.exit12.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !57, !noalias !42, !nonnull !4, !noundef !4
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !58
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit18.i.i

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit15.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEE9drop_slowB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #17
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit18.i.i unwind label %bb.r, !noalias !42

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %bb.r, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit.i.i
  %.pn6.i.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %.pn4.i.i, %bb.n ], [ %.pn4.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !61, !noalias !42, !nonnull !4, !noundef !4
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !62
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.q, label %.body

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja2vm14closure_object14ClosureTrackerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #17
          to label %.body unwind label %bb.t, !noalias !42

bb.r:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit18.i.i: ; preds = %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetReEECsamv9RYRPgRi_15candle_examples.exit15.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !65, !noalias !42, !nonnull !4, !noundef !4
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !66
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.s, label %_RNCINvMs2_NtCs1fJj97VvEPD_9minijinja8templateNtB8_8Template6renderNtNtBa_5value5ValueE0Csamv9RYRPgRi_15candle_examples.exit

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit18.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja2vm14closure_object14ClosureTrackerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #17
          to label %_RNCINvMs2_NtCs1fJj97VvEPD_9minijinja8templateNtB8_8Template6renderNtNtBa_5value5ValueE0Csamv9RYRPgRi_15candle_examples.exit unwind label %bb.b

bb.t:                                             ; preds = %bb.q, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapReNtNtNtCs1fJj97VvEPD_9minijinja2vm5state10BlockStackEECsamv9RYRPgRi_15candle_examples.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtNtNtBG_11collections5btree3map8BTreeMapINtNtBG_5boxed3BoxeENtNtCs1fJj97VvEPD_9minijinja5value5ValueEEEECsamv9RYRPgRi_15candle_examples.exit.i.i, %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16, !noalias !42
  unreachable

_RNCINvMs2_NtCs1fJj97VvEPD_9minijinja8templateNtB8_8Template6renderNtNtBa_5value5ValueE0Csamv9RYRPgRi_15candle_examples.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecTRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsmEEEECsamv9RYRPgRi_15candle_examples.exit18.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_RNCINvMs2_NtCs1fJj97VvEPD_9minijinja8templateNtB8_8Template6renderNtNtBa_5value5ValueE0Csamv9RYRPgRi_15candle_examples.exit, %bb.e
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24) %2)
  ret void

bb.v:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCsamv9RYRPgRi_15candle_examples6bs1770NtB6_20ChannelLoudnessMeter4pushINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterfEEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %i.e = uitofp i32 %i.d to float
  %i.f = fdiv nnan float 1.000000e+00, %i.e
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.sroa.5.0.copyload, %.sroa.9.0.copyload
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %i.v, align 8
  %.pre12 = load i32, ptr %i.x, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.7.0.copyload, ptr %i.b, align 8, !noalias !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ab, align 8, !noalias !75
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.ac = phi i32 [ %.pre12, %.lr.ph ], [ %i.cf, %bb.f ]
  %i.ad = phi float [ %.pre, %.lr.ph ], [ %i.cg, %bb.f ] ; 2 uses
  %.sroa.5.011 = phi ptr [ %.sroa.5.0.copyload, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.011, i64 4 ; 2 uses
  %i.af = load float, ptr %.sroa.5.011, align 4, !noalias !76, !noundef !4 ; 2 uses
  %i.ag = load float, ptr %i.i, align 4, !noundef !4
  %i.ah = fmul float %i.af, %i.ag
  %i.ai = fadd float %i.ah, 0.000000e+00
  %i.aj = load <2 x float>, ptr %i.j, align 8
  %i.ak = load <2 x float>, ptr %i.k, align 8     ; 2 uses
  %i.al = fmul <2 x float> %i.aj, %i.ak           ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fadd float %i.ai, %i.am
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = load <2 x float>, ptr %i.h, align 4
  %i.ar = load <2 x float>, ptr %i.m, align 8     ; 2 uses
  %i.as = fmul <2 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = fsub float %i.ap, %i.at
  %i.av = extractelement <2 x float> %i.as, i64 1
  %i.aw = fsub float %i.au, %i.av                 ; 3 uses
  %i.ax = extractelement <2 x float> %i.ak, i64 0
  store float %i.ax, ptr %i.l, align 4
  store float %i.af, ptr %i.k, align 8
  %i.ay = extractelement <2 x float> %i.ar, i64 0
  store float %i.ay, ptr %i.n, align 4
  store float %i.aw, ptr %i.m, align 8
  %i.az = load float, ptr %i.p, align 8, !noundef !4
  %i.ba = fmul float %i.aw, %i.az
  %i.bb = fadd float %i.ba, 0.000000e+00
  %i.bc = load <2 x float>, ptr %i.q, align 4
  %i.bd = load <2 x float>, ptr %i.r, align 4     ; 2 uses
  %i.be = fmul <2 x float> %i.bc, %i.bd           ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = fadd float %i.bb, %i.bf
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = load <2 x float>, ptr %i.o, align 8
  %i.bk = load <2 x float>, ptr %i.t, align 4     ; 2 uses
  %i.bl = fmul <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %i.bn = fsub float %i.bi, %i.bm
  %i.bo = extractelement <2 x float> %i.bl, i64 1
  %i.bp = fsub float %i.bn, %i.bo                 ; 3 uses
  %i.bq = extractelement <2 x float> %i.bd, i64 0
  store float %i.bq, ptr %i.s, align 8
  store float %i.aw, ptr %i.r, align 4
  %i.br = extractelement <2 x float> %i.bk, i64 0
  store float %i.br, ptr %i.u, align 8
  store float %i.bp, ptr %i.t, align 4
  %i.bs = fmul float %i.bp, %i.bp
  %i.bt = load float, ptr %i.w, align 4, !noundef !4
  %i.bu = fadd float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fadd float %i.ad, %i.bu                 ; 4 uses
  %i.bw = fsub float %i.ad, %i.bv
  %2 = fadd float %i.bu, %i.bw
  store float %2, ptr %i.w, align 4
  store float %i.bv, ptr %i.v, align 8
  %i.bx = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.bx, ptr %i.x, align 4
  %i.by = load i32, ptr %i.c, align 8, !noundef !4
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.d, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.7.0.copyload, ptr %i.a, align 8, !noalias !77
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ca, align 8, !noalias !77
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  ret void

bb.d:                                             ; preds = %bb.c
  %i.cb = fmul float %i.f, %i.bv
  %i.cc = load i64, ptr %i.y, align 8, !alias.scope !78, !noundef !4 ; 3 uses
  %i.cd = load i64, ptr %0, align 8, !range !6, !alias.scope !78, !noundef !4
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #17
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %bb.c, %bb.g
  %i.cf = phi i32 [ %i.bx, %bb.c ], [ 0, %bb.g ]
  %i.cg = phi float [ %i.bv, %bb.c ], [ 0.000000e+00, %bb.g ]
  %i.ch = icmp eq ptr %i.ae, %.sroa.9.0.copyload
  br i1 %i.ch, label %._crit_edge, label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.ci = load ptr, ptr %i.z, align 8, !alias.scope !78, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cc
  store float %i.cb, ptr %i.cj, align 4
  %i.ck = add i64 %i.cc, 1
  store i64 %i.ck, ptr %i.y, align 8, !alias.scope !78
  store float 0.000000e+00, ptr %i.v, align 8
  store i32 0, ptr %i.x, align 4
  br label %bb.f

bb.h:                                             ; preds = %bb.b
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.a = load i8, ptr %0, align 8, !range !94, !alias.scope !93, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 6, label %bb.c
    i8 7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 8, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 9, label %bb.e
    i8 10, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 11, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !97, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !97
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs1fJj97VvEPD_9minijinja5error5ErrorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !100, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !100
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !103, !nonnull !4, !noundef !4
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !103
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples6bs177020ChannelLoudnessMeterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsamv9RYRPgRi_15candle_examples6bs177012Windows100msINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBE_5PowerEEEBG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsamv9RYRPgRi_15candle_examples6bs177012Windows100msINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBE_5PowerEEEBG_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_RNvMs2_NtCsamv9RYRPgRi_15candle_examples6bs1770NtB5_20ChannelLoudnessMeter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = udiv i32 %1, 10
  %i.b = uitofp i32 %1 to float
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = insertelement <2 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fdiv <2 x float> <float f0x45A520A1, float f0x42EF9CBC>, %i.d ; 2 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = tail call noundef float @tanf(float noundef %i.f) #18, !noalias !108 ; 4 uses
  %i.h = fmul float %i.g, %i.g                    ; 3 uses
  %i.i = fmul float %i.g, f0x3FA11DC5
  %i.j = fdiv float %i.i, f0x3F350970             ; 2 uses
  %i.k = fsub float f0x3FCADCD9, %i.j
  %i.l = fadd float %i.h, %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.m = extractelement <2 x float> %i.e, i64 1
  %i.n = tail call noundef float @tanf(float noundef %i.m) #18, !noalias !109 ; 3 uses
  %i.o = fmul float %i.n, %i.n                    ; 2 uses
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
end_hunk_0
