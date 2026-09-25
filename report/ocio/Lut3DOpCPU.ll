Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !51
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererC2ERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(48) %i.f), !inline_history !124 ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !52
  %i.k = uitofp i64 %i.j to float
  %i.l = fadd float %i.k, -1.000000e+00
  store float %i.l, ptr %i.c, align 8, !tbaa !53
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.m)
  store i32 4, ptr %i.d, align 4, !tbaa !55
  %i.n = load ptr, ptr %1, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200 ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !52 ; 3 uses
  %i.p = mul i64 %.val.i, %.val.i
  %i.q = mul i64 %i.p, %.val.i                    ; 3 uses
  %i.r = shl i64 %i.q, 4
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_58Platform13AlignedMallocEmm(i64 noundef %i.r, i64 noundef 16) ; 2 uses
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.noexc, %.lr.ph.i.i
  %.02.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ 0, %.noexc ] ; 2 uses
  %.0171.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.s, %.noexc ] ; 5 uses
  %i.u = mul nuw nsw i64 %.02.i.i, 3              ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  %i.x = load float, ptr %i.w, align 4, !tbaa !56
  %i.y = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.x)
  store float %i.y, ptr %.0171.i.i, align 4, !tbaa !56
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !56
  %i.ad = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !56
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !56
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 8
  store float %i.aj, ptr %i.ak, align 4, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 12
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 16
  %i.an = add nuw nsw i64 %.02.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.q
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !125

.loopexit:                                        ; preds = %.lr.ph.i.i, %.noexc
  store ptr %i.s, ptr %i.a, align 8, !tbaa !54
  ret void
}

declare noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv() local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_520applyTetrahedralSSE2EPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @_ZN16OpenColorIO_v2_519applyTetrahedralAVXEPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @_ZN16OpenColorIO_v2_520applyTetrahedralAVX2EPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @_ZN16OpenColorIO_v2_522applyTetrahedralAVX512EPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  invoke void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.b)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit unwind label %bb.b, !inline_history !58

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28, !inline_history !58
  unreachable

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %3 to i32
  tail call void %i.b(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %1, ptr noundef %2, i32 noundef %i.j)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52   ; 2 uses
  %i.m = uitofp i64 %i.l to float
  %i.n = fadd float %i.m, -1.000000e+00           ; 3 uses
  %i.o = icmp sgt i64 %3, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55   ; 8 uses
  %i.s = trunc i64 %i.l to i32                    ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 17 uses
  %i.v = insertelement <2 x float> poison, float %i.n, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.0277 = phi i64 [ 0, %.lr.ph ], [ %i.ls, %bb.o ]
  %.0263276 = phi ptr [ %2, %.lr.ph ], [ %i.lr, %bb.o ] ; 13 uses
  %.0264275 = phi ptr [ %1, %.lr.ph ], [ %i.lq, %bb.o ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0264275, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !56
  %i.z = load float, ptr %i.p, align 8, !tbaa !53 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0264275, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !56
  %i.ac = fmul float %i.z, %i.ab                  ; 2 uses
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated2.i273 = select i1 %i.ad, float %i.ac, float 0.000000e+00 ; 2 uses
  %i.ae = fcmp olt float %i.n, %.sroa.speculated2.i273
  %.sroa.speculated.i274 = select i1 %i.ae, float %i.n, float %.sroa.speculated2.i273 ; 3 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %.sroa.speculated.i274)
  %i.ag = fptosi float %i.af to i32               ; 5 uses
  %i.ah = tail call noundef float @llvm.ceil.f32(float %.sroa.speculated.i274)
  %i.ai = fptosi float %i.ah to i32               ; 4 uses
  %i.aj = load <2 x float>, ptr %.0264275, align 4, !tbaa !56
  %i.ak = insertelement <2 x float> poison, float %i.z, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.al, %i.aj           ; 2 uses
  %i.an = fcmp ogt <2 x float> %i.am, zeroinitializer
  %i.ao = select <2 x i1> %i.an, <2 x float> %i.am, <2 x float> zeroinitializer ; 2 uses
  %i.ap = fcmp olt <2 x float> %i.w, %i.ao
  %i.aq = select <2 x i1> %i.ap, <2 x float> %i.w, <2 x float> %i.ao ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.as = tail call noundef float @llvm.floor.f32(float %i.ar)
  %i.at = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.au = tail call noundef float @llvm.floor.f32(float %i.at)
  %i.av = insertelement <2 x float> poison, float %i.as, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.au, i64 1
  %i.ax = fptosi <2 x float> %i.aw to <2 x i32>   ; 3 uses
  %i.ay = tail call noundef float @llvm.ceil.f32(float %i.ar)
  %i.az = fptosi float %i.ay to i32
  %i.ba = tail call noundef float @llvm.ceil.f32(float %i.at)
  %i.bb = fptosi float %i.ba to i32               ; 2 uses
  %i.bc = sitofp <2 x i32> %i.ax to <2 x float>
  %i.bd = fsub <2 x float> %i.aq, %i.bc           ; 2 uses
  %i.be = sitofp i32 %i.ag to float
  %i.bf = fsub float %.sroa.speculated.i274, %i.be ; 20 uses
  %i.bg = extractelement <2 x i32> %i.ax, i64 0
  %i.bh = mul nsw i32 %i.bg, %i.s                 ; 2 uses
  %i.bi = extractelement <2 x i32> %i.ax, i64 1   ; 2 uses
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = mul nsw i32 %i.bj, %i.s                 ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.ag
  %i.bm = mul nsw i32 %i.bl, %i.r                 ; 3 uses
  %i.bn = mul nsw i32 %i.az, %i.s                 ; 2 uses
  %i.bo = add nsw i32 %i.bn, %i.bi
  %i.bp = mul nsw i32 %i.bo, %i.s                 ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.ag
  %i.br = mul nsw i32 %i.bq, %i.r                 ; 2 uses
  %i.bs = add nsw i32 %i.bh, %i.bb
  %i.bt = mul nsw i32 %i.bs, %i.s                 ; 2 uses
  %i.bu = add nsw i32 %i.bt, %i.ag
  %i.bv = mul nsw i32 %i.bu, %i.r
  %i.bw = add nsw i32 %i.bk, %i.ai
  %i.bx = mul nsw i32 %i.bw, %i.r                 ; 2 uses
  %i.by = add nsw i32 %i.bn, %i.bb
  %i.bz = mul nsw i32 %i.by, %i.s                 ; 2 uses
  %i.ca = add nsw i32 %i.bz, %i.ag
  %i.cb = mul nsw i32 %i.ca, %i.r                 ; 2 uses
  %i.cc = add nsw i32 %i.bp, %i.ai
  %i.cd = mul nsw i32 %i.cc, %i.r
  %i.ce = add nsw i32 %i.bt, %i.ai
  %i.cf = mul nsw i32 %i.ce, %i.r                 ; 2 uses
  %i.cg = add nsw i32 %i.bz, %i.ai
  %i.ch = mul nsw i32 %i.cg, %i.r                 ; 4 uses
  %i.ci = extractelement <2 x float> %i.bd, i64 0 ; 19 uses
  %i.cj = extractelement <2 x float> %i.bd, i64 1 ; 18 uses
  %i.ck = fcmp ogt float %i.ci, %i.cj
  br i1 %i.ck, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.cl = fcmp ogt float %i.cj, %i.bf
  %i.cm = sext i32 %i.bm to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cm ; 6 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56 ; 3 uses
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = fsub float 1.000000e+00, %i.ci          ; 3 uses
  %i.cq = fsub float %i.ci, %i.cj                 ; 3 uses
  %i.cr = sext i32 %i.br to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cr ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !56
  %i.cu = fmul float %i.cq, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.co, float %i.cu)
  %i.cw = fsub float %i.cj, %i.bf                 ; 3 uses
  %i.cx = sext i32 %i.cb to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cx ; 3 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !56
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cz, float %i.cv)
  %i.db = sext i32 %i.ch to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.db ; 3 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !56
  %i.de = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.dd, float %i.da)
  store float %i.de, ptr %.0263276, align 4, !tbaa !56
  %i.df = getelementptr i8, ptr %i.cn, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !56
  %i.dh = getelementptr i8, ptr %i.cs, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !56
  %i.dj = fmul float %i.cq, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dg, float %i.dj)
  %i.dl = getelementptr i8, ptr %i.cy, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !56
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.dm, float %i.dk)
  %i.do = getelementptr i8, ptr %i.dc, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !56
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.dp, float %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %.0263276, i64 4
  store float %i.dq, ptr %i.dr, align 4, !tbaa !56
  %i.ds = getelementptr i8, ptr %i.cn, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !56
  %i.du = getelementptr i8, ptr %i.cs, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !56
  %i.dw = fmul float %i.cq, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dt, float %i.dw)
  %i.dy = getelementptr i8, ptr %i.cy, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !56
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.dz, float %i.dx)
  %i.eb = getelementptr i8, ptr %i.dc, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !56
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ec, float %i.ea)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.ee = fcmp ogt float %i.ci, %i.bf
  %i.ef = sext i32 %i.cd to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ef ; 4 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !56 ; 2 uses
  %i.ei = sext i32 %i.ch to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ei ; 4 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !56 ; 2 uses
  %i.el = getelementptr i8, ptr %i.cn, i64 4      ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 4      ; 2 uses
  %i.en = getelementptr i8, ptr %i.ej, i64 4      ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0263276, i64 4 ; 2 uses
  br i1 %i.ee, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ep = fsub float 1.000000e+00, %i.ci          ; 3 uses
  %i.eq = fsub float %i.ci, %i.bf                 ; 3 uses
  %i.er = sext i32 %i.br to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.er ; 3 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !56
  %i.eu = fmul float %i.eq, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.co, float %i.eu)
  %i.ew = fsub float %i.bf, %i.cj                 ; 3 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.eh, float %i.ev)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ek, float %i.ex)
  store float %i.ey, ptr %.0263276, align 4, !tbaa !56
  %i.ez = load float, ptr %i.el, align 4, !tbaa !56
  %i.fa = getelementptr i8, ptr %i.es, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !56
  %i.fc = fmul float %i.eq, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ez, float %i.fc)
  %i.fe = load float, ptr %i.em, align 4, !tbaa !56
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.fe, float %i.fd)
  %i.fg = load float, ptr %i.en, align 4, !tbaa !56
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.fg, float %i.ff)
  store float %i.fh, ptr %i.eo, align 4, !tbaa !56
  %i.fi = getelementptr i8, ptr %i.cn, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !56
  %i.fk = getelementptr i8, ptr %i.es, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !56
  %i.fm = fmul float %i.eq, %i.fl
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.fj, float %i.fm)
  %i.fo = getelementptr i8, ptr %i.eg, i64 8
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !56
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.fp, float %i.fn)
  %i.fr = getelementptr i8, ptr %i.ej, i64 8
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !56
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.fs, float %i.fq)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.fu = fsub float 1.000000e+00, %i.bf          ; 3 uses
  %i.fv = fsub float %i.bf, %i.ci                 ; 3 uses
  %i.fw = sext i32 %i.bx to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.fw ; 3 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !56
  %i.fz = fmul float %i.fv, %i.fy
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.co, float %i.fz)
  %i.gb = fsub float %i.ci, %i.cj                 ; 3 uses
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.eh, float %i.ga)
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ek, float %i.gc)
  store float %i.gd, ptr %.0263276, align 4, !tbaa !56
  %i.ge = load float, ptr %i.el, align 4, !tbaa !56
  %i.gf = getelementptr i8, ptr %i.fx, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !56
  %i.gh = fmul float %i.fv, %i.gg
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.ge, float %i.gh)
  %i.gj = load float, ptr %i.em, align 4, !tbaa !56
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gj, float %i.gi)
  %i.gl = load float, ptr %i.en, align 4, !tbaa !56
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.gl, float %i.gk)
  store float %i.gm, ptr %i.eo, align 4, !tbaa !56
  %i.gn = getelementptr i8, ptr %i.cn, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !56
  %i.gp = getelementptr i8, ptr %i.fx, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !56
  %i.gr = fmul float %i.fv, %i.gq
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.go, float %i.gr)
  %i.gt = getelementptr i8, ptr %i.eg, i64 8
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !56
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gu, float %i.gs)
  %i.gw = getelementptr i8, ptr %i.ej, i64 8
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !56
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.gx, float %i.gv)
  br label %bb.o

bb.j:                                             ; preds = %bb.d
  %i.gz = fcmp ogt float %i.bf, %i.cj
  br i1 %i.gz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ha = fsub float 1.000000e+00, %i.bf          ; 3 uses
  %i.hb = sext i32 %i.bm to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hb ; 3 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !56
  %i.he = fsub float %i.bf, %i.cj                 ; 3 uses
  %i.hf = sext i32 %i.bx to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hf ; 3 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !56
  %i.hi = fmul float %i.he, %i.hh
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hd, float %i.hi)
  %i.hk = fsub float %i.cj, %i.ci                 ; 3 uses
  %i.hl = sext i32 %i.cf to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hl ; 3 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !56
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.hn, float %i.hj)
  %i.hp = sext i32 %i.ch to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hp ; 3 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !56
end_hunk_0
