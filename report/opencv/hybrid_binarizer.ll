Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hybrid_binarizer?download=true
inline.NumInlined: 161
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5zxing15HybridBinarizerC2ENS_3RefINS_15LuminanceSourceEEE:bb.a
_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit25:  ; preds = %bb.i, %bb.h, %bb.g, %_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit37
  %.pn18.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn18, %_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit37 ], [ %i.ah, %bb.g ], [ %i.ah, %bb.h ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn18.pn.pn.pn.pn
}

declare void @_ZN5zxing24GlobalHistogramBinarizerC2ENS_3RefINS_15LuminanceSourceEEE(ptr noundef nonnull align 8 dereferenceable(121), ptr noundef align 8) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN5zxing9Binarizer13getBlockArrayEi(ptr dead_on_unwind writable sret(%"class.zxing::ArrayRef.3") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefINS_15BINARIZER_BLOCKEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN5zxing7Counted7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !18
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5zxing7Counted7releaseEv.exit

bb.c:                                             ; preds = %bb.b
  store i32 -559026175, ptr %i.c, align 8, !tbaa !18
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #10, !inline_history !4
  br label %_ZN5zxing7Counted7releaseEv.exit

_ZN5zxing7Counted7releaseEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN5zxing15HybridBinarizer10initBlocksEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 14 uses
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %.lr.ph121, label %._crit_edge122.split

.lr.ph121:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = icmp sgt i32 %i.c, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge122.split

.lr.ph.preheader:                                 ; preds = %.lr.ph121
  %i.n = zext nneg i32 %i.c to i64                ; 2 uses
  %wide.trip.count134 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

._crit_edge122.split:                             ; preds = %._crit_edge, %.lr.ph121, %bb.a
  ret i32 1

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 5 uses
  %i.o = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.p = shl i32 %i.o, 3
  %i.q = load i32, ptr %i.j, align 8, !tbaa !43
  %i.r = add nsw i32 %i.q, -8
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.r)
  %i.s = mul nuw nsw i64 %indvars.iv131, %i.n
  %i.t = icmp ne i64 %indvars.iv131, 0
  %i.u = add nsw i64 %indvars.iv131, -1
  %i.v = mul nuw nsw i64 %i.u, %i.n
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge122.split, label %.lr.ph, !llvm.loop !64

bb.b:                                             ; preds = %.lr.ph, %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit
  %indvars.iv127 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next128, %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit ] ; 5 uses
  %i.w = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.x = shl i32 %i.w, 3
  %i.y = load i32, ptr %i.l, align 4, !tbaa !45   ; 6 uses
  %i.z = add nsw i32 %i.y, -8
  %spec.select96 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.z)
  %i.aa = mul nsw i32 %i.y, %spec.select
  %i.ab = add nsw i32 %spec.select96, %i.aa
  %i.ac = sext i32 %i.y to i64                    ; 5 uses
  br label %.preheader100

.preheader100:                                    ; preds = %bb.b, %.loopexit99
  %.072117 = phi i32 [ %i.ab, %bb.b ], [ %i.ey, %.loopexit99 ] ; 3 uses
  %.073116 = phi i32 [ 0, %bb.b ], [ %i.ex, %.loopexit99 ] ; 7 uses
  %.076115 = phi i32 [ 0, %bb.b ], [ %.278.7, %.loopexit99 ]
  %.079114 = phi i32 [ 255, %bb.b ], [ %spec.select97.7, %.loopexit99 ]
  %.082113 = phi i32 [ 0, %bb.b ], [ %i.bq, %.loopexit99 ]
  %i.ad = sext i32 %.072117 to i64                ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !46
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %i.ah = add nsw i32 %.082113, %i.ag
  %spec.select97 = tail call i32 @llvm.umin.i32(i32 %.079114, i32 %i.ag)
  %.278 = tail call i32 @llvm.umax.i32(i32 %.076115, i32 %i.ag)
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !46
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = add nsw i32 %i.ah, %i.al
  %spec.select97.1 = tail call i32 @llvm.umin.i32(i32 %spec.select97, i32 %i.al)
  %.278.1 = tail call i32 @llvm.umax.i32(i32 %.278, i32 %i.al)
  %i.an = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !46
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = add nsw i32 %i.am, %i.aq
  %spec.select97.2 = tail call i32 @llvm.umin.i32(i32 %spec.select97.1, i32 %i.aq)
  %.278.2 = tail call i32 @llvm.umax.i32(i32 %.278.1, i32 %i.aq)
  %i.as = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.at = getelementptr i8, ptr %i.as, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add nsw i32 %i.ar, %i.av
  %spec.select97.3 = tail call i32 @llvm.umin.i32(i32 %spec.select97.2, i32 %i.av)
  %.278.3 = tail call i32 @llvm.umax.i32(i32 %.278.2, i32 %i.av)
  %i.ax = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !46
  %i.ba = zext i8 %i.az to i32                    ; 3 uses
  %i.bb = add nsw i32 %i.aw, %i.ba
  %spec.select97.4 = tail call i32 @llvm.umin.i32(i32 %spec.select97.3, i32 %i.ba)
  %.278.4 = tail call i32 @llvm.umax.i32(i32 %.278.3, i32 %i.ba)
  %i.bc = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.bd = getelementptr i8, ptr %i.bc, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !46
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = add nsw i32 %i.bb, %i.bf
  %spec.select97.5 = tail call i32 @llvm.umin.i32(i32 %spec.select97.4, i32 %i.bf)
  %.278.5 = tail call i32 @llvm.umax.i32(i32 %.278.4, i32 %i.bf)
  %i.bh = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.bi = getelementptr i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = zext i8 %i.bj to i32                    ; 3 uses
  %i.bl = add nsw i32 %i.bg, %i.bk
  %spec.select97.6 = tail call i32 @llvm.umin.i32(i32 %spec.select97.5, i32 %i.bk)
  %.278.6 = tail call i32 @llvm.umax.i32(i32 %.278.5, i32 %i.bk)
  %i.bm = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.bn = getelementptr i8, ptr %i.bm, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !46
  %i.bp = zext i8 %i.bo to i32                    ; 3 uses
  %i.bq = add nsw i32 %i.bl, %i.bp                ; 5 uses
  %spec.select97.7 = tail call i32 @llvm.umin.i32(i32 %spec.select97.6, i32 %i.bp) ; 5 uses
  %.278.7 = tail call i32 @llvm.umax.i32(i32 %.278.6, i32 %i.bp) ; 3 uses
  %i.br = sub nsw i32 %.278.7, %spec.select97.7
  %i.bs = icmp sgt i32 %i.br, 24                  ; 2 uses
  br i1 %i.bs, label %.preheader98, label %.loopexit99

.loopexit99.thread.loopexit:                      ; preds = %.preheader, %.preheader.prol.loopexit
  %slprdx.acc176.lcssa = phi <8 x i32> [ %slprdx.acc176.lcssa.unr, %.preheader.prol.loopexit ], [ %slprdx.acc176.3, %.preheader ]
  %i.bt = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %slprdx.acc176.lcssa)
  br label %.loopexit99.thread

.loopexit99.thread:                               ; preds = %.loopexit99, %.loopexit99.thread.loopexit, %vector.body, %.preheader98
  %slprdx.fromloop = phi i32 [ %i.bt, %.loopexit99.thread.loopexit ], [ %i.bq, %.preheader98 ], [ %i.ed, %vector.body ], [ %i.bq, %.loopexit99 ] ; 2 uses
  %i.bu = add nuw nsw i64 %indvars.iv127, %i.s    ; 2 uses
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !29  ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !49 ; 5 uses
  %i.by = getelementptr [16 x i8], ptr %i.bx, i64 %i.bu ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %spec.select97.7, ptr %i.bz, align 4, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %.278.7, ptr %i.ca, align 4, !tbaa !73
  store i32 %slprdx.fromloop, ptr %i.by, align 4, !tbaa !74
  %i.cb = ashr i32 %slprdx.fromloop, 6
  br i1 %i.bs, label %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit99.thread
  %i.cc = lshr i32 %spec.select97.7, 1            ; 2 uses
  %i.cd = icmp ne i64 %indvars.iv127, 0
  %or.cond.i = and i1 %i.t, %i.cd
  br i1 %or.cond.i, label %bb.d, label %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit

bb.d:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !18 ; 2 uses
  %i.cg = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv127
  %i.ch = getelementptr [16 x i8], ptr %i.cg, i64 %i.v ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51
  %i.ck = getelementptr i8, ptr %i.by, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51
  %i.cm = shl nsw i32 %i.cl, 1
  %i.cn = add nsw i32 %i.cm, %i.cj
  %i.co = getelementptr i8, ptr %i.ch, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !51
  %i.cq = add nsw i32 %i.cn, %i.cp
  %i.cr = ashr i32 %i.cq, 2                       ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store i32 %i.cf, ptr %1, align 8, !tbaa !18
  %i.cs = icmp eq i32 %i.cf, 0
  br i1 %i.cs, label %bb.e, label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  store i32 -559026175, ptr %1, align 8, !tbaa !18
  %i.ct = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(12) %i.bv) #10, !inline_history !65
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !29
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 16
  %.pre136.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !49
  br label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i

_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %.pre136 = phi ptr [ %.pre136.pre, %bb.e ], [ %i.bx, %bb.d ]
  %i.cw = icmp slt i32 %spec.select97.7, %i.cr
  %spec.select.i = select i1 %i.cw, i32 %i.cr, i32 %i.cc
  br label %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit

_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit: ; preds = %.loopexit99.thread, %bb.c, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i
  %i.cx = phi ptr [ %.pre136, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i ], [ %i.bx, %bb.c ], [ %i.bx, %.loopexit99.thread ]
  %.1.i = phi i32 [ %spec.select.i, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i ], [ %i.cc, %bb.c ], [ %i.cb, %.loopexit99.thread ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.bu
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 %.1.i, ptr %i.cz, align 4, !tbaa !51
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %._crit_edge, label %bb.b, !llvm.loop !66

.preheader98:                                     ; preds = %.preheader100
  %i.da = icmp samesign ult i32 %.073116, 7
  br i1 %i.da, label %.preheader.preheader, label %.loopexit99.thread

.preheader.preheader:                             ; preds = %.preheader98
  %.1107 = add i32 %.072117, %i.y
  %i.db = sext i32 %.1107 to i64                  ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.073116, 4
  %ident.check.not = icmp eq i32 %i.y, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %slprdx.init175 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.bq, i64 0
  br i1 %or.cond, label %vector.body, label %.preheader.preheader177

vector.body:                                      ; preds = %.preheader.preheader
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bq, i64 0
  %i.dd = or disjoint i32 %.073116, 4
  %i.de = add nsw i64 %i.db, 4
  %i.df = getelementptr i8, ptr %i.h, i64 %i.db   ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.df, align 1, !tbaa !46
  %i.dg = zext <4 x i8> %wide.load to <4 x i32>
  %i.dh = add <4 x i32> %i.dc, %i.dg
  %i.di = getelementptr i8, ptr %i.df, i64 1
  %wide.load167 = load <4 x i8>, ptr %i.di, align 1, !tbaa !46
  %i.dj = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.dk = add <4 x i32> %i.dh, %i.dj
  %i.dl = getelementptr i8, ptr %i.df, i64 2
  %wide.load168 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !46
  %i.dm = zext <4 x i8> %wide.load168 to <4 x i32>
  %i.dn = add <4 x i32> %i.dk, %i.dm
  %i.do = getelementptr i8, ptr %i.df, i64 3
  %wide.load169 = load <4 x i8>, ptr %i.do, align 1, !tbaa !46
  %i.dp = zext <4 x i8> %wide.load169 to <4 x i32>
  %i.dq = add <4 x i32> %i.dn, %i.dp
  %i.dr = getelementptr i8, ptr %i.df, i64 4
  %wide.load170 = load <4 x i8>, ptr %i.dr, align 1, !tbaa !46
  %i.ds = zext <4 x i8> %wide.load170 to <4 x i32>
  %i.dt = add <4 x i32> %i.dq, %i.ds
  %i.du = getelementptr i8, ptr %i.df, i64 5
  %wide.load171 = load <4 x i8>, ptr %i.du, align 1, !tbaa !46
  %i.dv = zext <4 x i8> %wide.load171 to <4 x i32>
  %i.dw = add <4 x i32> %i.dt, %i.dv
  %i.dx = getelementptr i8, ptr %i.df, i64 6
  %wide.load172 = load <4 x i8>, ptr %i.dx, align 1, !tbaa !46
  %i.dy = zext <4 x i8> %wide.load172 to <4 x i32>
  %i.dz = add <4 x i32> %i.dw, %i.dy
  %i.ea = getelementptr i8, ptr %i.df, i64 7
  %wide.load173 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !46
  %i.eb = zext <4 x i8> %wide.load173 to <4 x i32>
  %i.ec = add <4 x i32> %i.dz, %i.eb
  %i.ed = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ec) ; 2 uses
  %cmp.n = icmp eq i32 %.073116, 3
  %slprdx.init = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.ed, i64 0
  br i1 %cmp.n, label %.loopexit99.thread, label %.preheader.preheader177

.preheader.preheader177:                          ; preds = %.preheader.preheader, %vector.body
  %indvars.iv.ph = phi i64 [ %i.db, %.preheader.preheader ], [ %i.de, %vector.body ] ; 2 uses
  %.174111.in.ph = phi i32 [ %.073116, %.preheader.preheader ], [ %i.dd, %vector.body ] ; 4 uses
  %slprdx.acc.ph = phi <8 x i32> [ %slprdx.init175, %.preheader.preheader ], [ %slprdx.init, %vector.body ] ; 2 uses
  %i.ee = and i32 %.174111.in.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %i.ee, 3
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader177, %.preheader.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.prol ], [ %indvars.iv.ph, %.preheader.preheader177 ] ; 2 uses
  %.174111.in.prol = phi i32 [ %.174111.prol, %.preheader.prol ], [ %.174111.in.ph, %.preheader.preheader177 ]
  %slprdx.acc.prol = phi <8 x i32> [ %slprdx.acc176.prol, %.preheader.prol ], [ %slprdx.acc.ph, %.preheader.preheader177 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader177 ]
  %i.ef = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.prol
  %i.eg = load <8 x i8>, ptr %i.ef, align 1, !tbaa !46
  %i.eh = zext <8 x i8> %i.eg to <8 x i32>
  %slprdx.acc176.prol = add <8 x i32> %slprdx.acc.prol, %i.eh ; 3 uses
  %.174111.prol = add i32 %.174111.in.prol, 1     ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, %i.ac ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.ei = xor i32 %i.ee, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.ei, 3
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !67

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader177
  %slprdx.acc176.lcssa.unr = phi <8 x i32> [ poison, %.preheader.preheader177 ], [ %slprdx.acc176.prol, %.preheader.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader177 ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %.174111.in.unr = phi i32 [ %.174111.in.ph, %.preheader.preheader177 ], [ %.174111.prol, %.preheader.prol ]
  %slprdx.acc.unr = phi <8 x i32> [ %slprdx.acc.ph, %.preheader.preheader177 ], [ %slprdx.acc176.prol, %.preheader.prol ]
  %i.ej = add i32 %.174111.in.ph, -4
  %i.ek = icmp ult i32 %i.ej, 3
  br i1 %i.ek, label %.loopexit99.thread.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.174111.in = phi i32 [ %.174111.3, %.preheader ], [ %.174111.in.unr, %.preheader.prol.loopexit ]
  %slprdx.acc = phi <8 x i32> [ %slprdx.acc176.3, %.preheader ], [ %slprdx.acc.unr, %.preheader.prol.loopexit ]
  %i.el = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv
  %i.em = load <8 x i8>, ptr %i.el, align 1, !tbaa !46
  %i.en = zext <8 x i8> %i.em to <8 x i32>
  %slprdx.acc176 = add <8 x i32> %slprdx.acc, %i.en
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ac ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next
  %i.ep = load <8 x i8>, ptr %i.eo, align 1, !tbaa !46
  %i.eq = zext <8 x i8> %i.ep to <8 x i32>
  %slprdx.acc176.1 = add <8 x i32> %slprdx.acc176, %i.eq
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.ac ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.1
  %i.es = load <8 x i8>, ptr %i.er, align 1, !tbaa !46
  %i.et = zext <8 x i8> %i.es to <8 x i32>
  %slprdx.acc176.2 = add <8 x i32> %slprdx.acc176.1, %i.et
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.ac ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.2
  %i.ev = load <8 x i8>, ptr %i.eu, align 1, !tbaa !46
  %i.ew = zext <8 x i8> %i.ev to <8 x i32>
  %slprdx.acc176.3 = add <8 x i32> %slprdx.acc176.2, %i.ew ; 2 uses
  %.174111.3 = add i32 %.174111.in, 4             ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.ac
  %exitcond.not.3 = icmp eq i32 %.174111.3, 7
  br i1 %exitcond.not.3, label %.loopexit99.thread.loopexit, label %.preheader, !llvm.loop !68

.loopexit99:                                      ; preds = %.preheader100
  %i.ex = add nuw nsw i32 %.073116, 1
  %i.ey = add nsw i32 %.072117, %i.y
  %i.ez = icmp samesign ult i32 %.073116, 7
  br i1 %i.ez, label %.preheader100, label %.loopexit99.thread, !llvm.loop !69
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5zxing15HybridBinarizer17initBlockIntegralEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(228) initializes((220, 228)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.e = load <2 x i32>, ptr %i.a, align 4, !tbaa !30
  %i.f = add nsw <2 x i32> %i.e, splat (i32 1)
  store <2 x i32> %i.f, ptr %i.b, align 4, !tbaa !30
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 7 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !54
  %i.i = load i32, ptr %i.d, align 8, !tbaa !80
  %i.j = mul nsw i32 %i.i, %i.h                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIiEE, i64 16), ptr %i.g, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.m = sext i32 %i.j to i64                     ; 2 uses
  %i.n = icmp slt i32 %i.j, 0
  br i1 %i.n, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.o = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #11
          to label %.noexc30 unwind label %bb.e   ; 5 uses

.noexc30:                                         ; preds = %.noexc3.i
  store ptr %i.p, ptr %i.l, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %i.r, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  %.pre = load i32, ptr %i.k, align 8, !tbaa !18
  %i.t = add i32 %.pre, 1
  br label %bb.b

bb.b:                                             ; preds = %.noexc30, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.u = phi ptr [ %i.p, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
end_hunk_0
