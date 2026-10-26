Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86_fma?download=true
inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn18GridSample_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  store i32 %i.kl, ptr %i.a, align 4, !tbaa !23
  %i.km = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !37
  %i.ko = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.kq = mul nsw i32 %i.kp, %i.kn
  store i32 %i.kq, ptr %i.b, align 4, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !39
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.jo, i32 %i.ks)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p1ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.g, ptr nonnull align 8 dereferenceable(72) %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

bb.dt:                                            ; preds = %bb.do
  br i1 %i.jd, label %bb.du, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

bb.du:                                            ; preds = %bb.dt
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !57
  switch i32 %i.ku, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread [
    i32 1, label %bb.dv
    i32 2, label %bb.dw
  ]

bb.dv:                                            ; preds = %bb.du
  call fastcc void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

bb.dw:                                            ; preds = %bb.du
  call fastcc void @_ZN4ncnnL41gridsample_nearest_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

_ZNK4ncnn3Mat5emptyEv.exit171.thread:             ; preds = %bb.ci, %bb.bu, %bb.br, %bb.bd, %bb.ap, %bb.ab, %bb.y, %bb.dk, %bb.dn, %bb.dm, %bb.dh, %bb.dj, %bb.di, %bb.dg, %bb.dl, %bb.db, %bb.de, %bb.dd, %bb.cy, %bb.da, %bb.cz, %bb.cx, %bb.dc, %bb.dt, %bb.dw, %bb.dv, %bb.dq, %bb.ds, %bb.dr, %.thread, %bb.dp, %bb.du, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit166, %_ZNK4ncnn3Mat5emptyEv.exit167, %_ZNK4ncnn3Mat5emptyEv.exit168, %_ZNK4ncnn3Mat5emptyEv.exit169, %_ZNK4ncnn3Mat5emptyEv.exit170, %_ZNK4ncnn3Mat5emptyEv.exit171, %bb.cv, %bb.ct, %bb.cf, %bb.bo, %bb.ba, %bb.am
  %.0 = phi i32 [ -100, %bb.am ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit171 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit170 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit169 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit168 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit167 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit166 ], [ -100, %bb.cv ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.ct ], [ -100, %bb.cf ], [ -100, %bb.bo ], [ -100, %bb.ba ], [ 0, %bb.du ], [ 0, %bb.dp ], [ 0, %.thread ], [ -100, %bb.bu ], [ 0, %bb.dr ], [ 0, %bb.ds ], [ 0, %bb.dq ], [ 0, %bb.dv ], [ 0, %bb.dw ], [ 0, %bb.dt ], [ 0, %bb.db ], [ 0, %bb.dk ], [ -100, %bb.y ], [ -100, %bb.ab ], [ -100, %bb.ap ], [ -100, %bb.bd ], [ -100, %bb.br ], [ 0, %bb.dc ], [ 0, %bb.cx ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.cy ], [ 0, %bb.dd ], [ 0, %bb.de ], [ 0, %bb.dl ], [ 0, %bb.dg ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dh ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ -100, %bb.ci ]
  %i.kv = load ptr, ptr %i.v, align 8, !tbaa !51  ; 2 uses
  %.not.i177 = icmp eq ptr %i.kv, null
  br i1 %.not.i177, label %_ZN4ncnn3MatD2Ev.exit173, label %bb.dx

bb.dx:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171.thread
  %i.kw = atomicrmw add ptr %i.kv, i32 -1 acq_rel, align 4
  %i.kx = icmp eq i32 %i.kw, 1
  br i1 %i.kx, label %bb.dy, label %_ZN4ncnn3MatD2Ev.exit173

bb.dy:                                            ; preds = %bb.dx
  %i.ky = load ptr, ptr %i.y, align 16, !tbaa !52 ; 3 uses
  %.not3.i178 = icmp eq ptr %i.ky, null
  %i.kz = load ptr, ptr %5, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i178, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !22
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  invoke void %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef %i.kz)
          to label %_ZN4ncnn3MatD2Ev.exit173 unwind label %bb.ec, !inline_history !48

bb.ea:                                            ; preds = %bb.dy
  %.not.i198 = icmp eq ptr %i.kz, null
  br i1 %.not.i198, label %_ZN4ncnn3MatD2Ev.exit173, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.kz) #11
  br label %_ZN4ncnn3MatD2Ev.exit173

bb.ec:                                            ; preds = %bb.dz
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit173:                         ; preds = %bb.dx, %_ZNK4ncnn3Mat5emptyEv.exit171.thread, %bb.dz, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.lf = load ptr, ptr %i.r, align 8, !tbaa !51  ; 2 uses
  %.not.i181 = icmp eq ptr %i.lf, null
  br i1 %.not.i181, label %_ZN4ncnn3MatD2Ev.exit172, label %bb.ed

bb.ed:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit173
  %i.lg = atomicrmw add ptr %i.lf, i32 -1 acq_rel, align 4
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.ee, label %_ZN4ncnn3MatD2Ev.exit172

bb.ee:                                            ; preds = %bb.ed
  %i.li = load ptr, ptr %i.s, align 8, !tbaa !52  ; 3 uses
  %.not3.i182 = icmp eq ptr %i.li, null
  %i.lj = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i182, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef %i.lj)
          to label %_ZN4ncnn3MatD2Ev.exit172 unwind label %bb.ei, !inline_history !48

bb.eg:                                            ; preds = %bb.ee
  %.not.i196 = icmp eq ptr %i.lj, null
  br i1 %.not.i196, label %_ZN4ncnn3MatD2Ev.exit172, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef nonnull %i.lj) #11
  br label %_ZN4ncnn3MatD2Ev.exit172

bb.ei:                                            ; preds = %bb.ef
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit172:                         ; preds = %bb.ed, %_ZN4ncnn3MatD2Ev.exit173, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn18GridSample_x86_fmaC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn18GridSample_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !63
  ret void
}

declare void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !77 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader424, label %_ZN4ncnn3MatD2Ev.exit259

.preheader424:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader424
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0452 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !78
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !78
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !78
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph442, label %.preheader

.preheader:                                       ; preds = %.lr.ph442, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph442 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dh, %.lr.ph442 ]
  %.1.lcssa = phi ptr [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.di, %.lr.ph442 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph449, label %._crit_edge

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.di, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.dh, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.dj, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249440, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01) ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !38
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.am = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.al, <8 x float> splat (float -1.000000e+00))
  %i.ao = fmul fast <8 x float> %i.an, splat (float 5.000000e-01) ; 2 uses
  %i.ap = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 5 uses
  %i.aq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 5 uses
  %i.ar = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00) ; 2 uses
  %i.as = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00) ; 2 uses
  %i.at = fcmp fast ogt <8 x float> %i.ap, splat (float -1.000000e+00)
  %i.au = fcmp fast ogt <8 x float> %i.ae, %i.ap
  %i.av = and <8 x i1> %i.at, %i.au               ; 2 uses
  %i.aw = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.ax = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.ay = and <8 x i1> %i.aw, %i.ax               ; 2 uses
  %i.az = fcmp fast ogt <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.al, %i.aq
  %i.bb = and <8 x i1> %i.az, %i.ba
  %i.bc = sext <8 x i1> %i.bb to <8 x i32>
  %i.bd = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.al, %i.as
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 2 uses
  %i.bg = bitcast <8 x i32> %i.bc to <8 x float>  ; 2 uses
  %i.bh = select <8 x i1> %i.av, <8 x float> %i.bg, <8 x float> zeroinitializer
  %i.bi = select <8 x i1> %i.ay, <8 x float> %i.bg, <8 x float> zeroinitializer
  %i.bj = and <8 x i1> %i.av, %i.bf
  %i.bk = and <8 x i1> %i.ay, %i.bf
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.ap)
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bq = fmul fast <8 x float> %i.bp, %i.bl      ; 3 uses
  %i.br = fadd fast <8 x float> %i.bq, %i.bp
  %i.bs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bq) ; 2 uses
  %i.bt = fadd fast <8 x float> %i.bs, %i.bp
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.bh)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bw = select <8 x i1> %i.bj, <8 x float> %i.bs, <8 x float> splat (float -1.000000e+00)
  %i.bx = select <8 x i1> %i.bk, <8 x float> %i.bt, <8 x float> splat (float -1.000000e+00)
  %i.by = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bv) ; 2 uses
  %i.ca = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bw) ; 2 uses
  %i.cb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.cc = fsub fast <8 x float> %i.ah, %i.ap      ; 2 uses
  %i.cd = fsub fast <8 x float> %i.ao, %i.aq      ; 2 uses
  %i.ce = shufflevector <8 x i32> %i.by, <8 x i32> %i.bz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cf = bitcast <8 x i32> %i.ce to <8 x float>
  %i.cg = shufflevector <8 x i32> %i.by, <8 x i32> %i.bz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ch = bitcast <8 x i32> %i.cg to <8 x float>
  %i.ci = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x float> %i.cc, <8 x float> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cn = shufflevector <8 x float> %i.cc, <8 x float> %i.cd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ce, <8 x i32> %i.ci, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>  ; 2 uses
  %i.cq = shufflevector <8 x float> %i.cm, <8 x float> %i.cf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cr = shufflevector <8 x float> %i.cj, <8 x float> %i.cm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cs = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ck, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.cu = shufflevector <8 x float> %i.cn, <8 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.cl, <8 x float> %i.cn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cp, <8 x float> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cx = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cy = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cz = shufflevector <8 x float> %i.cp, <8 x float> %i.cq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.da = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.db = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.cw, ptr %.1441, align 1, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.cx, ptr %i.dc, align 1, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.cy, ptr %i.dd, align 1, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.cz, ptr %i.de, align 1, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.da, ptr %i.df, align 1, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.db, ptr %i.dg, align 1, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.dj = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.dk = or disjoint i32 %i.dj, 15
  %i.dl = icmp slt i32 %i.dk, %i.e
  br i1 %i.dl, label %.lr.ph442, label %.preheader, !llvm.loop !68

.lr.ph449:                                        ; preds = %.preheader, %bb.h
  %.2448 = phi ptr [ %i.fu, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.ft, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.fv, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dm = load <2 x float>, ptr %.1250447, align 4, !tbaa !44
  %i.dn = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.do = sitofp <2 x i32> %i.dn to <2 x float>
  %i.dp = fmul fast <2 x float> %i.dm, splat (float 5.000000e-01)
  %i.dq = fadd fast <2 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = fmul fast <2 x float> %i.dq, %i.do
  %i.ds = fadd fast <2 x float> %i.dr, splat (float -5.000000e-01) ; 2 uses
  %i.dt = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ds)
  %i.du = fptosi <2 x float> %i.dt to <2 x i32>   ; 5 uses
  %i.dv = extractelement <2 x i32> %i.du, i64 0   ; 4 uses
  %i.dw = add nsw i32 %i.dv, 1                    ; 3 uses
  %i.dx = extractelement <2 x i32> %i.du, i64 1   ; 4 uses
  %i.dy = add nsw i32 %i.dx, 1                    ; 3 uses
  %i.dz = icmp sgt i32 %i.dv, -2
  %i.ea = extractelement <2 x i32> %i.dn, i64 0   ; 2 uses
  %i.eb = icmp slt i32 %i.dw, %i.ea
  %i.ec = and i1 %i.dz, %i.eb                     ; 2 uses
  %i.ed = icmp sgt <2 x i32> %i.du, splat (i32 -1)
  %i.ee = icmp sgt <2 x i32> %i.dn, %i.du
  %i.ef = and <2 x i1> %i.ed, %i.ee               ; 2 uses
  %i.eg = icmp sgt i32 %i.dx, -2
  %i.eh = extractelement <2 x i32> %i.dn, i64 1
  %i.ei = icmp slt i32 %i.dy, %i.eh
  %i.ej = and i1 %i.eg, %i.ei                     ; 2 uses
  %i.ek = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %i.el = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %i.em = and i1 %i.ek, %i.el
  %i.en = and i1 %i.ec, %i.el
  %i.eo = and i1 %i.ek, %i.ej
  %i.ep = and i1 %i.ec, %i.ej
  %i.eq = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.em, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.er = mul nuw nsw i32 %i.ea, %i.dx
  %i.es = add nsw i32 %i.er, %i.dv
  %i.et = load i32, ptr %i.p, align 8, !tbaa !16
  %i.eu = mul nsw i32 %i.et, %i.es
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.ev = phi i32 [ %i.eu, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.ev, ptr %.2448, align 4, !tbaa !23
  br i1 %i.en, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ew = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ex = mul nsw i32 %i.ew, %i.dx
  %i.ey = add nsw i32 %i.ex, %i.dw
  %i.ez = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fa = mul nsw i32 %i.ey, %i.ez
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fb = phi i32 [ %i.fa, %bb.c ], [ -1, %bb.b ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !23
  br i1 %i.eo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fd = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fe = mul nsw i32 %i.fd, %i.dy
  %i.ff = add nsw i32 %i.fe, %i.dv
  %i.fg = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fh = mul nsw i32 %i.ff, %i.fg
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fi = phi i32 [ %i.fh, %bb.e ], [ -1, %bb.d ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !23
  br i1 %i.ep, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fk = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fl = mul nsw i32 %i.fk, %i.dy
  %i.fm = add nsw i32 %i.fl, %i.dw
  %i.fn = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fo = mul nsw i32 %i.fm, %i.fn
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.fp = phi i32 [ %i.fo, %bb.g ], [ -1, %bb.f ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !23
  %i.fr = sitofp <2 x i32> %i.du to <2 x float>
  %i.fs = fsub fast <2 x float> %i.ds, %i.fr
  store <2 x float> %i.fs, ptr %i.eq, align 4, !tbaa !44
  %i.ft = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.fv = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.fw = icmp slt i32 %i.fv, %i.e
  br i1 %i.fw, label %.lr.ph449, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fu, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fx = load i32, ptr %i.h, align 8, !tbaa !17
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next, %i.fy
  br i1 %i.fz, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !70

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.ga = load ptr, ptr %1, align 8, !tbaa !20, !noalias !79 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !19, !noalias !80
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !18, !noalias !80
  %i.gf = mul i64 %i.ge, %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gf ; 2 uses
  %i.gh = icmp sgt i32 %i.e, 7
end_hunk_0
begin_hunk_1_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.ix = bitcast <8 x i32> %i.iw to <8 x float>
  %i.iy = shufflevector <8 x i32> %i.iq, <8 x i32> %i.ir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = shufflevector <8 x i32> %i.iq, <8 x i32> %i.ir, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = shufflevector <8 x float> %i.is, <8 x float> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jd = shufflevector <8 x float> %i.is, <8 x float> %i.it, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.je = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jf = bitcast <8 x i32> %i.je to <8 x float>  ; 2 uses
  %i.jg = shufflevector <8 x float> %i.jc, <8 x float> %i.iv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jh = shufflevector <8 x float> %i.iz, <8 x float> %i.jc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.iw, <8 x i32> %i.ja, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jj = bitcast <8 x i32> %i.ji to <8 x float>  ; 2 uses
  %i.jk = shufflevector <8 x float> %i.jd, <8 x float> %i.ix, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jl = shufflevector <8 x float> %i.jb, <8 x float> %i.jd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jm = shufflevector <8 x float> %i.jf, <8 x float> %i.jg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jn = shufflevector <8 x float> %i.jh, <8 x float> %i.jj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jo = shufflevector <8 x float> %i.jk, <8 x float> %i.jl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jp = shufflevector <8 x float> %i.jf, <8 x float> %i.jg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jq = shufflevector <8 x float> %i.jh, <8 x float> %i.jj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jr = shufflevector <8 x float> %i.jk, <8 x float> %i.jl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.jm, ptr %.3430, align 1, !tbaa !41
  %i.js = getelementptr inbounds nuw i8, ptr %.3430, i64 32
  store <8 x float> %i.jn, ptr %i.js, align 1, !tbaa !41
  %i.jt = getelementptr inbounds nuw i8, ptr %.3430, i64 64
  store <8 x float> %i.jo, ptr %i.jt, align 1, !tbaa !41
  %i.ju = getelementptr inbounds nuw i8, ptr %.3430, i64 96
  store <8 x float> %i.jp, ptr %i.ju, align 1, !tbaa !41
  %i.jv = getelementptr inbounds nuw i8, ptr %.3430, i64 128
  store <8 x float> %i.jq, ptr %i.jv, align 1, !tbaa !41
  %i.jw = getelementptr inbounds nuw i8, ptr %.3430, i64 160
  store <8 x float> %i.jr, ptr %i.jw, align 1, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %.0257427, i64 32 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0255428, i64 32 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.3430, i64 192 ; 2 uses
  %i.ka = add nuw nsw i32 %.0253429, 8            ; 2 uses
  %i.kb = or disjoint i32 %i.ka, 7
  %i.kc = icmp slt i32 %i.kb, %i.e
  br i1 %i.kc, label %bb.i, label %.preheader425.loopexit, !llvm.loop !75

bb.j:                                             ; preds = %.lr.ph438, %bb.r
  %.4437 = phi ptr [ %.3.lcssa, %.lr.ph438 ], [ %i.mp, %bb.r ] ; 6 uses
  %.1254436 = phi i32 [ %.0253.lcssa, %.lr.ph438 ], [ %i.mq, %bb.r ]
  %.1256435 = phi ptr [ %.0255.lcssa, %.lr.ph438 ], [ %i.mo, %bb.r ] ; 2 uses
  %.1258434 = phi ptr [ %.0257.lcssa, %.lr.ph438 ], [ %i.mn, %bb.r ] ; 2 uses
  %i.kd = load float, ptr %.1258434, align 4, !tbaa !44
  %i.ke = load float, ptr %.1256435, align 4, !tbaa !44
  %i.kf = load <2 x i32>, ptr %i.gn, align 4, !tbaa !23 ; 4 uses
  %i.kg = sitofp <2 x i32> %i.kf to <2 x float>
  %i.kh = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.ki = insertelement <2 x float> %i.kh, float %i.ke, i64 1
  %i.kj = fmul fast <2 x float> %i.ki, splat (float 5.000000e-01)
  %i.kk = fadd fast <2 x float> %i.kj, splat (float 5.000000e-01)
  %i.kl = fmul fast <2 x float> %i.kk, %i.kg
  %i.km = fadd fast <2 x float> %i.kl, splat (float -5.000000e-01) ; 2 uses
  %i.kn = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.km)
  %i.ko = fptosi <2 x float> %i.kn to <2 x i32>   ; 5 uses
  %i.kp = extractelement <2 x i32> %i.ko, i64 0   ; 4 uses
  %i.kq = add nsw i32 %i.kp, 1                    ; 3 uses
  %i.kr = extractelement <2 x i32> %i.ko, i64 1   ; 4 uses
  %i.ks = add nsw i32 %i.kr, 1                    ; 3 uses
  %i.kt = icmp sgt i32 %i.kp, -2
  %i.ku = extractelement <2 x i32> %i.kf, i64 0   ; 2 uses
  %i.kv = icmp slt i32 %i.kq, %i.ku
  %i.kw = and i1 %i.kt, %i.kv                     ; 2 uses
  %i.kx = icmp sgt <2 x i32> %i.ko, splat (i32 -1)
  %i.ky = icmp sgt <2 x i32> %i.kf, %i.ko
  %i.kz = and <2 x i1> %i.kx, %i.ky               ; 2 uses
  %i.la = icmp sgt i32 %i.kr, -2
  %i.lb = extractelement <2 x i32> %i.kf, i64 1
  %i.lc = icmp slt i32 %i.ks, %i.lb
  %i.ld = and i1 %i.la, %i.lc                     ; 2 uses
  %i.le = extractelement <2 x i1> %i.kz, i64 0    ; 2 uses
  %i.lf = extractelement <2 x i1> %i.kz, i64 1    ; 2 uses
  %i.lg = and i1 %i.le, %i.lf
  %i.lh = and i1 %i.kw, %i.lf
  %i.li = and i1 %i.le, %i.ld
  %i.lj = and i1 %i.kw, %i.ld
  %i.lk = getelementptr inbounds nuw i8, ptr %.4437, i64 16
  br i1 %i.lg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ll = mul nuw nsw i32 %i.ku, %i.kr
  %i.lm = add nsw i32 %i.ll, %i.kp
  %i.ln = load i32, ptr %i.go, align 8, !tbaa !16
  %i.lo = mul nsw i32 %i.ln, %i.lm
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lp = phi i32 [ %i.lo, %bb.k ], [ -1, %bb.j ]
  store i32 %i.lp, ptr %.4437, align 4, !tbaa !23
  br i1 %i.lh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lq = load i32, ptr %i.gn, align 4, !tbaa !37
  %i.lr = mul nsw i32 %i.lq, %i.kr
  %i.ls = add nsw i32 %i.lr, %i.kq
  %i.lt = load i32, ptr %i.go, align 8, !tbaa !16
  %i.lu = mul nsw i32 %i.ls, %i.lt
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lv = phi i32 [ %i.lu, %bb.m ], [ -1, %bb.l ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.4437, i64 4
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !23
  br i1 %i.li, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lx = load i32, ptr %i.gn, align 4, !tbaa !37
  %i.ly = mul nsw i32 %i.lx, %i.ks
  %i.lz = add nsw i32 %i.ly, %i.kp
  %i.ma = load i32, ptr %i.go, align 8, !tbaa !16
  %i.mb = mul nsw i32 %i.lz, %i.ma
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mc = phi i32 [ %i.mb, %bb.o ], [ -1, %bb.n ]
  %i.md = getelementptr inbounds nuw i8, ptr %.4437, i64 8
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !23
  br i1 %i.lj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.me = load i32, ptr %i.gn, align 4, !tbaa !37
  %i.mf = mul nsw i32 %i.me, %i.ks
  %i.mg = add nsw i32 %i.mf, %i.kq
  %i.mh = load i32, ptr %i.go, align 8, !tbaa !16
  %i.mi = mul nsw i32 %i.mg, %i.mh
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.mj = phi i32 [ %i.mi, %bb.q ], [ -1, %bb.p ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.4437, i64 12
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !23
  %i.ml = sitofp <2 x i32> %i.ko to <2 x float>
  %i.mm = fsub fast <2 x float> %i.km, %i.ml
  store <2 x float> %i.mm, ptr %i.lk, align 4, !tbaa !44
  %i.mn = getelementptr inbounds nuw i8, ptr %.1258434, i64 4
  %i.mo = getelementptr inbounds nuw i8, ptr %.1256435, i64 4
  %i.mp = getelementptr inbounds nuw i8, ptr %.4437, i64 24
  %i.mq = add nuw nsw i32 %.1254436, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mq, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !76

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader425, %.preheader424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !94 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader424, label %_ZN4ncnn3MatD2Ev.exit259

.preheader424:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader424
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0452 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !95
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !95
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !95
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph442, label %.preheader

.preheader:                                       ; preds = %.lr.ph442, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph442 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dj, %.lr.ph442 ]
  %.1.lcssa = phi ptr [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dk, %.lr.ph442 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph449, label %._crit_edge

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.dk, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.dj, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.dl, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249440, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00) ; 2 uses
  %i.au = fadd fast <8 x float> %i.as, splat (float 1.000000e+00) ; 2 uses
  %i.av = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.aw = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.ax = and <8 x i1> %i.av, %i.aw               ; 2 uses
  %i.ay = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.az = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.ba = and <8 x i1> %i.ay, %i.az               ; 2 uses
  %i.bb = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bc = fcmp fast ogt <8 x float> %i.am, %i.as
  %i.bd = and <8 x i1> %i.bb, %i.bc
  %i.be = sext <8 x i1> %i.bd to <8 x i32>
  %i.bf = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.am, %i.au
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 2 uses
  %i.bi = bitcast <8 x i32> %i.be to <8 x float>  ; 2 uses
  %i.bj = select <8 x i1> %i.ax, <8 x float> %i.bi, <8 x float> zeroinitializer
  %i.bk = select <8 x i1> %i.ba, <8 x float> %i.bi, <8 x float> zeroinitializer
  %i.bl = and <8 x i1> %i.ax, %i.bh
  %i.bm = and <8 x i1> %i.ba, %i.bh
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.ar)
  %i.bo = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = insertelement <8 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bs = fmul fast <8 x float> %i.br, %i.bn      ; 3 uses
  %i.bt = fadd fast <8 x float> %i.bs, %i.br
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.bs) ; 2 uses
  %i.bv = fadd fast <8 x float> %i.bu, %i.br
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.bk)
  %i.by = select <8 x i1> %i.bl, <8 x float> %i.bu, <8 x float> splat (float -1.000000e+00)
  %i.bz = select <8 x i1> %i.bm, <8 x float> %i.bv, <8 x float> splat (float -1.000000e+00)
  %i.ca = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bw) ; 2 uses
  %i.cb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.cd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.ce = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.cf = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ch = bitcast <8 x i32> %i.cg to <8 x float>
  %i.ci = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x float> %i.ce, <8 x float> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = shufflevector <8 x float> %i.ce, <8 x float> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cq = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ck, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>  ; 2 uses
  %i.cs = shufflevector <8 x float> %i.co, <8 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ct = shufflevector <8 x float> %i.cl, <8 x float> %i.co, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cu = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>  ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cp, <8 x float> %i.cj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cr, <8 x float> %i.cs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cz = shufflevector <8 x float> %i.ct, <8 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.da = shufflevector <8 x float> %i.cw, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.db = shufflevector <8 x float> %i.cr, <8 x float> %i.cs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dc = shufflevector <8 x float> %i.ct, <8 x float> %i.cv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dd = shufflevector <8 x float> %i.cw, <8 x float> %i.cx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.cy, ptr %.1441, align 1, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.cz, ptr %i.de, align 1, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.da, ptr %i.df, align 1, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.db, ptr %i.dg, align 1, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.dc, ptr %i.dh, align 1, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.dl = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.dm = or disjoint i32 %i.dl, 15
  %i.dn = icmp slt i32 %i.dm, %i.e
  br i1 %i.dn, label %.lr.ph442, label %.preheader, !llvm.loop !85

.lr.ph449:                                        ; preds = %.preheader, %bb.h
  %.2448 = phi ptr [ %i.fw, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.fv, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.fx, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.do = load <2 x float>, ptr %.1250447, align 4, !tbaa !44
  %i.dp = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.dq = fmul fast <2 x float> %i.do, splat (float 5.000000e-01)
  %i.dr = fadd fast <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.ds = add nsw <2 x i32> %i.dp, splat (i32 -1)
  %i.dt = sitofp <2 x i32> %i.ds to <2 x float>
  %i.du = fmul fast <2 x float> %i.dr, %i.dt      ; 2 uses
  %i.dv = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.du)
  %i.dw = fptosi <2 x float> %i.dv to <2 x i32>   ; 5 uses
  %i.dx = extractelement <2 x i32> %i.dw, i64 0   ; 4 uses
  %i.dy = add nsw i32 %i.dx, 1                    ; 3 uses
  %i.dz = extractelement <2 x i32> %i.dw, i64 1   ; 4 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 3 uses
  %i.eb = icmp sgt i32 %i.dx, -2
  %i.ec = extractelement <2 x i32> %i.dp, i64 0   ; 2 uses
  %i.ed = icmp slt i32 %i.dy, %i.ec
  %i.ee = and i1 %i.eb, %i.ed                     ; 2 uses
  %i.ef = icmp sgt <2 x i32> %i.dw, splat (i32 -1)
  %i.eg = icmp sgt <2 x i32> %i.dp, %i.dw
  %i.eh = and <2 x i1> %i.ef, %i.eg               ; 2 uses
  %i.ei = icmp sgt i32 %i.dz, -2
  %i.ej = extractelement <2 x i32> %i.dp, i64 1
  %i.ek = icmp slt i32 %i.ea, %i.ej
  %i.el = and i1 %i.ei, %i.ek                     ; 2 uses
  %i.em = extractelement <2 x i1> %i.eh, i64 0    ; 2 uses
  %i.en = extractelement <2 x i1> %i.eh, i64 1    ; 2 uses
  %i.eo = and i1 %i.em, %i.en
  %i.ep = and i1 %i.ee, %i.en
  %i.eq = and i1 %i.em, %i.el
  %i.er = and i1 %i.ee, %i.el
  %i.es = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.eo, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.et = mul nuw nsw i32 %i.ec, %i.dz
  %i.eu = add nsw i32 %i.et, %i.dx
  %i.ev = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ew = mul nsw i32 %i.ev, %i.eu
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.ex = phi i32 [ %i.ew, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.ex, ptr %.2448, align 4, !tbaa !23
  br i1 %i.ep, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ey = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ez = mul nsw i32 %i.ey, %i.dz
  %i.fa = add nsw i32 %i.ez, %i.dy
  %i.fb = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fc = mul nsw i32 %i.fa, %i.fb
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fd = phi i32 [ %i.fc, %bb.c ], [ -1, %bb.b ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !23
  br i1 %i.eq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ff = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fg = mul nsw i32 %i.ff, %i.ea
  %i.fh = add nsw i32 %i.fg, %i.dx
  %i.fi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fj = mul nsw i32 %i.fh, %i.fi
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fk = phi i32 [ %i.fj, %bb.e ], [ -1, %bb.d ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !23
  br i1 %i.er, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fm = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fn = mul nsw i32 %i.fm, %i.ea
  %i.fo = add nsw i32 %i.fn, %i.dy
  %i.fp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fq = mul nsw i32 %i.fo, %i.fp
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.fr = phi i32 [ %i.fq, %bb.g ], [ -1, %bb.f ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !23
  %i.ft = sitofp <2 x i32> %i.dw to <2 x float>
  %i.fu = fsub fast <2 x float> %i.du, %i.ft
  store <2 x float> %i.fu, ptr %i.es, align 4, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.fx = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.fy = icmp slt i32 %i.fx, %i.e
  br i1 %i.fy, label %.lr.ph449, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fw, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = load i32, ptr %i.h, align 8, !tbaa !17
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %indvars.iv.next, %i.ga
  br i1 %i.gb, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !87

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.gc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !96 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !19, !noalias !97
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !18, !noalias !97
  %i.gh = mul i64 %i.gg, %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gh ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jd = bitcast <8 x i32> %i.jc to <8 x float>
  %i.je = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jf = bitcast <8 x i32> %i.je to <8 x float>
  %i.jg = shufflevector <8 x float> %i.iw, <8 x float> %i.ix, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jh = shufflevector <8 x float> %i.iw, <8 x float> %i.ix, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.iy, <8 x i32> %i.jc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jj = bitcast <8 x i32> %i.ji to <8 x float>  ; 2 uses
  %i.jk = shufflevector <8 x float> %i.jg, <8 x float> %i.iz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jl = shufflevector <8 x float> %i.jd, <8 x float> %i.jg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jm = shufflevector <8 x i32> %i.ja, <8 x i32> %i.je, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jn = bitcast <8 x i32> %i.jm to <8 x float>  ; 2 uses
  %i.jo = shufflevector <8 x float> %i.jh, <8 x float> %i.jb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jp = shufflevector <8 x float> %i.jf, <8 x float> %i.jh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jq = shufflevector <8 x float> %i.jj, <8 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jr = shufflevector <8 x float> %i.jl, <8 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.js = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jt = shufflevector <8 x float> %i.jj, <8 x float> %i.jk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ju = shufflevector <8 x float> %i.jl, <8 x float> %i.jn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jv = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.jq, ptr %.3430, align 1, !tbaa !41
  %i.jw = getelementptr inbounds nuw i8, ptr %.3430, i64 32
  store <8 x float> %i.jr, ptr %i.jw, align 1, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %.3430, i64 64
  store <8 x float> %i.js, ptr %i.jx, align 1, !tbaa !41
  %i.jy = getelementptr inbounds nuw i8, ptr %.3430, i64 96
  store <8 x float> %i.jt, ptr %i.jy, align 1, !tbaa !41
  %i.jz = getelementptr inbounds nuw i8, ptr %.3430, i64 128
  store <8 x float> %i.ju, ptr %i.jz, align 1, !tbaa !41
  %i.ka = getelementptr inbounds nuw i8, ptr %.3430, i64 160
  store <8 x float> %i.jv, ptr %i.ka, align 1, !tbaa !41
  %i.kb = getelementptr inbounds nuw i8, ptr %.0257427, i64 32 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0255428, i64 32 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.3430, i64 192 ; 2 uses
  %i.ke = add nuw nsw i32 %.0253429, 8            ; 2 uses
  %i.kf = or disjoint i32 %i.ke, 7
  %i.kg = icmp slt i32 %i.kf, %i.e
  br i1 %i.kg, label %bb.i, label %.preheader425.loopexit, !llvm.loop !92

bb.j:                                             ; preds = %.lr.ph438, %bb.r
  %.4437 = phi ptr [ %.3.lcssa, %.lr.ph438 ], [ %i.mt, %bb.r ] ; 6 uses
  %.1254436 = phi i32 [ %.0253.lcssa, %.lr.ph438 ], [ %i.mu, %bb.r ]
  %.1256435 = phi ptr [ %.0255.lcssa, %.lr.ph438 ], [ %i.ms, %bb.r ] ; 2 uses
  %.1258434 = phi ptr [ %.0257.lcssa, %.lr.ph438 ], [ %i.mr, %bb.r ] ; 2 uses
  %i.kh = load float, ptr %.1258434, align 4, !tbaa !44
  %i.ki = load float, ptr %.1256435, align 4, !tbaa !44
  %i.kj = load <2 x i32>, ptr %i.gp, align 4, !tbaa !23 ; 4 uses
  %i.kk = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.ki, i64 1
  %i.km = fmul fast <2 x float> %i.kl, splat (float 5.000000e-01)
  %i.kn = fadd fast <2 x float> %i.km, splat (float 5.000000e-01)
  %i.ko = add nsw <2 x i32> %i.kj, splat (i32 -1)
  %i.kp = sitofp <2 x i32> %i.ko to <2 x float>
  %i.kq = fmul fast <2 x float> %i.kn, %i.kp      ; 2 uses
  %i.kr = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.kq)
  %i.ks = fptosi <2 x float> %i.kr to <2 x i32>   ; 5 uses
  %i.kt = extractelement <2 x i32> %i.ks, i64 0   ; 4 uses
  %i.ku = add nsw i32 %i.kt, 1                    ; 3 uses
  %i.kv = extractelement <2 x i32> %i.ks, i64 1   ; 4 uses
  %i.kw = add nsw i32 %i.kv, 1                    ; 3 uses
  %i.kx = icmp sgt i32 %i.kt, -2
  %i.ky = extractelement <2 x i32> %i.kj, i64 0   ; 2 uses
  %i.kz = icmp slt i32 %i.ku, %i.ky
  %i.la = and i1 %i.kx, %i.kz                     ; 2 uses
  %i.lb = icmp sgt <2 x i32> %i.ks, splat (i32 -1)
  %i.lc = icmp sgt <2 x i32> %i.kj, %i.ks
  %i.ld = and <2 x i1> %i.lb, %i.lc               ; 2 uses
  %i.le = icmp sgt i32 %i.kv, -2
  %i.lf = extractelement <2 x i32> %i.kj, i64 1
  %i.lg = icmp slt i32 %i.kw, %i.lf
  %i.lh = and i1 %i.le, %i.lg                     ; 2 uses
  %i.li = extractelement <2 x i1> %i.ld, i64 0    ; 2 uses
  %i.lj = extractelement <2 x i1> %i.ld, i64 1    ; 2 uses
  %i.lk = and i1 %i.li, %i.lj
  %i.ll = and i1 %i.la, %i.lj
  %i.lm = and i1 %i.li, %i.lh
  %i.ln = and i1 %i.la, %i.lh
  %i.lo = getelementptr inbounds nuw i8, ptr %.4437, i64 16
  br i1 %i.lk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lp = mul nuw nsw i32 %i.ky, %i.kv
  %i.lq = add nsw i32 %i.lp, %i.kt
  %i.lr = load i32, ptr %i.gq, align 8, !tbaa !16
  %i.ls = mul nsw i32 %i.lr, %i.lq
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lt = phi i32 [ %i.ls, %bb.k ], [ -1, %bb.j ]
  store i32 %i.lt, ptr %.4437, align 4, !tbaa !23
  br i1 %i.ll, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lu = load i32, ptr %i.gp, align 4, !tbaa !37
  %i.lv = mul nsw i32 %i.lu, %i.kv
  %i.lw = add nsw i32 %i.lv, %i.ku
  %i.lx = load i32, ptr %i.gq, align 8, !tbaa !16
  %i.ly = mul nsw i32 %i.lw, %i.lx
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lz = phi i32 [ %i.ly, %bb.m ], [ -1, %bb.l ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.4437, i64 4
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !23
  br i1 %i.lm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mb = load i32, ptr %i.gp, align 4, !tbaa !37
  %i.mc = mul nsw i32 %i.mb, %i.kw
  %i.md = add nsw i32 %i.mc, %i.kt
  %i.me = load i32, ptr %i.gq, align 8, !tbaa !16
  %i.mf = mul nsw i32 %i.md, %i.me
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mg = phi i32 [ %i.mf, %bb.o ], [ -1, %bb.n ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.4437, i64 8
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !23
  br i1 %i.ln, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mi = load i32, ptr %i.gp, align 4, !tbaa !37
  %i.mj = mul nsw i32 %i.mi, %i.kw
  %i.mk = add nsw i32 %i.mj, %i.ku
  %i.ml = load i32, ptr %i.gq, align 8, !tbaa !16
  %i.mm = mul nsw i32 %i.mk, %i.ml
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.mn = phi i32 [ %i.mm, %bb.q ], [ -1, %bb.p ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.4437, i64 12
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !23
  %i.mp = sitofp <2 x i32> %i.ks to <2 x float>
  %i.mq = fsub fast <2 x float> %i.kq, %i.mp
  store <2 x float> %i.mq, ptr %i.lo, align 4, !tbaa !44
  %i.mr = getelementptr inbounds nuw i8, ptr %.1258434, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %.1256435, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %.4437, i64 24
  %i.mu = add nuw nsw i32 %.1254436, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mu, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !93

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader425, %.preheader424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !111 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !112
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !112
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !112
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dn, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.do, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.do, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dn, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dp, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.aj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> zeroinitializer)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.aj) ; 2 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !38
  %i.am = sitofp fast i32 %i.al to float
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ap = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> splat (float -1.000000e+00))
  %i.ar = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ao, splat (float -1.000000e+00)
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.at) ; 2 uses
  %i.av = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ak, i32 1) ; 5 uses
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 5 uses
  %i.ax = fadd fast <8 x float> %i.av, splat (float 1.000000e+00) ; 2 uses
  %i.ay = fadd fast <8 x float> %i.aw, splat (float 1.000000e+00) ; 2 uses
  %i.az = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.av
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 2 uses
  %i.bc = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ae, %i.ax
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 2 uses
  %i.bf = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ao, %i.aw
  %i.bh = and <8 x i1> %i.bf, %i.bg
  %i.bi = sext <8 x i1> %i.bh to <8 x i32>
  %i.bj = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.ao, %i.ay
  %i.bl = and <8 x i1> %i.bj, %i.bk               ; 2 uses
  %i.bm = bitcast <8 x i32> %i.bi to <8 x float>  ; 2 uses
  %i.bn = select <8 x i1> %i.bb, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bo = select <8 x i1> %i.be, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bp = and <8 x i1> %i.bb, %i.bl
  %i.bq = and <8 x i1> %i.be, %i.bl
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.av)
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bt = sitofp fast i32 %i.bs to float
  %i.bu = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bw = fmul fast <8 x float> %i.bv, %i.br      ; 3 uses
  %i.bx = fadd fast <8 x float> %i.bw, %i.bv
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.bw) ; 2 uses
  %i.bz = fadd fast <8 x float> %i.by, %i.bv
  %i.ca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bn)
  %i.cb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.bo)
  %i.cc = select <8 x i1> %i.bp, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.cd = select <8 x i1> %i.bq, <8 x float> %i.bz, <8 x float> splat (float -1.000000e+00)
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb) ; 2 uses
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cd) ; 2 uses
  %i.ci = fsub fast <8 x float> %i.ak, %i.av      ; 2 uses
  %i.cj = fsub fast <8 x float> %i.au, %i.aw      ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>  ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cs, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cp, <8 x float> %i.cs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.ct, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.de = shufflevector <8 x float> %i.da, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dh = shufflevector <8 x float> %i.da, <8 x float> %i.db, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dc, ptr %.1447, align 1, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.de, ptr %i.dj, align 1, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dg, ptr %i.dl, align 1, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dp = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 15
  %i.dr = icmp slt i32 %i.dq, %i.e
  br i1 %i.dr, label %.lr.ph448, label %.preheader, !llvm.loop !102

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gd, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gc, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.ge, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ds = load <2 x float>, ptr %.1250453, align 4, !tbaa !44
  %i.dt = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.du = sitofp <2 x i32> %i.dt to <2 x float>   ; 2 uses
  %i.dv = fmul fast <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.dw = fadd fast <2 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = fmul fast <2 x float> %i.dw, %i.du
  %i.dy = fadd fast <2 x float> %i.dx, splat (float -5.000000e-01)
  %i.dz = fadd fast <2 x float> %i.du, splat (float -1.000000e+00)
  %i.ea = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dy, <2 x float> zeroinitializer)
  %i.eb = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ea, <2 x float> %i.dz) ; 2 uses
  %i.ec = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.eb)
  %i.ed = fptosi <2 x float> %i.ec to <2 x i32>   ; 5 uses
  %i.ee = extractelement <2 x i32> %i.ed, i64 0   ; 4 uses
  %i.ef = add nsw i32 %i.ee, 1                    ; 3 uses
  %i.eg = extractelement <2 x i32> %i.ed, i64 1   ; 4 uses
  %i.eh = add nsw i32 %i.eg, 1                    ; 3 uses
  %i.ei = icmp sgt i32 %i.ee, -2
  %i.ej = extractelement <2 x i32> %i.dt, i64 0   ; 2 uses
  %i.ek = icmp slt i32 %i.ef, %i.ej
  %i.el = and i1 %i.ei, %i.ek                     ; 2 uses
  %i.em = icmp sgt <2 x i32> %i.ed, splat (i32 -1)
  %i.en = icmp sgt <2 x i32> %i.dt, %i.ed
  %i.eo = and <2 x i1> %i.em, %i.en               ; 2 uses
  %i.ep = icmp sgt i32 %i.eg, -2
  %i.eq = extractelement <2 x i32> %i.dt, i64 1
  %i.er = icmp slt i32 %i.eh, %i.eq
  %i.es = and i1 %i.ep, %i.er                     ; 2 uses
  %i.et = extractelement <2 x i1> %i.eo, i64 0    ; 2 uses
  %i.eu = extractelement <2 x i1> %i.eo, i64 1    ; 2 uses
  %i.ev = and i1 %i.et, %i.eu
  %i.ew = and i1 %i.el, %i.eu
  %i.ex = and i1 %i.et, %i.es
  %i.ey = and i1 %i.el, %i.es
  %i.ez = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.ev, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fa = mul nuw nsw i32 %i.ej, %i.eg
  %i.fb = add nsw i32 %i.fa, %i.ee
  %i.fc = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fd = mul nsw i32 %i.fc, %i.fb
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fe = phi i32 [ %i.fd, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fe, ptr %.2454, align 4, !tbaa !23
  br i1 %i.ew, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ff = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fg = mul nsw i32 %i.ff, %i.eg
  %i.fh = add nsw i32 %i.fg, %i.ef
  %i.fi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fj = mul nsw i32 %i.fh, %i.fi
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fk = phi i32 [ %i.fj, %bb.c ], [ -1, %bb.b ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !23
  br i1 %i.ex, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fm = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fn = mul nsw i32 %i.fm, %i.eh
  %i.fo = add nsw i32 %i.fn, %i.ee
  %i.fp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fq = mul nsw i32 %i.fo, %i.fp
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fr = phi i32 [ %i.fq, %bb.e ], [ -1, %bb.d ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !23
  br i1 %i.ey, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ft = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fu = mul nsw i32 %i.ft, %i.eh
  %i.fv = add nsw i32 %i.fu, %i.ef
  %i.fw = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fx = mul nsw i32 %i.fv, %i.fw
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.fy = phi i32 [ %i.fx, %bb.g ], [ -1, %bb.f ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !23
  %i.ga = sitofp <2 x i32> %i.ed to <2 x float>
  %i.gb = fsub fast <2 x float> %i.eb, %i.ga
  store <2 x float> %i.gb, ptr %i.ez, align 4, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.ge = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gf = icmp slt i32 %i.ge, %i.e
  br i1 %i.gf, label %.lr.ph455, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gd, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gg = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next, %i.gh
  br i1 %i.gi, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !104

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.gj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !113 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_2
begin_hunk_3_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jp = shufflevector <8 x i32> %i.jf, <8 x i32> %i.jg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jq = bitcast <8 x i32> %i.jp to <8 x float>
  %i.jr = shufflevector <8 x float> %i.jh, <8 x float> %i.ji, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.js = shufflevector <8 x float> %i.jh, <8 x float> %i.ji, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jt = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ju = bitcast <8 x i32> %i.jt to <8 x float>  ; 2 uses
  %i.jv = shufflevector <8 x float> %i.jr, <8 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jw = shufflevector <8 x float> %i.jo, <8 x float> %i.jr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jx = shufflevector <8 x i32> %i.jl, <8 x i32> %i.jp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jy = bitcast <8 x i32> %i.jx to <8 x float>  ; 2 uses
  %i.jz = shufflevector <8 x float> %i.js, <8 x float> %i.jm, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ka = shufflevector <8 x float> %i.jq, <8 x float> %i.js, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kb = shufflevector <8 x float> %i.ju, <8 x float> %i.jv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kc = shufflevector <8 x float> %i.jw, <8 x float> %i.jy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kd = shufflevector <8 x float> %i.jz, <8 x float> %i.ka, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ke = shufflevector <8 x float> %i.ju, <8 x float> %i.jv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kf = shufflevector <8 x float> %i.jw, <8 x float> %i.jy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kg = shufflevector <8 x float> %i.jz, <8 x float> %i.ka, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kb, ptr %.3436, align 1, !tbaa !41
  %i.kh = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kc, ptr %i.kh, align 1, !tbaa !41
  %i.ki = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.kd, ptr %i.ki, align 1, !tbaa !41
  %i.kj = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.ke, ptr %i.kj, align 1, !tbaa !41
  %i.kk = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kf, ptr %i.kk, align 1, !tbaa !41
  %i.kl = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kg, ptr %i.kl, align 1, !tbaa !41
  %i.km = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.kp = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.kq = or disjoint i32 %i.kp, 7
  %i.kr = icmp slt i32 %i.kq, %i.e
  br i1 %i.kr, label %bb.i, label %.preheader431.loopexit, !llvm.loop !109

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.nh, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.ni, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.ng, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nf, %bb.r ] ; 2 uses
  %i.ks = load float, ptr %.1258440, align 4, !tbaa !44
  %i.kt = load float, ptr %.1256441, align 4, !tbaa !44
  %i.ku = load <2 x i32>, ptr %i.gw, align 4, !tbaa !23 ; 4 uses
  %i.kv = sitofp <2 x i32> %i.ku to <2 x float>   ; 2 uses
  %i.kw = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.kt, i64 1
  %i.ky = fmul fast <2 x float> %i.kx, splat (float 5.000000e-01)
  %i.kz = fadd fast <2 x float> %i.ky, splat (float 5.000000e-01)
  %i.la = fmul fast <2 x float> %i.kz, %i.kv
  %i.lb = fadd fast <2 x float> %i.la, splat (float -5.000000e-01)
  %i.lc = fadd fast <2 x float> %i.kv, splat (float -1.000000e+00)
  %i.ld = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lb, <2 x float> zeroinitializer)
  %i.le = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ld, <2 x float> %i.lc) ; 2 uses
  %i.lf = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.le)
  %i.lg = fptosi <2 x float> %i.lf to <2 x i32>   ; 5 uses
  %i.lh = extractelement <2 x i32> %i.lg, i64 0   ; 4 uses
  %i.li = add nsw i32 %i.lh, 1                    ; 3 uses
  %i.lj = extractelement <2 x i32> %i.lg, i64 1   ; 4 uses
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  %i.ll = icmp sgt i32 %i.lh, -2
  %i.lm = extractelement <2 x i32> %i.ku, i64 0   ; 2 uses
  %i.ln = icmp slt i32 %i.li, %i.lm
  %i.lo = and i1 %i.ll, %i.ln                     ; 2 uses
  %i.lp = icmp sgt <2 x i32> %i.lg, splat (i32 -1)
  %i.lq = icmp sgt <2 x i32> %i.ku, %i.lg
  %i.lr = and <2 x i1> %i.lp, %i.lq               ; 2 uses
  %i.ls = icmp sgt i32 %i.lj, -2
  %i.lt = extractelement <2 x i32> %i.ku, i64 1
  %i.lu = icmp slt i32 %i.lk, %i.lt
  %i.lv = and i1 %i.ls, %i.lu                     ; 2 uses
  %i.lw = extractelement <2 x i1> %i.lr, i64 0    ; 2 uses
  %i.lx = extractelement <2 x i1> %i.lr, i64 1    ; 2 uses
  %i.ly = and i1 %i.lw, %i.lx
  %i.lz = and i1 %i.lo, %i.lx
  %i.ma = and i1 %i.lw, %i.lv
  %i.mb = and i1 %i.lo, %i.lv
  %i.mc = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.ly, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.md = mul nuw nsw i32 %i.lm, %i.lj
  %i.me = add nsw i32 %i.md, %i.lh
  %i.mf = load i32, ptr %i.gx, align 8, !tbaa !16
  %i.mg = mul nsw i32 %i.mf, %i.me
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mh = phi i32 [ %i.mg, %bb.k ], [ -1, %bb.j ]
  store i32 %i.mh, ptr %.4443, align 4, !tbaa !23
  br i1 %i.lz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mi = load i32, ptr %i.gw, align 4, !tbaa !37
  %i.mj = mul nsw i32 %i.mi, %i.lj
  %i.mk = add nsw i32 %i.mj, %i.li
  %i.ml = load i32, ptr %i.gx, align 8, !tbaa !16
  %i.mm = mul nsw i32 %i.mk, %i.ml
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mn = phi i32 [ %i.mm, %bb.m ], [ -1, %bb.l ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !23
  br i1 %i.ma, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mp = load i32, ptr %i.gw, align 4, !tbaa !37
  %i.mq = mul nsw i32 %i.mp, %i.lk
  %i.mr = add nsw i32 %i.mq, %i.lh
  %i.ms = load i32, ptr %i.gx, align 8, !tbaa !16
  %i.mt = mul nsw i32 %i.mr, %i.ms
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mu = phi i32 [ %i.mt, %bb.o ], [ -1, %bb.n ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !23
  br i1 %i.mb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mw = load i32, ptr %i.gw, align 4, !tbaa !37
  %i.mx = mul nsw i32 %i.mw, %i.lk
  %i.my = add nsw i32 %i.mx, %i.li
  %i.mz = load i32, ptr %i.gx, align 8, !tbaa !16
  %i.na = mul nsw i32 %i.my, %i.mz
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nb = phi i32 [ %i.na, %bb.q ], [ -1, %bb.p ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !23
  %i.nd = sitofp <2 x i32> %i.lg to <2 x float>
  %i.ne = fsub fast <2 x float> %i.le, %i.nd
  store <2 x float> %i.ne, ptr %i.mc, align 4, !tbaa !44
  %i.nf = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.ng = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.ni = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ni, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !110

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !128 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !129
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !129
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !129
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dn, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.do, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.do, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dn, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dp, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> zeroinitializer)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.aj) ; 2 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !38
  %i.am = sitofp fast i32 %i.al to float
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ap = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.ao, splat (float -1.000000e+00) ; 2 uses
  %i.as = fmul fast <8 x float> %i.ar, %i.aq
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.at) ; 2 uses
  %i.av = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ak, i32 1) ; 5 uses
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 5 uses
  %i.ax = fadd fast <8 x float> %i.av, splat (float 1.000000e+00) ; 2 uses
  %i.ay = fadd fast <8 x float> %i.aw, splat (float 1.000000e+00) ; 2 uses
  %i.az = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.av
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 2 uses
  %i.bc = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ae, %i.ax
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 2 uses
  %i.bf = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ao, %i.aw
  %i.bh = and <8 x i1> %i.bf, %i.bg
  %i.bi = sext <8 x i1> %i.bh to <8 x i32>
  %i.bj = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.ao, %i.ay
  %i.bl = and <8 x i1> %i.bj, %i.bk               ; 2 uses
  %i.bm = bitcast <8 x i32> %i.bi to <8 x float>  ; 2 uses
  %i.bn = select <8 x i1> %i.bb, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bo = select <8 x i1> %i.be, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bp = and <8 x i1> %i.bb, %i.bl
  %i.bq = and <8 x i1> %i.be, %i.bl
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.av)
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bt = sitofp fast i32 %i.bs to float
  %i.bu = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bw = fmul fast <8 x float> %i.bv, %i.br      ; 3 uses
  %i.bx = fadd fast <8 x float> %i.bw, %i.bv
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.bw) ; 2 uses
  %i.bz = fadd fast <8 x float> %i.by, %i.bv
  %i.ca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bn)
  %i.cb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.bo)
  %i.cc = select <8 x i1> %i.bp, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.cd = select <8 x i1> %i.bq, <8 x float> %i.bz, <8 x float> splat (float -1.000000e+00)
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb) ; 2 uses
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cd) ; 2 uses
  %i.ci = fsub fast <8 x float> %i.ak, %i.av      ; 2 uses
  %i.cj = fsub fast <8 x float> %i.au, %i.aw      ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>  ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cs, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cp, <8 x float> %i.cs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.ct, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.de = shufflevector <8 x float> %i.da, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dh = shufflevector <8 x float> %i.da, <8 x float> %i.db, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dc, ptr %.1447, align 1, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.de, ptr %i.dj, align 1, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dg, ptr %i.dl, align 1, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dp = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 15
  %i.dr = icmp slt i32 %i.dq, %i.e
  br i1 %i.dr, label %.lr.ph448, label %.preheader, !llvm.loop !119

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.ge, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gd, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gf, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ds = load <2 x float>, ptr %.1250453, align 4, !tbaa !44
  %i.dt = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 5 uses
  %i.du = fmul fast <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.dv = fadd fast <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = add nsw <2 x i32> %i.dt, splat (i32 -1)
  %i.dx = sitofp <2 x i32> %i.dw to <2 x float>
  %i.dy = fmul fast <2 x float> %i.dv, %i.dx
  %i.dz = sitofp <2 x i32> %i.dt to <2 x float>
  %i.ea = fadd fast <2 x float> %i.dz, splat (float -1.000000e+00)
  %i.eb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dy, <2 x float> zeroinitializer)
  %i.ec = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eb, <2 x float> %i.ea) ; 2 uses
  %i.ed = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ec)
  %i.ee = fptosi <2 x float> %i.ed to <2 x i32>   ; 5 uses
  %i.ef = extractelement <2 x i32> %i.ee, i64 0   ; 4 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 3 uses
  %i.eh = extractelement <2 x i32> %i.ee, i64 1   ; 4 uses
  %i.ei = add nsw i32 %i.eh, 1                    ; 3 uses
  %i.ej = icmp sgt i32 %i.ef, -2
  %i.ek = extractelement <2 x i32> %i.dt, i64 0   ; 2 uses
  %i.el = icmp slt i32 %i.eg, %i.ek
  %i.em = and i1 %i.ej, %i.el                     ; 2 uses
  %i.en = icmp sgt <2 x i32> %i.ee, splat (i32 -1)
  %i.eo = icmp sgt <2 x i32> %i.dt, %i.ee
  %i.ep = and <2 x i1> %i.en, %i.eo               ; 2 uses
  %i.eq = icmp sgt i32 %i.eh, -2
  %i.er = extractelement <2 x i32> %i.dt, i64 1
  %i.es = icmp slt i32 %i.ei, %i.er
  %i.et = and i1 %i.eq, %i.es                     ; 2 uses
  %i.eu = extractelement <2 x i1> %i.ep, i64 0    ; 2 uses
  %i.ev = extractelement <2 x i1> %i.ep, i64 1    ; 2 uses
  %i.ew = and i1 %i.eu, %i.ev
  %i.ex = and i1 %i.em, %i.ev
  %i.ey = and i1 %i.eu, %i.et
  %i.ez = and i1 %i.em, %i.et
  %i.fa = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.ew, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fb = mul nuw nsw i32 %i.ek, %i.eh
  %i.fc = add nsw i32 %i.fb, %i.ef
  %i.fd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fe = mul nsw i32 %i.fd, %i.fc
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.ff = phi i32 [ %i.fe, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.ff, ptr %.2454, align 4, !tbaa !23
  br i1 %i.ex, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fg = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fh = mul nsw i32 %i.fg, %i.eh
  %i.fi = add nsw i32 %i.fh, %i.eg
  %i.fj = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fk = mul nsw i32 %i.fi, %i.fj
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fl = phi i32 [ %i.fk, %bb.c ], [ -1, %bb.b ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !23
  br i1 %i.ey, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fn = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fo = mul nsw i32 %i.fn, %i.ei
  %i.fp = add nsw i32 %i.fo, %i.ef
  %i.fq = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fr = mul nsw i32 %i.fp, %i.fq
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fs = phi i32 [ %i.fr, %bb.e ], [ -1, %bb.d ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !23
  br i1 %i.ez, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fu = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fv = mul nsw i32 %i.fu, %i.ei
  %i.fw = add nsw i32 %i.fv, %i.eg
  %i.fx = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fy = mul nsw i32 %i.fw, %i.fx
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.fz = phi i32 [ %i.fy, %bb.g ], [ -1, %bb.f ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !23
  %i.gb = sitofp <2 x i32> %i.ee to <2 x float>
  %i.gc = fsub fast <2 x float> %i.ec, %i.gb
  store <2 x float> %i.gc, ptr %i.fa, align 4, !tbaa !44
  %i.gd = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gf = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gg = icmp slt i32 %i.gf, %i.e
  br i1 %i.gg, label %.lr.ph455, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ge, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next, %i.gi
  br i1 %i.gj, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !121

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.gk = load ptr, ptr %1, align 8, !tbaa !20, !noalias !130 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jr = bitcast <8 x i32> %i.jq to <8 x float>
  %i.js = shufflevector <8 x float> %i.ji, <8 x float> %i.jj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jt = shufflevector <8 x float> %i.ji, <8 x float> %i.jj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ju = shufflevector <8 x i32> %i.jk, <8 x i32> %i.jo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jv = bitcast <8 x i32> %i.ju to <8 x float>  ; 2 uses
  %i.jw = shufflevector <8 x float> %i.js, <8 x float> %i.jl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jx = shufflevector <8 x float> %i.jp, <8 x float> %i.js, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jy = shufflevector <8 x i32> %i.jm, <8 x i32> %i.jq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jz = bitcast <8 x i32> %i.jy to <8 x float>  ; 2 uses
  %i.ka = shufflevector <8 x float> %i.jt, <8 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kb = shufflevector <8 x float> %i.jr, <8 x float> %i.jt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kc = shufflevector <8 x float> %i.jv, <8 x float> %i.jw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kd = shufflevector <8 x float> %i.jx, <8 x float> %i.jz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ke = shufflevector <8 x float> %i.ka, <8 x float> %i.kb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kf = shufflevector <8 x float> %i.jv, <8 x float> %i.jw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kg = shufflevector <8 x float> %i.jx, <8 x float> %i.jz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kh = shufflevector <8 x float> %i.ka, <8 x float> %i.kb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kc, ptr %.3436, align 1, !tbaa !41
  %i.ki = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kd, ptr %i.ki, align 1, !tbaa !41
  %i.kj = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.ke, ptr %i.kj, align 1, !tbaa !41
  %i.kk = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.kf, ptr %i.kk, align 1, !tbaa !41
  %i.kl = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kg, ptr %i.kl, align 1, !tbaa !41
  %i.km = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kh, ptr %i.km, align 1, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.kq = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.kr = or disjoint i32 %i.kq, 7
  %i.ks = icmp slt i32 %i.kr, %i.e
  br i1 %i.ks, label %bb.i, label %.preheader431.loopexit, !llvm.loop !126

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.nj, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.nk, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.ni, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nh, %bb.r ] ; 2 uses
  %i.kt = load float, ptr %.1258440, align 4, !tbaa !44
  %i.ku = load float, ptr %.1256441, align 4, !tbaa !44
  %i.kv = load <2 x i32>, ptr %i.gx, align 4, !tbaa !23 ; 5 uses
  %i.kw = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.ku, i64 1
  %i.ky = fmul fast <2 x float> %i.kx, splat (float 5.000000e-01)
  %i.kz = fadd fast <2 x float> %i.ky, splat (float 5.000000e-01)
  %i.la = add nsw <2 x i32> %i.kv, splat (i32 -1)
  %i.lb = sitofp <2 x i32> %i.la to <2 x float>
  %i.lc = fmul fast <2 x float> %i.kz, %i.lb
  %i.ld = sitofp <2 x i32> %i.kv to <2 x float>
  %i.le = fadd fast <2 x float> %i.ld, splat (float -1.000000e+00)
  %i.lf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lc, <2 x float> zeroinitializer)
  %i.lg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lf, <2 x float> %i.le) ; 2 uses
  %i.lh = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lg)
  %i.li = fptosi <2 x float> %i.lh to <2 x i32>   ; 5 uses
  %i.lj = extractelement <2 x i32> %i.li, i64 0   ; 4 uses
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  %i.ll = extractelement <2 x i32> %i.li, i64 1   ; 4 uses
  %i.lm = add nsw i32 %i.ll, 1                    ; 3 uses
  %i.ln = icmp sgt i32 %i.lj, -2
  %i.lo = extractelement <2 x i32> %i.kv, i64 0   ; 2 uses
  %i.lp = icmp slt i32 %i.lk, %i.lo
  %i.lq = and i1 %i.ln, %i.lp                     ; 2 uses
  %i.lr = icmp sgt <2 x i32> %i.li, splat (i32 -1)
  %i.ls = icmp sgt <2 x i32> %i.kv, %i.li
  %i.lt = and <2 x i1> %i.lr, %i.ls               ; 2 uses
  %i.lu = icmp sgt i32 %i.ll, -2
  %i.lv = extractelement <2 x i32> %i.kv, i64 1
  %i.lw = icmp slt i32 %i.lm, %i.lv
  %i.lx = and i1 %i.lu, %i.lw                     ; 2 uses
  %i.ly = extractelement <2 x i1> %i.lt, i64 0    ; 2 uses
  %i.lz = extractelement <2 x i1> %i.lt, i64 1    ; 2 uses
  %i.ma = and i1 %i.ly, %i.lz
  %i.mb = and i1 %i.lq, %i.lz
  %i.mc = and i1 %i.ly, %i.lx
  %i.md = and i1 %i.lq, %i.lx
  %i.me = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.ma, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mf = mul nuw nsw i32 %i.lo, %i.ll
  %i.mg = add nsw i32 %i.mf, %i.lj
  %i.mh = load i32, ptr %i.gy, align 8, !tbaa !16
  %i.mi = mul nsw i32 %i.mh, %i.mg
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mj = phi i32 [ %i.mi, %bb.k ], [ -1, %bb.j ]
  store i32 %i.mj, ptr %.4443, align 4, !tbaa !23
  br i1 %i.mb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mk = load i32, ptr %i.gx, align 4, !tbaa !37
  %i.ml = mul nsw i32 %i.mk, %i.ll
  %i.mm = add nsw i32 %i.ml, %i.lk
  %i.mn = load i32, ptr %i.gy, align 8, !tbaa !16
  %i.mo = mul nsw i32 %i.mm, %i.mn
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mp = phi i32 [ %i.mo, %bb.m ], [ -1, %bb.l ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !23
  br i1 %i.mc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mr = load i32, ptr %i.gx, align 4, !tbaa !37
  %i.ms = mul nsw i32 %i.mr, %i.lm
  %i.mt = add nsw i32 %i.ms, %i.lj
  %i.mu = load i32, ptr %i.gy, align 8, !tbaa !16
  %i.mv = mul nsw i32 %i.mt, %i.mu
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mw = phi i32 [ %i.mv, %bb.o ], [ -1, %bb.n ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !23
  br i1 %i.md, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.my = load i32, ptr %i.gx, align 4, !tbaa !37
  %i.mz = mul nsw i32 %i.my, %i.lm
  %i.na = add nsw i32 %i.mz, %i.lk
  %i.nb = load i32, ptr %i.gy, align 8, !tbaa !16
  %i.nc = mul nsw i32 %i.na, %i.nb
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nd = phi i32 [ %i.nc, %bb.q ], [ -1, %bb.p ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !23
  %i.nf = sitofp <2 x i32> %i.li to <2 x float>
  %i.ng = fsub fast <2 x float> %i.lg, %i.nf
  store <2 x float> %i.ng, ptr %i.me, align 4, !tbaa !44
  %i.nh = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.nj = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.nk = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nk, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !127

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !145 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader437, label %_ZN4ncnn3MatD2Ev.exit259

.preheader437:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader437
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0465 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !146
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !146
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !146
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph455, label %.preheader

.preheader:                                       ; preds = %.lr.ph455, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph455 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dz, %.lr.ph455 ]
  %.1.lcssa = phi ptr [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ea, %.lr.ph455 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph462, label %._crit_edge

.lr.ph455:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph455
  %.1454 = phi ptr [ %i.ea, %.lr.ph455 ], [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249453 = phi ptr [ %i.dz, %.lr.ph455 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251452 = phi i32 [ %i.eb, %.lr.ph455 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249453, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249453, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.aj = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01)
  %i.ak = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aj)
  %i.al = fsub fast <8 x float> %i.ak, %i.ae
  %i.am = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.al)
  %i.an = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01)
  %i.ao = fsub fast <8 x float> %i.an, %i.am
  %i.ap = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> zeroinitializer)
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.ap) ; 2 uses
  %i.ar = load i32, ptr %i.o, align 8, !tbaa !38
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = insertelement <8 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <8 x float> %i.at, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.av = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float -1.000000e+00))
  %i.ax = fmul fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.au, splat (float -1.000000e+00)
  %i.az = fadd fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az)
  %i.bb = fsub fast <8 x float> %i.ba, %i.au
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fadd fast <8 x float> %i.au, splat (float -5.000000e-01)
  %i.be = fsub fast <8 x float> %i.bd, %i.bc
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> zeroinitializer)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.bf) ; 2 uses
  %i.bh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.bi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bg, i32 1) ; 5 uses
  %i.bj = fadd fast <8 x float> %i.bh, splat (float 1.000000e+00) ; 2 uses
  %i.bk = fadd fast <8 x float> %i.bi, splat (float 1.000000e+00) ; 2 uses
  %i.bl = fcmp fast ogt <8 x float> %i.bh, splat (float -1.000000e+00)
  %i.bm = fcmp fast ogt <8 x float> %i.ae, %i.bh
  %i.bn = and <8 x i1> %i.bl, %i.bm               ; 2 uses
  %i.bo = fcmp fast ogt <8 x float> %i.bj, splat (float -1.000000e+00)
  %i.bp = fcmp fast ogt <8 x float> %i.ae, %i.bj
  %i.bq = and <8 x i1> %i.bo, %i.bp               ; 2 uses
  %i.br = fcmp fast ogt <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bs = fcmp fast ogt <8 x float> %i.au, %i.bi
  %i.bt = and <8 x i1> %i.br, %i.bs
  %i.bu = sext <8 x i1> %i.bt to <8 x i32>
  %i.bv = fcmp fast ogt <8 x float> %i.bk, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.au, %i.bk
  %i.bx = and <8 x i1> %i.bv, %i.bw               ; 2 uses
  %i.by = bitcast <8 x i32> %i.bu to <8 x float>  ; 2 uses
  %i.bz = select <8 x i1> %i.bn, <8 x float> %i.by, <8 x float> zeroinitializer
  %i.ca = select <8 x i1> %i.bq, <8 x float> %i.by, <8 x float> zeroinitializer
  %i.cb = and <8 x i1> %i.bn, %i.bx
  %i.cc = and <8 x i1> %i.bq, %i.bx
  %i.cd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.bh)
  %i.ce = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cf = sitofp fast i32 %i.ce to float
  %i.cg = insertelement <8 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <8 x float> %i.cg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ci = fmul fast <8 x float> %i.ch, %i.cd      ; 3 uses
  %i.cj = fadd fast <8 x float> %i.ci, %i.ch
  %i.ck = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.ci) ; 2 uses
  %i.cl = fadd fast <8 x float> %i.ck, %i.ch
  %i.cm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ci, <8 x float> nofpclass(nan inf) %i.bz)
  %i.cn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.ca)
  %i.co = select <8 x i1> %i.cb, <8 x float> %i.ck, <8 x float> splat (float -1.000000e+00)
  %i.cp = select <8 x i1> %i.cc, <8 x float> %i.cl, <8 x float> splat (float -1.000000e+00)
  %i.cq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cp) ; 2 uses
  %i.cu = fsub fast <8 x float> %i.aq, %i.bh      ; 2 uses
  %i.cv = fsub fast <8 x float> %i.bg, %i.bi      ; 2 uses
  %i.cw = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>
  %i.cy = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>
  %i.da = shufflevector <8 x i32> %i.cs, <8 x i32> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.db = bitcast <8 x i32> %i.da to <8 x float>
  %i.dc = shufflevector <8 x i32> %i.cs, <8 x i32> %i.ct, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>
  %i.de = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x i32> %i.cw, <8 x i32> %i.da, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dh = bitcast <8 x i32> %i.dg to <8 x float>  ; 2 uses
  %i.di = shufflevector <8 x float> %i.de, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.db, <8 x float> %i.de, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x i32> %i.cy, <8 x i32> %i.dc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dl = bitcast <8 x i32> %i.dk to <8 x float>  ; 2 uses
  %i.dm = shufflevector <8 x float> %i.df, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dn = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.do = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dp = shufflevector <8 x float> %i.dj, <8 x float> %i.dl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dq = shufflevector <8 x float> %i.dm, <8 x float> %i.dn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dr = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ds = shufflevector <8 x float> %i.dj, <8 x float> %i.dl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dt = shufflevector <8 x float> %i.dm, <8 x float> %i.dn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.do, ptr %.1454, align 1, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %.1454, i64 32
  store <8 x float> %i.dp, ptr %i.du, align 1, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %.1454, i64 64
  store <8 x float> %i.dq, ptr %i.dv, align 1, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %.1454, i64 96
  store <8 x float> %i.dr, ptr %i.dw, align 1, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %.1454, i64 128
  store <8 x float> %i.ds, ptr %i.dx, align 1, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %.1454, i64 160
  store <8 x float> %i.dt, ptr %i.dy, align 1, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %.0249453, i64 64 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1454, i64 192 ; 2 uses
  %i.eb = add nuw nsw i32 %.0251452, 16           ; 2 uses
  %i.ec = or disjoint i32 %i.eb, 15
  %i.ed = icmp slt i32 %i.ec, %i.e
  br i1 %i.ed, label %.lr.ph455, label %.preheader, !llvm.loop !136

.lr.ph462:                                        ; preds = %.preheader, %bb.h
  %.2461 = phi ptr [ %i.gt, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250460 = phi ptr [ %i.gs, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252459 = phi i32 [ %i.gu, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ee = load <2 x float>, ptr %.1250460, align 4, !tbaa !44
  %i.ef = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.eg = sitofp <2 x i32> %i.ef to <2 x float>   ; 4 uses
  %i.eh = fmul fast <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.ei = fadd fast <2 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fmul fast <2 x float> %i.ei, %i.eg
  %i.ek = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ej)
  %i.el = fsub fast <2 x float> %i.ek, %i.eg
  %i.em = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.el)
  %i.en = fadd fast <2 x float> %i.eg, splat (float -5.000000e-01)
  %i.eo = fsub fast <2 x float> %i.en, %i.em
  %i.ep = fadd fast <2 x float> %i.eg, splat (float -1.000000e+00)
  %i.eq = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eo, <2 x float> zeroinitializer)
  %i.er = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eq, <2 x float> %i.ep) ; 2 uses
  %i.es = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.er)
  %i.et = fptosi <2 x float> %i.es to <2 x i32>   ; 5 uses
  %i.eu = extractelement <2 x i32> %i.et, i64 0   ; 4 uses
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  %i.ew = extractelement <2 x i32> %i.et, i64 1   ; 4 uses
  %i.ex = add nsw i32 %i.ew, 1                    ; 3 uses
  %i.ey = icmp sgt i32 %i.eu, -2
  %i.ez = extractelement <2 x i32> %i.ef, i64 0   ; 2 uses
  %i.fa = icmp slt i32 %i.ev, %i.ez
  %i.fb = and i1 %i.ey, %i.fa                     ; 2 uses
  %i.fc = icmp sgt <2 x i32> %i.et, splat (i32 -1)
  %i.fd = icmp sgt <2 x i32> %i.ef, %i.et
  %i.fe = and <2 x i1> %i.fc, %i.fd               ; 2 uses
  %i.ff = icmp sgt i32 %i.ew, -2
  %i.fg = extractelement <2 x i32> %i.ef, i64 1
  %i.fh = icmp slt i32 %i.ex, %i.fg
  %i.fi = and i1 %i.ff, %i.fh                     ; 2 uses
  %i.fj = extractelement <2 x i1> %i.fe, i64 0    ; 2 uses
  %i.fk = extractelement <2 x i1> %i.fe, i64 1    ; 2 uses
  %i.fl = and i1 %i.fj, %i.fk
  %i.fm = and i1 %i.fb, %i.fk
  %i.fn = and i1 %i.fj, %i.fi
  %i.fo = and i1 %i.fb, %i.fi
  %i.fp = getelementptr inbounds nuw i8, ptr %.2461, i64 16
  br i1 %i.fl, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph462
  %i.fq = mul nuw nsw i32 %i.ez, %i.ew
  %i.fr = add nsw i32 %i.fq, %i.eu
  %i.fs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ft = mul nsw i32 %i.fs, %i.fr
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph462, %bb.a
  %i.fu = phi i32 [ %i.ft, %bb.a ], [ -1, %.lr.ph462 ]
  store i32 %i.fu, ptr %.2461, align 4, !tbaa !23
  br i1 %i.fm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fv = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fw = mul nsw i32 %i.fv, %i.ew
  %i.fx = add nsw i32 %i.fw, %i.ev
  %i.fy = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fz = mul nsw i32 %i.fx, %i.fy
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ga = phi i32 [ %i.fz, %bb.c ], [ -1, %bb.b ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.2461, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !23
  br i1 %i.fn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gc = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gd = mul nsw i32 %i.gc, %i.ex
  %i.ge = add nsw i32 %i.gd, %i.eu
  %i.gf = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gg = mul nsw i32 %i.ge, %i.gf
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gh = phi i32 [ %i.gg, %bb.e ], [ -1, %bb.d ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.2461, i64 8
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !23
  br i1 %i.fo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gj = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gk = mul nsw i32 %i.gj, %i.ex
  %i.gl = add nsw i32 %i.gk, %i.ev
  %i.gm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gn = mul nsw i32 %i.gl, %i.gm
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.go = phi i32 [ %i.gn, %bb.g ], [ -1, %bb.f ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.2461, i64 12
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !23
  %i.gq = sitofp <2 x i32> %i.et to <2 x float>
  %i.gr = fsub fast <2 x float> %i.er, %i.gq
  store <2 x float> %i.gr, ptr %i.fp, align 4, !tbaa !44
  %i.gs = getelementptr inbounds nuw i8, ptr %.1250460, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %.2461, i64 24 ; 2 uses
  %i.gu = add nuw nsw i32 %.1252459, 2            ; 2 uses
  %i.gv = icmp slt i32 %i.gu, %i.e
  br i1 %i.gv, label %.lr.ph462, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.h, %.preheader
end_hunk_4
begin_hunk_5_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.kv = shufflevector <8 x i32> %i.kl, <8 x i32> %i.kp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kw = bitcast <8 x i32> %i.kv to <8 x float>  ; 2 uses
  %i.kx = shufflevector <8 x float> %i.kt, <8 x float> %i.km, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ky = shufflevector <8 x float> %i.kq, <8 x float> %i.kt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kz = shufflevector <8 x i32> %i.kn, <8 x i32> %i.kr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.la = bitcast <8 x i32> %i.kz to <8 x float>  ; 2 uses
  %i.lb = shufflevector <8 x float> %i.ku, <8 x float> %i.ko, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.lc = shufflevector <8 x float> %i.ks, <8 x float> %i.ku, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ld = shufflevector <8 x float> %i.kw, <8 x float> %i.kx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.le = shufflevector <8 x float> %i.ky, <8 x float> %i.la, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lf = shufflevector <8 x float> %i.lb, <8 x float> %i.lc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lg = shufflevector <8 x float> %i.kw, <8 x float> %i.kx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lh = shufflevector <8 x float> %i.ky, <8 x float> %i.la, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.li = shufflevector <8 x float> %i.lb, <8 x float> %i.lc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ld, ptr %.3443, align 1, !tbaa !41
  %i.lj = getelementptr inbounds nuw i8, ptr %.3443, i64 32
  store <8 x float> %i.le, ptr %i.lj, align 1, !tbaa !41
  %i.lk = getelementptr inbounds nuw i8, ptr %.3443, i64 64
  store <8 x float> %i.lf, ptr %i.lk, align 1, !tbaa !41
  %i.ll = getelementptr inbounds nuw i8, ptr %.3443, i64 96
  store <8 x float> %i.lg, ptr %i.ll, align 1, !tbaa !41
  %i.lm = getelementptr inbounds nuw i8, ptr %.3443, i64 128
  store <8 x float> %i.lh, ptr %i.lm, align 1, !tbaa !41
  %i.ln = getelementptr inbounds nuw i8, ptr %.3443, i64 160
  store <8 x float> %i.li, ptr %i.ln, align 1, !tbaa !41
  %i.lo = getelementptr inbounds nuw i8, ptr %.0257440, i64 32 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.0255441, i64 32 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.3443, i64 192 ; 2 uses
  %i.lr = add nuw nsw i32 %.0253442, 8            ; 2 uses
  %i.ls = or disjoint i32 %i.lr, 7
  %i.lt = icmp slt i32 %i.ls, %i.e
  br i1 %i.lt, label %bb.i, label %.preheader438.loopexit, !llvm.loop !143

bb.j:                                             ; preds = %.lr.ph451, %bb.r
  %.4450 = phi ptr [ %.3.lcssa, %.lr.ph451 ], [ %i.on, %bb.r ] ; 6 uses
  %.1254449 = phi i32 [ %.0253.lcssa, %.lr.ph451 ], [ %i.oo, %bb.r ]
  %.1256448 = phi ptr [ %.0255.lcssa, %.lr.ph451 ], [ %i.om, %bb.r ] ; 2 uses
  %.1258447 = phi ptr [ %.0257.lcssa, %.lr.ph451 ], [ %i.ol, %bb.r ] ; 2 uses
  %i.lu = load float, ptr %.1258447, align 4, !tbaa !44
  %i.lv = load float, ptr %.1256448, align 4, !tbaa !44
  %i.lw = load <2 x i32>, ptr %i.hm, align 4, !tbaa !23 ; 4 uses
  %i.lx = sitofp <2 x i32> %i.lw to <2 x float>   ; 4 uses
  %i.ly = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lv, i64 1
  %i.ma = fmul fast <2 x float> %i.lz, splat (float 5.000000e-01)
  %i.mb = fadd fast <2 x float> %i.ma, splat (float 5.000000e-01)
  %i.mc = fmul fast <2 x float> %i.mb, %i.lx
  %i.md = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mc)
  %i.me = fsub fast <2 x float> %i.md, %i.lx
  %i.mf = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.me)
  %i.mg = fadd fast <2 x float> %i.lx, splat (float -5.000000e-01)
  %i.mh = fsub fast <2 x float> %i.mg, %i.mf
  %i.mi = fadd fast <2 x float> %i.lx, splat (float -1.000000e+00)
  %i.mj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mh, <2 x float> zeroinitializer)
  %i.mk = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mj, <2 x float> %i.mi) ; 2 uses
  %i.ml = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.mk)
  %i.mm = fptosi <2 x float> %i.ml to <2 x i32>   ; 5 uses
  %i.mn = extractelement <2 x i32> %i.mm, i64 0   ; 4 uses
  %i.mo = add nsw i32 %i.mn, 1                    ; 3 uses
  %i.mp = extractelement <2 x i32> %i.mm, i64 1   ; 4 uses
  %i.mq = add nsw i32 %i.mp, 1                    ; 3 uses
  %i.mr = icmp sgt i32 %i.mn, -2
  %i.ms = extractelement <2 x i32> %i.lw, i64 0   ; 2 uses
  %i.mt = icmp slt i32 %i.mo, %i.ms
  %i.mu = and i1 %i.mr, %i.mt                     ; 2 uses
  %i.mv = icmp sgt <2 x i32> %i.mm, splat (i32 -1)
  %i.mw = icmp sgt <2 x i32> %i.lw, %i.mm
  %i.mx = and <2 x i1> %i.mv, %i.mw               ; 2 uses
  %i.my = icmp sgt i32 %i.mp, -2
  %i.mz = extractelement <2 x i32> %i.lw, i64 1
  %i.na = icmp slt i32 %i.mq, %i.mz
  %i.nb = and i1 %i.my, %i.na                     ; 2 uses
  %i.nc = extractelement <2 x i1> %i.mx, i64 0    ; 2 uses
  %i.nd = extractelement <2 x i1> %i.mx, i64 1    ; 2 uses
  %i.ne = and i1 %i.nc, %i.nd
  %i.nf = and i1 %i.mu, %i.nd
  %i.ng = and i1 %i.nc, %i.nb
  %i.nh = and i1 %i.mu, %i.nb
  %i.ni = getelementptr inbounds nuw i8, ptr %.4450, i64 16
  br i1 %i.ne, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.nj = mul nuw nsw i32 %i.ms, %i.mp
  %i.nk = add nsw i32 %i.nj, %i.mn
  %i.nl = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.nm = mul nsw i32 %i.nl, %i.nk
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.nn = phi i32 [ %i.nm, %bb.k ], [ -1, %bb.j ]
  store i32 %i.nn, ptr %.4450, align 4, !tbaa !23
  br i1 %i.nf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.no = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.np = mul nsw i32 %i.no, %i.mp
  %i.nq = add nsw i32 %i.np, %i.mo
  %i.nr = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.ns = mul nsw i32 %i.nq, %i.nr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nt = phi i32 [ %i.ns, %bb.m ], [ -1, %bb.l ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.4450, i64 4
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !23
  br i1 %i.ng, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nv = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.nw = mul nsw i32 %i.nv, %i.mq
  %i.nx = add nsw i32 %i.nw, %i.mn
  %i.ny = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.nz = mul nsw i32 %i.nx, %i.ny
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.oa = phi i32 [ %i.nz, %bb.o ], [ -1, %bb.n ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.4450, i64 8
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !23
  br i1 %i.nh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.oc = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.od = mul nsw i32 %i.oc, %i.mq
  %i.oe = add nsw i32 %i.od, %i.mo
  %i.of = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.og = mul nsw i32 %i.oe, %i.of
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.oh = phi i32 [ %i.og, %bb.q ], [ -1, %bb.p ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.4450, i64 12
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !23
  %i.oj = sitofp <2 x i32> %i.mm to <2 x float>
  %i.ok = fsub fast <2 x float> %i.mk, %i.oj
  store <2 x float> %i.ok, ptr %i.ni, align 4, !tbaa !44
  %i.ol = getelementptr inbounds nuw i8, ptr %.1258447, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %.1256448, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %.4450, i64 24
  %i.oo = add nuw nsw i32 %.1254449, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oo, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !144

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader438, %.preheader437
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !162 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !163
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !163
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !163
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dr, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ds, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.ds, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dr, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dt, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 3 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ak = fsub fast <8 x float> %i.aj, %i.ah
  %i.al = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ak)
  %i.am = fsub fast <8 x float> %i.ah, %i.al      ; 2 uses
  %i.an = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ao = sitofp fast i32 %i.an to float
  %i.ap = insertelement <8 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ar = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00) ; 3 uses
  %i.au = fmul fast <8 x float> %i.at, %i.as
  %i.av = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.au)
  %i.aw = fsub fast <8 x float> %i.av, %i.at
  %i.ax = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aw)
  %i.ay = fsub fast <8 x float> %i.at, %i.ax      ; 2 uses
  %i.az = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.am, i32 1) ; 5 uses
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 5 uses
  %i.bb = fadd fast <8 x float> %i.az, splat (float 1.000000e+00) ; 2 uses
  %i.bc = fadd fast <8 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.bd = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 2 uses
  %i.bg = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ae, %i.bb
  %i.bi = and <8 x i1> %i.bg, %i.bh               ; 2 uses
  %i.bj = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.aq, %i.ba
  %i.bl = and <8 x i1> %i.bj, %i.bk
  %i.bm = sext <8 x i1> %i.bl to <8 x i32>
  %i.bn = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.aq, %i.bc
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 2 uses
  %i.bq = bitcast <8 x i32> %i.bm to <8 x float>  ; 2 uses
  %i.br = select <8 x i1> %i.bf, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bs = select <8 x i1> %i.bi, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bt = and <8 x i1> %i.bf, %i.bp
  %i.bu = and <8 x i1> %i.bi, %i.bp
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.az)
  %i.bw = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bx = sitofp fast i32 %i.bw to float
  %i.by = insertelement <8 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ca = fmul fast <8 x float> %i.bz, %i.bv      ; 3 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.bz
  %i.cc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cd = fadd fast <8 x float> %i.cc, %i.bz
  %i.ce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) %i.br)
  %i.cf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.bs)
  %i.cg = select <8 x i1> %i.bt, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.ch = select <8 x i1> %i.bu, <8 x float> %i.cd, <8 x float> splat (float -1.000000e+00)
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cf) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cm = fsub fast <8 x float> %i.am, %i.az      ; 2 uses
  %i.cn = fsub fast <8 x float> %i.ay, %i.ba      ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.co, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.cw, <8 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.ct, <8 x float> %i.cw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>  ; 2 uses
  %i.de = shufflevector <8 x float> %i.cx, <8 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dh = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.di = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dj = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dk = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dl = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dg, ptr %.1447, align 1, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.di, ptr %i.dn, align 1, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dj, ptr %i.do, align 1, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dk, ptr %i.dp, align 1, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dl, ptr %i.dq, align 1, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dt = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.du = or disjoint i32 %i.dt, 15
  %i.dv = icmp slt i32 %i.du, %i.e
  br i1 %i.dv, label %.lr.ph448, label %.preheader, !llvm.loop !153

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gm, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gl, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gn, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dw = load <2 x float>, ptr %.1250453, align 4, !tbaa !44
  %i.dx = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 5 uses
  %i.dy = fmul fast <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.dz = fadd fast <2 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = add nsw <2 x i32> %i.dx, splat (i32 -1)
  %i.eb = sitofp <2 x i32> %i.ea to <2 x float>   ; 3 uses
  %i.ec = fmul fast <2 x float> %i.dz, %i.eb
  %i.ed = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ec)
  %i.ee = fsub fast <2 x float> %i.ed, %i.eb
  %i.ef = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ee)
  %i.eg = fsub fast <2 x float> %i.eb, %i.ef
  %i.eh = sitofp <2 x i32> %i.dx to <2 x float>
  %i.ei = fadd fast <2 x float> %i.eh, splat (float -1.000000e+00)
  %i.ej = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eg, <2 x float> zeroinitializer)
  %i.ek = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ej, <2 x float> %i.ei) ; 2 uses
  %i.el = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ek)
  %i.em = fptosi <2 x float> %i.el to <2 x i32>   ; 5 uses
  %i.en = extractelement <2 x i32> %i.em, i64 0   ; 4 uses
  %i.eo = add nsw i32 %i.en, 1                    ; 3 uses
  %i.ep = extractelement <2 x i32> %i.em, i64 1   ; 4 uses
  %i.eq = add nsw i32 %i.ep, 1                    ; 3 uses
  %i.er = icmp sgt i32 %i.en, -2
  %i.es = extractelement <2 x i32> %i.dx, i64 0   ; 2 uses
  %i.et = icmp slt i32 %i.eo, %i.es
  %i.eu = and i1 %i.er, %i.et                     ; 2 uses
  %i.ev = icmp sgt <2 x i32> %i.em, splat (i32 -1)
  %i.ew = icmp sgt <2 x i32> %i.dx, %i.em
  %i.ex = and <2 x i1> %i.ev, %i.ew               ; 2 uses
  %i.ey = icmp sgt i32 %i.ep, -2
  %i.ez = extractelement <2 x i32> %i.dx, i64 1
  %i.fa = icmp slt i32 %i.eq, %i.ez
  %i.fb = and i1 %i.ey, %i.fa                     ; 2 uses
  %i.fc = extractelement <2 x i1> %i.ex, i64 0    ; 2 uses
  %i.fd = extractelement <2 x i1> %i.ex, i64 1    ; 2 uses
  %i.fe = and i1 %i.fc, %i.fd
  %i.ff = and i1 %i.eu, %i.fd
  %i.fg = and i1 %i.fc, %i.fb
  %i.fh = and i1 %i.eu, %i.fb
  %i.fi = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.fe, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fj = mul nuw nsw i32 %i.es, %i.ep
  %i.fk = add nsw i32 %i.fj, %i.en
  %i.fl = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fm = mul nsw i32 %i.fl, %i.fk
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fn = phi i32 [ %i.fm, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fn, ptr %.2454, align 4, !tbaa !23
  br i1 %i.ff, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fo = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fp = mul nsw i32 %i.fo, %i.ep
  %i.fq = add nsw i32 %i.fp, %i.eo
  %i.fr = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fs = mul nsw i32 %i.fq, %i.fr
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ft = phi i32 [ %i.fs, %bb.c ], [ -1, %bb.b ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !23
  br i1 %i.fg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fv = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fw = mul nsw i32 %i.fv, %i.eq
  %i.fx = add nsw i32 %i.fw, %i.en
  %i.fy = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fz = mul nsw i32 %i.fx, %i.fy
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ga = phi i32 [ %i.fz, %bb.e ], [ -1, %bb.d ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !23
  br i1 %i.fh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gc = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gd = mul nsw i32 %i.gc, %i.eq
  %i.ge = add nsw i32 %i.gd, %i.eo
  %i.gf = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gg = mul nsw i32 %i.ge, %i.gf
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gh = phi i32 [ %i.gg, %bb.g ], [ -1, %bb.f ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !23
  %i.gj = sitofp <2 x i32> %i.em to <2 x float>
  %i.gk = fsub fast <2 x float> %i.ek, %i.gj
  store <2 x float> %i.gk, ptr %i.fi, align 4, !tbaa !44
  %i.gl = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gn = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.go = icmp slt i32 %i.gn, %i.e
  br i1 %i.go, label %.lr.ph455, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gm, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gp = load i32, ptr %i.h, align 8, !tbaa !17
end_hunk_5
begin_hunk_6_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.ke = shufflevector <8 x float> %i.ju, <8 x float> %i.jv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kf = shufflevector <8 x float> %i.ju, <8 x float> %i.jv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kg = shufflevector <8 x i32> %i.jw, <8 x i32> %i.ka, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kh = bitcast <8 x i32> %i.kg to <8 x float>  ; 2 uses
  %i.ki = shufflevector <8 x float> %i.ke, <8 x float> %i.jx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kj = shufflevector <8 x float> %i.kb, <8 x float> %i.ke, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kk = shufflevector <8 x i32> %i.jy, <8 x i32> %i.kc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kl = bitcast <8 x i32> %i.kk to <8 x float>  ; 2 uses
  %i.km = shufflevector <8 x float> %i.kf, <8 x float> %i.jz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kn = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ko = shufflevector <8 x float> %i.kh, <8 x float> %i.ki, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kp = shufflevector <8 x float> %i.kj, <8 x float> %i.kl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kq = shufflevector <8 x float> %i.km, <8 x float> %i.kn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kr = shufflevector <8 x float> %i.kh, <8 x float> %i.ki, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ks = shufflevector <8 x float> %i.kj, <8 x float> %i.kl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kt = shufflevector <8 x float> %i.km, <8 x float> %i.kn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ko, ptr %.3436, align 1, !tbaa !41
  %i.ku = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kp, ptr %i.ku, align 1, !tbaa !41
  %i.kv = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.kq, ptr %i.kv, align 1, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.kr, ptr %i.kw, align 1, !tbaa !41
  %i.kx = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.ks, ptr %i.kx, align 1, !tbaa !41
  %i.ky = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kt, ptr %i.ky, align 1, !tbaa !41
  %i.kz = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.lc = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.ld = or disjoint i32 %i.lc, 7
  %i.le = icmp slt i32 %i.ld, %i.e
  br i1 %i.le, label %bb.i, label %.preheader431.loopexit, !llvm.loop !160

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.nz, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.oa, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.ny, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nx, %bb.r ] ; 2 uses
  %i.lf = load float, ptr %.1258440, align 4, !tbaa !44
  %i.lg = load float, ptr %.1256441, align 4, !tbaa !44
  %i.lh = load <2 x i32>, ptr %i.hf, align 4, !tbaa !23 ; 5 uses
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lg, i64 1
  %i.lk = fmul fast <2 x float> %i.lj, splat (float 5.000000e-01)
  %i.ll = fadd fast <2 x float> %i.lk, splat (float 5.000000e-01)
  %i.lm = add nsw <2 x i32> %i.lh, splat (i32 -1)
  %i.ln = sitofp <2 x i32> %i.lm to <2 x float>   ; 3 uses
  %i.lo = fmul fast <2 x float> %i.ll, %i.ln
  %i.lp = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lo)
  %i.lq = fsub fast <2 x float> %i.lp, %i.ln
  %i.lr = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lq)
  %i.ls = fsub fast <2 x float> %i.ln, %i.lr
  %i.lt = sitofp <2 x i32> %i.lh to <2 x float>
  %i.lu = fadd fast <2 x float> %i.lt, splat (float -1.000000e+00)
  %i.lv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ls, <2 x float> zeroinitializer)
  %i.lw = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lv, <2 x float> %i.lu) ; 2 uses
  %i.lx = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lw)
  %i.ly = fptosi <2 x float> %i.lx to <2 x i32>   ; 5 uses
  %i.lz = extractelement <2 x i32> %i.ly, i64 0   ; 4 uses
  %i.ma = add nsw i32 %i.lz, 1                    ; 3 uses
  %i.mb = extractelement <2 x i32> %i.ly, i64 1   ; 4 uses
  %i.mc = add nsw i32 %i.mb, 1                    ; 3 uses
  %i.md = icmp sgt i32 %i.lz, -2
  %i.me = extractelement <2 x i32> %i.lh, i64 0   ; 2 uses
  %i.mf = icmp slt i32 %i.ma, %i.me
  %i.mg = and i1 %i.md, %i.mf                     ; 2 uses
  %i.mh = icmp sgt <2 x i32> %i.ly, splat (i32 -1)
  %i.mi = icmp sgt <2 x i32> %i.lh, %i.ly
  %i.mj = and <2 x i1> %i.mh, %i.mi               ; 2 uses
  %i.mk = icmp sgt i32 %i.mb, -2
  %i.ml = extractelement <2 x i32> %i.lh, i64 1
  %i.mm = icmp slt i32 %i.mc, %i.ml
  %i.mn = and i1 %i.mk, %i.mm                     ; 2 uses
  %i.mo = extractelement <2 x i1> %i.mj, i64 0    ; 2 uses
  %i.mp = extractelement <2 x i1> %i.mj, i64 1    ; 2 uses
  %i.mq = and i1 %i.mo, %i.mp
  %i.mr = and i1 %i.mg, %i.mp
  %i.ms = and i1 %i.mo, %i.mn
  %i.mt = and i1 %i.mg, %i.mn
  %i.mu = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.mq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mv = mul nuw nsw i32 %i.me, %i.mb
  %i.mw = add nsw i32 %i.mv, %i.lz
  %i.mx = load i32, ptr %i.hg, align 8, !tbaa !16
  %i.my = mul nsw i32 %i.mx, %i.mw
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mz = phi i32 [ %i.my, %bb.k ], [ -1, %bb.j ]
  store i32 %i.mz, ptr %.4443, align 4, !tbaa !23
  br i1 %i.mr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.na = load i32, ptr %i.hf, align 4, !tbaa !37
  %i.nb = mul nsw i32 %i.na, %i.mb
  %i.nc = add nsw i32 %i.nb, %i.ma
  %i.nd = load i32, ptr %i.hg, align 8, !tbaa !16
  %i.ne = mul nsw i32 %i.nc, %i.nd
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nf = phi i32 [ %i.ne, %bb.m ], [ -1, %bb.l ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !23
  br i1 %i.ms, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nh = load i32, ptr %i.hf, align 4, !tbaa !37
  %i.ni = mul nsw i32 %i.nh, %i.mc
  %i.nj = add nsw i32 %i.ni, %i.lz
  %i.nk = load i32, ptr %i.hg, align 8, !tbaa !16
  %i.nl = mul nsw i32 %i.nj, %i.nk
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.nm = phi i32 [ %i.nl, %bb.o ], [ -1, %bb.n ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !23
  br i1 %i.mt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.no = load i32, ptr %i.hf, align 4, !tbaa !37
  %i.np = mul nsw i32 %i.no, %i.mc
  %i.nq = add nsw i32 %i.np, %i.ma
  %i.nr = load i32, ptr %i.hg, align 8, !tbaa !16
  %i.ns = mul nsw i32 %i.nq, %i.nr
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nt = phi i32 [ %i.ns, %bb.q ], [ -1, %bb.p ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !23
  %i.nv = sitofp <2 x i32> %i.ly to <2 x float>
  %i.nw = fsub fast <2 x float> %i.lw, %i.nv
  store <2 x float> %i.nw, ptr %i.mu, align 4, !tbaa !44
  %i.nx = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.ny = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.oa = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oa, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !161

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 12 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !179 ; 4 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit122.us.preheader, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split

_ZN4ncnn3MatD2Ev.exit122.us.preheader:            ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.q = and i32 %i.e, 2147483632                 ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.e
  br label %_ZN4ncnn3MatD2Ev.exit122.us

_ZN4ncnn3MatD2Ev.exit122.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit122.us.preheader, %._crit_edge.us
  %indvars.iv267 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %indvars.iv.next268, %._crit_edge.us ] ; 2 uses
  %.0255.us = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !20, !noalias !180
  %i.t = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !180
  %i.u = mul i64 %i.t, %indvars.iv267
  %i.v = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !180
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122.us, %bb.a
  %.1244.us = phi ptr [ %.0255.us, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bk, %bb.a ] ; 2 uses
  %.0117243.us = phi ptr [ %i.x, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bj, %bb.a ] ; 3 uses
  %.0119242.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bl, %bb.a ]
  %i.y = load <8 x float>, ptr %.0117243.us, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !38
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.am = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.al, <8 x float> splat (float -1.000000e+00))
  %i.ao = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01)
  %i.aq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ap, i32 1) ; 3 uses
  %i.ar = fadd fast <8 x float> %i.ao, splat (float 5.000000e-01)
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ar, i32 1) ; 3 uses
  %i.at = fcmp fast ogt <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.au = fcmp fast ogt <8 x float> %i.ae, %i.aq
  %i.av = and <8 x i1> %i.at, %i.au
  %i.aw = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.ax = fcmp fast ogt <8 x float> %i.al, %i.as
  %i.ay = and <8 x i1> %i.aw, %i.ax
  %i.az = and <8 x i1> %i.av, %i.ay
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.aq)
  %i.bb = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bc = sitofp fast i32 %i.bb to float
  %i.bd = insertelement <8 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bf = fmul fast <8 x float> %i.be, %i.ba
  %i.bg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bf)
  %i.bh = bitcast <8 x i32> %i.bg to <8 x float>
  %i.bi = select <8 x i1> %i.az, <8 x float> %i.bh, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bi, ptr %.1244.us, align 1, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1244.us, i64 32 ; 3 uses
  %i.bl = add nuw nsw i32 %.0119242.us, 16        ; 2 uses
  %i.bm = or disjoint i32 %i.bl, 15
  %i.bn = icmp slt i32 %i.bm, %i.e
  br i1 %i.bn, label %bb.a, label %..preheader_crit_edge.us, !llvm.loop !170

.lr.ph252.us:                                     ; preds = %..preheader_crit_edge.us, %bb.c
  %.2251.us = phi ptr [ %i.cm, %bb.c ], [ %i.bk, %..preheader_crit_edge.us ] ; 2 uses
  %.1118250.us = phi ptr [ %i.cl, %bb.c ], [ %i.bj, %..preheader_crit_edge.us ] ; 2 uses
  %.1120249.us = phi i32 [ %i.cn, %bb.c ], [ %i.q, %..preheader_crit_edge.us ]
  %i.bo = load <2 x float>, ptr %.1118250.us, align 4, !tbaa !44
  %i.bp = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = fmul fast <2 x float> %i.bo, splat (float 5.000000e-01)
  %i.bs = fadd fast <2 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fmul fast <2 x float> %i.bs, %i.bq
  %i.bu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 3 uses
  %i.bw = extractelement <2 x i32> %i.bv, i64 0   ; 2 uses
  %i.bx = extractelement <2 x i32> %i.bv, i64 1   ; 2 uses
  %i.by = or i32 %i.bx, %i.bw
  %i.bz = icmp sgt i32 %i.by, -1
  %i.ca = icmp sgt <2 x i32> %i.bp, %i.bv         ; 2 uses
  %i.cb = extractelement <2 x i1> %i.ca, i64 0
  %i.cc = and i1 %i.cb, %i.bz
  %i.cd = extractelement <2 x i1> %i.ca, i64 1
  %i.ce = and i1 %i.cd, %i.cc
  br i1 %i.ce, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph252.us
  %i.cf = extractelement <2 x i32> %i.bp, i64 0
  %i.cg = mul nuw nsw i32 %i.cf, %i.bx
  %i.ch = add nsw i32 %i.cg, %i.bw
  %i.ci = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cj = mul nsw i32 %i.ci, %i.ch
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph252.us
  %i.ck = phi i32 [ %i.cj, %bb.b ], [ -1, %.lr.ph252.us ]
  store i32 %i.ck, ptr %.2251.us, align 4, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %.1118250.us, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.2251.us, i64 4 ; 2 uses
  %i.cn = add nuw nsw i32 %.1120249.us, 2         ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.e
  br i1 %i.co, label %.lr.ph252.us, label %._crit_edge.us, !llvm.loop !171

._crit_edge.us:                                   ; preds = %bb.c, %..preheader_crit_edge.us
  %.2.lcssa.us = phi ptr [ %i.bk, %..preheader_crit_edge.us ], [ %i.cm, %bb.c ]
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.cp = load i32, ptr %i.h, align 8, !tbaa !17
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next268, %i.cq
  br i1 %i.cr, label %_ZN4ncnn3MatD2Ev.exit122.us, label %.loopexit, !llvm.loop !172

..preheader_crit_edge.us:                         ; preds = %bb.a
  br i1 %i.r, label %.lr.ph252.us, label %._crit_edge.us

_ZN4ncnn3MatD2Ev.exit122.lr.ph.split:             ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.cs = icmp sgt i32 %i.e, 0
  br i1 %i.cs, label %_ZN4ncnn3MatD2Ev.exit122.preheader, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  %.pre = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !180
  %.pre270 = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !180
  %i.ct = load ptr, ptr %1, align 8, !tbaa !20, !noalias !180
  %factor.op.mul = mul i64 %.pre, %.pre270
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %i.dt, %._crit_edge ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.reass
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122, %bb.f
  %.2251 = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.dt, %bb.f ] ; 2 uses
  %.1118250 = phi ptr [ %i.cu, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.ds, %bb.f ] ; 2 uses
  %.1120249 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.du, %bb.f ]
  %i.cv = load <2 x float>, ptr %.1118250, align 4, !tbaa !44
  %i.cw = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.cx = sitofp <2 x i32> %i.cw to <2 x float>
  %i.cy = fmul fast <2 x float> %i.cv, splat (float 5.000000e-01)
  %i.cz = fadd fast <2 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fmul fast <2 x float> %i.cz, %i.cx
  %i.db = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.da)
  %i.dc = fptosi <2 x float> %i.db to <2 x i32>   ; 3 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 0   ; 2 uses
  %i.de = extractelement <2 x i32> %i.dc, i64 1   ; 2 uses
  %i.df = or i32 %i.de, %i.dd
  %i.dg = icmp sgt i32 %i.df, -1
  %i.dh = icmp sgt <2 x i32> %i.cw, %i.dc         ; 2 uses
  %i.di = extractelement <2 x i1> %i.dh, i64 0
  %i.dj = and i1 %i.di, %i.dg
  %i.dk = extractelement <2 x i1> %i.dh, i64 1
  %i.dl = and i1 %i.dk, %i.dj
  br i1 %i.dl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dm = extractelement <2 x i32> %i.cw, i64 0
  %i.dn = mul nuw nsw i32 %i.dm, %i.de
  %i.do = add nsw i32 %i.dn, %i.dd
  %i.dp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.dq = mul nsw i32 %i.dp, %i.do
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.dr = phi i32 [ %i.dq, %bb.e ], [ -1, %bb.d ]
  store i32 %i.dr, ptr %.2251, align 4, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.du = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.e
  br i1 %i.dv, label %bb.d, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !172

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !181 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !19, !noalias !182
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !18, !noalias !182
  %i.ee = mul i64 %i.ed, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ee ; 2 uses
  %i.eg = icmp sgt i32 %i.e, 7
  br i1 %i.eg, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

.preheader228.loopexit:                           ; preds = %bb.g
  %i.ek = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dz, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fy, %.preheader228.loopexit ]
  %.0112.lcssa = phi ptr [ %i.ef, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fz, %.preheader228.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ek, %.preheader228.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ga, %.preheader228.loopexit ]
  %i.el = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.el, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %.preheader228
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.3233 = phi ptr [ %i.f, %.lr.ph ], [ %i.ga, %bb.g ] ; 2 uses
  %.0110232 = phi i32 [ 0, %.lr.ph ], [ %i.gb, %bb.g ]
  %.0112231 = phi ptr [ %i.ef, %.lr.ph ], [ %i.fz, %bb.g ] ; 2 uses
  %.0114230 = phi ptr [ %i.dz, %.lr.ph ], [ %i.fy, %bb.g ] ; 2 uses
  %i.eo = load <8 x float>, ptr %.0114230, align 1, !tbaa !41
  %i.ep = load <8 x float>, ptr %.0112231, align 1, !tbaa !41
  %i.eq = load i32, ptr %i.eh, align 4, !tbaa !37
  %i.er = sitofp fast i32 %i.eq to float
  %i.es = insertelement <8 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <8 x float> %i.es, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.eu = fadd fast <8 x float> %i.eo, splat (float 1.000000e+00)
  %i.ev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eu, <8 x float> nofpclass(nan inf) %i.et, <8 x float> splat (float -1.000000e+00))
  %i.ew = fmul fast <8 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = load i32, ptr %i.ei, align 8, !tbaa !38
  %i.ey = sitofp fast i32 %i.ex to float
  %i.ez = insertelement <8 x float> poison, float %i.ey, i64 0
  %i.fa = shufflevector <8 x float> %i.ez, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fb = fadd fast <8 x float> %i.ep, splat (float 1.000000e+00)
  %i.fc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> nofpclass(nan inf) %i.fa, <8 x float> splat (float -1.000000e+00))
  %i.fd = fmul fast <8 x float> %i.fc, splat (float 5.000000e-01)
  %i.fe = fadd fast <8 x float> %i.ew, splat (float 5.000000e-01)
  %i.ff = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fe, i32 1) ; 3 uses
  %i.fg = fadd fast <8 x float> %i.fd, splat (float 5.000000e-01)
  %i.fh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fg, i32 1) ; 3 uses
  %i.fi = fcmp fast ogt <8 x float> %i.ff, splat (float -1.000000e+00)
  %i.fj = fcmp fast ogt <8 x float> %i.et, %i.ff
  %i.fk = and <8 x i1> %i.fi, %i.fj
  %i.fl = fcmp fast ogt <8 x float> %i.fh, splat (float -1.000000e+00)
  %i.fm = fcmp fast ogt <8 x float> %i.fa, %i.fh
  %i.fn = and <8 x i1> %i.fl, %i.fm
  %i.fo = and <8 x i1> %i.fk, %i.fn
  %i.fp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.et, <8 x float> nofpclass(nan inf) %i.ff)
  %i.fq = load i32, ptr %i.ej, align 8, !tbaa !16
  %i.fr = sitofp fast i32 %i.fq to float
  %i.fs = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <8 x float> %i.fs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fu = fmul fast <8 x float> %i.ft, %i.fp
  %i.fv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fu)
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = select <8 x i1> %i.fo, <8 x float> %i.fw, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fx, ptr %.3233, align 1, !tbaa !41
  %i.fy = getelementptr inbounds nuw i8, ptr %.0114230, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0112231, i64 32 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.3233, i64 32 ; 2 uses
  %i.gb = add nuw nsw i32 %.0110232, 8            ; 2 uses
  %i.gc = or disjoint i32 %i.gb, 7
  %i.gd = icmp slt i32 %i.gc, %i.e
  br i1 %i.gd, label %bb.g, label %.preheader228.loopexit, !llvm.loop !177

bb.h:                                             ; preds = %.lr.ph241, %bb.j
  %.4240 = phi ptr [ %.3.lcssa, %.lr.ph241 ], [ %i.hg, %bb.j ] ; 2 uses
  %.1111239 = phi i32 [ %.0110.lcssa, %.lr.ph241 ], [ %i.hh, %bb.j ]
  %.1113238 = phi ptr [ %.0112.lcssa, %.lr.ph241 ], [ %i.hf, %bb.j ] ; 2 uses
  %.1115237 = phi ptr [ %.0114.lcssa, %.lr.ph241 ], [ %i.he, %bb.j ] ; 2 uses
  %i.ge = load float, ptr %.1115237, align 4, !tbaa !44
  %i.gf = load float, ptr %.1113238, align 4, !tbaa !44
  %i.gg = load <2 x i32>, ptr %i.em, align 4, !tbaa !23 ; 3 uses
  %i.gh = sitofp <2 x i32> %i.gg to <2 x float>
  %i.gi = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gf, i64 1
  %i.gk = fmul fast <2 x float> %i.gj, splat (float 5.000000e-01)
  %i.gl = fadd fast <2 x float> %i.gk, splat (float 5.000000e-01)
  %i.gm = fmul fast <2 x float> %i.gl, %i.gh
  %i.gn = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gm)
  %i.go = fptosi <2 x float> %i.gn to <2 x i32>   ; 3 uses
  %i.gp = extractelement <2 x i32> %i.go, i64 0   ; 2 uses
  %i.gq = extractelement <2 x i32> %i.go, i64 1   ; 2 uses
  %i.gr = or i32 %i.gq, %i.gp
  %i.gs = icmp sgt i32 %i.gr, -1
  %i.gt = icmp sgt <2 x i32> %i.gg, %i.go         ; 2 uses
  %i.gu = extractelement <2 x i1> %i.gt, i64 0
  %i.gv = and i1 %i.gu, %i.gs
  %i.gw = extractelement <2 x i1> %i.gt, i64 1
  %i.gx = and i1 %i.gw, %i.gv
  br i1 %i.gx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gy = extractelement <2 x i32> %i.gg, i64 0
  %i.gz = mul nuw nsw i32 %i.gy, %i.gq
  %i.ha = add nsw i32 %i.gz, %i.gp
  %i.hb = load i32, ptr %i.en, align 8, !tbaa !16
  %i.hc = mul nsw i32 %i.hb, %i.ha
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.hd = phi i32 [ %i.hc, %bb.i ], [ -1, %bb.h ]
  store i32 %i.hd, ptr %.4240, align 4, !tbaa !23
  %i.he = getelementptr inbounds nuw i8, ptr %.1115237, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.1113238, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.4240, i64 4
  %i.hh = add nuw nsw i32 %.1111239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hh, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !178

.loopexit:                                        ; preds = %bb.j, %._crit_edge, %._crit_edge.us, %.preheader228, %.preheader227, %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !196 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !197
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !197
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !197
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph245, label %.preheader

.preheader:                                       ; preds = %.lr.ph245, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph245 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bl, %.lr.ph245 ]
  %.1.lcssa = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bm, %.lr.ph245 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph252, label %._crit_edge

.lr.ph245:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph245
  %.1244 = phi ptr [ %i.bm, %.lr.ph245 ], [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117243 = phi ptr [ %i.bl, %.lr.ph245 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119242 = phi i32 [ %i.bn, %.lr.ph245 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117243, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117243, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao
  %i.ar = fadd fast <8 x float> %i.ai, splat (float 5.000000e-01)
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ar, i32 1) ; 3 uses
  %i.at = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.au = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.at, i32 1) ; 3 uses
  %i.av = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.aw = fcmp fast ogt <8 x float> %i.ae, %i.as
  %i.ax = and <8 x i1> %i.av, %i.aw
  %i.ay = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.az = fcmp fast ogt <8 x float> %i.am, %i.au
  %i.ba = and <8 x i1> %i.ay, %i.az
  %i.bb = and <8 x i1> %i.ax, %i.ba
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.as)
  %i.bd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.be = sitofp fast i32 %i.bd to float
  %i.bf = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bh = fmul fast <8 x float> %i.bg, %i.bc
  %i.bi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bh)
  %i.bj = bitcast <8 x i32> %i.bi to <8 x float>
  %i.bk = select <8 x i1> %i.bb, <8 x float> %i.bj, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bk, ptr %.1244, align 1, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %.0117243, i64 64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1244, i64 32 ; 2 uses
  %i.bn = add nuw nsw i32 %.0119242, 16           ; 2 uses
  %i.bo = or disjoint i32 %i.bn, 15
  %i.bp = icmp slt i32 %i.bo, %i.e
  br i1 %i.bp, label %.lr.ph245, label %.preheader, !llvm.loop !187

.lr.ph252:                                        ; preds = %.preheader, %bb.b
  %.2251 = phi ptr [ %i.cq, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118250 = phi ptr [ %i.cp, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120249 = phi i32 [ %i.cr, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bq = load <2 x float>, ptr %.1118250, align 4, !tbaa !44
  %i.br = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.bs = fmul fast <2 x float> %i.bq, splat (float 5.000000e-01)
  %i.bt = fadd fast <2 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = add nsw <2 x i32> %i.br, splat (i32 -1)
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = fmul fast <2 x float> %i.bt, %i.bv
  %i.bx = fadd fast <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>   ; 3 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 0   ; 2 uses
  %i.cb = extractelement <2 x i32> %i.bz, i64 1   ; 2 uses
  %i.cc = or i32 %i.cb, %i.ca
  %i.cd = icmp sgt i32 %i.cc, -1
  %i.ce = icmp sgt <2 x i32> %i.br, %i.bz         ; 2 uses
  %i.cf = extractelement <2 x i1> %i.ce, i64 0
  %i.cg = and i1 %i.cf, %i.cd
  %i.ch = extractelement <2 x i1> %i.ce, i64 1
  %i.ci = and i1 %i.ch, %i.cg
  br i1 %i.ci, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph252
  %i.cj = extractelement <2 x i32> %i.br, i64 0
  %i.ck = mul nuw nsw i32 %i.cj, %i.cb
  %i.cl = add nsw i32 %i.ck, %i.ca
  %i.cm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cn = mul nsw i32 %i.cm, %i.cl
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph252, %bb.a
  %i.co = phi i32 [ %i.cn, %bb.a ], [ -1, %.lr.ph252 ]
  store i32 %i.co, ptr %.2251, align 4, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.cr = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.e
  br i1 %i.cs, label %.lr.ph252, label %._crit_edge, !llvm.loop !188

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cq, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !17
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !189

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.cw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !198 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !19, !noalias !199
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !18, !noalias !199
  %i.db = mul i64 %i.da, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db ; 2 uses
  %i.dd = icmp sgt i32 %i.e, 7
  br i1 %i.dd, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader228.loopexit:                           ; preds = %bb.c
  %i.dh = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.cw, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ex, %.preheader228.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dc, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ey, %.preheader228.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dh, %.preheader228.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ez, %.preheader228.loopexit ]
  %i.di = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.di, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %.preheader228
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3233 = phi ptr [ %i.f, %.lr.ph ], [ %i.ez, %bb.c ] ; 2 uses
  %.0110232 = phi i32 [ 0, %.lr.ph ], [ %i.fa, %bb.c ]
  %.0112231 = phi ptr [ %i.dc, %.lr.ph ], [ %i.ey, %bb.c ] ; 2 uses
  %.0114230 = phi ptr [ %i.cw, %.lr.ph ], [ %i.ex, %bb.c ] ; 2 uses
  %i.dl = load <8 x float>, ptr %.0114230, align 1, !tbaa !41
  %i.dm = load <8 x float>, ptr %.0112231, align 1, !tbaa !41
  %i.dn = load i32, ptr %i.de, align 4, !tbaa !37
  %i.do = sitofp fast i32 %i.dn to float
  %i.dp = insertelement <8 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.dr = fmul fast <8 x float> %i.dl, splat (float 5.000000e-01)
  %i.ds = fadd fast <8 x float> %i.dr, splat (float 5.000000e-01)
  %i.dt = fadd fast <8 x float> %i.dq, splat (float -1.000000e+00)
  %i.du = fmul fast <8 x float> %i.dt, %i.ds
  %i.dv = load i32, ptr %i.df, align 8, !tbaa !38
  %i.dw = sitofp fast i32 %i.dv to float
  %i.dx = insertelement <8 x float> poison, float %i.dw, i64 0
  %i.dy = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dz = fmul fast <8 x float> %i.dm, splat (float 5.000000e-01)
  %i.ea = fadd fast <8 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fadd fast <8 x float> %i.dy, splat (float -1.000000e+00)
  %i.ec = fmul fast <8 x float> %i.eb, %i.ea
  %i.ed = fadd fast <8 x float> %i.du, splat (float 5.000000e-01)
  %i.ee = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ed, i32 1) ; 3 uses
  %i.ef = fadd fast <8 x float> %i.ec, splat (float 5.000000e-01)
  %i.eg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ef, i32 1) ; 3 uses
  %i.eh = fcmp fast ogt <8 x float> %i.ee, splat (float -1.000000e+00)
  %i.ei = fcmp fast ogt <8 x float> %i.dq, %i.ee
  %i.ej = and <8 x i1> %i.eh, %i.ei
  %i.ek = fcmp fast ogt <8 x float> %i.eg, splat (float -1.000000e+00)
  %i.el = fcmp fast ogt <8 x float> %i.dy, %i.eg
  %i.em = and <8 x i1> %i.ek, %i.el
  %i.en = and <8 x i1> %i.ej, %i.em
  %i.eo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.dq, <8 x float> nofpclass(nan inf) %i.ee)
  %i.ep = load i32, ptr %i.dg, align 8, !tbaa !16
  %i.eq = sitofp fast i32 %i.ep to float
  %i.er = insertelement <8 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <8 x float> %i.er, <8 x float> poison, <8 x i32> zeroinitializer
  %i.et = fmul fast <8 x float> %i.es, %i.eo
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.et)
  %i.ev = bitcast <8 x i32> %i.eu to <8 x float>
  %i.ew = select <8 x i1> %i.en, <8 x float> %i.ev, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.ew, ptr %.3233, align 1, !tbaa !41
  %i.ex = getelementptr inbounds nuw i8, ptr %.0114230, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0112231, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.3233, i64 32 ; 2 uses
  %i.fa = add nuw nsw i32 %.0110232, 8            ; 2 uses
  %i.fb = or disjoint i32 %i.fa, 7
  %i.fc = icmp slt i32 %i.fb, %i.e
  br i1 %i.fc, label %bb.c, label %.preheader228.loopexit, !llvm.loop !194

bb.d:                                             ; preds = %.lr.ph241, %bb.f
  %.4240 = phi ptr [ %.3.lcssa, %.lr.ph241 ], [ %i.gh, %bb.f ] ; 2 uses
  %.1111239 = phi i32 [ %.0110.lcssa, %.lr.ph241 ], [ %i.gi, %bb.f ]
  %.1113238 = phi ptr [ %.0112.lcssa, %.lr.ph241 ], [ %i.gg, %bb.f ] ; 2 uses
  %.1115237 = phi ptr [ %.0114.lcssa, %.lr.ph241 ], [ %i.gf, %bb.f ] ; 2 uses
  %i.fd = load float, ptr %.1115237, align 4, !tbaa !44
  %i.fe = load float, ptr %.1113238, align 4, !tbaa !44
  %i.ff = load <2 x i32>, ptr %i.dj, align 4, !tbaa !23 ; 3 uses
  %i.fg = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.fe, i64 1
  %i.fi = fmul fast <2 x float> %i.fh, splat (float 5.000000e-01)
  %i.fj = fadd fast <2 x float> %i.fi, splat (float 5.000000e-01)
  %i.fk = add nsw <2 x i32> %i.ff, splat (i32 -1)
  %i.fl = sitofp <2 x i32> %i.fk to <2 x float>
  %i.fm = fmul fast <2 x float> %i.fj, %i.fl
  %i.fn = fadd fast <2 x float> %i.fm, splat (float 5.000000e-01)
  %i.fo = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fn)
  %i.fp = fptosi <2 x float> %i.fo to <2 x i32>   ; 3 uses
  %i.fq = extractelement <2 x i32> %i.fp, i64 0   ; 2 uses
  %i.fr = extractelement <2 x i32> %i.fp, i64 1   ; 2 uses
  %i.fs = or i32 %i.fr, %i.fq
  %i.ft = icmp sgt i32 %i.fs, -1
  %i.fu = icmp sgt <2 x i32> %i.ff, %i.fp         ; 2 uses
  %i.fv = extractelement <2 x i1> %i.fu, i64 0
  %i.fw = and i1 %i.fv, %i.ft
  %i.fx = extractelement <2 x i1> %i.fu, i64 1
  %i.fy = and i1 %i.fx, %i.fw
  br i1 %i.fy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fz = extractelement <2 x i32> %i.ff, i64 0
  %i.ga = mul nuw nsw i32 %i.fz, %i.fr
  %i.gb = add nsw i32 %i.ga, %i.fq
  %i.gc = load i32, ptr %i.dk, align 8, !tbaa !16
  %i.gd = mul nsw i32 %i.gc, %i.gb
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ge = phi i32 [ %i.gd, %bb.e ], [ -1, %bb.d ]
  store i32 %i.ge, ptr %.4240, align 4, !tbaa !23
  %i.gf = getelementptr inbounds nuw i8, ptr %.1115237, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.1113238, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.4240, i64 4
  %i.gi = add nuw nsw i32 %.1111239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gi, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !195

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader228, %.preheader227
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !213 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader233, label %_ZN4ncnn3MatD2Ev.exit121

.preheader233:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !214
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !214
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !214
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bp, %.lr.ph251 ]
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bq, %.lr.ph251 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph258, label %._crit_edge

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.bq, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.bp, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.br, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117249, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.aj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> zeroinitializer)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.aj)
  %i.al = load i32, ptr %i.o, align 8, !tbaa !38
  %i.am = sitofp fast i32 %i.al to float
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ap = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> splat (float -1.000000e+00))
  %i.ar = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ao, splat (float -1.000000e+00)
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.at)
  %i.av = fadd fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 3 uses
  %i.ax = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.ay = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ax, i32 1) ; 3 uses
  %i.az = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.aw
  %i.bb = and <8 x i1> %i.az, %i.ba
  %i.bc = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ao, %i.ay
  %i.be = and <8 x i1> %i.bc, %i.bd
  %i.bf = and <8 x i1> %i.bb, %i.be
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.aw)
  %i.bh = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bi = sitofp fast i32 %i.bh to float
  %i.bj = insertelement <8 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <8 x float> %i.bj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bl = fmul fast <8 x float> %i.bk, %i.bg
  %i.bm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = select <8 x i1> %i.bf, <8 x float> %i.bn, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bo, ptr %.1250, align 1, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.br = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.bs = or disjoint i32 %i.br, 15
  %i.bt = icmp slt i32 %i.bs, %i.e
  br i1 %i.bt, label %.lr.ph251, label %.preheader, !llvm.loop !204

.lr.ph258:                                        ; preds = %.preheader, %bb.b
  %.2257 = phi ptr [ %i.cx, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.cw, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.cy, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bu = load <2 x float>, ptr %.1118256, align 4, !tbaa !44
  %i.bv = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>   ; 2 uses
  %i.bx = fmul fast <2 x float> %i.bu, splat (float 5.000000e-01)
  %i.by = fadd fast <2 x float> %i.bx, splat (float 5.000000e-01)
  %i.bz = fmul fast <2 x float> %i.by, %i.bw
  %i.ca = fadd fast <2 x float> %i.bz, splat (float -5.000000e-01)
  %i.cb = fadd fast <2 x float> %i.bw, splat (float -1.000000e+00)
  %i.cc = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer)
  %i.cd = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cc, <2 x float> %i.cb)
  %i.ce = fadd fast <2 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ce)
  %i.cg = fptosi <2 x float> %i.cf to <2 x i32>   ; 3 uses
  %i.ch = extractelement <2 x i32> %i.cg, i64 0   ; 2 uses
  %i.ci = extractelement <2 x i32> %i.cg, i64 1   ; 2 uses
  %i.cj = or i32 %i.ci, %i.ch
  %i.ck = icmp sgt i32 %i.cj, -1
  %i.cl = icmp sgt <2 x i32> %i.bv, %i.cg         ; 2 uses
  %i.cm = extractelement <2 x i1> %i.cl, i64 0
  %i.cn = and i1 %i.cm, %i.ck
  %i.co = extractelement <2 x i1> %i.cl, i64 1
  %i.cp = and i1 %i.co, %i.cn
  br i1 %i.cp, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.cq = extractelement <2 x i32> %i.bv, i64 0
  %i.cr = mul nuw nsw i32 %i.cq, %i.ci
  %i.cs = add nsw i32 %i.cr, %i.ch
  %i.ct = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cu = mul nsw i32 %i.ct, %i.cs
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.cv = phi i32 [ %i.cu, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.cv, ptr %.2257, align 4, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.cy = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.e
  br i1 %i.cz, label %.lr.ph258, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cx, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.h, align 8, !tbaa !17
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !206

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dd = load ptr, ptr %1, align 8, !tbaa !20, !noalias !215 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !19, !noalias !216
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !18, !noalias !216
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.di ; 2 uses
  %i.dk = icmp sgt i32 %i.e, 7
  br i1 %i.dk, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.do = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dd, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fi, %.preheader234.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dj, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fj, %.preheader234.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.do, %.preheader234.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fk, %.preheader234.loopexit ]
  %i.dp = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dp, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.preheader234
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fk, %bb.c ] ; 2 uses
  %.0110238 = phi i32 [ 0, %.lr.ph ], [ %i.fl, %bb.c ]
  %.0112237 = phi ptr [ %i.dj, %.lr.ph ], [ %i.fj, %bb.c ] ; 2 uses
  %.0114236 = phi ptr [ %i.dd, %.lr.ph ], [ %i.fi, %bb.c ] ; 2 uses
  %i.ds = load <8 x float>, ptr %.0114236, align 1, !tbaa !41
  %i.dt = load <8 x float>, ptr %.0112237, align 1, !tbaa !41
  %i.du = load i32, ptr %i.dl, align 4, !tbaa !37
  %i.dv = sitofp fast i32 %i.du to float
  %i.dw = insertelement <8 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <8 x float> %i.dw, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.dy = fadd fast <8 x float> %i.ds, splat (float 1.000000e+00)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.dx, <8 x float> splat (float -1.000000e+00))
  %i.ea = fmul fast <8 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fadd fast <8 x float> %i.dx, splat (float -1.000000e+00)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> zeroinitializer)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ec)
  %i.ee = load i32, ptr %i.dm, align 8, !tbaa !38
  %i.ef = sitofp fast i32 %i.ee to float
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ei = fadd fast <8 x float> %i.dt, splat (float 1.000000e+00)
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ei, <8 x float> nofpclass(nan inf) %i.eh, <8 x float> splat (float -1.000000e+00))
  %i.ek = fmul fast <8 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fadd fast <8 x float> %i.eh, splat (float -1.000000e+00)
  %i.em = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> zeroinitializer)
  %i.en = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.em)
  %i.eo = fadd fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.ep = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eo, i32 1) ; 3 uses
  %i.eq = fadd fast <8 x float> %i.en, splat (float 5.000000e-01)
  %i.er = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eq, i32 1) ; 3 uses
  %i.es = fcmp fast ogt <8 x float> %i.ep, splat (float -1.000000e+00)
  %i.et = fcmp fast ogt <8 x float> %i.dx, %i.ep
  %i.eu = and <8 x i1> %i.es, %i.et
  %i.ev = fcmp fast ogt <8 x float> %i.er, splat (float -1.000000e+00)
  %i.ew = fcmp fast ogt <8 x float> %i.eh, %i.er
  %i.ex = and <8 x i1> %i.ev, %i.ew
  %i.ey = and <8 x i1> %i.eu, %i.ex
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.ep)
  %i.fa = load i32, ptr %i.dn, align 8, !tbaa !16
  %i.fb = sitofp fast i32 %i.fa to float
  %i.fc = insertelement <8 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <8 x float> %i.fc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fe = fmul fast <8 x float> %i.fd, %i.ez
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fe)
  %i.fg = bitcast <8 x i32> %i.ff to <8 x float>
  %i.fh = select <8 x i1> %i.ey, <8 x float> %i.fg, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fh, ptr %.3239, align 1, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %.0114236, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0112237, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.3239, i64 32 ; 2 uses
  %i.fl = add nuw nsw i32 %.0110238, 8            ; 2 uses
  %i.fm = or disjoint i32 %i.fl, 7
  %i.fn = icmp slt i32 %i.fm, %i.e
  br i1 %i.fn, label %bb.c, label %.preheader234.loopexit, !llvm.loop !211

bb.d:                                             ; preds = %.lr.ph247, %bb.f
  %.4246 = phi ptr [ %.3.lcssa, %.lr.ph247 ], [ %i.gv, %bb.f ] ; 2 uses
  %.1111245 = phi i32 [ %.0110.lcssa, %.lr.ph247 ], [ %i.gw, %bb.f ]
  %.1113244 = phi ptr [ %.0112.lcssa, %.lr.ph247 ], [ %i.gu, %bb.f ] ; 2 uses
  %.1115243 = phi ptr [ %.0114.lcssa, %.lr.ph247 ], [ %i.gt, %bb.f ] ; 2 uses
  %i.fo = load float, ptr %.1115243, align 4, !tbaa !44
  %i.fp = load float, ptr %.1113244, align 4, !tbaa !44
  %i.fq = load <2 x i32>, ptr %i.dq, align 4, !tbaa !23 ; 3 uses
  %i.fr = sitofp <2 x i32> %i.fq to <2 x float>   ; 2 uses
  %i.fs = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fp, i64 1
  %i.fu = fmul fast <2 x float> %i.ft, splat (float 5.000000e-01)
  %i.fv = fadd fast <2 x float> %i.fu, splat (float 5.000000e-01)
  %i.fw = fmul fast <2 x float> %i.fv, %i.fr
  %i.fx = fadd fast <2 x float> %i.fw, splat (float -5.000000e-01)
  %i.fy = fadd fast <2 x float> %i.fr, splat (float -1.000000e+00)
  %i.fz = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fx, <2 x float> zeroinitializer)
  %i.ga = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fz, <2 x float> %i.fy)
  %i.gb = fadd fast <2 x float> %i.ga, splat (float 5.000000e-01)
  %i.gc = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gb)
  %i.gd = fptosi <2 x float> %i.gc to <2 x i32>   ; 3 uses
  %i.ge = extractelement <2 x i32> %i.gd, i64 0   ; 2 uses
  %i.gf = extractelement <2 x i32> %i.gd, i64 1   ; 2 uses
  %i.gg = or i32 %i.gf, %i.ge
  %i.gh = icmp sgt i32 %i.gg, -1
  %i.gi = icmp sgt <2 x i32> %i.fq, %i.gd         ; 2 uses
  %i.gj = extractelement <2 x i1> %i.gi, i64 0
  %i.gk = and i1 %i.gj, %i.gh
  %i.gl = extractelement <2 x i1> %i.gi, i64 1
  %i.gm = and i1 %i.gl, %i.gk
  br i1 %i.gm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gn = extractelement <2 x i32> %i.fq, i64 0
  %i.go = mul nuw nsw i32 %i.gn, %i.gf
  %i.gp = add nsw i32 %i.go, %i.ge
  %i.gq = load i32, ptr %i.dr, align 8, !tbaa !16
  %i.gr = mul nsw i32 %i.gq, %i.gp
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gs = phi i32 [ %i.gr, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gs, ptr %.4246, align 4, !tbaa !23
  %i.gt = getelementptr inbounds nuw i8, ptr %.1115243, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %.1113244, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.4246, i64 4
  %i.gw = add nuw nsw i32 %.1111245, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !212

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader234, %.preheader233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !230 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader233, label %_ZN4ncnn3MatD2Ev.exit121

.preheader233:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !231
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !231
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !231
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bp, %.lr.ph251 ]
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bq, %.lr.ph251 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph258, label %._crit_edge

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.bq, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.bp, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.br, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117249, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> zeroinitializer)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.aj)
  %i.al = load i32, ptr %i.o, align 8, !tbaa !38
  %i.am = sitofp fast i32 %i.al to float
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.ao, splat (float -1.000000e+00) ; 2 uses
  %i.as = fmul fast <8 x float> %i.ar, %i.aq
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.at)
  %i.av = fadd fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 3 uses
  %i.ax = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.ay = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ax, i32 1) ; 3 uses
  %i.az = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.aw
  %i.bb = and <8 x i1> %i.az, %i.ba
  %i.bc = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ao, %i.ay
  %i.be = and <8 x i1> %i.bc, %i.bd
  %i.bf = and <8 x i1> %i.bb, %i.be
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.aw)
  %i.bh = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bi = sitofp fast i32 %i.bh to float
  %i.bj = insertelement <8 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <8 x float> %i.bj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bl = fmul fast <8 x float> %i.bk, %i.bg
  %i.bm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = select <8 x i1> %i.bf, <8 x float> %i.bn, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bo, ptr %.1250, align 1, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.br = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.bs = or disjoint i32 %i.br, 15
  %i.bt = icmp slt i32 %i.bs, %i.e
  br i1 %i.bt, label %.lr.ph251, label %.preheader, !llvm.loop !221

.lr.ph258:                                        ; preds = %.preheader, %bb.b
  %.2257 = phi ptr [ %i.cy, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.cx, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.cz, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bu = load <2 x float>, ptr %.1118256, align 4, !tbaa !44
  %i.bv = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.bw = fmul fast <2 x float> %i.bu, splat (float 5.000000e-01)
  %i.bx = fadd fast <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = add nsw <2 x i32> %i.bv, splat (i32 -1)
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = fmul fast <2 x float> %i.bx, %i.bz
  %i.cb = sitofp <2 x i32> %i.bv to <2 x float>
  %i.cc = fadd fast <2 x float> %i.cb, splat (float -1.000000e+00)
  %i.cd = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer)
  %i.ce = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cd, <2 x float> %i.cc)
  %i.cf = fadd fast <2 x float> %i.ce, splat (float 5.000000e-01)
  %i.cg = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cf)
  %i.ch = fptosi <2 x float> %i.cg to <2 x i32>   ; 3 uses
  %i.ci = extractelement <2 x i32> %i.ch, i64 0   ; 2 uses
  %i.cj = extractelement <2 x i32> %i.ch, i64 1   ; 2 uses
  %i.ck = or i32 %i.cj, %i.ci
  %i.cl = icmp sgt i32 %i.ck, -1
  %i.cm = icmp sgt <2 x i32> %i.bv, %i.ch         ; 2 uses
  %i.cn = extractelement <2 x i1> %i.cm, i64 0
  %i.co = and i1 %i.cn, %i.cl
  %i.cp = extractelement <2 x i1> %i.cm, i64 1
  %i.cq = and i1 %i.cp, %i.co
  br i1 %i.cq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.cr = extractelement <2 x i32> %i.bv, i64 0
  %i.cs = mul nuw nsw i32 %i.cr, %i.cj
  %i.ct = add nsw i32 %i.cs, %i.ci
  %i.cu = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cv = mul nsw i32 %i.cu, %i.ct
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.cw = phi i32 [ %i.cv, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.cw, ptr %.2257, align 4, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.cz = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.e
  br i1 %i.da, label %.lr.ph258, label %._crit_edge, !llvm.loop !222

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cy, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !223

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.de = load ptr, ptr %1, align 8, !tbaa !20, !noalias !232 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !19, !noalias !233
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !18, !noalias !233
  %i.dj = mul i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj ; 2 uses
  %i.dl = icmp sgt i32 %i.e, 7
  br i1 %i.dl, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.dp = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.de, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fj, %.preheader234.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dk, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fk, %.preheader234.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dp, %.preheader234.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fl, %.preheader234.loopexit ]
  %i.dq = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dq, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.preheader234
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fl, %bb.c ] ; 2 uses
  %.0110238 = phi i32 [ 0, %.lr.ph ], [ %i.fm, %bb.c ]
  %.0112237 = phi ptr [ %i.dk, %.lr.ph ], [ %i.fk, %bb.c ] ; 2 uses
  %.0114236 = phi ptr [ %i.de, %.lr.ph ], [ %i.fj, %bb.c ] ; 2 uses
  %i.dt = load <8 x float>, ptr %.0114236, align 1, !tbaa !41
  %i.du = load <8 x float>, ptr %.0112237, align 1, !tbaa !41
  %i.dv = load i32, ptr %i.dm, align 4, !tbaa !37
  %i.dw = sitofp fast i32 %i.dv to float
  %i.dx = insertelement <8 x float> poison, float %i.dw, i64 0
  %i.dy = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.dz = fmul fast <8 x float> %i.dt, splat (float 5.000000e-01)
  %i.ea = fadd fast <8 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fadd fast <8 x float> %i.dy, splat (float -1.000000e+00) ; 2 uses
  %i.ec = fmul fast <8 x float> %i.eb, %i.ea
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> zeroinitializer)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ed)
  %i.ef = load i32, ptr %i.dn, align 8, !tbaa !38
  %i.eg = sitofp fast i32 %i.ef to float
  %i.eh = insertelement <8 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <8 x float> %i.eh, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ej = fmul fast <8 x float> %i.du, splat (float 5.000000e-01)
  %i.ek = fadd fast <8 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fadd fast <8 x float> %i.ei, splat (float -1.000000e+00) ; 2 uses
  %i.em = fmul fast <8 x float> %i.el, %i.ek
  %i.en = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.em, <8 x float> zeroinitializer)
  %i.eo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.en)
  %i.ep = fadd fast <8 x float> %i.ee, splat (float 5.000000e-01)
  %i.eq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ep, i32 1) ; 3 uses
  %i.er = fadd fast <8 x float> %i.eo, splat (float 5.000000e-01)
  %i.es = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.er, i32 1) ; 3 uses
  %i.et = fcmp fast ogt <8 x float> %i.eq, splat (float -1.000000e+00)
  %i.eu = fcmp fast ogt <8 x float> %i.dy, %i.eq
  %i.ev = and <8 x i1> %i.et, %i.eu
  %i.ew = fcmp fast ogt <8 x float> %i.es, splat (float -1.000000e+00)
  %i.ex = fcmp fast ogt <8 x float> %i.ei, %i.es
  %i.ey = and <8 x i1> %i.ew, %i.ex
  %i.ez = and <8 x i1> %i.ev, %i.ey
  %i.fa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.es, <8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.eq)
  %i.fb = load i32, ptr %i.do, align 8, !tbaa !16
  %i.fc = sitofp fast i32 %i.fb to float
  %i.fd = insertelement <8 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ff = fmul fast <8 x float> %i.fe, %i.fa
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ff)
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>
  %i.fi = select <8 x i1> %i.ez, <8 x float> %i.fh, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fi, ptr %.3239, align 1, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %.0114236, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0112237, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.3239, i64 32 ; 2 uses
  %i.fm = add nuw nsw i32 %.0110238, 8            ; 2 uses
  %i.fn = or disjoint i32 %i.fm, 7
  %i.fo = icmp slt i32 %i.fn, %i.e
  br i1 %i.fo, label %bb.c, label %.preheader234.loopexit, !llvm.loop !228

bb.d:                                             ; preds = %.lr.ph247, %bb.f
  %.4246 = phi ptr [ %.3.lcssa, %.lr.ph247 ], [ %i.gx, %bb.f ] ; 2 uses
  %.1111245 = phi i32 [ %.0110.lcssa, %.lr.ph247 ], [ %i.gy, %bb.f ]
  %.1113244 = phi ptr [ %.0112.lcssa, %.lr.ph247 ], [ %i.gw, %bb.f ] ; 2 uses
  %.1115243 = phi ptr [ %.0114.lcssa, %.lr.ph247 ], [ %i.gv, %bb.f ] ; 2 uses
  %i.fp = load float, ptr %.1115243, align 4, !tbaa !44
  %i.fq = load float, ptr %.1113244, align 4, !tbaa !44
  %i.fr = load <2 x i32>, ptr %i.dr, align 4, !tbaa !23 ; 4 uses
  %i.fs = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fq, i64 1
  %i.fu = fmul fast <2 x float> %i.ft, splat (float 5.000000e-01)
  %i.fv = fadd fast <2 x float> %i.fu, splat (float 5.000000e-01)
  %i.fw = add nsw <2 x i32> %i.fr, splat (i32 -1)
  %i.fx = sitofp <2 x i32> %i.fw to <2 x float>
  %i.fy = fmul fast <2 x float> %i.fv, %i.fx
  %i.fz = sitofp <2 x i32> %i.fr to <2 x float>
  %i.ga = fadd fast <2 x float> %i.fz, splat (float -1.000000e+00)
  %i.gb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fy, <2 x float> zeroinitializer)
  %i.gc = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gb, <2 x float> %i.ga)
  %i.gd = fadd fast <2 x float> %i.gc, splat (float 5.000000e-01)
  %i.ge = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gd)
  %i.gf = fptosi <2 x float> %i.ge to <2 x i32>   ; 3 uses
  %i.gg = extractelement <2 x i32> %i.gf, i64 0   ; 2 uses
  %i.gh = extractelement <2 x i32> %i.gf, i64 1   ; 2 uses
  %i.gi = or i32 %i.gh, %i.gg
  %i.gj = icmp sgt i32 %i.gi, -1
  %i.gk = icmp sgt <2 x i32> %i.fr, %i.gf         ; 2 uses
  %i.gl = extractelement <2 x i1> %i.gk, i64 0
  %i.gm = and i1 %i.gl, %i.gj
  %i.gn = extractelement <2 x i1> %i.gk, i64 1
  %i.go = and i1 %i.gn, %i.gm
  br i1 %i.go, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gp = extractelement <2 x i32> %i.fr, i64 0
  %i.gq = mul nuw nsw i32 %i.gp, %i.gh
  %i.gr = add nsw i32 %i.gq, %i.gg
  %i.gs = load i32, ptr %i.ds, align 8, !tbaa !16
  %i.gt = mul nsw i32 %i.gs, %i.gr
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gu = phi i32 [ %i.gt, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gu, ptr %.4246, align 4, !tbaa !23
  %i.gv = getelementptr inbounds nuw i8, ptr %.1115243, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %.1113244, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.4246, i64 4
  %i.gy = add nuw nsw i32 %.1111245, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !229

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader234, %.preheader233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !247 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader240, label %_ZN4ncnn3MatD2Ev.exit121

.preheader240:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader240
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0268 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !248
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !248
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !248
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph258, label %.preheader

.preheader:                                       ; preds = %.lr.ph258, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph258 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.cb, %.lr.ph258 ]
  %.1.lcssa = phi ptr [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.cc, %.lr.ph258 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph265, label %._crit_edge

.lr.ph258:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph258
  %.1257 = phi ptr [ %i.cc, %.lr.ph258 ], [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117256 = phi ptr [ %i.cb, %.lr.ph258 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119255 = phi i32 [ %i.cd, %.lr.ph258 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117256, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117256, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.aj = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01)
  %i.ak = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aj)
  %i.al = fsub fast <8 x float> %i.ak, %i.ae
  %i.am = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.al)
  %i.an = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01)
  %i.ao = fsub fast <8 x float> %i.an, %i.am
  %i.ap = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> zeroinitializer)
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.ap)
  %i.ar = load i32, ptr %i.o, align 8, !tbaa !38
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = insertelement <8 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <8 x float> %i.at, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.av = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float -1.000000e+00))
  %i.ax = fmul fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.au, splat (float -1.000000e+00)
  %i.az = fadd fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az)
  %i.bb = fsub fast <8 x float> %i.ba, %i.au
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fadd fast <8 x float> %i.au, splat (float -5.000000e-01)
  %i.be = fsub fast <8 x float> %i.bd, %i.bc
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> zeroinitializer)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.bf)
  %i.bh = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 3 uses
  %i.bj = fadd fast <8 x float> %i.bg, splat (float 5.000000e-01)
  %i.bk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bj, i32 1) ; 3 uses
  %i.bl = fcmp fast ogt <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bm = fcmp fast ogt <8 x float> %i.ae, %i.bi
  %i.bn = and <8 x i1> %i.bl, %i.bm
  %i.bo = fcmp fast ogt <8 x float> %i.bk, splat (float -1.000000e+00)
  %i.bp = fcmp fast ogt <8 x float> %i.au, %i.bk
  %i.bq = and <8 x i1> %i.bo, %i.bp
  %i.br = and <8 x i1> %i.bn, %i.bq
  %i.bs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bu = sitofp fast i32 %i.bt to float
  %i.bv = insertelement <8 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bx = fmul fast <8 x float> %i.bw, %i.bs
  %i.by = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = bitcast <8 x i32> %i.by to <8 x float>
  %i.ca = select <8 x i1> %i.br, <8 x float> %i.bz, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.ca, ptr %.1257, align 1, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %.0117256, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1257, i64 32 ; 2 uses
  %i.cd = add nuw nsw i32 %.0119255, 16           ; 2 uses
  %i.ce = or disjoint i32 %i.cd, 15
  %i.cf = icmp slt i32 %i.ce, %i.e
  br i1 %i.cf, label %.lr.ph258, label %.preheader, !llvm.loop !238

.lr.ph265:                                        ; preds = %.preheader, %bb.b
  %.2264 = phi ptr [ %i.dn, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118263 = phi ptr [ %i.dm, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120262 = phi i32 [ %i.do, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.cg = load <2 x float>, ptr %.1118263, align 4, !tbaa !44
  %i.ch = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.ci = sitofp <2 x i32> %i.ch to <2 x float>   ; 4 uses
  %i.cj = fmul fast <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ck = fadd fast <2 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = fmul fast <2 x float> %i.ck, %i.ci
  %i.cm = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cl)
  %i.cn = fsub fast <2 x float> %i.cm, %i.ci
  %i.co = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cn)
  %i.cp = fadd fast <2 x float> %i.ci, splat (float -5.000000e-01)
  %i.cq = fsub fast <2 x float> %i.cp, %i.co
  %i.cr = fadd fast <2 x float> %i.ci, splat (float -1.000000e+00)
  %i.cs = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cq, <2 x float> zeroinitializer)
  %i.ct = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cs, <2 x float> %i.cr)
  %i.cu = fadd fast <2 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cu)
  %i.cw = fptosi <2 x float> %i.cv to <2 x i32>   ; 3 uses
  %i.cx = extractelement <2 x i32> %i.cw, i64 0   ; 2 uses
  %i.cy = extractelement <2 x i32> %i.cw, i64 1   ; 2 uses
  %i.cz = or i32 %i.cy, %i.cx
  %i.da = icmp sgt i32 %i.cz, -1
  %i.db = icmp sgt <2 x i32> %i.ch, %i.cw         ; 2 uses
  %i.dc = extractelement <2 x i1> %i.db, i64 0
  %i.dd = and i1 %i.dc, %i.da
  %i.de = extractelement <2 x i1> %i.db, i64 1
  %i.df = and i1 %i.de, %i.dd
  br i1 %i.df, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph265
  %i.dg = extractelement <2 x i32> %i.ch, i64 0
  %i.dh = mul nuw nsw i32 %i.dg, %i.cy
  %i.di = add nsw i32 %i.dh, %i.cx
  %i.dj = load i32, ptr %i.p, align 8, !tbaa !16
  %i.dk = mul nsw i32 %i.dj, %i.di
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph265, %bb.a
  %i.dl = phi i32 [ %i.dk, %bb.a ], [ -1, %.lr.ph265 ]
  store i32 %i.dl, ptr %.2264, align 4, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %.1118263, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.2264, i64 4 ; 2 uses
  %i.do = add nuw nsw i32 %.1120262, 2            ; 2 uses
  %i.dp = icmp slt i32 %i.do, %i.e
  br i1 %i.dp, label %.lr.ph265, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dn, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !240

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !249 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !19, !noalias !250
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !18, !noalias !250
  %i.dy = mul i64 %i.dx, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = icmp sgt i32 %i.e, 7
  br i1 %i.ea, label %.lr.ph, label %.preheader241

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader241.loopexit:                           ; preds = %bb.c
  %i.ee = and i32 %i.e, 2147483640
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader241.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dt, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gk, %.preheader241.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dz, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gl, %.preheader241.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ee, %.preheader241.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gm, %.preheader241.loopexit ]
  %i.ef = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ef, label %.lr.ph254, label %.loopexit

.lr.ph254:                                        ; preds = %.preheader241
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3246 = phi ptr [ %i.f, %.lr.ph ], [ %i.gm, %bb.c ] ; 2 uses
  %.0110245 = phi i32 [ 0, %.lr.ph ], [ %i.gn, %bb.c ]
  %.0112244 = phi ptr [ %i.dz, %.lr.ph ], [ %i.gl, %bb.c ] ; 2 uses
  %.0114243 = phi ptr [ %i.dt, %.lr.ph ], [ %i.gk, %bb.c ] ; 2 uses
  %i.ei = load <8 x float>, ptr %.0114243, align 1, !tbaa !41
  %i.ej = load <8 x float>, ptr %.0112244, align 1, !tbaa !41
  %i.ek = load i32, ptr %i.eb, align 4, !tbaa !37
  %i.el = sitofp fast i32 %i.ek to float
  %i.em = insertelement <8 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.eo = fadd fast <8 x float> %i.ei, splat (float 1.000000e+00)
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> nofpclass(nan inf) %i.en, <8 x float> splat (float -1.000000e+00))
  %i.eq = fmul fast <8 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fadd fast <8 x float> %i.en, splat (float -1.000000e+00)
  %i.es = fadd fast <8 x float> %i.eq, splat (float 5.000000e-01)
  %i.et = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.es)
  %i.eu = fsub fast <8 x float> %i.et, %i.en
  %i.ev = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eu)
  %i.ew = fadd fast <8 x float> %i.en, splat (float -5.000000e-01)
  %i.ex = fsub fast <8 x float> %i.ew, %i.ev
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> zeroinitializer)
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.ey)
  %i.fa = load i32, ptr %i.ec, align 8, !tbaa !38
  %i.fb = sitofp fast i32 %i.fa to float
  %i.fc = insertelement <8 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <8 x float> %i.fc, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.fe = fadd fast <8 x float> %i.ej, splat (float 1.000000e+00)
  %i.ff = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float -1.000000e+00))
  %i.fg = fmul fast <8 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = fadd fast <8 x float> %i.fd, splat (float -1.000000e+00)
  %i.fi = fadd fast <8 x float> %i.fg, splat (float 5.000000e-01)
  %i.fj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fi)
  %i.fk = fsub fast <8 x float> %i.fj, %i.fd
  %i.fl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fk)
  %i.fm = fadd fast <8 x float> %i.fd, splat (float -5.000000e-01)
  %i.fn = fsub fast <8 x float> %i.fm, %i.fl
  %i.fo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> zeroinitializer)
  %i.fp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fo)
  %i.fq = fadd fast <8 x float> %i.ez, splat (float 5.000000e-01)
  %i.fr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fq, i32 1) ; 3 uses
  %i.fs = fadd fast <8 x float> %i.fp, splat (float 5.000000e-01)
  %i.ft = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fs, i32 1) ; 3 uses
  %i.fu = fcmp fast ogt <8 x float> %i.fr, splat (float -1.000000e+00)
  %i.fv = fcmp fast ogt <8 x float> %i.en, %i.fr
  %i.fw = and <8 x i1> %i.fu, %i.fv
  %i.fx = fcmp fast ogt <8 x float> %i.ft, splat (float -1.000000e+00)
  %i.fy = fcmp fast ogt <8 x float> %i.fd, %i.ft
  %i.fz = and <8 x i1> %i.fx, %i.fy
  %i.ga = and <8 x i1> %i.fw, %i.fz
  %i.gb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.en, <8 x float> nofpclass(nan inf) %i.fr)
  %i.gc = load i32, ptr %i.ed, align 8, !tbaa !16
  %i.gd = sitofp fast i32 %i.gc to float
  %i.ge = insertelement <8 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gg = fmul fast <8 x float> %i.gf, %i.gb
  %i.gh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gg)
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>
  %i.gj = select <8 x i1> %i.ga, <8 x float> %i.gi, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.gj, ptr %.3246, align 1, !tbaa !41
  %i.gk = getelementptr inbounds nuw i8, ptr %.0114243, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0112244, i64 32 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.3246, i64 32 ; 2 uses
  %i.gn = add nuw nsw i32 %.0110245, 8            ; 2 uses
  %i.go = or disjoint i32 %i.gn, 7
  %i.gp = icmp slt i32 %i.go, %i.e
  br i1 %i.gp, label %bb.c, label %.preheader241.loopexit, !llvm.loop !245

bb.d:                                             ; preds = %.lr.ph254, %bb.f
  %.4253 = phi ptr [ %.3.lcssa, %.lr.ph254 ], [ %i.ib, %bb.f ] ; 2 uses
  %.1111252 = phi i32 [ %.0110.lcssa, %.lr.ph254 ], [ %i.ic, %bb.f ]
  %.1113251 = phi ptr [ %.0112.lcssa, %.lr.ph254 ], [ %i.ia, %bb.f ] ; 2 uses
  %.1115250 = phi ptr [ %.0114.lcssa, %.lr.ph254 ], [ %i.hz, %bb.f ] ; 2 uses
  %i.gq = load float, ptr %.1115250, align 4, !tbaa !44
  %i.gr = load float, ptr %.1113251, align 4, !tbaa !44
  %i.gs = load <2 x i32>, ptr %i.eg, align 4, !tbaa !23 ; 3 uses
  %i.gt = sitofp <2 x i32> %i.gs to <2 x float>   ; 4 uses
  %i.gu = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gr, i64 1
  %i.gw = fmul fast <2 x float> %i.gv, splat (float 5.000000e-01)
  %i.gx = fadd fast <2 x float> %i.gw, splat (float 5.000000e-01)
  %i.gy = fmul fast <2 x float> %i.gx, %i.gt
  %i.gz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gy)
  %i.ha = fsub fast <2 x float> %i.gz, %i.gt
  %i.hb = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ha)
  %i.hc = fadd fast <2 x float> %i.gt, splat (float -5.000000e-01)
  %i.hd = fsub fast <2 x float> %i.hc, %i.hb
  %i.he = fadd fast <2 x float> %i.gt, splat (float -1.000000e+00)
  %i.hf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hd, <2 x float> zeroinitializer)
  %i.hg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hf, <2 x float> %i.he)
  %i.hh = fadd fast <2 x float> %i.hg, splat (float 5.000000e-01)
  %i.hi = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.hh)
  %i.hj = fptosi <2 x float> %i.hi to <2 x i32>   ; 3 uses
  %i.hk = extractelement <2 x i32> %i.hj, i64 0   ; 2 uses
  %i.hl = extractelement <2 x i32> %i.hj, i64 1   ; 2 uses
  %i.hm = or i32 %i.hl, %i.hk
  %i.hn = icmp sgt i32 %i.hm, -1
  %i.ho = icmp sgt <2 x i32> %i.gs, %i.hj         ; 2 uses
  %i.hp = extractelement <2 x i1> %i.ho, i64 0
  %i.hq = and i1 %i.hp, %i.hn
  %i.hr = extractelement <2 x i1> %i.ho, i64 1
  %i.hs = and i1 %i.hr, %i.hq
  br i1 %i.hs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ht = extractelement <2 x i32> %i.gs, i64 0
  %i.hu = mul nuw nsw i32 %i.ht, %i.hl
  %i.hv = add nsw i32 %i.hu, %i.hk
  %i.hw = load i32, ptr %i.eh, align 8, !tbaa !16
  %i.hx = mul nsw i32 %i.hw, %i.hv
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.hy = phi i32 [ %i.hx, %bb.e ], [ -1, %bb.d ]
  store i32 %i.hy, ptr %.4253, align 4, !tbaa !23
  %i.hz = getelementptr inbounds nuw i8, ptr %.1115250, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %.1113251, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %.4253, i64 4
  %i.ic = add nuw nsw i32 %.1111252, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ic, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !246

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader241, %.preheader240
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !264 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader236, label %_ZN4ncnn3MatD2Ev.exit121

.preheader236:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader236
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0264 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !265
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !265
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !265
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph254, label %.preheader

.preheader:                                       ; preds = %.lr.ph254, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph254 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bt, %.lr.ph254 ]
  %.1.lcssa = phi ptr [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bu, %.lr.ph254 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph261, label %._crit_edge

.lr.ph254:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph254
  %.1253 = phi ptr [ %i.bu, %.lr.ph254 ], [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117252 = phi ptr [ %i.bt, %.lr.ph254 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119251 = phi i32 [ %i.bv, %.lr.ph254 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117252, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117252, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ak = fsub fast <8 x float> %i.aj, %i.ah
  %i.al = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ak)
  %i.am = load i32, ptr %i.o, align 8, !tbaa !38
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aq = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ap, splat (float -1.000000e+00) ; 2 uses
  %i.at = fmul fast <8 x float> %i.as, %i.ar
  %i.au = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.at)
  %i.av = fsub fast <8 x float> %i.au, %i.as
  %i.aw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.av)
  %i.ax = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01)
  %i.ay = fsub fast <8 x float> %i.ax, %i.al
  %i.az = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 3 uses
  %i.ba = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01)
  %i.bb = fsub fast <8 x float> %i.ba, %i.aw
  %i.bc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 3 uses
  %i.bd = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bf = and <8 x i1> %i.bd, %i.be
  %i.bg = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ap, %i.bc
  %i.bi = and <8 x i1> %i.bg, %i.bh
  %i.bj = and <8 x i1> %i.bf, %i.bi
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> nofpclass(nan inf) %i.az)
  %i.bl = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bm = sitofp fast i32 %i.bl to float
  %i.bn = insertelement <8 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <8 x float> %i.bn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bp = fmul fast <8 x float> %i.bo, %i.bk
  %i.bq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bp)
  %i.br = bitcast <8 x i32> %i.bq to <8 x float>
  %i.bs = select <8 x i1> %i.bj, <8 x float> %i.br, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bs, ptr %.1253, align 1, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %.0117252, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1253, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.0119251, 16           ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 15
  %i.bx = icmp slt i32 %i.bw, %i.e
  br i1 %i.bx, label %.lr.ph254, label %.preheader, !llvm.loop !255

.lr.ph261:                                        ; preds = %.preheader, %bb.b
  %.2260 = phi ptr [ %i.dg, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118259 = phi ptr [ %i.df, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120258 = phi i32 [ %i.dh, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.by = load <2 x float>, ptr %.1118259, align 4, !tbaa !44
  %i.bz = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.ca = fmul fast <2 x float> %i.by, splat (float 5.000000e-01)
  %i.cb = fadd fast <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = add nsw <2 x i32> %i.bz, splat (i32 -1)
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 3 uses
  %i.ce = fmul fast <2 x float> %i.cb, %i.cd
  %i.cf = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ce)
  %i.cg = fsub fast <2 x float> %i.cf, %i.cd
  %i.ch = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cg)
  %i.ci = fsub fast <2 x float> %i.cd, %i.ch
  %i.cj = sitofp <2 x i32> %i.bz to <2 x float>
  %i.ck = fadd fast <2 x float> %i.cj, splat (float -1.000000e+00)
  %i.cl = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ci, <2 x float> zeroinitializer)
  %i.cm = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cl, <2 x float> %i.ck)
  %i.cn = fadd fast <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cn)
  %i.cp = fptosi <2 x float> %i.co to <2 x i32>   ; 3 uses
  %i.cq = extractelement <2 x i32> %i.cp, i64 0   ; 2 uses
  %i.cr = extractelement <2 x i32> %i.cp, i64 1   ; 2 uses
  %i.cs = or i32 %i.cr, %i.cq
  %i.ct = icmp sgt i32 %i.cs, -1
  %i.cu = icmp sgt <2 x i32> %i.bz, %i.cp         ; 2 uses
  %i.cv = extractelement <2 x i1> %i.cu, i64 0
  %i.cw = and i1 %i.cv, %i.ct
  %i.cx = extractelement <2 x i1> %i.cu, i64 1
  %i.cy = and i1 %i.cx, %i.cw
  br i1 %i.cy, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph261
  %i.cz = extractelement <2 x i32> %i.bz, i64 0
  %i.da = mul nuw nsw i32 %i.cz, %i.cr
  %i.db = add nsw i32 %i.da, %i.cq
  %i.dc = load i32, ptr %i.p, align 8, !tbaa !16
  %i.dd = mul nsw i32 %i.dc, %i.db
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph261, %bb.a
  %i.de = phi i32 [ %i.dd, %bb.a ], [ -1, %.lr.ph261 ]
  store i32 %i.de, ptr %.2260, align 4, !tbaa !23
  %i.df = getelementptr inbounds nuw i8, ptr %.1118259, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.2260, i64 4 ; 2 uses
  %i.dh = add nuw nsw i32 %.1120258, 2            ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.e
  br i1 %i.di, label %.lr.ph261, label %._crit_edge, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dg, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !257

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dm = load ptr, ptr %1, align 8, !tbaa !20, !noalias !266 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !19, !noalias !267
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !18, !noalias !267
  %i.dr = mul i64 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dr ; 2 uses
  %i.dt = icmp sgt i32 %i.e, 7
  br i1 %i.dt, label %.lr.ph, label %.preheader237

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader237.loopexit:                           ; preds = %bb.c
  %i.dx = and i32 %i.e, 2147483640
  br label %.preheader237

.preheader237:                                    ; preds = %.preheader237.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dm, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fv, %.preheader237.loopexit ]
  %.0112.lcssa = phi ptr [ %i.ds, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fw, %.preheader237.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dx, %.preheader237.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fx, %.preheader237.loopexit ]
  %i.dy = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dy, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %.preheader237
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3242 = phi ptr [ %i.f, %.lr.ph ], [ %i.fx, %bb.c ] ; 2 uses
  %.0110241 = phi i32 [ 0, %.lr.ph ], [ %i.fy, %bb.c ]
  %.0112240 = phi ptr [ %i.ds, %.lr.ph ], [ %i.fw, %bb.c ] ; 2 uses
  %.0114239 = phi ptr [ %i.dm, %.lr.ph ], [ %i.fv, %bb.c ] ; 2 uses
  %i.eb = load <8 x float>, ptr %.0114239, align 1, !tbaa !41
  %i.ec = load <8 x float>, ptr %.0112240, align 1, !tbaa !41
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !37
  %i.ee = sitofp fast i32 %i.ed to float
  %i.ef = insertelement <8 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <8 x float> %i.ef, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.eh = fmul fast <8 x float> %i.eb, splat (float 5.000000e-01)
  %i.ei = fadd fast <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fadd fast <8 x float> %i.eg, splat (float -1.000000e+00) ; 2 uses
  %i.ek = fmul fast <8 x float> %i.ej, %i.ei
  %i.el = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ek)
  %i.em = fsub fast <8 x float> %i.el, %i.ej
  %i.en = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.em)
  %i.eo = load i32, ptr %i.dv, align 8, !tbaa !38
  %i.ep = sitofp fast i32 %i.eo to float
  %i.eq = insertelement <8 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <8 x float> %i.eq, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.es = fmul fast <8 x float> %i.ec, splat (float 5.000000e-01)
  %i.et = fadd fast <8 x float> %i.es, splat (float 5.000000e-01)
  %i.eu = fadd fast <8 x float> %i.er, splat (float -1.000000e+00) ; 2 uses
  %i.ev = fmul fast <8 x float> %i.eu, %i.et
  %i.ew = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ev)
  %i.ex = fsub fast <8 x float> %i.ew, %i.eu
  %i.ey = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ex)
  %i.ez = fadd fast <8 x float> %i.eg, splat (float -5.000000e-01)
  %i.fa = fsub fast <8 x float> %i.ez, %i.en
  %i.fb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fa, i32 1) ; 3 uses
  %i.fc = fadd fast <8 x float> %i.er, splat (float -5.000000e-01)
  %i.fd = fsub fast <8 x float> %i.fc, %i.ey
  %i.fe = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fd, i32 1) ; 3 uses
  %i.ff = fcmp fast ogt <8 x float> %i.fb, splat (float -1.000000e+00)
  %i.fg = fcmp fast ogt <8 x float> %i.eg, %i.fb
  %i.fh = and <8 x i1> %i.ff, %i.fg
  %i.fi = fcmp fast ogt <8 x float> %i.fe, splat (float -1.000000e+00)
  %i.fj = fcmp fast ogt <8 x float> %i.er, %i.fe
  %i.fk = and <8 x i1> %i.fi, %i.fj
  %i.fl = and <8 x i1> %i.fh, %i.fk
  %i.fm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.fb)
  %i.fn = load i32, ptr %i.dw, align 8, !tbaa !16
  %i.fo = sitofp fast i32 %i.fn to float
  %i.fp = insertelement <8 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <8 x float> %i.fp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fr = fmul fast <8 x float> %i.fq, %i.fm
  %i.fs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fr)
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>
  %i.fu = select <8 x i1> %i.fl, <8 x float> %i.ft, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fu, ptr %.3242, align 1, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %.0114239, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0112240, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.3242, i64 32 ; 2 uses
  %i.fy = add nuw nsw i32 %.0110241, 8            ; 2 uses
  %i.fz = or disjoint i32 %i.fy, 7
  %i.ga = icmp slt i32 %i.fz, %i.e
  br i1 %i.ga, label %bb.c, label %.preheader237.loopexit, !llvm.loop !262

bb.d:                                             ; preds = %.lr.ph250, %bb.f
  %.4249 = phi ptr [ %.3.lcssa, %.lr.ph250 ], [ %i.hn, %bb.f ] ; 2 uses
  %.1111248 = phi i32 [ %.0110.lcssa, %.lr.ph250 ], [ %i.ho, %bb.f ]
  %.1113247 = phi ptr [ %.0112.lcssa, %.lr.ph250 ], [ %i.hm, %bb.f ] ; 2 uses
  %.1115246 = phi ptr [ %.0114.lcssa, %.lr.ph250 ], [ %i.hl, %bb.f ] ; 2 uses
  %i.gb = load float, ptr %.1115246, align 4, !tbaa !44
  %i.gc = load float, ptr %.1113247, align 4, !tbaa !44
  %i.gd = load <2 x i32>, ptr %i.dz, align 4, !tbaa !23 ; 4 uses
  %i.ge = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gc, i64 1
  %i.gg = fmul fast <2 x float> %i.gf, splat (float 5.000000e-01)
  %i.gh = fadd fast <2 x float> %i.gg, splat (float 5.000000e-01)
  %i.gi = add nsw <2 x i32> %i.gd, splat (i32 -1)
  %i.gj = sitofp <2 x i32> %i.gi to <2 x float>   ; 3 uses
  %i.gk = fmul fast <2 x float> %i.gh, %i.gj
  %i.gl = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gk)
  %i.gm = fsub fast <2 x float> %i.gl, %i.gj
  %i.gn = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gm)
  %i.go = fsub fast <2 x float> %i.gj, %i.gn
  %i.gp = sitofp <2 x i32> %i.gd to <2 x float>
  %i.gq = fadd fast <2 x float> %i.gp, splat (float -1.000000e+00)
  %i.gr = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.go, <2 x float> zeroinitializer)
  %i.gs = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gr, <2 x float> %i.gq)
  %i.gt = fadd fast <2 x float> %i.gs, splat (float 5.000000e-01)
  %i.gu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gt)
  %i.gv = fptosi <2 x float> %i.gu to <2 x i32>   ; 3 uses
  %i.gw = extractelement <2 x i32> %i.gv, i64 0   ; 2 uses
  %i.gx = extractelement <2 x i32> %i.gv, i64 1   ; 2 uses
  %i.gy = or i32 %i.gx, %i.gw
  %i.gz = icmp sgt i32 %i.gy, -1
  %i.ha = icmp sgt <2 x i32> %i.gd, %i.gv         ; 2 uses
  %i.hb = extractelement <2 x i1> %i.ha, i64 0
  %i.hc = and i1 %i.hb, %i.gz
  %i.hd = extractelement <2 x i1> %i.ha, i64 1
  %i.he = and i1 %i.hd, %i.hc
  br i1 %i.he, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.hf = extractelement <2 x i32> %i.gd, i64 0
  %i.hg = mul nuw nsw i32 %i.hf, %i.gx
  %i.hh = add nsw i32 %i.hg, %i.gw
  %i.hi = load i32, ptr %i.ea, align 8, !tbaa !16
  %i.hj = mul nsw i32 %i.hi, %i.hh
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.hk = phi i32 [ %i.hj, %bb.e ], [ -1, %bb.d ]
  store i32 %i.hk, ptr %.4249, align 4, !tbaa !23
  %i.hl = getelementptr inbounds nuw i8, ptr %.1115246, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.1113247, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.4249, i64 4
  %i.ho = add nuw nsw i32 %.1111248, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ho, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !263

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader237, %.preheader236
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !281 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !282
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !282
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !282
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ij, %.lr.ph520 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ii, %.lr.ph520 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533, label %._crit_edge

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.ii, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.ik, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.ij, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01) ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !38
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.am = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.al, <8 x float> splat (float -1.000000e+00))
  %i.ao = fmul fast <8 x float> %i.an, splat (float 5.000000e-01) ; 2 uses
  %i.ap = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 10 uses
  %i.aq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 7 uses
  %i.ar = fadd fast <8 x float> %i.ap, splat (float -1.000000e+00) ; 6 uses
  %i.as = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00) ; 6 uses
  %i.at = fadd fast <8 x float> %i.ap, splat (float 2.000000e+00) ; 6 uses
  %i.au = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.av = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.aw = and <8 x i1> %i.au, %i.av               ; 4 uses
  %i.ax = fcmp fast ogt <8 x float> %i.ap, splat (float -1.000000e+00)
  %i.ay = fcmp fast ogt <8 x float> %i.ae, %i.ap
  %i.az = and <8 x i1> %i.ax, %i.ay               ; 4 uses
  %i.ba = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bb = fcmp fast ogt <8 x float> %i.ae, %i.as
  %i.bc = and <8 x i1> %i.ba, %i.bb               ; 4 uses
  %i.bd = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 4 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bh = sitofp fast i32 %i.bg to float
  %i.bi = insertelement <8 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bk = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00) ; 3 uses
  %i.bl = fcmp fast ogt <8 x float> %i.bk, splat (float -1.000000e+00)
  %i.bm = fcmp fast ogt <8 x float> %i.al, %i.bk
  %i.bn = and <8 x i1> %i.bl, %i.bm               ; 4 uses
  %i.bo = fmul fast <8 x float> %i.bk, %i.ae      ; 4 uses
  %i.bp = fadd fast <8 x float> %i.bo, %i.ar
  %i.bq = fmul fast <8 x float> %i.bj, %i.bp
  %i.br = fadd fast <8 x float> %i.bo, %i.ap
  %i.bs = fmul fast <8 x float> %i.bj, %i.br
  %i.bt = fadd fast <8 x float> %i.bo, %i.as
  %i.bu = fmul fast <8 x float> %i.bj, %i.bt
  %i.bv = fadd fast <8 x float> %i.bo, %i.at
  %i.bw = fmul fast <8 x float> %i.bj, %i.bv
  %i.bx = and <8 x i1> %i.aw, %i.bn
  %i.by = select <8 x i1> %i.bx, <8 x float> %i.bq, <8 x float> splat (float -1.000000e+00)
  %i.bz = and <8 x i1> %i.az, %i.bn
  %i.ca = select <8 x i1> %i.bz, <8 x float> %i.bs, <8 x float> splat (float -1.000000e+00)
  %i.cb = and <8 x i1> %i.bc, %i.bn
  %i.cc = select <8 x i1> %i.cb, <8 x float> %i.bu, <8 x float> splat (float -1.000000e+00)
  %i.cd = and <8 x i1> %i.bf, %i.bn
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cj = fcmp fast ogt <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.al, %i.aq
  %i.cl = and <8 x i1> %i.cj, %i.ck               ; 4 uses
  %i.cm = fmul fast <8 x float> %i.aq, %i.ae      ; 4 uses
  %i.cn = fadd fast <8 x float> %i.cm, %i.ar
  %i.co = fmul fast <8 x float> %i.bj, %i.cn
  %i.cp = fadd fast <8 x float> %i.cm, %i.ap
  %i.cq = fmul fast <8 x float> %i.bj, %i.cp
  %i.cr = fadd fast <8 x float> %i.cm, %i.as
  %i.cs = fmul fast <8 x float> %i.bj, %i.cr
  %i.ct = fadd fast <8 x float> %i.cm, %i.at
  %i.cu = fmul fast <8 x float> %i.bj, %i.ct
  %i.cv = and <8 x i1> %i.aw, %i.cl
  %i.cw = select <8 x i1> %i.cv, <8 x float> %i.co, <8 x float> splat (float -1.000000e+00)
  %i.cx = and <8 x i1> %i.az, %i.cl
  %i.cy = select <8 x i1> %i.cx, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  %i.cz = and <8 x i1> %i.bc, %i.cl
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = and <8 x i1> %i.bf, %i.cl
  %i.dc = select <8 x i1> %i.db, <8 x float> %i.cu, <8 x float> splat (float -1.000000e+00)
  %i.dd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.de = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.df = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.dg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.dh = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00) ; 3 uses
  %i.di = fcmp fast ogt <8 x float> %i.dh, splat (float -1.000000e+00)
  %i.dj = fcmp fast ogt <8 x float> %i.al, %i.dh
  %i.dk = and <8 x i1> %i.di, %i.dj               ; 4 uses
  %i.dl = fmul fast <8 x float> %i.dh, %i.ae      ; 4 uses
  %i.dm = fadd fast <8 x float> %i.dl, %i.ar
  %i.dn = fmul fast <8 x float> %i.bj, %i.dm
  %i.do = fadd fast <8 x float> %i.dl, %i.ap
  %i.dp = fmul fast <8 x float> %i.bj, %i.do
  %i.dq = fadd fast <8 x float> %i.dl, %i.as
  %i.dr = fmul fast <8 x float> %i.bj, %i.dq
  %i.ds = fadd fast <8 x float> %i.dl, %i.at
  %i.dt = fmul fast <8 x float> %i.bj, %i.ds
  %i.du = and <8 x i1> %i.aw, %i.dk
  %i.dv = select <8 x i1> %i.du, <8 x float> %i.dn, <8 x float> splat (float -1.000000e+00)
  %i.dw = and <8 x i1> %i.az, %i.dk
  %i.dx = select <8 x i1> %i.dw, <8 x float> %i.dp, <8 x float> splat (float -1.000000e+00)
  %i.dy = and <8 x i1> %i.bc, %i.dk
  %i.dz = select <8 x i1> %i.dy, <8 x float> %i.dr, <8 x float> splat (float -1.000000e+00)
  %i.ea = and <8 x i1> %i.bf, %i.dk
  %i.eb = select <8 x i1> %i.ea, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dv) ; 2 uses
  %i.ed = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 2 uses
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.eg = fadd fast <8 x float> %i.aq, splat (float 2.000000e+00) ; 3 uses
  %i.eh = fcmp fast ogt <8 x float> %i.eg, splat (float -1.000000e+00)
  %i.ei = fcmp fast ogt <8 x float> %i.al, %i.eg
  %i.ej = and <8 x i1> %i.eh, %i.ei               ; 4 uses
  %i.ek = fmul fast <8 x float> %i.eg, %i.ae      ; 4 uses
  %i.el = fadd fast <8 x float> %i.ek, %i.ar
  %i.em = fmul fast <8 x float> %i.bj, %i.el
  %i.en = fadd fast <8 x float> %i.ek, %i.ap
  %i.eo = fmul fast <8 x float> %i.bj, %i.en
  %i.ep = fadd fast <8 x float> %i.ek, %i.as
  %i.eq = fmul fast <8 x float> %i.bj, %i.ep
  %i.er = fadd fast <8 x float> %i.ek, %i.at
  %i.es = fmul fast <8 x float> %i.bj, %i.er
  %i.et = and <8 x i1> %i.aw, %i.ej
  %i.eu = select <8 x i1> %i.et, <8 x float> %i.em, <8 x float> splat (float -1.000000e+00)
  %i.ev = and <8 x i1> %i.az, %i.ej
  %i.ew = select <8 x i1> %i.ev, <8 x float> %i.eo, <8 x float> splat (float -1.000000e+00)
  %i.ex = and <8 x i1> %i.bc, %i.ej
  %i.ey = select <8 x i1> %i.ex, <8 x float> %i.eq, <8 x float> splat (float -1.000000e+00)
  %i.ez = and <8 x i1> %i.bf, %i.ej
  %i.fa = select <8 x i1> %i.ez, <8 x float> %i.es, <8 x float> splat (float -1.000000e+00)
  %i.fb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eu) ; 2 uses
  %i.fc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ey) ; 2 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fa) ; 2 uses
  %i.ff = fsub fast <8 x float> %i.ah, %i.ap      ; 2 uses
  %i.fg = fsub fast <8 x float> %i.ao, %i.aq      ; 2 uses
  %i.fh = shufflevector <8 x float> %i.ff, <8 x float> %i.fg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fi = shufflevector <8 x float> %i.ff, <8 x float> %i.fg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fj = shufflevector <8 x i32> %i.cf, <8 x i32> %i.cg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>
  %i.fl = shufflevector <8 x i32> %i.cf, <8 x i32> %i.cg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fo = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fp = shufflevector <8 x i32> %i.dd, <8 x i32> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fq = shufflevector <8 x i32> %i.dd, <8 x i32> %i.de, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fs = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ed, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fx = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fz = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = bitcast <8 x i32> %i.fz to <8 x float>
  %i.gb = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x float> %i.fh, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ge = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>  ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x float> %i.ga, <8 x float> %i.fh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gk = bitcast <8 x i32> %i.gj to <8 x float>  ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.go = bitcast <8 x i32> %i.gn to <8 x float>  ; 2 uses
  %i.gp = shufflevector <8 x float> %i.fi, <8 x float> %i.fm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.fs, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gt = bitcast <8 x i32> %i.gs to <8 x float>  ; 2 uses
  %i.gu = shufflevector <8 x float> %i.gc, <8 x float> %i.fi, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gv = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.fy, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gz = shufflevector <8 x float> %i.gd, <8 x float> %i.gf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ha = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hb = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hc = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hd = shufflevector <8 x float> %i.go, <8 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.he = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hf = shufflevector <8 x float> %i.gt, <8 x float> %i.gu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <8 x i32> %i.gv, <8 x i32> %i.gw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hh = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hi = shufflevector <8 x float> %i.gd, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hj = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hk = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hm = shufflevector <8 x float> %i.go, <8 x float> %i.gp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hn = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shufflevector <8 x float> %i.gt, <8 x float> %i.gu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hp = shufflevector <8 x i32> %i.gv, <8 x i32> %i.gw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hq = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.gz, ptr %.1519, align 1, !tbaa !41
  %i.hr = getelementptr inbounds nuw i8, ptr %.1519, i64 32
  store <8 x i32> %i.ha, ptr %i.hr, align 1, !tbaa !41
  %i.hs = getelementptr inbounds nuw i8, ptr %.1519, i64 64
  store <8 x float> %i.hb, ptr %i.hs, align 1, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %.1519, i64 96
  store <8 x i32> %i.hc, ptr %i.ht, align 1, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %.1519, i64 128
  store <8 x float> %i.hd, ptr %i.hu, align 1, !tbaa !41
  %i.hv = getelementptr inbounds nuw i8, ptr %.1519, i64 160
  store <8 x i32> %i.he, ptr %i.hv, align 1, !tbaa !41
  %i.hw = getelementptr inbounds nuw i8, ptr %.1519, i64 192
  store <8 x float> %i.hf, ptr %i.hw, align 1, !tbaa !41
  %i.hx = getelementptr inbounds nuw i8, ptr %.1519, i64 224
end_hunk_6
begin_hunk_7_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.ajl = getelementptr inbounds nuw i8, ptr %.6512, i64 32
  store i32 %i.ajk, ptr %i.ajl, align 4, !tbaa !23
  br i1 %i.aiu, label %bb.bz, label %.split.2

bb.bz:                                            ; preds = %bb.by
  %i.ajm = extractelement <4 x i32> %i.acx, i64 1
  %i.ajn = add nsw i32 %i.aio, %i.ajm
  %i.ajo = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.ajp = mul nsw i32 %i.ajo, %i.ajn
  br label %.split.2

.split.2:                                         ; preds = %.thread773, %bb.bz, %bb.by
  %i.ajq = phi i32 [ %i.ajp, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread773 ]
  %i.ajr = getelementptr inbounds nuw i8, ptr %.6512, i64 36
  store i32 %i.ajq, ptr %i.ajr, align 4, !tbaa !23
  %i.ajs = getelementptr inbounds nuw i8, ptr %.6512, i64 40 ; 2 uses
  %i.ajt = add i32 %i.ain, 1
  %i.aju = sitofp fast i32 %i.ajt to float
  %i.ajv = fptosi float %i.aju to i32             ; 3 uses
  %i.ajw = load i32, ptr %i.ti, align 4, !tbaa !37
  %i.ajx = mul nsw i32 %i.ajw, %i.ajv             ; 4 uses
  %i.ajy = icmp sgt i32 %i.ajv, -1
  %i.ajz = load i32, ptr %i.tj, align 8, !tbaa !38
  %i.aka = icmp sgt i32 %i.ajz, %i.ajv
  %i.akb = and i1 %i.ajy, %i.aka                  ; 3 uses
  %i.akc = and i1 %i.ade, %i.akb
  %i.akd = and i1 %i.adf, %i.akb
  br i1 %i.akb, label %bb.ca, label %.thread776

.thread776:                                       ; preds = %.split.2
  store i32 -1, ptr %i.ajs, align 4, !tbaa !23
  %i.ake = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 -1, ptr %i.ake, align 4, !tbaa !23
  %i.akf = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 -1, ptr %i.akf, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.akg = extractelement <4 x i32> %i.acx, i64 3
  %i.akh = add nsw i32 %i.ajx, %i.akg
  %i.aki = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.akj = mul nsw i32 %i.aki, %i.akh
  store i32 %i.akj, ptr %i.ajs, align 4, !tbaa !23
  br i1 %i.act, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.akk = add nsw i32 %i.ajx, %i.acn
  %i.akl = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.akm = mul nsw i32 %i.akl, %i.akk
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.akn = phi i32 [ %i.akm, %bb.cb ], [ -1, %bb.ca ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !23
  br i1 %i.akc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.akp = extractelement <4 x i32> %i.acx, i64 2
  %i.akq = add nsw i32 %i.ajx, %i.akp
  %i.akr = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.aks = mul nsw i32 %i.akr, %i.akq
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.akt = phi i32 [ %i.aks, %bb.cd ], [ -1, %bb.cc ]
  %i.aku = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 %i.akt, ptr %i.aku, align 4, !tbaa !23
  br i1 %i.akd, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.akv = extractelement <4 x i32> %i.acx, i64 1
  %i.akw = add nsw i32 %i.ajx, %i.akv
  %i.akx = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.aky = mul nsw i32 %i.akx, %i.akw
  br label %.split.3

.split.3:                                         ; preds = %.thread776, %bb.cf, %bb.ce
  %i.akz = phi i32 [ %i.aky, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread776 ]
  %i.ala = getelementptr inbounds nuw i8, ptr %.6512, i64 52
  store i32 %i.akz, ptr %i.ala, align 4, !tbaa !23
  %i.alb = getelementptr inbounds nuw i8, ptr %.6512, i64 56 ; 2 uses
  %i.alc = add i32 %i.ain, 2
  %i.ald = sitofp fast i32 %i.alc to float
  %i.ale = fptosi float %i.ald to i32             ; 3 uses
  %i.alf = load i32, ptr %i.ti, align 4, !tbaa !37
  %i.alg = mul nsw i32 %i.alf, %i.ale             ; 4 uses
  %i.alh = icmp sgt i32 %i.ale, -1
  %i.ali = load i32, ptr %i.tj, align 8, !tbaa !38
  %i.alj = icmp sgt i32 %i.ali, %i.ale
  %i.alk = and i1 %i.alh, %i.alj                  ; 3 uses
  %i.all = and i1 %i.ade, %i.alk
  %i.alm = and i1 %i.adf, %i.alk
  br i1 %i.alk, label %bb.cg, label %.thread779

.thread779:                                       ; preds = %.split.3
  store i32 -1, ptr %i.alb, align 4, !tbaa !23
  %i.aln = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 -1, ptr %i.aln, align 4, !tbaa !23
  %i.alo = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 -1, ptr %i.alo, align 4, !tbaa !23
  br label %.split508.us

bb.cg:                                            ; preds = %.split.3
  %i.alp = extractelement <4 x i32> %i.acx, i64 3
  %i.alq = add nsw i32 %i.alg, %i.alp
  %i.alr = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.als = mul nsw i32 %i.alr, %i.alq
  store i32 %i.als, ptr %i.alb, align 4, !tbaa !23
  br i1 %i.act, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.alt = add nsw i32 %i.alg, %i.acn
  %i.alu = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.alv = mul nsw i32 %i.alu, %i.alt
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.alw = phi i32 [ %i.alv, %bb.ch ], [ -1, %bb.cg ]
  %i.alx = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 %i.alw, ptr %i.alx, align 4, !tbaa !23
  br i1 %i.all, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aly = extractelement <4 x i32> %i.acx, i64 2
  %i.alz = add nsw i32 %i.alg, %i.aly
  %i.ama = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.amb = mul nsw i32 %i.ama, %i.alz
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.amc = phi i32 [ %i.amb, %bb.cj ], [ -1, %bb.ci ]
  %i.amd = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 %i.amc, ptr %i.amd, align 4, !tbaa !23
  br i1 %i.alm, label %bb.cl, label %.split508.us

bb.cl:                                            ; preds = %bb.ck
  %i.ame = extractelement <4 x i32> %i.acx, i64 1
  %i.amf = add nsw i32 %i.alg, %i.ame
  %i.amg = load i32, ptr %i.tk, align 8, !tbaa !16
  %i.amh = mul nsw i32 %i.amg, %i.amf
  br label %.split508.us

.loopexit:                                        ; preds = %.split508.us, %._crit_edge, %.preheader493, %.preheader492
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !298 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !299
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !299
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !299
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.il, %.lr.ph520 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ik, %.lr.ph520 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533, label %._crit_edge

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.ik, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.im, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.il, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 10 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 7 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00) ; 6 uses
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00) ; 6 uses
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00) ; 6 uses
  %i.aw = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.ax = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.ay = and <8 x i1> %i.aw, %i.ax               ; 4 uses
  %i.az = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 4 uses
  %i.bc = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ae, %i.au
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 4 uses
  %i.bf = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ae, %i.av
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 4 uses
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bm = fadd fast <8 x float> %i.as, splat (float -1.000000e+00) ; 3 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.am, %i.bm
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 4 uses
  %i.bq = fmul fast <8 x float> %i.bm, %i.ae      ; 4 uses
  %i.br = fadd fast <8 x float> %i.bq, %i.at
  %i.bs = fmul fast <8 x float> %i.bl, %i.br
  %i.bt = fadd fast <8 x float> %i.bq, %i.ar
  %i.bu = fmul fast <8 x float> %i.bl, %i.bt
  %i.bv = fadd fast <8 x float> %i.bq, %i.au
  %i.bw = fmul fast <8 x float> %i.bl, %i.bv
  %i.bx = fadd fast <8 x float> %i.bq, %i.av
  %i.by = fmul fast <8 x float> %i.bl, %i.bx
  %i.bz = and <8 x i1> %i.ay, %i.bp
  %i.ca = select <8 x i1> %i.bz, <8 x float> %i.bs, <8 x float> splat (float -1.000000e+00)
  %i.cb = and <8 x i1> %i.bb, %i.bp
  %i.cc = select <8 x i1> %i.cb, <8 x float> %i.bu, <8 x float> splat (float -1.000000e+00)
  %i.cd = and <8 x i1> %i.be, %i.bp
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cf = and <8 x i1> %i.bh, %i.bp
  %i.cg = select <8 x i1> %i.cf, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.am, %i.as
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 4 uses
  %i.co = fmul fast <8 x float> %i.as, %i.ae      ; 4 uses
  %i.cp = fadd fast <8 x float> %i.co, %i.at
  %i.cq = fmul fast <8 x float> %i.bl, %i.cp
  %i.cr = fadd fast <8 x float> %i.co, %i.ar
  %i.cs = fmul fast <8 x float> %i.bl, %i.cr
  %i.ct = fadd fast <8 x float> %i.co, %i.au
  %i.cu = fmul fast <8 x float> %i.bl, %i.ct
  %i.cv = fadd fast <8 x float> %i.co, %i.av
  %i.cw = fmul fast <8 x float> %i.bl, %i.cv
  %i.cx = and <8 x i1> %i.ay, %i.cn
  %i.cy = select <8 x i1> %i.cx, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  %i.cz = and <8 x i1> %i.bb, %i.cn
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = and <8 x i1> %i.be, %i.cn
  %i.dc = select <8 x i1> %i.db, <8 x float> %i.cu, <8 x float> splat (float -1.000000e+00)
  %i.dd = and <8 x i1> %i.bh, %i.cn
  %i.de = select <8 x i1> %i.dd, <8 x float> %i.cw, <8 x float> splat (float -1.000000e+00)
  %i.df = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.dg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.dh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.di = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dj = fadd fast <8 x float> %i.as, splat (float 1.000000e+00) ; 3 uses
  %i.dk = fcmp fast ogt <8 x float> %i.dj, splat (float -1.000000e+00)
  %i.dl = fcmp fast ogt <8 x float> %i.am, %i.dj
  %i.dm = and <8 x i1> %i.dk, %i.dl               ; 4 uses
  %i.dn = fmul fast <8 x float> %i.dj, %i.ae      ; 4 uses
  %i.do = fadd fast <8 x float> %i.dn, %i.at
  %i.dp = fmul fast <8 x float> %i.bl, %i.do
  %i.dq = fadd fast <8 x float> %i.dn, %i.ar
  %i.dr = fmul fast <8 x float> %i.bl, %i.dq
  %i.ds = fadd fast <8 x float> %i.dn, %i.au
  %i.dt = fmul fast <8 x float> %i.bl, %i.ds
  %i.du = fadd fast <8 x float> %i.dn, %i.av
  %i.dv = fmul fast <8 x float> %i.bl, %i.du
  %i.dw = and <8 x i1> %i.ay, %i.dm
  %i.dx = select <8 x i1> %i.dw, <8 x float> %i.dp, <8 x float> splat (float -1.000000e+00)
  %i.dy = and <8 x i1> %i.bb, %i.dm
  %i.dz = select <8 x i1> %i.dy, <8 x float> %i.dr, <8 x float> splat (float -1.000000e+00)
  %i.ea = and <8 x i1> %i.be, %i.dm
  %i.eb = select <8 x i1> %i.ea, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = and <8 x i1> %i.bh, %i.dm
  %i.ed = select <8 x i1> %i.ec, <8 x float> %i.dv, <8 x float> splat (float -1.000000e+00)
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ei = fadd fast <8 x float> %i.as, splat (float 2.000000e+00) ; 3 uses
  %i.ej = fcmp fast ogt <8 x float> %i.ei, splat (float -1.000000e+00)
  %i.ek = fcmp fast ogt <8 x float> %i.am, %i.ei
  %i.el = and <8 x i1> %i.ej, %i.ek               ; 4 uses
  %i.em = fmul fast <8 x float> %i.ei, %i.ae      ; 4 uses
  %i.en = fadd fast <8 x float> %i.em, %i.at
  %i.eo = fmul fast <8 x float> %i.bl, %i.en
  %i.ep = fadd fast <8 x float> %i.em, %i.ar
  %i.eq = fmul fast <8 x float> %i.bl, %i.ep
  %i.er = fadd fast <8 x float> %i.em, %i.au
  %i.es = fmul fast <8 x float> %i.bl, %i.er
  %i.et = fadd fast <8 x float> %i.em, %i.av
  %i.eu = fmul fast <8 x float> %i.bl, %i.et
  %i.ev = and <8 x i1> %i.ay, %i.el
  %i.ew = select <8 x i1> %i.ev, <8 x float> %i.eo, <8 x float> splat (float -1.000000e+00)
  %i.ex = and <8 x i1> %i.bb, %i.el
  %i.ey = select <8 x i1> %i.ex, <8 x float> %i.eq, <8 x float> splat (float -1.000000e+00)
  %i.ez = and <8 x i1> %i.be, %i.el
  %i.fa = select <8 x i1> %i.ez, <8 x float> %i.es, <8 x float> splat (float -1.000000e+00)
  %i.fb = and <8 x i1> %i.bh, %i.el
  %i.fc = select <8 x i1> %i.fb, <8 x float> %i.eu, <8 x float> splat (float -1.000000e+00)
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ey) ; 2 uses
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fa) ; 2 uses
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fc) ; 2 uses
  %i.fh = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.fi = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.fj = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fk = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fl = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fo = bitcast <8 x i32> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fq = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fs = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fx = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fz = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x float> %i.fj, <8 x float> %i.fm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>  ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.gc, <8 x float> %i.fj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>  ; 2 uses
  %i.gr = shufflevector <8 x float> %i.fk, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gu = shufflevector <8 x i32> %i.fy, <8 x i32> %i.ga, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gv = bitcast <8 x i32> %i.gu to <8 x float>  ; 2 uses
  %i.gw = shufflevector <8 x float> %i.ge, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.fs, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hc = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hd = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.he = shufflevector <8 x i32> %i.gn, <8 x i32> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hf = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hh = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hi = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hj = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hk = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hm = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hn = shufflevector <8 x i32> %i.gn, <8 x i32> %i.go, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hp = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hq = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hr = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hs = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hb, ptr %.1519, align 1, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %.1519, i64 32
  store <8 x i32> %i.hc, ptr %i.ht, align 1, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %.1519, i64 64
  store <8 x float> %i.hd, ptr %i.hu, align 1, !tbaa !41
  %i.hv = getelementptr inbounds nuw i8, ptr %.1519, i64 96
  store <8 x i32> %i.he, ptr %i.hv, align 1, !tbaa !41
  %i.hw = getelementptr inbounds nuw i8, ptr %.1519, i64 128
  store <8 x float> %i.hf, ptr %i.hw, align 1, !tbaa !41
  %i.hx = getelementptr inbounds nuw i8, ptr %.1519, i64 160
  store <8 x i32> %i.hg, ptr %i.hx, align 1, !tbaa !41
  %i.hy = getelementptr inbounds nuw i8, ptr %.1519, i64 192
  store <8 x float> %i.hh, ptr %i.hy, align 1, !tbaa !41
end_hunk_7
begin_hunk_8_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.ajp = getelementptr inbounds nuw i8, ptr %.6512, i64 32
  store i32 %i.ajo, ptr %i.ajp, align 4, !tbaa !23
  br i1 %i.aiy, label %bb.bz, label %.split.2

bb.bz:                                            ; preds = %bb.by
  %i.ajq = extractelement <4 x i32> %i.adb, i64 1
  %i.ajr = add nsw i32 %i.ais, %i.ajq
  %i.ajs = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.ajt = mul nsw i32 %i.ajs, %i.ajr
  br label %.split.2

.split.2:                                         ; preds = %.thread773, %bb.bz, %bb.by
  %i.aju = phi i32 [ %i.ajt, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread773 ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %.6512, i64 36
  store i32 %i.aju, ptr %i.ajv, align 4, !tbaa !23
  %i.ajw = getelementptr inbounds nuw i8, ptr %.6512, i64 40 ; 2 uses
  %i.ajx = add i32 %i.air, 1
  %i.ajy = sitofp fast i32 %i.ajx to float
  %i.ajz = fptosi float %i.ajy to i32             ; 3 uses
  %i.aka = load i32, ptr %i.tk, align 4, !tbaa !37
  %i.akb = mul nsw i32 %i.aka, %i.ajz             ; 4 uses
  %i.akc = icmp sgt i32 %i.ajz, -1
  %i.akd = load i32, ptr %i.tl, align 8, !tbaa !38
  %i.ake = icmp sgt i32 %i.akd, %i.ajz
  %i.akf = and i1 %i.akc, %i.ake                  ; 3 uses
  %i.akg = and i1 %i.adi, %i.akf
  %i.akh = and i1 %i.adj, %i.akf
  br i1 %i.akf, label %bb.ca, label %.thread776

.thread776:                                       ; preds = %.split.2
  store i32 -1, ptr %i.ajw, align 4, !tbaa !23
  %i.aki = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 -1, ptr %i.aki, align 4, !tbaa !23
  %i.akj = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 -1, ptr %i.akj, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.akk = extractelement <4 x i32> %i.adb, i64 3
  %i.akl = add nsw i32 %i.akb, %i.akk
  %i.akm = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akn = mul nsw i32 %i.akm, %i.akl
  store i32 %i.akn, ptr %i.ajw, align 4, !tbaa !23
  br i1 %i.acx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ako = add nsw i32 %i.akb, %i.acr
  %i.akp = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akq = mul nsw i32 %i.akp, %i.ako
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.akr = phi i32 [ %i.akq, %bb.cb ], [ -1, %bb.ca ]
  %i.aks = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 %i.akr, ptr %i.aks, align 4, !tbaa !23
  br i1 %i.akg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.akt = extractelement <4 x i32> %i.adb, i64 2
  %i.aku = add nsw i32 %i.akb, %i.akt
  %i.akv = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akw = mul nsw i32 %i.akv, %i.aku
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.akx = phi i32 [ %i.akw, %bb.cd ], [ -1, %bb.cc ]
  %i.aky = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 %i.akx, ptr %i.aky, align 4, !tbaa !23
  br i1 %i.akh, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.akz = extractelement <4 x i32> %i.adb, i64 1
  %i.ala = add nsw i32 %i.akb, %i.akz
  %i.alb = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alc = mul nsw i32 %i.alb, %i.ala
  br label %.split.3

.split.3:                                         ; preds = %.thread776, %bb.cf, %bb.ce
  %i.ald = phi i32 [ %i.alc, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread776 ]
  %i.ale = getelementptr inbounds nuw i8, ptr %.6512, i64 52
  store i32 %i.ald, ptr %i.ale, align 4, !tbaa !23
  %i.alf = getelementptr inbounds nuw i8, ptr %.6512, i64 56 ; 2 uses
  %i.alg = add i32 %i.air, 2
  %i.alh = sitofp fast i32 %i.alg to float
  %i.ali = fptosi float %i.alh to i32             ; 3 uses
  %i.alj = load i32, ptr %i.tk, align 4, !tbaa !37
  %i.alk = mul nsw i32 %i.alj, %i.ali             ; 4 uses
  %i.all = icmp sgt i32 %i.ali, -1
  %i.alm = load i32, ptr %i.tl, align 8, !tbaa !38
  %i.aln = icmp sgt i32 %i.alm, %i.ali
  %i.alo = and i1 %i.all, %i.aln                  ; 3 uses
  %i.alp = and i1 %i.adi, %i.alo
  %i.alq = and i1 %i.adj, %i.alo
  br i1 %i.alo, label %bb.cg, label %.thread779

.thread779:                                       ; preds = %.split.3
  store i32 -1, ptr %i.alf, align 4, !tbaa !23
  %i.alr = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 -1, ptr %i.alr, align 4, !tbaa !23
  %i.als = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 -1, ptr %i.als, align 4, !tbaa !23
  br label %.split508.us

bb.cg:                                            ; preds = %.split.3
  %i.alt = extractelement <4 x i32> %i.adb, i64 3
  %i.alu = add nsw i32 %i.alk, %i.alt
  %i.alv = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alw = mul nsw i32 %i.alv, %i.alu
  store i32 %i.alw, ptr %i.alf, align 4, !tbaa !23
  br i1 %i.acx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.alx = add nsw i32 %i.alk, %i.acr
  %i.aly = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alz = mul nsw i32 %i.aly, %i.alx
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ama = phi i32 [ %i.alz, %bb.ch ], [ -1, %bb.cg ]
  %i.amb = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !23
  br i1 %i.alp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.amc = extractelement <4 x i32> %i.adb, i64 2
  %i.amd = add nsw i32 %i.alk, %i.amc
  %i.ame = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.amf = mul nsw i32 %i.ame, %i.amd
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.amg = phi i32 [ %i.amf, %bb.cj ], [ -1, %bb.ci ]
  %i.amh = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 %i.amg, ptr %i.amh, align 4, !tbaa !23
  br i1 %i.alq, label %bb.cl, label %.split508.us

bb.cl:                                            ; preds = %bb.ck
  %i.ami = extractelement <4 x i32> %i.adb, i64 1
  %i.amj = add nsw i32 %i.alk, %i.ami
  %i.amk = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.aml = mul nsw i32 %i.amk, %i.amj
  br label %.split508.us

.loopexit:                                        ; preds = %.split508.us, %._crit_edge, %.preheader493, %.preheader492
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !315 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader512, label %_ZN4ncnn3MatD2Ev.exit397

.preheader512:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader512
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380556 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !316
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !316
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !316
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph540, label %.preheader

.preheader:                                       ; preds = %.lr.ph540, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jb, %.lr.ph540 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph540 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ja, %.lr.ph540 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph553, label %._crit_edge

.lr.ph540:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph540
  %.1539 = phi ptr [ %i.ja, %.lr.ph540 ], [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393538 = phi i32 [ %i.jc, %.lr.ph540 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395537 = phi ptr [ %i.jb, %.lr.ph540 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395537, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395537, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 10 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01) ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !38
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.am = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.al, <8 x float> splat (float -1.000000e+00))
  %i.ao = fmul fast <8 x float> %i.an, splat (float 5.000000e-01) ; 2 uses
  %i.ap = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 5 uses
  %i.aq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 5 uses
  %i.ar = fadd fast <8 x float> %i.ap, splat (float -1.000000e+00)
  %i.as = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.at = fadd fast <8 x float> %i.ap, splat (float 2.000000e+00)
  %i.au = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 4 uses
  %i.av = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> zeroinitializer)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.av) ; 6 uses
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ax) ; 6 uses
  %i.az = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.az) ; 6 uses
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> zeroinitializer)
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.bb) ; 6 uses
  %i.bd = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ae, %i.aw
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 4 uses
  %i.bg = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ae, %i.ay
  %i.bi = and <8 x i1> %i.bg, %i.bh               ; 4 uses
  %i.bj = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.ae, %i.ba
  %i.bl = and <8 x i1> %i.bj, %i.bk               ; 4 uses
  %i.bm = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bn = fcmp fast ogt <8 x float> %i.ae, %i.bc
  %i.bo = and <8 x i1> %i.bm, %i.bn               ; 4 uses
  %i.bp = fadd fast <8 x float> %i.al, splat (float -1.000000e+00) ; 4 uses
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !16
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = insertelement <8 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bu = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> zeroinitializer)
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bv) ; 3 uses
  %i.bx = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.by = fcmp fast ogt <8 x float> %i.al, %i.bw
  %i.bz = and <8 x i1> %i.bx, %i.by               ; 4 uses
  %i.ca = fmul fast <8 x float> %i.bw, %i.ae      ; 4 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.aw
  %i.cc = fmul fast <8 x float> %i.bt, %i.cb
  %i.cd = fadd fast <8 x float> %i.ca, %i.ay
  %i.ce = fmul fast <8 x float> %i.bt, %i.cd
  %i.cf = fadd fast <8 x float> %i.ca, %i.ba
  %i.cg = fmul fast <8 x float> %i.bt, %i.cf
  %i.ch = fadd fast <8 x float> %i.ca, %i.bc
  %i.ci = fmul fast <8 x float> %i.bt, %i.ch
  %i.cj = and <8 x i1> %i.bf, %i.bz
  %i.ck = select <8 x i1> %i.cj, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.cl = and <8 x i1> %i.bi, %i.bz
  %i.cm = select <8 x i1> %i.cl, <8 x float> %i.ce, <8 x float> splat (float -1.000000e+00)
  %i.cn = and <8 x i1> %i.bl, %i.bz
  %i.co = select <8 x i1> %i.cn, <8 x float> %i.cg, <8 x float> splat (float -1.000000e+00)
  %i.cp = and <8 x i1> %i.bo, %i.bz
  %i.cq = select <8 x i1> %i.cp, <8 x float> %i.ci, <8 x float> splat (float -1.000000e+00)
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ck) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq) ; 2 uses
  %i.cv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> zeroinitializer)
  %i.cw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.cv) ; 3 uses
  %i.cx = fcmp fast ogt <8 x float> %i.cw, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.al, %i.cw
  %i.cz = and <8 x i1> %i.cx, %i.cy               ; 4 uses
  %i.da = fmul fast <8 x float> %i.cw, %i.ae      ; 4 uses
  %i.db = fadd fast <8 x float> %i.da, %i.aw
  %i.dc = fmul fast <8 x float> %i.bt, %i.db
  %i.dd = fadd fast <8 x float> %i.da, %i.ay
  %i.de = fmul fast <8 x float> %i.bt, %i.dd
  %i.df = fadd fast <8 x float> %i.da, %i.ba
  %i.dg = fmul fast <8 x float> %i.bt, %i.df
  %i.dh = fadd fast <8 x float> %i.da, %i.bc
  %i.di = fmul fast <8 x float> %i.bt, %i.dh
  %i.dj = and <8 x i1> %i.bf, %i.cz
  %i.dk = select <8 x i1> %i.dj, <8 x float> %i.dc, <8 x float> splat (float -1.000000e+00)
  %i.dl = and <8 x i1> %i.bi, %i.cz
  %i.dm = select <8 x i1> %i.dl, <8 x float> %i.de, <8 x float> splat (float -1.000000e+00)
  %i.dn = and <8 x i1> %i.bl, %i.cz
  %i.do = select <8 x i1> %i.dn, <8 x float> %i.dg, <8 x float> splat (float -1.000000e+00)
  %i.dp = and <8 x i1> %i.bo, %i.cz
  %i.dq = select <8 x i1> %i.dp, <8 x float> %i.di, <8 x float> splat (float -1.000000e+00)
  %i.dr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dk) ; 2 uses
  %i.ds = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.dt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.du = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dv = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> zeroinitializer)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.dw) ; 3 uses
  %i.dy = fcmp fast ogt <8 x float> %i.dx, splat (float -1.000000e+00)
  %i.dz = fcmp fast ogt <8 x float> %i.al, %i.dx
  %i.ea = and <8 x i1> %i.dy, %i.dz               ; 4 uses
  %i.eb = fmul fast <8 x float> %i.dx, %i.ae      ; 4 uses
  %i.ec = fadd fast <8 x float> %i.eb, %i.aw
  %i.ed = fmul fast <8 x float> %i.bt, %i.ec
  %i.ee = fadd fast <8 x float> %i.eb, %i.ay
  %i.ef = fmul fast <8 x float> %i.bt, %i.ee
  %i.eg = fadd fast <8 x float> %i.eb, %i.ba
  %i.eh = fmul fast <8 x float> %i.bt, %i.eg
  %i.ei = fadd fast <8 x float> %i.eb, %i.bc
  %i.ej = fmul fast <8 x float> %i.bt, %i.ei
  %i.ek = and <8 x i1> %i.bf, %i.ea
  %i.el = select <8 x i1> %i.ek, <8 x float> %i.ed, <8 x float> splat (float -1.000000e+00)
  %i.em = and <8 x i1> %i.bi, %i.ea
  %i.en = select <8 x i1> %i.em, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = and <8 x i1> %i.bl, %i.ea
  %i.ep = select <8 x i1> %i.eo, <8 x float> %i.eh, <8 x float> splat (float -1.000000e+00)
  %i.eq = and <8 x i1> %i.bo, %i.ea
  %i.er = select <8 x i1> %i.eq, <8 x float> %i.ej, <8 x float> splat (float -1.000000e+00)
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 2 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.er) ; 2 uses
  %i.ew = fadd fast <8 x float> %i.aq, splat (float 2.000000e+00)
  %i.ex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> zeroinitializer)
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.ex) ; 3 uses
  %i.ez = fcmp fast ogt <8 x float> %i.ey, splat (float -1.000000e+00)
  %i.fa = fcmp fast ogt <8 x float> %i.al, %i.ey
  %i.fb = and <8 x i1> %i.ez, %i.fa               ; 4 uses
  %i.fc = fmul fast <8 x float> %i.ey, %i.ae      ; 4 uses
  %i.fd = fadd fast <8 x float> %i.fc, %i.aw
  %i.fe = fmul fast <8 x float> %i.bt, %i.fd
  %i.ff = fadd fast <8 x float> %i.fc, %i.ay
  %i.fg = fmul fast <8 x float> %i.bt, %i.ff
  %i.fh = fadd fast <8 x float> %i.fc, %i.ba
  %i.fi = fmul fast <8 x float> %i.bt, %i.fh
  %i.fj = fadd fast <8 x float> %i.fc, %i.bc
  %i.fk = fmul fast <8 x float> %i.bt, %i.fj
  %i.fl = and <8 x i1> %i.bf, %i.fb
  %i.fm = select <8 x i1> %i.fl, <8 x float> %i.fe, <8 x float> splat (float -1.000000e+00)
  %i.fn = and <8 x i1> %i.bi, %i.fb
  %i.fo = select <8 x i1> %i.fn, <8 x float> %i.fg, <8 x float> splat (float -1.000000e+00)
  %i.fp = and <8 x i1> %i.bl, %i.fb
  %i.fq = select <8 x i1> %i.fp, <8 x float> %i.fi, <8 x float> splat (float -1.000000e+00)
  %i.fr = and <8 x i1> %i.bo, %i.fb
  %i.fs = select <8 x i1> %i.fr, <8 x float> %i.fk, <8 x float> splat (float -1.000000e+00)
  %i.ft = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fm) ; 2 uses
  %i.fu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo) ; 2 uses
  %i.fv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fq) ; 2 uses
  %i.fw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fs) ; 2 uses
  %i.fx = fsub fast <8 x float> %i.ah, %i.ap      ; 2 uses
  %i.fy = fsub fast <8 x float> %i.ao, %i.aq      ; 2 uses
  %i.fz = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.cr, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.cr, <8 x i32> %i.cs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gs = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gt = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>
  %i.gv = shufflevector <8 x float> %i.fz, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gx = bitcast <8 x i32> %i.gw to <8 x float>  ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.gn, <8 x i32> %i.gp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ha = shufflevector <8 x float> %i.gs, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>  ; 2 uses
  %i.hd = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.he = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.gp, <8 x i32> %i.gr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hg = bitcast <8 x i32> %i.hf to <8 x float>  ; 2 uses
  %i.hh = shufflevector <8 x float> %i.ga, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hi = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hj = shufflevector <8 x i32> %i.gk, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hk = shufflevector <8 x i32> %i.go, <8 x i32> %i.gq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.hl = bitcast <8 x i32> %i.hk to <8 x float>  ; 2 uses
  %i.hm = shufflevector <8 x float> %i.gu, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hn = shufflevector <8 x i32> %i.gd, <8 x i32> %i.gg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ho = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hp = shufflevector <8 x i32> %i.gm, <8 x i32> %i.go, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hq = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hs = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ht = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hu = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hv = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hw = shufflevector <8 x i32> %i.hi, <8 x i32> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hx = shufflevector <8 x float> %i.hl, <8 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hy = shufflevector <8 x i32> %i.hn, <8 x i32> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hz = shufflevector <8 x i32> %i.hp, <8 x i32> %i.hq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ia = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ib = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ic = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.id = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ie = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_8
begin_hunk_9_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399

.split.2:                                         ; preds = %.thread797, %bb.bz, %bb.by
  %i.ams = phi i32 [ %i.amr, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread797 ]
  %i.amt = getelementptr inbounds nuw i8, ptr %.6532, i64 36
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !23
  %i.amu = getelementptr inbounds nuw i8, ptr %.6532, i64 40 ; 2 uses
  %i.amv = add nsw i32 %i.alo, 1
  %i.amw = load i32, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.amx = sitofp fast i32 %i.amv to float
  %i.amy = sitofp fast i32 %i.amw to float
  %i.amz = fadd fast float %i.amy, -1.000000e+00
  %i.ana = icmp slt i32 %i.alo, -1
  %.sroa.speculated4.i437.2 = select i1 %i.ana, float 0.000000e+00, float %i.amx
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.2, float %i.amz)
  %i.anb = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.anc = load i32, ptr %i.uz, align 4, !tbaa !37
  %i.and = mul nsw i32 %i.anc, %i.anb             ; 4 uses
  %i.ane = icmp sgt i32 %i.anb, -1
  %i.anf = icmp sgt i32 %i.amw, %i.anb
  %i.ang = and i1 %i.ane, %i.anf                  ; 3 uses
  %i.anh = and i1 %i.afu, %i.ang
  %i.ani = and i1 %i.afv, %i.ang
  br i1 %i.ang, label %bb.ca, label %.thread800

.thread800:                                       ; preds = %.split.2
  store i32 -1, ptr %i.amu, align 4, !tbaa !23
  %i.anj = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 -1, ptr %i.anj, align 4, !tbaa !23
  %i.ank = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 -1, ptr %i.ank, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.anl = extractelement <4 x i32> %i.afn, i64 2
  %i.anm = add nsw i32 %i.and, %i.anl
  %i.ann = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.ano = mul nsw i32 %i.ann, %i.anm
  store i32 %i.ano, ptr %i.amu, align 4, !tbaa !23
  br i1 %i.afh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.anp = add nsw i32 %i.and, %i.afe
  %i.anq = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.anr = mul nsw i32 %i.anq, %i.anp
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ans = phi i32 [ %i.anr, %bb.cb ], [ -1, %bb.ca ]
  %i.ant = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 %i.ans, ptr %i.ant, align 4, !tbaa !23
  br i1 %i.anh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.anu = extractelement <4 x i32> %i.afn, i64 3
  %i.anv = add nsw i32 %i.and, %i.anu
  %i.anw = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.anx = mul nsw i32 %i.anw, %i.anv
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.any = phi i32 [ %i.anx, %bb.cd ], [ -1, %bb.cc ]
  %i.anz = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !23
  br i1 %i.ani, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.aoa = extractelement <4 x i32> %i.afn, i64 0
  %i.aob = add nsw i32 %i.and, %i.aoa
  %i.aoc = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.aod = mul nsw i32 %i.aoc, %i.aob
  br label %.split.3

.split.3:                                         ; preds = %.thread800, %bb.cf, %bb.ce
  %i.aoe = phi i32 [ %i.aod, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread800 ]
  %i.aof = getelementptr inbounds nuw i8, ptr %.6532, i64 52
  store i32 %i.aoe, ptr %i.aof, align 4, !tbaa !23
  %i.aog = getelementptr inbounds nuw i8, ptr %.6532, i64 56 ; 2 uses
  %i.aoh = add nsw i32 %i.alo, 2
  %i.aoi = load i32, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.aoj = sitofp fast i32 %i.aoh to float
  %i.aok = sitofp fast i32 %i.aoi to float
  %i.aol = fadd fast float %i.aok, -1.000000e+00
  %i.aom = icmp slt i32 %i.alo, -2
  %.sroa.speculated4.i437.3 = select i1 %i.aom, float 0.000000e+00, float %i.aoj
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.3, float %i.aol)
  %i.aon = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.aoo = load i32, ptr %i.uz, align 4, !tbaa !37
  %i.aop = mul nsw i32 %i.aoo, %i.aon             ; 4 uses
  %i.aoq = icmp sgt i32 %i.aon, -1
  %i.aor = icmp sgt i32 %i.aoi, %i.aon
  %i.aos = and i1 %i.aoq, %i.aor                  ; 3 uses
  %i.aot = and i1 %i.afu, %i.aos
  %i.aou = and i1 %i.afv, %i.aos
  br i1 %i.aos, label %bb.cg, label %.thread803

.thread803:                                       ; preds = %.split.3
  store i32 -1, ptr %i.aog, align 4, !tbaa !23
  %i.aov = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 -1, ptr %i.aov, align 4, !tbaa !23
  %i.aow = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 -1, ptr %i.aow, align 4, !tbaa !23
  br label %.split528.us

bb.cg:                                            ; preds = %.split.3
  %i.aox = extractelement <4 x i32> %i.afn, i64 2
  %i.aoy = add nsw i32 %i.aop, %i.aox
  %i.aoz = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apa = mul nsw i32 %i.aoz, %i.aoy
  store i32 %i.apa, ptr %i.aog, align 4, !tbaa !23
  br i1 %i.afh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.apb = add nsw i32 %i.aop, %i.afe
  %i.apc = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apd = mul nsw i32 %i.apc, %i.apb
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ape = phi i32 [ %i.apd, %bb.ch ], [ -1, %bb.cg ]
  %i.apf = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !23
  br i1 %i.aot, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.apg = extractelement <4 x i32> %i.afn, i64 3
  %i.aph = add nsw i32 %i.aop, %i.apg
  %i.api = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apj = mul nsw i32 %i.api, %i.aph
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.apk = phi i32 [ %i.apj, %bb.cj ], [ -1, %bb.ci ]
  %i.apl = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 %i.apk, ptr %i.apl, align 4, !tbaa !23
  br i1 %i.aou, label %bb.cl, label %.split528.us

bb.cl:                                            ; preds = %bb.ck
  %i.apm = extractelement <4 x i32> %i.afn, i64 0
  %i.apn = add nsw i32 %i.aop, %i.apm
  %i.apo = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.app = mul nsw i32 %i.apo, %i.apn
  br label %.split528.us

.loopexit:                                        ; preds = %.split528.us, %._crit_edge, %.preheader513, %.preheader512
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !332 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader512, label %_ZN4ncnn3MatD2Ev.exit397

.preheader512:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader512
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380556 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !333
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !333
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !333
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph540, label %.preheader

.preheader:                                       ; preds = %.lr.ph540, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jb, %.lr.ph540 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph540 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ja, %.lr.ph540 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph553, label %._crit_edge

.lr.ph540:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph540
  %.1539 = phi ptr [ %i.ja, %.lr.ph540 ], [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393538 = phi i32 [ %i.jc, %.lr.ph540 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395537 = phi ptr [ %i.jb, %.lr.ph540 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395537, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395537, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 5 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00) ; 5 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> zeroinitializer)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.aw) ; 6 uses
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> zeroinitializer)
  %i.az = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.ay) ; 6 uses
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.ba) ; 6 uses
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.bc) ; 6 uses
  %i.be = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bf = fcmp fast ogt <8 x float> %i.ae, %i.ax
  %i.bg = and <8 x i1> %i.be, %i.bf               ; 4 uses
  %i.bh = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bj = and <8 x i1> %i.bh, %i.bi               ; 4 uses
  %i.bk = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.bl = fcmp fast ogt <8 x float> %i.ae, %i.bb
  %i.bm = and <8 x i1> %i.bk, %i.bl               ; 4 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.ae, %i.bd
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 4 uses
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !16
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = insertelement <8 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bu = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> zeroinitializer)
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.bv) ; 3 uses
  %i.bx = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.by = fcmp fast ogt <8 x float> %i.am, %i.bw
  %i.bz = and <8 x i1> %i.bx, %i.by               ; 4 uses
  %i.ca = fmul fast <8 x float> %i.bw, %i.ae      ; 4 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.ax
  %i.cc = fmul fast <8 x float> %i.bt, %i.cb
  %i.cd = fadd fast <8 x float> %i.ca, %i.az
  %i.ce = fmul fast <8 x float> %i.bt, %i.cd
  %i.cf = fadd fast <8 x float> %i.ca, %i.bb
  %i.cg = fmul fast <8 x float> %i.bt, %i.cf
  %i.ch = fadd fast <8 x float> %i.ca, %i.bd
  %i.ci = fmul fast <8 x float> %i.bt, %i.ch
  %i.cj = and <8 x i1> %i.bg, %i.bz
  %i.ck = select <8 x i1> %i.cj, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.cl = and <8 x i1> %i.bj, %i.bz
  %i.cm = select <8 x i1> %i.cl, <8 x float> %i.ce, <8 x float> splat (float -1.000000e+00)
  %i.cn = and <8 x i1> %i.bm, %i.bz
  %i.co = select <8 x i1> %i.cn, <8 x float> %i.cg, <8 x float> splat (float -1.000000e+00)
  %i.cp = and <8 x i1> %i.bp, %i.bz
  %i.cq = select <8 x i1> %i.cp, <8 x float> %i.ci, <8 x float> splat (float -1.000000e+00)
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ck) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq) ; 2 uses
  %i.cv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.cw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.cv) ; 3 uses
  %i.cx = fcmp fast ogt <8 x float> %i.cw, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.am, %i.cw
  %i.cz = and <8 x i1> %i.cx, %i.cy               ; 4 uses
  %i.da = fmul fast <8 x float> %i.cw, %i.ae      ; 4 uses
  %i.db = fadd fast <8 x float> %i.da, %i.ax
  %i.dc = fmul fast <8 x float> %i.bt, %i.db
  %i.dd = fadd fast <8 x float> %i.da, %i.az
  %i.de = fmul fast <8 x float> %i.bt, %i.dd
  %i.df = fadd fast <8 x float> %i.da, %i.bb
  %i.dg = fmul fast <8 x float> %i.bt, %i.df
  %i.dh = fadd fast <8 x float> %i.da, %i.bd
  %i.di = fmul fast <8 x float> %i.bt, %i.dh
  %i.dj = and <8 x i1> %i.bg, %i.cz
  %i.dk = select <8 x i1> %i.dj, <8 x float> %i.dc, <8 x float> splat (float -1.000000e+00)
  %i.dl = and <8 x i1> %i.bj, %i.cz
  %i.dm = select <8 x i1> %i.dl, <8 x float> %i.de, <8 x float> splat (float -1.000000e+00)
  %i.dn = and <8 x i1> %i.bm, %i.cz
  %i.do = select <8 x i1> %i.dn, <8 x float> %i.dg, <8 x float> splat (float -1.000000e+00)
  %i.dp = and <8 x i1> %i.bp, %i.cz
  %i.dq = select <8 x i1> %i.dp, <8 x float> %i.di, <8 x float> splat (float -1.000000e+00)
  %i.dr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dk) ; 2 uses
  %i.ds = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.dt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.du = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dv = fadd fast <8 x float> %i.as, splat (float 1.000000e+00)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> zeroinitializer)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.dw) ; 3 uses
  %i.dy = fcmp fast ogt <8 x float> %i.dx, splat (float -1.000000e+00)
  %i.dz = fcmp fast ogt <8 x float> %i.am, %i.dx
  %i.ea = and <8 x i1> %i.dy, %i.dz               ; 4 uses
  %i.eb = fmul fast <8 x float> %i.dx, %i.ae      ; 4 uses
  %i.ec = fadd fast <8 x float> %i.eb, %i.ax
  %i.ed = fmul fast <8 x float> %i.bt, %i.ec
  %i.ee = fadd fast <8 x float> %i.eb, %i.az
  %i.ef = fmul fast <8 x float> %i.bt, %i.ee
  %i.eg = fadd fast <8 x float> %i.eb, %i.bb
  %i.eh = fmul fast <8 x float> %i.bt, %i.eg
  %i.ei = fadd fast <8 x float> %i.eb, %i.bd
  %i.ej = fmul fast <8 x float> %i.bt, %i.ei
  %i.ek = and <8 x i1> %i.bg, %i.ea
  %i.el = select <8 x i1> %i.ek, <8 x float> %i.ed, <8 x float> splat (float -1.000000e+00)
  %i.em = and <8 x i1> %i.bj, %i.ea
  %i.en = select <8 x i1> %i.em, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = and <8 x i1> %i.bm, %i.ea
  %i.ep = select <8 x i1> %i.eo, <8 x float> %i.eh, <8 x float> splat (float -1.000000e+00)
  %i.eq = and <8 x i1> %i.bp, %i.ea
  %i.er = select <8 x i1> %i.eq, <8 x float> %i.ej, <8 x float> splat (float -1.000000e+00)
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 2 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.er) ; 2 uses
  %i.ew = fadd fast <8 x float> %i.as, splat (float 2.000000e+00)
  %i.ex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> zeroinitializer)
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ex) ; 3 uses
  %i.ez = fcmp fast ogt <8 x float> %i.ey, splat (float -1.000000e+00)
  %i.fa = fcmp fast ogt <8 x float> %i.am, %i.ey
  %i.fb = and <8 x i1> %i.ez, %i.fa               ; 4 uses
  %i.fc = fmul fast <8 x float> %i.ey, %i.ae      ; 4 uses
  %i.fd = fadd fast <8 x float> %i.fc, %i.ax
  %i.fe = fmul fast <8 x float> %i.bt, %i.fd
  %i.ff = fadd fast <8 x float> %i.fc, %i.az
  %i.fg = fmul fast <8 x float> %i.bt, %i.ff
  %i.fh = fadd fast <8 x float> %i.fc, %i.bb
  %i.fi = fmul fast <8 x float> %i.bt, %i.fh
  %i.fj = fadd fast <8 x float> %i.fc, %i.bd
  %i.fk = fmul fast <8 x float> %i.bt, %i.fj
  %i.fl = and <8 x i1> %i.bg, %i.fb
  %i.fm = select <8 x i1> %i.fl, <8 x float> %i.fe, <8 x float> splat (float -1.000000e+00)
  %i.fn = and <8 x i1> %i.bj, %i.fb
  %i.fo = select <8 x i1> %i.fn, <8 x float> %i.fg, <8 x float> splat (float -1.000000e+00)
  %i.fp = and <8 x i1> %i.bm, %i.fb
  %i.fq = select <8 x i1> %i.fp, <8 x float> %i.fi, <8 x float> splat (float -1.000000e+00)
  %i.fr = and <8 x i1> %i.bp, %i.fb
  %i.fs = select <8 x i1> %i.fr, <8 x float> %i.fk, <8 x float> splat (float -1.000000e+00)
  %i.ft = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fm) ; 2 uses
  %i.fu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo) ; 2 uses
  %i.fv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fq) ; 2 uses
  %i.fw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fs) ; 2 uses
  %i.fx = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.fy = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.fz = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.cr, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.cr, <8 x i32> %i.cs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gs = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gt = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>
  %i.gv = shufflevector <8 x float> %i.fz, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gx = bitcast <8 x i32> %i.gw to <8 x float>  ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.gn, <8 x i32> %i.gp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ha = shufflevector <8 x float> %i.gs, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>  ; 2 uses
  %i.hd = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.he = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.gp, <8 x i32> %i.gr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hg = bitcast <8 x i32> %i.hf to <8 x float>  ; 2 uses
  %i.hh = shufflevector <8 x float> %i.ga, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hi = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hj = shufflevector <8 x i32> %i.gk, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hk = shufflevector <8 x i32> %i.go, <8 x i32> %i.gq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.hl = bitcast <8 x i32> %i.hk to <8 x float>  ; 2 uses
  %i.hm = shufflevector <8 x float> %i.gu, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hn = shufflevector <8 x i32> %i.gd, <8 x i32> %i.gg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ho = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hp = shufflevector <8 x i32> %i.gm, <8 x i32> %i.go, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hq = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hs = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ht = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hu = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hv = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hw = shufflevector <8 x i32> %i.hi, <8 x i32> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hx = shufflevector <8 x float> %i.hl, <8 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hy = shufflevector <8 x i32> %i.hn, <8 x i32> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hz = shufflevector <8 x i32> %i.hp, <8 x i32> %i.hq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ia = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ib = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ic = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.id = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ie = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.if = shufflevector <8 x i32> %i.hi, <8 x i32> %i.hj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_9
begin_hunk_10_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399

.split.2:                                         ; preds = %.thread797, %bb.bz, %bb.by
  %i.ams = phi i32 [ %i.amr, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread797 ]
  %i.amt = getelementptr inbounds nuw i8, ptr %.6532, i64 36
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !23
  %i.amu = getelementptr inbounds nuw i8, ptr %.6532, i64 40 ; 2 uses
  %i.amv = add nsw i32 %i.alo, 1
  %i.amw = load i32, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.amx = sitofp fast i32 %i.amv to float
  %i.amy = sitofp fast i32 %i.amw to float
  %i.amz = fadd fast float %i.amy, -1.000000e+00
  %i.ana = icmp slt i32 %i.alo, -1
  %.sroa.speculated4.i437.2 = select i1 %i.ana, float 0.000000e+00, float %i.amx
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.2, float %i.amz)
  %i.anb = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.anc = load i32, ptr %i.uz, align 4, !tbaa !37
  %i.and = mul nsw i32 %i.anc, %i.anb             ; 4 uses
  %i.ane = icmp sgt i32 %i.anb, -1
  %i.anf = icmp sgt i32 %i.amw, %i.anb
  %i.ang = and i1 %i.ane, %i.anf                  ; 3 uses
  %i.anh = and i1 %i.afu, %i.ang
  %i.ani = and i1 %i.afv, %i.ang
  br i1 %i.ang, label %bb.ca, label %.thread800

.thread800:                                       ; preds = %.split.2
  store i32 -1, ptr %i.amu, align 4, !tbaa !23
  %i.anj = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 -1, ptr %i.anj, align 4, !tbaa !23
  %i.ank = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 -1, ptr %i.ank, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.anl = extractelement <4 x i32> %i.afo, i64 2
  %i.anm = add nsw i32 %i.and, %i.anl
  %i.ann = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.ano = mul nsw i32 %i.ann, %i.anm
  store i32 %i.ano, ptr %i.amu, align 4, !tbaa !23
  br i1 %i.afi, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.anp = add nsw i32 %i.and, %i.afe
  %i.anq = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.anr = mul nsw i32 %i.anq, %i.anp
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ans = phi i32 [ %i.anr, %bb.cb ], [ -1, %bb.ca ]
  %i.ant = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 %i.ans, ptr %i.ant, align 4, !tbaa !23
  br i1 %i.anh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.anu = extractelement <4 x i32> %i.afo, i64 3
  %i.anv = add nsw i32 %i.and, %i.anu
  %i.anw = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.anx = mul nsw i32 %i.anw, %i.anv
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.any = phi i32 [ %i.anx, %bb.cd ], [ -1, %bb.cc ]
  %i.anz = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !23
  br i1 %i.ani, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.aoa = extractelement <4 x i32> %i.afo, i64 0
  %i.aob = add nsw i32 %i.and, %i.aoa
  %i.aoc = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.aod = mul nsw i32 %i.aoc, %i.aob
  br label %.split.3

.split.3:                                         ; preds = %.thread800, %bb.cf, %bb.ce
  %i.aoe = phi i32 [ %i.aod, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread800 ]
  %i.aof = getelementptr inbounds nuw i8, ptr %.6532, i64 52
  store i32 %i.aoe, ptr %i.aof, align 4, !tbaa !23
  %i.aog = getelementptr inbounds nuw i8, ptr %.6532, i64 56 ; 2 uses
  %i.aoh = add nsw i32 %i.alo, 2
  %i.aoi = load i32, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.aoj = sitofp fast i32 %i.aoh to float
  %i.aok = sitofp fast i32 %i.aoi to float
  %i.aol = fadd fast float %i.aok, -1.000000e+00
  %i.aom = icmp slt i32 %i.alo, -2
  %.sroa.speculated4.i437.3 = select i1 %i.aom, float 0.000000e+00, float %i.aoj
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.3, float %i.aol)
  %i.aon = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.aoo = load i32, ptr %i.uz, align 4, !tbaa !37
  %i.aop = mul nsw i32 %i.aoo, %i.aon             ; 4 uses
  %i.aoq = icmp sgt i32 %i.aon, -1
  %i.aor = icmp sgt i32 %i.aoi, %i.aon
  %i.aos = and i1 %i.aoq, %i.aor                  ; 3 uses
  %i.aot = and i1 %i.afu, %i.aos
  %i.aou = and i1 %i.afv, %i.aos
  br i1 %i.aos, label %bb.cg, label %.thread803

.thread803:                                       ; preds = %.split.3
  store i32 -1, ptr %i.aog, align 4, !tbaa !23
  %i.aov = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 -1, ptr %i.aov, align 4, !tbaa !23
  %i.aow = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 -1, ptr %i.aow, align 4, !tbaa !23
  br label %.split528.us

bb.cg:                                            ; preds = %.split.3
  %i.aox = extractelement <4 x i32> %i.afo, i64 2
  %i.aoy = add nsw i32 %i.aop, %i.aox
  %i.aoz = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apa = mul nsw i32 %i.aoz, %i.aoy
  store i32 %i.apa, ptr %i.aog, align 4, !tbaa !23
  br i1 %i.afi, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.apb = add nsw i32 %i.aop, %i.afe
  %i.apc = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apd = mul nsw i32 %i.apc, %i.apb
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ape = phi i32 [ %i.apd, %bb.ch ], [ -1, %bb.cg ]
  %i.apf = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !23
  br i1 %i.aot, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.apg = extractelement <4 x i32> %i.afo, i64 3
  %i.aph = add nsw i32 %i.aop, %i.apg
  %i.api = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apj = mul nsw i32 %i.api, %i.aph
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.apk = phi i32 [ %i.apj, %bb.cj ], [ -1, %bb.ci ]
  %i.apl = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 %i.apk, ptr %i.apl, align 4, !tbaa !23
  br i1 %i.aou, label %bb.cl, label %.split528.us

bb.cl:                                            ; preds = %bb.ck
  %i.apm = extractelement <4 x i32> %i.afo, i64 0
  %i.apn = add nsw i32 %i.aop, %i.apm
  %i.apo = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.app = mul nsw i32 %i.apo, %i.apn
  br label %.split528.us

.loopexit:                                        ; preds = %.split528.us, %._crit_edge, %.preheader513, %.preheader512
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !349 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader521, label %_ZN4ncnn3MatD2Ev.exit397

.preheader521:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader521
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380565 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !350
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !350
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !350
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph549, label %.preheader

.preheader:                                       ; preds = %.lr.ph549, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.kl, %.lr.ph549 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph549 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380565, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.kk, %.lr.ph549 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph562, label %._crit_edge

.lr.ph549:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph549
  %.1548 = phi ptr [ %i.kk, %.lr.ph549 ], [ %.0380565, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393547 = phi i32 [ %i.km, %.lr.ph549 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395546 = phi ptr [ %i.kl, %.lr.ph549 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395546, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395546, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 15 uses
  %i.af = fadd fast <8 x float> %6, splat (float 1.000000e+00)
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float -1.000000e+00))
  %i.ah = fmul fast <8 x float> %i.ag, splat (float 5.000000e-01) ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !38
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> zeroinitializer ; 11 uses
  %i.am = fadd fast <8 x float> %7, splat (float 1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.al, <8 x float> splat (float -1.000000e+00))
  %i.ao = fmul fast <8 x float> %i.an, splat (float 5.000000e-01) ; 2 uses
  %i.ap = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 5 uses
  %i.aq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 5 uses
  %i.ar = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 4 uses
  %i.as = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01)
  %i.at = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.as)
  %i.au = fsub fast <8 x float> %i.at, %i.ae
  %i.av = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.au)
  %i.aw = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01) ; 4 uses
  %i.ax = fsub fast <8 x float> %i.aw, %i.av
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> zeroinitializer)
  %i.az = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.ay) ; 6 uses
  %i.ba = fadd fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.bb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ba)
  %i.bc = fsub fast <8 x float> %i.bb, %i.ae
  %i.bd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bc)
  %i.be = fsub fast <8 x float> %i.aw, %i.bd
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> zeroinitializer)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.bf) ; 6 uses
  %i.bh = fadd fast <8 x float> %i.ap, splat (float 1.500000e+00)
  %i.bi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bh)
  %i.bj = fsub fast <8 x float> %i.bi, %i.ae
  %i.bk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bj)
  %i.bl = fsub fast <8 x float> %i.aw, %i.bk
  %i.bm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bl, <8 x float> zeroinitializer)
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.bm) ; 6 uses
  %i.bo = fadd fast <8 x float> %i.ap, splat (float 2.500000e+00)
  %i.bp = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bo)
  %i.bq = fsub fast <8 x float> %i.bp, %i.ae
  %i.br = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bq)
  %i.bs = fsub fast <8 x float> %i.aw, %i.br
  %i.bt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> zeroinitializer)
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.bt) ; 6 uses
  %i.bv = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bx = and <8 x i1> %i.bv, %i.bw               ; 4 uses
  %i.by = fcmp fast ogt <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bz = fcmp fast ogt <8 x float> %i.ae, %i.bg
  %i.ca = and <8 x i1> %i.by, %i.bz               ; 4 uses
  %i.cb = fcmp fast ogt <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.cc = fcmp fast ogt <8 x float> %i.ae, %i.bn
  %i.cd = and <8 x i1> %i.cb, %i.cc               ; 4 uses
  %i.ce = fcmp fast ogt <8 x float> %i.bu, splat (float -1.000000e+00)
  %i.cf = fcmp fast ogt <8 x float> %i.ae, %i.bu
  %i.cg = and <8 x i1> %i.ce, %i.cf               ; 4 uses
  %i.ch = fadd fast <8 x float> %i.al, splat (float -1.000000e+00) ; 4 uses
  %i.ci = fadd fast <8 x float> %i.al, splat (float -5.000000e-01) ; 4 uses
  %i.cj = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ck = sitofp fast i32 %i.cj to float
  %i.cl = insertelement <8 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <8 x float> %i.cl, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.cn = fadd fast <8 x float> %i.aq, splat (float -5.000000e-01)
  %i.co = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cn)
  %i.cp = fsub fast <8 x float> %i.co, %i.al
  %i.cq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cp)
  %i.cr = fsub fast <8 x float> %i.ci, %i.cq
  %i.cs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> zeroinitializer)
  %i.ct = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.cs) ; 3 uses
  %i.cu = fcmp fast ogt <8 x float> %i.ct, splat (float -1.000000e+00)
  %i.cv = fcmp fast ogt <8 x float> %i.al, %i.ct
  %i.cw = and <8 x i1> %i.cu, %i.cv               ; 4 uses
  %i.cx = fmul fast <8 x float> %i.ct, %i.ae      ; 4 uses
  %i.cy = fadd fast <8 x float> %i.cx, %i.az
  %i.cz = fmul fast <8 x float> %i.cm, %i.cy
  %i.da = fadd fast <8 x float> %i.cx, %i.bg
  %i.db = fmul fast <8 x float> %i.cm, %i.da
  %i.dc = fadd fast <8 x float> %i.cx, %i.bn
  %i.dd = fmul fast <8 x float> %i.cm, %i.dc
  %i.de = fadd fast <8 x float> %i.cx, %i.bu
  %i.df = fmul fast <8 x float> %i.cm, %i.de
  %i.dg = and <8 x i1> %i.bx, %i.cw
  %i.dh = select <8 x i1> %i.dg, <8 x float> %i.cz, <8 x float> splat (float -1.000000e+00)
  %i.di = and <8 x i1> %i.ca, %i.cw
  %i.dj = select <8 x i1> %i.di, <8 x float> %i.db, <8 x float> splat (float -1.000000e+00)
  %i.dk = and <8 x i1> %i.cd, %i.cw
  %i.dl = select <8 x i1> %i.dk, <8 x float> %i.dd, <8 x float> splat (float -1.000000e+00)
  %i.dm = and <8 x i1> %i.cg, %i.cw
  %i.dn = select <8 x i1> %i.dm, <8 x float> %i.df, <8 x float> splat (float -1.000000e+00)
  %i.do = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dh) ; 2 uses
  %i.dp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dj) ; 2 uses
  %i.dq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dl) ; 2 uses
  %i.dr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.ds = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.dt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ds)
  %i.du = fsub fast <8 x float> %i.dt, %i.al
  %i.dv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.du)
  %i.dw = fsub fast <8 x float> %i.ci, %i.dv
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> zeroinitializer)
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.dx) ; 3 uses
  %i.dz = fcmp fast ogt <8 x float> %i.dy, splat (float -1.000000e+00)
  %i.ea = fcmp fast ogt <8 x float> %i.al, %i.dy
  %i.eb = and <8 x i1> %i.dz, %i.ea               ; 4 uses
  %i.ec = fmul fast <8 x float> %i.dy, %i.ae      ; 4 uses
  %i.ed = fadd fast <8 x float> %i.ec, %i.az
  %i.ee = fmul fast <8 x float> %i.cm, %i.ed
  %i.ef = fadd fast <8 x float> %i.ec, %i.bg
  %i.eg = fmul fast <8 x float> %i.cm, %i.ef
  %i.eh = fadd fast <8 x float> %i.ec, %i.bn
  %i.ei = fmul fast <8 x float> %i.cm, %i.eh
  %i.ej = fadd fast <8 x float> %i.ec, %i.bu
  %i.ek = fmul fast <8 x float> %i.cm, %i.ej
  %i.el = and <8 x i1> %i.bx, %i.eb
  %i.em = select <8 x i1> %i.el, <8 x float> %i.ee, <8 x float> splat (float -1.000000e+00)
  %i.en = and <8 x i1> %i.ca, %i.eb
  %i.eo = select <8 x i1> %i.en, <8 x float> %i.eg, <8 x float> splat (float -1.000000e+00)
  %i.ep = and <8 x i1> %i.cd, %i.eb
  %i.eq = select <8 x i1> %i.ep, <8 x float> %i.ei, <8 x float> splat (float -1.000000e+00)
  %i.er = and <8 x i1> %i.cg, %i.eb
  %i.es = select <8 x i1> %i.er, <8 x float> %i.ek, <8 x float> splat (float -1.000000e+00)
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.em) ; 2 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo) ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.es) ; 2 uses
  %i.ex = fadd fast <8 x float> %i.aq, splat (float 1.500000e+00)
  %i.ey = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ex)
  %i.ez = fsub fast <8 x float> %i.ey, %i.al
  %i.fa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ez)
  %i.fb = fsub fast <8 x float> %i.ci, %i.fa
  %i.fc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> zeroinitializer)
  %i.fd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.fc) ; 3 uses
  %i.fe = fcmp fast ogt <8 x float> %i.fd, splat (float -1.000000e+00)
  %i.ff = fcmp fast ogt <8 x float> %i.al, %i.fd
  %i.fg = and <8 x i1> %i.fe, %i.ff               ; 4 uses
  %i.fh = fmul fast <8 x float> %i.fd, %i.ae      ; 4 uses
  %i.fi = fadd fast <8 x float> %i.fh, %i.az
  %i.fj = fmul fast <8 x float> %i.cm, %i.fi
  %i.fk = fadd fast <8 x float> %i.fh, %i.bg
  %i.fl = fmul fast <8 x float> %i.cm, %i.fk
  %i.fm = fadd fast <8 x float> %i.fh, %i.bn
  %i.fn = fmul fast <8 x float> %i.cm, %i.fm
  %i.fo = fadd fast <8 x float> %i.fh, %i.bu
  %i.fp = fmul fast <8 x float> %i.cm, %i.fo
  %i.fq = and <8 x i1> %i.bx, %i.fg
  %i.fr = select <8 x i1> %i.fq, <8 x float> %i.fj, <8 x float> splat (float -1.000000e+00)
  %i.fs = and <8 x i1> %i.ca, %i.fg
  %i.ft = select <8 x i1> %i.fs, <8 x float> %i.fl, <8 x float> splat (float -1.000000e+00)
  %i.fu = and <8 x i1> %i.cd, %i.fg
  %i.fv = select <8 x i1> %i.fu, <8 x float> %i.fn, <8 x float> splat (float -1.000000e+00)
  %i.fw = and <8 x i1> %i.cg, %i.fg
  %i.fx = select <8 x i1> %i.fw, <8 x float> %i.fp, <8 x float> splat (float -1.000000e+00)
  %i.fy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fr) ; 2 uses
  %i.fz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ft) ; 2 uses
  %i.ga = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fv) ; 2 uses
  %i.gb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fx) ; 2 uses
  %i.gc = fadd fast <8 x float> %i.aq, splat (float 2.500000e+00)
  %i.gd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gc)
  %i.ge = fsub fast <8 x float> %i.gd, %i.al
  %i.gf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ge)
  %i.gg = fsub fast <8 x float> %i.ci, %i.gf
  %i.gh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> zeroinitializer)
  %i.gi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.gh) ; 3 uses
  %i.gj = fcmp fast ogt <8 x float> %i.gi, splat (float -1.000000e+00)
  %i.gk = fcmp fast ogt <8 x float> %i.al, %i.gi
  %i.gl = and <8 x i1> %i.gj, %i.gk               ; 4 uses
  %i.gm = fmul fast <8 x float> %i.gi, %i.ae      ; 4 uses
  %i.gn = fadd fast <8 x float> %i.gm, %i.az
  %i.go = fmul fast <8 x float> %i.cm, %i.gn
  %i.gp = fadd fast <8 x float> %i.gm, %i.bg
  %i.gq = fmul fast <8 x float> %i.cm, %i.gp
  %i.gr = fadd fast <8 x float> %i.gm, %i.bn
  %i.gs = fmul fast <8 x float> %i.cm, %i.gr
  %i.gt = fadd fast <8 x float> %i.gm, %i.bu
  %i.gu = fmul fast <8 x float> %i.cm, %i.gt
  %i.gv = and <8 x i1> %i.bx, %i.gl
  %i.gw = select <8 x i1> %i.gv, <8 x float> %i.go, <8 x float> splat (float -1.000000e+00)
  %i.gx = and <8 x i1> %i.ca, %i.gl
  %i.gy = select <8 x i1> %i.gx, <8 x float> %i.gq, <8 x float> splat (float -1.000000e+00)
  %i.gz = and <8 x i1> %i.cd, %i.gl
  %i.ha = select <8 x i1> %i.gz, <8 x float> %i.gs, <8 x float> splat (float -1.000000e+00)
  %i.hb = and <8 x i1> %i.cg, %i.gl
  %i.hc = select <8 x i1> %i.hb, <8 x float> %i.gu, <8 x float> splat (float -1.000000e+00)
  %i.hd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gw) ; 2 uses
  %i.he = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gy) ; 2 uses
  %i.hf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ha) ; 2 uses
  %i.hg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hc) ; 2 uses
  %i.hh = fsub fast <8 x float> %i.ah, %i.ap      ; 2 uses
  %i.hi = fsub fast <8 x float> %i.ao, %i.aq      ; 2 uses
  %i.hj = shufflevector <8 x float> %i.hh, <8 x float> %i.hi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hk = shufflevector <8 x float> %i.hh, <8 x float> %i.hi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hl = shufflevector <8 x i32> %i.do, <8 x i32> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hm = bitcast <8 x i32> %i.hl to <8 x float>
  %i.hn = shufflevector <8 x i32> %i.do, <8 x i32> %i.dp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ho = bitcast <8 x i32> %i.hn to <8 x float>
  %i.hp = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hq = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hs = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ht = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hu = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hv = shufflevector <8 x i32> %i.fy, <8 x i32> %i.fz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hw = shufflevector <8 x i32> %i.fy, <8 x i32> %i.fz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hx = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hy = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hz = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ia = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ib = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ic = bitcast <8 x i32> %i.ib to <8 x float>
  %i.id = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ie = bitcast <8 x i32> %i.id to <8 x float>
end_hunk_10
begin_hunk_11_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.asx = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.asw)
  %i.asy = sitofp fast i32 %i.asu to float        ; 3 uses
  %i.asz = fsub fast float %i.asx, %i.asy
  %i.ata = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.asz)
  %i.atb = fadd fast float %i.asy, -5.000000e-01
  %i.atc = fsub fast float %i.atb, %i.ata
  %i.atd = fadd fast float %i.asy, -1.000000e+00
  %.sroa.speculated6.i437.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.atc, float 0.000000e+00)
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.2, float %i.atd)
  %i.ate = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.atf = load i32, ptr %i.yd, align 4, !tbaa !37
  %i.atg = mul nsw i32 %i.atf, %i.ate             ; 4 uses
  %i.ath = icmp sgt i32 %i.ate, -1
  %i.ati = icmp sgt i32 %i.asu, %i.ate
  %i.atj = and i1 %i.ath, %i.ati                  ; 3 uses
  %i.atk = and i1 %i.aku, %i.atj
  %i.atl = and i1 %i.akv, %i.atj
  br i1 %i.atj, label %bb.ca, label %.thread805

.thread805:                                       ; preds = %.split.2
  store i32 -1, ptr %i.asr, align 4, !tbaa !23
  %i.atm = getelementptr inbounds nuw i8, ptr %.6541, i64 44
  store i32 -1, ptr %i.atm, align 4, !tbaa !23
  %i.atn = getelementptr inbounds nuw i8, ptr %.6541, i64 48
  store i32 -1, ptr %i.atn, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.ato = extractelement <4 x i32> %i.akn, i64 2
  %i.atp = add nsw i32 %i.atg, %i.ato
  %i.atq = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.atr = mul nsw i32 %i.atq, %i.atp
  store i32 %i.atr, ptr %i.asr, align 4, !tbaa !23
  br i1 %i.akd, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ats = add nsw i32 %i.atg, %i.aka
  %i.att = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.atu = mul nsw i32 %i.att, %i.ats
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.atv = phi i32 [ %i.atu, %bb.cb ], [ -1, %bb.ca ]
  %i.atw = getelementptr inbounds nuw i8, ptr %.6541, i64 44
  store i32 %i.atv, ptr %i.atw, align 4, !tbaa !23
  br i1 %i.atk, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.atx = extractelement <4 x i32> %i.akn, i64 3
  %i.aty = add nsw i32 %i.atg, %i.atx
  %i.atz = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.aua = mul nsw i32 %i.atz, %i.aty
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.aub = phi i32 [ %i.aua, %bb.cd ], [ -1, %bb.cc ]
  %i.auc = getelementptr inbounds nuw i8, ptr %.6541, i64 48
  store i32 %i.aub, ptr %i.auc, align 4, !tbaa !23
  br i1 %i.atl, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.aud = extractelement <4 x i32> %i.akn, i64 0
  %i.aue = add nsw i32 %i.atg, %i.aud
  %i.auf = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.aug = mul nsw i32 %i.auf, %i.aue
  br label %.split.3

.split.3:                                         ; preds = %.thread805, %bb.cf, %bb.ce
  %i.auh = phi i32 [ %i.aug, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread805 ]
  %i.aui = getelementptr inbounds nuw i8, ptr %.6541, i64 52
  store i32 %i.auh, ptr %i.aui, align 4, !tbaa !23
  %i.auj = getelementptr inbounds nuw i8, ptr %.6541, i64 56 ; 2 uses
  %i.auk = add i32 %i.ass, 2
  %i.aul = load i32, ptr %i.ye, align 8, !tbaa !38 ; 2 uses
  %i.aum = sitofp fast i32 %i.auk to float
  %i.aun = fadd fast float %i.aum, 5.000000e-01
  %i.auo = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.aun)
  %i.aup = sitofp fast i32 %i.aul to float        ; 3 uses
  %i.auq = fsub fast float %i.auo, %i.aup
  %i.aur = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.auq)
  %i.aus = fadd fast float %i.aup, -5.000000e-01
  %i.aut = fsub fast float %i.aus, %i.aur
  %i.auu = fadd fast float %i.aup, -1.000000e+00
  %.sroa.speculated6.i437.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aut, float 0.000000e+00)
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.3, float %i.auu)
  %i.auv = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.auw = load i32, ptr %i.yd, align 4, !tbaa !37
  %i.aux = mul nsw i32 %i.auw, %i.auv             ; 4 uses
  %i.auy = icmp sgt i32 %i.auv, -1
  %i.auz = icmp sgt i32 %i.aul, %i.auv
  %i.ava = and i1 %i.auy, %i.auz                  ; 3 uses
  %i.avb = and i1 %i.aku, %i.ava
  %i.avc = and i1 %i.akv, %i.ava
  br i1 %i.ava, label %bb.cg, label %.thread808

.thread808:                                       ; preds = %.split.3
  store i32 -1, ptr %i.auj, align 4, !tbaa !23
  %i.avd = getelementptr inbounds nuw i8, ptr %.6541, i64 60
  store i32 -1, ptr %i.avd, align 4, !tbaa !23
  %i.ave = getelementptr inbounds nuw i8, ptr %.6541, i64 64
  store i32 -1, ptr %i.ave, align 4, !tbaa !23
  br label %.split537.us

bb.cg:                                            ; preds = %.split.3
  %i.avf = extractelement <4 x i32> %i.akn, i64 2
  %i.avg = add nsw i32 %i.aux, %i.avf
  %i.avh = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.avi = mul nsw i32 %i.avh, %i.avg
  store i32 %i.avi, ptr %i.auj, align 4, !tbaa !23
  br i1 %i.akd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.avj = add nsw i32 %i.aux, %i.aka
  %i.avk = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.avl = mul nsw i32 %i.avk, %i.avj
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.avm = phi i32 [ %i.avl, %bb.ch ], [ -1, %bb.cg ]
  %i.avn = getelementptr inbounds nuw i8, ptr %.6541, i64 60
  store i32 %i.avm, ptr %i.avn, align 4, !tbaa !23
  br i1 %i.avb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.avo = extractelement <4 x i32> %i.akn, i64 3
  %i.avp = add nsw i32 %i.aux, %i.avo
  %i.avq = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.avr = mul nsw i32 %i.avq, %i.avp
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.avs = phi i32 [ %i.avr, %bb.cj ], [ -1, %bb.ci ]
  %i.avt = getelementptr inbounds nuw i8, ptr %.6541, i64 64
  store i32 %i.avs, ptr %i.avt, align 4, !tbaa !23
  br i1 %i.avc, label %bb.cl, label %.split537.us

bb.cl:                                            ; preds = %bb.ck
  %i.avu = extractelement <4 x i32> %i.akn, i64 0
  %i.avv = add nsw i32 %i.aux, %i.avu
  %i.avw = load i32, ptr %i.yf, align 8, !tbaa !16
  %i.avx = mul nsw i32 %i.avw, %i.avv
  br label %.split537.us

.loopexit:                                        ; preds = %.split537.us, %._crit_edge, %.preheader522, %.preheader521
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !366 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader510, label %_ZN4ncnn3MatD2Ev.exit397

.preheader510:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader510
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380554 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !367
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !367
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !367
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph538, label %.preheader

.preheader:                                       ; preds = %.lr.ph538, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jr, %.lr.ph538 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph538 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380554, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jq, %.lr.ph538 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph551, label %._crit_edge

.lr.ph538:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph538
  %.1537 = phi ptr [ %i.jq, %.lr.ph538 ], [ %.0380554, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393536 = phi i32 [ %i.js, %.lr.ph538 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395535 = phi ptr [ %i.jr, %.lr.ph538 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395535, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395535, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 9 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00) ; 9 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00)
  %i.aw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.at)
  %i.ax = fsub fast <8 x float> %i.aw, %i.ah
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ax)
  %i.az = fsub fast <8 x float> %i.ah, %i.ay      ; 6 uses
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ar)
  %i.bb = fsub fast <8 x float> %i.ba, %i.ah
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fsub fast <8 x float> %i.ah, %i.bc      ; 6 uses
  %i.be = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.au)
  %i.bf = fsub fast <8 x float> %i.be, %i.ah
  %i.bg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bf)
  %i.bh = fsub fast <8 x float> %i.ah, %i.bg      ; 6 uses
  %i.bi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.av)
  %i.bj = fsub fast <8 x float> %i.bi, %i.ah
  %i.bk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bj)
  %i.bl = fsub fast <8 x float> %i.ah, %i.bk      ; 6 uses
  %i.bm = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bn = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bo = and <8 x i1> %i.bm, %i.bn               ; 4 uses
  %i.bp = fcmp fast ogt <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bq = fcmp fast ogt <8 x float> %i.ae, %i.bd
  %i.br = and <8 x i1> %i.bp, %i.bq               ; 4 uses
  %i.bs = fcmp fast ogt <8 x float> %i.bh, splat (float -1.000000e+00)
  %i.bt = fcmp fast ogt <8 x float> %i.ae, %i.bh
  %i.bu = and <8 x i1> %i.bs, %i.bt               ; 4 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.ae, %i.bl
  %i.bx = and <8 x i1> %i.bv, %i.bw               ; 4 uses
  %i.by = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = insertelement <8 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <8 x float> %i.ca, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.cc = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.cd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.cc)
  %i.ce = fsub fast <8 x float> %i.cd, %i.ap
  %i.cf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ce)
  %i.cg = fsub fast <8 x float> %i.ap, %i.cf      ; 3 uses
  %i.ch = fcmp fast ogt <8 x float> %i.cg, splat (float -1.000000e+00)
  %i.ci = fcmp fast ogt <8 x float> %i.am, %i.cg
  %i.cj = and <8 x i1> %i.ch, %i.ci               ; 4 uses
  %i.ck = fmul fast <8 x float> %i.cg, %i.ae      ; 4 uses
  %i.cl = fadd fast <8 x float> %i.ck, %i.az
  %i.cm = fmul fast <8 x float> %i.cb, %i.cl
  %i.cn = fadd fast <8 x float> %i.ck, %i.bd
  %i.co = fmul fast <8 x float> %i.cb, %i.cn
  %i.cp = fadd fast <8 x float> %i.ck, %i.bh
  %i.cq = fmul fast <8 x float> %i.cb, %i.cp
  %i.cr = fadd fast <8 x float> %i.ck, %i.bl
  %i.cs = fmul fast <8 x float> %i.cb, %i.cr
  %i.ct = and <8 x i1> %i.bo, %i.cj
  %i.cu = select <8 x i1> %i.ct, <8 x float> %i.cm, <8 x float> splat (float -1.000000e+00)
  %i.cv = and <8 x i1> %i.br, %i.cj
  %i.cw = select <8 x i1> %i.cv, <8 x float> %i.co, <8 x float> splat (float -1.000000e+00)
  %i.cx = and <8 x i1> %i.bu, %i.cj
  %i.cy = select <8 x i1> %i.cx, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  %i.cz = and <8 x i1> %i.bx, %i.cj
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cu) ; 2 uses
  %i.dc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.dd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.de = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.df = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.as)
  %i.dg = fsub fast <8 x float> %i.df, %i.ap
  %i.dh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dg)
  %i.di = fsub fast <8 x float> %i.ap, %i.dh      ; 3 uses
  %i.dj = fcmp fast ogt <8 x float> %i.di, splat (float -1.000000e+00)
  %i.dk = fcmp fast ogt <8 x float> %i.am, %i.di
  %i.dl = and <8 x i1> %i.dj, %i.dk               ; 4 uses
  %i.dm = fmul fast <8 x float> %i.di, %i.ae      ; 4 uses
  %i.dn = fadd fast <8 x float> %i.dm, %i.az
  %i.do = fmul fast <8 x float> %i.cb, %i.dn
  %i.dp = fadd fast <8 x float> %i.dm, %i.bd
  %i.dq = fmul fast <8 x float> %i.cb, %i.dp
  %i.dr = fadd fast <8 x float> %i.dm, %i.bh
  %i.ds = fmul fast <8 x float> %i.cb, %i.dr
  %i.dt = fadd fast <8 x float> %i.dm, %i.bl
  %i.du = fmul fast <8 x float> %i.cb, %i.dt
  %i.dv = and <8 x i1> %i.bo, %i.dl
  %i.dw = select <8 x i1> %i.dv, <8 x float> %i.do, <8 x float> splat (float -1.000000e+00)
  %i.dx = and <8 x i1> %i.br, %i.dl
  %i.dy = select <8 x i1> %i.dx, <8 x float> %i.dq, <8 x float> splat (float -1.000000e+00)
  %i.dz = and <8 x i1> %i.bu, %i.dl
  %i.ea = select <8 x i1> %i.dz, <8 x float> %i.ds, <8 x float> splat (float -1.000000e+00)
  %i.eb = and <8 x i1> %i.bx, %i.dl
  %i.ec = select <8 x i1> %i.eb, <8 x float> %i.du, <8 x float> splat (float -1.000000e+00)
  %i.ed = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 2 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 2 uses
  %i.eh = fadd fast <8 x float> %i.as, splat (float 1.000000e+00)
  %i.ei = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.eh)
  %i.ej = fsub fast <8 x float> %i.ei, %i.ap
  %i.ek = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ej)
  %i.el = fsub fast <8 x float> %i.ap, %i.ek      ; 3 uses
  %i.em = fcmp fast ogt <8 x float> %i.el, splat (float -1.000000e+00)
  %i.en = fcmp fast ogt <8 x float> %i.am, %i.el
  %i.eo = and <8 x i1> %i.em, %i.en               ; 4 uses
  %i.ep = fmul fast <8 x float> %i.el, %i.ae      ; 4 uses
  %i.eq = fadd fast <8 x float> %i.ep, %i.az
  %i.er = fmul fast <8 x float> %i.cb, %i.eq
  %i.es = fadd fast <8 x float> %i.ep, %i.bd
  %i.et = fmul fast <8 x float> %i.cb, %i.es
  %i.eu = fadd fast <8 x float> %i.ep, %i.bh
  %i.ev = fmul fast <8 x float> %i.cb, %i.eu
  %i.ew = fadd fast <8 x float> %i.ep, %i.bl
  %i.ex = fmul fast <8 x float> %i.cb, %i.ew
  %i.ey = and <8 x i1> %i.bo, %i.eo
  %i.ez = select <8 x i1> %i.ey, <8 x float> %i.er, <8 x float> splat (float -1.000000e+00)
  %i.fa = and <8 x i1> %i.br, %i.eo
  %i.fb = select <8 x i1> %i.fa, <8 x float> %i.et, <8 x float> splat (float -1.000000e+00)
  %i.fc = and <8 x i1> %i.bu, %i.eo
  %i.fd = select <8 x i1> %i.fc, <8 x float> %i.ev, <8 x float> splat (float -1.000000e+00)
  %i.fe = and <8 x i1> %i.bx, %i.eo
  %i.ff = select <8 x i1> %i.fe, <8 x float> %i.ex, <8 x float> splat (float -1.000000e+00)
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ez) ; 2 uses
  %i.fh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fb) ; 2 uses
  %i.fi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fd) ; 2 uses
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ff) ; 2 uses
  %i.fk = fadd fast <8 x float> %i.as, splat (float 2.000000e+00)
  %i.fl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.fk)
  %i.fm = fsub fast <8 x float> %i.fl, %i.ap
  %i.fn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fm)
  %i.fo = fsub fast <8 x float> %i.ap, %i.fn      ; 3 uses
  %i.fp = fcmp fast ogt <8 x float> %i.fo, splat (float -1.000000e+00)
  %i.fq = fcmp fast ogt <8 x float> %i.am, %i.fo
  %i.fr = and <8 x i1> %i.fp, %i.fq               ; 4 uses
  %i.fs = fmul fast <8 x float> %i.fo, %i.ae      ; 4 uses
  %i.ft = fadd fast <8 x float> %i.fs, %i.az
  %i.fu = fmul fast <8 x float> %i.cb, %i.ft
  %i.fv = fadd fast <8 x float> %i.fs, %i.bd
  %i.fw = fmul fast <8 x float> %i.cb, %i.fv
  %i.fx = fadd fast <8 x float> %i.fs, %i.bh
  %i.fy = fmul fast <8 x float> %i.cb, %i.fx
  %i.fz = fadd fast <8 x float> %i.fs, %i.bl
  %i.ga = fmul fast <8 x float> %i.cb, %i.fz
  %i.gb = and <8 x i1> %i.bo, %i.fr
  %i.gc = select <8 x i1> %i.gb, <8 x float> %i.fu, <8 x float> splat (float -1.000000e+00)
  %i.gd = and <8 x i1> %i.br, %i.fr
  %i.ge = select <8 x i1> %i.gd, <8 x float> %i.fw, <8 x float> splat (float -1.000000e+00)
  %i.gf = and <8 x i1> %i.bu, %i.fr
  %i.gg = select <8 x i1> %i.gf, <8 x float> %i.fy, <8 x float> splat (float -1.000000e+00)
  %i.gh = and <8 x i1> %i.bx, %i.fr
  %i.gi = select <8 x i1> %i.gh, <8 x float> %i.ga, <8 x float> splat (float -1.000000e+00)
  %i.gj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gc) ; 2 uses
  %i.gk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ge) ; 2 uses
  %i.gl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gg) ; 2 uses
  %i.gm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gi) ; 2 uses
  %i.gn = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.go = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.gp = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.db, <8 x i32> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gs = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gt = shufflevector <8 x i32> %i.db, <8 x i32> %i.dc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>
  %i.gv = shufflevector <8 x i32> %i.dd, <8 x i32> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.dd, <8 x i32> %i.de, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hc = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hd = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.he = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hg = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hh = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hi = bitcast <8 x i32> %i.hh to <8 x float>
  %i.hj = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = shufflevector <8 x float> %i.gp, <8 x float> %i.gs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hm = shufflevector <8 x i32> %i.gv, <8 x i32> %i.gx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.hn = bitcast <8 x i32> %i.hm to <8 x float>  ; 2 uses
  %i.ho = shufflevector <8 x i32> %i.gz, <8 x i32> %i.hb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hp = shufflevector <8 x i32> %i.hd, <8 x i32> %i.hf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hq = shufflevector <8 x float> %i.hi, <8 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x i32> %i.gr, <8 x i32> %i.gv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hs = bitcast <8 x i32> %i.hr to <8 x float>  ; 2 uses
  %i.ht = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hu = shufflevector <8 x i32> %i.hb, <8 x i32> %i.hd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hv = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hw = bitcast <8 x i32> %i.hv to <8 x float>  ; 2 uses
  %i.hx = shufflevector <8 x float> %i.gq, <8 x float> %i.gu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hy = shufflevector <8 x i32> %i.gw, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hz = shufflevector <8 x i32> %i.ha, <8 x i32> %i.hc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ia = shufflevector <8 x i32> %i.he, <8 x i32> %i.hg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ib = bitcast <8 x i32> %i.ia to <8 x float>  ; 2 uses
  %i.ic = shufflevector <8 x float> %i.hk, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.id = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ie = shufflevector <8 x i32> %i.gy, <8 x i32> %i.ha, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.if = shufflevector <8 x i32> %i.hc, <8 x i32> %i.he, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
end_hunk_11
