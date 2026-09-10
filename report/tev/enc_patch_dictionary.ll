Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPS0_PNS_6AuxOutEbE3$_0EENS_6StatusESE_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallInitFuncEPvm":bb.a
; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPS0_PNS_6AuxOutEbE3$_0EENS_6StatusESE_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !875, !nonnull !71, !align !876 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !878, !nonnull !71, !align !876
  %i.f = load i64, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %.not60.i = icmp eq i64 %i.f, 2
  br i1 %.not60.i, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_0clEjm.exit", label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %bb.b
  %i.g = zext i32 %1 to i64
  %i.h = shl i32 %1, 2                            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = add i32 %1, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = add i32 %1, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  %.not2554.i = icmp samesign ugt i64 %i.n, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.c

bb.c:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", %.lr.ph65.i
  %i.t = phi i64 [ %i.f, %.lr.ph65.i ], [ %i.ho, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i" ] ; 15 uses
  %.02263.i = phi i32 [ 0, %.lr.ph65.i ], [ %.2.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i" ] ; 16 uses
  %.02461.i = phi i64 [ 1, %.lr.ph65.i ], [ %i.hp, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i" ] ; 5 uses
  %.024.tr.i = trunc i64 %.02461.i to i32
  %i.u = shl i32 %.024.tr.i, 2                    ; 4 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !879, !nonnull !71, !align !876 ; 2 uses
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !880 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val27.i = load i64, ptr %i.w, align 8, !tbaa !188
  %i.x = mul i64 %.val27.i, %i.j
  %i.y = sext i32 %i.u to i64                     ; 4 uses
  %i.z = add i64 %i.x, %i.y                       ; 3 uses
  %i.aa = load ptr, ptr %.val.i, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !107 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load float, ptr %i.af, align 4, !tbaa !107 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !107 ; 7 uses
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !881, !nonnull !71, !align !876
  %.val34.i = load ptr, ptr %i.al, align 8        ; 2 uses
  %.val.i.i = load ptr, ptr %.val34.i, align 8    ; 3 uses
  %i.am = getelementptr i8, ptr %.val34.i, i64 8
  %.val19.i.i = load i64, ptr %i.am, align 8, !tbaa !190
  %i.an = load ptr, ptr %.val.i.i, align 8, !tbaa !184
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.aq = or disjoint i32 %i.u, 1
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = or disjoint i32 %i.u, 2
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = or disjoint i32 %i.u, 3
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %bb.c
  %.01510.i.i = phi i64 [ 0, %bb.c ], [ %i.dj, %bb.j ] ; 2 uses
  %i.aw = trunc nuw nsw i64 %.01510.i.i to i32
  %i.ax = add i32 %i.h, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %.val19.i.i, %i.ay              ; 3 uses
  %i.ba = getelementptr [4 x i8], ptr %i.an, i64 %i.az ; 4 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %i.y
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !107
  %i.bd = fsub float %i.ac, %i.bc
  %i.be = tail call noundef float @llvm.fabs.f32(float %i.bd)
  %i.bf = fpext float %i.be to double
  %i.bg = fcmp ule double %i.bf, 1.000000e-04
  br i1 %i.bg, label %bb.k, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

bb.d:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i.i"
  %i.bh = getelementptr [4 x i8], ptr %i.ba, i64 %i.ar
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !107
  %i.bj = fsub float %i.ac, %i.bi
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = fpext float %i.bk to double
  %i.bm = fcmp ule double %i.bl, 1.000000e-04
  br i1 %i.bm, label %bb.e, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr [4 x i8], ptr %i.dl, i64 %i.ar
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !107
  %i.bp = fsub float %i.ag, %i.bo
  %i.bq = tail call noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fpext float %i.bq to double
  %i.bs = fcmp ule double %i.br, 1.000000e-04
  br i1 %i.bs, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i.i", label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i.i": ; preds = %bb.e
  %i.bt = getelementptr [4 x i8], ptr %i.dt, i64 %i.ar
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !107
  %i.bv = fsub float %i.ak, %i.bu
  %i.bw = tail call noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fpext float %i.bw to double
  %i.by = fcmp ogt double %i.bx, 1.000000e-04
  br i1 %i.by, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %bb.f

bb.f:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i.i"
  %i.bz = getelementptr [4 x i8], ptr %i.ba, i64 %i.at
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !107
  %i.cb = fsub float %i.ac, %i.ca
  %i.cc = tail call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fpext float %i.cc to double
  %i.ce = fcmp ule double %i.cd, 1.000000e-04
  br i1 %i.ce, label %bb.g, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr [4 x i8], ptr %i.dl, i64 %i.at
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !107
  %i.ch = fsub float %i.ag, %i.cg
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cj = fpext float %i.ci to double
  %i.ck = fcmp ule double %i.cj, 1.000000e-04
  br i1 %i.ck, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i.i", label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i.i": ; preds = %bb.g
  %i.cl = getelementptr [4 x i8], ptr %i.dt, i64 %i.at
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !107
  %i.cn = fsub float %i.ak, %i.cm
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = fpext float %i.co to double
  %i.cq = fcmp ogt double %i.cp, 1.000000e-04
  br i1 %i.cq, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %bb.h

bb.h:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i.i"
  %i.cr = getelementptr [4 x i8], ptr %i.ba, i64 %i.av
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !107
  %i.ct = fsub float %i.ac, %i.cs
  %i.cu = tail call noundef float @llvm.fabs.f32(float %i.ct)
  %i.cv = fpext float %i.cu to double
  %i.cw = fcmp ule double %i.cv, 1.000000e-04
  br i1 %i.cw, label %bb.i, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr [4 x i8], ptr %i.dl, i64 %i.av
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !107
  %i.cz = fsub float %i.ag, %i.cy
  %i.da = tail call noundef float @llvm.fabs.f32(float %i.cz)
  %i.db = fpext float %i.da to double
  %i.dc = fcmp ule double %i.db, 1.000000e-04
  br i1 %i.dc, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.3.i.i", label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.3.i.i": ; preds = %bb.i
  %i.dd = getelementptr [4 x i8], ptr %i.dt, i64 %i.av
  %i.de = load float, ptr %i.dd, align 4, !tbaa !107
  %i.df = fsub float %i.ak, %i.de
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.df)
  %i.dh = fpext float %i.dg to double
  %i.di = fcmp ogt double %i.dh, 1.000000e-04
  br i1 %i.di, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %bb.j

bb.j:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.3.i.i"
  %i.dj = add nuw nsw i64 %.01510.i.i, 1          ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.dj, 4
  br i1 %exitcond.i.i, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i", label %.preheader.i.i, !llvm.loop !871

bb.k:                                             ; preds = %.preheader.i.i
  %i.dk = load ptr, ptr %i.ao, align 8, !tbaa !184
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %i.az ; 4 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.y
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !107
  %i.do = fsub float %i.ag, %i.dn
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.do)
  %i.dq = fpext float %i.dp to double
  %i.dr = fcmp ule double %i.dq, 1.000000e-04
  br i1 %i.dr, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i.i", label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i.i": ; preds = %bb.k
  %i.ds = load ptr, ptr %i.ap, align 8, !tbaa !184
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.az ; 4 uses
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.y
  %i.dv = load float, ptr %i.du, align 4, !tbaa !107
  %i.dw = fsub float %i.ak, %i.dv
  %i.dx = tail call noundef float @llvm.fabs.f32(float %i.dw)
  %i.dy = fpext float %i.dx to double
  %i.dz = fcmp ogt double %i.dy, 1.000000e-04
  br i1 %i.dz, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %bb.d

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i": ; preds = %bb.j
  br i1 %.not2554.i, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i"
  %i.ea = shl i64 %.02461.i, 2                    ; 2 uses
  %i.eb = add i64 %i.ea, -4                       ; 2 uses
  %i.ec = add i64 %i.ea, 4                        ; 2 uses
  %.not2651.i = icmp ugt i64 %i.eb, %i.ec
  br i1 %.not2651.i, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %.lr.ph57.split.i

.lr.ph57.split.i:                                 ; preds = %.lr.ph57.i
  %i.ed = load ptr, ptr %i.r, align 8, !tbaa !882, !nonnull !71, !align !876 ; 2 uses
  %.val30.i = load ptr, ptr %i.ed, align 8        ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %.val31.i = load i64, ptr %i.ee, align 8, !tbaa !190
  %i.ef = load ptr, ptr %.val30.i, align 8, !tbaa !184
  %i.eg = getelementptr inbounds nuw i8, ptr %.val30.i, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val30.i, i64 16 ; 3 uses
  %sext50.i = shl i64 %i.eb, 32
  %i.ei = ashr exact i64 %sext50.i, 32            ; 3 uses
  %sext50.1.i = shl i64 %.02461.i, 34
  %i.ej = ashr exact i64 %sext50.1.i, 32          ; 3 uses
  %sext50.2.i = shl i64 %i.ec, 32
  %i.ek = ashr exact i64 %sext50.2.i, 32          ; 3 uses
  br label %.lr.ph.i

._crit_edge58.i:                                  ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i"
  %i.el = icmp ult i64 %4, 8
  br i1 %i.el, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", label %bb.s

.lr.ph.i:                                         ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i", %.lr.ph57.split.i
  %.02056.i = phi i64 [ %i.n, %.lr.ph57.split.i ], [ %i.he, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i" ] ; 3 uses
  %.02155.i = phi i64 [ 0, %.lr.ph57.split.i ], [ %4, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i" ]
  %sext.i = shl i64 %.02056.i, 32
  %i.em = ashr exact i64 %sext.i, 32
  %i.en = mul i64 %i.em, %.val31.i                ; 7 uses
  %i.eo = getelementptr [4 x i8], ptr %i.ef, i64 %i.en ; 3 uses
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.ei
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !107
  %i.er = fsub float %i.ac, %i.eq
  %i.es = tail call noundef float @llvm.fabs.f32(float %i.er)
  %i.et = fpext float %i.es to double
  %i.eu = fcmp ule double %i.et, 1.000000e-04
  br i1 %i.eu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.ev = load ptr, ptr %i.eg, align 8, !tbaa !184
  %i.ew = getelementptr [4 x i8], ptr %i.ev, i64 %i.en
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %i.ei
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !107
  %i.ez = fsub float %i.ag, %i.ey
  %i.fa = tail call noundef float @llvm.fabs.f32(float %i.ez)
  %i.fb = fpext float %i.fa to double
  %i.fc = fcmp ule double %i.fb, 1.000000e-04
  br i1 %i.fc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fd = load ptr, ptr %i.eh, align 8, !tbaa !184
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %i.en
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %i.ei
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !107
  %i.fh = fsub float %i.ak, %i.fg
  %i.fi = tail call noundef float @llvm.fabs.f32(float %i.fh)
  %i.fj = fpext float %i.fi to double
  %i.fk = fcmp ule double %i.fj, 1.000000e-04
  %spec.select.i.i = zext i1 %i.fk to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %.lcssa.i.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i.i, %bb.m ], [ 0, %bb.l ]
  %3 = add i64 %.lcssa.i.i, %.02155.i
  %i.fl = getelementptr [4 x i8], ptr %i.eo, i64 %i.ej
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !107
  %i.fn = fsub float %i.ac, %i.fm
  %i.fo = tail call noundef float @llvm.fabs.f32(float %i.fn)
  %i.fp = fpext float %i.fo to double
  %i.fq = fcmp ule double %i.fp, 1.000000e-04
  br i1 %i.fq, label %bb.o, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i"

bb.o:                                             ; preds = %bb.n
  %i.fr = load ptr, ptr %i.eg, align 8, !tbaa !184
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.en
  %i.ft = getelementptr [4 x i8], ptr %i.fs, i64 %i.ej
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !107
  %i.fv = fsub float %i.ag, %i.fu
  %i.fw = tail call noundef float @llvm.fabs.f32(float %i.fv)
  %i.fx = fpext float %i.fw to double
  %i.fy = fcmp ule double %i.fx, 1.000000e-04
  br i1 %i.fy, label %bb.p, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i"

bb.p:                                             ; preds = %bb.o
  %i.fz = load ptr, ptr %i.eh, align 8, !tbaa !184
  %i.ga = getelementptr [4 x i8], ptr %i.fz, i64 %i.en
  %i.gb = getelementptr [4 x i8], ptr %i.ga, i64 %i.ej
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !107
  %i.gd = fsub float %i.ak, %i.gc
  %i.ge = tail call noundef float @llvm.fabs.f32(float %i.gd)
  %i.gf = fpext float %i.ge to double
  %i.gg = fcmp ule double %i.gf, 1.000000e-04
  %spec.select.i.1.i = zext i1 %i.gg to i64
  br label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i": ; preds = %bb.p, %bb.o, %bb.n
  %.lcssa.i.1.i = phi i64 [ 0, %bb.n ], [ %spec.select.i.1.i, %bb.p ], [ 0, %bb.o ]
  %i.gh = add i64 %3, %.lcssa.i.1.i
  %i.gi = getelementptr [4 x i8], ptr %i.eo, i64 %i.ek
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !107
  %i.gk = fsub float %i.ac, %i.gj
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gk)
  %i.gm = fpext float %i.gl to double
  %i.gn = fcmp ule double %i.gm, 1.000000e-04
  br i1 %i.gn, label %bb.q, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i"

bb.q:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i"
  %i.go = load ptr, ptr %i.eg, align 8, !tbaa !184
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %i.en
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.ek
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !107
  %i.gs = fsub float %i.ag, %i.gr
  %i.gt = tail call noundef float @llvm.fabs.f32(float %i.gs)
  %i.gu = fpext float %i.gt to double
  %i.gv = fcmp ule double %i.gu, 1.000000e-04
  br i1 %i.gv, label %bb.r, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i"

bb.r:                                             ; preds = %bb.q
  %i.gw = load ptr, ptr %i.eh, align 8, !tbaa !184
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.en
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %i.ek
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !107
  %i.ha = fsub float %i.ak, %i.gz
  %i.hb = tail call noundef float @llvm.fabs.f32(float %i.ha)
  %i.hc = fpext float %i.hb to double
  %i.hd = fcmp ule double %i.hc, 1.000000e-04
  %spec.select.i.2.i = zext i1 %i.hd to i64
  br label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i": ; preds = %bb.r, %bb.q, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i"
  %.lcssa.i.2.i = phi i64 [ 0, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i" ], [ %spec.select.i.2.i, %bb.r ], [ 0, %bb.q ]
  %4 = add i64 %i.gh, %.lcssa.i.2.i               ; 2 uses
  %i.he = add nuw nsw i64 %.02056.i, 4
  %.not25.not.i = icmp samesign ult i64 %.02056.i, %i.q
  br i1 %.not25.not.i, label %.lr.ph.i, label %._crit_edge58.i, !llvm.loop !872

bb.s:                                             ; preds = %._crit_edge58.i
  %i.hf = load ptr, ptr %i.s, align 8, !tbaa !883, !nonnull !71, !align !876 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !101
  %i.hk = mul i64 %i.hj, %i.g
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hl, i64 64) ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.02461.i
  store i8 1, ptr %i.hm, align 1, !tbaa !72
  %i.hn = add i32 %.02263.i, 1
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !878
  %.pre69.i = load i64, ptr %.pre.i, align 8, !tbaa !103
  br label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i"

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i": ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i.i", %bb.k, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.3.i.i", %bb.i, %bb.h, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i.i", %bb.g, %bb.f, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i.i", %bb.e, %bb.d, %.preheader.i.i, %bb.s, %._crit_edge58.i, %.lr.ph57.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i"
  %i.ho = phi i64 [ %i.t, %._crit_edge58.i ], [ %.pre69.i, %bb.s ], [ %i.t, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i" ], [ %i.t, %.lr.ph57.i ], [ %i.t, %.preheader.i.i ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i.i" ], [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i.i" ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.3.i.i" ], [ %i.t, %bb.k ], [ %i.t, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i.i" ] ; 2 uses
  %.2.i = phi i32 [ %.02263.i, %._crit_edge58.i ], [ %i.hn, %bb.s ], [ %.02263.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i" ], [ %.02263.i, %.lr.ph57.i ], [ %.02263.i, %.preheader.i.i ], [ %.02263.i, %bb.d ], [ %.02263.i, %bb.e ], [ %.02263.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.1.i.i" ], [ %.02263.i, %bb.f ], [ %.02263.i, %bb.g ], [ %.02263.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.2.i.i" ], [ %.02263.i, %bb.h ], [ %.02263.i, %bb.i ], [ %.02263.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.3.i.i" ], [ %.02263.i, %bb.k ], [ %.02263.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_3clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.i.i" ] ; 2 uses
  %i.hp = add i64 %.02461.i, 1                    ; 2 uses
  %i.hq = add i64 %i.ho, -2
  %.not.i = icmp ugt i64 %i.hp, %i.hq
  br i1 %.not.i, label %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_0clEjm.exit", label %bb.c, !llvm.loop !873

"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_0clEjm.exit": ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i", %bb.b
  %.022.lcssa.i = phi i32 [ 0, %bb.b ], [ %.2.i, %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_5clERKNSt3__14pairIiiEERKNSG_5arrayIfLm3EEE.exit.thread.i" ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !884, !nonnull !71, !align !885
  %i.ht = atomicrmw add ptr %i.hs, i32 %.022.lcssa.i seq_cst, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbENK3$_0clEjm.exit", %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.26) #22
  unreachable
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.26) #22
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE24__emplace_back_slow_pathIJEEEPS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::__1::__split_buffer.349", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = load ptr, ptr %0, align 8, !tbaa !203
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 184
  %i.h = add nsw i64 %i.g, 1                      ; 2 uses
  %i.i = icmp ugt i64 %i.h, 100254043878856258
  br i1 %i.i, label %bb.b, label %_ZNKSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE11__recommendB8nn180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #22
  unreachable

_ZNKSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = sdiv exact i64 %i.m, 184                 ; 2 uses
  %.not.i = icmp ult i64 %i.n, 50127021939428129
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.h)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 100254043878856258 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.j, ptr %i.q, align 8, !tbaa !325
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEEC2EmmSB_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE11__recommendB8nn180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 100254043878856258
  br i1 %i.s, label %bb.d, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSD_m.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSD_m.exit.i: ; preds = %bb.c
  %i.t = mul nuw i64 %.0.i, 184
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20
  br label %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEEC2EmmSB_.exit

_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEEC2EmmSB_.exit: ; preds = %_ZNKSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSD_m.exit.i
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSD_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE11__recommendB8nn180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !329
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.f ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !330
  %i.y = getelementptr inbounds nuw [184 x i8], ptr %storemerge.i, i64 %.0.i
  store ptr %i.y, ptr %i.p, align 8, !tbaa !205
  tail call void @_ZN3jxl14QuantizedPatchC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.v) #24
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !331
  call void @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS8_RS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #24
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !330 ; 2 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !331 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEEC2EmmSB_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i
  %i.ae = phi ptr [ %i.ao, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i ], [ %i.ad, %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEEC2EmmSB_.exit ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -184 ; 2 uses
  store ptr %i.af, ptr %i.w, align 8, !tbaa !331
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !221 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !216
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !220
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.an) #21
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  call void @_ZN3jxl14QuantizedPatchD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(184) %i.af) #23
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !331 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ao
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i, %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEEC2EmmSB_.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !329   ; 3 uses
  %.not.i3 = icmp eq ptr %i.ap, null
  br i1 %.not.i3, label %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEE5clearB8nn180100Ev.exit.i
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !205
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS1_IjjEENS_9allocatorIS5_EEEEEERNS6_IS9_EEE5clearB8nn180100Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl14QuantizedPatchC2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 {
_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit:
  %.ptr5 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.ptr10 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.ptr5, i8 0, i64 144, i1 false)
  tail call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.ptr5, i64 noundef 1024) #24
  %.pre13 = load ptr, ptr %.ptr10, align 8, !tbaa !225 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !260
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = ptrtoint ptr %.pre to i64
  %i.c = ptrtoint ptr %.pre13 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = icmp ult i64 %i.e, 1024
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit
  %i.g = sub nuw nsw i64 1024, %i.e
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.ptr10, i64 noundef %i.g) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.b:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit
  %.not11 = icmp eq i64 %i.d, 4096
  br i1 %.not11, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pre13, i64 4096
  store ptr %i.h, ptr %i.a, align 8, !tbaa !260
end_hunk_0
