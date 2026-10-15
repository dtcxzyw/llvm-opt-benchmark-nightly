Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn22RotaryEmbed_x86_avx51213forward_bf16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !23
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.ai, %i.al
  %.fr = freeze i64 %i.am
  %i.an = icmp eq i64 %.fr, 0
  br i1 %i.an, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.e

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.ao = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ]
  ret i32 %i.ao
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn22RotaryEmbed_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not473 = icmp sgt i32 %i.k, %i.j
  br i1 %.not473, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !21     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.aa = phi i32 [ %i.w, %.noexc.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv522 = phi i64 [ %i.y, %.noexc.preheader ], [ %indvars.iv.next523, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !25, !noalias !79
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !26, !noalias !79
  %i.ad = mul i64 %i.ac, %indvars.iv522
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !79 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = load ptr, ptr %4, align 8, !tbaa !25, !noalias !80
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !26, !noalias !80
  %i.aj = mul i64 %i.ai, %indvars.iv522
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !80 ; 2 uses
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.aa, 0
  br i1 %i.an, label %.lr.ph472, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph472:                                        ; preds = %.noexc
  %i.ao = load i32, ptr %i.o, align 4, !tbaa !20, !noalias !80
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !20, !noalias !79
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.ae, %i.ar
  %i.at = mul i64 %i.ak, %i.ap                    ; 2 uses
  br label %bb.c

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit, %.noexc
  %i.au = phi i32 [ %i.aa, %.noexc ], [ %i.qy, %.loopexit ]
  %indvars.iv.next523 = add nsw i64 %indvars.iv522, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next523 to i32
  %exitcond525.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond525.not, label %._crit_edge, label %.noexc, !llvm.loop !59

bb.c:                                             ; preds = %.lr.ph472, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph472 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.av = load i32, ptr %i.r, align 8, !tbaa !40
  %.not303 = icmp eq i32 %i.av, 0
  %i.aw = mul i64 %i.as, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aw ; 5 uses
  br i1 %.not303, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %7, align 8, !tbaa !25
  %i.az = load i32, ptr %i.s, align 4, !tbaa !20
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %indvars.iv, %i.ba
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !19
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %8, align 8, !tbaa !25
  %i.bg = load i32, ptr %i.u, align 4, !tbaa !20
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %indvars.iv, %i.bh
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !19
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk ; 2 uses
  %i.bm = mul i64 %i.at, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 31
  br i1 %i.bp, label %.lr.ph, label %..preheader366_crit_edge

..preheader366_crit_edge:                         ; preds = %bb.d
  %.pre = sdiv i32 %i.bo, 2
  br label %.preheader366

.preheader366:                                    ; preds = %.lr.ph, %..preheader366_crit_edge
  %.pre-phi529 = phi i32 [ %.pre, %..preheader366_crit_edge ], [ %i.cp, %.lr.ph ] ; 2 uses
  %.0270.lcssa = phi i32 [ 0, %..preheader366_crit_edge ], [ %i.cm, %.lr.ph ] ; 3 uses
  %.0265.lcssa = phi ptr [ %i.bn, %..preheader366_crit_edge ], [ %i.cj, %.lr.ph ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.bl, %..preheader366_crit_edge ], [ %i.cl, %.lr.ph ] ; 2 uses
  %.0255.lcssa = phi ptr [ %i.be, %..preheader366_crit_edge ], [ %i.ck, %.lr.ph ] ; 2 uses
  %.0254.lcssa = phi ptr [ %i.ax, %..preheader366_crit_edge ], [ %i.ci, %.lr.ph ] ; 2 uses
  %i.bq = or disjoint i32 %.0270.lcssa, 7
  %i.br = icmp slt i32 %i.bq, %.pre-phi529
  br i1 %i.br, label %.lr.ph382, label %.preheader365

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0254372 = phi ptr [ %i.ci, %.lr.ph ], [ %i.ax, %bb.d ] ; 3 uses
  %.0255371 = phi ptr [ %i.ck, %.lr.ph ], [ %i.be, %bb.d ] ; 2 uses
  %.0260370 = phi ptr [ %i.cl, %.lr.ph ], [ %i.bl, %bb.d ] ; 2 uses
  %.0265369 = phi ptr [ %i.cj, %.lr.ph ], [ %i.bn, %bb.d ] ; 3 uses
  %.0270368 = phi i32 [ %i.cm, %.lr.ph ], [ 0, %bb.d ]
  %i.bs = load <16 x float>, ptr %.0254372, align 1, !tbaa !42 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0254372, i64 64
  %i.bu = load <16 x float>, ptr %i.bt, align 1, !tbaa !42 ; 2 uses
  %i.bv = load <16 x float>, ptr %.0255371, align 1, !tbaa !42 ; 2 uses
  %i.bw = load <16 x float>, ptr %.0260370, align 1, !tbaa !42 ; 2 uses
  %i.bx = shufflevector <16 x float> %i.bv, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.by = shufflevector <16 x float> %i.bv, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.bz = shufflevector <16 x float> %i.bw, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.ca = shufflevector <16 x float> %i.bw, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.cb = shufflevector <16 x float> %i.bs, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cc = shufflevector <16 x float> %i.bu, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cd = fmul fast <16 x float> %i.bz, %i.cb
  %i.ce = fmul fast <16 x float> %i.ca, %i.cc
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.cd, i32 4)
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.ce, i32 4)
  store <16 x float> %i.cf, ptr %.0265369, align 1, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %.0265369, i64 64
  store <16 x float> %i.cg, ptr %i.ch, align 1, !tbaa !42
  %i.ci = getelementptr inbounds nuw i8, ptr %.0254372, i64 128 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0265369, i64 128 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0255371, i64 64 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0260370, i64 64 ; 2 uses
  %i.cm = add nuw nsw i32 %.0270368, 16           ; 3 uses
  %i.cn = or disjoint i32 %i.cm, 15
  %i.co = load i32, ptr %9, align 4, !tbaa !21
  %i.cp = sdiv i32 %i.co, 2                       ; 2 uses
  %i.cq = icmp slt i32 %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader366, !llvm.loop !60

.preheader365:                                    ; preds = %.lr.ph382, %.preheader366
  %.pre-phi527 = phi i32 [ %.pre-phi529, %.preheader366 ], [ %i.dp, %.lr.ph382 ] ; 2 uses
  %.1271.lcssa = phi i32 [ %.0270.lcssa, %.preheader366 ], [ %i.dm, %.lr.ph382 ] ; 3 uses
  %.1266.lcssa = phi ptr [ %.0265.lcssa, %.preheader366 ], [ %i.dj, %.lr.ph382 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader366 ], [ %i.dl, %.lr.ph382 ] ; 2 uses
  %.1256.lcssa = phi ptr [ %.0255.lcssa, %.preheader366 ], [ %i.dk, %.lr.ph382 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0254.lcssa, %.preheader366 ], [ %i.di, %.lr.ph382 ] ; 2 uses
  %i.cr = or disjoint i32 %.1271.lcssa, 3
  %i.cs = icmp slt i32 %i.cr, %.pre-phi527
  br i1 %i.cs, label %.lr.ph393, label %.preheader364

.lr.ph382:                                        ; preds = %.preheader366, %.lr.ph382
  %.1381 = phi ptr [ %i.di, %.lr.ph382 ], [ %.0254.lcssa, %.preheader366 ] ; 3 uses
  %.1256380 = phi ptr [ %i.dk, %.lr.ph382 ], [ %.0255.lcssa, %.preheader366 ] ; 2 uses
  %.1261379 = phi ptr [ %i.dl, %.lr.ph382 ], [ %.0260.lcssa, %.preheader366 ] ; 2 uses
  %.1266378 = phi ptr [ %i.dj, %.lr.ph382 ], [ %.0265.lcssa, %.preheader366 ] ; 2 uses
  %.1271377 = phi i32 [ %i.dm, %.lr.ph382 ], [ %.0270.lcssa, %.preheader366 ]
  %i.ct = load <8 x float>, ptr %.1381, align 1, !tbaa !42 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1381, i64 32
  %i.cv = load <8 x float>, ptr %i.cu, align 1, !tbaa !42 ; 2 uses
  %i.cw = load <8 x float>, ptr %.1256380, align 1, !tbaa !42 ; 2 uses
  %i.cx = load <8 x float>, ptr %.1261379, align 1, !tbaa !42 ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cw, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cz = shufflevector <8 x float> %i.cw, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.da = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.db = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.dc = shufflevector <8 x float> %i.ct, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dd = shufflevector <8 x float> %i.cv, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.de = fmul fast <8 x float> %i.da, %i.dc
  %i.df = fmul fast <8 x float> %i.db, %i.dd
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.ct, <8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %i.de)
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.cv, <8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.df)
  %10 = shufflevector <8 x float> %i.dg, <8 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x float> %10, ptr %.1266378, align 1, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %.1381, i64 64 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1266378, i64 64 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1256380, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1261379, i64 32 ; 2 uses
  %i.dm = add nuw nsw i32 %.1271377, 8            ; 3 uses
  %i.dn = or disjoint i32 %i.dm, 7
  %i.do = load i32, ptr %9, align 4, !tbaa !21
  %i.dp = sdiv i32 %i.do, 2                       ; 2 uses
  %i.dq = icmp slt i32 %i.dn, %i.dp
  br i1 %i.dq, label %.lr.ph382, label %.preheader365, !llvm.loop !61

.preheader364:                                    ; preds = %.lr.ph393, %.preheader365
  %.pre-phi528 = phi i32 [ %.pre-phi527, %.preheader365 ], [ %i.ep, %.lr.ph393 ] ; 2 uses
  %.2272.lcssa = phi i32 [ %.1271.lcssa, %.preheader365 ], [ %i.em, %.lr.ph393 ] ; 3 uses
  %.2267.lcssa = phi ptr [ %.1266.lcssa, %.preheader365 ], [ %i.ej, %.lr.ph393 ] ; 2 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader365 ], [ %i.el, %.lr.ph393 ] ; 2 uses
  %.2257.lcssa = phi ptr [ %.1256.lcssa, %.preheader365 ], [ %i.ek, %.lr.ph393 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader365 ], [ %i.ei, %.lr.ph393 ] ; 2 uses
  %i.dr = or disjoint i32 %.2272.lcssa, 1
  %i.ds = icmp slt i32 %i.dr, %.pre-phi528
  br i1 %i.ds, label %.lr.ph404, label %.preheader362

.lr.ph393:                                        ; preds = %.preheader365, %.lr.ph393
  %.2392 = phi ptr [ %i.ei, %.lr.ph393 ], [ %.1.lcssa, %.preheader365 ] ; 3 uses
  %.2257391 = phi ptr [ %i.ek, %.lr.ph393 ], [ %.1256.lcssa, %.preheader365 ] ; 2 uses
  %.2262390 = phi ptr [ %i.el, %.lr.ph393 ], [ %.1261.lcssa, %.preheader365 ] ; 2 uses
  %.2267389 = phi ptr [ %i.ej, %.lr.ph393 ], [ %.1266.lcssa, %.preheader365 ] ; 2 uses
  %.2272388 = phi i32 [ %i.em, %.lr.ph393 ], [ %.1271.lcssa, %.preheader365 ]
  %i.dt = load <4 x float>, ptr %.2392, align 1, !tbaa !42 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.2392, i64 16
  %i.dv = load <4 x float>, ptr %i.du, align 1, !tbaa !42 ; 2 uses
  %i.dw = load <4 x float>, ptr %.2257391, align 1, !tbaa !42 ; 2 uses
  %i.dx = load <4 x float>, ptr %.2262390, align 1, !tbaa !42 ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dz = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.ea = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.eb = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.ec = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ed = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ee = fmul fast <4 x float> %i.ea, %i.ec
  %i.ef = fmul fast <4 x float> %i.eb, %i.ed
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.dt, <4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.ee)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ef)
  %11 = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %11, ptr %.2267389, align 1, !tbaa !42
  %i.ei = getelementptr inbounds nuw i8, ptr %.2392, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2267389, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2257391, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.2262390, i64 16 ; 2 uses
  %i.em = add nuw nsw i32 %.2272388, 4            ; 3 uses
  %i.en = or disjoint i32 %i.em, 3
  %i.eo = load i32, ptr %9, align 4, !tbaa !21
  %i.ep = sdiv i32 %i.eo, 2                       ; 2 uses
  %i.eq = icmp slt i32 %i.en, %i.ep
  br i1 %i.eq, label %.lr.ph393, label %.preheader364, !llvm.loop !62

.preheader362:                                    ; preds = %.lr.ph404, %.preheader364
  %.3273.lcssa = phi i32 [ %.2272.lcssa, %.preheader364 ], [ %i.hu, %.lr.ph404 ] ; 7 uses
  %.3268.lcssa = phi ptr [ %.2267.lcssa, %.preheader364 ], [ %i.hr, %.lr.ph404 ] ; 10 uses
  %.3263.lcssa = phi ptr [ %.2262.lcssa, %.preheader364 ], [ %i.ht, %.lr.ph404 ] ; 8 uses
  %.3258.lcssa = phi ptr [ %.2257.lcssa, %.preheader364 ], [ %i.hs, %.lr.ph404 ] ; 8 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader364 ], [ %i.hq, %.lr.ph404 ] ; 8 uses
  %.lcssa = phi i32 [ %.pre-phi528, %.preheader364 ], [ %i.hx, %.lr.ph404 ] ; 6 uses
  %i.er = icmp slt i32 %.3273.lcssa, %.lcssa
  br i1 %i.er, label %iter.check738, label %.loopexit

iter.check738:                                    ; preds = %.preheader362
  %i.es = xor i32 %.3273.lcssa, -1
  %i.et = add i32 %.lcssa, %i.es                  ; 3 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 5 uses
  %min.iters.check716 = icmp ult i32 %i.et, 3
  br i1 %min.iters.check716, label %.lr.ph416.preheader, label %vector.memcheck700

vector.memcheck700:                               ; preds = %iter.check738
  %scevgep = getelementptr i8, ptr %.3268.lcssa, i64 8
  %i.ew = xor i32 %.3273.lcssa, -1
  %i.ex = add i32 %.lcssa, %i.ew
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 3                ; 2 uses
  %scevgep701 = getelementptr i8, ptr %scevgep, i64 %i.ez ; 3 uses
  %scevgep702 = getelementptr i8, ptr %.3.lcssa, i64 8
  %scevgep703 = getelementptr i8, ptr %scevgep702, i64 %i.ez
  %scevgep704 = getelementptr i8, ptr %.3258.lcssa, i64 4
  %i.fa = shl nuw nsw i64 %i.ey, 2                ; 2 uses
  %scevgep705 = getelementptr i8, ptr %scevgep704, i64 %i.fa
  %scevgep706 = getelementptr i8, ptr %.3263.lcssa, i64 4
  %scevgep707 = getelementptr i8, ptr %scevgep706, i64 %i.fa
  %bound0 = icmp ult ptr %.3268.lcssa, %scevgep703
  %bound1 = icmp ult ptr %.3.lcssa, %scevgep701
  %found.conflict = and i1 %bound0, %bound1
  %bound0708 = icmp ult ptr %.3268.lcssa, %scevgep705
  %bound1709 = icmp ult ptr %.3258.lcssa, %scevgep701
  %found.conflict710 = and i1 %bound0708, %bound1709
  %conflict.rdx711 = or i1 %found.conflict, %found.conflict710
  %bound0712 = icmp ult ptr %.3268.lcssa, %scevgep707
  %bound1713 = icmp ult ptr %.3263.lcssa, %scevgep701
  %found.conflict714 = and i1 %bound0712, %bound1713
  %conflict.rdx715 = or i1 %conflict.rdx711, %found.conflict714
  br i1 %conflict.rdx715, label %.lr.ph416.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %vector.memcheck700
  %min.iters.check718 = icmp ult i32 %i.et, 15
  br i1 %min.iters.check718, label %vec.epilog.ph742, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.fb = and i64 %i.ev, 12
  %n.vec720 = and i64 %i.ev, 8589934576           ; 6 uses
  %i.fc = shl nuw nsw i64 %n.vec720, 3            ; 2 uses
  %i.fd = getelementptr i8, ptr %.3.lcssa, i64 %i.fc
  %i.fe = shl nuw nsw i64 %n.vec720, 2            ; 2 uses
  %i.ff = getelementptr i8, ptr %.3258.lcssa, i64 %i.fe
  %i.fg = getelementptr i8, ptr %.3263.lcssa, i64 %i.fe
  %i.fh = getelementptr i8, ptr %.3268.lcssa, i64 %i.fc
  %i.fi = trunc i64 %n.vec720 to i32
  %i.fj = add i32 %.3273.lcssa, %i.fi
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next730, %vector.body721 ] ; 3 uses
  %i.fk = shl i64 %index722, 3                    ; 2 uses
  %next.gep723 = getelementptr i8, ptr %.3.lcssa, i64 %i.fk
  %i.fl = shl i64 %index722, 2                    ; 2 uses
  %next.gep724 = getelementptr i8, ptr %.3258.lcssa, i64 %i.fl
  %next.gep725 = getelementptr i8, ptr %.3263.lcssa, i64 %i.fl
  %next.gep726 = getelementptr i8, ptr %.3268.lcssa, i64 %i.fk
  %wide.vec = load <32 x float>, ptr %next.gep723, align 4, !tbaa !82, !alias.scope !83 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %strided.vec727 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %wide.load728 = load <16 x float>, ptr %next.gep724, align 4, !tbaa !82, !alias.scope !84 ; 2 uses
  %wide.load729 = load <16 x float>, ptr %next.gep725, align 4, !tbaa !82, !alias.scope !85 ; 2 uses
  %i.fm = fmul fast <16 x float> %wide.load728, %strided.vec
  %i.fn = fmul fast <16 x float> %wide.load729, %strided.vec727
  %i.fo = fsub fast <16 x float> %i.fm, %i.fn
  %i.fp = fmul fast <16 x float> %wide.load729, %strided.vec
  %i.fq = fmul fast <16 x float> %wide.load728, %strided.vec727
  %i.fr = fadd fast <16 x float> %i.fp, %i.fq
  %interleaved.vec = shufflevector <16 x float> %i.fo, <16 x float> %i.fr, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep726, align 4, !tbaa !82, !alias.scope !86, !noalias !87
  %index.next730 = add nuw i64 %index722, 16      ; 2 uses
  %i.fs = icmp eq i64 %index.next730, %n.vec720
  br i1 %i.fs, label %middle.block731, label %vector.body721, !llvm.loop !68

middle.block731:                                  ; preds = %vector.body721
  %cmp.n732 = icmp eq i64 %i.ev, %n.vec720
  br i1 %cmp.n732, label %.loopexit, label %vec.epilog.iter.check740

vec.epilog.iter.check740:                         ; preds = %middle.block731
  %min.epilog.iters.check741 = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check741, label %.lr.ph416.preheader, label %vec.epilog.ph742, !prof !88

vec.epilog.ph742:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check740
  %vec.epilog.resume.val733 = phi i64 [ %n.vec720, %vec.epilog.iter.check740 ], [ 0, %vector.main.loop.iter.check717 ]
  %n.vec743 = and i64 %i.ev, 8589934588           ; 5 uses
  %i.ft = shl nuw nsw i64 %n.vec743, 3            ; 2 uses
  %i.fu = getelementptr i8, ptr %.3.lcssa, i64 %i.ft
  %i.fv = shl nuw nsw i64 %n.vec743, 2            ; 2 uses
  %i.fw = getelementptr i8, ptr %.3258.lcssa, i64 %i.fv
  %i.fx = getelementptr i8, ptr %.3263.lcssa, i64 %i.fv
  %i.fy = getelementptr i8, ptr %.3268.lcssa, i64 %i.ft
  %i.fz = trunc i64 %n.vec743 to i32
  %i.ga = add i32 %.3273.lcssa, %i.fz
  br label %vec.epilog.vector.body744

vec.epilog.vector.body744:                        ; preds = %vec.epilog.vector.body744, %vec.epilog.ph742
  %index745 = phi i64 [ %vec.epilog.resume.val733, %vec.epilog.ph742 ], [ %index.next756, %vec.epilog.vector.body744 ] ; 3 uses
  %i.gb = shl i64 %index745, 3                    ; 2 uses
  %next.gep746 = getelementptr i8, ptr %.3.lcssa, i64 %i.gb
  %i.gc = shl i64 %index745, 2                    ; 2 uses
  %next.gep747 = getelementptr i8, ptr %.3258.lcssa, i64 %i.gc
  %next.gep748 = getelementptr i8, ptr %.3263.lcssa, i64 %i.gc
  %next.gep749 = getelementptr i8, ptr %.3268.lcssa, i64 %i.gb
  %wide.vec750 = load <8 x float>, ptr %next.gep746, align 4, !tbaa !82, !alias.scope !83 ; 2 uses
  %strided.vec751 = shufflevector <8 x float> %wide.vec750, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec752 = shufflevector <8 x float> %wide.vec750, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.load753 = load <4 x float>, ptr %next.gep747, align 4, !tbaa !82, !alias.scope !84 ; 2 uses
  %wide.load754 = load <4 x float>, ptr %next.gep748, align 4, !tbaa !82, !alias.scope !85 ; 2 uses
  %i.gd = fmul fast <4 x float> %wide.load753, %strided.vec751
  %i.ge = fmul fast <4 x float> %wide.load754, %strided.vec752
  %i.gf = fsub fast <4 x float> %i.gd, %i.ge
  %i.gg = fmul fast <4 x float> %wide.load754, %strided.vec751
  %i.gh = fmul fast <4 x float> %wide.load753, %strided.vec752
  %i.gi = fadd fast <4 x float> %i.gg, %i.gh
  %interleaved.vec755 = shufflevector <4 x float> %i.gf, <4 x float> %i.gi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec755, ptr %next.gep749, align 4, !tbaa !82, !alias.scope !86, !noalias !87
  %index.next756 = add nuw i64 %index745, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next756, %n.vec743
  br i1 %i.gj, label %vec.epilog.middle.block757, label %vec.epilog.vector.body744, !llvm.loop !69

vec.epilog.middle.block757:                       ; preds = %vec.epilog.vector.body744
  %cmp.n758 = icmp eq i64 %i.ev, %n.vec743
  br i1 %cmp.n758, label %.loopexit, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %iter.check738, %vector.memcheck700, %vec.epilog.iter.check740, %vec.epilog.middle.block757
  %.4415.ph = phi ptr [ %.3.lcssa, %iter.check738 ], [ %.3.lcssa, %vector.memcheck700 ], [ %i.fd, %vec.epilog.iter.check740 ], [ %i.fu, %vec.epilog.middle.block757 ] ; 3 uses
  %.4259414.ph = phi ptr [ %.3258.lcssa, %iter.check738 ], [ %.3258.lcssa, %vector.memcheck700 ], [ %i.ff, %vec.epilog.iter.check740 ], [ %i.fw, %vec.epilog.middle.block757 ] ; 3 uses
  %.4264413.ph = phi ptr [ %.3263.lcssa, %iter.check738 ], [ %.3263.lcssa, %vector.memcheck700 ], [ %i.fg, %vec.epilog.iter.check740 ], [ %i.fx, %vec.epilog.middle.block757 ] ; 3 uses
  %.4269412.ph = phi ptr [ %.3268.lcssa, %iter.check738 ], [ %.3268.lcssa, %vector.memcheck700 ], [ %i.fh, %vec.epilog.iter.check740 ], [ %i.fy, %vec.epilog.middle.block757 ] ; 3 uses
  %.4274411.ph = phi i32 [ %.3273.lcssa, %iter.check738 ], [ %.3273.lcssa, %vector.memcheck700 ], [ %i.fj, %vec.epilog.iter.check740 ], [ %i.ga, %vec.epilog.middle.block757 ] ; 4 uses
  %i.gk = sub i32 %.lcssa, %.4274411.ph
  %.neg = add i32 %.4274411.ph, 1
  %xtraiter = and i32 %i.gk, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph416.prol.loopexit, label %.lr.ph416.prol

.lr.ph416.prol:                                   ; preds = %.lr.ph416.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.4259414.ph, i64 4
  %i.gm = load float, ptr %.4259414.ph, align 4, !tbaa !82
  %i.gn = getelementptr inbounds nuw i8, ptr %.4264413.ph, i64 4
  %i.go = load float, ptr %.4264413.ph, align 4, !tbaa !82
  %i.gp = load <2 x float>, ptr %.4415.ph, align 4, !tbaa !82 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gt = fmul fast <2 x float> %i.gr, %i.gs      ; 2 uses
  %i.gu = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul fast <2 x float> %i.gv, %i.gp      ; 2 uses
  %i.gx = fsub fast <2 x float> %i.gw, %i.gt
  %i.gy = fadd fast <2 x float> %i.gw, %i.gt
  %i.gz = shufflevector <2 x float> %i.gx, <2 x float> %i.gy, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.gz, ptr %.4269412.ph, align 4, !tbaa !82
  %i.ha = getelementptr inbounds nuw i8, ptr %.4415.ph, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.4269412.ph, i64 8
  %i.hc = add nuw nsw i32 %.4274411.ph, 1
  br label %.lr.ph416.prol.loopexit

.lr.ph416.prol.loopexit:                          ; preds = %.lr.ph416.prol, %.lr.ph416.preheader
  %.4415.unr = phi ptr [ %.4415.ph, %.lr.ph416.preheader ], [ %i.ha, %.lr.ph416.prol ]
  %.4259414.unr = phi ptr [ %.4259414.ph, %.lr.ph416.preheader ], [ %i.gl, %.lr.ph416.prol ]
  %.4264413.unr = phi ptr [ %.4264413.ph, %.lr.ph416.preheader ], [ %i.gn, %.lr.ph416.prol ]
  %.4269412.unr = phi ptr [ %.4269412.ph, %.lr.ph416.preheader ], [ %i.hb, %.lr.ph416.prol ]
  %.4274411.unr = phi i32 [ %.4274411.ph, %.lr.ph416.preheader ], [ %i.hc, %.lr.ph416.prol ]
  %i.hd = icmp eq i32 %.lcssa, %.neg
  br i1 %i.hd, label %.loopexit, label %.lr.ph416

.lr.ph404:                                        ; preds = %.preheader364, %.lr.ph404
  %.3403 = phi ptr [ %i.hq, %.lr.ph404 ], [ %.2.lcssa, %.preheader364 ] ; 2 uses
  %.3258402 = phi ptr [ %i.hs, %.lr.ph404 ], [ %.2257.lcssa, %.preheader364 ] ; 2 uses
  %.3263401 = phi ptr [ %i.ht, %.lr.ph404 ], [ %.2262.lcssa, %.preheader364 ] ; 2 uses
  %.3268400 = phi ptr [ %i.hr, %.lr.ph404 ], [ %.2267.lcssa, %.preheader364 ] ; 2 uses
  %.3273399 = phi i32 [ %i.hu, %.lr.ph404 ], [ %.2272.lcssa, %.preheader364 ]
  %i.he = load <4 x float>, ptr %.3403, align 1, !tbaa !42 ; 2 uses
  %i.hf = load i64, ptr %.3258402, align 1, !tbaa !42
  %i.hg = insertelement <2 x i64> poison, i64 %i.hf, i64 0
end_hunk_0
begin_hunk_1_@_ZNK4ncnn22RotaryEmbed_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %i.qw = getelementptr inbounds nuw i8, ptr %.3282468, i64 8
  store float %i.qv, ptr %i.qg, align 4, !tbaa !82
  %i.qx = add nuw nsw i32 %.3278469, 2            ; 2 uses
  %exitcond520.not.1 = icmp eq i32 %i.qx, %.lcssa367
  br i1 %exitcond520.not.1, label %.loopexit, label %.lr.ph470, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416, %.lr.ph470.prol.loopexit, %.lr.ph470, %middle.block731, %vec.epilog.middle.block757, %middle.block, %vec.epilog.middle.block, %.preheader362, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qy = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.qz = sext i32 %i.qy to i64
  %i.ra = icmp slt i64 %indvars.iv.next, %i.qz
  br i1 %i.ra, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float>, <16 x float>, <16 x float>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn28rotaryembed_bf16s_avx512bf16ERKNS_3MatES2_S2_RS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not524 = icmp sgt i32 %i.k, %i.j
  br i1 %.not524, label %._crit_edge, label %.noexc.lr.ph

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
  %i.v = load i32, ptr %5, align 4, !tbaa !21     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.z = phi i32 [ %i.v, %.noexc.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv573 = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next574, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !25, !noalias !113
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !26, !noalias !113
  %i.ac = mul i64 %i.ab, %indvars.iv573
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !113 ; 2 uses
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load ptr, ptr %4, align 8, !tbaa !25, !noalias !114
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !26, !noalias !114
  %i.ai = mul i64 %i.ah, %indvars.iv573
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !114 ; 2 uses
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.z, 0
  br i1 %i.am, label %.lr.ph523, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph523:                                        ; preds = %.noexc
  %i.an = load i32, ptr %i.o, align 4, !tbaa !20, !noalias !114
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !20, !noalias !113
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul i64 %i.ad, %i.aq
  %i.as = mul i64 %i.aj, %i.ao                    ; 2 uses
  br label %bb.c

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit, %.noexc
  %i.at = phi i32 [ %i.z, %.noexc ], [ %i.zq, %.loopexit ]
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next574 to i32
  %exitcond576.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond576.not, label %._crit_edge, label %.noexc, !llvm.loop !93

bb.c:                                             ; preds = %.lr.ph523, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph523 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.au = load i32, ptr %6, align 4, !tbaa !21
  %.not297 = icmp eq i32 %i.au, 0
  %i.av = mul i64 %i.ar, %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.av ; 5 uses
  br i1 %.not297, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %7, align 8, !tbaa !25
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !20
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %indvars.iv, %i.az
  %i.bb = load i64, ptr %i.s, align 8, !tbaa !19
  %i.bc = mul i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !25
  %i.bf = load i32, ptr %i.t, align 4, !tbaa !20
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %indvars.iv, %i.bg
  %i.bi = load i64, ptr %i.u, align 8, !tbaa !19
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 2 uses
  %i.bl = mul i64 %i.as, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 31
  br i1 %i.bo, label %.lr.ph, label %..preheader417_crit_edge

..preheader417_crit_edge:                         ; preds = %bb.d
  %.pre = sdiv i32 %i.bn, 2
  br label %.preheader417

.preheader417:                                    ; preds = %.lr.ph, %..preheader417_crit_edge
  %.pre-phi580 = phi i32 [ %.pre, %..preheader417_crit_edge ], [ %i.ed, %.lr.ph ] ; 2 uses
  %.0292.lcssa = phi ptr [ %i.bm, %..preheader417_crit_edge ], [ %i.dx, %.lr.ph ] ; 2 uses
  %.0287.lcssa = phi i32 [ 0, %..preheader417_crit_edge ], [ %i.ea, %.lr.ph ] ; 3 uses
  %.0282.lcssa = phi ptr [ %i.bk, %..preheader417_crit_edge ], [ %i.dz, %.lr.ph ] ; 2 uses
  %.0277.lcssa = phi ptr [ %i.bd, %..preheader417_crit_edge ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.0273.lcssa = phi ptr [ %i.aw, %..preheader417_crit_edge ], [ %i.dw, %.lr.ph ] ; 2 uses
  %i.bp = or disjoint i32 %.0287.lcssa, 7
  %i.bq = icmp slt i32 %i.bp, %.pre-phi580
  br i1 %i.bq, label %.lr.ph433, label %.preheader416

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0273423 = phi ptr [ %i.dw, %.lr.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %.0277422 = phi ptr [ %i.dy, %.lr.ph ], [ %i.bd, %bb.d ] ; 2 uses
  %.0282421 = phi ptr [ %i.dz, %.lr.ph ], [ %i.bk, %bb.d ] ; 2 uses
  %.0287420 = phi i32 [ %i.ea, %.lr.ph ], [ 0, %bb.d ]
  %.0292419 = phi ptr [ %i.dx, %.lr.ph ], [ %i.bm, %bb.d ] ; 2 uses
  %i.br = load <16 x i16>, ptr %.0273423, align 1, !tbaa !42 ; 2 uses
  %i.bs = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.br, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bt = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.br, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bu = shufflevector <16 x i16> %i.bs, <16 x i16> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bv = shufflevector <16 x i16> %i.bs, <16 x i16> %i.bt, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bw = bitcast <16 x i16> %i.bu to <8 x i32>
  %i.bx = bitcast <16 x i16> %i.bv to <8 x i32>
  %i.by = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bz = bitcast <16 x i32> %i.by to <16 x float> ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0273423, i64 32
  %i.cb = load <16 x i16>, ptr %i.ca, align 1, !tbaa !42 ; 2 uses
  %i.cc = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cd = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cb, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ce = shufflevector <16 x i16> %i.cc, <16 x i16> %i.cd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cf = shufflevector <16 x i16> %i.cc, <16 x i16> %i.cd, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cg = bitcast <16 x i16> %i.ce to <8 x i32>
  %i.ch = bitcast <16 x i16> %i.cf to <8 x i32>
  %i.ci = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cj = bitcast <16 x i32> %i.ci to <16 x float> ; 2 uses
  %i.ck = load <16 x i16>, ptr %.0277422, align 1, !tbaa !42 ; 2 uses
  %i.cl = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ck, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cm = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ck, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cn = shufflevector <16 x i16> %i.cl, <16 x i16> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.co = shufflevector <16 x i16> %i.cl, <16 x i16> %i.cm, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cp = bitcast <16 x i16> %i.cn to <8 x i32>
  %i.cq = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cr = shufflevector <8 x i32> %i.cp, <8 x i32> %i.cq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = bitcast <16 x i32> %i.cr to <16 x float> ; 2 uses
  %i.ct = load <16 x i16>, ptr %.0282421, align 1, !tbaa !42 ; 2 uses
  %i.cu = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ct, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cv = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ct, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cw = shufflevector <16 x i16> %i.cu, <16 x i16> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cx = shufflevector <16 x i16> %i.cu, <16 x i16> %i.cv, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cy = bitcast <16 x i16> %i.cw to <8 x i32>
  %i.cz = bitcast <16 x i16> %i.cx to <8 x i32>
  %i.da = shufflevector <8 x i32> %i.cy, <8 x i32> %i.cz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.db = bitcast <16 x i32> %i.da to <16 x float> ; 2 uses
  %i.dc = shufflevector <16 x float> %i.cs, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.dd = shufflevector <16 x float> %i.cs, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.de = shufflevector <16 x float> %i.db, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.df = shufflevector <16 x float> %i.db, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.dg = shufflevector <16 x float> %i.bz, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.dh = shufflevector <16 x float> %i.cj, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.di = fmul fast <16 x float> %i.de, %i.dg
  %i.dj = fmul fast <16 x float> %i.df, %i.dh
  %i.dk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.dc, <16 x float> nofpclass(nan inf) %i.di, i32 4)
  %i.dl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.dj, i32 4)
  %i.dm = bitcast <16 x float> %i.dk to <16 x i32>
  %i.dn = lshr <16 x i32> %i.dm, splat (i32 16)   ; 2 uses
  %i.do = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.do, <8 x i32> %i.dp)
  %i.dr = bitcast <16 x float> %i.dl to <16 x i32>
  %i.ds = lshr <16 x i32> %i.dr, splat (i32 16)   ; 2 uses
  %i.dt = shufflevector <16 x i32> %i.ds, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.du = shufflevector <16 x i32> %i.ds, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dt, <8 x i32> %i.du)
  %10 = shufflevector <16 x i16> %i.dq, <16 x i16> %i.dv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <32 x i16> %10, ptr %.0292419, align 1, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %.0273423, i64 64 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0292419, i64 64 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0277422, i64 32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0282421, i64 32 ; 2 uses
  %i.ea = add nuw nsw i32 %.0287420, 16           ; 3 uses
  %i.eb = or disjoint i32 %i.ea, 15
  %i.ec = load i32, ptr %9, align 4, !tbaa !21
  %i.ed = sdiv i32 %i.ec, 2                       ; 2 uses
  %i.ee = icmp slt i32 %i.eb, %i.ed
  br i1 %i.ee, label %.lr.ph, label %.preheader417, !llvm.loop !94

.preheader416:                                    ; preds = %.lr.ph433, %.preheader417
  %.pre-phi578 = phi i32 [ %.pre-phi580, %.preheader417 ], [ %i.gd, %.lr.ph433 ] ; 2 uses
  %.1293.lcssa = phi ptr [ %.0292.lcssa, %.preheader417 ], [ %i.fx, %.lr.ph433 ] ; 2 uses
  %.1288.lcssa = phi i32 [ %.0287.lcssa, %.preheader417 ], [ %i.ga, %.lr.ph433 ] ; 3 uses
  %.1283.lcssa = phi ptr [ %.0282.lcssa, %.preheader417 ], [ %i.fz, %.lr.ph433 ] ; 2 uses
  %.1278.lcssa = phi ptr [ %.0277.lcssa, %.preheader417 ], [ %i.fy, %.lr.ph433 ] ; 2 uses
  %.1274.lcssa = phi ptr [ %.0273.lcssa, %.preheader417 ], [ %i.fw, %.lr.ph433 ] ; 2 uses
  %i.ef = or disjoint i32 %.1288.lcssa, 3
  %i.eg = icmp slt i32 %i.ef, %.pre-phi578
  br i1 %i.eg, label %.lr.ph444, label %.preheader415

.lr.ph433:                                        ; preds = %.preheader417, %.lr.ph433
  %.1274432 = phi ptr [ %i.fw, %.lr.ph433 ], [ %.0273.lcssa, %.preheader417 ] ; 3 uses
  %.1278431 = phi ptr [ %i.fy, %.lr.ph433 ], [ %.0277.lcssa, %.preheader417 ] ; 2 uses
  %.1283430 = phi ptr [ %i.fz, %.lr.ph433 ], [ %.0282.lcssa, %.preheader417 ] ; 2 uses
  %.1288429 = phi i32 [ %i.ga, %.lr.ph433 ], [ %.0287.lcssa, %.preheader417 ]
  %.1293428 = phi ptr [ %i.fx, %.lr.ph433 ], [ %.0292.lcssa, %.preheader417 ] ; 2 uses
  %i.eh = load <8 x i16>, ptr %.1274432, align 1, !tbaa !42 ; 2 uses
  %i.ei = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ej = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ek = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = bitcast <16 x i16> %i.ek to <8 x float> ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1274432, i64 16
  %i.en = load <8 x i16>, ptr %i.em, align 1, !tbaa !42 ; 2 uses
  %i.eo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.en, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ep = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.en, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eq = shufflevector <8 x i16> %i.eo, <8 x i16> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = bitcast <16 x i16> %i.eq to <8 x float> ; 2 uses
  %i.es = load <8 x i16>, ptr %.1278431, align 1, !tbaa !42 ; 2 uses
  %i.et = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.es, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.es, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ev = shufflevector <8 x i16> %i.et, <8 x i16> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ew = bitcast <16 x i16> %i.ev to <8 x float> ; 2 uses
  %i.ex = load <8 x i16>, ptr %.1283430, align 1, !tbaa !42 ; 2 uses
  %i.ey = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ex, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ez = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ex, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fa = shufflevector <8 x i16> %i.ey, <8 x i16> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fb = bitcast <16 x i16> %i.fa to <8 x float> ; 2 uses
  %i.fc = shufflevector <8 x float> %i.ew, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.fd = shufflevector <8 x float> %i.ew, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.fe = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ff = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.fg = shufflevector <8 x float> %i.el, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fh = shufflevector <8 x float> %i.er, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fi = fmul fast <8 x float> %i.fe, %i.fg
  %i.fj = fmul fast <8 x float> %i.ff, %i.fh
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) %i.fi)
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> nofpclass(nan inf) %i.fj)
  %i.fm = bitcast <8 x float> %i.fk to <8 x i32>
  %i.fn = lshr <8 x i32> %i.fm, splat (i32 16)    ; 2 uses
  %i.fo = shufflevector <8 x i32> %i.fn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fp = shufflevector <8 x i32> %i.fn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fo, <4 x i32> %i.fp)
  %i.fr = bitcast <8 x float> %i.fl to <8 x i32>
  %i.fs = lshr <8 x i32> %i.fr, splat (i32 16)    ; 2 uses
  %i.ft = shufflevector <8 x i32> %i.fs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fu = shufflevector <8 x i32> %i.fs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ft, <4 x i32> %i.fu)
  %11 = shufflevector <8 x i16> %i.fq, <8 x i16> %i.fv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i16> %11, ptr %.1293428, align 1, !tbaa !42
  %i.fw = getelementptr inbounds nuw i8, ptr %.1274432, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.1293428, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1278431, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1283430, i64 16 ; 2 uses
  %i.ga = add nuw nsw i32 %.1288429, 8            ; 3 uses
  %i.gb = or disjoint i32 %i.ga, 7
  %i.gc = load i32, ptr %9, align 4, !tbaa !21
  %i.gd = sdiv i32 %i.gc, 2                       ; 2 uses
  %i.ge = icmp slt i32 %i.gb, %i.gd
  br i1 %i.ge, label %.lr.ph433, label %.preheader416, !llvm.loop !95

.preheader415:                                    ; preds = %.lr.ph444, %.preheader416
  %.pre-phi579 = phi i32 [ %.pre-phi578, %.preheader416 ], [ %i.hy, %.lr.ph444 ] ; 2 uses
  %.2294.lcssa = phi ptr [ %.1293.lcssa, %.preheader416 ], [ %i.hs, %.lr.ph444 ] ; 2 uses
  %.2289.lcssa = phi i32 [ %.1288.lcssa, %.preheader416 ], [ %i.hv, %.lr.ph444 ] ; 3 uses
  %.2284.lcssa = phi ptr [ %.1283.lcssa, %.preheader416 ], [ %i.hu, %.lr.ph444 ] ; 2 uses
  %.2279.lcssa = phi ptr [ %.1278.lcssa, %.preheader416 ], [ %i.ht, %.lr.ph444 ] ; 2 uses
  %.2275.lcssa = phi ptr [ %.1274.lcssa, %.preheader416 ], [ %i.hr, %.lr.ph444 ] ; 2 uses
  %i.gf = or disjoint i32 %.2289.lcssa, 1
  %i.gg = icmp slt i32 %i.gf, %.pre-phi579
  br i1 %i.gg, label %.lr.ph455, label %.preheader413

.lr.ph444:                                        ; preds = %.preheader416, %.lr.ph444
  %.2275443 = phi ptr [ %i.hr, %.lr.ph444 ], [ %.1274.lcssa, %.preheader416 ] ; 3 uses
  %.2279442 = phi ptr [ %i.ht, %.lr.ph444 ], [ %.1278.lcssa, %.preheader416 ] ; 2 uses
  %.2284441 = phi ptr [ %i.hu, %.lr.ph444 ], [ %.1283.lcssa, %.preheader416 ] ; 2 uses
  %.2289440 = phi i32 [ %i.hv, %.lr.ph444 ], [ %.1288.lcssa, %.preheader416 ]
  %.2294439 = phi ptr [ %i.hs, %.lr.ph444 ], [ %.1293.lcssa, %.preheader416 ] ; 2 uses
  %i.gh = load i64, ptr %.2275443, align 1, !tbaa !42
  %i.gi = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %i.gj = bitcast <2 x i64> %i.gi to <8 x i16>
  %i.gk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gl = bitcast <8 x i16> %i.gk to <4 x float>  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.2275443, i64 8
  %i.gn = load i64, ptr %i.gm, align 1, !tbaa !42
  %i.go = insertelement <2 x i64> poison, i64 %i.gn, i64 0
  %i.gp = bitcast <2 x i64> %i.go to <8 x i16>
  %i.gq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gr = bitcast <8 x i16> %i.gq to <4 x float>  ; 2 uses
  %i.gs = load i64, ptr %.2279442, align 1, !tbaa !42
  %i.gt = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %i.gu = load i64, ptr %.2284441, align 1, !tbaa !42
  %i.gv = insertelement <2 x i64> poison, i64 %i.gu, i64 0
  %i.gw = bitcast <2 x i64> %i.gt to <8 x i16>
  %i.gx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gy = bitcast <8 x i16> %i.gx to <4 x float>  ; 2 uses
  %i.gz = bitcast <2 x i64> %i.gv to <8 x i16>
  %i.ha = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hb = bitcast <8 x i16> %i.ha to <4 x float>  ; 2 uses
  %i.hc = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hd = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.he = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hf = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.hg = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.hh = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.hi = fmul fast <4 x float> %i.he, %i.hg
  %i.hj = fmul fast <4 x float> %i.hf, %i.hh
  %i.hk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.gl, <4 x float> nofpclass(nan inf) %i.hc, <4 x float> nofpclass(nan inf) %i.hi)
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.gr, <4 x float> nofpclass(nan inf) %i.hd, <4 x float> nofpclass(nan inf) %i.hj)
  %i.hm = bitcast <4 x float> %i.hk to <4 x i32>
  %i.hn = lshr <4 x i32> %i.hm, splat (i32 16)
  %i.ho = bitcast <4 x float> %i.hl to <4 x i32>
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 16)
  %i.hq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hn, <4 x i32> %i.hp)
  store <8 x i16> %i.hq, ptr %.2294439, align 1, !tbaa !42
  %i.hr = getelementptr inbounds nuw i8, ptr %.2275443, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.2294439, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.2279442, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.2284441, i64 8 ; 2 uses
  %i.hv = add nuw nsw i32 %.2289440, 4            ; 3 uses
  %i.hw = or disjoint i32 %i.hv, 3
  %i.hx = load i32, ptr %9, align 4, !tbaa !21
  %i.hy = sdiv i32 %i.hx, 2                       ; 2 uses
  %i.hz = icmp slt i32 %i.hw, %i.hy
  br i1 %i.hz, label %.lr.ph444, label %.preheader415, !llvm.loop !96

.preheader413:                                    ; preds = %.lr.ph455, %.preheader415
  %.3295.lcssa = phi ptr [ %.2294.lcssa, %.preheader415 ], [ %i.ma, %.lr.ph455 ] ; 10 uses
  %.3290.lcssa = phi i32 [ %.2289.lcssa, %.preheader415 ], [ %i.md, %.lr.ph455 ] ; 7 uses
  %.3285.lcssa = phi ptr [ %.2284.lcssa, %.preheader415 ], [ %i.mc, %.lr.ph455 ] ; 8 uses
  %.3280.lcssa = phi ptr [ %.2279.lcssa, %.preheader415 ], [ %i.mb, %.lr.ph455 ] ; 8 uses
  %.3276.lcssa = phi ptr [ %.2275.lcssa, %.preheader415 ], [ %i.lz, %.lr.ph455 ] ; 8 uses
  %.lcssa = phi i32 [ %.pre-phi579, %.preheader415 ], [ %i.mg, %.lr.ph455 ] ; 4 uses
  %i.ia = icmp slt i32 %.3290.lcssa, %.lcssa
  br i1 %i.ia, label %iter.check789, label %.loopexit

iter.check789:                                    ; preds = %.preheader413
  %i.ib = xor i32 %.3290.lcssa, -1
  %i.ic = add i32 %.lcssa, %i.ib                  ; 3 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = add nuw nsw i64 %i.id, 1                ; 5 uses
  %min.iters.check767 = icmp ult i32 %i.ic, 7
  br i1 %min.iters.check767, label %.lr.ph467.preheader, label %vector.memcheck751

vector.memcheck751:                               ; preds = %iter.check789
  %scevgep = getelementptr i8, ptr %.3295.lcssa, i64 4
  %i.if = xor i32 %.3290.lcssa, -1
  %i.ig = add i32 %.lcssa, %i.if
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ih, 2                ; 2 uses
  %scevgep752 = getelementptr i8, ptr %scevgep, i64 %i.ii ; 3 uses
  %scevgep753 = getelementptr i8, ptr %.3276.lcssa, i64 4
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.ii
  %scevgep755 = getelementptr i8, ptr %.3280.lcssa, i64 2
  %i.ij = shl nuw nsw i64 %i.ih, 1                ; 2 uses
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.ij
  %scevgep757 = getelementptr i8, ptr %.3285.lcssa, i64 2
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.ij
  %bound0 = icmp ult ptr %.3295.lcssa, %scevgep754
  %bound1 = icmp ult ptr %.3276.lcssa, %scevgep752
  %found.conflict = and i1 %bound0, %bound1
  %bound0759 = icmp ult ptr %.3295.lcssa, %scevgep756
  %bound1760 = icmp ult ptr %.3280.lcssa, %scevgep752
  %found.conflict761 = and i1 %bound0759, %bound1760
  %conflict.rdx762 = or i1 %found.conflict, %found.conflict761
  %bound0763 = icmp ult ptr %.3295.lcssa, %scevgep758
  %bound1764 = icmp ult ptr %.3285.lcssa, %scevgep752
  %found.conflict765 = and i1 %bound0763, %bound1764
  %conflict.rdx766 = or i1 %conflict.rdx762, %found.conflict765
  br i1 %conflict.rdx766, label %.lr.ph467.preheader, label %vector.main.loop.iter.check768

vector.main.loop.iter.check768:                   ; preds = %vector.memcheck751
  %min.iters.check769 = icmp ult i32 %i.ic, 31
  br i1 %min.iters.check769, label %vec.epilog.ph793, label %vector.ph770

vector.ph770:                                     ; preds = %vector.main.loop.iter.check768
  %i.ik = and i64 %i.ie, 24
  %n.vec771 = and i64 %i.ie, 8589934560           ; 6 uses
  %i.il = shl nuw nsw i64 %n.vec771, 2            ; 2 uses
  %i.im = getelementptr i8, ptr %.3276.lcssa, i64 %i.il
  %i.in = shl nuw nsw i64 %n.vec771, 1            ; 2 uses
  %i.io = getelementptr i8, ptr %.3280.lcssa, i64 %i.in
  %i.ip = getelementptr i8, ptr %.3285.lcssa, i64 %i.in
  %i.iq = trunc i64 %n.vec771 to i32
  %i.ir = add i32 %.3290.lcssa, %i.iq
  %i.is = getelementptr i8, ptr %.3295.lcssa, i64 %i.il
  br label %vector.body772

vector.body772:                                   ; preds = %vector.ph770, %vector.body772
  %index773 = phi i64 [ 0, %vector.ph770 ], [ %index.next781, %vector.body772 ] ; 3 uses
  %i.it = shl i64 %index773, 2                    ; 2 uses
  %next.gep774 = getelementptr i8, ptr %.3276.lcssa, i64 %i.it
  %i.iu = shl i64 %index773, 1                    ; 2 uses
  %next.gep775 = getelementptr i8, ptr %.3280.lcssa, i64 %i.iu
  %next.gep776 = getelementptr i8, ptr %.3285.lcssa, i64 %i.iu
  %next.gep777 = getelementptr i8, ptr %.3295.lcssa, i64 %i.it
  %wide.vec = load <64 x i16>, ptr %next.gep774, align 2, !tbaa !116, !alias.scope !117
  %i.iv = freeze <64 x i16> %wide.vec             ; 2 uses
  %i.iw = bitcast <64 x i16> %i.iv to <32 x i32>
  %i.ix = bitcast <64 x i16> %i.iv to <32 x i32>
  %i.iy = and <32 x i32> %i.ix, splat (i32 -65536)
  %i.iz = shl <32 x i32> %i.iw, splat (i32 16)
  %i.ja = bitcast <32 x i32> %i.iz to <32 x float> ; 2 uses
  %i.jb = bitcast <32 x i32> %i.iy to <32 x float> ; 2 uses
  %wide.load779 = load <32 x i16>, ptr %next.gep775, align 2, !tbaa !116, !alias.scope !118
  %i.jc = zext <32 x i16> %wide.load779 to <32 x i32>
  %i.jd = shl nuw <32 x i32> %i.jc, splat (i32 16)
  %i.je = bitcast <32 x i32> %i.jd to <32 x float> ; 2 uses
  %wide.load780 = load <32 x i16>, ptr %next.gep776, align 2, !tbaa !116, !alias.scope !119
  %i.jf = zext <32 x i16> %wide.load780 to <32 x i32>
  %i.jg = shl nuw <32 x i32> %i.jf, splat (i32 16)
  %i.jh = bitcast <32 x i32> %i.jg to <32 x float> ; 2 uses
  %i.ji = fmul fast <32 x float> %i.je, %i.ja
  %i.jj = fmul fast <32 x float> %i.jh, %i.jb
  %i.jk = fsub fast <32 x float> %i.ji, %i.jj
  %i.jl = bitcast <32 x float> %i.jk to <32 x i32>
  %i.jm = lshr <32 x i32> %i.jl, splat (i32 16)
  %i.jn = trunc nuw <32 x i32> %i.jm to <32 x i16>
  %i.jo = fmul fast <32 x float> %i.jh, %i.ja
  %i.jp = fmul fast <32 x float> %i.je, %i.jb
  %i.jq = fadd fast <32 x float> %i.jo, %i.jp
  %i.jr = bitcast <32 x float> %i.jq to <32 x i32>
  %i.js = lshr <32 x i32> %i.jr, splat (i32 16)
  %i.jt = trunc nuw <32 x i32> %i.js to <32 x i16>
  %interleaved.vec = shufflevector <32 x i16> %i.jn, <32 x i16> %i.jt, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec, ptr %next.gep777, align 2, !tbaa !116, !alias.scope !120, !noalias !121
  %index.next781 = add nuw i64 %index773, 32      ; 2 uses
  %i.ju = icmp eq i64 %index.next781, %n.vec771
  br i1 %i.ju, label %middle.block782, label %vector.body772, !llvm.loop !102

middle.block782:                                  ; preds = %vector.body772
  %cmp.n783 = icmp eq i64 %i.ie, %n.vec771
  br i1 %cmp.n783, label %.loopexit, label %vec.epilog.iter.check791

vec.epilog.iter.check791:                         ; preds = %middle.block782
  %min.epilog.iters.check792 = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check792, label %.lr.ph467.preheader, label %vec.epilog.ph793, !prof !122

vec.epilog.ph793:                                 ; preds = %vector.main.loop.iter.check768, %vec.epilog.iter.check791
  %vec.epilog.resume.val784 = phi i64 [ %n.vec771, %vec.epilog.iter.check791 ], [ 0, %vector.main.loop.iter.check768 ]
  %n.vec794 = and i64 %i.ie, 8589934584           ; 5 uses
  %i.jv = shl nuw nsw i64 %n.vec794, 2            ; 2 uses
  %i.jw = getelementptr i8, ptr %.3276.lcssa, i64 %i.jv
  %i.jx = shl nuw nsw i64 %n.vec794, 1            ; 2 uses
  %i.jy = getelementptr i8, ptr %.3280.lcssa, i64 %i.jx
  %i.jz = getelementptr i8, ptr %.3285.lcssa, i64 %i.jx
  %i.ka = trunc i64 %n.vec794 to i32
  %i.kb = add i32 %.3290.lcssa, %i.ka
  %i.kc = getelementptr i8, ptr %.3295.lcssa, i64 %i.jv
  br label %vec.epilog.vector.body795
end_hunk_1
