Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.avb = add <8 x i16> %i.auv, %i.auu
  %i.avc = sub <8 x i16> %i.auv, %i.auu
  %.neg274.3 = mul <8 x i16> %i.act, splat (i16 -5)
  %i.avd = add <8 x i16> %.neg274.3, %i.aup
  %i.ave = add <8 x i16> %i.avd, %i.aqr
  store <8 x i16> %i.auy, ptr %i.auj, align 16, !tbaa !114
  store <8 x i16> %i.auz, ptr %i.auk, align 16, !tbaa !114
  store <8 x i16> %i.ava, ptr %i.aul, align 16, !tbaa !114
  store <8 x i16> %i.avb, ptr %i.aum, align 16, !tbaa !114
  store <8 x i16> %i.avc, ptr %i.aun, align 16, !tbaa !114
  store <8 x i16> %i.ave, ptr %i.auo, align 16, !tbaa !114
  %i.avf = load i32, ptr %4, align 4, !tbaa !81
  %i.avg = mul nsw i32 %i.avf, 48
  %i.avh = sext i32 %i.avg to i64                 ; 6 uses
  %i.avi = getelementptr inbounds [2 x i8], ptr %i.auj, i64 %i.avh ; 2 uses
  %i.avj = getelementptr inbounds [2 x i8], ptr %i.auk, i64 %i.avh ; 2 uses
  %i.avk = getelementptr inbounds [2 x i8], ptr %i.aul, i64 %i.avh ; 2 uses
  %i.avl = getelementptr inbounds [2 x i8], ptr %i.aum, i64 %i.avh ; 2 uses
  %i.avm = getelementptr inbounds [2 x i8], ptr %i.aun, i64 %i.avh ; 2 uses
  %i.avn = getelementptr inbounds [2 x i8], ptr %i.auo, i64 %i.avh ; 2 uses
  %i.avo = shl <8 x i16> %i.ow, splat (i16 2)     ; 2 uses
  %i.avp = sub <8 x i16> %i.acu, %i.avo           ; 2 uses
  %i.avq = shl <8 x i16> %i.vv, splat (i16 2)
  %i.avr = sub <8 x i16> %i.ajt, %i.avq           ; 2 uses
  %i.avs = sub <8 x i16> %i.acu, %i.ow
  %i.avt = shl <8 x i16> %i.avs, splat (i16 1)    ; 2 uses
  %i.avu = sub <8 x i16> %i.ajt, %i.vv            ; 2 uses
  %i.avv = shl <8 x i16> %i.hx, splat (i16 2)
  %.neg.4 = mul <8 x i16> %i.vv, splat (i16 -5)
  %i.avw = add <8 x i16> %.neg.4, %i.avv
  %i.avx = add <8 x i16> %i.avw, %i.ajt
  %i.avy = add <8 x i16> %i.avr, %i.avp
  %i.avz = sub <8 x i16> %i.avr, %i.avp
  %i.awa = add <8 x i16> %i.avu, %i.avt
  %i.awb = sub <8 x i16> %i.avu, %i.avt
  %.neg274.4 = mul <8 x i16> %i.acu, splat (i16 -5)
  %i.awc = add <8 x i16> %.neg274.4, %i.avo
  %i.awd = add <8 x i16> %i.awc, %i.aqs
  store <8 x i16> %i.avx, ptr %i.avi, align 16, !tbaa !114
  store <8 x i16> %i.avy, ptr %i.avj, align 16, !tbaa !114
  store <8 x i16> %i.avz, ptr %i.avk, align 16, !tbaa !114
  store <8 x i16> %i.awa, ptr %i.avl, align 16, !tbaa !114
  store <8 x i16> %i.awb, ptr %i.avm, align 16, !tbaa !114
  store <8 x i16> %i.awd, ptr %i.avn, align 16, !tbaa !114
  %i.awe = load i32, ptr %4, align 4, !tbaa !81
  %i.awf = mul nsw i32 %i.awe, 48
  %i.awg = sext i32 %i.awf to i64                 ; 6 uses
  %i.awh = getelementptr inbounds [2 x i8], ptr %i.avi, i64 %i.awg
  %i.awi = getelementptr inbounds [2 x i8], ptr %i.avj, i64 %i.awg
  %i.awj = getelementptr inbounds [2 x i8], ptr %i.avk, i64 %i.awg
  %i.awk = getelementptr inbounds [2 x i8], ptr %i.avl, i64 %i.awg
  %i.awl = getelementptr inbounds [2 x i8], ptr %i.avm, i64 %i.awg
  %i.awm = getelementptr inbounds [2 x i8], ptr %i.avn, i64 %i.awg
  %i.awn = shl <8 x i16> %i.oy, splat (i16 2)     ; 2 uses
  %i.awo = sub <8 x i16> %i.acw, %i.awn           ; 2 uses
  %i.awp = shl <8 x i16> %i.vx, splat (i16 2)
  %i.awq = sub <8 x i16> %i.ajv, %i.awp           ; 2 uses
  %i.awr = sub <8 x i16> %i.acw, %i.oy
  %i.aws = shl <8 x i16> %i.awr, splat (i16 1)    ; 2 uses
  %i.awt = sub <8 x i16> %i.ajv, %i.vx            ; 2 uses
  %i.awu = shl <8 x i16> %i.hz, splat (i16 2)
  %.neg.5 = mul <8 x i16> %i.vx, splat (i16 -5)
  %i.awv = add <8 x i16> %.neg.5, %i.awu
  %i.aww = add <8 x i16> %i.awv, %i.ajv
  %i.awx = add <8 x i16> %i.awq, %i.awo
  %i.awy = sub <8 x i16> %i.awq, %i.awo
  %i.awz = add <8 x i16> %i.awt, %i.aws
  %i.axa = sub <8 x i16> %i.awt, %i.aws
  %.neg274.5 = mul <8 x i16> %i.acw, splat (i16 -5)
  %i.axb = add <8 x i16> %.neg274.5, %i.awn
  %i.axc = add <8 x i16> %i.axb, %i.aqu
  store <8 x i16> %i.aww, ptr %i.awh, align 16, !tbaa !114
  store <8 x i16> %i.awx, ptr %i.awi, align 16, !tbaa !114
  store <8 x i16> %i.awy, ptr %i.awj, align 16, !tbaa !114
  store <8 x i16> %i.awz, ptr %i.awk, align 16, !tbaa !114
  store <8 x i16> %i.axa, ptr %i.awl, align 16, !tbaa !114
  store <8 x i16> %i.axc, ptr %i.awm, align 16, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.axd = load i32, ptr %4, align 4, !tbaa !81   ; 2 uses
  %i.axe = sext i32 %i.axd to i64
  %i.axf = icmp slt i64 %indvars.iv.next, %i.axe
  br i1 %i.axf, label %.noexc, label %._crit_edge, !llvm.loop !1845

._crit_edge:                                      ; preds = %.thread.5, %.lr.ph.split
  %i.axg = phi i32 [ %i.q, %.lr.ph.split ], [ %i.axd, %.thread.5 ]
  %i.axh = add i32 %.0288, 1
  %exitcond.not = icmp eq i32 %.0288, %i.j
  br i1 %exitcond.not, label %._crit_edge290, label %.lr.ph.split, !llvm.loop !1846

._crit_edge290:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge290, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not391 = icmp sgt i32 %i.k, %i.j
  br i1 %.not391, label %._crit_edge395, label %.lr.ph394

.lr.ph394:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !81    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph394, %._crit_edge390
  %i.p = phi i32 [ %.pre, %.lr.ph394 ], [ %i.qg, %._crit_edge390 ] ; 2 uses
  %i.q = phi i32 [ %.pre, %.lr.ph394 ], [ %i.qh, %._crit_edge390 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph394 ], [ %indvars.iv.next, %._crit_edge390 ] ; 6 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !37
  %i.s = load i32, ptr %i.l, align 4, !tbaa !89
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !79
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w ; 2 uses
  %i.y = icmp sgt i32 %i.q, 7
  br i1 %i.y, label %.lr.ph296.preheader, label %.preheader269

.lr.ph296.preheader:                              ; preds = %bb.c
  %.pre434 = load i32, ptr %6, align 4, !tbaa !81
  %i.z = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  br label %.lr.ph296

.preheader269:                                    ; preds = %._crit_edge291, %bb.c
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %i.dk, %._crit_edge291 ] ; 2 uses
  %i.ab = phi i32 [ %i.q, %bb.c ], [ %i.dl, %._crit_edge291 ] ; 2 uses
  %i.ac = phi i32 [ %i.q, %bb.c ], [ %i.dm, %._crit_edge291 ] ; 3 uses
  %.0241.lcssa = phi i32 [ 0, %bb.c ], [ %i.do, %._crit_edge291 ] ; 3 uses
  %.0232.lcssa = phi ptr [ %i.x, %bb.c ], [ %.3.lcssa, %._crit_edge291 ] ; 2 uses
  %i.ad = or disjoint i32 %.0241.lcssa, 3
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %.lr.ph327.preheader, label %.preheader268

.lr.ph327.preheader:                              ; preds = %.preheader269
  %.pre435 = load i32, ptr %6, align 4, !tbaa !81
  %i.af = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br label %.lr.ph327

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %._crit_edge291
  %i.ag = phi i32 [ %i.dk, %._crit_edge291 ], [ %i.p, %.lr.ph296.preheader ]
  %i.ah = phi i32 [ %i.dl, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ]
  %i.ai = phi i32 [ %i.dm, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.dn, %._crit_edge291 ], [ %.pre434, %.lr.ph296.preheader ] ; 2 uses
  %.0232294 = phi ptr [ %.3.lcssa, %._crit_edge291 ], [ %i.x, %.lr.ph296.preheader ] ; 2 uses
  %.0241293 = phi i32 [ %i.do, %._crit_edge291 ], [ 0, %.lr.ph296.preheader ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !37
  %i.al = mul nsw i32 %i.ai, %i.z
  %i.am = add nsw i32 %i.al, %.0241293            ; 2 uses
  %i.an = shl nsw i32 %i.am, 3
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.aj, 7
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph296, %.lr.ph
  %.1233274 = phi ptr [ %i.bp, %.lr.ph ], [ %.0232294, %.lr.ph296 ] ; 5 uses
  %.0251273 = phi ptr [ %i.bo, %.lr.ph ], [ %i.ap, %.lr.ph296 ] ; 5 uses
  %.0254272 = phi i32 [ %i.bq, %.lr.ph ], [ 0, %.lr.ph296 ]
  %i.ar = load <8 x float>, ptr %.0251273, align 1, !tbaa !114 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0251273, i64 32
  %i.at = load <8 x float>, ptr %i.as, align 1, !tbaa !114 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0251273, i64 64
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !114 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0251273, i64 96
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !114 ; 2 uses
  %7 = shufflevector <8 x float> %i.ar, <8 x float> %i.av, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 8, i32 12, i32 9, i32 13>
  %8 = shufflevector <8 x float> %i.ar, <8 x float> %i.av, <8 x i32> <i32 2, i32 6, i32 3, i32 7, i32 10, i32 14, i32 11, i32 15>
  %9 = shufflevector <8 x float> %i.at, <8 x float> %i.ax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 8, i32 12, i32 9, i32 13>
  %10 = shufflevector <8 x float> %i.at, <8 x float> %i.ax, <8 x i32> <i32 2, i32 6, i32 3, i32 7, i32 10, i32 14, i32 11, i32 15>
  %i.ay = bitcast <8 x float> %7 to <4 x double>  ; 2 uses
  %i.az = bitcast <8 x float> %9 to <4 x double>  ; 2 uses
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bb = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bc = bitcast <8 x float> %8 to <4 x double>  ; 2 uses
  %i.bd = bitcast <8 x float> %10 to <4 x double> ; 2 uses
  %i.be = shufflevector <4 x double> %i.bc, <4 x double> %i.bd, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bf = shufflevector <4 x double> %i.bc, <4 x double> %i.bd, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.ba, ptr %.1233274, align 1, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %.1233274, i64 32
  store <4 x double> %i.bb, ptr %i.bg, align 1, !tbaa !114
  %i.bh = getelementptr inbounds nuw i8, ptr %.1233274, i64 64
  store <4 x double> %i.be, ptr %i.bh, align 1, !tbaa !114
  %i.bi = getelementptr inbounds nuw i8, ptr %.1233274, i64 96
  store <4 x double> %i.bf, ptr %i.bi, align 1, !tbaa !114
  %i.bj = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.bk = load i32, ptr %2, align 4, !tbaa !81
  %i.bl = shl i32 %i.bj, 3
  %i.bm = mul i32 %i.bl, %i.bk
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %.0251273, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1233274, i64 128 ; 2 uses
  %i.bq = add nuw nsw i32 %.0254272, 8            ; 3 uses
  %i.br = or disjoint i32 %i.bq, 7
  %i.bs = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1848

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre438 = mul nsw i32 %i.bj, %i.z
  %.pre439 = add nsw i32 %.pre438, %.0241293      ; 2 uses
  %.pre441 = shl nsw i32 %.pre439, 3
  %.pre443 = sext i32 %.pre441 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph296
  %.pre-phi444 = phi i64 [ %.pre443, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph296 ]
  %.pre-phi440 = phi i32 [ %.pre439, %._crit_edge.loopexit ], [ %i.am, %.lr.ph296 ] ; 2 uses
  %i.bu = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph296 ]
  %i.bv = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph296 ]
  %i.bw = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph296 ]
  %i.bx = phi i32 [ %i.bs, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph296 ] ; 2 uses
  %.0254.lcssa = phi i32 [ %i.bq, %._crit_edge.loopexit ], [ 0, %.lr.ph296 ] ; 3 uses
  %.0251.lcssa = phi ptr [ %i.bo, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph296 ]
  %.1233.lcssa = phi ptr [ %i.bp, %._crit_edge.loopexit ], [ %.0232294, %.lr.ph296 ] ; 2 uses
  %i.by = sub nsw i64 0, %.pre-phi444
  %i.bz = getelementptr inbounds [2 x i8], ptr %.0251.lcssa, i64 %i.by
  %i.ca = shl nsw i32 %.pre-phi440, 1
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = or disjoint i32 %.0254.lcssa, 1
  %i.ce = icmp slt i32 %i.cd, %i.bx
  br i1 %i.ce, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %._crit_edge, %.lr.ph281
  %.2234279 = phi ptr [ %i.cm, %.lr.ph281 ], [ %.1233.lcssa, %._crit_edge ] ; 2 uses
  %.1252278 = phi ptr [ %i.cl, %.lr.ph281 ], [ %i.cc, %._crit_edge ] ; 2 uses
  %.1255277 = phi i32 [ %i.cn, %.lr.ph281 ], [ %.0254.lcssa, %._crit_edge ]
  %i.cf = load <8 x float>, ptr %.1252278, align 1, !tbaa !114
  store <8 x float> %i.cf, ptr %.2234279, align 1, !tbaa !114
  %i.cg = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.ch = load i32, ptr %2, align 4, !tbaa !81
  %i.ci = shl i32 %i.cg, 1
  %i.cj = mul i32 %i.ci, %i.ch
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %.1252278, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.2234279, i64 32 ; 2 uses
  %i.cn = add nuw nsw i32 %.1255277, 2            ; 3 uses
  %i.co = or disjoint i32 %i.cn, 1
  %i.cp = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !1849

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %.pre445 = mul nsw i32 %i.cg, %i.z
  %.pre447 = add nsw i32 %.pre445, %.0241293      ; 2 uses
  %.pre449 = shl nsw i32 %.pre447, 1
  %.pre451 = sext i32 %.pre449 to i64
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %._crit_edge
  %.pre-phi452 = phi i64 [ %.pre451, %._crit_edge282.loopexit ], [ %i.cb, %._crit_edge ]
  %.pre-phi448 = phi i32 [ %.pre447, %._crit_edge282.loopexit ], [ %.pre-phi440, %._crit_edge ]
  %i.cr = phi i32 [ %i.cg, %._crit_edge282.loopexit ], [ %i.bu, %._crit_edge ]
  %i.cs = phi i32 [ %i.cg, %._crit_edge282.loopexit ], [ %i.bv, %._crit_edge ]
  %i.ct = phi i32 [ %i.cg, %._crit_edge282.loopexit ], [ %i.bw, %._crit_edge ]
  %i.cu = phi i32 [ %i.cp, %._crit_edge282.loopexit ], [ %i.bx, %._crit_edge ] ; 2 uses
  %.1255.lcssa = phi i32 [ %i.cn, %._crit_edge282.loopexit ], [ %.0254.lcssa, %._crit_edge ] ; 2 uses
  %.1252.lcssa = phi ptr [ %i.cl, %._crit_edge282.loopexit ], [ %i.cc, %._crit_edge ]
  %.2234.lcssa = phi ptr [ %i.cm, %._crit_edge282.loopexit ], [ %.1233.lcssa, %._crit_edge ] ; 2 uses
  %i.cv = icmp slt i32 %.1255.lcssa, %i.cu
  br i1 %i.cv, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %._crit_edge282
  %i.cw = sub nsw i64 0, %.pre-phi452
  %i.cx = getelementptr inbounds [2 x i8], ptr %.1252.lcssa, i64 %i.cw
  %i.cy = sext i32 %.pre-phi448 to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.cy
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.3288 = phi ptr [ %i.dg, %.lr.ph290 ], [ %.2234.lcssa, %.lr.ph290.preheader ] ; 2 uses
  %.2253287 = phi ptr [ %i.df, %.lr.ph290 ], [ %i.cz, %.lr.ph290.preheader ] ; 2 uses
  %.2256286 = phi i32 [ %i.dh, %.lr.ph290 ], [ %.1255.lcssa, %.lr.ph290.preheader ]
  %i.da = load <2 x i64>, ptr %.2253287, align 1, !tbaa !114
  store <2 x i64> %i.da, ptr %.3288, align 16, !tbaa !114
  %i.db = load i32, ptr %4, align 4, !tbaa !81    ; 4 uses
  %i.dc = load i32, ptr %2, align 4, !tbaa !81
  %i.dd = mul nsw i32 %i.dc, %i.db
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %.2253287, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.3288, i64 16 ; 2 uses
  %i.dh = add nuw nsw i32 %.2256286, 1            ; 2 uses
  %i.di = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph290, label %._crit_edge291, !llvm.loop !1850

._crit_edge291:                                   ; preds = %.lr.ph290, %._crit_edge282
  %i.dk = phi i32 [ %i.cr, %._crit_edge282 ], [ %i.db, %.lr.ph290 ] ; 2 uses
  %i.dl = phi i32 [ %i.cs, %._crit_edge282 ], [ %i.db, %.lr.ph290 ] ; 2 uses
  %i.dm = phi i32 [ %i.ct, %._crit_edge282 ], [ %i.db, %.lr.ph290 ] ; 3 uses
  %i.dn = phi i32 [ %i.cu, %._crit_edge282 ], [ %i.di, %.lr.ph290 ]
  %.3.lcssa = phi ptr [ %.2234.lcssa, %._crit_edge282 ], [ %i.dg, %.lr.ph290 ] ; 2 uses
  %i.do = add nuw nsw i32 %.0241293, 8            ; 3 uses
  %i.dp = or disjoint i32 %i.do, 7
  %i.dq = icmp slt i32 %i.dp, %i.dm
  br i1 %i.dq, label %.lr.ph296, label %.preheader269, !llvm.loop !1851

.preheader268:                                    ; preds = %._crit_edge323, %.preheader269
  %i.dr = phi i32 [ %i.aa, %.preheader269 ], [ %i.gm, %._crit_edge323 ] ; 2 uses
  %i.ds = phi i32 [ %i.ab, %.preheader269 ], [ %i.gn, %._crit_edge323 ] ; 2 uses
  %i.dt = phi i32 [ %i.ac, %.preheader269 ], [ %i.go, %._crit_edge323 ] ; 2 uses
  %.1242.lcssa = phi i32 [ %.0241.lcssa, %.preheader269 ], [ %i.iq, %._crit_edge323 ] ; 3 uses
  %.4.lcssa = phi ptr [ %.0232.lcssa, %.preheader269 ], [ %.7.lcssa, %._crit_edge323 ] ; 2 uses
  %i.du = or disjoint i32 %.1242.lcssa, 1
  %i.dv = icmp slt i32 %i.du, %i.dt
  br i1 %i.dv, label %.lr.ph358.preheader, label %.preheader

.lr.ph358.preheader:                              ; preds = %.preheader268
  %.pre436 = load i32, ptr %6, align 4, !tbaa !81
  %i.dw = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph358

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %._crit_edge323
  %i.dx = phi i32 [ %i.gm, %._crit_edge323 ], [ %i.aa, %.lr.ph327.preheader ]
  %i.dy = phi i32 [ %i.gn, %._crit_edge323 ], [ %i.ab, %.lr.ph327.preheader ]
  %i.dz = phi i32 [ %i.go, %._crit_edge323 ], [ %i.ac, %.lr.ph327.preheader ] ; 2 uses
  %i.ea = phi i32 [ %i.gp, %._crit_edge323 ], [ %.pre435, %.lr.ph327.preheader ] ; 2 uses
  %.4326 = phi ptr [ %.7.lcssa, %._crit_edge323 ], [ %.0232.lcssa, %.lr.ph327.preheader ] ; 2 uses
  %.1242325 = phi i32 [ %i.iq, %._crit_edge323 ], [ %.0241.lcssa, %.lr.ph327.preheader ] ; 4 uses
  %i.eb = load ptr, ptr %5, align 8, !tbaa !37
  %i.ec = mul nsw i32 %i.dz, %i.af
  %i.ed = add nsw i32 %i.ec, %.1242325            ; 2 uses
  %i.ee = shl nsw i32 %i.ed, 3
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ef ; 2 uses
  %i.eh = icmp sgt i32 %i.ea, 7
  br i1 %i.eh, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %.lr.ph327, %.lr.ph303
  %.5301 = phi ptr [ %i.fk, %.lr.ph303 ], [ %.4326, %.lr.ph327 ] ; 5 uses
  %.0245300 = phi i32 [ %i.fl, %.lr.ph303 ], [ 0, %.lr.ph327 ]
  %.0248299 = phi ptr [ %i.fj, %.lr.ph303 ], [ %i.eg, %.lr.ph327 ] ; 5 uses
  %i.ei = load <4 x i32>, ptr %.0248299, align 16, !tbaa !114 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0248299, i64 16
  %i.ek = load <4 x i32>, ptr %i.ej, align 16, !tbaa !114 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0248299, i64 32
  %i.em = load <4 x i32>, ptr %i.el, align 16, !tbaa !114 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0248299, i64 48
  %i.eo = load <4 x i32>, ptr %i.en, align 16, !tbaa !114 ; 2 uses
  %i.ep = shufflevector <4 x i32> %i.ei, <4 x i32> %i.ek, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.eq = bitcast <4 x i32> %i.ep to <2 x i64>    ; 2 uses
  %i.er = shufflevector <4 x i32> %i.ei, <4 x i32> %i.ek, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>    ; 2 uses
  %i.et = shufflevector <4 x i32> %i.em, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.eu = bitcast <4 x i32> %i.et to <2 x i64>    ; 2 uses
  %i.ev = shufflevector <4 x i32> %i.em, <4 x i32> %i.eo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>    ; 2 uses
  %i.ex = shufflevector <2 x i64> %i.eq, <2 x i64> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.ey = shufflevector <2 x i64> %i.eq, <2 x i64> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.ez = shufflevector <2 x i64> %i.es, <2 x i64> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x i64> %i.es, <2 x i64> %i.ew, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.ex, ptr %.5301, align 1, !tbaa !114
  %i.fb = getelementptr inbounds nuw i8, ptr %.5301, i64 16
  store <2 x i64> %i.ey, ptr %i.fb, align 1, !tbaa !114
  %i.fc = getelementptr inbounds nuw i8, ptr %.5301, i64 32
  store <2 x i64> %i.ez, ptr %i.fc, align 1, !tbaa !114
  %i.fd = getelementptr inbounds nuw i8, ptr %.5301, i64 48
  store <2 x i64> %i.fa, ptr %i.fd, align 1, !tbaa !114
  %i.fe = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.ff = load i32, ptr %2, align 4, !tbaa !81
  %i.fg = shl i32 %i.fe, 3
  %i.fh = mul i32 %i.fg, %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %.0248299, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.5301, i64 64 ; 2 uses
  %i.fl = add nuw nsw i32 %.0245300, 8            ; 3 uses
  %i.fm = or disjoint i32 %i.fl, 7
  %i.fn = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph303, label %._crit_edge304.loopexit, !llvm.loop !1852

._crit_edge304.loopexit:                          ; preds = %.lr.ph303
  %.pre453 = mul nsw i32 %i.fe, %i.af
  %.pre455 = add nsw i32 %.pre453, %.1242325      ; 2 uses
  %.pre457 = shl nsw i32 %.pre455, 3
end_hunk_0
begin_hunk_1_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.eoh = insertelement <4 x float> poison, float %i.eog, i64 0
  %i.eoi = shufflevector <4 x float> %i.eoh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eof, i64 4
  %i.eok = load float, ptr %i.eoj, align 4, !tbaa !56
  %i.eol = insertelement <4 x float> poison, float %i.eok, i64 0
  %i.eom = shufflevector <4 x float> %i.eol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eon = fmul fast <4 x float> %i.eoi, %.13879
  %i.eoo = fadd fast <4 x float> %i.eon, %i.eom
  %i.eop = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eoo, <4 x float> zeroinitializer)
  %i.eoq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eop, <4 x float> splat (float 1.000000e+00))
  %i.eor = fmul fast <4 x float> %i.eoq, %.13879
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit957

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit957:   ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.0.i956 = phi nsz <4 x float> [ %i.eor, %bb.bn ], [ %i.ejb, %bb.bi ], [ %i.ejj, %bb.bj ], [ %i.ejt, %bb.bk ], [ %i.ekv, %bb.bl ], [ %i.eoe, %bb.bm ], [ %.13879, %bb.bh ] ; 2 uses
  switch i32 %i.b, label %bb.bq [
    i32 4, label %.thread4580
    i32 1, label %bb.bo
  ]

.thread4580:                                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit957
  %i.eos = bitcast <4 x float> %.0.i956 to <4 x i32>
  %i.eot = lshr <4 x i32> %i.eos, splat (i32 16)
  %i.eou = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eot, <4 x i32> poison)
  %i.eov = bitcast <8 x i16> %i.eou to <2 x i64>
  %i.eow = extractelement <2 x i64> %i.eov, i64 0
  store i64 %i.eow, ptr %.88564892, align 1, !tbaa !114
  %i.eox = getelementptr inbounds nuw i8, ptr %.88564892, i64 8
  br label %bb.bq

bb.bo:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit957
  %i.eoy = bitcast <4 x float> %.0.i956 to <8 x i16> ; 4 uses
  %i.eoz = extractelement <8 x i16> %i.eoy, i64 1
  store i16 %i.eoz, ptr %.88564892, align 2, !tbaa !116
  %i.epa = extractelement <8 x i16> %i.eoy, i64 3
  %i.epb = getelementptr inbounds i8, ptr %.88564892, i64 %i.ap
  store i16 %i.epa, ptr %i.epb, align 2, !tbaa !116
  %i.epc = extractelement <8 x i16> %i.eoy, i64 5
  %i.epd = getelementptr inbounds [2 x i8], ptr %.88564892, i64 %i.ar
  store i16 %i.epc, ptr %i.epd, align 2, !tbaa !116
  %i.epe = extractelement <8 x i16> %i.eoy, i64 7
  %i.epf = getelementptr inbounds i8, ptr %.88564892, i64 %i.as
  store i16 %i.epe, ptr %i.epf, align 2, !tbaa !116
  %i.epg = getelementptr inbounds nuw i8, ptr %.88564892, i64 2
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge4889
  store <4 x float> %.03878.lcssa, ptr %.78054895, align 16, !tbaa !114
  br label %bb.bq

bb.bq:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit957, %.thread4580, %bb.bo, %bb.bp
  %.10858 = phi ptr [ %i.epg, %bb.bo ], [ %.88564892, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit957 ], [ %.88564892, %bb.bp ], [ %i.eox, %.thread4580 ]
  %i.eph = getelementptr inbounds nuw i8, ptr %.78054895, i64 16 ; 2 uses
  %i.epi = add nuw nsw i32 %.28414894, 1          ; 2 uses
  %exitcond5115.not = icmp eq i32 %i.epi, %5
  br i1 %exitcond5115.not, label %._crit_edge4897, label %bb.bc, !llvm.loop !2469

._crit_edge4897:                                  ; preds = %bb.bq, %.preheader4750
  %.7805.lcssa = phi ptr [ %.6804.lcssa, %.preheader4750 ], [ %i.eph, %bb.bq ] ; 2 uses
  %i.epj = getelementptr inbounds [2 x i8], ptr %.17704902, i64 %i.au ; 2 uses
  %indvars.iv.next5117 = add nuw nsw i64 %indvars.iv5116, 4 ; 3 uses
  %i.epk = icmp slt i64 %indvars.iv.next5117, %invariant.op
  br i1 %i.epk, label %bb.aj, label %.preheader4749.loopexit, !llvm.loop !2470

.preheader4746.loopexit:                          ; preds = %._crit_edge4965
  %i.epl = trunc nsw i64 %indvars.iv.next5127 to i32
  br label %.preheader4746

.preheader4746:                                   ; preds = %.preheader4746.loopexit, %.preheader4749
  %.2808.lcssa = phi i32 [ %.1807.lcssa, %.preheader4749 ], [ %i.epl, %.preheader4746.loopexit ] ; 2 uses
  %.8.lcssa = phi ptr [ %.4802.lcssa, %.preheader4749 ], [ %.11.lcssa, %.preheader4746.loopexit ]
  %.4796.lcssa = phi ptr [ %.2794.lcssa, %.preheader4749 ], [ %.5797, %.preheader4746.loopexit ]
  %.2771.lcssa = phi ptr [ %.1770.lcssa, %.preheader4749 ], [ %i.gga, %.preheader4746.loopexit ]
  %i.epm = icmp slt i32 %.2808.lcssa, %3
  br i1 %i.epm, label %.lr.ph5033, label %._crit_edge5034

.lr.ph5033:                                       ; preds = %.preheader4746
  %i.epn = sext i32 %4 to i64
  %i.epo = sext i32 %2 to i64                     ; 2 uses
  %i.epp = icmp sgt i32 %5, 7
  %i.epq = icmp ne i32 %6, 0                      ; 4 uses
  %i.epr = icmp sgt i32 %7, 0                     ; 3 uses
  %i.eps = sext i32 %7 to i64
  %i.ept = add i32 %7, -1
  %i.epu = zext i32 %i.ept to i64                 ; 3 uses
  %i.epv = shl nuw nsw i64 %i.epu, 4
  %i.epw = and i32 %5, -8
  %i.epx = shl nuw nsw i64 %i.epu, 3
  %i.epy = shl nuw nsw i64 %i.epu, 1
  %i.epz = sext i32 %.2808.lcssa to i64
  %sext5166 = shl i64 %i.d, 32
  %i.eqa = ashr exact i64 %sext5166, 32
  %wide.trip.count = sext i32 %3 to i64
  %i.eqb = zext i32 %7 to i64                     ; 5 uses
  %xtraiter5390 = and i32 %7, 1
  %i.eqc = icmp eq i32 %7, 1
  %unroll_iter5394 = and i32 %7, 2147483646
  %lcmp.mod5391.not = icmp eq i32 %xtraiter5390, 0
  %lcmp.mod5393 = trunc i32 %7 to i1
  %min.iters.check5282 = icmp ult i32 %7, 4
  %min.iters.check5283 = icmp ult i32 %7, 32
  %i.eqd = and i64 %i.eqb, 28
  %n.vec5285 = and i64 %i.eqb, 2147483616         ; 5 uses
  %i.eqe = trunc nuw nsw i64 %n.vec5285 to i32
  %i.eqf = shl nuw nsw i64 %n.vec5285, 1          ; 2 uses
  %cmp.n5307 = icmp eq i64 %n.vec5285, %i.eqb
  %min.epilog.iters.check = icmp eq i64 %i.eqd, 0
  %n.vec5309 = and i64 %i.eqb, 2147483644         ; 4 uses
  %i.eqg = trunc nuw nsw i64 %n.vec5309 to i32
  %i.eqh = shl nuw nsw i64 %n.vec5309, 1          ; 2 uses
  %cmp.n5317 = icmp eq i64 %n.vec5309, %i.eqb
  br label %bb.cv

bb.br:                                            ; preds = %.lr.ph4971, %._crit_edge4965
  %indvars.iv5126 = phi i64 [ %i.cjc, %.lr.ph4971 ], [ %indvars.iv.next5127, %._crit_edge4965 ] ; 3 uses
  %.27714970 = phi ptr [ %.1770.lcssa, %.lr.ph4971 ], [ %i.gga, %._crit_edge4965 ] ; 8 uses
  %.47964969 = phi ptr [ %.2794.lcssa, %.lr.ph4971 ], [ %.5797, %._crit_edge4965 ]
  %.84968 = phi ptr [ %.4802.lcssa, %.lr.ph4971 ], [ %.11.lcssa, %._crit_edge4965 ] ; 2 uses
  %i.eqi = load ptr, ptr %1, align 8, !tbaa !37
  %i.eqj = add nsw i64 %indvars.iv5126, %i.cip
  %i.eqk = mul nsw i64 %i.eqj, %i.cje
  %i.eql = getelementptr inbounds [2 x i8], ptr %i.eqi, i64 %i.eqk
  %i.eqm = getelementptr inbounds [2 x i8], ptr %i.eql, i64 %i.cio ; 2 uses
  %.not867 = icmp eq ptr %.47964969, null
  %i.eqn = load ptr, ptr %0, align 8
  %i.eqo = getelementptr inbounds [4 x i8], ptr %i.eqn, i64 %i.cip
  %i.eqp = getelementptr inbounds nuw [4 x i8], ptr %i.eqo, i64 %indvars.iv5126 ; 6 uses
  %.5797 = select i1 %.not867, ptr null, ptr %i.eqp ; 5 uses
  br i1 %i.ciq, label %.lr.ph4924, label %.preheader4748

.lr.ph4924:                                       ; preds = %bb.br
  %.not873 = icmp eq ptr %.5797, null
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.eqp, i64 4
  br label %bb.bs

.preheader4748:                                   ; preds = %bb.bz, %bb.br
  %.9.lcssa = phi ptr [ %.84968, %bb.br ], [ %i.fnd, %bb.bz ] ; 2 uses
  %.0784.lcssa = phi ptr [ %i.eqm, %bb.br ], [ %.1785, %bb.bz ] ; 2 uses
  %.0778.lcssa = phi ptr [ %.0.val1, %bb.br ], [ %.1779.lcssa, %bb.bz ] ; 2 uses
  %.0775.lcssa = phi i32 [ 0, %bb.br ], [ %i.ciz, %bb.bz ] ; 3 uses
  %i.eqr = or disjoint i32 %.0775.lcssa, 3
  %i.eqs = icmp slt i32 %i.eqr, %5
  br i1 %i.eqs, label %.lr.ph4944, label %.preheader4747

.lr.ph4944:                                       ; preds = %.preheader4748
  %.not870 = icmp eq ptr %.5797, null
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.eqp, i64 4
  br label %bb.ca

bb.bs:                                            ; preds = %.lr.ph4924, %bb.bz
  %.07754922 = phi i32 [ 0, %.lr.ph4924 ], [ %i.fne, %bb.bz ]
  %.07784921 = phi ptr [ %.0.val1, %.lr.ph4924 ], [ %.1779.lcssa, %bb.bz ] ; 3 uses
  %.07844920 = phi ptr [ %i.eqm, %.lr.ph4924 ], [ %.1785, %bb.bz ] ; 4 uses
  %.94919 = phi ptr [ %.84968, %.lr.ph4924 ], [ %i.fnd, %bb.bz ] ; 5 uses
  br i1 %i.cir, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.equ = load <8 x float>, ptr %.94919, align 32, !tbaa !114
  %i.eqv = getelementptr inbounds nuw i8, ptr %.94919, i64 32
  %i.eqw = load <8 x float>, ptr %i.eqv, align 32, !tbaa !114
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.03865 = phi nsz <8 x float> [ %i.equ, %bb.bt ], [ zeroinitializer, %bb.bs ] ; 2 uses
  %storemerge872 = phi <8 x float> [ %i.eqw, %bb.bt ], [ zeroinitializer, %bb.bs ] ; 2 uses
  br i1 %i.cis, label %.lr.ph4914, label %._crit_edge4915

.lr.ph4914:                                       ; preds = %bb.bu, %.lr.ph4914
  %.07734912 = phi i32 [ %i.ero, %.lr.ph4914 ], [ 0, %bb.bu ]
  %.07744911 = phi ptr [ %i.erm, %.lr.ph4914 ], [ %.27714970, %bb.bu ] ; 2 uses
  %.17794910 = phi ptr [ %i.ern, %.lr.ph4914 ], [ %.07784921, %bb.bu ] ; 2 uses
  %.038644909 = phi <8 x float> [ %i.erl, %.lr.ph4914 ], [ %storemerge872, %bb.bu ]
  %.138664908 = phi <8 x float> [ %i.erk, %.lr.ph4914 ], [ %.03865, %bb.bu ]
  %i.eqx = load float, ptr %.07744911, align 1, !tbaa !114
  %i.eqy = insertelement <4 x float> poison, float %i.eqx, i64 0
  %i.eqz = bitcast <4 x float> %i.eqy to <8 x i16> ; 2 uses
  %i.era = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eqz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.erb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eqz, <8 x i32> <i32 4, i32 8, i32 5, i32 9, i32 6, i32 8, i32 7, i32 9>
  %i.erc = shufflevector <8 x i16> %i.era, <8 x i16> %i.erb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.erd = bitcast <16 x i16> %i.erc to <8 x float> ; 2 uses
  %i.ere = shufflevector <8 x float> %i.erd, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.erf = load <8 x i16>, ptr %.17794910, align 1, !tbaa !114 ; 2 uses
  %i.erg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.erf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.erh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.erf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eri = shufflevector <8 x i16> %i.erg, <8 x i16> %i.erh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.erj = bitcast <16 x i16> %i.eri to <8 x float> ; 2 uses
  %i.erk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erd, <8 x float> nofpclass(nan inf) %i.erj, <8 x float> nofpclass(nan inf) %.138664908) ; 2 uses
  %i.erl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ere, <8 x float> nofpclass(nan inf) %i.erj, <8 x float> nofpclass(nan inf) %.038644909) ; 2 uses
  %i.erm = getelementptr inbounds nuw i8, ptr %.07744911, i64 4
  %i.ern = getelementptr inbounds nuw i8, ptr %.17794910, i64 16
  %i.ero = add nuw nsw i32 %.07734912, 1          ; 2 uses
  %exitcond5120.not = icmp eq i32 %i.ero, %7
  br i1 %exitcond5120.not, label %._crit_edge4915.loopexit, label %.lr.ph4914, !llvm.loop !2471

._crit_edge4915.loopexit:                         ; preds = %.lr.ph4914
  %i.erp = getelementptr i8, ptr %.07784921, i64 %i.ciy
  %scevgep5119 = getelementptr i8, ptr %i.erp, i64 16
  br label %._crit_edge4915

._crit_edge4915:                                  ; preds = %._crit_edge4915.loopexit, %bb.bu
  %.13866.lcssa = phi <8 x float> [ %.03865, %bb.bu ], [ %i.erk, %._crit_edge4915.loopexit ] ; 4 uses
  %.03864.lcssa = phi <8 x float> [ %storemerge872, %bb.bu ], [ %i.erl, %._crit_edge4915.loopexit ] ; 4 uses
  %.1779.lcssa = phi ptr [ %.07784921, %bb.bu ], [ %scevgep5119, %._crit_edge4915.loopexit ] ; 2 uses
  br i1 %8, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %._crit_edge4915
  %i.erq = shufflevector <8 x float> %.13866.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.err = shufflevector <8 x float> %.03864.lcssa, <8 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ers = shufflevector <4 x float> %i.erq, <4 x float> %i.err, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ert = shufflevector <4 x float> %i.erq, <4 x float> %i.err, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eru = shufflevector <4 x float> %i.ers, <4 x float> %i.ert, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %11 = shufflevector <8 x float> %.13866.lcssa, <8 x float> %.03864.lcssa, <4 x i32> <i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %i.erv = shufflevector <4 x float> %i.ers, <4 x float> %i.ert, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %12 = shufflevector <8 x float> %.13866.lcssa, <8 x float> %.03864.lcssa, <4 x i32> <i32 5, i32 12, i32 7, i32 14>
  %i.erw = shufflevector <4 x float> %i.erv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.erx = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  br i1 %.not873, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ery = load float, ptr %i.eqp, align 4, !tbaa !56
  %i.erz = insertelement <4 x float> poison, float %i.ery, i64 0
  %i.esa = shufflevector <4 x float> %i.erz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.esb = load float, ptr %i.eqq, align 4, !tbaa !56
  %i.esc = insertelement <4 x float> poison, float %i.esb, i64 0
  %i.esd = shufflevector <4 x float> %i.esc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ese = fadd fast <4 x float> %i.esa, %i.eru
  %i.esf = fadd fast <4 x float> %i.esa, %11
  %i.esg = fadd fast <4 x float> %i.esd, %i.erw
  %i.esh = fadd fast <4 x float> %i.esd, %i.erx
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.03850 = phi nsz <4 x float> [ %i.eru, %bb.bv ], [ %i.ese, %bb.bw ] ; 10 uses
  %.03849 = phi nsz <4 x float> [ %11, %bb.bv ], [ %i.esf, %bb.bw ] ; 10 uses
  %.03848 = phi nsz <4 x float> [ %i.erw, %bb.bv ], [ %i.esg, %bb.bw ] ; 10 uses
  %.03847 = phi nsz <4 x float> [ %i.erx, %bb.bv ], [ %i.esh, %bb.bw ] ; 10 uses
  switch i32 %9, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread: ; preds = %bb.bx
  %i.esi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03850, <4 x float> zeroinitializer)
  %i.esj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03849, <4 x float> zeroinitializer)
  %i.esk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03848, <4 x float> zeroinitializer)
  %i.esl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03847, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585: ; preds = %bb.bx
  %i.esm = load ptr, ptr %10, align 8, !tbaa !37
  %i.esn = load float, ptr %i.esm, align 4, !tbaa !56
  %i.eso = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03850)
  %i.esp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03850)
  %i.esq = insertelement <4 x float> poison, float %i.esn, i64 0
  %i.esr = shufflevector <4 x float> %i.esq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ess = fmul fast <4 x float> %i.esr, %i.esp
  %i.est = fadd fast <4 x float> %i.ess, %i.eso
  %i.esu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03849)
  %i.esv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03849)
  %i.esw = fmul fast <4 x float> %i.esr, %i.esv
  %i.esx = fadd fast <4 x float> %i.esw, %i.esu
  %i.esy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03848)
  %i.esz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03848)
  %i.eta = fmul fast <4 x float> %i.esr, %i.esz
  %i.etb = fadd fast <4 x float> %i.eta, %i.esy
  %i.etc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03847)
  %i.etd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.03847)
  %i.ete = fmul fast <4 x float> %i.esr, %i.etd
  %i.etf = fadd fast <4 x float> %i.ete, %i.etc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588: ; preds = %bb.bx
  %i.etg = load ptr, ptr %10, align 8, !tbaa !37  ; 2 uses
  %i.eth = load float, ptr %i.etg, align 4, !tbaa !56
  %i.eti = insertelement <4 x float> poison, float %i.eth, i64 0
  %i.etj = shufflevector <4 x float> %i.eti, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.etk = getelementptr inbounds nuw i8, ptr %i.etg, i64 4
  %i.etl = load float, ptr %i.etk, align 4, !tbaa !56
  %i.etm = insertelement <4 x float> poison, float %i.etl, i64 0
  %i.etn = shufflevector <4 x float> %i.etm, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.eto = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03850, <4 x float> nofpclass(nan inf) %i.etj)
  %i.etp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eto, <4 x float> nofpclass(nan inf) %i.etn)
  %i.etq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03849, <4 x float> nofpclass(nan inf) %i.etj)
  %i.etr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.etq, <4 x float> nofpclass(nan inf) %i.etn)
  %i.ets = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03848, <4 x float> nofpclass(nan inf) %i.etj)
  %i.ett = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ets, <4 x float> nofpclass(nan inf) %i.etn)
  %i.etu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03847, <4 x float> nofpclass(nan inf) %i.etj)
  %i.etv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.etu, <4 x float> nofpclass(nan inf) %i.etn)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591: ; preds = %bb.bx
  %i.etw = fneg fast <4 x float> %.03850
  %i.etx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.etw, <4 x float> splat (float f0x42B0C0A5))
  %i.ety = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.etx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.etz = fmul fast <4 x float> %i.ety, splat (float f0x3FB8AA3B)
  %i.eua = fadd fast <4 x float> %i.etz, splat (float 5.000000e-01) ; 2 uses
  %i.eub = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eua)
  %i.euc = sitofp fast <4 x i32> %i.eub to <4 x float> ; 2 uses
  %i.eud = fcmp fast olt <4 x float> %i.eua, %i.euc
  %i.eue = select <4 x i1> %i.eud, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.euf = fsub fast <4 x float> %i.euc, %i.eue   ; 2 uses
  %i.eug = fneg fast <4 x float> %i.euf           ; 2 uses
  %i.euh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eug, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ety)
  %i.eui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eug, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.euh) ; 8 uses
  %i.euj = fmul fast <4 x float> %i.eui, %i.eui
  %i.euk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eui, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.eul = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.euk, <4 x float> nofpclass(nan inf) %i.eui, <4 x float> splat (float f0x3C088908))
  %i.eum = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eul, <4 x float> nofpclass(nan inf) %i.eui, <4 x float> splat (float f0x3D2AA9C1))
  %i.eun = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eum, <4 x float> nofpclass(nan inf) %i.eui, <4 x float> splat (float f0x3E2AAAAA))
  %i.euo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eun, <4 x float> nofpclass(nan inf) %i.eui, <4 x float> splat (float 5.000000e-01))
  %i.eup = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.euo, <4 x float> nofpclass(nan inf) %i.euj, <4 x float> nofpclass(nan inf) %i.eui)
  %i.euq = fadd fast <4 x float> %i.eup, splat (float 1.000000e+00)
  %i.eur = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.euf)
  %i.eus = shl <4 x i32> %i.eur, splat (i32 23)
  %i.eut = add <4 x i32> %i.eus, splat (i32 1065353216)
  %i.euu = bitcast <4 x i32> %i.eut to <4 x float>
  %i.euv = fmul fast <4 x float> %i.euq, %i.euu
  %i.euw = fadd fast <4 x float> %i.euv, splat (float 1.000000e+00)
  %i.eux = fdiv fast <4 x float> splat (float 1.000000e+00), %i.euw
  %i.euy = fneg fast <4 x float> %.03849
  %i.euz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.euy, <4 x float> splat (float f0x42B0C0A5))
  %i.eva = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.euz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.evb = fmul fast <4 x float> %i.eva, splat (float f0x3FB8AA3B)
  %i.evc = fadd fast <4 x float> %i.evb, splat (float 5.000000e-01) ; 2 uses
  %i.evd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.evc)
  %i.eve = sitofp fast <4 x i32> %i.evd to <4 x float> ; 2 uses
  %i.evf = fcmp fast olt <4 x float> %i.evc, %i.eve
  %i.evg = select <4 x i1> %i.evf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.evh = fsub fast <4 x float> %i.eve, %i.evg   ; 2 uses
  %i.evi = fneg fast <4 x float> %i.evh           ; 2 uses
  %i.evj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.evi, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.eva)
  %i.evk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.evi, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.evj) ; 8 uses
  %i.evl = fmul fast <4 x float> %i.evk, %i.evk
  %i.evm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evk, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.evn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evm, <4 x float> nofpclass(nan inf) %i.evk, <4 x float> splat (float f0x3C088908))
  %i.evo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evn, <4 x float> nofpclass(nan inf) %i.evk, <4 x float> splat (float f0x3D2AA9C1))
  %i.evp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evo, <4 x float> nofpclass(nan inf) %i.evk, <4 x float> splat (float f0x3E2AAAAA))
  %i.evq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evp, <4 x float> nofpclass(nan inf) %i.evk, <4 x float> splat (float 5.000000e-01))
  %i.evr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evq, <4 x float> nofpclass(nan inf) %i.evl, <4 x float> nofpclass(nan inf) %i.evk)
  %i.evs = fadd fast <4 x float> %i.evr, splat (float 1.000000e+00)
  %i.evt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.evh)
  %i.evu = shl <4 x i32> %i.evt, splat (i32 23)
  %i.evv = add <4 x i32> %i.evu, splat (i32 1065353216)
  %i.evw = bitcast <4 x i32> %i.evv to <4 x float>
  %i.evx = fmul fast <4 x float> %i.evs, %i.evw
  %i.evy = fadd fast <4 x float> %i.evx, splat (float 1.000000e+00)
  %i.evz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.evy
  %i.ewa = fneg fast <4 x float> %.03848
  %i.ewb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ewa, <4 x float> splat (float f0x42B0C0A5))
  %i.ewc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ewb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ewd = fmul fast <4 x float> %i.ewc, splat (float f0x3FB8AA3B)
  %i.ewe = fadd fast <4 x float> %i.ewd, splat (float 5.000000e-01) ; 2 uses
  %i.ewf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ewe)
  %i.ewg = sitofp fast <4 x i32> %i.ewf to <4 x float> ; 2 uses
  %i.ewh = fcmp fast olt <4 x float> %i.ewe, %i.ewg
  %i.ewi = select <4 x i1> %i.ewh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ewj = fsub fast <4 x float> %i.ewg, %i.ewi   ; 2 uses
  %i.ewk = fneg fast <4 x float> %i.ewj           ; 2 uses
  %i.ewl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ewk, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ewc)
  %i.ewm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ewk, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ewl) ; 8 uses
  %i.ewn = fmul fast <4 x float> %i.ewm, %i.ewm
  %i.ewo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewm, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ewp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewo, <4 x float> nofpclass(nan inf) %i.ewm, <4 x float> splat (float f0x3C088908))
  %i.ewq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewp, <4 x float> nofpclass(nan inf) %i.ewm, <4 x float> splat (float f0x3D2AA9C1))
  %i.ewr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewq, <4 x float> nofpclass(nan inf) %i.ewm, <4 x float> splat (float f0x3E2AAAAA))
  %i.ews = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewr, <4 x float> nofpclass(nan inf) %i.ewm, <4 x float> splat (float 5.000000e-01))
  %i.ewt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ews, <4 x float> nofpclass(nan inf) %i.ewn, <4 x float> nofpclass(nan inf) %i.ewm)
  %i.ewu = fadd fast <4 x float> %i.ewt, splat (float 1.000000e+00)
  %i.ewv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ewj)
  %i.eww = shl <4 x i32> %i.ewv, splat (i32 23)
  %i.ewx = add <4 x i32> %i.eww, splat (i32 1065353216)
  %i.ewy = bitcast <4 x i32> %i.ewx to <4 x float>
  %i.ewz = fmul fast <4 x float> %i.ewu, %i.ewy
  %i.exa = fadd fast <4 x float> %i.ewz, splat (float 1.000000e+00)
  %i.exb = fdiv fast <4 x float> splat (float 1.000000e+00), %i.exa
  %i.exc = fneg fast <4 x float> %.03847
  %i.exd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.exc, <4 x float> splat (float f0x42B0C0A5))
  %i.exe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.exd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.exf = fmul fast <4 x float> %i.exe, splat (float f0x3FB8AA3B)
  %i.exg = fadd fast <4 x float> %i.exf, splat (float 5.000000e-01) ; 2 uses
  %i.exh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.exg)
  %i.exi = sitofp fast <4 x i32> %i.exh to <4 x float> ; 2 uses
  %i.exj = fcmp fast olt <4 x float> %i.exg, %i.exi
  %i.exk = select <4 x i1> %i.exj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.exl = fsub fast <4 x float> %i.exi, %i.exk   ; 2 uses
  %i.exm = fneg fast <4 x float> %i.exl           ; 2 uses
  %i.exn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.exm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.exe)
  %i.exo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.exm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.exn) ; 8 uses
  %i.exp = fmul fast <4 x float> %i.exo, %i.exo
  %i.exq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exo, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.exr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exq, <4 x float> nofpclass(nan inf) %i.exo, <4 x float> splat (float f0x3C088908))
  %i.exs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exr, <4 x float> nofpclass(nan inf) %i.exo, <4 x float> splat (float f0x3D2AA9C1))
  %i.ext = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exs, <4 x float> nofpclass(nan inf) %i.exo, <4 x float> splat (float f0x3E2AAAAA))
  %i.exu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ext, <4 x float> nofpclass(nan inf) %i.exo, <4 x float> splat (float 5.000000e-01))
  %i.exv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exu, <4 x float> nofpclass(nan inf) %i.exp, <4 x float> nofpclass(nan inf) %i.exo)
  %i.exw = fadd fast <4 x float> %i.exv, splat (float 1.000000e+00)
  %i.exx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.exl)
  %i.exy = shl <4 x i32> %i.exx, splat (i32 23)
  %i.exz = add <4 x i32> %i.exy, splat (i32 1065353216)
  %i.eya = bitcast <4 x i32> %i.exz to <4 x float>
  %i.eyb = fmul fast <4 x float> %i.exw, %i.eya
  %i.eyc = fadd fast <4 x float> %i.eyb, splat (float 1.000000e+00)
  %i.eyd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eyc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594: ; preds = %bb.bx
  %i.eye = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.03850, <4 x float> splat (float f0x42B0C0A5))
  %i.eyf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eye, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eyg = fmul fast <4 x float> %i.eyf, splat (float f0x3FB8AA3B)
  %i.eyh = fadd fast <4 x float> %i.eyg, splat (float 5.000000e-01) ; 2 uses
  %i.eyi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eyh)
  %i.eyj = sitofp fast <4 x i32> %i.eyi to <4 x float> ; 2 uses
  %i.eyk = fcmp fast olt <4 x float> %i.eyh, %i.eyj
  %i.eyl = select <4 x i1> %i.eyk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eym = fsub fast <4 x float> %i.eyj, %i.eyl   ; 2 uses
  %i.eyn = fneg fast <4 x float> %i.eym           ; 2 uses
  %i.eyo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eyn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.eyf)
  %i.eyp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eyn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eyo) ; 8 uses
  %i.eyq = fmul fast <4 x float> %i.eyp, %i.eyp
  %i.eyr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyp, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.eys = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyr, <4 x float> nofpclass(nan inf) %i.eyp, <4 x float> splat (float f0x3C088908))
  %i.eyt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eys, <4 x float> nofpclass(nan inf) %i.eyp, <4 x float> splat (float f0x3D2AA9C1))
  %i.eyu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyt, <4 x float> nofpclass(nan inf) %i.eyp, <4 x float> splat (float f0x3E2AAAAA))
  %i.eyv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyu, <4 x float> nofpclass(nan inf) %i.eyp, <4 x float> splat (float 5.000000e-01))
  %i.eyw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyv, <4 x float> nofpclass(nan inf) %i.eyq, <4 x float> nofpclass(nan inf) %i.eyp)
  %i.eyx = fadd fast <4 x float> %i.eyw, splat (float 1.000000e+00)
  %i.eyy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eym)
  %i.eyz = shl <4 x i32> %i.eyy, splat (i32 23)
  %i.eza = add <4 x i32> %i.eyz, splat (i32 1065353216)
  %i.ezb = bitcast <4 x i32> %i.eza to <4 x float>
end_hunk_1
begin_hunk_2_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.fkz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fky, <4 x float> nofpclass(nan inf) %i.fkw, <4 x float> splat (float f0x3C088908))
  %i.fla = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fkz, <4 x float> nofpclass(nan inf) %i.fkw, <4 x float> splat (float f0x3D2AA9C1))
  %i.flb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fla, <4 x float> nofpclass(nan inf) %i.fkw, <4 x float> splat (float f0x3E2AAAAA))
  %i.flc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.flb, <4 x float> nofpclass(nan inf) %i.fkw, <4 x float> splat (float 5.000000e-01))
  %i.fld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.flc, <4 x float> nofpclass(nan inf) %i.fkx, <4 x float> nofpclass(nan inf) %i.fkw)
  %i.fle = fadd fast <4 x float> %i.fld, splat (float 1.000000e+00)
  %i.flf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fkt)
  %i.flg = shl <4 x i32> %i.flf, splat (i32 23)
  %i.flh = add <4 x i32> %i.flg, splat (i32 1065353216)
  %i.fli = bitcast <4 x i32> %i.flh to <4 x float>
  %i.flj = fmul fast <4 x float> %i.fle, %i.fli
  %i.flk = fadd fast <4 x float> %i.flj, splat (float 1.000000e+00)
  %i.fll = fdiv fast <4 x float> splat (float 2.000000e+00), %i.flk
  %i.flm = fadd fast <4 x float> %i.fll, splat (float -1.000000e+00)
  %i.fln = fmul fast <4 x float> %i.flm, %.03847
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597: ; preds = %bb.bx
  %i.flo = load ptr, ptr %10, align 8, !tbaa !37  ; 2 uses
  %i.flp = load float, ptr %i.flo, align 4, !tbaa !56
  %i.flq = insertelement <4 x float> poison, float %i.flp, i64 0
  %i.flr = shufflevector <4 x float> %i.flq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fls = getelementptr inbounds nuw i8, ptr %i.flo, i64 4
  %i.flt = load float, ptr %i.fls, align 4, !tbaa !56
  %i.flu = insertelement <4 x float> poison, float %i.flt, i64 0
  %i.flv = shufflevector <4 x float> %i.flu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.flw = fmul fast <4 x float> %i.flr, %.03850
  %i.flx = fadd fast <4 x float> %i.flw, %i.flv
  %i.fly = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.flx, <4 x float> zeroinitializer)
  %i.flz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fly, <4 x float> splat (float 1.000000e+00))
  %i.fma = fmul fast <4 x float> %i.flz, %.03850
  %i.fmb = fmul fast <4 x float> %i.flr, %.03849
  %i.fmc = fadd fast <4 x float> %i.fmb, %i.flv
  %i.fmd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fmc, <4 x float> zeroinitializer)
  %i.fme = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fmd, <4 x float> splat (float 1.000000e+00))
  %i.fmf = fmul fast <4 x float> %i.fme, %.03849
  %i.fmg = fmul fast <4 x float> %i.flr, %.03848
  %i.fmh = fadd fast <4 x float> %i.fmg, %i.flv
  %i.fmi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fmh, <4 x float> zeroinitializer)
  %i.fmj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fmi, <4 x float> splat (float 1.000000e+00))
  %i.fmk = fmul fast <4 x float> %i.fmj, %.03848
  %i.fml = fmul fast <4 x float> %i.flr, %.03847
  %i.fmm = fadd fast <4 x float> %i.fml, %i.flv
  %i.fmn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fmm, <4 x float> zeroinitializer)
  %i.fmo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fmn, <4 x float> splat (float 1.000000e+00))
  %i.fmp = fmul fast <4 x float> %i.fmo, %.03847
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949:   ; preds = %bb.bx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597
  %.0.i9504639 = phi <4 x float> [ %i.fmk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597 ], [ %i.esk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread ], [ %i.etb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585 ], [ %i.ett, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588 ], [ %i.exb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591 ], [ %i.fie, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594 ], [ %.03848, %bb.bx ]
  %.0.i954458446034637 = phi <4 x float> [ %i.fma, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597 ], [ %i.esi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread ], [ %i.est, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585 ], [ %i.etp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588 ], [ %i.eux, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591 ], [ %i.fbm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594 ], [ %.03850, %bb.bx ]
  %.0.i95246054635 = phi <4 x float> [ %i.fmf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597 ], [ %i.esj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread ], [ %i.esx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585 ], [ %i.etr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588 ], [ %i.evz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591 ], [ %i.fev, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594 ], [ %.03849, %bb.bx ]
  %.0.i948 = phi nsz <4 x float> [ %i.fmp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4597 ], [ %i.esl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread ], [ %i.etf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4585 ], [ %i.etv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4588 ], [ %i.eyd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4591 ], [ %i.fln, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit955.thread4594 ], [ %.03847, %bb.bx ]
  %i.fmq = bitcast <4 x float> %.0.i954458446034637 to <4 x i32>
  %i.fmr = lshr <4 x i32> %i.fmq, splat (i32 16)
  %i.fms = bitcast <4 x float> %.0.i95246054635 to <4 x i32>
  %i.fmt = lshr <4 x i32> %i.fms, splat (i32 16)
  %i.fmu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fmr, <4 x i32> %i.fmt)
  store <8 x i16> %i.fmu, ptr %.07844920, align 1, !tbaa !114
  %i.fmv = getelementptr inbounds i8, ptr %.07844920, i64 %i.cit
  %i.fmw = bitcast <4 x float> %.0.i9504639 to <4 x i32>
  %i.fmx = lshr <4 x i32> %i.fmw, splat (i32 16)
  %i.fmy = bitcast <4 x float> %.0.i948 to <4 x i32>
  %i.fmz = lshr <4 x i32> %i.fmy, splat (i32 16)
  %i.fna = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fmx, <4 x i32> %i.fmz)
  store <8 x i16> %i.fna, ptr %i.fmv, align 1, !tbaa !114
  %i.fnb = getelementptr inbounds nuw i8, ptr %.07844920, i64 16
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge4915
  store <8 x float> %.13866.lcssa, ptr %.94919, align 32, !tbaa !114
  %i.fnc = getelementptr inbounds nuw i8, ptr %.94919, i64 32
  store <8 x float> %.03864.lcssa, ptr %i.fnc, align 32, !tbaa !114
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949
  %.1785 = phi ptr [ %i.fnb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit949 ], [ %.07844920, %bb.by ] ; 2 uses
  %i.fnd = getelementptr inbounds nuw i8, ptr %.94919, i64 64 ; 2 uses
  %i.fne = add nuw nsw i32 %.07754922, 8          ; 2 uses
  %i.fnf = or disjoint i32 %i.fne, 7
  %i.fng = icmp slt i32 %i.fnf, %5
  br i1 %i.fng, label %bb.bs, label %.preheader4748, !llvm.loop !2472

.preheader4747:                                   ; preds = %bb.ch, %.preheader4748
  %.10.lcssa = phi ptr [ %.9.lcssa, %.preheader4748 ], [ %i.gas, %bb.ch ] ; 2 uses
  %.2786.lcssa = phi ptr [ %.0784.lcssa, %.preheader4748 ], [ %.3787, %bb.ch ]
  %.2780.lcssa = phi ptr [ %.0778.lcssa, %.preheader4748 ], [ %.3781.lcssa, %bb.ch ]
  %.1776.lcssa = phi i32 [ %.0775.lcssa, %.preheader4748 ], [ %i.gat, %bb.ch ] ; 2 uses
  %i.fnh = icmp slt i32 %.1776.lcssa, %5
  br i1 %i.fnh, label %.lr.ph4964, label %._crit_edge4965

.lr.ph4964:                                       ; preds = %.preheader4747
  %.not868 = icmp eq ptr %.5797, null
  %i.fni = getelementptr i8, ptr %.27714970, i64 %i.cji
  %i.fnj = load ptr, ptr %10, align 8             ; 2 uses
  %i.fnk = getelementptr inbounds nuw i8, ptr %i.fnj, i64 4
  %i.fnl = load ptr, ptr %10, align 8             ; 2 uses
  %i.fnm = getelementptr inbounds nuw i8, ptr %i.fnl, i64 4
  %i.fnn = load ptr, ptr %10, align 8
  br label %bb.ci

bb.ca:                                            ; preds = %.lr.ph4944, %bb.ch
  %.17764943 = phi i32 [ %.0775.lcssa, %.lr.ph4944 ], [ %i.gat, %bb.ch ]
  %.27804942 = phi ptr [ %.0778.lcssa, %.lr.ph4944 ], [ %.3781.lcssa, %bb.ch ] ; 4 uses
  %.27864941 = phi ptr [ %.0784.lcssa, %.lr.ph4944 ], [ %.3787, %bb.ch ] ; 4 uses
  %.104940 = phi ptr [ %.9.lcssa, %.lr.ph4944 ], [ %i.gas, %bb.ch ] ; 5 uses
  br i1 %i.cir, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fno = load <4 x float>, ptr %.104940, align 16, !tbaa !114
  %i.fnp = getelementptr inbounds nuw i8, ptr %.104940, i64 16
  %i.fnq = load <4 x float>, ptr %i.fnp, align 16, !tbaa !114
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %.03844 = phi nsz <4 x float> [ %i.fno, %bb.cb ], [ zeroinitializer, %bb.ca ] ; 3 uses
  %storemerge869 = phi <4 x float> [ %i.fnq, %bb.cb ], [ zeroinitializer, %bb.ca ] ; 3 uses
  br i1 %i.cis, label %.lr.ph4935.preheader, label %._crit_edge4936

.lr.ph4935.preheader:                             ; preds = %bb.cc
  br i1 %i.cjf, label %.lr.ph4935.epil.preheader, label %.lr.ph4935

.lr.ph4935:                                       ; preds = %.lr.ph4935.preheader, %.lr.ph4935
  %.07684932 = phi ptr [ %i.fot, %.lr.ph4935 ], [ %.27714970, %.lr.ph4935.preheader ] ; 3 uses
  %.37814931 = phi ptr [ %i.fou, %.lr.ph4935 ], [ %.27804942, %.lr.ph4935.preheader ] ; 3 uses
  %.038424930 = phi <4 x float> [ %i.fos, %.lr.ph4935 ], [ %storemerge869, %.lr.ph4935.preheader ]
  %.138454929 = phi <4 x float> [ %i.for, %.lr.ph4935 ], [ %.03844, %.lr.ph4935.preheader ]
  %niter5389 = phi i32 [ %niter5389.next.1, %.lr.ph4935 ], [ 0, %.lr.ph4935.preheader ]
  %i.fnr = load float, ptr %.07684932, align 1, !tbaa !114
  %i.fns = insertelement <4 x float> poison, float %i.fnr, i64 0
  %i.fnt = bitcast <4 x float> %i.fns to <8 x i16>
  %i.fnu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fnt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.fnv = bitcast <8 x i16> %i.fnu to <4 x float> ; 2 uses
  %i.fnw = load i64, ptr %.37814931, align 1, !tbaa !114
  %i.fnx = insertelement <2 x i64> poison, i64 %i.fnw, i64 0
  %i.fny = bitcast <2 x i64> %i.fnx to <8 x i16>
  %i.fnz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fny, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.foa = bitcast <8 x i16> %i.fnz to <4 x float> ; 2 uses
  %i.fob = shufflevector <4 x float> %i.foa, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.foc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnv, <4 x float> nofpclass(nan inf) %i.foa, <4 x float> nofpclass(nan inf) %.138454929)
  %i.fod = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnv, <4 x float> nofpclass(nan inf) %i.fob, <4 x float> nofpclass(nan inf) %.038424930)
  %i.foe = getelementptr inbounds nuw i8, ptr %.07684932, i64 4
  %i.fof = getelementptr inbounds nuw i8, ptr %.37814931, i64 8
  %i.fog = load float, ptr %i.foe, align 1, !tbaa !114
  %i.foh = insertelement <4 x float> poison, float %i.fog, i64 0
  %i.foi = bitcast <4 x float> %i.foh to <8 x i16>
  %i.foj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.foi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.fok = bitcast <8 x i16> %i.foj to <4 x float> ; 2 uses
  %i.fol = load i64, ptr %i.fof, align 1, !tbaa !114
  %i.fom = insertelement <2 x i64> poison, i64 %i.fol, i64 0
  %i.fon = bitcast <2 x i64> %i.fom to <8 x i16>
  %i.foo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fon, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fop = bitcast <8 x i16> %i.foo to <4 x float> ; 2 uses
  %i.foq = shufflevector <4 x float> %i.fop, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.for = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fok, <4 x float> nofpclass(nan inf) %i.fop, <4 x float> nofpclass(nan inf) %i.foc) ; 3 uses
  %i.fos = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fok, <4 x float> nofpclass(nan inf) %i.foq, <4 x float> nofpclass(nan inf) %i.fod) ; 3 uses
  %i.fot = getelementptr inbounds nuw i8, ptr %.07684932, i64 8 ; 2 uses
  %i.fou = getelementptr inbounds nuw i8, ptr %.37814931, i64 16 ; 2 uses
  %niter5389.next.1 = add nuw nsw i32 %niter5389, 2 ; 2 uses
  %niter5389.ncmp.1 = icmp eq i32 %niter5389.next.1, %unroll_iter5388
  br i1 %niter5389.ncmp.1, label %._crit_edge4936.loopexit.unr-lcssa, label %.lr.ph4935, !llvm.loop !2473

._crit_edge4936.loopexit.unr-lcssa:               ; preds = %.lr.ph4935
  br i1 %lcmp.mod5384.not, label %._crit_edge4936.loopexit, label %.lr.ph4935.epil.preheader

.lr.ph4935.epil.preheader:                        ; preds = %._crit_edge4936.loopexit.unr-lcssa, %.lr.ph4935.preheader
  %.07684932.epil.init = phi ptr [ %.27714970, %.lr.ph4935.preheader ], [ %i.fot, %._crit_edge4936.loopexit.unr-lcssa ]
  %.37814931.epil.init = phi ptr [ %.27804942, %.lr.ph4935.preheader ], [ %i.fou, %._crit_edge4936.loopexit.unr-lcssa ]
  %.038424930.epil.init = phi <4 x float> [ %storemerge869, %.lr.ph4935.preheader ], [ %i.fos, %._crit_edge4936.loopexit.unr-lcssa ]
  %.138454929.epil.init = phi <4 x float> [ %.03844, %.lr.ph4935.preheader ], [ %i.for, %._crit_edge4936.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5387)
  %i.fov = load float, ptr %.07684932.epil.init, align 1, !tbaa !114
  %i.fow = insertelement <4 x float> poison, float %i.fov, i64 0
  %i.fox = bitcast <4 x float> %i.fow to <8 x i16>
  %i.foy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.foz = bitcast <8 x i16> %i.foy to <4 x float> ; 2 uses
  %i.fpa = load i64, ptr %.37814931.epil.init, align 1, !tbaa !114
  %i.fpb = insertelement <2 x i64> poison, i64 %i.fpa, i64 0
  %i.fpc = bitcast <2 x i64> %i.fpb to <8 x i16>
  %i.fpd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fpc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fpe = bitcast <8 x i16> %i.fpd to <4 x float> ; 2 uses
  %i.fpf = shufflevector <4 x float> %i.fpe, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fpg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.foz, <4 x float> nofpclass(nan inf) %i.fpe, <4 x float> nofpclass(nan inf) %.138454929.epil.init)
  %i.fph = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.foz, <4 x float> nofpclass(nan inf) %i.fpf, <4 x float> nofpclass(nan inf) %.038424930.epil.init)
  br label %._crit_edge4936.loopexit

._crit_edge4936.loopexit:                         ; preds = %._crit_edge4936.loopexit.unr-lcssa, %.lr.ph4935.epil.preheader
  %.lcssa5339 = phi <4 x float> [ %i.for, %._crit_edge4936.loopexit.unr-lcssa ], [ %i.fpg, %.lr.ph4935.epil.preheader ]
  %.lcssa5338 = phi <4 x float> [ %i.fos, %._crit_edge4936.loopexit.unr-lcssa ], [ %i.fph, %.lr.ph4935.epil.preheader ]
  %i.fpi = getelementptr i8, ptr %.27804942, i64 %i.cja
  %scevgep5121 = getelementptr i8, ptr %i.fpi, i64 8
  br label %._crit_edge4936

._crit_edge4936:                                  ; preds = %._crit_edge4936.loopexit, %bb.cc
  %.13845.lcssa = phi <4 x float> [ %.03844, %bb.cc ], [ %.lcssa5339, %._crit_edge4936.loopexit ] ; 3 uses
  %.03842.lcssa = phi <4 x float> [ %storemerge869, %bb.cc ], [ %.lcssa5338, %._crit_edge4936.loopexit ] ; 3 uses
  %.3781.lcssa = phi ptr [ %.27804942, %bb.cc ], [ %scevgep5121, %._crit_edge4936.loopexit ] ; 2 uses
  br i1 %8, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %._crit_edge4936
  %13 = shufflevector <4 x float> %.13845.lcssa, <4 x float> %.03842.lcssa, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %14 = shufflevector <4 x float> %.13845.lcssa, <4 x float> %.03842.lcssa, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.fpj = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  br i1 %.not870, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fpk = load float, ptr %i.eqp, align 4, !tbaa !56
  %i.fpl = insertelement <4 x float> poison, float %i.fpk, i64 0
  %i.fpm = shufflevector <4 x float> %i.fpl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fpn = fadd fast <4 x float> %i.fpm, %13
  %i.fpo = load float, ptr %i.eqt, align 4, !tbaa !56
  %i.fpp = insertelement <4 x float> poison, float %i.fpo, i64 0
  %i.fpq = shufflevector <4 x float> %i.fpp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fpr = fadd fast <4 x float> %i.fpq, %i.fpj
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.23846 = phi nsz <4 x float> [ %13, %bb.cd ], [ %i.fpn, %bb.ce ] ; 10 uses
  %.13843 = phi nsz <4 x float> [ %i.fpj, %bb.cd ], [ %i.fpr, %bb.ce ] ; 10 uses
  switch i32 %9, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit945 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4678
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4681
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4684
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4687
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4690
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread: ; preds = %bb.cf
  %i.fps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.23846, <4 x float> zeroinitializer)
  %i.fpt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13843, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit945

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4678: ; preds = %bb.cf
  %i.fpu = load ptr, ptr %10, align 8, !tbaa !37
  %i.fpv = load float, ptr %i.fpu, align 4, !tbaa !56
  %i.fpw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.23846)
  %i.fpx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.23846)
  %i.fpy = insertelement <4 x float> poison, float %i.fpv, i64 0
  %i.fpz = shufflevector <4 x float> %i.fpy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqa = fmul fast <4 x float> %i.fpz, %i.fpx
  %i.fqb = fadd fast <4 x float> %i.fqa, %i.fpw
  %i.fqc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.13843)
  %i.fqd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.13843)
  %i.fqe = fmul fast <4 x float> %i.fpz, %i.fqd
  %i.fqf = fadd fast <4 x float> %i.fqe, %i.fqc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit945

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4681: ; preds = %bb.cf
  %i.fqg = load ptr, ptr %10, align 8, !tbaa !37  ; 2 uses
  %i.fqh = load float, ptr %i.fqg, align 4, !tbaa !56
  %i.fqi = insertelement <4 x float> poison, float %i.fqh, i64 0
  %i.fqj = shufflevector <4 x float> %i.fqi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqk = getelementptr inbounds nuw i8, ptr %i.fqg, i64 4
  %i.fql = load float, ptr %i.fqk, align 4, !tbaa !56
  %i.fqm = insertelement <4 x float> poison, float %i.fql, i64 0
  %i.fqn = shufflevector <4 x float> %i.fqm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.23846, <4 x float> nofpclass(nan inf) %i.fqj)
  %i.fqp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fqo, <4 x float> nofpclass(nan inf) %i.fqn)
  %i.fqq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13843, <4 x float> nofpclass(nan inf) %i.fqj)
  %i.fqr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fqq, <4 x float> nofpclass(nan inf) %i.fqn)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit945

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4684: ; preds = %bb.cf
  %i.fqs = fneg fast <4 x float> %.23846
  %i.fqt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fqs, <4 x float> splat (float f0x42B0C0A5))
  %i.fqu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fqt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fqv = fmul fast <4 x float> %i.fqu, splat (float f0x3FB8AA3B)
  %i.fqw = fadd fast <4 x float> %i.fqv, splat (float 5.000000e-01) ; 2 uses
  %i.fqx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fqw)
  %i.fqy = sitofp fast <4 x i32> %i.fqx to <4 x float> ; 2 uses
  %i.fqz = fcmp fast olt <4 x float> %i.fqw, %i.fqy
  %i.fra = select <4 x i1> %i.fqz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.frb = fsub fast <4 x float> %i.fqy, %i.fra   ; 2 uses
  %i.frc = fneg fast <4 x float> %i.frb           ; 2 uses
  %i.frd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.frc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fqu)
  %i.fre = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.frc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.frd) ; 8 uses
  %i.frf = fmul fast <4 x float> %i.fre, %i.fre
  %i.frg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fre, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.frh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frg, <4 x float> nofpclass(nan inf) %i.fre, <4 x float> splat (float f0x3C088908))
  %i.fri = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frh, <4 x float> nofpclass(nan inf) %i.fre, <4 x float> splat (float f0x3D2AA9C1))
  %i.frj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fri, <4 x float> nofpclass(nan inf) %i.fre, <4 x float> splat (float f0x3E2AAAAA))
  %i.frk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frj, <4 x float> nofpclass(nan inf) %i.fre, <4 x float> splat (float 5.000000e-01))
  %i.frl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frk, <4 x float> nofpclass(nan inf) %i.frf, <4 x float> nofpclass(nan inf) %i.fre)
  %i.frm = fadd fast <4 x float> %i.frl, splat (float 1.000000e+00)
  %i.frn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.frb)
  %i.fro = shl <4 x i32> %i.frn, splat (i32 23)
  %i.frp = add <4 x i32> %i.fro, splat (i32 1065353216)
  %i.frq = bitcast <4 x i32> %i.frp to <4 x float>
  %i.frr = fmul fast <4 x float> %i.frm, %i.frq
  %i.frs = fadd fast <4 x float> %i.frr, splat (float 1.000000e+00)
  %i.frt = fdiv fast <4 x float> splat (float 1.000000e+00), %i.frs
  %i.fru = fneg fast <4 x float> %.13843
  %i.frv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fru, <4 x float> splat (float f0x42B0C0A5))
  %i.frw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.frv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.frx = fmul fast <4 x float> %i.frw, splat (float f0x3FB8AA3B)
  %i.fry = fadd fast <4 x float> %i.frx, splat (float 5.000000e-01) ; 2 uses
  %i.frz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fry)
  %i.fsa = sitofp fast <4 x i32> %i.frz to <4 x float> ; 2 uses
  %i.fsb = fcmp fast olt <4 x float> %i.fry, %i.fsa
  %i.fsc = select <4 x i1> %i.fsb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fsd = fsub fast <4 x float> %i.fsa, %i.fsc   ; 2 uses
  %i.fse = fneg fast <4 x float> %i.fsd           ; 2 uses
  %i.fsf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fse, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.frw)
  %i.fsg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fse, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fsf) ; 8 uses
  %i.fsh = fmul fast <4 x float> %i.fsg, %i.fsg
  %i.fsi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fsg, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fsj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fsi, <4 x float> nofpclass(nan inf) %i.fsg, <4 x float> splat (float f0x3C088908))
  %i.fsk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fsj, <4 x float> nofpclass(nan inf) %i.fsg, <4 x float> splat (float f0x3D2AA9C1))
  %i.fsl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fsk, <4 x float> nofpclass(nan inf) %i.fsg, <4 x float> splat (float f0x3E2AAAAA))
  %i.fsm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fsl, <4 x float> nofpclass(nan inf) %i.fsg, <4 x float> splat (float 5.000000e-01))
  %i.fsn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fsm, <4 x float> nofpclass(nan inf) %i.fsh, <4 x float> nofpclass(nan inf) %i.fsg)
  %i.fso = fadd fast <4 x float> %i.fsn, splat (float 1.000000e+00)
  %i.fsp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fsd)
  %i.fsq = shl <4 x i32> %i.fsp, splat (i32 23)
  %i.fsr = add <4 x i32> %i.fsq, splat (i32 1065353216)
  %i.fss = bitcast <4 x i32> %i.fsr to <4 x float>
  %i.fst = fmul fast <4 x float> %i.fso, %i.fss
  %i.fsu = fadd fast <4 x float> %i.fst, splat (float 1.000000e+00)
  %i.fsv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fsu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit945

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit947.thread4687: ; preds = %bb.cf
  %i.fsw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.23846, <4 x float> splat (float f0x42B0C0A5))
  %i.fsx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fsw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fsy = fmul fast <4 x float> %i.fsx, splat (float f0x3FB8AA3B)
  %i.fsz = fadd fast <4 x float> %i.fsy, splat (float 5.000000e-01) ; 2 uses
  %i.fta = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fsz)
  %i.ftb = sitofp fast <4 x i32> %i.fta to <4 x float> ; 2 uses
  %i.ftc = fcmp fast olt <4 x float> %i.fsz, %i.ftb
  %i.ftd = select <4 x i1> %i.ftc, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fte = fsub fast <4 x float> %i.ftb, %i.ftd   ; 2 uses
  %i.ftf = fneg fast <4 x float> %i.fte           ; 2 uses
  %i.ftg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ftf, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fsx)
  %i.fth = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ftf, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ftg) ; 8 uses
  %i.fti = fmul fast <4 x float> %i.fth, %i.fth
  %i.ftj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fth, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ftk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftj, <4 x float> nofpclass(nan inf) %i.fth, <4 x float> splat (float f0x3C088908))
  %i.ftl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftk, <4 x float> nofpclass(nan inf) %i.fth, <4 x float> splat (float f0x3D2AA9C1))
  %i.ftm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftl, <4 x float> nofpclass(nan inf) %i.fth, <4 x float> splat (float f0x3E2AAAAA))
  %i.ftn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftm, <4 x float> nofpclass(nan inf) %i.fth, <4 x float> splat (float 5.000000e-01))
  %i.fto = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftn, <4 x float> nofpclass(nan inf) %i.fti, <4 x float> nofpclass(nan inf) %i.fth)
  %i.ftp = fadd fast <4 x float> %i.fto, splat (float 1.000000e+00)
  %i.ftq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fte)
  %i.ftr = shl <4 x i32> %i.ftq, splat (i32 23)
  %i.fts = add <4 x i32> %i.ftr, splat (i32 1065353216)
  %i.ftt = bitcast <4 x i32> %i.fts to <4 x float>
  %i.ftu = fmul fast <4 x float> %i.ftp, %i.ftt
  %i.ftv = fadd fast <4 x float> %i.ftu, splat (float 1.000000e+00) ; 2 uses
  %i.ftw = fcmp fast ole <4 x float> %i.ftv, zeroinitializer
  %i.ftx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ftv, <4 x float> splat (float f0x00800000))
  %i.fty = bitcast <4 x float> %i.ftx to <4 x i32> ; 2 uses
  %i.ftz = lshr <4 x i32> %i.fty, splat (i32 23)
  %i.fua = and <4 x i32> %i.fty, splat (i32 -2139095041)
  %i.fub = or disjoint <4 x i32> %i.fua, splat (i32 1056964608)
  %i.fuc = bitcast <4 x i32> %i.fub to <4 x float> ; 3 uses
  %i.fud = add nsw <4 x i32> %i.ftz, splat (i32 -127)
  %i.fue = sitofp fast <4 x i32> %i.fud to <4 x float> ; 2 uses
  %i.fuf = fadd fast <4 x float> %i.fue, splat (float 1.000000e+00)
  %i.fug = fcmp fast olt <4 x float> %i.fuc, splat (float f0x3F3504F3) ; 2 uses
  %i.fuh = select <4 x i1> %i.fug, <4 x float> %i.fuc, <4 x float> zeroinitializer
  %i.fui = fadd fast <4 x float> %i.fuc, splat (float -1.000000e+00)
  %i.fuj = select fast <4 x i1> %i.fug, <4 x float> %i.fue, <4 x float> %i.fuf ; 2 uses
  %i.fuk = fadd fast <4 x float> %i.fui, %i.fuh   ; 12 uses
  %i.ful = fmul fast <4 x float> %i.fuk, %i.fuk   ; 2 uses
  %i.fum = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fuk, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fun = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fum, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0x3DEF251A))
  %i.fuo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fun, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0xBDFE5D4F))
  %i.fup = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fuo, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0x3E11E9BF))
  %i.fuq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fup, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0xBE2AAE50))
  %i.fur = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fuq, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0x3E4CCEAC))
  %i.fus = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fur, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0xBE7FFFFC))
  %i.fut = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fus, <4 x float> nofpclass(nan inf) %i.fuk, <4 x float> splat (float f0x3EAAAAAA))
  %i.fuu = fmul fast <4 x float> %i.ful, %i.fuk
  %i.fuv = fmul fast <4 x float> %i.fuu, %i.fut
  %i.fuw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fuj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fuv)
  %i.fux = fneg fast <4 x float> %i.ful
  %i.fuy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fux, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fuw)
  %i.fuz = fadd fast <4 x float> %i.fuy, %i.fuk
  %i.fva = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fuj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fuz)
  %.neg4717 = fmul fast <4 x float> %i.fva, splat (float -2.000000e+00)
  %i.fvb = select fast <4 x i1> %i.ftw, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg4717
  %i.fvc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fvb, <4 x float> splat (float f0x42B0C0A5))
  %i.fvd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fvc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fve = fmul fast <4 x float> %i.fvd, splat (float f0x3FB8AA3B)
  %i.fvf = fadd fast <4 x float> %i.fve, splat (float 5.000000e-01) ; 2 uses
  %i.fvg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fvf)
  %i.fvh = sitofp fast <4 x i32> %i.fvg to <4 x float> ; 2 uses
  %i.fvi = fcmp fast olt <4 x float> %i.fvf, %i.fvh
  %i.fvj = select <4 x i1> %i.fvi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fvk = fsub fast <4 x float> %i.fvh, %i.fvj   ; 2 uses
  %i.fvl = fneg fast <4 x float> %i.fvk           ; 2 uses
  %i.fvm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fvl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fvd)
  %i.fvn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fvl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fvm) ; 8 uses
  %i.fvo = fmul fast <4 x float> %i.fvn, %i.fvn
  %i.fvp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fvn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fvq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fvp, <4 x float> nofpclass(nan inf) %i.fvn, <4 x float> splat (float f0x3C088908))
  %i.fvr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fvq, <4 x float> nofpclass(nan inf) %i.fvn, <4 x float> splat (float f0x3D2AA9C1))
  %i.fvs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fvr, <4 x float> nofpclass(nan inf) %i.fvn, <4 x float> splat (float f0x3E2AAAAA))
  %i.fvt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fvs, <4 x float> nofpclass(nan inf) %i.fvn, <4 x float> splat (float 5.000000e-01))
  %i.fvu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fvt, <4 x float> nofpclass(nan inf) %i.fvo, <4 x float> nofpclass(nan inf) %i.fvn)
  %i.fvv = fadd fast <4 x float> %i.fvu, splat (float 1.000000e+00)
  %i.fvw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fvk)
  %i.fvx = shl <4 x i32> %i.fvw, splat (i32 23)
  %i.fvy = add <4 x i32> %i.fvx, splat (i32 1065353216)
  %i.fvz = bitcast <4 x i32> %i.fvy to <4 x float>
  %i.fwa = fmul fast <4 x float> %i.fvv, %i.fvz
  %i.fwb = fadd fast <4 x float> %i.fwa, splat (float 1.000000e+00)
  %i.fwc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fwb
  %i.fwd = fadd fast <4 x float> %i.fwc, splat (float -1.000000e+00)
  %i.fwe = fmul fast <4 x float> %i.fwd, %.23846
  %i.fwf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.13843, <4 x float> splat (float f0x42B0C0A5))
  %i.fwg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fwf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fwh = fmul fast <4 x float> %i.fwg, splat (float f0x3FB8AA3B)
  %i.fwi = fadd fast <4 x float> %i.fwh, splat (float 5.000000e-01) ; 2 uses
  %i.fwj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fwi)
  %i.fwk = sitofp fast <4 x i32> %i.fwj to <4 x float> ; 2 uses
  %i.fwl = fcmp fast olt <4 x float> %i.fwi, %i.fwk
end_hunk_2
