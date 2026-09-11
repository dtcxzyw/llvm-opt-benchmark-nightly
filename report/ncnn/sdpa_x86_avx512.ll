Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/sdpa_x86_avx512?download=true
inline.NumInlined: 161
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn15SDPA_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2:bb.a

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.kg = load ptr, ptr %i.bp, align 8, !tbaa !75
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kj) #17
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.kk = load ptr, ptr %12, align 8, !tbaa !51   ; 3 uses
  %i.kl = load ptr, ptr %i.ad, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i92 = icmp eq ptr %i.kk, %i.kl
  br i1 %.not4.i.i.i92, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i100, label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96
  %.05.i.i.i94 = phi ptr [ %i.la, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96 ], [ %i.kk, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit ] ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i95 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i95, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i93
  %i.ko = atomicrmw add ptr %i.kn, i32 -1 acq_rel, align 4
  %i.kp = icmp eq i32 %i.ko, 1
  br i1 %i.kp, label %bb.at, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96

bb.at:                                            ; preds = %bb.as
  %i.kq = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !57 ; 3 uses
  %.not3.i.i.i.i.i102 = icmp eq ptr %i.kr, null
  %i.ks = load ptr, ptr %.05.i.i.i94, align 8, !tbaa !64 ; 3 uses
  br i1 %.not3.i.i.i.i.i102, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !45
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  invoke void %i.kv(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef %i.ks)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96 unwind label %bb.ax, !inline_history !0

bb.av:                                            ; preds = %bb.at
  %.not.i1.i.i.i.i103 = icmp eq ptr %i.ks, null
  br i1 %.not.i1.i.i.i.i103, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.ks) #6
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96

bb.ax:                                            ; preds = %bb.au
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #20
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96:      ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %.lr.ph.i.i.i93
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 40
  %i.kz = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 64
  store i64 0, ptr %i.kz, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i94, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ky, i8 0, i64 20, i1 false)
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 72 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.la, %i.kl
  br i1 %.not.i.i.i97, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i98, label %.lr.ph.i.i.i93, !llvm.loop !1

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i98: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i96
  %.pr.i99 = load ptr, ptr %12, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i100

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i100: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i98, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit
  %i.lb = phi ptr [ %.pr.i99, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i98 ], [ %i.kk, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i101 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i1.i101, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit104, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i100
  %i.lc = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.lb to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lf) #17
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit104

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit104:     ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i100, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.lg = load i32, ptr %i.b, align 4, !tbaa !14
  %i.lh = sext i32 %i.lg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.lh
  br i1 %.not.not, label %.noexc, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit104, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.ba:                                            ; preds = %bb.aj, %bb.ac, %bb.k, %_ZNK4ncnn3Mat7channelEi.exit, %bb.w, %.noexc89
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #20
  unreachable
}

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15SDPA_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef readonly captures(none) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.std::vector.3", align 8    ; 9 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 9 uses
  %12 = alloca %"class.ncnn::Option", align 8     ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not91 = icmp sgt i32 %i.k, %i.j
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 232
  %i.ap = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit88
  %indvars.iv = phi i64 [ %i.ap, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit88 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19
          to label %.noexc68 unwind label %bb.t   ; 27 uses

.noexc68:                                         ; preds = %bb.c
  store ptr %i.aq, ptr %10, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store i64 0, ptr %i.aw, align 8, !tbaa !59
  store i64 0, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !74
  %i.ay = load i32, ptr %i.p, align 4, !tbaa !72, !noalias !119
  %i.az = load ptr, ptr %3, align 8, !tbaa !64, !noalias !119
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !59, !noalias !119
  %i.bb = mul i64 %i.ba, %indvars.iv
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !55, !noalias !119 ; 4 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd
  %i.bf = load i32, ptr %i.s, align 8, !tbaa !56, !noalias !119
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !57, !noalias !119
  %i.bh = load i32, ptr %i.u, align 8, !tbaa !73, !noalias !119 ; 2 uses
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = icmp eq i32 %i.bh, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre126 = load i32, ptr %i.x, align 4, !tbaa !72, !noalias !120
  %.pre129 = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !120 ; 4 uses
  %.pre130 = load i32, ptr %i.aa, align 8, !tbaa !56, !noalias !120
  %.pre131 = load ptr, ptr %i.ab, align 8, !tbaa !57, !noalias !120
  %.pre132 = load i32, ptr %i.ac, align 8, !tbaa !73, !noalias !120 ; 2 uses
  %.pre128 = load i64, ptr %i.y, align 8, !tbaa !59, !noalias !120
  %.pre127 = load ptr, ptr %4, align 8, !tbaa !64, !noalias !120
  %.pre = load i32, ptr %5, align 4, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store ptr %i.be, ptr %i.aq, align 8, !tbaa !64
  store ptr null, ptr %i.bk, align 8, !tbaa !53
  store i64 %i.bc, ptr %i.bl, align 8, !tbaa !55
  store i32 %i.bf, ptr %i.bm, align 8, !tbaa !56
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !57
  store i32 %i.bi, ptr %i.bn, align 8, !tbaa !73
  store i32 1, ptr %i.bq, align 4, !tbaa !72
  store i32 %i.ay, ptr %i.br, align 8, !tbaa !58
  %i.bs = trunc nsw i64 %indvars.iv to i32
  %i.bt = sdiv i32 %i.bs, %.pre
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %.pre128, %i.bu
  %i.bw = mul i64 %i.bv, %.pre129
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre127, i64 %i.bw
  %13 = load i32, ptr %i.o, align 8, !tbaa !61, !noalias !119 ; 2 uses
  %14 = load i32, ptr %i.n, align 4, !tbaa !60, !noalias !119 ; 2 uses
  %.pre125 = load i32, ptr %i.w, align 8, !tbaa !61, !noalias !120 ; 2 uses
  %.pre124 = load i32, ptr %i.v, align 4, !tbaa !60, !noalias !120 ; 2 uses
  %15 = sext i32 %.pre124 to i64
  %16 = sext i32 %14 to i64
  %i.by = sext i32 %.pre125 to i64
  %i.bz = sext i32 %13 to i64
  %17 = mul nsw i64 %i.by, %15                    ; 2 uses
  %18 = mul nsw i64 %i.bz, %16                    ; 2 uses
  %i.ca = mul i64 %.pre129, %17
  %i.cb = mul i64 %i.bc, %18
  %19 = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %20 = insertelement <2 x i64> %19, i64 %i.ca, i64 1
  %21 = add <2 x i64> %20, splat (i64 15)
  %22 = and <2 x i64> %21, splat (i64 -16)
  %23 = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %24 = insertelement <2 x i64> %23, i64 %.pre129, i64 1
  %25 = udiv <2 x i64> %22, %24                   ; 2 uses
  %26 = extractelement <2 x i64> %25, i64 0
  %spec.select = select i1 %i.bj, i64 %18, i64 %26
  store i32 %14, ptr %i.bo, align 4, !tbaa !60
  store i32 %13, ptr %i.bp, align 8, !tbaa !61
  store i64 %spec.select, ptr %i.at, align 8, !tbaa !59
  %i.cc = add nsw i32 %.pre132, -1
  %i.cd = icmp eq i32 %.pre132, 4
  %27 = extractelement <2 x i64> %25, i64 1
  %.sroa.22108.0 = select i1 %i.cd, i64 %17, i64 %27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 124
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store ptr %i.bx, ptr %i.au, align 8, !tbaa !64
  store ptr null, ptr %i.ce, align 8, !tbaa !53
  store i64 %.pre129, ptr %i.cf, align 8, !tbaa !55
  store i32 %.pre130, ptr %i.cg, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store ptr %.pre131, ptr %i.cn, align 8, !tbaa !57
  store i32 %i.cc, ptr %i.ch, align 8, !tbaa !73
  store i32 %.pre124, ptr %i.ci, align 4, !tbaa !60
  store i32 %.pre125, ptr %i.cj, align 8, !tbaa !61
  store i32 1, ptr %i.ck, align 4, !tbaa !72
  store i32 %.pre126, ptr %i.cl, align 8, !tbaa !58
  store i64 %.sroa.22108.0, ptr %i.cm, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.co = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #19
          to label %.noexc73 unwind label %bb.t   ; 13 uses

.noexc73:                                         ; preds = %.noexc68
  store ptr %i.co, ptr %11, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 2 uses
  store ptr %i.cp, ptr %i.ad, align 8, !tbaa !75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store ptr %i.cp, ptr %i.ae, align 8, !tbaa !74
  %i.cs = load i32, ptr %i.af, align 4, !tbaa !60, !noalias !121 ; 2 uses
  %i.ct = load i32, ptr %i.ag, align 8, !tbaa !61, !noalias !121 ; 2 uses
  %i.cu = load i32, ptr %i.ah, align 4, !tbaa !72, !noalias !121
  %i.cv = load ptr, ptr %6, align 8, !tbaa !64, !noalias !121
  %i.cw = load i64, ptr %i.ai, align 8, !tbaa !59, !noalias !121
  %i.cx = mul i64 %i.cw, %indvars.iv
  %i.cy = load i64, ptr %i.aj, align 8, !tbaa !55, !noalias !121 ; 4 uses
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cz
  %i.db = load i32, ptr %i.ak, align 8, !tbaa !56, !noalias !121
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !57, !noalias !121
  %i.dd = sext i32 %i.cs to i64
  %i.de = sext i32 %i.ct to i64
  %i.df = mul nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = mul i64 %i.cy, %i.df
  %i.dh = add i64 %i.dg, 15
  %i.di = and i64 %i.dh, -16
  %i.dj = udiv i64 %i.di, %i.cy
  %i.dk = load i32, ptr %i.am, align 8, !tbaa !73, !noalias !121 ; 2 uses
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = icmp eq i32 %i.dk, 4
  %spec.select160 = select i1 %i.dm, i64 %i.df, i64 %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.pre137 = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr %i.da, ptr %i.co, align 8, !tbaa !64
  store ptr null, ptr %i.dn, align 8, !tbaa !53
  store i64 %i.cy, ptr %i.do, align 8, !tbaa !55
  store i32 %i.db, ptr %i.dp, align 8, !tbaa !56
  store ptr %i.dc, ptr %i.cq, align 8, !tbaa !57
  store i32 %i.dl, ptr %i.dq, align 8, !tbaa !73
  store i32 %i.cs, ptr %i.dr, align 4, !tbaa !60
  store i32 %i.ct, ptr %i.ds, align 8, !tbaa !61
  store i32 1, ptr %i.dt, align 4, !tbaa !72
  store i32 %i.cu, ptr %i.du, align 8, !tbaa !58
  store i64 %spec.select160, ptr %i.cr, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !19
  store i32 1, ptr %i.an, align 4, !tbaa !49
  %i.dv = load ptr, ptr %.pre137, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef i32 %i.dx(ptr noundef nonnull align 8 dereferenceable(208) %.pre137, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %.noexc73
  %i.dz = load ptr, ptr %8, align 8, !tbaa !65
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.eb = load ptr, ptr %11, align 8, !tbaa !51   ; 3 uses
  %i.ec = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.er, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.eb, %bb.d ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i75, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ef = atomicrmw add ptr %i.ee, i32 -1 acq_rel, align 4
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.f, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !57 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %.05.i.i.i, align 8, !tbaa !64 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i1.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.ej) #6
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #20
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i:        ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %.lr.ph.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 0, ptr %i.eq, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ep, i8 0, i64 20, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.er, %i.ec
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.es = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.eb, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.et = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ew) #17
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ex = load ptr, ptr %10, align 8, !tbaa !51   ; 3 uses
  %i.ey = load ptr, ptr %i.m, align 8, !tbaa !74  ; 2 uses
  %.not4.i.i.i76 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not4.i.i.i76, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i84, label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i80
  %.05.i.i.i78 = phi ptr [ %i.fn, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i80 ], [ %i.ex, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit ] ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i78, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i79 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i79, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i80, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i77
  %i.fb = atomicrmw add ptr %i.fa, i32 -1 acq_rel, align 4
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.m, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i80

bb.m:                                             ; preds = %bb.l
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i78, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !57 ; 3 uses
  %.not3.i.i.i.i.i86 = icmp eq ptr %i.fe, null
  %i.ff = load ptr, ptr %.05.i.i.i78, align 8, !tbaa !64 ; 3 uses
  br i1 %.not3.i.i.i.i.i86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.ff)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i80 unwind label %bb.q, !inline_history !0

bb.o:                                             ; preds = %bb.m
  %.not.i1.i.i.i.i87 = icmp eq ptr %i.ff, null
  br i1 %.not.i1.i.i.i.i87, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i80, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
