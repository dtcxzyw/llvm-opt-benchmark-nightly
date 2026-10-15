Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512bf16?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn28rotaryembed_bf16s_avx512bf16ERKNS_3MatES2_S2_RS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  store i32 %i.i, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  store i32 %i.k, ptr %i.d, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.m)
  %i.n = load ptr, ptr %3, align 8, !tbaa !16
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.q, %i.t
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.x)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 dereferenceable(72) %3, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.b)
  br label %_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.exit

_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.exit: ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not515 = icmp sgt i32 %i.k, %i.j
  br i1 %.not515, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.z = phi i32 [ %i.v, %.noexc.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv564 = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next565, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !16, !noalias !50
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !50
  %i.ac = mul i64 %i.ab, %indvars.iv564
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !51, !noalias !50 ; 2 uses
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load ptr, ptr %4, align 8, !tbaa !16, !noalias !52
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !17, !noalias !52
  %i.ai = mul i64 %i.ah, %indvars.iv564
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !51, !noalias !52 ; 2 uses
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.z, 0
  br i1 %i.am, label %.lr.ph514, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph514:                                        ; preds = %.noexc
  %i.an = load i32, ptr %i.o, align 4, !tbaa !15, !noalias !52
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !15, !noalias !50
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul i64 %i.ad, %i.aq
  %i.as = mul i64 %i.aj, %i.ao                    ; 2 uses
  br label %bb.c

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit, %.noexc
  %i.at = phi i32 [ %i.z, %.noexc ], [ %i.ux, %.loopexit ]
  %indvars.iv.next565 = add nsw i64 %indvars.iv564, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next565 to i32
  %exitcond567.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond567.not, label %._crit_edge, label %.noexc, !llvm.loop !30

bb.c:                                             ; preds = %.lr.ph514, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph514 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.au = load i32, ptr %6, align 4, !tbaa !9
  %.not297 = icmp eq i32 %i.au, 0
  %i.av = mul i64 %i.ar, %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.av ; 5 uses
  br i1 %.not297, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %7, align 8, !tbaa !16
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !15
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %indvars.iv, %i.az
  %i.bb = load i64, ptr %i.s, align 8, !tbaa !51
  %i.bc = mul i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !16
  %i.bf = load i32, ptr %i.t, align 4, !tbaa !15
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %indvars.iv, %i.bg
  %i.bi = load i64, ptr %i.u, align 8, !tbaa !51
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 2 uses
  %i.bl = mul i64 %i.as, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %9, align 4, !tbaa !9     ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 31
  br i1 %i.bo, label %.lr.ph, label %..preheader408_crit_edge

..preheader408_crit_edge:                         ; preds = %bb.d
  %.pre = sdiv i32 %i.bn, 2
  br label %.preheader408

.preheader408:                                    ; preds = %.lr.ph, %..preheader408_crit_edge
  %.pre-phi571 = phi i32 [ %.pre, %..preheader408_crit_edge ], [ %i.ct, %.lr.ph ] ; 2 uses
  %.0292.lcssa = phi i32 [ 0, %..preheader408_crit_edge ], [ %i.cq, %.lr.ph ] ; 3 uses
  %.0287.lcssa = phi ptr [ %i.bm, %..preheader408_crit_edge ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.0282.lcssa = phi ptr [ %i.bk, %..preheader408_crit_edge ], [ %i.cp, %.lr.ph ] ; 2 uses
  %.0277.lcssa = phi ptr [ %i.bd, %..preheader408_crit_edge ], [ %i.co, %.lr.ph ] ; 2 uses
  %.0273.lcssa = phi ptr [ %i.aw, %..preheader408_crit_edge ], [ %i.cm, %.lr.ph ] ; 2 uses
  %i.bp = or disjoint i32 %.0292.lcssa, 7
  %i.bq = icmp slt i32 %i.bp, %.pre-phi571
  br i1 %i.bq, label %.lr.ph424, label %.preheader407

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0273414 = phi ptr [ %i.cm, %.lr.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %.0277413 = phi ptr [ %i.co, %.lr.ph ], [ %i.bd, %bb.d ] ; 2 uses
  %.0282412 = phi ptr [ %i.cp, %.lr.ph ], [ %i.bk, %bb.d ] ; 2 uses
  %.0287411 = phi ptr [ %i.cn, %.lr.ph ], [ %i.bm, %bb.d ] ; 3 uses
  %.0292410 = phi i32 [ %i.cq, %.lr.ph ], [ 0, %bb.d ]
  %i.br = load <16 x bfloat>, ptr %.0273414, align 1, !tbaa !54
  %i.bs = fpext fast <16 x bfloat> %i.br to <16 x float> ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0273414, i64 32
  %i.bu = load <16 x bfloat>, ptr %i.bt, align 1, !tbaa !54
  %i.bv = fpext fast <16 x bfloat> %i.bu to <16 x float> ; 2 uses
  %i.bw = load <16 x bfloat>, ptr %.0277413, align 1, !tbaa !54
  %i.bx = fpext fast <16 x bfloat> %i.bw to <16 x float> ; 2 uses
  %i.by = load <16 x bfloat>, ptr %.0282412, align 1, !tbaa !54
  %i.bz = fpext fast <16 x bfloat> %i.by to <16 x float> ; 2 uses
  %i.ca = shufflevector <16 x float> %i.bx, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.cb = shufflevector <16 x float> %i.bx, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.cc = shufflevector <16 x float> %i.bz, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.cd = shufflevector <16 x float> %i.bz, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.ce = shufflevector <16 x float> %i.bs, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cf = shufflevector <16 x float> %i.bv, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cg = fmul fast <16 x float> %i.cc, %i.ce
  %i.ch = fmul fast <16 x float> %i.cd, %i.cf
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.cg, i32 4)
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.ch, i32 4)
  %i.ck = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ci)
  store <16 x bfloat> %i.ck, ptr %.0287411, align 1, !tbaa !54
  %i.cl = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cj)
  %10 = getelementptr inbounds nuw i8, ptr %.0287411, i64 32
  store <16 x bfloat> %i.cl, ptr %10, align 1, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %.0273414, i64 64 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0287411, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0277413, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0282412, i64 32 ; 2 uses
  %i.cq = add nuw nsw i32 %.0292410, 16           ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 15
  %i.cs = load i32, ptr %9, align 4, !tbaa !9
  %i.ct = sdiv i32 %i.cs, 2                       ; 2 uses
  %i.cu = icmp slt i32 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.preheader408, !llvm.loop !31

.preheader407:                                    ; preds = %.lr.ph424, %.preheader408
  %.pre-phi569 = phi i32 [ %.pre-phi571, %.preheader408 ], [ %i.dy, %.lr.ph424 ] ; 2 uses
  %.1293.lcssa = phi i32 [ %.0292.lcssa, %.preheader408 ], [ %i.dv, %.lr.ph424 ] ; 3 uses
  %.1288.lcssa = phi ptr [ %.0287.lcssa, %.preheader408 ], [ %i.ds, %.lr.ph424 ] ; 2 uses
  %.1283.lcssa = phi ptr [ %.0282.lcssa, %.preheader408 ], [ %i.du, %.lr.ph424 ] ; 2 uses
  %.1278.lcssa = phi ptr [ %.0277.lcssa, %.preheader408 ], [ %i.dt, %.lr.ph424 ] ; 2 uses
  %.1274.lcssa = phi ptr [ %.0273.lcssa, %.preheader408 ], [ %i.dr, %.lr.ph424 ] ; 2 uses
  %i.cv = or disjoint i32 %.1293.lcssa, 3
  %i.cw = icmp slt i32 %i.cv, %.pre-phi569
  br i1 %i.cw, label %.lr.ph435, label %.preheader406

.lr.ph424:                                        ; preds = %.preheader408, %.lr.ph424
  %.1274423 = phi ptr [ %i.dr, %.lr.ph424 ], [ %.0273.lcssa, %.preheader408 ] ; 3 uses
  %.1278422 = phi ptr [ %i.dt, %.lr.ph424 ], [ %.0277.lcssa, %.preheader408 ] ; 2 uses
  %.1283421 = phi ptr [ %i.du, %.lr.ph424 ], [ %.0282.lcssa, %.preheader408 ] ; 2 uses
  %.1288420 = phi ptr [ %i.ds, %.lr.ph424 ], [ %.0287.lcssa, %.preheader408 ] ; 3 uses
  %.1293419 = phi i32 [ %i.dv, %.lr.ph424 ], [ %.0292.lcssa, %.preheader408 ]
  %i.cx = load <8 x bfloat>, ptr %.1274423, align 1, !tbaa !54
  %i.cy = fpext fast <8 x bfloat> %i.cx to <8 x float> ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1274423, i64 16
  %i.da = load <8 x bfloat>, ptr %i.cz, align 1, !tbaa !54
  %i.db = fpext fast <8 x bfloat> %i.da to <8 x float> ; 2 uses
  %i.dc = load <8 x bfloat>, ptr %.1278422, align 1, !tbaa !54
  %i.dd = fpext fast <8 x bfloat> %i.dc to <8 x float> ; 2 uses
  %i.de = load <8 x bfloat>, ptr %.1283421, align 1, !tbaa !54
  %i.df = fpext fast <8 x bfloat> %i.de to <8 x float> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.dd, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.dh = shufflevector <8 x float> %i.dd, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.di = shufflevector <8 x float> %i.df, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.dj = shufflevector <8 x float> %i.df, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.dk = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dl = shufflevector <8 x float> %i.db, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dm = fmul fast <8 x float> %i.di, %i.dk
  %i.dn = fmul fast <8 x float> %i.dj, %i.dl
  %i.do = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %i.dg, <8 x float> nofpclass(nan inf) %i.dm)
  %i.dp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.dh, <8 x float> nofpclass(nan inf) %i.dn)
  %i.dq = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.do)
  store <8 x bfloat> %i.dq, ptr %.1288420, align 1, !tbaa !54
  %11 = getelementptr inbounds nuw i8, ptr %.1288420, i64 16
  %12 = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dp)
  store <8 x bfloat> %12, ptr %11, align 1, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %.1274423, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1288420, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1278422, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1283421, i64 16 ; 2 uses
  %i.dv = add nuw nsw i32 %.1293419, 8            ; 3 uses
  %i.dw = or disjoint i32 %i.dv, 7
  %i.dx = load i32, ptr %9, align 4, !tbaa !9
  %i.dy = sdiv i32 %i.dx, 2                       ; 2 uses
  %i.dz = icmp slt i32 %i.dw, %i.dy
  br i1 %i.dz, label %.lr.ph424, label %.preheader407, !llvm.loop !32

.preheader406:                                    ; preds = %.lr.ph435, %.preheader407
  %.pre-phi570 = phi i32 [ %.pre-phi569, %.preheader407 ], [ %i.fq, %.lr.ph435 ] ; 2 uses
  %.2294.lcssa = phi i32 [ %.1293.lcssa, %.preheader407 ], [ %i.fn, %.lr.ph435 ] ; 3 uses
  %.2289.lcssa = phi ptr [ %.1288.lcssa, %.preheader407 ], [ %i.fk, %.lr.ph435 ] ; 2 uses
  %.2284.lcssa = phi ptr [ %.1283.lcssa, %.preheader407 ], [ %i.fm, %.lr.ph435 ] ; 2 uses
  %.2279.lcssa = phi ptr [ %.1278.lcssa, %.preheader407 ], [ %i.fl, %.lr.ph435 ] ; 2 uses
  %.2275.lcssa = phi ptr [ %.1274.lcssa, %.preheader407 ], [ %i.fj, %.lr.ph435 ] ; 2 uses
  %i.ea = or disjoint i32 %.2294.lcssa, 1
  %i.eb = icmp slt i32 %i.ea, %.pre-phi570
  br i1 %i.eb, label %.lr.ph446, label %.preheader404

.lr.ph435:                                        ; preds = %.preheader407, %.lr.ph435
  %.2275434 = phi ptr [ %i.fj, %.lr.ph435 ], [ %.1274.lcssa, %.preheader407 ] ; 3 uses
  %.2279433 = phi ptr [ %i.fl, %.lr.ph435 ], [ %.1278.lcssa, %.preheader407 ] ; 2 uses
  %.2284432 = phi ptr [ %i.fm, %.lr.ph435 ], [ %.1283.lcssa, %.preheader407 ] ; 2 uses
  %.2289431 = phi ptr [ %i.fk, %.lr.ph435 ], [ %.1288.lcssa, %.preheader407 ] ; 2 uses
  %.2294430 = phi i32 [ %i.fn, %.lr.ph435 ], [ %.1293.lcssa, %.preheader407 ]
  %i.ec = load i64, ptr %.2275434, align 1, !tbaa !54
  %i.ed = insertelement <2 x i64> poison, i64 %i.ec, i64 0
  %i.ee = bitcast <2 x i64> %i.ed to <8 x i16>
  %i.ef = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eg = bitcast <8 x i16> %i.ef to <4 x float>  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2275434, i64 8
  %i.ei = load i64, ptr %i.eh, align 1, !tbaa !54
  %i.ej = insertelement <2 x i64> poison, i64 %i.ei, i64 0
  %i.ek = bitcast <2 x i64> %i.ej to <8 x i16>
  %i.el = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.em = bitcast <8 x i16> %i.el to <4 x float>  ; 2 uses
  %i.en = load i64, ptr %.2279433, align 1, !tbaa !54
  %i.eo = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %i.ep = load i64, ptr %.2284432, align 1, !tbaa !54
  %i.eq = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %i.er = bitcast <2 x i64> %i.eo to <8 x i16>
  %i.es = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.er, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.et = bitcast <8 x i16> %i.es to <4 x float>  ; 2 uses
  %i.eu = bitcast <2 x i64> %i.eq to <8 x i16>
  %i.ev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = bitcast <8 x i16> %i.ev to <4 x float>  ; 2 uses
  %i.ex = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ey = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.ez = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fa = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.fb = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.fc = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.fd = fmul fast <4 x float> %i.ez, %i.fb
  %i.fe = fmul fast <4 x float> %i.fa, %i.fc
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.fd)
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.em, <4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.fe)
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fi = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fh)
  store <8 x bfloat> %i.fi, ptr %.2289431, align 1, !tbaa !54
  %i.fj = getelementptr inbounds nuw i8, ptr %.2275434, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.2289431, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.2279433, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.2284432, i64 8 ; 2 uses
  %i.fn = add nuw nsw i32 %.2294430, 4            ; 3 uses
  %i.fo = or disjoint i32 %i.fn, 3
  %i.fp = load i32, ptr %9, align 4, !tbaa !9
  %i.fq = sdiv i32 %i.fp, 2                       ; 2 uses
  %i.fr = icmp slt i32 %i.fo, %i.fq
  br i1 %i.fr, label %.lr.ph435, label %.preheader406, !llvm.loop !33

.preheader404:                                    ; preds = %.lr.ph446, %.preheader406
  %.3295.lcssa = phi i32 [ %.2294.lcssa, %.preheader406 ], [ %i.ju, %.lr.ph446 ] ; 7 uses
  %.3290.lcssa = phi ptr [ %.2289.lcssa, %.preheader406 ], [ %i.jr, %.lr.ph446 ] ; 10 uses
  %.3285.lcssa = phi ptr [ %.2284.lcssa, %.preheader406 ], [ %i.jt, %.lr.ph446 ] ; 8 uses
  %.3280.lcssa = phi ptr [ %.2279.lcssa, %.preheader406 ], [ %i.js, %.lr.ph446 ] ; 8 uses
  %.3276.lcssa = phi ptr [ %.2275.lcssa, %.preheader406 ], [ %i.jq, %.lr.ph446 ] ; 8 uses
  %.lcssa = phi i32 [ %.pre-phi570, %.preheader406 ], [ %i.jx, %.lr.ph446 ] ; 4 uses
  %i.fs = icmp slt i32 %.3295.lcssa, %.lcssa
  br i1 %i.fs, label %iter.check780, label %.loopexit

iter.check780:                                    ; preds = %.preheader404
  %i.ft = xor i32 %.3295.lcssa, -1
  %i.fu = add i32 %.lcssa, %i.ft                  ; 3 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 5 uses
  %min.iters.check758 = icmp ult i32 %i.fu, 7
  br i1 %min.iters.check758, label %.lr.ph458.preheader, label %vector.memcheck742

vector.memcheck742:                               ; preds = %iter.check780
  %scevgep = getelementptr i8, ptr %.3290.lcssa, i64 4
  %i.fx = xor i32 %.3295.lcssa, -1
  %i.fy = add i32 %.lcssa, %i.fx
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = shl nuw nsw i64 %i.fz, 2                ; 2 uses
  %scevgep743 = getelementptr i8, ptr %scevgep, i64 %i.ga ; 3 uses
  %scevgep744 = getelementptr i8, ptr %.3276.lcssa, i64 4
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.ga
  %scevgep746 = getelementptr i8, ptr %.3280.lcssa, i64 2
  %i.gb = shl nuw nsw i64 %i.fz, 1                ; 2 uses
  %scevgep747 = getelementptr i8, ptr %scevgep746, i64 %i.gb
  %scevgep748 = getelementptr i8, ptr %.3285.lcssa, i64 2
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.gb
  %bound0 = icmp ult ptr %.3290.lcssa, %scevgep745
  %bound1 = icmp ult ptr %.3276.lcssa, %scevgep743
  %found.conflict = and i1 %bound0, %bound1
  %bound0750 = icmp ult ptr %.3290.lcssa, %scevgep747
  %bound1751 = icmp ult ptr %.3280.lcssa, %scevgep743
  %found.conflict752 = and i1 %bound0750, %bound1751
  %conflict.rdx753 = or i1 %found.conflict, %found.conflict752
  %bound0754 = icmp ult ptr %.3290.lcssa, %scevgep749
  %bound1755 = icmp ult ptr %.3285.lcssa, %scevgep743
  %found.conflict756 = and i1 %bound0754, %bound1755
  %conflict.rdx757 = or i1 %conflict.rdx753, %found.conflict756
  br i1 %conflict.rdx757, label %.lr.ph458.preheader, label %vector.main.loop.iter.check759

vector.main.loop.iter.check759:                   ; preds = %vector.memcheck742
  %min.iters.check760 = icmp ult i32 %i.fu, 31
  br i1 %min.iters.check760, label %vec.epilog.ph784, label %vector.ph761

vector.ph761:                                     ; preds = %vector.main.loop.iter.check759
  %i.gc = and i64 %i.fw, 24
  %n.vec762 = and i64 %i.fw, 8589934560           ; 6 uses
  %i.gd = shl nuw nsw i64 %n.vec762, 2            ; 2 uses
  %i.ge = getelementptr i8, ptr %.3276.lcssa, i64 %i.gd
  %i.gf = shl nuw nsw i64 %n.vec762, 1            ; 2 uses
  %i.gg = getelementptr i8, ptr %.3280.lcssa, i64 %i.gf
  %i.gh = getelementptr i8, ptr %.3285.lcssa, i64 %i.gf
  %i.gi = getelementptr i8, ptr %.3290.lcssa, i64 %i.gd
  %i.gj = trunc i64 %n.vec762 to i32
  %i.gk = add i32 %.3295.lcssa, %i.gj
  br label %vector.body763

vector.body763:                                   ; preds = %vector.ph761, %vector.body763
  %index764 = phi i64 [ 0, %vector.ph761 ], [ %index.next772, %vector.body763 ] ; 3 uses
  %i.gl = shl i64 %index764, 2                    ; 2 uses
  %next.gep765 = getelementptr i8, ptr %.3276.lcssa, i64 %i.gl
  %i.gm = shl i64 %index764, 1                    ; 2 uses
  %next.gep766 = getelementptr i8, ptr %.3280.lcssa, i64 %i.gm
  %next.gep767 = getelementptr i8, ptr %.3285.lcssa, i64 %i.gm
  %next.gep768 = getelementptr i8, ptr %.3290.lcssa, i64 %i.gl
  %wide.vec = load <64 x i16>, ptr %next.gep765, align 2, !tbaa !57, !alias.scope !58
  %i.gn = freeze <64 x i16> %wide.vec             ; 2 uses
  %i.go = bitcast <64 x i16> %i.gn to <32 x i32>
  %i.gp = bitcast <64 x i16> %i.gn to <32 x i32>
  %i.gq = and <32 x i32> %i.gp, splat (i32 -65536)
  %i.gr = shl <32 x i32> %i.go, splat (i32 16)
  %i.gs = bitcast <32 x i32> %i.gr to <32 x float> ; 2 uses
  %i.gt = bitcast <32 x i32> %i.gq to <32 x float> ; 2 uses
  %wide.load770 = load <32 x i16>, ptr %next.gep766, align 2, !tbaa !57, !alias.scope !59
  %i.gu = zext <32 x i16> %wide.load770 to <32 x i32>
  %i.gv = shl nuw <32 x i32> %i.gu, splat (i32 16)
  %i.gw = bitcast <32 x i32> %i.gv to <32 x float> ; 2 uses
  %wide.load771 = load <32 x i16>, ptr %next.gep767, align 2, !tbaa !57, !alias.scope !60
  %i.gx = zext <32 x i16> %wide.load771 to <32 x i32>
  %i.gy = shl nuw <32 x i32> %i.gx, splat (i32 16)
  %i.gz = bitcast <32 x i32> %i.gy to <32 x float> ; 2 uses
  %i.ha = fmul fast <32 x float> %i.gw, %i.gs
  %i.hb = fmul fast <32 x float> %i.gz, %i.gt
  %i.hc = fsub fast <32 x float> %i.ha, %i.hb
  %i.hd = bitcast <32 x float> %i.hc to <32 x i32>
  %i.he = lshr <32 x i32> %i.hd, splat (i32 16)
  %i.hf = trunc nuw <32 x i32> %i.he to <32 x i16>
  %i.hg = fmul fast <32 x float> %i.gz, %i.gs
  %i.hh = fmul fast <32 x float> %i.gw, %i.gt
  %i.hi = fadd fast <32 x float> %i.hg, %i.hh
  %i.hj = bitcast <32 x float> %i.hi to <32 x i32>
  %i.hk = lshr <32 x i32> %i.hj, splat (i32 16)
  %i.hl = trunc nuw <32 x i32> %i.hk to <32 x i16>
  %interleaved.vec = shufflevector <32 x i16> %i.hf, <32 x i16> %i.hl, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec, ptr %next.gep768, align 2, !tbaa !57, !alias.scope !61, !noalias !62
  %index.next772 = add nuw i64 %index764, 32      ; 2 uses
  %i.hm = icmp eq i64 %index.next772, %n.vec762
  br i1 %i.hm, label %middle.block773, label %vector.body763, !llvm.loop !39

middle.block773:                                  ; preds = %vector.body763
  %cmp.n774 = icmp eq i64 %i.fw, %n.vec762
  br i1 %cmp.n774, label %.loopexit, label %vec.epilog.iter.check782

vec.epilog.iter.check782:                         ; preds = %middle.block773
  %min.epilog.iters.check783 = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check783, label %.lr.ph458.preheader, label %vec.epilog.ph784, !prof !65

vec.epilog.ph784:                                 ; preds = %vector.main.loop.iter.check759, %vec.epilog.iter.check782
  %vec.epilog.resume.val775 = phi i64 [ %n.vec762, %vec.epilog.iter.check782 ], [ 0, %vector.main.loop.iter.check759 ]
  %n.vec785 = and i64 %i.fw, 8589934584           ; 5 uses
  %i.hn = shl nuw nsw i64 %n.vec785, 2            ; 2 uses
  %i.ho = getelementptr i8, ptr %.3276.lcssa, i64 %i.hn
  %i.hp = shl nuw nsw i64 %n.vec785, 1            ; 2 uses
  %i.hq = getelementptr i8, ptr %.3280.lcssa, i64 %i.hp
  %i.hr = getelementptr i8, ptr %.3285.lcssa, i64 %i.hp
  %i.hs = getelementptr i8, ptr %.3290.lcssa, i64 %i.hn
  %i.ht = trunc i64 %n.vec785 to i32
  %i.hu = add i32 %.3295.lcssa, %i.ht
  br label %vec.epilog.vector.body786

vec.epilog.vector.body786:                        ; preds = %vec.epilog.vector.body786, %vec.epilog.ph784
  %index787 = phi i64 [ %vec.epilog.resume.val775, %vec.epilog.ph784 ], [ %index.next798, %vec.epilog.vector.body786 ] ; 3 uses
end_hunk_0
