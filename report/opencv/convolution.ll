Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cv3dnnL13packInputDataEPcPfPKiS4_iiiiiiiiiiiiiiiiiiiiiiiiiiiibb:bb.a
  %i.all = getelementptr inbounds [4 x i8], ptr %.4998.epil.init, i64 %i.q
  %i.alm = load float, ptr %i.all, align 4, !tbaa !99
  store float %i.alg, ptr %.4563997.epil.init, align 4, !tbaa !99
  %i.aln = getelementptr inbounds nuw i8, ptr %.4563997.epil.init, i64 4
  store float %i.ali, ptr %i.aln, align 4, !tbaa !99
  %i.alo = getelementptr inbounds nuw i8, ptr %.4563997.epil.init, i64 8
  store float %i.alk, ptr %i.alo, align 4, !tbaa !99
  %i.alp = getelementptr inbounds nuw i8, ptr %.4563997.epil.init, i64 12
  store float %i.alm, ptr %i.alp, align 4, !tbaa !99
  br label %.loopexit962

.loopexit962.loopexit67.unr-lcssa:                ; preds = %.lr.ph992
  br i1 %lcmp.mod73.not, label %.loopexit962, label %.lr.ph992.epil.preheader

.lr.ph992.epil.preheader:                         ; preds = %.loopexit962.loopexit67.unr-lcssa, %.lr.ph992.preheader
  %.0556990.epil.init = phi ptr [ %i.aeq, %.lr.ph992.preheader ], [ %i.afr, %.loopexit962.loopexit67.unr-lcssa ]
  %.0559989.epil.init = phi ptr [ %i.adz, %.lr.ph992.preheader ], [ %i.afq, %.loopexit962.loopexit67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph992.epil

.lr.ph992.epil:                                   ; preds = %.lr.ph992.epil, %.lr.ph992.epil.preheader
  %.0556990.epil = phi ptr [ %i.alv, %.lr.ph992.epil ], [ %.0556990.epil.init, %.lr.ph992.epil.preheader ] ; 3 uses
  %.0559989.epil = phi ptr [ %i.alu, %.lr.ph992.epil ], [ %.0559989.epil.init, %.lr.ph992.epil.preheader ] ; 3 uses
  %epil.iter72 = phi i32 [ %epil.iter72.next, %.lr.ph992.epil ], [ 0, %.lr.ph992.epil.preheader ]
  %i.alq = getelementptr inbounds nuw i8, ptr %.0556990.epil, i64 16
  %i.alr = load <4 x float>, ptr %.0556990.epil, align 4, !tbaa !99
  %i.als = getelementptr inbounds nuw i8, ptr %.0559989.epil, i64 16
  %i.alt = load <4 x float>, ptr %i.alq, align 4, !tbaa !99
  store <4 x float> %i.alr, ptr %.0559989.epil, align 4, !tbaa !99
  store <4 x float> %i.alt, ptr %i.als, align 4, !tbaa !99
  %i.alu = getelementptr inbounds [4 x i8], ptr %.0559989.epil, i64 %i.j
  %i.alv = getelementptr inbounds [4 x i8], ptr %.0556990.epil, i64 %i.l
  %epil.iter72.next = add i32 %epil.iter72, 1     ; 2 uses
  %epil.iter72.cmp.not = icmp eq i32 %epil.iter72.next, %xtraiter71
  br i1 %epil.iter72.cmp.not, label %.loopexit962, label %.lr.ph992.epil, !llvm.loop !326

.loopexit962:                                     ; preds = %.lr.ph988, %.loopexit962.loopexit67.unr-lcssa, %.lr.ph992.epil, %.lr.ph996, %.lr.ph1000.epil.preheader, %.loopexit962.loopexit65.unr-lcssa, %.loopexit962.loopexit.unr-lcssa, %.lr.ph1004.epil, %.preheader969, %.preheader967, %.preheader965, %.preheader963, %.preheader961, %._crit_edge1010, %._crit_edge
  %.2574 = phi i32 [ %i.akt, %._crit_edge ], [ %i.ajs, %._crit_edge1010 ], [ %i.ahq, %.preheader963 ], [ %i.ahq, %.preheader961 ], [ %i.aer, %.preheader965 ], [ %i.aer, %.preheader967 ], [ %i.aer, %.preheader969 ], [ %i.ahq, %.lr.ph1000.epil.preheader ], [ %i.aer, %.lr.ph996 ], [ %i.aer, %.loopexit962.loopexit67.unr-lcssa ], [ %i.ahq, %.loopexit962.loopexit.unr-lcssa ], [ %i.ahq, %.lr.ph1004.epil ], [ %i.ahq, %.loopexit962.loopexit65.unr-lcssa ], [ %i.aer, %.lr.ph992.epil ], [ %i.aer, %.lr.ph988 ]
  %.2567 = phi i32 [ %i.aku, %._crit_edge ], [ %i.ajt, %._crit_edge1010 ], [ %i.ahr, %.preheader963 ], [ %i.ahr, %.preheader961 ], [ %i.aes, %.preheader965 ], [ %i.aes, %.preheader967 ], [ %i.aes, %.preheader969 ], [ %i.ahr, %.lr.ph1000.epil.preheader ], [ %i.aes, %.lr.ph996 ], [ %i.aes, %.loopexit962.loopexit67.unr-lcssa ], [ %i.ahr, %.loopexit962.loopexit.unr-lcssa ], [ %i.ahr, %.lr.ph1004.epil ], [ %i.ahr, %.loopexit962.loopexit65.unr-lcssa ], [ %i.aes, %.lr.ph992.epil ], [ %i.aes, %.lr.ph988 ] ; 2 uses
  %i.alw = icmp sge i32 %.2567, %23               ; 2 uses
  %i.alx = zext i1 %i.alw to i32
  %i.aly = add nsw i32 %.0568, %i.alx             ; 2 uses
  %i.alz = select i1 %i.alw, i32 0, i32 %.2567
  %i.ama = icmp sge i32 %i.aly, %22               ; 3 uses
  %or.cond15 = and i1 %i.aa, %i.ama
  %i.amb = zext i1 %i.ama to i32
  %i.amc = add nsw i32 %.0570, %i.amb
  %i.amd = select i1 %i.ama, i32 0, i32 %i.aly
  br i1 %or.cond15, label %bb.ap, label %bb.ag

bb.ap:                                            ; preds = %.loopexit962, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1127.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i687
  br i1 %exitcond1127.not, label %..loopexit982_crit_edge, label %bb.af, !llvm.loop !327

..loopexit982_crit_edge:                          ; preds = %bb.ap
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 1
  %i.ame = add nsw i32 %.05371077, %30            ; 2 uses
  %i.amf = icmp slt i32 %i.ame, %5
  br i1 %i.amf, label %.lr.ph1014, label %._crit_edge1080, !llvm.loop !296
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS5_8FastConvEEEiRKNSC_INS5_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !95    ; 54 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !86     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87   ; 2 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph357.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS1_8FastConvEEEiRKNS8_INS1_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit"

.lr.ph357.i.i.i:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 224
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 240
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 280
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 304 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 312 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 416
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 368 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 424 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 352 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 360 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 432
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 400 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 392 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 408 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 376
  %i.bh = sext i32 %i.c to i64
  br label %bb.b

.loopexit309.loopexit.i.i.i:                      ; preds = %.loopexit308.i.i.i
  %.pre407.i.i.i = load i32, ptr %i.d, align 4, !tbaa !87
  br label %.loopexit309.i.i.i

.loopexit309.i.i.i:                               ; preds = %bb.b, %.loopexit309.loopexit.i.i.i
  %i.bi = phi i32 [ %.pre407.i.i.i, %.loopexit309.loopexit.i.i.i ], [ %i.bl, %bb.b ] ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next392.i.i.i, %i.bj
  br i1 %i.bk, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS1_8FastConvEEEiRKNS8_INS1_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit", !llvm.loop !328

bb.b:                                             ; preds = %.loopexit309.i.i.i, %.lr.ph357.i.i.i
  %i.bl = phi i32 [ %i.e, %.lr.ph357.i.i.i ], [ %i.bi, %.loopexit309.i.i.i ]
  %indvars.iv391.i.i.i = phi i64 [ %i.bh, %.lr.ph357.i.i.i ], [ %indvars.iv.next392.i.i.i, %.loopexit309.i.i.i ] ; 3 uses
  %i.bm = load ptr, ptr %.val, align 8, !tbaa !390, !nonnull !67, !align !124
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !111 ; 4 uses
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !391, !nonnull !67, !align !124
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.bq = mul i64 %i.bp, %indvars.iv391.i.i.i     ; 4 uses
  %i.br = getelementptr i8, ptr %i.bn, i64 %i.bq  ; 7 uses
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !392, !nonnull !67, !align !124
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bt ; 3 uses
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !393, !nonnull !67, !align !125
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = mul nsw i64 %indvars.iv391.i.i.i, %i.bx
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !394, !nonnull !67, !align !125
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !39
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = udiv i64 %i.by, %i.cb
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %indvars.iv.next392.i.i.i = add nsw i64 %indvars.iv391.i.i.i, 1 ; 3 uses
  %i.ce = mul nsw i64 %indvars.iv.next392.i.i.i, %i.bx
  %i.cf = udiv i64 %i.ce, %i.cb
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = icmp slt i32 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph354.i.i.i.preheader, label %.loopexit309.i.i.i

.lr.ph354.i.i.i.preheader:                        ; preds = %bb.b
  %i.ci = ptrtoaddr ptr %i.bn to i64
  %scevgep150 = getelementptr i8, ptr %i.bn, i64 %i.bq
  %i.cj = add i64 %i.bq, %i.ci                    ; 2 uses
  %scevgep203 = getelementptr i8, ptr %i.bn, i64 %i.bq
  br label %.lr.ph354.i.i.i

.loopexit308.i.i.i:                               ; preds = %.loopexit307.i.i.i, %bb.f
  %i.ck = icmp slt i32 %i.da, %i.cg
  br i1 %i.ck, label %.lr.ph354.i.i.i, label %.loopexit309.loopexit.i.i.i, !llvm.loop !329

.lr.ph354.i.i.i:                                  ; preds = %.lr.ph354.i.i.i.preheader, %.loopexit308.i.i.i
  %.0215352.i.i.i = phi i32 [ %i.da, %.loopexit308.i.i.i ], [ %i.cd, %.lr.ph354.i.i.i.preheader ] ; 2 uses
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !395, !nonnull !67, !align !125
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !39 ; 4 uses
  %i.cn = sdiv i32 %.0215352.i.i.i, %i.cm         ; 5 uses
  %i.co = mul nsw i32 %i.cn, %i.cm                ; 2 uses
  %.recomposed = srem i32 %.0215352.i.i.i, %i.cm  ; 2 uses
  %i.cp = sub nsw i32 %i.cg, %i.co
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !396, !nonnull !67, !align !125
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !39 ; 3 uses
  %i.cs = sdiv i32 %i.cn, %i.cr                   ; 3 uses
  %i.ct = srem i32 %i.cn, %i.cr                   ; 10 uses
  %i.cu = mul nsw i32 %i.cs, %i.cr
  %i.cv = add nsw i32 %i.cu, %i.ct
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !397, !nonnull !67, !align !125
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !39
  %8 = mul i32 %i.cx, %i.cv
  %i.cy = load ptr, ptr %i.n, align 8, !tbaa !398, !nonnull !67, !align !124
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !38
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cm) ; 3 uses
  %i.da = add i32 %..i.i.i, %i.co                 ; 2 uses
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !399, !nonnull !67, !align !125
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !39
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %.lr.ph354._crit_edge.i.i.i, label %bb.c

.lr.ph354._crit_edge.i.i.i:                       ; preds = %.lr.ph354.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !400
  %.pre395.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !401
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph354.i.i.i
  %i.de = load ptr, ptr %i.p, align 8, !tbaa !402, !nonnull !67, !align !124
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !71
  %i.di = icmp eq i32 %i.dh, 3
  %.pre394.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !400 ; 2 uses
  %.pre396.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !401 ; 2 uses
  br i1 %i.di, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.lr.ph354._crit_edge.i.i.i
  %i.dj = phi ptr [ %.pre395.i.i.i, %.lr.ph354._crit_edge.i.i.i ], [ %.pre396.i.i.i, %bb.c ]
  %i.dk = phi ptr [ %.pre.i.i.i, %.lr.ph354._crit_edge.i.i.i ], [ %.pre394.i.i.i, %bb.c ]
  %i.dl = load ptr, ptr %i.t, align 8, !tbaa !403, !nonnull !67, !align !125
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !39 ; 2 uses
  %i.dn = mul nsw i32 %i.dm, %.recomposed
  %i.do = mul nsw i32 %i.dm, %..i.i.i
  %i.dp = load i32, ptr %i.dk, align 4, !tbaa !39
  %.251.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dp)
  %i.dq = load i64, ptr %i.dj, align 8, !tbaa !38
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dr = load i32, ptr %.pre394.i.i.i, align 4, !tbaa !39
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !39 ; 2 uses
  %i.du = mul nsw i32 %i.dt, %.recomposed
  %i.dv = mul nsw i32 %i.dt, %..i.i.i
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load i64, ptr %.pre396.i.i.i, align 8, !tbaa !38
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dw)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0214.i.i.i = phi i32 [ %i.dn, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0213.i.i.i = phi i32 [ %.251.i.i.i, %bb.d ], [ %i.dr, %bb.e ] ; 3 uses
  %.0211.i.i.i = phi i32 [ 0, %bb.d ], [ %i.du, %bb.e ] ; 2 uses
  %.0210.in.i.i.i = phi i64 [ %i.dq, %bb.d ], [ %i.dy, %bb.e ]
  %.0210.i.i.i = trunc i64 %.0210.in.i.i.i to i32 ; 3 uses
  %i.dz = icmp slt i32 %.0211.i.i.i, %.0210.i.i.i
  br i1 %i.dz, label %.lr.ph351.i.i.i, label %.loopexit308.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %bb.f
  %i.ea = trunc i64 %i.cz to i32
  %9 = mul i32 %8, %i.ea
  %i.eb = icmp slt i32 %.0214.i.i.i, %.0213.i.i.i
  %i.ec = sext i32 %i.ct to i64
  %i.ed = add nsw i32 %i.ct, 1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit307.i.i.i, %.lr.ph351.i.i.i
  %.1212349.i.i.i = phi i32 [ %.0211.i.i.i, %.lr.ph351.i.i.i ], [ %i.ek, %.loopexit307.i.i.i ] ; 7 uses
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !39 ; 4 uses
  %i.eg = load ptr, ptr %i.u, align 8, !tbaa !405, !nonnull !67, !align !125
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !39 ; 2 uses
  %i.ei = mul nsw i32 %i.eh, %i.ef
  %i.ej = add nsw i32 %i.ei, %.1212349.i.i.i      ; 2 uses
  %i.ek = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %.0210.i.i.i) ; 3 uses
  %i.el = sub nsw i32 %i.ek, %.1212349.i.i.i      ; 11 uses
  %i.em = add i32 %i.ef, -1
  %i.en = add i32 %i.em, %i.el
  %i.eo = sdiv i32 %i.en, %i.ef                   ; 6 uses
  %.not235.i.i.i = icmp sgt i32 %i.eo, %i.eh
  br i1 %.not235.i.i.i, label %.noexc.i.i.i.i, label %bb.k

.noexc.i.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ep, ptr %2, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 23, ptr %i.b, align 8, !tbaa !38
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.eq, ptr %2, align 8, !tbaa !35
  %i.er = load i64, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.eq, ptr noundef nonnull align 1 dereferenceable(23) @.str.26, i64 23, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !105
  %i.et = load ptr, ptr %2, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i8 0, ptr %i.eu, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 1415) #24
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc.i.i.i
  unreachable

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ep
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ez = load i64, ptr %i.ep, align 8, !tbaa !36
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ev, %bb.i ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ew, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.at

bb.k:                                             ; preds = %bb.g
  %i.fb = load ptr, ptr %i.v, align 8, !tbaa !406, !nonnull !67
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !107, !range !66, !noundef !67
  %i.fd = trunc nuw i8 %i.fc to i1
  %.pre398.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !402 ; 2 uses
  br i1 %i.fd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fe = load ptr, ptr %i.w, align 8, !tbaa !407, !nonnull !67, !align !124
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !83
  %i.fg = load ptr, ptr %i.x, align 8, !tbaa !408, !nonnull !67, !align !124
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !94
  %i.fi = load ptr, ptr %i.y, align 8, !tbaa !409, !nonnull !67, !align !124
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !94
  %i.fk = load ptr, ptr %i.z, align 8, !tbaa !410, !nonnull !67, !align !125
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !39
  %i.fm = load ptr, ptr %i.aa, align 8, !tbaa !411, !nonnull !67, !align !125
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !39
  %i.fo = load ptr, ptr %i.ab, align 8, !tbaa !412, !nonnull !67, !align !125
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !39
  %i.fq = load ptr, ptr %i.ac, align 8, !tbaa !413, !nonnull !67, !align !125
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !39
  %i.fs = load ptr, ptr %i.ad, align 8, !tbaa !414, !nonnull !67, !align !125
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !39
  %i.fu = load ptr, ptr %i.ae, align 8, !tbaa !415, !nonnull !67, !align !125
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !39
  %i.fw = load ptr, ptr %i.af, align 8, !tbaa !416, !nonnull !67, !align !125
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !39
  %i.fy = load ptr, ptr %i.ag, align 8, !tbaa !417, !nonnull !67, !align !125
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.ga = load ptr, ptr %i.ah, align 8, !tbaa !418, !nonnull !67, !align !125
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !39
  %i.gc = load ptr, ptr %i.ai, align 8, !tbaa !419, !nonnull !67, !align !125
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !39
  %i.ge = load ptr, ptr %i.aj, align 8, !tbaa !420, !nonnull !67, !align !125
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !39
  %i.gg = load ptr, ptr %i.ak, align 8, !tbaa !421, !nonnull !67, !align !125
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !39
  %i.gi = load ptr, ptr %i.al, align 8, !tbaa !422, !nonnull !67, !align !125
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !39
  %i.gk = load ptr, ptr %i.am, align 8, !tbaa !423, !nonnull !67, !align !125
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !39
  %i.gm = load ptr, ptr %i.an, align 8, !tbaa !424, !nonnull !67, !align !125
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !39
  %i.go = load ptr, ptr %i.ao, align 8, !tbaa !425, !nonnull !67, !align !125
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !39
  %i.gq = load ptr, ptr %i.ap, align 8, !tbaa !426, !nonnull !67, !align !125
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !39
  %i.gs = load ptr, ptr %i.aq, align 8, !tbaa !427, !nonnull !67, !align !125
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !39
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !397, !nonnull !67, !align !125
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !39
  %i.gw = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !38
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = load ptr, ptr %i.n, align 8, !tbaa !398, !nonnull !67, !align !124
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !38
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = load ptr, ptr %.pre398.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 196
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !63
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 192
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !71
  %i.hh = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !39
  %i.hj = load ptr, ptr %i.at, align 8, !tbaa !430, !nonnull !67
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !107, !range !66, !noundef !67
  %i.hl = trunc nuw i8 %i.hk to i1
  tail call fastcc void @_ZN2cv3dnnL13packInputDataEPcPfPKiS4_iiiiiiiiiiiiiiiiiiiiiiiiiiiibb(ptr noundef %i.bu, ptr noundef %i.ff, ptr noundef %i.fh, ptr noundef %i.fj, i32 noundef %.1212349.i.i.i, i32 noundef %i.ek, i32 noundef %i.fl, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.fr, i32 noundef %i.ft, i32 noundef %i.fv, i32 noundef %i.fx, i32 noundef %i.fz, i32 noundef %i.gb, i32 noundef %i.gd, i32 noundef %i.gf, i32 noundef %i.gh, i32 noundef %i.gj, i32 noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.gp, i32 noundef %i.gr, i32 noundef %i.gt, i32 noundef %i.gv, i32 noundef %i.gy, i32 noundef %9, i32 noundef %i.hb, i32 noundef %i.he, i32 noundef %i.hg, i32 noundef %i.ef, i32 noundef %i.hi, i1 noundef zeroext %i.hl)
  %.pre397.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !402
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.hm = phi ptr [ %.pre397.i.i.i, %bb.l ], [ %.pre398.i.i.i, %bb.k ]
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !29 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !83 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !83
  %i.hs = icmp eq ptr %i.hp, %i.hr
  br i1 %i.hs, label %.noexc.i255.i.i.i, label %bb.q

.noexc.i255.i.i.i:                                ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ht, ptr %3, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 25, ptr %i.a, align 8, !tbaa !38
  %i.hu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc256.i.i.i unwind label %bb.o ; 2 uses

.noexc256.i.i.i:                                  ; preds = %.noexc.i255.i.i.i
  store ptr %i.hu, ptr %3, align 8, !tbaa !35
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.hu, ptr noundef nonnull align 1 dereferenceable(25) @.str.27, i64 25, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !105
  %i.hx = load ptr, ptr %3, align 8, !tbaa !35
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hv
  store i8 0, ptr %i.hy, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 1435) #24
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc256.i.i.i
  unreachable

bb.o:                                             ; preds = %.noexc.i255.i.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i.i.i

bb.p:                                             ; preds = %.noexc256.i.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ht
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i.i.i: ; preds = %bb.p
  %i.id = load i64, ptr %i.ht, align 8, !tbaa !36
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i.i.i, %bb.o
  %.pn247.i.i.i = phi { ptr, i32 } [ %i.hz, %bb.o ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i.i.i ], [ %i.ia, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.at

bb.q:                                             ; preds = %bb.m
  %i.if = ptrtoint ptr %i.hp to i64
  %i.ig = add i64 %i.if, 31
  %i.ih = and i64 %i.ig, -32                      ; 2 uses
  %i.ii = inttoptr i64 %i.ih to ptr               ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 192
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !71
  %i.il = icmp eq i32 %i.ik, 3
  %.not243.i.i.i = icmp eq i64 %i.ih, 0           ; 2 uses
  br i1 %i.il, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  br i1 %.not243.i.i.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 1442) #24
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i.i.i: ; preds = %bb.w
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !36
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i.i.i, %bb.v
  %.pn244.i.i.i = phi { ptr, i32 } [ %i.im, %bb.v ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i.i.i ], [ %i.in, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.at

bb.x:                                             ; preds = %bb.r
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !396, !nonnull !67, !align !125
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !39
  %i.iv = mul nsw i32 %i.iu, %i.cs
  %i.iw = add nsw i32 %i.iv, %i.ct
  %i.ix = sext i32 %i.iw to i64
  %i.iy = load ptr, ptr %i.s, align 8, !tbaa !401, !nonnull !67, !align !124
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !38
  %i.ja = mul i64 %i.iz, %i.ix
  %i.jb = sext i32 %.1212349.i.i.i to i64
  %i.jc = load ptr, ptr %i.bf, align 8, !tbaa !431, !nonnull !67, !align !125
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !39
  %i.je = mul nsw i32 %i.jd, %i.ct
  %i.jf = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !39 ; 2 uses
  %i.jh = mul nsw i32 %i.je, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %i.ii, i64 %i.ji
  %i.jk = load ptr, ptr %i.az, align 8, !tbaa !432, !nonnull !67, !align !124
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !83
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %i.ja
  %i.jn = getelementptr [4 x i8], ptr %i.jm, i64 %i.jb ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hn, i64 120
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !16
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.ec
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !99 ; 16 uses
  %i.js = load ptr, ptr %i.v, align 8, !tbaa !406, !nonnull !67
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !107, !range !66, !noundef !67
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jv = load ptr, ptr %i.ax, align 8, !tbaa !433, !nonnull !67, !align !124
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !111
  %i.jx = load ptr, ptr %i.ay, align 8, !tbaa !434, !nonnull !67, !align !125
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !39
  %i.jz = mul nsw i32 %i.jy, %i.cn
  %i.ka = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !39
  %i.kc = sdiv i32 %.1212349.i.i.i, %i.kb
  %i.kd = add nsw i32 %i.kc, %i.jz
  %i.ke = sext i32 %i.kd to i64
  %i.kf = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !38
  %i.kh = sext i32 %i.jg to i64
  %i.ki = mul nsw i64 %i.ke, %i.kh
  %i.kj = mul i64 %i.ki, %i.kg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.kj
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.kl = phi ptr [ %i.kk, %bb.y ], [ %i.bu, %bb.x ] ; 2 uses
  %i.km = icmp sgt i32 %i.eo, 0
  br i1 %i.km, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.z
  %wide.trip.count389.i.i.i = zext nneg i32 %i.eo to i64
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %i.jr, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.jr, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert78 = insertelement <4 x float> poison, float %i.jr, i64 0
  %broadcast.splat79 = shufflevector <4 x float> %broadcast.splatinsert78, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jr, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph347.i.i.i

._crit_edge348.i.i.i:                             ; preds = %bb.ad, %bb.z
  %i.kn = load ptr, ptr %i.be, align 8, !tbaa !435, !nonnull !67, !align !124
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !109 ; 3 uses
  %.not246.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not246.i.i.i, label %.loopexit307.i.i.i, label %bb.ae

.lr.ph347.i.i.i:                                  ; preds = %bb.ad, %.lr.ph347.preheader.i.i.i
  %indvars.iv386.i.i.i = phi i64 [ 0, %.lr.ph347.preheader.i.i.i ], [ %indvars.iv.next387.i.i.i, %bb.ad ] ; 3 uses
  %i.kp = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !38
  %i.kr = mul i64 %i.kq, %indvars.iv386.i.i.i
  %i.ks = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !39
  %i.ku = sext i32 %i.kt to i64
  %i.kv = mul i64 %i.kr, %i.ku                    ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kl, i64 %i.kv  ; 2 uses
  %i.kx = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !39 ; 4 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv386.i.i.i to i32 ; 2 uses
end_hunk_0
