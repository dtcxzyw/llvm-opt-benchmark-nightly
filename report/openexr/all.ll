Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/all?download=true
inline.NumInlined: 593
inline.NumDeleted: 266
begin_hunk_0_@_ZN19MemoryMappedIStream4readEPci:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.n, i64 %i.g, i1 false)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !59
  %i.p = add i64 %i.o, %i.g                       ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !59
  %i.q = load i64, ptr %i.c, align 8, !tbaa !22
  %i.r = icmp ult i64 %i.p, %i.q
  ret i1 %i.r

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.j, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN19MemoryMappedIStream5tellgEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN19MemoryMappedIStream5seekgEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 64)) %0, i64 noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN19MemoryMappedIStream16readMemoryMappedEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 72) #34 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  %i.h = add i64 %i.b, %i.g                       ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.d
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #34 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  store i64 %i.h, ptr %i.a, align 8, !tbaa !59
  ret ptr %i.n

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.j, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_Z23mergeOverlappingSamplesffffRfS_(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #16 {
bb.a:
  %i.a = fcmp ogt float %0, 1.000000e+00
  %.sroa.speculated46 = select i1 %i.a, float 1.000000e+00, float %0 ; 2 uses
  %i.b = fcmp ogt float %.sroa.speculated46, 0.000000e+00
  %.sroa.speculated34 = select i1 %i.b, float %.sroa.speculated46, float 0.000000e+00 ; 5 uses
  %i.c = fcmp ogt float %2, 1.000000e+00
  %.sroa.speculated40 = select i1 %i.c, float 1.000000e+00, float %2 ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated40, 0.000000e+00
  %.sroa.speculated = select i1 %i.d, float %.sroa.speculated40, float 0.000000e+00 ; 6 uses
  %i.e = fadd float %.sroa.speculated34, %.sroa.speculated
  %i.f = fneg float %.sroa.speculated34           ; 2 uses
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float %.sroa.speculated, float %i.e) ; 3 uses
  store float %i.g, ptr %4, align 4, !tbaa !60
  %i.h = fcmp oeq float %.sroa.speculated34, 1.000000e+00 ; 3 uses
  %i.i = fcmp oeq float %.sroa.speculated, 1.000000e+00 ; 2 uses
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = fadd float %1, %3
  %i.k = fmul float %i.j, 5.000000e-01
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %brmerge = or i1 %i.h, %i.i
  %.mux = select i1 %i.h, float %1, float %3
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef float @log1pf(float noundef %i.f) #34 ; 2 uses
  %i.m = fneg float %i.l                          ; 2 uses
  %i.n = fmul nnan float %.sroa.speculated34, f0x7F7FFFFF
  %i.o = fcmp ogt float %i.n, %i.m
  %i.p = fdiv float %i.m, %.sroa.speculated34
  %i.q = select i1 %i.o, float %i.p, float 1.000000e+00
  %i.r = fneg float %.sroa.speculated
  %i.s = tail call noundef float @log1pf(float noundef %i.r) #34
  %i.t = fneg float %i.s                          ; 3 uses
  %i.u = fmul nnan float %.sroa.speculated, f0x7F7FFFFF
  %i.v = fcmp ogt float %i.u, %i.t
  %i.w = fsub float %i.t, %i.l                    ; 3 uses
  %i.x = fcmp ogt float %i.w, 1.000000e+00
  %i.y = fmul float %i.w, f0x7F7FFFFF
  %i.z = fcmp olt float %i.g, %i.y
  %or.cond49 = or i1 %i.x, %i.z
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.g, i64 1
  %i.ac = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.w, i64 1
  %i.ae = fdiv <2 x float> %i.ab, %i.ad
  %i.af = insertelement <2 x i1> poison, i1 %i.v, i64 0
  %i.ag = insertelement <2 x i1> %i.af, i1 %or.cond49, i64 1
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.ae, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = fmul float %3, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %1, float %i.q, float %i.aj)
  %i.al = extractelement <2 x float> %i.ah, i64 1
  %i.am = fmul float %i.ak, %i.al
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi float [ %i.k, %bb.b ], [ %i.am, %bb.d ], [ %.mux, %bb.c ]
  store float %.sink, ptr %5, align 4, !tbaa !60
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20readDeepScanLineFilePKcRN9Imath_3_23BoxINS1_4Vec2IiEEEES6_RN7Imf_3_47Array2DIPfEERNS8_IPNS1_4halfEEERNS8_IjEE(ptr noundef %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Imf_3_4::DeepScanLineInputFile", align 8 ; 11 uses
  %7 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 16 uses
  %8 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %9 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %10 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_421DeepScanLineInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.s       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.c unwind label %bb.s       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !62
  store <2 x i32> %i.e, ptr %2, align 4, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !62
  store <2 x i32> %i.i, ptr %i.f, align 4, !tbaa !62
  %i.j = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.d unwind label %bb.s       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !62
  store <2 x i32> %i.k, ptr %1, align 4, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !62
  store <2 x i32> %i.n, ptr %i.l, align 4, !tbaa !62
  %i.o = load i32, ptr %i.f, align 4, !tbaa !63
  %i.p = load i32, ptr %2, align 4, !tbaa !66
  %i.q = sub nsw i32 %i.o, %i.p                   ; 4 uses
  %i.r = add nsw i32 %i.q, 1                      ; 4 uses
  %i.s = load i32, ptr %i.h, align 4, !tbaa !67
  %i.t = load i32, ptr %i.d, align 4, !tbaa !68
  %i.u = sub nsw i32 %i.s, %i.t                   ; 4 uses
  %i.v = add nsw i32 %i.u, 1
  %i.w = sext i32 %i.v to i64                     ; 4 uses
  %i.x = sext i32 %i.r to i64                     ; 6 uses
  %i.y = mul nsw i64 %i.w, %i.x                   ; 4 uses
  %i.z = icmp ugt i64 %i.y, 4611686018427387903
  %i.aa = shl nuw i64 %i.y, 2
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #37
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc
  store i64 %i.w, ptr %5, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ag, align 8, !tbaa !73
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !69
  %i.ah = icmp ugt i64 %i.y, 2305843009213693951
  %i.ai = shl nuw i64 %i.y, 3
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai      ; 2 uses
  %i.ak = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #37
          to label %.noexc86 unwind label %bb.t

.noexc86:                                         ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc86
  call void @_ZdaPv(ptr noundef nonnull %i.am) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc86
  store i64 %i.w, ptr %3, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.x, ptr %i.ao, align 8, !tbaa !79
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !74
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #37
          to label %.noexc87 unwind label %bb.t

.noexc87:                                         ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc87
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc87
  store i64 %i.w, ptr %4, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.x, ptr %i.at, align 8, !tbaa !84
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.au, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !93
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.az, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %7) #34
  br label %.body

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.bc = load i32, ptr %2, align 4, !tbaa !66
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !68
  %i.bh = mul nsw i32 %i.bg, %i.r
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = shl nsw i64 %i.x, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %8, i32 noundef 0, ptr noundef %i.bk, i64 noundef 4, i64 noundef %i.bl, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.bn = load i32, ptr %2, align 4, !tbaa !66
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i32, ptr %i.d, align 4, !tbaa !68
  %i.bs = mul nsw i32 %i.br, %i.r
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = shl nsw i64 %i.x, 3                     ; 2 uses
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef 2, ptr noundef %i.bv, i64 noundef 8, i64 noundef %i.bw, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.by = load i32, ptr %2, align 4, !tbaa !66
  %i.bz = sext i32 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i32, ptr %i.d, align 4, !tbaa !68
  %i.cd = mul nsw i32 %i.cc, %i.r
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cf
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 1, ptr noundef %i.cg, i64 noundef 8, i64 noundef %i.bw, i64 noundef 2, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.ch = load i32, ptr %i.d, align 4, !tbaa !68
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !67
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEii(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.ch, i32 noundef %i.ci)
          to label %.preheader90 unwind label %bb.x

.preheader90:                                     ; preds = %bb.r
  %i.cj = or i32 %i.u, %i.q
  %or.cond.not = icmp sgt i32 %i.cj, -1           ; 2 uses
  br i1 %or.cond.not, label %.preheader89.lr.ph.split, label %._crit_edge95

.preheader89.lr.ph.split:                         ; preds = %.preheader90
  %i.ck = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.cl = load i64, ptr %i.ag, align 8, !tbaa !73
  %smax = call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %11 = add nuw i32 %smax, 1
  %smax107 = call i32 @llvm.smax.i32(i32 %i.u, i32 0)
  %12 = add nuw i32 %smax107, 1
  %wide.trip.count108 = zext i32 %12 to i64
  %wide.trip.count = zext i32 %11 to i64
  br label %.preheader89

.preheader89:                                     ; preds = %.preheader89.lr.ph.split, %._crit_edge
  %indvars.iv105 = phi i64 [ 0, %.preheader89.lr.ph.split ], [ %indvars.iv.next106, %._crit_edge ] ; 4 uses
  %i.cm = mul nsw i64 %i.cl, %indvars.iv105
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  br label %bb.y

._crit_edge95:                                    ; preds = %._crit_edge, %.preheader90
  %i.co = load i32, ptr %i.d, align 4, !tbaa !68
  %i.cp = load i32, ptr %i.h, align 4, !tbaa !67
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.co, i32 noundef %i.cp)
          to label %.preheader88 unwind label %bb.x

.preheader88:                                     ; preds = %._crit_edge95
  br i1 %or.cond.not, label %.preheader.preheader, label %._crit_edge101

.preheader.preheader:                             ; preds = %.preheader88
  %smax113 = call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %13 = add nuw i32 %smax113, 1
  %smax119 = call i32 @llvm.smax.i32(i32 %i.u, i32 0)
  %14 = add nuw i32 %smax119, 1
  %wide.trip.count118 = zext i32 %14 to i64
  %wide.trip.count113 = zext i32 %13 to i64
  br label %.preheader

bb.s:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.t:                                             ; preds = %bb.h, %bb.f, %bb.d
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.u:                                             ; preds = %bb.l, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.au

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.au

bb.w:                                             ; preds = %bb.p, %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.au

bb.x:                                             ; preds = %._crit_edge95, %bb.r, %bb.q
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

._crit_edge:                                      ; preds = %bb.aa
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge95, label %.preheader89, !llvm.loop !94

bb.y:                                             ; preds = %.preheader89, %bb.aa
  %indvars.iv = phi i64 [ 0, %.preheader89 ], [ %indvars.iv.next, %bb.aa ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #37
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.dc = load i64, ptr %i.ao, align 8, !tbaa !79
  %i.dd = mul nsw i64 %i.dc, %indvars.iv105
  %i.de = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv
  store ptr %i.da, ptr %i.df, align 8, !tbaa !96
  %i.dg = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 1
  %i.dj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.di) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.dl = load i64, ptr %i.at, align 8, !tbaa !84
  %i.dm = mul nsw i64 %i.dl, %indvars.iv105
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !100

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge98
  %indvars.iv115 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next116, %._crit_edge98 ] ; 3 uses
  br label %bb.ap

._crit_edge101:                                   ; preds = %._crit_edge98, %.preheader88
  %i.dq = load ptr, ptr %i.av, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %i.dq)
          to label %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %._crit_edge101
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #38
  unreachable

_ZN7Imf_3_415DeepFrameBufferD2Ev.exit:            ; preds = %._crit_edge101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !101 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dv, align 8, !tbaa !104
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !106
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #34, !inline_history !107
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #34, !inline_history !107
  br label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i = phi i32 [ %i.dy, %bb.ag ], [ %i.ei, %bb.ah ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.ai, label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !108

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #34
  br label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae, %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !101 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i1.i, label %_ZN7Imf_3_421DeepScanLineInputFileD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.em, align 8, !tbaa !104
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !106
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #34, !inline_history !109
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #34, !inline_history !109
  br label %_ZN7Imf_3_421DeepScanLineInputFileD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.am ], [ %i.ez, %bb.an ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.ao, label %_ZN7Imf_3_421DeepScanLineInputFileD2Ev.exit, !prof !108

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #34
  br label %_ZN7Imf_3_421DeepScanLineInputFileD2Ev.exit

_ZN7Imf_3_421DeepScanLineInputFileD2Ev.exit:      ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

._crit_edge98:                                    ; preds = %bb.at
end_hunk_0
begin_hunk_1_@_Z20readDeepScanLineFilePKcRN9Imath_3_23BoxINS1_4Vec2IiEEEES6_RN7Imf_3_47Array2DIPfEERNS8_IPNS1_4halfEEERNS8_IjEE:bb.a
  %i.fk = mul nsw i64 %i.fj, %indvars.iv115
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv110
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !98 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.fn) #36
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge98, label %bb.ap, !llvm.loop !111

bb.au:                                            ; preds = %bb.ab, %bb.x, %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.ab ], [ %i.cv, %bb.x ], [ %i.cu, %bb.w ], [ %i.ct, %bb.v ], [ %i.cs, %bb.u ]
  call void @_ZN7Imf_3_415DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #34
  br label %.body

.body:                                            ; preds = %bb.k, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.au ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.av

bb.av:                                            ; preds = %bb.t, %.body, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.s ], [ %.pn.pn, %.body ], [ %i.cr, %bb.t ]
  call void @_ZN7Imf_3_421DeepScanLineInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef i32 @_ZN7Imf_3_417globalThreadCountEv() local_unnamed_addr #8

declare void @_ZN7Imf_3_421DeepScanLineInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #8

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #8

declare void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #8

declare void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #8

declare void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

declare void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #8

declare void @_ZN7Imf_3_421DeepScanLineInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #8

declare void @_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #18

declare void @_ZN7Imf_3_421DeepScanLineInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_415DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable

_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_421DeepScanLineInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !106
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !112
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !112
  br label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !108

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101  ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN7Imf_3_47ContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !106
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #34, !inline_history !113
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #34, !inline_history !113
  br label %_ZN7Imf_3_47ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN7Imf_3_47ContextD2Ev.exit, !prof !108

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #34
  br label %_ZN7Imf_3_47ContextD2Ev.exit

_ZN7Imf_3_47ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17readDeepTiledFilePKcRN9Imath_3_23BoxINS1_4Vec2IiEEEES6_RN7Imf_3_47Array2DIPfEERNS8_IPNS1_4halfEEERNS8_IjEE(ptr noundef %0, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Imf_3_4::DeepTiledInputFile", align 8 ; 12 uses
  %7 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 16 uses
  %8 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %9 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %10 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_418DeepTiledInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %0, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63
  %i.d = load i32, ptr %2, align 4, !tbaa !66
  %i.e = sub nsw i32 %i.c, %i.d                   ; 4 uses
  %i.f = add nsw i32 %i.e, 1                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !68
  %i.k = sub nsw i32 %i.h, %i.j                   ; 4 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = sext i32 %i.f to i64                     ; 6 uses
  %i.o = mul nsw i64 %i.m, %i.n                   ; 4 uses
  %i.p = icmp ugt i64 %i.o, 4611686018427387903
  %i.q = shl nuw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #37
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.u) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  store i64 %i.m, ptr %5, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.w, align 8, !tbaa !73
  store ptr %i.s, ptr %i.t, align 8, !tbaa !69
  %i.x = icmp ugt i64 %i.o, 2305843009213693951
  %i.y = shl nuw i64 %i.o, 3
  %i.z = select i1 %i.x, i64 -1, i64 %i.y         ; 2 uses
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #37
          to label %.noexc84 unwind label %bb.r

.noexc84:                                         ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc84
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc84
  store i64 %i.m, ptr %3, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.n, ptr %i.ae, align 8, !tbaa !79
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !74
  %i.af = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #37
          to label %.noexc85 unwind label %bb.r

.noexc85:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc85
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc85
  store i64 %i.m, ptr %4, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.n, ptr %i.aj, align 8, !tbaa !84
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.ap, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %7) #34
  br label %.body

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.as = load i32, ptr %2, align 4, !tbaa !66
  %i.at = sext i32 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i32, ptr %i.i, align 4, !tbaa !68
  %i.ax = mul nsw i32 %i.aw, %i.f
  %i.ay = sext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az
  %i.bb = shl nsw i64 %i.n, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %8, i32 noundef 0, ptr noundef %i.ba, i64 noundef 4, i64 noundef %i.bb, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.bd = load i32, ptr %2, align 4, !tbaa !66
  %i.be = sext i32 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !68
  %i.bi = mul nsw i32 %i.bh, %i.f
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = shl nsw i64 %i.n, 3                     ; 2 uses
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef 2, ptr noundef %i.bl, i64 noundef 8, i64 noundef %i.bm, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.bo = load i32, ptr %2, align 4, !tbaa !66
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i32, ptr %i.i, align 4, !tbaa !68
  %i.bt = mul nsw i32 %i.bs, %i.f
  %i.bu = sext i32 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bv
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 1, ptr noundef %i.bw, i64 noundef 8, i64 noundef %i.bm, i64 noundef 2, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  invoke void @_ZN7Imf_3_418DeepTiledInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bx = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.by = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bz = add nsw i32 %i.bx, -1                   ; 2 uses
  %i.ca = add nsw i32 %i.by, -1                   ; 2 uses
  invoke void @_ZN7Imf_3_418DeepTiledInputFile21readPixelSampleCountsEiiiii(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i32 noundef %i.bz, i32 noundef 0, i32 noundef %i.ca, i32 noundef 0)
          to label %.preheader88 unwind label %bb.x

.preheader88:                                     ; preds = %bb.q
  %i.cb = or i32 %i.k, %i.e
  %or.cond.not = icmp sgt i32 %i.cb, -1           ; 2 uses
  br i1 %or.cond.not, label %.preheader87.lr.ph.split, label %._crit_edge93

.preheader87.lr.ph.split:                         ; preds = %.preheader88
  %i.cc = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !73
  %smax = call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %11 = add nuw i32 %smax, 1
  %smax105 = call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %12 = add nuw i32 %smax105, 1
  %wide.trip.count106 = zext i32 %12 to i64
  %wide.trip.count = zext i32 %11 to i64
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.lr.ph.split, %._crit_edge
  %indvars.iv103 = phi i64 [ 0, %.preheader87.lr.ph.split ], [ %indvars.iv.next104, %._crit_edge ] ; 4 uses
  %i.ce = mul nsw i64 %i.cd, %indvars.iv103
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ce
  br label %bb.y

._crit_edge93:                                    ; preds = %._crit_edge, %.preheader88
  invoke void @_ZN7Imf_3_418DeepTiledInputFile9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i32 noundef %i.bz, i32 noundef 0, i32 noundef %i.ca, i32 noundef 0)
          to label %.preheader86 unwind label %bb.x

.preheader86:                                     ; preds = %._crit_edge93
  br i1 %or.cond.not, label %.preheader.preheader, label %._crit_edge99

.preheader.preheader:                             ; preds = %.preheader86
  %smax111 = call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %13 = add nuw i32 %smax111, 1
  %smax117 = call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %14 = add nuw i32 %smax117, 1
  %wide.trip.count116 = zext i32 %14 to i64
  %wide.trip.count111 = zext i32 %13 to i64
  br label %.preheader

bb.r:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.s:                                             ; preds = %bb.i, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.au

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.au

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.au

bb.v:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.w:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.x:                                             ; preds = %._crit_edge93, %bb.q, %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

._crit_edge:                                      ; preds = %bb.aa
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge93, label %.preheader87, !llvm.loop !114

bb.y:                                             ; preds = %.preheader87, %bb.aa
  %indvars.iv = phi i64 [ 0, %.preheader87 ], [ %indvars.iv.next, %bb.aa ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !62
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #37
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !79
  %i.cu = mul nsw i64 %i.ct, %indvars.iv103
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  store ptr %i.cr, ptr %i.cw, align 8, !tbaa !96
  %i.cx = load i32, ptr %i.cn, align 4, !tbaa !62
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 1
  %i.da = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.dc = load i64, ptr %i.aj, align 8, !tbaa !84
  %i.dd = mul nsw i64 %i.dc, %indvars.iv103
  %i.de = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv
  store ptr %i.da, ptr %i.df, align 8, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !115

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge96
  %indvars.iv113 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next114, %._crit_edge96 ] ; 3 uses
  br label %bb.ap

._crit_edge99:                                    ; preds = %._crit_edge96, %.preheader86
  %i.dh = load ptr, ptr %i.al, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %i.dh)
          to label %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %._crit_edge99
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #38
  unreachable

_ZN7Imf_3_415DeepFrameBufferD2Ev.exit:            ; preds = %._crit_edge99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !101 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_418DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dm, align 8, !tbaa !104
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !106
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #34, !inline_history !116
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #34, !inline_history !116
  br label %_ZNSt12__shared_ptrIN7Imf_3_418DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i = phi i32 [ %i.dp, %bb.ag ], [ %i.dz, %bb.ah ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.ai, label %_ZNSt12__shared_ptrIN7Imf_3_418DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !108

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #34
  br label %_ZNSt12__shared_ptrIN7Imf_3_418DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7Imf_3_418DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae, %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i1.i, label %_ZN7Imf_3_418DeepTiledInputFileD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN7Imf_3_418DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 4 uses
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 4294967297
  %i.eg = trunc i64 %i.ee to i32                  ; 2 uses
  br i1 %i.ef, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ed, align 8, !tbaa !104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i32 0, ptr %i.eh, align 4, !tbaa !106
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #34, !inline_history !117
  %i.el = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #34, !inline_history !117
  br label %_ZN7Imf_3_418DeepTiledInputFileD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = add nsw i32 %i.eg, -1
  store i32 %i.ep, ptr %i.ed, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.eq = atomicrmw volatile add ptr %i.ed, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i = phi i32 [ %i.eg, %bb.am ], [ %i.eq, %bb.an ]
  %i.er = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.er, label %bb.ao, label %_ZN7Imf_3_418DeepTiledInputFileD2Ev.exit, !prof !108

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #34
  br label %_ZN7Imf_3_418DeepTiledInputFileD2Ev.exit

end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !inline_history !216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !62   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !inline_history !216
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !217

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expm1f(float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !42
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !218

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #29

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #30

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #31

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7Imf_3_46HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #8

declare void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN7Iex_3_47TypeExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_all.cpp() #32 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 8), align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 29), align 1, !tbaa !42
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, ptr nonnull @__dso_handle) #34 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 26), align 2, !tbaa !42
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, ptr nonnull @__dso_handle) #34 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 28), align 4, !tbaa !42
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, ptr nonnull @__dso_handle) #34 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, align 8, !tbaa !39
  store i64 7308332244138288484, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 24), align 8, !tbaa !42
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, ptr nonnull @__dso_handle) #34 ; 0 uses
  %i.e = load ptr, ptr @gPixels, align 8, !tbaa !98
  %i.f = load i32, ptr @x, align 4, !tbaa !62
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.j = load i32, ptr @y, align 4, !tbaa !62
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = shl nsw i64 %i.k, 1
  %i.m = load i32, ptr @width, align 4, !tbaa !62
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul i64 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  store ptr %i.p, ptr @G, align 8, !tbaa !98
  %i.q = load ptr, ptr @zPixels, align 8, !tbaa !96
  %i.r = shl nsw i64 %i.g, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = shl nsw i64 %i.k, 2
  %i.u = mul i64 %i.t, %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store ptr %i.v, ptr @Z, align 8, !tbaa !96
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !17, i64 40}
!10 = !{!"_ZTS9C_IStream", !11, i64 0, !17, i64 40}
!11 = !{!"_ZTSN7Imf_3_47IStreamE", !12, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !7, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !14, i64 40}
!21 = !{!"_ZTS19MemoryMappedIStream", !11, i64 0, !14, i64 40, !16, i64 48, !16, i64 56}
!22 = !{!21, !16, i64 48}
!23 = !{ptr @_ZN19MemoryMappedIStreamD2Ev}
!24 = !{!25, !27, i64 32}
!25 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !26, i64 24, !27, i64 28, !27, i64 32, !28, i64 40, !29, i64 48, !7, i64 64, !6, i64 192, !30, i64 200, !31, i64 208}
!26 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!29 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !16, i64 8}
!30 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!31 = !{!"_ZTSSt6locale", !32, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!35 = distinct !{!35, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!38 = distinct !{!38, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!39 = !{!13, !14, i64 0}
!40 = !{!37, !34}
!41 = !{!12, !16, i64 8}
!42 = !{!7, !7, i64 0}
!43 = !{!44, !14, i64 40}
!44 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !31, i64 56}
!45 = !{!44, !14, i64 32}
!46 = !{!12, !14, i64 0}
!47 = !{!48, !16, i64 8}
!48 = !{!"_ZTSSi", !16, i64 8}
!49 = !{!50, !16, i64 48}
!50 = !{!"_ZTS4stat", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !51, i64 72, !51, i64 88, !51, i64 104, !7, i64 120}
!51 = !{!"_ZTS8timespec", !16, i64 0, !16, i64 8}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = !{!56, !53}
!59 = !{!21, !16, i64 56}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !7, i64 0}
!62 = !{!6, !6, i64 0}
!63 = !{!64, !6, i64 8}
!64 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !65, i64 0, !65, i64 8}
!65 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !6, i64 0, !6, i64 4}
!66 = !{!64, !6, i64 0}
!67 = !{!64, !6, i64 12}
!68 = !{!64, !6, i64 4}
!69 = !{!70, !71, i64 16}
!70 = !{!"_ZTSN7Imf_3_47Array2DIjEE", !16, i64 0, !16, i64 8, !71, i64 16}
!71 = !{!"p1 int", !15, i64 0}
!72 = !{!70, !16, i64 0}
!73 = !{!70, !16, i64 8}
!74 = !{!75, !76, i64 16}
!75 = !{!"_ZTSN7Imf_3_47Array2DIPfEE", !16, i64 0, !16, i64 8, !76, i64 16}
!76 = !{!"p2 float", !77, i64 0}
!77 = !{!"any p2 pointer", !15, i64 0}
!78 = !{!75, !16, i64 0}
!79 = !{!75, !16, i64 8}
!80 = !{!81, !82, i64 16}
!81 = !{!"_ZTSN7Imf_3_47Array2DIPN9Imath_3_24halfEEE", !16, i64 0, !16, i64 8, !82, i64 16}
!82 = !{!"p2 _ZTSN9Imath_3_24halfE", !77, i64 0}
!83 = !{!81, !16, i64 0}
!84 = !{!81, !16, i64 8}
!85 = !{!86, !88, i64 0}
!86 = !{!"_ZTSSt15_Rb_tree_header", !87, i64 0, !16, i64 32}
!87 = !{!"_ZTSSt18_Rb_tree_node_base", !88, i64 0, !89, i64 8, !89, i64 16, !89, i64 24}
!88 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!89 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!90 = !{!86, !89, i64 8}
!91 = !{!86, !89, i64 16}
!92 = !{!86, !89, i64 24}
!93 = !{!86, !16, i64 32}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!97, !97, i64 0}
!97 = !{!"p1 float", !15, i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 _ZTSN9Imath_3_24halfE", !15, i64 0}
!100 = distinct !{!100, !95}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0}
!103 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!104 = !{!105, !6, i64 8}
!105 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!106 = !{!105, !6, i64 12}
!107 = distinct !{ptr @_ZN7Imf_3_421DeepScanLineInputFileD2Ev, null, null, null}
!108 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!109 = distinct !{ptr @_ZN7Imf_3_421DeepScanLineInputFileD2Ev, null, null, null, null}
!110 = distinct !{!110, !95}
!111 = distinct !{!111, !95}
!112 = distinct !{null, null, null}
!113 = distinct !{null, null, null, null}
!114 = distinct !{!114, !95}
!115 = distinct !{!115, !95}
!116 = distinct !{ptr @_ZN7Imf_3_418DeepTiledInputFileD2Ev, null, null, null}
!117 = distinct !{ptr @_ZN7Imf_3_418DeepTiledInputFileD2Ev, null, null, null, null}
!118 = distinct !{!118, !95}
!119 = distinct !{!119, !95}
!120 = distinct !{null, null, null}
!121 = !{!65, !6, i64 0}
!122 = !{!65, !6, i64 4}
!123 = !{!124, !99, i64 16}
!124 = !{!"_ZTSN7Imf_3_47Array2DIN9Imath_3_24halfEEE", !16, i64 0, !16, i64 8, !99, i64 16}
!125 = !{!124, !16, i64 0}
!126 = !{!124, !16, i64 8}
!127 = !{!128, !97, i64 16}
!128 = !{!"_ZTSN7Imf_3_47Array2DIfEE", !16, i64 0, !16, i64 8, !97, i64 16}
!129 = !{!128, !16, i64 0}
!130 = !{!128, !16, i64 8}
!131 = distinct !{ptr @_ZN7Imf_3_49InputFileD2Ev, null, null, null}
!132 = distinct !{ptr @_ZN7Imf_3_49InputFileD2Ev, null, null, null, null}
!133 = distinct !{null, null, null}
!134 = !{!135, !136, i64 16}
!135 = !{!"_ZTSN7Imf_3_47Array2DI2GZEE", !16, i64 0, !16, i64 8, !136, i64 16}
!136 = !{!"p1 _ZTS2GZ", !15, i64 0}
!137 = !{!135, !16, i64 0}
!138 = !{!135, !16, i64 8}
!139 = !{!89, !89, i64 0}
!140 = distinct !{!140, !95}
!141 = !{!142, !144, i64 256}
!142 = !{!"_ZTSSt4pairIKN7Imf_3_44NameEPNS0_9AttributeEE", !143, i64 0, !144, i64 256}
!143 = !{!"_ZTSN7Imf_3_44NameE", !7, i64 0}
!144 = !{!"p1 _ZTSN7Imf_3_49AttributeE", !15, i64 0}
!145 = !{!146, !150, i64 240}
!146 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !147, i64 216, !7, i64 224, !148, i64 225, !149, i64 232, !150, i64 240, !151, i64 248, !152, i64 256}
!147 = !{!"p1 _ZTSSo", !15, i64 0}
!148 = !{!"bool", !7, i64 0}
!149 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!150 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!151 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!152 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
end_hunk_2
