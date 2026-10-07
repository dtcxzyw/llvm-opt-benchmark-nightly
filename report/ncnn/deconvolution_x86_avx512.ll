Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.117521.us.us.us.ph = phi float [ %.107526.us.us.us, %.preheader.us.us.us ], [ %i.fda, %middle.block8624 ]
  br label %scalar.ph8582

scalar.ph8582:                                    ; preds = %scalar.ph8582.preheader, %bb.dl
  %i.fdb = phi i32 [ %i.fdz, %bb.dl ], [ %.ph8694, %scalar.ph8582.preheader ] ; 2 uses
  %indvars.iv8062 = phi i64 [ %indvars.iv.next8063, %bb.dl ], [ %indvars.iv8062.ph, %scalar.ph8582.preheader ] ; 3 uses
  %.117521.us.us.us = phi float [ %.13.us.us.us, %bb.dl ], [ %.117521.us.us.us.ph, %scalar.ph8582.preheader ] ; 3 uses
  %i.fdc = trunc i64 %indvars.iv8062 to i32
  %i.fdd = mul i32 %i.fbk, %i.fdc
  %.reass7525.us.us.us = add i32 %i.fdd, %invariant.op7524 ; 3 uses
  %i.fde = icmp slt i32 %.reass7525.us.us.us, 0
  br i1 %i.fde, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %scalar.ph8582
  %i.fdf = srem i32 %.reass7525.us.us.us, %i.fbm
  %i.fdg = sdiv i32 %.reass7525.us.us.us, %i.fbm  ; 2 uses
  %.not2060.us.us.us = icmp eq i32 %i.fdf, 0
  %.not2061.us.us.us = icmp slt i32 %i.fdg, %i.del
  %or.cond8869 = select i1 %.not2060.us.us.us, i1 %.not2061.us.us.us, i1 false
  br i1 %or.cond8869, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dl

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.dk
  %i.fdh = load i32, ptr %i.dek, align 4, !tbaa !55, !noalias !1517 ; 2 uses
  %i.fdi = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1517
  %i.fdj = load i64, ptr %i.dfc, align 8, !tbaa !21, !noalias !1517
  %i.fdk = mul i64 %i.fdj, %indvars.iv8072
  %i.fdl = load i64, ptr %i.dfd, align 8, !tbaa !56, !noalias !1517 ; 2 uses
  %i.fdm = mul i64 %i.fdk, %i.fdl
  %i.fdn = getelementptr inbounds nuw i8, ptr %i.fdi, i64 %i.fdm
  %i.fdo = sext i32 %i.fdh to i64
  %i.fdp = mul nsw i64 %i.fdo, %i.fby
  %i.fdq = mul i64 %i.fdp, %i.fdl
  %i.fdr = getelementptr inbounds nuw i8, ptr %i.fdn, i64 %i.fdq
  %i.fds = sext i32 %i.fdg to i64
  %i.fdt = getelementptr inbounds [4 x i8], ptr %i.fdr, i64 %i.fds
  %i.fdu = load float, ptr %i.fdt, align 4, !tbaa !39
  %i.fdv = getelementptr inbounds nuw [4 x i8], ptr %i.fbz, i64 %indvars.iv8062
  %i.fdw = load float, ptr %i.fdv, align 4, !tbaa !39
  %i.fdx = fmul fast float %i.fdw, %i.fdu
  %i.fdy = fadd fast float %i.fdx, %.117521.us.us.us
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.dk, %scalar.ph8582
  %i.fdz = phi i32 [ %i.fdb, %scalar.ph8582 ], [ %i.fdb, %bb.dk ], [ %i.fdh, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %.13.us.us.us = phi nsz float [ %.117521.us.us.us, %scalar.ph8582 ], [ %.117521.us.us.us, %bb.dk ], [ %i.fdy, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8063 = add nuw nsw i64 %indvars.iv8062, 1 ; 2 uses
  %exitcond8066.not = icmp eq i64 %indvars.iv.next8063, %i.fbo
  br i1 %exitcond8066.not, label %..loopexit6401_crit_edge.us.us.us, label %scalar.ph8582, !llvm.loop !1460

..loopexit6401_crit_edge.us.us.us:                ; preds = %bb.dl, %middle.block8624, %bb.dj, %bb.di
  %i.fea = phi i32 [ %i.fbr, %bb.di ], [ %i.fbr, %bb.dj ], [ %i.fcz, %middle.block8624 ], [ %i.fdz, %bb.dl ] ; 3 uses
  %.15.us.us.us = phi nsz float [ %.107526.us.us.us, %bb.di ], [ %.107526.us.us.us, %bb.dj ], [ %i.fda, %middle.block8624 ], [ %.13.us.us.us, %bb.dl ] ; 3 uses
  %indvars.iv.next8068 = add nuw nsw i64 %indvars.iv8067, 1 ; 2 uses
  %exitcond8071.not = icmp eq i64 %indvars.iv.next8068, %wide.trip.count8070
  br i1 %exitcond8071.not, label %._crit_edge7529.split.us.us.us, label %bb.di, !llvm.loop !1461

._crit_edge7529.split.us.us.us:                   ; preds = %..loopexit6401_crit_edge.us.us.us
  %i.feb = getelementptr inbounds [4 x i8], ptr %.418317536.us.us, i64 %i.eje
  %indvars.iv.next8073 = add nuw nsw i64 %indvars.iv8072, 1 ; 2 uses
  %i.fec = trunc nuw i64 %indvars.iv.next8073 to i32
  %i.fed = icmp sgt i32 %i.dej, %i.fec
  br i1 %i.fed, label %.preheader6410.us.us, label %._crit_edge7539, !llvm.loop !1462

._crit_edge7539:                                  ; preds = %._crit_edge7529.split.us.us.us, %.preheader6410.lr.ph, %.preheader6415
  %i.fee = phi i32 [ %i.fbe, %.preheader6415 ], [ %i.fbe, %.preheader6410.lr.ph ], [ %i.fea, %._crit_edge7529.split.us.us.us ] ; 3 uses
  %.9.lcssa = phi float [ %.11833.lcssa, %.preheader6415 ], [ %.11833.lcssa, %.preheader6410.lr.ph ], [ %.15.us.us.us, %._crit_edge7529.split.us.us.us ] ; 13 uses
  switch i32 %i.eiq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.dm
    i32 2, label %bb.dn
    i32 3, label %bb.do
    i32 4, label %bb.dp
    i32 5, label %bb.dq
    i32 6, label %bb.dr
  ]

bb.dm:                                            ; preds = %._crit_edge7539
  %i.fef = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dn:                                            ; preds = %._crit_edge7539
  %i.feg = load ptr, ptr %11, align 8, !tbaa !20
  %i.feh = load float, ptr %i.feg, align 4, !tbaa !39
  %i.fei = fcmp fast ogt float %.9.lcssa, 0.000000e+00
  %i.fej = select fast i1 %i.fei, float 1.000000e+00, float %i.feh
  %i.fek = fmul fast float %i.fej, %.9.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.do:                                            ; preds = %._crit_edge7539
  %i.fel = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.fem = load float, ptr %i.fel, align 4, !tbaa !39
  %i.fen = getelementptr inbounds nuw i8, ptr %i.fel, i64 4
  %i.feo = load float, ptr %i.fen, align 4, !tbaa !39
  %spec.select6317 = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa, float %i.fem)
  %spec.select6318 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6317, float %i.feo)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dp:                                            ; preds = %._crit_edge7539
  %.sroa.speculated5809 = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated5809, float f0xC2B0C0A5)
  %i.fep = fneg fast float %.sroa.speculated
  %i.feq = call fast float @llvm.exp.f32(float %i.fep)
  %i.fer = fadd fast float %i.feq, 1.000000e+00
  %i.fes = fdiv fast float 1.000000e+00, %i.fer
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dq:                                            ; preds = %._crit_edge7539
  %i.fet = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa)
  %i.feu = fadd fast float %i.fet, 1.000000e+00
  %i.fev = call fast float @llvm.log.f32(float %i.feu)
  %i.few = call fast float @llvm.tanh.f32(float %i.fev)
  %i.fex = fmul fast float %i.few, %.9.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dr:                                            ; preds = %._crit_edge7539
  %i.fey = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.fez = load float, ptr %i.fey, align 4, !tbaa !39 ; 3 uses
  %i.ffa = getelementptr inbounds nuw i8, ptr %i.fey, i64 4
  %i.ffb = load float, ptr %i.ffa, align 4, !tbaa !39 ; 2 uses
  %i.ffc = fneg fast float %i.ffb
  %i.ffd = fdiv fast float %i.ffc, %i.fez         ; 2 uses
  %i.ffe = fcmp fast olt float %.9.lcssa, %i.ffd
  br i1 %i.ffe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.fff = fdiv fast float 1.000000e+00, %i.fez
  %i.ffg = fadd fast float %i.ffd, %i.fff
  %i.ffh = fcmp fast ogt float %.9.lcssa, %i.ffg
  br i1 %i.ffh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ffi = fmul fast float %i.fez, %.9.lcssa
  %i.ffj = fadd fast float %i.ffi, %i.ffb
  %i.ffk = fmul fast float %i.ffj, %.9.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.do, %bb.dr, %._crit_edge7539, %bb.dm, %bb.dn, %bb.dp, %bb.dq, %bb.ds, %bb.dt
  %.16068 = phi nsz float [ %.9.lcssa, %._crit_edge7539 ], [ %i.fef, %bb.dm ], [ %i.fek, %bb.dn ], [ 0.000000e+00, %bb.dr ], [ %spec.select6318, %bb.do ], [ %i.fes, %bb.dp ], [ %i.fex, %bb.dq ], [ %i.ffk, %bb.dt ], [ %.9.lcssa, %bb.ds ]
  store float %.16068, ptr %.118407550, align 4, !tbaa !39
  %i.ffl = getelementptr inbounds nuw i8, ptr %.118407550, i64 4 ; 2 uses
  %i.ffm = add nuw nsw i32 %.018377551, 1         ; 2 uses
  %exitcond8075.not = icmp eq i32 %i.ffm, %i.dep
  br i1 %exitcond8075.not, label %._crit_edge7552, label %bb.cq, !llvm.loop !1463
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !63     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !63
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %.not2397 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2397, label %._crit_edge2399, label %.noexc1263.lr.ph

.noexc1263.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !67
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc1263.preheader, label %._crit_edge2399

.noexc1263.preheader:                             ; preds = %.noexc1263.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc1263

.noexc1263:                                       ; preds = %.noexc1263.preheader, %._crit_edge2396.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc1263.preheader ], [ %indvars.iv.next, %._crit_edge2396.split ] ; 4 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !62
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !64
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !55  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !67  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !55  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2170.lr.ph, label %._crit_edge2396.split

.preheader2170.lr.ph:                             ; preds = %.noexc1263
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !62  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2170.preheader, label %._crit_edge2396.split

.preheader2170.preheader:                         ; preds = %.preheader2170.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !20, !noalias !1564
  %i.av = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !1564
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1564
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 2
  %i.bf = and i32 %i.be, 1073741820
  %narrow = add nuw nsw i32 %i.bf, 4
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %i.bm = add i32 %i.ae, -8
  %i.bn = add i32 %i.ae, -4
  %i.bo = add i32 %i.ae, -2
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2170

.preheader2170:                                   ; preds = %.preheader2170.preheader, %._crit_edge
  %.07752395 = phi ptr [ %.5, %._crit_edge ], [ %i.bc, %.preheader2170.preheader ]
  %.07762394 = phi i32 [ %.neg2150, %._crit_edge ], [ 0, %.preheader2170.preheader ]
  %.neg2150 = add nuw nsw i32 %.07762394, 1       ; 7 uses
  br label %bb.c

._crit_edge2396.split:                            ; preds = %._crit_edge, %.preheader2170.lr.ph, %.noexc1263
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2479.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2479.not, label %._crit_edge2399, label %.noexc1263, !llvm.loop !1520

._crit_edge:                                      ; preds = %.thread2131
  %exitcond2477.not = icmp eq i32 %.neg2150, %i.ai
  br i1 %exitcond2477.not, label %._crit_edge2396.split, label %.preheader2170, !llvm.loop !1521

bb.c:                                             ; preds = %.preheader2170, %.thread2131
  %.12392 = phi ptr [ %.07752395, %.preheader2170 ], [ %.5, %.thread2131 ] ; 29 uses
  %.07772391 = phi i32 [ 0, %.preheader2170 ], [ %i.avl, %.thread2131 ] ; 6 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %.not925 = icmp eq ptr %i.bp, null
  br i1 %.not925, label %_ZN4ncnn3MatD2Ev.exit1002, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ak
  %i.br = load <16 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit1002

_ZN4ncnn3MatD2Ev.exit1002:                        ; preds = %bb.d, %bb.c
  %.0778 = phi nsz <16 x float> [ %i.br, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !20, !noalias !1565 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !1565 ; 2 uses
  %i.bu = mul i64 %i.bt, %indvars.iv
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !1565 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw ; 2 uses
  br i1 %i.an, label %.preheader2165.lr.ph, label %.preheader2169

.preheader2165.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit1002
  %i.by = load i32, ptr %7, align 4, !tbaa !63    ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %.neg2152 = add nuw nsw i32 %.07772391, 1
  %i.ca = load i32, ptr %15, align 4, !tbaa !63
  %i.cb = shl i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.bz, label %.preheader2165.lr.ph.split.us, label %.preheader2165.preheader

.preheader2165.preheader:                         ; preds = %.preheader2165.lr.ph
  %19 = mul i64 %indvars.iv, %i.bv
  %20 = mul i64 %19, %i.bt
  %i.cd = mul nsw i64 %i.bg, %i.cc
  %i.ce = getelementptr i8, ptr %i.bs, i64 %20
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.cd
  br label %.preheader2169

.preheader2165.lr.ph.split.us:                    ; preds = %.preheader2165.lr.ph
  %i.cf = load i32, ptr %8, align 4, !tbaa !63
  %i.cg = load i32, ptr %9, align 4, !tbaa !63
  %invariant.op2191.us = sub i32 %.neg2150, %i.cg
  br label %.preheader2165.us

.preheader2165.us:                                ; preds = %._crit_edge.us, %.preheader2165.lr.ph.split.us
  %indvars.iv2429 = phi i64 [ %indvars.iv.next2430, %._crit_edge.us ], [ 0, %.preheader2165.lr.ph.split.us ] ; 20 uses
  %.17792204.us = phi <16 x float> [ %.us-phi2197.us, %._crit_edge.us ], [ %.0778, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.07842203.us = phi <16 x float> [ %.us-phi2196.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.08212202.us = phi <16 x float> [ %.us-phi2195.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.08512201.us = phi <16 x float> [ %.us-phi2194.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.08812199.us = phi ptr [ %i.ul, %._crit_edge.us ], [ %i.bx, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %i.ch = or disjoint i64 %indvars.iv2429, 15
  %i.ci = or disjoint i64 %indvars.iv2429, 1
  %i.cj = or disjoint i64 %indvars.iv2429, 2
  %i.ck = or disjoint i64 %indvars.iv2429, 3
  %i.cl = or disjoint i64 %indvars.iv2429, 4
  %i.cm = or disjoint i64 %indvars.iv2429, 5
  %i.cn = or disjoint i64 %indvars.iv2429, 6
  %i.co = or disjoint i64 %indvars.iv2429, 7
  %i.cp = or disjoint i64 %indvars.iv2429, 8
  %i.cq = or disjoint i64 %indvars.iv2429, 9
  %i.cr = or disjoint i64 %indvars.iv2429, 10
  %i.cs = or disjoint i64 %indvars.iv2429, 11
  %i.ct = or disjoint i64 %indvars.iv2429, 12
  %i.cu = or disjoint i64 %indvars.iv2429, 13
  %i.cv = or disjoint i64 %indvars.iv2429, 14
  %i.cw = lshr exact i64 %indvars.iv2429, 2       ; 4 uses
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = or disjoint i64 %i.cw, 2
  %i.cz = or disjoint i64 %i.cw, 3
  %i.da = lshr exact i64 %indvars.iv2429, 3       ; 2 uses
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = lshr exact i64 %indvars.iv2429, 4
  br i1 %i.ap, label %.lr.ph2187.split.us.us, label %._crit_edge.us

.lr.ph2187.split.us.us:                           ; preds = %.preheader2165.us, %.loopexit2160.us.us
  %.27802186.us.us = phi <16 x float> [ %.11.us.us, %.loopexit2160.us.us ], [ %.17792204.us, %.preheader2165.us ] ; 4 uses
  %.17852185.us.us = phi <16 x float> [ %.10794.us.us, %.loopexit2160.us.us ], [ %.07842203.us, %.preheader2165.us ] ; 4 uses
  %.18222184.us.us = phi <16 x float> [ %.10831.us.us, %.loopexit2160.us.us ], [ %.08212202.us, %.preheader2165.us ] ; 4 uses
  %.18522183.us.us = phi <16 x float> [ %.10861.us.us, %.loopexit2160.us.us ], [ %.08512201.us, %.preheader2165.us ] ; 4 uses
  %.08912182.us.us = phi i32 [ %i.uk, %.loopexit2160.us.us ], [ 0, %.preheader2165.us ] ; 3 uses
  %i.dd = mul nsw i32 %i.cf, %.08912182.us.us
  %.reass2192.us.us = add i32 %i.dd, %invariant.op2191.us ; 3 uses
  %i.de = icmp slt i32 %.reass2192.us.us, 0
  br i1 %i.de, label %.loopexit2160.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2187.split.us.us
  %i.df = load i32, ptr %10, align 4, !tbaa !63   ; 2 uses
  %i.dg = srem i32 %.reass2192.us.us, %i.df
  %i.dh = sdiv i32 %.reass2192.us.us, %i.df       ; 2 uses
  %.not957.us.us = icmp eq i32 %i.dg, 0
  %.not958.us.us = icmp slt i32 %i.dh, %i.ag
  %or.cond = select i1 %.not957.us.us, i1 %.not958.us.us, i1 false
  br i1 %or.cond, label %.preheader2159.us.us, label %.loopexit2160.us.us

.preheader2159.us.us:                             ; preds = %bb.e
  %i.di = load i32, ptr %11, align 4, !tbaa !63   ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.us.us, label %.loopexit2160.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2159.us.us
  %i.dk = load i32, ptr %12, align 4, !tbaa !63
  %i.dl = load i32, ptr %13, align 4, !tbaa !63
  %invariant.op.us.us = sub i32 %.neg2152, %i.dl
  %i.dm = mul nuw nsw i32 %i.di, %.08912182.us.us
  %i.dn = sext i32 %i.dh to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2104.us.us.us, %.lr.ph.us.us
  %indvars.iv2425 = phi i64 [ %indvars.iv.next2426, %.thread2104.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.37812175.us.us.us = phi <16 x float> [ %.9.us.us.us, %.thread2104.us.us.us ], [ %.27802186.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27862174.us.us.us = phi <16 x float> [ %.8792.us.us.us, %.thread2104.us.us.us ], [ %.17852185.us.us, %.lr.ph.us.us ] ; 4 uses
  %.28232173.us.us.us = phi <16 x float> [ %.8829.us.us.us, %.thread2104.us.us.us ], [ %.18222184.us.us, %.lr.ph.us.us ] ; 4 uses
  %.28532172.us.us.us = phi <16 x float> [ %.8859.us.us.us, %.thread2104.us.us.us ], [ %.18522183.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.do = trunc i64 %indvars.iv2425 to i32
  %i.dp = mul i32 %i.dk, %i.do
  %.reass.us.us.us = add i32 %i.dp, %invariant.op.us.us ; 3 uses
  %i.dq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dq, label %.thread2104.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %14, align 4, !tbaa !63   ; 2 uses
  %i.ds = srem i32 %.reass.us.us.us, %i.dr
  %i.dt = sdiv i32 %.reass.us.us.us, %i.dr        ; 5 uses
  %.not959.us.us.us = icmp eq i32 %i.ds, 0
  %.not960.us.us.us = icmp slt i32 %i.dt, %i.af
  %or.cond2623 = select i1 %.not959.us.us.us, i1 %.not960.us.us.us, i1 false
  br i1 %or.cond2623, label %.split.us.us.us, label %.thread2104.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv2425 to i32
  %i.dv = add i32 %i.dm, %i.du
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.08812199.us, i64 %i.dx ; 16 uses
  switch i32 %i.aq, label %.thread2104.us.us.us [
    i32 4, label %.thread.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit1000.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit998.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit994.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit994.us.us.us:                ; preds = %.split.us.us.us
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !55, !noalias !1566
  %i.ea = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1566 ; 12 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !1566 ; 12 uses
  %i.ec = mul i64 %i.eb, %indvars.iv2429
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !56, !noalias !1566 ; 13 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.dn
  %i.ei = mul i64 %i.eh, %i.ed                    ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = sext i32 %i.dt to i64                   ; 16 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !39
  %i.en = insertelement <16 x float> poison, float %i.em, i64 0
  %i.eo = shufflevector <16 x float> %i.en, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ep = mul i64 %i.eb, %i.ci
  %i.eq = mul i64 %i.ep, %i.ed
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ei
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ek
  %i.eu = load float, ptr %i.et, align 4, !tbaa !39
  %i.ev = insertelement <16 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <16 x float> %i.ev, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ex = mul i64 %i.eb, %i.cj
  %i.ey = mul i64 %i.ex, %i.ed
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ei
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ek
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !39
  %i.fd = insertelement <16 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <16 x float> %i.fd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ff = mul i64 %i.eb, %i.ck
  %i.fg = mul i64 %i.ff, %i.ed
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ei
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.ek
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !39
  %i.fl = insertelement <16 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <16 x float> %i.fl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fn = mul i64 %i.eb, %i.cl
  %i.fo = mul i64 %i.fn, %i.ed
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ei
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.ek
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !39
  %i.ft = insertelement <16 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <16 x float> %i.ft, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fv = mul i64 %i.eb, %i.cm
  %i.fw = mul i64 %i.fv, %i.ed
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ei
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ek
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !39
  %i.gb = insertelement <16 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <16 x float> %i.gb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gd = mul i64 %i.eb, %i.cn
  %i.ge = mul i64 %i.gd, %i.ed
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ei
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.ek
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !39
  %i.gj = insertelement <16 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <16 x float> %i.gj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gl = mul i64 %i.eb, %i.co
  %i.gm = mul i64 %i.gl, %i.ed
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ei
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.ek
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !39
  %i.gr = insertelement <16 x float> poison, float %i.gq, i64 0
  %i.gs = shufflevector <16 x float> %i.gr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gt = mul i64 %i.eb, %i.cp
  %i.gu = mul i64 %i.gt, %i.ed
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ei
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.ek
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !39
  %i.gz = insertelement <16 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <16 x float> %i.gz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hb = mul i64 %i.eb, %i.cq
  %i.hc = mul i64 %i.hb, %i.ed
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ei
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.ek
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !39
  %i.hh = insertelement <16 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <16 x float> %i.hh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hj = mul i64 %i.eb, %i.cr
  %i.hk = mul i64 %i.hj, %i.ed
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hk
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.reass8121.us.us.us = add i32 %i.gxy, %invariant.op8120 ; 3 uses
  %i.gxz = icmp slt i32 %.reass8121.us.us.us, 0
  br i1 %i.gxz, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gya = srem i32 %.reass8121.us.us.us, %i.gxl
  %i.gyb = sdiv i32 %.reass8121.us.us.us, %i.gxl  ; 2 uses
  %.not2099.us.us.us = icmp eq i32 %i.gya, 0
  %.not2100.us.us.us = icmp slt i32 %i.gyb, %i.eut
  %or.cond9375 = select i1 %.not2099.us.us.us, i1 %.not2100.us.us.us, i1 false
  br i1 %or.cond9375, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dr

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.dq
  %i.gyc = load i32, ptr %i.eus, align 4, !tbaa !55, !noalias !1913
  %i.gyd = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1913
  %i.gye = load i64, ptr %i.evk, align 8, !tbaa !21, !noalias !1913
  %i.gyf = mul i64 %i.gye, %indvars.iv8668
  %i.gyg = load i64, ptr %i.evl, align 8, !tbaa !56, !noalias !1913 ; 2 uses
  %i.gyh = mul i64 %i.gyf, %i.gyg
  %i.gyi = getelementptr inbounds nuw i8, ptr %i.gyd, i64 %i.gyh
  %i.gyj = sext i32 %i.gyc to i64
  %i.gyk = mul nsw i64 %i.gyj, %i.gxv
  %i.gyl = mul i64 %i.gyk, %i.gyg
  %i.gym = getelementptr inbounds nuw i8, ptr %i.gyi, i64 %i.gyl
  %i.gyn = sext i32 %i.gyb to i64
  %i.gyo = getelementptr inbounds [2 x i8], ptr %i.gym, i64 %i.gyn
  %i.gyp = load i16, ptr %i.gyo, align 2, !tbaa !92
  %i.gyq = zext i16 %i.gyp to i32
  %i.gyr = shl nuw i32 %i.gyq, 16
  %i.gys = bitcast i32 %i.gyr to float
  %i.gyt = getelementptr inbounds nuw [2 x i8], ptr %i.gxw, i64 %indvars.iv8658
  %i.gyu = load i16, ptr %i.gyt, align 2, !tbaa !92
  %i.gyv = zext i16 %i.gyu to i32
  %i.gyw = shl nuw i32 %i.gyv, 16
  %i.gyx = bitcast i32 %i.gyw to float
  %i.gyy = fmul fast float %i.gyx, %i.gys
  %i.gyz = fadd fast float %i.gyy, %.1118708117.us.us.us
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.dq, %bb.dp
  %.131872.us.us.us = phi nsz float [ %.1118708117.us.us.us, %bb.dp ], [ %.1118708117.us.us.us, %bb.dq ], [ %i.gyz, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8659 = add nuw nsw i64 %indvars.iv8658, 1 ; 2 uses
  %exitcond8662.not = icmp eq i64 %indvars.iv.next8659, %i.gxn
  br i1 %exitcond8662.not, label %..loopexit6997_crit_edge.us.us.us, label %bb.dp, !llvm.loop !1856

..loopexit6997_crit_edge.us.us.us:                ; preds = %bb.dr, %bb.do, %bb.dn
  %.15.us.us.us = phi nsz float [ %.1018698122.us.us.us, %bb.dn ], [ %.1018698122.us.us.us, %bb.do ], [ %.131872.us.us.us, %bb.dr ] ; 3 uses
  %indvars.iv.next8664 = add nuw nsw i64 %indvars.iv8663, 1 ; 2 uses
  %exitcond8667.not = icmp eq i64 %indvars.iv.next8664, %wide.trip.count8666
  br i1 %exitcond8667.not, label %._crit_edge8125.split.us.us.us, label %bb.dn, !llvm.loop !1857

._crit_edge8125.split.us.us.us:                   ; preds = %..loopexit6997_crit_edge.us.us.us
  %i.gza = getelementptr inbounds [2 x i8], ptr %.418588132.us.us, i64 %i.gca
  %indvars.iv.next8669 = add nuw nsw i64 %indvars.iv8668, 1 ; 2 uses
  %i.gzb = trunc nuw i64 %indvars.iv.next8669 to i32
  %i.gzc = icmp sgt i32 %i.eur, %i.gzb
  br i1 %i.gzc, label %.preheader7006.us.us, label %._crit_edge8135, !llvm.loop !1858

._crit_edge8135:                                  ; preds = %._crit_edge8125.split.us.us.us, %.preheader7006.lr.ph, %.preheader7011
  %.91868.lcssa = phi float [ %.11860.lcssa, %.preheader7011 ], [ %.11860.lcssa, %.preheader7006.lr.ph ], [ %.15.us.us.us, %._crit_edge8125.split.us.us.us ] ; 13 uses
  switch i32 %i.gbn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ds
    i32 2, label %bb.dt
    i32 3, label %bb.du
    i32 4, label %bb.dv
    i32 5, label %bb.dw
    i32 6, label %bb.dx
  ]

bb.ds:                                            ; preds = %._crit_edge8135
  %i.gzd = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.91868.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dt:                                            ; preds = %._crit_edge8135
  %i.gze = load ptr, ptr %11, align 8, !tbaa !20
  %i.gzf = load float, ptr %i.gze, align 4, !tbaa !39
  %i.gzg = fcmp fast ogt float %.91868.lcssa, 0.000000e+00
  %i.gzh = select fast i1 %i.gzg, float 1.000000e+00, float %i.gzf
  %i.gzi = fmul fast float %i.gzh, %.91868.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.du:                                            ; preds = %._crit_edge8135
  %i.gzj = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.gzk = load float, ptr %i.gzj, align 4, !tbaa !39
  %i.gzl = getelementptr inbounds nuw i8, ptr %i.gzj, i64 4
  %i.gzm = load float, ptr %i.gzl, align 4, !tbaa !39
  %spec.select6912 = call nnan ninf nsz float @llvm.maxnum.f32(float %.91868.lcssa, float %i.gzk)
  %spec.select6913 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6912, float %i.gzm)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dv:                                            ; preds = %._crit_edge8135
  %.sroa.speculated6410 = call nnan ninf nsz float @llvm.minnum.f32(float %.91868.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated6410, float f0xC2B0C0A5)
  %i.gzn = fneg fast float %.sroa.speculated
  %i.gzo = call fast float @llvm.exp.f32(float %i.gzn)
  %i.gzp = fadd fast float %i.gzo, 1.000000e+00
  %i.gzq = fdiv fast float 1.000000e+00, %i.gzp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dw:                                            ; preds = %._crit_edge8135
  %i.gzr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.91868.lcssa)
  %i.gzs = fadd fast float %i.gzr, 1.000000e+00
  %i.gzt = call fast float @llvm.log.f32(float %i.gzs)
  %i.gzu = call fast float @llvm.tanh.f32(float %i.gzt)
  %i.gzv = fmul fast float %i.gzu, %.91868.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dx:                                            ; preds = %._crit_edge8135
  %i.gzw = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.gzx = load float, ptr %i.gzw, align 4, !tbaa !39 ; 3 uses
  %i.gzy = getelementptr inbounds nuw i8, ptr %i.gzw, i64 4
  %i.gzz = load float, ptr %i.gzy, align 4, !tbaa !39 ; 2 uses
  %i.haa = fneg fast float %i.gzz
  %i.hab = fdiv fast float %i.haa, %i.gzx         ; 2 uses
  %i.hac = fcmp fast olt float %.91868.lcssa, %i.hab
  br i1 %i.hac, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.had = fdiv fast float 1.000000e+00, %i.gzx
  %i.hae = fadd fast float %i.hab, %i.had
  %i.haf = fcmp fast ogt float %.91868.lcssa, %i.hae
  br i1 %i.haf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.hag = fmul fast float %i.gzx, %.91868.lcssa
  %i.hah = fadd fast float %i.hag, %i.gzz
  %i.hai = fmul fast float %i.hah, %.91868.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.du, %bb.dx, %._crit_edge8135, %bb.ds, %bb.dt, %bb.dv, %bb.dw, %bb.dy, %bb.dz
  %.16669 = phi nsz float [ %.91868.lcssa, %._crit_edge8135 ], [ %i.gzd, %bb.ds ], [ %i.gzi, %bb.dt ], [ 0.000000e+00, %bb.dx ], [ %spec.select6913, %bb.du ], [ %i.gzq, %bb.dv ], [ %i.gzv, %bb.dw ], [ %i.hai, %bb.dz ], [ %.91868.lcssa, %bb.dy ]
  %i.haj = bitcast float %.16669 to i32
  %i.hak = lshr i32 %i.haj, 16
  %i.hal = trunc nuw i32 %i.hak to i16
  store i16 %i.hal, ptr %.118778146, align 2, !tbaa !92
  %i.ham = getelementptr inbounds nuw i8, ptr %.118778146, i64 2 ; 2 uses
  %i.han = add nuw nsw i32 %.018748147, 1         ; 2 uses
  %exitcond8671.not = icmp eq i32 %i.han, %i.eux
  br i1 %exitcond8671.not, label %._crit_edge8148, label %bb.cu, !llvm.loop !1859

bb.ea:                                            ; preds = %._crit_edge8154.split, %bb.b
  ret void
}

declare void @_ZN4ncnn37deconvolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !63     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !63
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %.not2585 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2585, label %._crit_edge2587, label %.noexc1189.lr.ph

.noexc1189.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !67
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc1189.preheader, label %._crit_edge2587

.noexc1189.preheader:                             ; preds = %.noexc1189.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc1189

.noexc1189:                                       ; preds = %.noexc1189.preheader, %._crit_edge2584.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc1189.preheader ], [ %indvars.iv.next, %._crit_edge2584.split ] ; 4 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !62
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !64
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !55  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !67  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !55  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2359.lr.ph, label %._crit_edge2584.split

.preheader2359.lr.ph:                             ; preds = %.noexc1189
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !62  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2359.preheader, label %._crit_edge2584.split

.preheader2359.preheader:                         ; preds = %.preheader2359.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !20, !noalias !1960
  %i.av = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !1960
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1960
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 3
  %i.bf = and i32 %i.be, 536870910
  %narrow = add nuw nsw i32 %i.bf, 2
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %i.bm = add i32 %i.ae, -8
  %i.bn = add i32 %i.ae, -4
  %i.bo = add i32 %i.ae, -2
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2359

.preheader2359:                                   ; preds = %.preheader2359.preheader, %._crit_edge
  %.08132583 = phi i32 [ %.neg2339, %._crit_edge ], [ 0, %.preheader2359.preheader ]
  %.08142582 = phi ptr [ %.5819, %._crit_edge ], [ %i.bc, %.preheader2359.preheader ]
  %.neg2339 = add nuw nsw i32 %.08132583, 1       ; 7 uses
  br label %bb.c

._crit_edge2584.split:                            ; preds = %._crit_edge, %.preheader2359.lr.ph, %.noexc1189
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2667.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2667.not, label %._crit_edge2587, label %.noexc1189, !llvm.loop !1916

._crit_edge:                                      ; preds = %.thread2320
  %exitcond2665.not = icmp eq i32 %.neg2339, %i.ai
  br i1 %exitcond2665.not, label %._crit_edge2584.split, label %.preheader2359, !llvm.loop !1917

bb.c:                                             ; preds = %.preheader2359, %.thread2320
  %.08122581 = phi i32 [ 0, %.preheader2359 ], [ %i.bpq, %.thread2320 ] ; 6 uses
  %.18152580 = phi ptr [ %.08142582, %.preheader2359 ], [ %.5819, %.thread2320 ] ; 29 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %.not851 = icmp eq ptr %i.bp, null
  br i1 %.not851, label %_ZN4ncnn3MatD2Ev.exit928, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ak
  %i.br = load <16 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit928

_ZN4ncnn3MatD2Ev.exit928:                         ; preds = %bb.d, %bb.c
  %.02260 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.br, %bb.d ] ; 3 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !20, !noalias !1961 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !1961 ; 2 uses
  %i.bu = mul i64 %i.bt, %indvars.iv
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !1961 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw ; 2 uses
  br i1 %i.an, label %.preheader2354.lr.ph, label %.preheader2358

.preheader2354.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit928
  %i.by = load i32, ptr %7, align 4, !tbaa !63    ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %.neg2341 = add nuw nsw i32 %.08122581, 1
  %i.ca = load i32, ptr %15, align 4, !tbaa !63
  %i.cb = shl i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.bz, label %.preheader2354.lr.ph.split.us, label %.preheader2354.preheader

.preheader2354.preheader:                         ; preds = %.preheader2354.lr.ph
  %19 = mul i64 %indvars.iv, %i.bv
  %20 = mul i64 %19, %i.bt
  %i.cd = mul nsw i64 %i.bg, %i.cc
  %i.ce = getelementptr i8, ptr %i.bs, i64 %20
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.cd
  br label %.preheader2358

.preheader2354.lr.ph.split.us:                    ; preds = %.preheader2354.lr.ph
  %i.cf = load i32, ptr %8, align 4, !tbaa !63
  %i.cg = load i32, ptr %9, align 4, !tbaa !63
  %invariant.op2380.us = sub i32 %.neg2339, %i.cg
  br label %.preheader2354.us

.preheader2354.us:                                ; preds = %._crit_edge.us, %.preheader2354.lr.ph.split.us
  %indvars.iv2617 = phi i64 [ %indvars.iv.next2618, %._crit_edge.us ], [ 0, %.preheader2354.lr.ph.split.us ] ; 20 uses
  %.07422391.us = phi ptr [ %i.adu, %._crit_edge.us ], [ %i.bx, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.07472390.us = phi <16 x float> [ %.us-phi2386.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.07522389.us = phi <16 x float> [ %.us-phi2385.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.07822388.us = phi <16 x float> [ %.us-phi2384.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.122612387.us = phi <16 x float> [ %.us-phi2383.us, %._crit_edge.us ], [ %.02260, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %i.ch = or disjoint i64 %indvars.iv2617, 15
  %i.ci = or disjoint i64 %indvars.iv2617, 1
  %i.cj = or disjoint i64 %indvars.iv2617, 2
  %i.ck = or disjoint i64 %indvars.iv2617, 3
  %i.cl = or disjoint i64 %indvars.iv2617, 4
  %i.cm = or disjoint i64 %indvars.iv2617, 5
  %i.cn = or disjoint i64 %indvars.iv2617, 6
  %i.co = or disjoint i64 %indvars.iv2617, 7
  %i.cp = or disjoint i64 %indvars.iv2617, 8
  %i.cq = or disjoint i64 %indvars.iv2617, 9
  %i.cr = or disjoint i64 %indvars.iv2617, 10
  %i.cs = or disjoint i64 %indvars.iv2617, 11
  %i.ct = or disjoint i64 %indvars.iv2617, 12
  %i.cu = or disjoint i64 %indvars.iv2617, 13
  %i.cv = or disjoint i64 %indvars.iv2617, 14
  %i.cw = lshr exact i64 %indvars.iv2617, 2       ; 4 uses
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = or disjoint i64 %i.cw, 2
  %i.cz = or disjoint i64 %i.cw, 3
  %i.da = lshr exact i64 %indvars.iv2617, 3       ; 2 uses
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = lshr exact i64 %indvars.iv2617, 4
  br i1 %i.ap, label %.lr.ph2376.split.us.us, label %._crit_edge.us

.lr.ph2376.split.us.us:                           ; preds = %.preheader2354.us, %.loopexit2349.us.us
  %.07402375.us.us = phi i32 [ %i.adt, %.loopexit2349.us.us ], [ 0, %.preheader2354.us ] ; 3 uses
  %.17482374.us.us = phi <16 x float> [ %.10.us.us, %.loopexit2349.us.us ], [ %.07472390.us, %.preheader2354.us ] ; 4 uses
  %.17532373.us.us = phi <16 x float> [ %.10762.us.us, %.loopexit2349.us.us ], [ %.07522389.us, %.preheader2354.us ] ; 4 uses
  %.17832372.us.us = phi <16 x float> [ %.10792.us.us, %.loopexit2349.us.us ], [ %.07822388.us, %.preheader2354.us ] ; 4 uses
  %.222622371.us.us = phi <16 x float> [ %.82266.us.us, %.loopexit2349.us.us ], [ %.122612387.us, %.preheader2354.us ] ; 4 uses
  %i.dd = mul nsw i32 %i.cf, %.07402375.us.us
  %.reass2381.us.us = add i32 %i.dd, %invariant.op2380.us ; 3 uses
  %i.de = icmp slt i32 %.reass2381.us.us, 0
  br i1 %i.de, label %.loopexit2349.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2376.split.us.us
  %i.df = load i32, ptr %10, align 4, !tbaa !63   ; 2 uses
  %i.dg = srem i32 %.reass2381.us.us, %i.df
  %i.dh = sdiv i32 %.reass2381.us.us, %i.df       ; 2 uses
  %.not883.us.us = icmp eq i32 %i.dg, 0
  %.not884.us.us = icmp slt i32 %i.dh, %i.ag
  %or.cond = select i1 %.not883.us.us, i1 %.not884.us.us, i1 false
  br i1 %or.cond, label %.preheader2348.us.us, label %.loopexit2349.us.us

.preheader2348.us.us:                             ; preds = %bb.e
  %i.di = load i32, ptr %11, align 4, !tbaa !63   ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.us.us, label %.loopexit2349.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2348.us.us
  %i.dk = load i32, ptr %12, align 4, !tbaa !63
  %i.dl = load i32, ptr %13, align 4, !tbaa !63
  %invariant.op.us.us = sub i32 %.neg2341, %i.dl
  %i.dm = mul nuw nsw i32 %i.di, %.07402375.us.us
  %i.dn = sext i32 %i.dh to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2293.us.us.us, %.lr.ph.us.us
  %indvars.iv2613 = phi i64 [ %indvars.iv.next2614, %.thread2293.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.27492363.us.us.us = phi <16 x float> [ %.8.us.us.us, %.thread2293.us.us.us ], [ %.17482374.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27542362.us.us.us = phi <16 x float> [ %.8760.us.us.us, %.thread2293.us.us.us ], [ %.17532373.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27842361.us.us.us = phi <16 x float> [ %.8790.us.us.us, %.thread2293.us.us.us ], [ %.17832372.us.us, %.lr.ph.us.us ] ; 4 uses
  %.322632360.us.us.us = phi <16 x float> [ %.7.us.us.us, %.thread2293.us.us.us ], [ %.222622371.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.do = trunc i64 %indvars.iv2613 to i32
  %i.dp = mul i32 %i.dk, %i.do
  %.reass.us.us.us = add i32 %i.dp, %invariant.op.us.us ; 3 uses
  %i.dq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dq, label %.thread2293.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %14, align 4, !tbaa !63   ; 2 uses
  %i.ds = srem i32 %.reass.us.us.us, %i.dr
  %i.dt = sdiv i32 %.reass.us.us.us, %i.dr        ; 5 uses
  %.not885.us.us.us = icmp eq i32 %i.ds, 0
  %.not886.us.us.us = icmp slt i32 %i.dt, %i.af
  %or.cond3174 = select i1 %.not885.us.us.us, i1 %.not886.us.us.us, i1 false
  br i1 %or.cond3174, label %.split.us.us.us, label %.thread2293.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv2613 to i32
  %i.dv = add i32 %i.dm, %i.du
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.07422391.us, i64 %i.dx ; 16 uses
  switch i32 %i.aq, label %.thread2293.us.us.us [
    i32 4, label %.thread.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit926.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit924.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit920.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit920.us.us.us:                ; preds = %.split.us.us.us
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !55, !noalias !1962
  %i.ea = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1962 ; 9 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !1962 ; 9 uses
  %i.ec = mul i64 %i.eb, %indvars.iv2617
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !56, !noalias !1962 ; 10 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.dn
  %i.ei = mul i64 %i.eh, %i.ed                    ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = sext i32 %i.dt to i64                   ; 16 uses
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !92
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 16
  %i.ep = insertelement <16 x i32> poison, i32 %i.eo, i64 0
  %i.eq = bitcast <16 x i32> %i.ep to <16 x float>
  %i.er = shufflevector <16 x float> %i.eq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.es = mul i64 %i.eb, %i.ci
  %i.et = mul i64 %i.es, %i.ed
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ei
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ek
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !92
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <16 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <16 x i32> %i.fa to <16 x float>
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fd = mul i64 %i.eb, %i.cj
  %i.fe = mul i64 %i.fd, %i.ed
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ei
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %i.ek
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !92
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = insertelement <16 x i32> poison, i32 %i.fk, i64 0
  %i.fm = bitcast <16 x i32> %i.fl to <16 x float>
  %i.fn = shufflevector <16 x float> %i.fm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fo = mul i64 %i.eb, %i.ck
  %i.fp = mul i64 %i.fo, %i.ed
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ei
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ek
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !92
  %i.fu = zext i16 %i.ft to i32
  %i.fv = shl nuw i32 %i.fu, 16
  %i.fw = insertelement <16 x i32> poison, i32 %i.fv, i64 0
  %i.fx = bitcast <16 x i32> %i.fw to <16 x float>
  %i.fy = shufflevector <16 x float> %i.fx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fz = mul i64 %i.eb, %i.cl
  %i.ga = mul i64 %i.fz, %i.ed
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ei
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.ek
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !92
  %i.gf = zext i16 %i.ge to i32
  %i.gg = shl nuw i32 %i.gf, 16
  %i.gh = insertelement <16 x i32> poison, i32 %i.gg, i64 0
  %i.gi = bitcast <16 x i32> %i.gh to <16 x float>
  %i.gj = shufflevector <16 x float> %i.gi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gk = mul i64 %i.eb, %i.cm
  %i.gl = mul i64 %i.gk, %i.ed
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ei
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.ek
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !92
  %i.gq = zext i16 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 16
  %i.gs = insertelement <16 x i32> poison, i32 %i.gr, i64 0
  %i.gt = bitcast <16 x i32> %i.gs to <16 x float>
  %i.gu = shufflevector <16 x float> %i.gt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gv = mul i64 %i.eb, %i.cn
  %i.gw = mul i64 %i.gv, %i.ed
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ei
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.ek
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !92
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw i32 %i.hb, 16
  %i.hd = insertelement <16 x i32> poison, i32 %i.hc, i64 0
  %i.he = bitcast <16 x i32> %i.hd to <16 x float>
  %i.hf = shufflevector <16 x float> %i.he, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hg = mul i64 %i.eb, %i.co
  %i.hh = mul i64 %i.hg, %i.ed
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ei
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.ek
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !92
end_hunk_1
