Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_epzs?download=true
inline.NumInlined: 242
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@EPZSWindowPredictorInit:bb.a
  %i.aa = getelementptr [16 x i8], ptr %i.o, i64 %.0122141 ; 8 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 64
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr i8, ptr %i.aa, i64 68
  store i32 0, ptr %i.ac, align 4, !tbaa !4
  %i.ad = getelementptr i8, ptr %i.aa, i64 80
  store i32 %i.z, ptr %i.ad, align 4, !tbaa !4
  %i.ae = getelementptr i8, ptr %i.aa, i64 84
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr i8, ptr %i.aa, i64 96
  store i32 0, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr i8, ptr %i.aa, i64 100
  store i32 %i.z, ptr %i.ag, align 4, !tbaa !4
  %i.ah = getelementptr i8, ptr %i.aa, i64 112
  store i32 %i.p, ptr %i.ah, align 4, !tbaa !4
  %indvars.iv.next152.1 = add nuw nsw i64 %.0122141, 8 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.aa, i64 116
  store i32 %i.z, ptr %i.ai, align 4, !tbaa !4
  %i.aj = add nsw i32 %.0125140, -1
  %.not156 = icmp eq i32 %.0125140, 0
  br i1 %.not156, label %.loopexit.loopexit, label %bb.b, !llvm.loop !36

.preheader157:                                    ; preds = %bb.a, %.preheader157
  %.0.i127 = phi i32 [ %i.ak, %.preheader157 ], [ 0, %bb.a ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0.i127, 1             ; 2 uses
  %i.al = shl nuw i32 2, %.0.i127
  %.not.i128 = icmp sgt i32 %i.al, %i.g
  br i1 %.not.i128, label %RoundLog2.exit129, label %.preheader157, !llvm.loop !35

RoundLog2.exit129:                                ; preds = %.preheader157
  %i.am = icmp samesign ugt i32 %.0.i127, 2
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %RoundLog2.exit129
  %i.an = lshr i32 %i.ak, 1
  %i.ao = add nsw i32 %i.an, -2
  %i.ap = shl nsw i32 %i.f, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23 ; 4 uses
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader.preheader
  %.2124137 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next150.1, %.preheader.preheader ] ; 3 uses
  %.1126136 = phi i32 [ %i.ao, %.lr.ph ], [ %i.cs, %.preheader.preheader ] ; 3 uses
  %i.as = ashr i32 %i.ap, %.1126136               ; 13 uses
  %i.at = getelementptr [16 x i8], ptr %i.ar, i64 %.2124137 ; 8 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr i8, ptr %i.at, i64 16
  store i32 %i.as, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr i8, ptr %i.at, i64 20
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr i8, ptr %i.at, i64 32
  store i32 0, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr i8, ptr %i.at, i64 36
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !4
  %i.az = sub nsw i32 0, %i.as                    ; 3 uses
  %i.ba = getelementptr i8, ptr %i.at, i64 48
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr i8, ptr %i.at, i64 52
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !4
  %i.bc = sub nsw i32 0, %i.as                    ; 7 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ar, i64 %.2124137 ; 8 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 64
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr i8, ptr %i.bd, i64 68
  store i32 0, ptr %i.bf, align 4, !tbaa !4
  %i.bg = getelementptr i8, ptr %i.bd, i64 80
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !4
  %i.bh = getelementptr i8, ptr %i.bd, i64 84
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr i8, ptr %i.bd, i64 96
  store i32 0, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr i8, ptr %i.bd, i64 100
  store i32 %i.bc, ptr %i.bj, align 4, !tbaa !4
  %i.bk = getelementptr i8, ptr %i.bd, i64 112
  store i32 %i.as, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr i8, ptr %i.bd, i64 116
  store i32 %i.bc, ptr %i.bl, align 4, !tbaa !4
  %i.bm = mul nsw i32 %i.as, 3
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = shl nsw i32 %i.bn, %i.d
  %i.bp = ashr i32 %i.bo, 1                       ; 7 uses
  %i.bq = shl i64 %.2124137, 32
  %sext = add i64 %i.bq, 34359738368
  %i.br = ashr exact i64 %sext, 32                ; 3 uses
  %i.bs = getelementptr [16 x i8], ptr %i.ar, i64 %i.br ; 12 uses
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.az, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !4
  %i.bv = getelementptr i8, ptr %i.bs, i64 20
  store i32 0, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr i8, ptr %i.bs, i64 32
  store i32 %i.bp, ptr %i.bw, align 4, !tbaa !4
  %i.bx = getelementptr i8, ptr %i.bs, i64 36
  store i32 %i.as, ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr i8, ptr %i.bs, i64 48
  store i32 %i.as, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr i8, ptr %i.bs, i64 52
  store i32 %i.bp, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr i8, ptr %i.bs, i64 64
  store i32 0, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr i8, ptr %i.bs, i64 68
  store i32 %i.bp, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr i8, ptr %i.bs, i64 80
  store i32 %i.az, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr i8, ptr %i.bs, i64 84
  store i32 %i.bp, ptr %i.cd, align 4, !tbaa !4
  %i.ce = sub nsw i32 0, %i.bp                    ; 6 uses
  %i.cf = getelementptr [16 x i8], ptr %i.ar, i64 %i.br ; 12 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 96
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr i8, ptr %i.cf, i64 100
  store i32 %i.as, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr i8, ptr %i.cf, i64 112
  store i32 %i.ce, ptr %i.ci, align 4, !tbaa !4
  %i.cj = getelementptr i8, ptr %i.cf, i64 116
  store i32 0, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr i8, ptr %i.cf, i64 128
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !4
  %i.cl = getelementptr i8, ptr %i.cf, i64 132
  store i32 %i.bc, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr i8, ptr %i.cf, i64 144
  store i32 %i.bc, ptr %i.cm, align 4, !tbaa !4
  %i.cn = getelementptr i8, ptr %i.cf, i64 148
  store i32 %i.ce, ptr %i.cn, align 4, !tbaa !4
  %i.co = getelementptr i8, ptr %i.cf, i64 160
  store i32 0, ptr %i.co, align 4, !tbaa !4
  %i.cp = getelementptr i8, ptr %i.cf, i64 164
  store i32 %i.ce, ptr %i.cp, align 4, !tbaa !4
  %i.cq = getelementptr i8, ptr %i.cf, i64 176
  store i32 %i.as, ptr %i.cq, align 4, !tbaa !4
  %indvars.iv.next150.1 = add nsw i64 %i.br, 12   ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cf, i64 180
  store i32 %i.ce, ptr %i.cr, align 4, !tbaa !4
  %i.cs = add nsw i32 %.1126136, -1
  %.not155 = icmp eq i32 %.1126136, 0
  br i1 %.not155, label %.loopexit.loopexit144, label %.preheader.preheader, !llvm.loop !37

.loopexit.loopexit:                               ; preds = %bb.b
  %i.ct = trunc nsw i64 %indvars.iv.next152.1 to i32
  br label %.loopexit

.loopexit.loopexit144:                            ; preds = %.preheader.preheader
  %i.cu = trunc nsw i64 %indvars.iv.next150.1 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit144, %.loopexit.loopexit, %RoundLog2.exit129, %RoundLog2.exit
  %.5 = phi i32 [ %i.ct, %.loopexit.loopexit ], [ 0, %RoundLog2.exit ], [ 0, %RoundLog2.exit129 ], [ %i.cu, %.loopexit.loopexit144 ]
  store i32 %.5, ptr %1, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EPZSInit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15444
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %i.d = load ptr, ptr @input, align 8, !tbaa !29 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 4 uses
  %i.g = mul nsw i32 %i.f, %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]   ; 2 uses
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = shl nuw i32 2, %.0.i
  %.not.i = icmp sgt i32 %i.i, %i.g
  br i1 %.not.i, label %RoundLog2.exit, label %bb.b, !llvm.loop !35

RoundLog2.exit:                                   ; preds = %bb.b
  %i.j = add nsw i32 %i.c, -8                     ; 20 uses
  %i.k = lshr i32 %i.h, 1
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2120
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %RoundLog2.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2128
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %i.p)
  br label %bb.d

bb.d:                                             ; preds = %RoundLog2.exit, %bb.c
  %.sink = phi i32 [ %i.q, %bb.c ], [ %i.f, %RoundLog2.exit ]
  %i.r = shl nsw i32 %.sink, 1
  %i.s = or disjoint i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4120
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = shl nsw i32 %i.u, 1
  %i.w = shl i32 %i.s, %i.v
  store i32 %i.w, ptr @searcharray, align 4, !tbaa !4
  %.not22 = icmp eq i32 %i.u, 0
  %i.x = select i1 %.not22, i32 2, i32 0
  store i32 %i.x, ptr @mv_rescale, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4116
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4112
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4108
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58 ; 5 uses
  store i32 0, ptr @medthres, align 16, !tbaa !4
  store i32 0, ptr @maxthres, align 16, !tbaa !4
  store i32 0, ptr @minthres, align 16, !tbaa !4
  store i32 0, ptr @subthres, align 16, !tbaa !4
  %i.ag = shl nsw i32 %i.z, 8
  %i.ah = shl i32 %i.ag, %i.j
  store i32 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 4), align 4, !tbaa !4
  %i.ai = mul nsw i32 %i.ab, 768
  %i.aj = shl i32 %i.ai, %i.j
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 4), align 4, !tbaa !4
  %i.ak = shl nsw i32 %i.ad, 6
  %i.al = shl i32 %i.ak, %i.j
  store i32 %i.al, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 4), align 4, !tbaa !4
  %i.am = shl nsw i32 %i.af, 8
  %i.an = shl i32 %i.am, %i.j
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 4), align 4, !tbaa !4
  %i.ao = shl nsw i32 %i.z, 7
  %i.ap = shl i32 %i.ao, %i.j                     ; 2 uses
  store i32 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 8), align 8, !tbaa !4
  %i.aq = mul nsw i32 %i.ab, 384
  %i.ar = shl i32 %i.aq, %i.j                     ; 2 uses
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 8), align 8, !tbaa !4
  %i.as = shl nsw i32 %i.ad, 5
  %i.at = shl i32 %i.as, %i.j                     ; 2 uses
  store i32 %i.at, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 8), align 8, !tbaa !4
  %i.au = shl nsw i32 %i.af, 7
  %i.av = shl i32 %i.au, %i.j                     ; 2 uses
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 8), align 8, !tbaa !4
  store i32 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 12), align 4, !tbaa !4
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 12), align 4, !tbaa !4
  store i32 %i.at, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 12), align 4, !tbaa !4
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 12), align 4, !tbaa !4
  %i.aw = shl nsw i32 %i.z, 6
  %i.ax = shl i32 %i.aw, %i.j
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 16), align 16, !tbaa !4
  %i.ay = mul nsw i32 %i.ab, 192
  %i.az = shl i32 %i.ay, %i.j
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 16), align 16, !tbaa !4
  %i.ba = shl nsw i32 %i.ad, 4
  %i.bb = shl i32 %i.ba, %i.j
  store i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 16), align 16, !tbaa !4
  %i.bc = shl nsw i32 %i.af, 6
  %i.bd = shl i32 %i.bc, %i.j
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 16), align 16, !tbaa !4
  %i.be = shl nsw i32 %i.z, 5
  %i.bf = shl i32 %i.be, %i.j                     ; 2 uses
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 20), align 4, !tbaa !4
  %i.bg = mul nsw i32 %i.ab, 96
  %i.bh = shl i32 %i.bg, %i.j                     ; 2 uses
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 20), align 4, !tbaa !4
  %i.bi = shl nsw i32 %i.ad, 3
  %i.bj = shl i32 %i.bi, %i.j                     ; 2 uses
  store i32 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 20), align 4, !tbaa !4
  %i.bk = shl nsw i32 %i.af, 5
  %i.bl = shl i32 %i.bk, %i.j                     ; 2 uses
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 20), align 4, !tbaa !4
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 24), align 8, !tbaa !4
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 24), align 8, !tbaa !4
  store i32 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 24), align 8, !tbaa !4
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 24), align 8, !tbaa !4
  %i.bm = shl nsw i32 %i.z, 4
  %i.bn = shl i32 %i.bm, %i.j
  store i32 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 28), align 4, !tbaa !4
  %i.bo = mul nsw i32 %i.ab, 48
  %i.bp = shl i32 %i.bo, %i.j
  store i32 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 28), align 4, !tbaa !4
  %i.bq = shl nsw i32 %i.ad, 2
  %i.br = shl i32 %i.bq, %i.j
  store i32 %i.br, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 28), align 4, !tbaa !4
  %i.bs = shl nsw i32 %i.af, 4
  %i.bt = shl i32 %i.bs, %i.j
  store i32 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 28), align 4, !tbaa !4
  %i.bu = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 8 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.d
  store i32 4, ptr %i.bu, align 8, !tbaa !20
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #12 ; 14 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !23
  store ptr %i.bu, ptr @sdiamond, align 8, !tbaa !59
  %0 = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !4
  %i.by = lshr i32 4, %0                          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 3, ptr %i.ca, align 4, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 3, ptr %i.cb, align 4, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 %i.by, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store <4 x i32> <i32 0, i32 0, i32 3, i32 0>, ptr %i.cd, align 4, !tbaa !4
  %i.ce = ashr i32 -4, %0                         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 1, ptr %i.cg, align 4, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  store i32 3, ptr %i.ch, align 4, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 %i.ce, ptr %i.ci, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  store i32 0, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i32 2, ptr %i.ck, align 4, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  store i32 3, ptr %i.cl, align 4, !tbaa !62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i32 1, ptr %i.cm, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 1, ptr %i.cn, align 4, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bu, ptr %i.co, align 8, !tbaa !28
  %i.cp = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 8 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.f, label %.lr.ph.i26

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.f, %.lr.ph.i
  store i32 8, ptr %i.cp, align 8, !tbaa !20
  %i.cr = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #12 ; 33 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !23
  store ptr %i.cp, ptr @square, align 8, !tbaa !59
  %1 = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 2 uses
  store i32 0, ptr %i.cr, align 4, !tbaa !4
  %2 = lshr i32 4, %1                             ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %2, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 7, ptr %i.cu, align 4, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 3, ptr %i.cv, align 4, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %2, ptr %i.cw, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  store i32 %2, ptr %i.cx, align 4, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i32 7, ptr %i.cy, align 4, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  store i32 5, ptr %i.cz, align 4, !tbaa !62
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store i32 %2, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  store i32 0, ptr %i.db, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i32 1, ptr %i.dc, align 4, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  store i32 3, ptr %i.dd, align 4, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store i32 %2, ptr %i.de, align 4, !tbaa !4
  %3 = ashr i32 -4, %1                            ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  store i32 %3, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store i32 1, ptr %i.dg, align 4, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 60
  store i32 5, ptr %i.dh, align 4, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  store i32 0, ptr %i.di, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 68
  store i32 %3, ptr %i.dj, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store i32 3, ptr %i.dk, align 4, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 76
  store i32 3, ptr %i.dl, align 4, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store i32 %3, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 84
  store i32 %3, ptr %i.dn, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  store i32 3, ptr %i.do, align 4, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 92
  store i32 5, ptr %i.dp, align 4, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  store i32 %3, ptr %i.dq, align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 100
  store i32 0, ptr %i.dr, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  store i32 5, ptr %i.ds, align 4, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 108
  store i32 3, ptr %i.dt, align 4, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  store i32 %3, ptr %i.du, align 4, !tbaa !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cr, i64 116
  store i32 %2, ptr %i.dv, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  store i32 5, ptr %i.dw, align 4, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 124
  store i32 5, ptr %i.dx, align 4, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 1, ptr %i.dy, align 8, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store i32 1, ptr %i.dz, align 4, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.cp, ptr %i.ea, align 8, !tbaa !28
  %i.eb = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 8 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.g, label %.lr.ph.i31

bb.g:                                             ; preds = %.lr.ph.i26
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.g, %.lr.ph.i26
  store i32 12, ptr %i.eb, align 8, !tbaa !20
  %i.ed = tail call noalias dereferenceable_or_null(192) ptr @calloc(i64 noundef 12, i64 noundef 16) #12 ; 49 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !23
  store ptr %i.eb, ptr @ediamond, align 8, !tbaa !59
  %4 = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 4 uses
  %5 = ashr i32 -4, %4                            ; 6 uses
  store i32 %5, ptr %i.ed, align 4, !tbaa !4
  %6 = lshr i32 4, %4                             ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %6, ptr %i.ef, align 4, !tbaa !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 10, ptr %i.eg, align 4, !tbaa !60
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 5, ptr %i.eh, align 4, !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i32 0, ptr %i.ei, align 4, !tbaa !4
  %i.ej = lshr i32 8, %4                          ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i32 10, ptr %i.el, align 4, !tbaa !60
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  store i32 8, ptr %i.em, align 4, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i32 0, ptr %i.en, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  store i32 %6, ptr %i.eo, align 4, !tbaa !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i32 10, ptr %i.ep, align 4, !tbaa !60
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  store i32 7, ptr %i.eq, align 4, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i32 %6, ptr %i.er, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  store i32 %6, ptr %i.es, align 4, !tbaa !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store i32 1, ptr %i.et, align 4, !tbaa !60
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  store i32 5, ptr %i.eu, align 4, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  store i32 %i.ej, ptr %i.ev, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 68
  store i32 0, ptr %i.ew, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  store i32 1, ptr %i.ex, align 4, !tbaa !60
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 76
  store i32 8, ptr %i.ey, align 4, !tbaa !62
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  store i32 %6, ptr %i.ez, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 84
  store i32 0, ptr %i.fa, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  store i32 1, ptr %i.fb, align 4, !tbaa !60
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ed, i64 92
  store i32 7, ptr %i.fc, align 4, !tbaa !62
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store i32 %6, ptr %i.fd, align 4, !tbaa !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 100
  store i32 %5, ptr %i.fe, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  store i32 4, ptr %i.ff, align 4, !tbaa !60
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 108
  store i32 5, ptr %i.fg, align 4, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ed, i64 112
  store i32 0, ptr %i.fh, align 4, !tbaa !4
  %i.fi = ashr i32 -8, %4                         ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ed, i64 116
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  store i32 4, ptr %i.fk, align 4, !tbaa !60
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ed, i64 124
  store i32 8, ptr %i.fl, align 4, !tbaa !62
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  store i32 0, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ed, i64 132
  store i32 %5, ptr %i.fn, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ed, i64 136
  store i32 4, ptr %i.fo, align 4, !tbaa !60
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ed, i64 140
  store i32 7, ptr %i.fp, align 4, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 144
  store i32 %5, ptr %i.fq, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ed, i64 148
  store i32 %5, ptr %i.fr, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 152
  store i32 7, ptr %i.fs, align 4, !tbaa !60
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 156
  store i32 5, ptr %i.ft, align 4, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ed, i64 160
  store i32 %i.fi, ptr %i.fu, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ed, i64 164
  store i32 0, ptr %i.fv, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ed, i64 168
  store i32 7, ptr %i.fw, align 4, !tbaa !60
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ed, i64 172
  store i32 8, ptr %i.fx, align 4, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  store i32 %5, ptr %i.fy, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  store i32 0, ptr %i.fz, align 4, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  store i32 7, ptr %i.ga, align 4, !tbaa !60
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  store i32 7, ptr %i.gb, align 4, !tbaa !62
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 1, ptr %i.gc, align 8, !tbaa !26
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i32 1, ptr %i.gd, align 4, !tbaa !27
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.eb, ptr %i.ge, align 8, !tbaa !28
  %i.gf = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 8 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.h, label %.lr.ph.i36

bb.h:                                             ; preds = %.lr.ph.i31
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.h, %.lr.ph.i31
  store i32 8, ptr %i.gf, align 8, !tbaa !20
  %i.gh = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #12 ; 33 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !23
  store ptr %i.gf, ptr @ldiamond, align 8, !tbaa !59
  %i.gj = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 4 uses
  store i32 0, ptr %i.gh, align 4, !tbaa !4
  %i.gk = lshr i32 8, %i.gj                       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 6, ptr %i.gm, align 4, !tbaa !60
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 5, ptr %i.gn, align 4, !tbaa !62
  %i.go = lshr i32 4, %i.gj                       ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i32 0, ptr %i.gr, align 4, !tbaa !60
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 28
  store i32 3, ptr %i.gs, align 4, !tbaa !62
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store i32 %i.gk, ptr %i.gt, align 4, !tbaa !4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  store i32 0, ptr %i.gu, align 4, !tbaa !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i32 0, ptr %i.gv, align 4, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 44
  store i32 5, ptr %i.gw, align 4, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store i32 %i.go, ptr %i.gx, align 4, !tbaa !4
  %i.gy = ashr i32 -4, %i.gj                      ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 52
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store i32 2, ptr %i.ha, align 4, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gh, i64 60
  store i32 3, ptr %i.hb, align 4, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  store i32 0, ptr %i.hc, align 4, !tbaa !4
  %i.hd = ashr i32 -8, %i.gj                      ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gh, i64 68
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  store i32 2, ptr %i.hf, align 4, !tbaa !60
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gh, i64 76
  store i32 5, ptr %i.hg, align 4, !tbaa !62
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gh, i64 80
  store i32 %i.gy, ptr %i.hh, align 4, !tbaa !4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gh, i64 84
  store i32 %i.gy, ptr %i.hi, align 4, !tbaa !4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gh, i64 88
  store i32 4, ptr %i.hj, align 4, !tbaa !60
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gh, i64 92
  store i32 3, ptr %i.hk, align 4, !tbaa !62
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  store i32 %i.hd, ptr %i.hl, align 4, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gh, i64 100
  store i32 0, ptr %i.hm, align 4, !tbaa !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  store i32 4, ptr %i.hn, align 4, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gh, i64 108
  store i32 5, ptr %i.ho, align 4, !tbaa !62
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gh, i64 112
  store i32 %i.gy, ptr %i.hp, align 4, !tbaa !4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gh, i64 116
  store i32 %i.go, ptr %i.hq, align 4, !tbaa !4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gh, i64 120
  store i32 6, ptr %i.hr, align 4, !tbaa !60
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gh, i64 124
  store i32 3, ptr %i.hs, align 4, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i32 1, ptr %i.ht, align 8, !tbaa !26
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  store i32 1, ptr %i.hu, align 4, !tbaa !27
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.gf, ptr %i.hv, align 8, !tbaa !28
  %i.hw = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 7 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.i, label %.lr.ph.i41

bb.i:                                             ; preds = %.lr.ph.i36
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.i, %.lr.ph.i36
  store i32 12, ptr %i.hw, align 8, !tbaa !20
  %i.hy = tail call noalias dereferenceable_or_null(192) ptr @calloc(i64 noundef 12, i64 noundef 16) #12 ; 46 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !23
  store ptr %i.hw, ptr @sbdiamond, align 8, !tbaa !59
  %i.ia = load ptr, ptr @sdiamond, align 8, !tbaa !59
  %7 = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 6 uses
  store i32 0, ptr %i.hy, align 4, !tbaa !4
  %8 = lshr i32 8, %7                             ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 %8, ptr %i.ib, align 4, !tbaa !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 6, ptr %i.ic, align 4, !tbaa !60
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 12, ptr %i.id, align 4, !tbaa !62
  %9 = lshr i32 4, %7                             ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i32 %9, ptr %i.ie, align 4, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  store i32 %9, ptr %i.if, align 4, !tbaa !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store i32 0, ptr %i.ig, align 4, !tbaa !60
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  store i32 12, ptr %i.ih, align 4, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  store i32 %8, ptr %i.ii, align 4, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 36
  store i32 0, ptr %i.ij, align 4, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  store i32 0, ptr %i.ik, align 4, !tbaa !60
  %i.il = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  store i32 12, ptr %i.il, align 4, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  store i32 %9, ptr %i.im, align 4, !tbaa !4
  %10 = ashr i32 -4, %7                           ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 52
  store i32 %10, ptr %i.in, align 4, !tbaa !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  store i32 2, ptr %i.io, align 4, !tbaa !60
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hy, i64 60
  store i32 12, ptr %i.ip, align 4, !tbaa !62
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  store i32 0, ptr %i.iq, align 4, !tbaa !4
  %11 = ashr i32 -8, %7                           ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hy, i64 68
  store i32 %11, ptr %i.ir, align 4, !tbaa !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.hy, i64 72
  store i32 2, ptr %i.is, align 4, !tbaa !60
  %i.it = getelementptr inbounds nuw i8, ptr %i.hy, i64 76
  store i32 12, ptr %i.it, align 4, !tbaa !62
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hy, i64 80
  store i32 %10, ptr %i.iu, align 4, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hy, i64 84
  store i32 %10, ptr %i.iv, align 4, !tbaa !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hy, i64 88
  store i32 4, ptr %i.iw, align 4, !tbaa !60
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hy, i64 92
  store i32 12, ptr %i.ix, align 4, !tbaa !62
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  store i32 %11, ptr %i.iy, align 4, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hy, i64 100
  store i32 0, ptr %i.iz, align 4, !tbaa !4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hy, i64 104
  store i32 4, ptr %i.ja, align 4, !tbaa !60
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hy, i64 108
  store i32 12, ptr %i.jb, align 4, !tbaa !62
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hy, i64 112
  store i32 %10, ptr %i.jc, align 4, !tbaa !4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hy, i64 116
  store i32 %9, ptr %i.jd, align 4, !tbaa !4
  %i.je = getelementptr inbounds nuw i8, ptr %i.hy, i64 120
  store i32 6, ptr %i.je, align 4, !tbaa !60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hy, i64 124
  store i32 12, ptr %i.jf, align 4, !tbaa !62
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hy, i64 128
  store i32 0, ptr %i.jg, align 4, !tbaa !4
  %i.jh = lshr i32 2, %7                          ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hy, i64 132
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hy, i64 136
  store i32 6, ptr %i.jj, align 4, !tbaa !60
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hy, i64 140
  store i32 12, ptr %i.jk, align 4, !tbaa !62
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hy, i64 144
  store i32 %i.jh, ptr %i.jl, align 4, !tbaa !4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hy, i64 148
  store <4 x i32> <i32 0, i32 0, i32 12, i32 0>, ptr %i.jm, align 4, !tbaa !4
  %i.jn = ashr i32 -2, %7                         ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hy, i64 164
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hy, i64 168
  store i32 2, ptr %i.jp, align 4, !tbaa !60
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hy, i64 172
  store i32 12, ptr %i.jq, align 4, !tbaa !62
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hy, i64 176
  store i32 %i.jn, ptr %i.jr, align 4, !tbaa !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.hy, i64 180
  store i32 0, ptr %i.js, align 4, !tbaa !4
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hy, i64 184
  store i32 4, ptr %i.jt, align 4, !tbaa !60
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hy, i64 188
  store i32 12, ptr %i.ju, align 4, !tbaa !62
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store i32 0, ptr %i.jv, align 8, !tbaa !26
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  store i32 1, ptr %i.jw, align 4, !tbaa !27
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store ptr %i.ia, ptr %i.jx, align 8, !tbaa !28
  %i.jy = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 7 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.j, label %.lr.ph.i46

bb.j:                                             ; preds = %.lr.ph.i41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.j, %.lr.ph.i41
  store i32 8, ptr %i.jy, align 8, !tbaa !20
  %i.ka = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #12 ; 33 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !23
  store ptr %i.jy, ptr @pmvfast, align 8, !tbaa !59
  %i.kc = load ptr, ptr @sdiamond, align 8, !tbaa !59
  %i.kd = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 4 uses
  store i32 0, ptr %i.ka, align 4, !tbaa !4
  %i.ke = lshr i32 8, %i.kd                       ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 6, ptr %i.kg, align 4, !tbaa !60
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 5, ptr %i.kh, align 4, !tbaa !62
  %i.ki = lshr i32 4, %i.kd                       ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 20
  store i32 %i.ki, ptr %i.kk, align 4, !tbaa !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  store i32 0, ptr %i.kl, align 4, !tbaa !60
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 28
  store i32 3, ptr %i.km, align 4, !tbaa !62
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  store i32 %i.ke, ptr %i.kn, align 4, !tbaa !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ka, i64 36
  store i32 0, ptr %i.ko, align 4, !tbaa !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  store i32 0, ptr %i.kp, align 4, !tbaa !60
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 44
  store i32 5, ptr %i.kq, align 4, !tbaa !62
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  store i32 %i.ki, ptr %i.kr, align 4, !tbaa !4
  %i.ks = ashr i32 -4, %i.kd                      ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ka, i64 52
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  store i32 2, ptr %i.ku, align 4, !tbaa !60
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ka, i64 60
  store i32 3, ptr %i.kv, align 4, !tbaa !62
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ka, i64 64
  store i32 0, ptr %i.kw, align 4, !tbaa !4
  %i.kx = ashr i32 -8, %i.kd                      ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ka, i64 68
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  store i32 2, ptr %i.kz, align 4, !tbaa !60
  %i.la = getelementptr inbounds nuw i8, ptr %i.ka, i64 76
  store i32 5, ptr %i.la, align 4, !tbaa !62
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ka, i64 80
  store i32 %i.ks, ptr %i.lb, align 4, !tbaa !4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ka, i64 84
  store i32 %i.ks, ptr %i.lc, align 4, !tbaa !4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ka, i64 88
  store i32 4, ptr %i.ld, align 4, !tbaa !60
  %i.le = getelementptr inbounds nuw i8, ptr %i.ka, i64 92
  store i32 3, ptr %i.le, align 4, !tbaa !62
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ka, i64 96
  store i32 %i.kx, ptr %i.lf, align 4, !tbaa !4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ka, i64 100
  store i32 0, ptr %i.lg, align 4, !tbaa !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ka, i64 104
  store i32 4, ptr %i.lh, align 4, !tbaa !60
  %i.li = getelementptr inbounds nuw i8, ptr %i.ka, i64 108
  store i32 5, ptr %i.li, align 4, !tbaa !62
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ka, i64 112
  store i32 %i.ks, ptr %i.lj, align 4, !tbaa !4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ka, i64 116
  store i32 %i.ki, ptr %i.lk, align 4, !tbaa !4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ka, i64 120
  store i32 6, ptr %i.ll, align 4, !tbaa !60
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ka, i64 124
  store i32 3, ptr %i.lm, align 4, !tbaa !62
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i32 0, ptr %i.ln, align 8, !tbaa !26
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  store i32 1, ptr %i.lo, align 4, !tbaa !27
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  store ptr %i.kc, ptr %i.lp, align 8, !tbaa !28
  %i.lq = shl nsw i32 %i.l, 3                     ; 2 uses
  %i.lr = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.k, label %allocEPZSpattern.exit50

bb.k:                                             ; preds = %.lr.ph.i46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %allocEPZSpattern.exit50

allocEPZSpattern.exit50:                          ; preds = %.lr.ph.i46, %bb.k
  store i32 %i.lq, ptr %i.lr, align 8, !tbaa !20
  %i.lt = sext i32 %i.lq to i64
  %i.lu = tail call noalias ptr @calloc(i64 noundef %i.lt, i64 noundef 16) #12
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !23
  store ptr %i.lr, ptr @window_predictor, align 8, !tbaa !59
  %i.lw = mul nsw i32 %i.l, 20                    ; 3 uses
  %i.lx = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.l, label %allocEPZSpattern.exit51

bb.l:                                             ; preds = %allocEPZSpattern.exit50
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  %.pre.a = load ptr, ptr @window_predictor, align 8, !tbaa !59
  br label %allocEPZSpattern.exit51

allocEPZSpattern.exit51:                          ; preds = %allocEPZSpattern.exit50, %bb.l
  %i.lz = phi ptr [ %i.lr, %allocEPZSpattern.exit50 ], [ %.pre.a, %bb.l ] ; 2 uses
  store i32 %i.lw, ptr %i.lx, align 8, !tbaa !20
  %i.ma = sext i32 %i.lw to i64
  %i.mb = tail call noalias ptr @calloc(i64 noundef %i.ma, i64 noundef 16) #12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !23
  store ptr %i.lx, ptr @window_predictor_extended, align 8, !tbaa !59
  %i.md = load ptr, ptr @input, align 8, !tbaa !29 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !52 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 4120
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !30
  %sext = shl i32 %i.mf, 16
  %i.mi = ashr exact i32 %sext, 16                ; 3 uses
  %i.mj = mul nsw i32 %i.mi, %i.mi
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %allocEPZSpattern.exit51
  %.0.i.i = phi i32 [ %i.mk, %bb.m ], [ 0, %allocEPZSpattern.exit51 ] ; 3 uses
  %i.mk = add nuw nsw i32 %.0.i.i, 1              ; 2 uses
  %i.ml = shl nuw i32 2, %.0.i.i
  %.not.i.i = icmp sgt i32 %i.ml, %i.mj
  br i1 %.not.i.i, label %RoundLog2.exit.i, label %bb.m, !llvm.loop !35

RoundLog2.exit.i:                                 ; preds = %bb.m
  %i.mm = icmp samesign ugt i32 %.0.i.i, 2
  br i1 %i.mm, label %.lr.ph142.i, label %EPZSWindowPredictorInit.exit

.lr.ph142.i:                                      ; preds = %RoundLog2.exit.i
  %.not.i52 = icmp eq i32 %i.mh, 0
  %i.mn = select i1 %.not.i52, i32 0, i32 2
  %i.mo = lshr i32 %i.mk, 1
  %i.mp = add nsw i32 %i.mo, -2
  %i.mq = shl nsw i32 %i.mi, %i.mn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph142.i
  %.0122141.i = phi i64 [ 0, %.lr.ph142.i ], [ %indvars.iv.next152.1.i, %bb.n ] ; 2 uses
  %.0125140.i = phi i32 [ %i.mp, %.lr.ph142.i ], [ %i.nl, %bb.n ] ; 3 uses
  %i.mt = ashr i32 %i.mq, %.0125140.i             ; 7 uses
  %i.mu = getelementptr [16 x i8], ptr %i.ms, i64 %.0122141.i ; 16 uses
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  store i32 0, ptr %i.mv, align 4, !tbaa !4
  %i.mw = getelementptr i8, ptr %i.mu, i64 16
  store i32 %i.mt, ptr %i.mw, align 4, !tbaa !4
  %i.mx = getelementptr i8, ptr %i.mu, i64 20
  store i32 %i.mt, ptr %i.mx, align 4, !tbaa !4
  %i.my = getelementptr i8, ptr %i.mu, i64 32
  store i32 0, ptr %i.my, align 4, !tbaa !4
  %i.mz = getelementptr i8, ptr %i.mu, i64 36
  store i32 %i.mt, ptr %i.mz, align 4, !tbaa !4
  %i.na = sub nsw i32 0, %i.mt                    ; 6 uses
  %i.nb = getelementptr i8, ptr %i.mu, i64 48
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !4
  %i.nc = getelementptr i8, ptr %i.mu, i64 52
  store i32 %i.mt, ptr %i.nc, align 4, !tbaa !4
  %i.nd = getelementptr i8, ptr %i.mu, i64 64
  store i32 %i.na, ptr %i.nd, align 4, !tbaa !4
  %i.ne = getelementptr i8, ptr %i.mu, i64 68
  store i32 0, ptr %i.ne, align 4, !tbaa !4
  %i.nf = getelementptr i8, ptr %i.mu, i64 80
end_hunk_0
