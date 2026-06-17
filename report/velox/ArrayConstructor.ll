inline.NumInlined: 1150
inline.NumDeleted: 672
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  store i32 0, ptr %i.aol, align 8, !tbaa !42
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aok, i64 12
  store i32 0, ptr %i.aop, align 4, !tbaa !44
  %i.aoq = load ptr, ptr %i.aok, align 8, !tbaa !45
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load ptr, ptr %i.aor, align 8
  call void %i.aos(ptr noundef nonnull align 8 dereferenceable(16) %i.aok) #19, !inline_history !285
  %i.aot = load ptr, ptr %i.aok, align 8, !tbaa !45
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 24
  %i.aov = load ptr, ptr %i.aou, align 8
  call void %i.aov(ptr noundef nonnull align 8 dereferenceable(16) %i.aok) #19, !inline_history !285
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.eg:                                            ; preds = %bb.ee
  %i.aow = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i259 = icmp eq i8 %i.aow, 0
  br i1 %.not.i.i.i259, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aox = add nsw i32 %i.aoo, -1
  store i32 %i.aox, ptr %i.aol, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.aoy = atomicrmw volatile add ptr %i.aol, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ei, %bb.eh
  %.0.i.i.i.i = phi i32 [ %i.aoo, %bb.eh ], [ %i.aoy, %bb.ei ]
  %i.aoz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aoz, label %bb.ej, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.ej:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aok) #19
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %i.apa = load ptr, ptr %12, align 8, !tbaa !218 ; 7 uses
  %.not.i260 = icmp eq ptr %i.apa, null
  br i1 %.not.i260, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 40
  %i.apc = atomicrmw sub ptr %i.apb, i32 1 acq_rel, align 4
  %i.apd = icmp eq i32 %i.apc, 1
  br i1 %i.apd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.ek
  %i.ape = load ptr, ptr %i.apa, align 8, !tbaa !45
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 64
  %i.apg = load ptr, ptr %i.apf, align 8
  invoke void %i.apg(ptr noundef nonnull align 8 dereferenceable(64) %i.apa)
          to label %.noexc.i unwind label %bb.el, !inline_history !286

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !287
  %.not.i.i261 = icmp eq ptr %i.api, null
  %i.apj = load ptr, ptr %i.apa, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i261, i64 8, i64 48
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 %..i.i
  %i.apl = load ptr, ptr %i.apk, align 8
  invoke void %i.apl(ptr noundef nonnull align 8 dereferenceable(64) %i.apa)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.el, !inline_history !286

bb.el:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.apm = landingpad { ptr, i32 }
          catch ptr null
  %i.apn = extractvalue { ptr, i32 } %i.apm, 0
  call void @__clang_call_terminate(ptr %i.apn) #22
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ek, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.apo = load ptr, ptr %11, align 8, !tbaa !218 ; 7 uses
  %.not.i262 = icmp eq ptr %i.apo, null
  br i1 %.not.i262, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit267, label %bb.em

bb.em:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 40
  %i.apq = atomicrmw sub ptr %i.app, i32 1 acq_rel, align 4
  %i.apr = icmp eq i32 %i.apq, 1
  br i1 %i.apr, label %.sink.split.i.i263, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit267

.sink.split.i.i263:                               ; preds = %bb.em
  %i.aps = load ptr, ptr %i.apo, align 8, !tbaa !45
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 64
  %i.apu = load ptr, ptr %i.apt, align 8
  invoke void %i.apu(ptr noundef nonnull align 8 dereferenceable(64) %i.apo)
          to label %.noexc.i264 unwind label %bb.en, !inline_history !286

.noexc.i264:                                      ; preds = %.sink.split.i.i263
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !287
  %.not.i.i265 = icmp eq ptr %i.apw, null
  %i.apx = load ptr, ptr %i.apo, align 8, !tbaa !45
  %..i.i266 = select i1 %.not.i.i265, i64 8, i64 48
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 %..i.i266
  %i.apz = load ptr, ptr %i.apy, align 8
  invoke void %i.apz(ptr noundef nonnull align 8 dereferenceable(64) %i.apo)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit267 unwind label %bb.en, !inline_history !286

bb.en:                                            ; preds = %.noexc.i264, %.sink.split.i.i263
  %i.aqa = landingpad { ptr, i32 }
          catch ptr null
  %i.aqb = extractvalue { ptr, i32 } %i.aqa, 0
  call void @__clang_call_terminate(ptr %i.aqb) #22
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit267: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.em, %.noexc.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret void

bb.eo:                                            ; preds = %.body, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit111, %bb.ad
  %.pn50 = phi { ptr, i32 } [ %i.jl, %bb.ad ], [ %.pn47.pn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit111 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.ac
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.eo ], [ %i.jk, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.ab
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.ep ], [ %i.jj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.aa
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.eq ], [ %i.ji, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  resume { ptr, i32 } %.pn50.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec14VectorFunction27supportsFlatNoNullsFastPathEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.52") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec14VectorFunction34ensureStringEncodingSetAtAllInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec14VectorFunction36propagateStringEncodingFromAllInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox4exec14VectorFunction16getCanonicalNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !231, !range !67, !noundef !68
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr %i.a, align 4, !range !67
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !233
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !234    ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !232  ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189  ; 7 uses
  %.not.i.i = icmp slt i32 %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.k, 63                         ; 2 uses
  %i.o = srem i32 %i.n, 64                        ; 3 uses
  %i.p = sub nsw i32 %i.n, %i.o                   ; 10 uses
  %i.q = and i32 %i.m, -64                        ; 5 uses
  %i.r = icmp slt i32 %i.q, %i.p
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = ashr i32 %i.m, 6
  %i.t = and i32 %i.m, 63
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i, -1
  %i.w = sub nsw i32 %i.p, %i.k                   ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i.i.i.i, -1
  %i.z = sub nsw i32 64, %i.w
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = and i64 %i.ab, %i.v
  %i.ad = sext i32 %i.s to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !135
  %i.ag = and i64 %i.ac, %i.af
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not32.i.i = icmp eq i32 %i.k, %i.p
  br i1 %.not32.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sdiv i32 %i.k, 64
  %i.ai = sub nsw i32 %i.p, %i.k                  ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35.i.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35.i.i, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = and i64 %i.aq, %i.an
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.at, %bb.g ]  ; 4 uses
  %i.au = add nsw i32 %i.p, 64                    ; 4 uses
  %.not3342.i.i = icmp sgt i32 %i.au, %i.q
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %1 = add i32 %i.k, 191
  %2 = sub i32 %1, %i.o
  %3 = or disjoint i32 %i.q, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %3)
  %4 = add i32 %i.o, %smax
  %5 = add i32 %4, -128
  %6 = sub i32 %5, %i.k                           ; 3 uses
  %7 = lshr i32 %6, 6
  %8 = add nuw nsw i32 %7, 1                      ; 5 uses
  %min.iters.check = icmp ult i32 %6, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %6, 960
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %8, 12
  %n.vec = and i32 %8, 134217712                  ; 4 uses
  %9 = shl i32 %n.vec, 6                          ; 2 uses
  %10 = add i32 %i.au, %9
  %11 = add i32 %i.p, %9
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %12, %vector.ph ], [ %114, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %115, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %116, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %117, %vector.body ]
  %13 = shl i32 %index, 6
  %14 = add i32 %i.p, %13                         ; 5 uses
  %15 = add i32 %14, 64
  %16 = add i32 %14, 128
  %17 = add i32 %14, 192
  %18 = sdiv i32 %14, 64
  %19 = sdiv i32 %15, 64
  %20 = sdiv i32 %16, 64
  %21 = sdiv i32 %17, 64
  %22 = sext i32 %18 to i64
  %23 = sext i32 %19 to i64
  %24 = sext i32 %20 to i64
  %25 = sext i32 %21 to i64
  %26 = insertelement <4 x i32> poison, i32 %14, i64 0
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %28 = add <4 x i32> %27, <i32 256, i32 320, i32 384, i32 448>
  %29 = sdiv <4 x i32> %28, splat (i32 64)        ; 4 uses
  %30 = add <4 x i32> %27, <i32 512, i32 576, i32 640, i32 704>
  %31 = sdiv <4 x i32> %30, splat (i32 64)        ; 4 uses
  %32 = add <4 x i32> %27, <i32 768, i32 832, i32 896, i32 960>
  %33 = sdiv <4 x i32> %32, splat (i32 64)        ; 4 uses
  %34 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %22
  %35 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %23
  %36 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %24
  %37 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %25
  %38 = extractelement <4 x i32> %29, i64 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %39
  %41 = extractelement <4 x i32> %29, i64 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %42
  %44 = extractelement <4 x i32> %29, i64 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %45
  %47 = extractelement <4 x i32> %29, i64 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %48
  %50 = extractelement <4 x i32> %31, i64 0
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %51
  %53 = extractelement <4 x i32> %31, i64 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %54
  %56 = extractelement <4 x i32> %31, i64 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %57
  %59 = extractelement <4 x i32> %31, i64 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %60
  %62 = extractelement <4 x i32> %33, i64 0
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %63
  %65 = extractelement <4 x i32> %33, i64 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %66
  %68 = extractelement <4 x i32> %33, i64 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %69
  %71 = extractelement <4 x i32> %33, i64 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %72
  %74 = load i64, ptr %34, align 8, !tbaa !135
  %75 = load i64, ptr %35, align 8, !tbaa !135
  %76 = load i64, ptr %36, align 8, !tbaa !135
  %77 = load i64, ptr %37, align 8, !tbaa !135
  %78 = insertelement <4 x i64> poison, i64 %74, i64 0
  %79 = insertelement <4 x i64> %78, i64 %75, i64 1
  %80 = insertelement <4 x i64> %79, i64 %76, i64 2
  %81 = insertelement <4 x i64> %80, i64 %77, i64 3
  %82 = load i64, ptr %40, align 8, !tbaa !135
  %83 = load i64, ptr %43, align 8, !tbaa !135
  %84 = load i64, ptr %46, align 8, !tbaa !135
  %85 = load i64, ptr %49, align 8, !tbaa !135
  %86 = insertelement <4 x i64> poison, i64 %82, i64 0
  %87 = insertelement <4 x i64> %86, i64 %83, i64 1
  %88 = insertelement <4 x i64> %87, i64 %84, i64 2
  %89 = insertelement <4 x i64> %88, i64 %85, i64 3
  %90 = load i64, ptr %52, align 8, !tbaa !135
  %91 = load i64, ptr %55, align 8, !tbaa !135
  %92 = load i64, ptr %58, align 8, !tbaa !135
  %93 = load i64, ptr %61, align 8, !tbaa !135
  %94 = insertelement <4 x i64> poison, i64 %90, i64 0
  %95 = insertelement <4 x i64> %94, i64 %91, i64 1
  %96 = insertelement <4 x i64> %95, i64 %92, i64 2
  %97 = insertelement <4 x i64> %96, i64 %93, i64 3
  %98 = load i64, ptr %64, align 8, !tbaa !135
  %99 = load i64, ptr %67, align 8, !tbaa !135
  %100 = load i64, ptr %70, align 8, !tbaa !135
  %101 = load i64, ptr %73, align 8, !tbaa !135
  %102 = insertelement <4 x i64> poison, i64 %98, i64 0
  %103 = insertelement <4 x i64> %102, i64 %99, i64 1
  %104 = insertelement <4 x i64> %103, i64 %100, i64 2
  %105 = insertelement <4 x i64> %104, i64 %101, i64 3
  %106 = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %81)
  %107 = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %89)
  %108 = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %97)
  %109 = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %105)
  %110 = trunc nuw nsw <4 x i64> %106 to <4 x i32>
  %111 = trunc nuw nsw <4 x i64> %107 to <4 x i32>
  %112 = trunc nuw nsw <4 x i64> %108 to <4 x i32>
  %113 = trunc nuw nsw <4 x i64> %109 to <4 x i32>
  %114 = add <4 x i32> %vec.phi, %110             ; 2 uses
  %115 = add <4 x i32> %vec.phi10, %111           ; 2 uses
  %116 = add <4 x i32> %vec.phi11, %112           ; 2 uses
  %117 = add <4 x i32> %vec.phi12, %113           ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %118 = icmp eq i32 %index.next, %n.vec
  br i1 %118, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %115, %114
  %bin.rdx13 = add <4 x i32> %116, %bin.rdx
  %bin.rdx14 = add <4 x i32> %117, %bin.rdx13
  %119 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx14) ; 3 uses
  %cmp.n = icmp eq i32 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !291

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %119, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec17 = and i32 %8, 134217724                ; 3 uses
  %120 = shl i32 %n.vec17, 6                      ; 2 uses
  %121 = add i32 %i.au, %120
  %122 = add i32 %i.p, %120
  %123 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi19 = phi <4 x i32> [ %123, %vec.epilog.ph ], [ %151, %vec.epilog.vector.body ]
  %124 = shl i32 %index18, 6
  %125 = add i32 %i.p, %124                       ; 4 uses
  %126 = add i32 %125, 64
  %127 = add i32 %125, 128
  %128 = add i32 %125, 192
  %129 = sdiv i32 %125, 64
  %130 = sdiv i32 %126, 64
  %131 = sdiv i32 %127, 64
  %132 = sdiv i32 %128, 64
  %133 = sext i32 %129 to i64
  %134 = sext i32 %130 to i64
  %135 = sext i32 %131 to i64
  %136 = sext i32 %132 to i64
  %137 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %133
  %138 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %134
  %139 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %135
  %140 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %136
  %141 = load i64, ptr %137, align 8, !tbaa !135
  %142 = load i64, ptr %138, align 8, !tbaa !135
  %143 = load i64, ptr %139, align 8, !tbaa !135
  %144 = load i64, ptr %140, align 8, !tbaa !135
  %145 = insertelement <4 x i64> poison, i64 %141, i64 0
  %146 = insertelement <4 x i64> %145, i64 %142, i64 1
  %147 = insertelement <4 x i64> %146, i64 %143, i64 2
  %148 = insertelement <4 x i64> %147, i64 %144, i64 3
  %149 = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %148)
  %150 = trunc nuw nsw <4 x i64> %149 to <4 x i32>
  %151 = add <4 x i32> %vec.phi19, %150           ; 2 uses
  %index.next20 = add nuw i32 %index18, 4         ; 2 uses
  %i.av = icmp eq i32 %index.next20, %n.vec17
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !292

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %152 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %151) ; 2 uses
  %cmp.n21 = icmp eq i32 %8, %n.vec17
  br i1 %cmp.n21, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %.0.i, %iter.check ], [ %119, %vec.epilog.iter.check ], [ %152, %vec.epilog.middle.block ]
  %.ph25 = phi i32 [ %i.au, %iter.check ], [ %10, %vec.epilog.iter.check ], [ %121, %vec.epilog.middle.block ]
  %.043.i.i.ph = phi i32 [ %i.p, %iter.check ], [ %11, %vec.epilog.iter.check ], [ %122, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.1.i = phi i32 [ %.0.i, %bb.h ], [ %152, %vec.epilog.middle.block ], [ %119, %middle.block ], [ %i.be, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.m, %i.q
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %bb.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.aw = phi i32 [ %i.be, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.ax = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.ph25, %.lr.ph.i.i.preheader ] ; 2 uses
  %.043.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.043.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ay = sdiv i32 %.043.i.i, 64
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !135
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bb)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add nsw i32 %i.aw, %i.bd                ; 2 uses
  %i.bf = add nsw i32 %i.ax, 64                   ; 2 uses
  %.not33.i.i = icmp sgt i32 %i.bf, %i.q
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !293

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bg = ashr i32 %i.m, 6
  %i.bh = and i32 %i.m, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.bi
  %i.bj = xor i64 %notmask.i36.i.i, -1
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !135
  %i.bn = and i64 %i.bm, %i.bj
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.e
  %.2.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.i ]
  %.sink50.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.bn, %bb.i ]
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %.sink50.i.i)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nsw i32 %.2.i, %i.bp
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.c, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.bq, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !233
  %i.bt = icmp eq i32 %.3.i, %i.bs
  %.sroa.0.0.insert.ext = zext i1 %i.bt to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %.3.i, %_ZN8facebook5velox4bits9countBitsEPKmii.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor16shouldCopyRangesERKSt10shared_ptrIKNS0_4TypeEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(18) %i.a)
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !295
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.f, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #19 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZNK8facebook5velox4Type5asRowEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZNK8facebook5velox4Type5asRowEv.exit:            ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !299  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !299  ; 2 uses
  %.not = icmp eq ptr %i.m, %i.o
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit, %.lr.ph
  %.sroa.012.015 = phi ptr [ %i.q, %.lr.ph ], [ %i.m, %_ZNK8facebook5velox4Type5asRowEv.exit ] ; 2 uses
  %i.p = tail call fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor16shouldCopyRangesERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.015) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.015, i64 16 ; 2 uses
  %.not18 = icmp eq ptr %i.q, %i.o
  %or.cond = select i1 %i.p, i1 true, i1 %.not18
  br i1 %or.cond, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %_ZNK8facebook5velox4Type5asRowEv.exit, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZNK8facebook5velox4Type5asRowEv.exit ], [ %i.p, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !84
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !84
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !218    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.sink.split.i, label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit

.sink.split.i:                                    ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !286

.noexc:                                           ; preds = %.sink.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !287
  %.not.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !45
  %..i = select i1 %.not.i, i64 8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit unwind label %bb.c, !inline_history !286

bb.c:                                             ; preds = %.noexc, %.sink.split.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #22
  unreachable

_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit: ; preds = %.noexc, %bb.b, %bb.a
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #13

declare void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #15

declare void @__cxa_bad_cast() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !301, !range !67, !noundef !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !135
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !307
  %.pre12 = load ptr, ptr %i.o, align 8, !tbaa !308
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit
  %i.r = phi ptr [ %.pre12, %.preheader ], [ %i.be, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit ] ; 3 uses
  %i.s = phi ptr [ %.pre, %.preheader ], [ %i.bf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit ] ; 3 uses
  %.011 = phi i64 [ %i.k, %.preheader ], [ %i.bj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit ] ; 3 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 3 uses
  %i.w = load i64, ptr %i.s, align 8, !tbaa !135
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !309, !nonnull !68, !align !310
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !225
  %i.aa = sext i32 %i.v to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  store i32 %i.x, ptr %i.ab, align 4, !tbaa !3
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !3   ; 3 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !311, !nonnull !68, !align !310
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !225
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aa
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !3
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !312, !nonnull !68, !align !310 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !253 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.v, ptr %i.ai, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !253
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit

bb.d:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 4 uses
  %i.an = ptrtoint ptr %i.ai to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.e, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.ar = sdiv exact i64 %i.ap, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 768614336404564650)
  %i.av = select i1 %i.at, i64 768614336404564650, i64 %i.au ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aw = mul nuw nsw i64 %i.av, 12
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #20 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 4 uses
  store i32 %i.v, ptr %i.ay, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ac, ptr %.sroa.5.0..sroa_idx4.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx6.i, align 4, !tbaa !3
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.f, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.am, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.not.i17.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #21
  %.pre.pre.i = load ptr, ptr %i.n, align 8, !tbaa !307 ; 2 uses
  %.pre8.pre.i = load i64, ptr %.pre.pre.i, align 8, !tbaa !135
  %.pre9.pre.i = load ptr, ptr %i.o, align 8, !tbaa !308
  %.pre14.i = trunc i64 %.pre8.pre.i to i32
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.bb = phi ptr [ %.pre9.pre.i, %bb.g ], [ %i.r, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i ]
  %i.bc = phi ptr [ %.pre.pre.i, %bb.g ], [ %i.s, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i ]
  %.pre13.pre-phi.i = phi i32 [ %.pre14.i, %bb.g ], [ %i.x, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i ]
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !250
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !253
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !254
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit: ; preds = %bb.c, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %i.be = phi ptr [ %i.r, %bb.c ], [ %i.bb, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ] ; 3 uses
  %i.bf = phi ptr [ %i.s, %bb.c ], [ %i.bc, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ]
  %.pre-phi.i = phi i32 [ %i.x, %bb.c ], [ %.pre13.pre-phi.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ]
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add i32 %i.bg, %.pre-phi.i
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  %i.bi = add i64 %.011, -1
  %i.bj = and i64 %i.bi, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.bj, 0
  br i1 %.not10, label %.loopexit, label %bb.b, !llvm.loop !313

.loopexit:                                        ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314  ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !135    ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !80

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !314
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !135
  store i64 %i.s, ptr %i.d, align 8, !tbaa !135
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !314
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !80

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %iter.check168

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %iter.check168

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !135
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !135
  br label %iter.check168

iter.check168:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check168
  %min.iters.check155 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check155, label %vec.epilog.ph172, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %n.mod.vf157 = and i64 %i.ag, 12
  %n.vec158 = and i64 %i.ag, 4611686018427387888  ; 4 uses
  %i.ah = shl i64 %n.vec158, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert159 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i64> %broadcast.splatinsert159, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.aj = shl i64 %index162, 3
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep163, i64 32
  %i.al = getelementptr i8, ptr %next.gep163, i64 64
  %i.am = getelementptr i8, ptr %next.gep163, i64 96
  store <4 x i64> %broadcast.splat160, ptr %next.gep163, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat160, ptr %i.ak, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat160, ptr %i.al, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat160, ptr %i.am, align 8, !tbaa !135
  %index.next164 = add nuw i64 %index162, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.an, label %middle.block165, label %vector.body161, !llvm.loop !315

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.ag, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  %min.epilog.iters.check171 = icmp eq i64 %n.mod.vf157, 0
  br i1 %min.epilog.iters.check171, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph172, !prof !291

vec.epilog.ph172:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check170
  %vec.epilog.resume.val167 = phi i64 [ %n.vec158, %vec.epilog.iter.check170 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec174 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec174, 3
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  %broadcast.splatinsert175 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i64> %broadcast.splatinsert175, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph172
  %index178 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph172 ], [ %index.next180, %vec.epilog.vector.body177 ] ; 2 uses
  %i.aq = shl i64 %index178, 3
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.aq
  store <4 x i64> %broadcast.splat176, ptr %next.gep179, align 8, !tbaa !135
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.ar, label %vec.epilog.middle.block181, label %vec.epilog.vector.body177, !llvm.loop !316

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body177
  %cmp.n182 = icmp eq i64 %i.ag, %n.vec174
  br i1 %cmp.n182, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check168, %vec.epilog.iter.check170, %vec.epilog.middle.block181
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check168 ], [ %i.ai, %vec.epilog.iter.check170 ], [ %i.ap, %vec.epilog.middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !135
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !317

bb.k:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %2, %i.l
  br i1 %i.at, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.au = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.aw = shl i64 %2, 3
  %i.ax = add i64 %i.aw, -8
  %i.ay = sub i64 %i.ax, %i.k                     ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.ay, 120
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ba, 12
  %n.vec = and i64 %i.ba, 4611686018427387888     ; 4 uses
  %i.bb = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.d, i64 %i.bb
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bd ; 4 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 32
  %i.bf = getelementptr i8, ptr %next.gep, i64 64
  %i.bg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat, ptr %i.be, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat, ptr %i.bf, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !135
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !291

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec114, 3
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %broadcast.splatinsert115 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i64> %broadcast.splatinsert115, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = shl i64 %index117, 3
  %next.gep118 = getelementptr i8, ptr %i.d, i64 %i.bk
  store <4 x i64> %broadcast.splat116, ptr %next.gep118, align 8, !tbaa !135
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ba, %n.vec114
  br i1 %cmp.n120, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !135
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !320

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.av, %middle.block ], [ %i.av, %vec.epilog.middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !314
  %i.bn = icmp sgt i64 %i.k, 8
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !80

bb.l:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !314
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bo = icmp eq i64 %i.k, 8
  br i1 %i.bo, label %bb.n, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %1, align 8, !tbaa !135
  store i64 %i.bp, ptr %.0.i.i.i.i.i, align 8, !tbaa !135
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.n, %bb.m, %bb.l
  %i.bq = phi ptr [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.m ], [ %.pre, %bb.l ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !314
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %iter.check137

iter.check137:                                    ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %i.bs = add i64 %i.f, -8
  %i.bt = sub i64 %i.bs, %i.j                     ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check122 = icmp ult i64 %i.bt, 24
  br i1 %min.iters.check122, label %.lr.ph.i.i.i71.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check137
  %min.iters.check124 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check124, label %vec.epilog.ph141, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %i.bv, 12
  %n.vec127 = and i64 %i.bv, 4611686018427387888  ; 4 uses
  %i.bw = shl i64 %n.vec127, 3
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %broadcast.splatinsert128 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat129 = shufflevector <4 x i64> %broadcast.splatinsert128, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.by = shl i64 %index131, 3
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep132, i64 32
  %i.ca = getelementptr i8, ptr %next.gep132, i64 64
  %i.cb = getelementptr i8, ptr %next.gep132, i64 96
  store <4 x i64> %broadcast.splat129, ptr %next.gep132, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat129, ptr %i.bz, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat129, ptr %i.ca, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat129, ptr %i.cb, align 8, !tbaa !135
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.cc, label %middle.block134, label %vector.body130, !llvm.loop !321

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.bv, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i.i.i71.preheader, label %vec.epilog.ph141, !prof !291

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec127, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.bv, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec143, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert144 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i64> %broadcast.splatinsert144, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph141
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.cf = shl i64 %index147, 3
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.cf
  store <4 x i64> %broadcast.splat145, ptr %next.gep148, align 8, !tbaa !135
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cg, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !322

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.bv, %n.vec143
  br i1 %cmp.n151, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block150
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check137 ], [ %i.bx, %vec.epilog.iter.check139 ], [ %i.ce, %vec.epilog.middle.block150 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ch, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !135
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !323

bb.o:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !tbaa !234   ; 5 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = sub i64 %i.f, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = sub nsw i64 1152921504606846975, %i.cl
  %i.cn = icmp ult i64 %i.cm, %2
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %2)
  %i.co = add nsw i64 %.sroa.speculated.i, %i.cl  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cl
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %i.cs = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ct = sub i64 %i.cs, %i.cj                    ; 4 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %iter.check199, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.cr, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #20
  br label %iter.check199

iter.check199:                                    ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.ct ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i75
  %i.cz = load i64, ptr %3, align 8, !tbaa !135   ; 3 uses
  %i.da = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 3 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.da, 24
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check199
  %min.iters.check186 = icmp ult i64 %i.da, 120
  br i1 %min.iters.check186, label %vec.epilog.ph203, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %n.mod.vf188 = and i64 %i.dc, 12
  %n.vec189 = and i64 %i.dc, 4611686018427387888  ; 4 uses
  %i.dd = shl i64 %n.vec189, 3
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.dd
  %broadcast.splatinsert190 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat191 = shufflevector <4 x i64> %broadcast.splatinsert190, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.df = shl i64 %index193, 3
  %next.gep194 = getelementptr i8, ptr %i.cx, i64 %i.df ; 4 uses
  %i.dg = getelementptr i8, ptr %next.gep194, i64 32
  %i.dh = getelementptr i8, ptr %next.gep194, i64 64
  %i.di = getelementptr i8, ptr %next.gep194, i64 96
  store <4 x i64> %broadcast.splat191, ptr %next.gep194, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat191, ptr %i.dg, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat191, ptr %i.dh, align 8, !tbaa !135
  store <4 x i64> %broadcast.splat191, ptr %i.di, align 8, !tbaa !135
  %index.next195 = add nuw i64 %index193, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.dj, label %middle.block196, label %vector.body192, !llvm.loop !324

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.dc, %n.vec189
  br i1 %cmp.n197, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %min.epilog.iters.check202 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph203, !prof !291

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec189, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec205 = and i64 %i.dc, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec205, 3
  %i.dl = getelementptr i8, ptr %i.cx, i64 %i.dk
  %broadcast.splatinsert206 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat207 = shufflevector <4 x i64> %broadcast.splatinsert206, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph203
  %index209 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 2 uses
  %i.dm = shl i64 %index209, 3
  %next.gep210 = getelementptr i8, ptr %i.cx, i64 %i.dm
  store <4 x i64> %broadcast.splat207, ptr %next.gep210, align 8, !tbaa !135
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.dn, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !325

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  %cmp.n213 = icmp eq i64 %i.dc, %n.vec205
  br i1 %cmp.n213, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block212
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cx, %iter.check199 ], [ %i.de, %vec.epilog.iter.check201 ], [ %i.dl, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cz, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !135
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !326

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block212, %middle.block196
  %i.dp = icmp sgt i64 %i.ct, 8
  br i1 %i.dp, label %bb.r, label %bb.s, !prof !80

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.ci, i64 %i.ct, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.dq = icmp eq i64 %i.ct, 8
  br i1 %i.dq, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dr = load i64, ptr %i.ci, align 8, !tbaa !135
  store i64 %i.dr, ptr %i.cw, align 8, !tbaa !135
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %2 ; 3 uses
  %i.dt = sub i64 %i.f, %i.cs                     ; 4 uses
  %i.du = icmp sgt i64 %i.dt, 8
  br i1 %i.du, label %bb.u, label %bb.v, !prof !80

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %1, i64 %i.dt, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.dv = icmp eq i64 %i.dt, 8
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %1, align 8, !tbaa !135
  store i64 %i.dw, ptr %i.ds, align 8, !tbaa !135
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %.not.i82 = icmp eq ptr %i.ci, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = sub i64 %i.e, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dy) #21
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cw, ptr %0, align 8, !tbaa !234
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !314
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cr
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !278
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block134, %vec.epilog.middle.block150, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.164) align 8 %2, ptr noundef byval(%class.anon.165) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !274, !range !67, !noundef !68
  %i.s = load ptr, ptr %2, align 8, !tbaa !272
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !135
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !274, !range !67, !noundef !68
  %i.al = load ptr, ptr %2, align 8, !tbaa !272
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !67
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !135 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !274, !range !67, !noundef !68
  %i.bw = load ptr, ptr %2, align 8, !tbaa !272
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !135
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !225, !nonnull !68, !align !327
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor10signaturesEv: argument 0"}
!9 = distinct !{!9, !"_ZN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor10signaturesEv"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !12, i64 0, !15, i64 8, !16, i64 16, !15, i64 24, !18, i64 32, !17, i64 48}
!12 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!17 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!18 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !19, i64 0, !15, i64 8}
!19 = !{!"float", !5, i64 0}
!20 = !{!11, !15, i64 8}
!21 = !{!18, !19, i64 0}
!22 = !{!23, !26, i64 32}
!23 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !24, i64 0, !24, i64 16, !26, i64 32}
!24 = !{!"_ZTSSt13_Bit_iterator", !25, i64 0}
!25 = !{!"_ZTSSt18_Bit_iterator_base", !26, i64 0, !4, i64 8}
!26 = !{!"p1 long", !14, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!31, !15, i64 8}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !15, i64 8, !5, i64 16}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !14, i64 0}
!36 = !{!34, !35, i64 16}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!40 = !{!14, !14, i64 0}
!41 = !{!34, !35, i64 8}
!42 = !{!43, !4, i64 8}
!43 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!44 = !{!43, !4, i64 12}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !6, i64 0}
!47 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!31, !29, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!52 = distinct !{!52, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !55, i64 0}
!55 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !14, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"bool", !5, i64 0}
!58 = !{!29, !29, i64 0}
!59 = !{!55, !55, i64 0}
!60 = distinct !{null, null}
!61 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!65 = !{!66, !57, i64 104}
!66 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !57, i64 104}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!70, !57, i64 32}
!70 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !57, i64 32}
!71 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !14, i64 0}
!75 = !{!73, !74, i64 8}
!76 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!77 = distinct !{!77, !63}
!78 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!79 = !{!73, !74, i64 16}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!83 = distinct !{!83, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!84 = distinct !{null, null}
!85 = !{!25, !26, i64 0}
!86 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!87 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!88 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!89 = !{!90, !57, i64 96}
!90 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !31, i64 0, !91, i64 32, !94, i64 56, !57, i64 96}
!91 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !73, i64 0}
!94 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !95, i64 0}
!95 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !96, i64 0}
!96 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !97, i64 0}
!97 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !70, i64 0}
!98 = !{!74, !74, i64 0}
!99 = distinct !{null, null, null, null}
!100 = distinct !{!100, !63}
!101 = distinct !{null, null, null}
!102 = distinct !{null, null, null, null}
!103 = distinct !{null}
!104 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!105 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!106 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!107 = !{!11, !15, i64 24}
!108 = !{!16, !17, i64 0}
!109 = distinct !{!109, !63}
!110 = !{!17, !17, i64 0}
!111 = !{!112, !15, i64 0}
!112 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !15, i64 0}
!113 = distinct !{!113, !63}
!114 = !{!115, !116, i64 0}
!115 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !116, i64 0, !117, i64 8}
!116 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !14, i64 0}
!117 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !14, i64 0}
!118 = !{!115, !117, i64 8}
!119 = distinct !{!119, !63}
!120 = !{!18, !15, i64 8}
!121 = !{!11, !17, i64 16}
!122 = !{!11, !17, i64 48}
!123 = distinct !{!123, !63}
!124 = !{!125, !57, i64 232}
!125 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !126, i64 0, !127, i64 56, !91, i64 168, !131, i64 192, !57, i64 232}
!126 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !11, i64 0}
!127 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !128, i64 0}
!128 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !129, i64 0}
!129 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !130, i64 0}
!130 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !66, i64 0}
!131 = !{!"_ZTSSt6vectorIbSaIbEE", !132, i64 0}
!132 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !133, i64 0}
!133 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !23, i64 0}
!134 = !{!25, !4, i64 8}
!135 = !{!15, !15, i64 0}
!136 = distinct !{null}
!137 = distinct !{!137, !63}
!138 = distinct !{null, null}
!139 = distinct !{!139, !63}
!140 = distinct !{!140, !63}
!141 = distinct !{!141, !63}
!142 = distinct !{null}
!143 = distinct !{!143, !63}
!144 = !{!145, !146, i64 8}
!145 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!146 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !14, i64 0}
!147 = !{!145, !146, i64 0}
!148 = !{!149, !150, i64 0}
!149 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !150, i64 0, !151, i64 8, !152, i64 16, !57, i64 24, !57, i64 25, !153, i64 32, !156, i64 56, !57, i64 72, !57, i64 73, !57, i64 74, !57, i64 75, !159, i64 80, !160, i64 88}
!150 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !14, i64 0}
!151 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !14, i64 0}
!152 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !14, i64 0}
!153 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !154, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_Vector_implE", !145, i64 0}
!156 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec14PeeledEncodingEE", !157, i64 0}
!157 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EE", !158, i64 0, !38, i64 8}
!158 = !{!"p1 _ZTSN8facebook5velox4exec14PeeledEncodingE", !14, i64 0}
!159 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !14, i64 0}
!160 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec10EvalErrorsEE", !161, i64 0}
!161 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EE", !162, i64 0, !38, i64 8}
!162 = !{!"p1 _ZTSN8facebook5velox4exec10EvalErrorsE", !14, i64 0}
!163 = !{!164, !165, i64 0}
!164 = !{!"_ZTSN8facebook5velox4core7ExecCtxE", !165, i64 0, !166, i64 8, !167, i64 16, !168, i64 32, !173, i64 56, !178, i64 80}
!165 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !14, i64 0}
!166 = !{!"p1 _ZTSN8facebook5velox4core8QueryCtxE", !14, i64 0}
!167 = !{!"_ZTSN8facebook5velox4core7ExecCtx18OptimizationParamsE", !57, i64 0, !57, i64 1, !57, i64 2, !57, i64 3, !57, i64 4, !4, i64 8}
!168 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !169, i64 0}
!169 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !170, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !171, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !172, i64 0, !172, i64 8, !172, i64 16}
!172 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !14, i64 0}
!173 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !174, i64 0}
!174 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !175, i64 0}
!175 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !176, i64 0}
!176 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !177, i64 0, !177, i64 8, !177, i64 16}
!177 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !14, i64 0}
!178 = !{!"_ZTSSt10unique_ptrIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !179, i64 0}
!179 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox10VectorPoolESt14default_deleteIS2_ELb1ELb1EE", !180, i64 0}
!180 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !181, i64 0}
!181 = !{!"_ZTSSt5tupleIJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !182, i64 0}
!182 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !183, i64 0}
!183 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox10VectorPoolELb0EE", !184, i64 0}
!184 = !{!"p1 _ZTSN8facebook5velox10VectorPoolE", !14, i64 0}
!185 = !{!184, !184, i64 0}
!186 = !{!187, !188, i64 0}
!187 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !188, i64 0, !38, i64 8}
!188 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !14, i64 0}
!189 = !{!190, !4, i64 32}
!190 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !191, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !195, i64 36}
!191 = !{!"_ZTSSt6vectorImSaImEE", !192, i64 0}
!192 = !{!"_ZTSSt12_Vector_baseImSaImEE", !193, i64 0}
!193 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !194, i64 0}
!194 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!195 = !{!"_ZTSSt8optionalIbE", !196, i64 0}
!196 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !197, i64 0}
!197 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !198, i64 0}
!198 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !57, i64 1}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi: argument 0"}
!201 = distinct !{!201, !"_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi"}
!202 = !{!203, !4, i64 56}
!203 = !{!"_ZTSN8facebook5velox10BaseVectorE", !204, i64 8, !207, i64 24, !57, i64 25, !208, i64 28, !209, i64 32, !26, i64 40, !165, i64 48, !4, i64 56, !211, i64 60, !211, i64 68, !211, i64 76, !211, i64 84, !215, i64 92, !57, i64 93}
!204 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !205, i64 0}
!205 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !206, i64 0, !38, i64 8}
!206 = !{!"p1 _ZTSN8facebook5velox4TypeE", !14, i64 0}
!207 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!208 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!209 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !210, i64 0}
!210 = !{!"p1 _ZTSN8facebook5velox6BufferE", !14, i64 0}
!211 = !{!"_ZTSSt8optionalIiE", !212, i64 0}
!212 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !213, i64 0}
!213 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !214, i64 0}
!214 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !57, i64 4}
!215 = !{!"_ZTSSt6atomicIbE", !216, i64 0}
!216 = !{!"_ZTSSt13__atomic_baseIbE", !57, i64 0}
!217 = !{!203, !165, i64 48}
!218 = !{!209, !210, i64 0}
!219 = !{!220, !223, i64 44}
!220 = !{!"_ZTSN8facebook5velox6BufferE", !165, i64 8, !29, i64 16, !15, i64 24, !15, i64 32, !221, i64 40, !223, i64 44, !5, i64 48}
!221 = !{!"_ZTSSt6atomicIiE", !222, i64 0}
!222 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!223 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !5, i64 0}
!224 = !{!220, !29, i64 16}
!225 = !{!226, !226, i64 0}
!226 = !{!"p1 int", !14, i64 0}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN8facebook5velox15ArrayVectorBase14mutableOffsetsEi: argument 0"}
!229 = distinct !{!229, !"_ZN8facebook5velox15ArrayVectorBase14mutableOffsetsEi"}
!230 = !{!146, !146, i64 0}
!231 = !{!198, !57, i64 1}
!232 = !{!190, !4, i64 28}
!233 = !{!190, !4, i64 24}
!234 = !{!194, !26, i64 0}
!235 = distinct !{!235, !63}
!236 = distinct !{!236, !63, !237, !238}
!237 = !{!"llvm.loop.isvectorized", i32 1}
!238 = !{!"llvm.loop.unroll.runtime.disable"}
!239 = !{!"branch_weights", i32 8, i32 24}
!240 = distinct !{!240, !63, !237, !238}
!241 = distinct !{!241, !242}
!242 = !{!"llvm.loop.unroll.disable"}
!243 = distinct !{!243, !63, !237}
!244 = distinct !{!244, !63}
!245 = distinct !{!245, !63, !237, !238}
!246 = distinct !{!246, !63, !237, !238}
!247 = distinct !{!247, !63, !237}
!248 = distinct !{!248, !63}
!249 = distinct !{!249, !63}
!250 = !{!251, !252, i64 0}
!251 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_Vector_impl_dataE", !252, i64 0, !252, i64 8, !252, i64 16}
!252 = !{!"p1 _ZTSN8facebook5velox10BaseVector9CopyRangeE", !14, i64 0}
!253 = !{!251, !252, i64 8}
!254 = !{!251, !252, i64 16}
!255 = distinct !{!255, !63}
!256 = distinct !{!256, !63}
!257 = distinct !{!257, !63}
!258 = distinct !{!258, !63}
!259 = !{!260, !252, i64 0}
!260 = !{!"_ZTSN5folly5RangeIPKN8facebook5velox10BaseVector9CopyRangeEEE", !252, i64 0, !252, i64 8}
!261 = !{!260, !252, i64 8}
!262 = !{!252, !252, i64 0}
!263 = !{!264, !4, i64 4}
!264 = !{!"_ZTSN8facebook5velox10BaseVector9CopyRangeE", !4, i64 0, !4, i64 4, !4, i64 8}
!265 = distinct !{!265, !63}
!266 = distinct !{!266, !63}
!267 = distinct !{!267, !63}
!268 = distinct !{!268, !63}
!269 = distinct !{!269, !63}
!270 = distinct !{!270, !63}
!271 = distinct !{!271, !63}
!272 = !{!273, !26, i64 0}
!273 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUlimE_", !26, i64 0, !226, i64 8, !57, i64 16}
!274 = !{!273, !57, i64 16}
!275 = !{!276, !26, i64 0}
!276 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUliE_", !26, i64 0, !226, i64 8, !57, i64 16}
!277 = !{!276, !57, i64 16}
!278 = !{!194, !26, i64 16}
!279 = distinct !{!279, !63}
!280 = distinct !{!280, !63}
!281 = distinct !{!281, !63}
!282 = distinct !{!282, !63}
!283 = distinct !{!283, !63}
!284 = distinct !{!284, !63}
!285 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!286 = distinct !{null}
!287 = !{!220, !165, i64 8}
!288 = !{!289, !57, i64 24}
!289 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorImSaImEEE", !5, i64 0, !57, i64 24}
!290 = distinct !{!290, !63, !237, !238}
!291 = !{!"branch_weights", i32 4, i32 12}
!292 = distinct !{!292, !63, !237, !238}
!293 = distinct !{!293, !63, !238, !237}
!294 = !{!205, !206, i64 0}
!295 = !{!296, !207, i64 16}
!296 = !{!"_ZTSN8facebook5velox4TypeE", !297, i64 0, !298, i64 8, !207, i64 16, !57, i64 17}
!297 = !{!"_ZTSN8facebook5velox4TreeIKSt10shared_ptrIKNS0_4TypeEEEE"}
!298 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!299 = !{!300, !300, i64 0}
!300 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !14, i64 0}
!301 = !{!302, !57, i64 0}
!302 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_EUlimE_", !57, i64 0, !26, i64 8, !303, i64 16}
!303 = !{!"_ZTSZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_EUliE0_", !304, i64 0, !26, i64 8, !304, i64 16, !226, i64 24, !305, i64 32}
!304 = !{!"p2 int", !13, i64 0}
!305 = !{!"p1 _ZTSSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE", !14, i64 0}
!306 = !{!302, !26, i64 8}
!307 = !{!303, !26, i64 8}
!308 = !{!303, !226, i64 24}
!309 = !{!303, !304, i64 0}
!310 = !{i64 8}
!311 = !{!303, !304, i64 16}
!312 = !{!303, !305, i64 32}
!313 = distinct !{!313, !63}
!314 = !{!194, !26, i64 8}
!315 = distinct !{!315, !63, !237, !238}
!316 = distinct !{!316, !63, !237, !238}
!317 = distinct !{!317, !63, !238, !237}
!318 = distinct !{!318, !63, !237, !238}
!319 = distinct !{!319, !63, !237, !238}
!320 = distinct !{!320, !63, !238, !237}
!321 = distinct !{!321, !63, !237, !238}
!322 = distinct !{!322, !63, !237, !238}
!323 = distinct !{!323, !63, !238, !237}
!324 = distinct !{!324, !63, !237, !238}
!325 = distinct !{!325, !63, !237, !238}
!326 = distinct !{!326, !63, !238, !237}
!327 = !{i64 4}
end_hunk_0
