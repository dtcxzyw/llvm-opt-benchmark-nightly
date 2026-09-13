Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hybrid_binarizer?download=true
inline.NumInlined: 161
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5zxing15HybridBinarizerC2ENS_3RefINS_15LuminanceSourceEEE:bb.a
  br i1 %i.ce, label %bb.x, label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  store i32 -559026175, ptr %i.cb, align 8, !tbaa !18
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #10, !inline_history !2
  br label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit

_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit: ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x i32> %i.ac, ptr %i.ci, align 4, !tbaa !30
  %i.cj = call noundef i32 @_ZN5zxing15HybridBinarizer10initBlocksEv(ptr noundef nonnull align 8 dereferenceable(228) %0) ; 0 uses
  %i.ck = invoke noundef i32 @_ZN5zxing15HybridBinarizer17initBlockIntegralEv(ptr noundef nonnull align 8 dereferenceable(228) %0)
          to label %bb.y unwind label %bb.ab      ; 0 uses

bb.y:                                             ; preds = %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit
  ret void

bb.z:                                             ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.pn18 = phi { ptr, i32 } [ %i.cn, %bb.ab ], [ %i.cm, %bb.aa ], [ %i.cl, %bb.z ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %i.t, align 8, !tbaa !20
  %i.co = load ptr, ptr %i.v, align 8, !tbaa !26  ; 4 uses
  %.not.i31 = icmp eq ptr %i.co, null
  br i1 %.not.i31, label %_ZN5zxing8ArrayRefIiED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !18
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !18
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ae, label %_ZN5zxing8ArrayRefIiED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  store i32 -559026175, ptr %i.cp, align 8, !tbaa !18
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(12) %i.co) #10, !inline_history !3
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit

_ZN5zxing8ArrayRefIiED2Ev.exit:                   ; preds = %bb.ae, %bb.ad, %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefINS_15BINARIZER_BLOCKEEE, i64 16), ptr %i.q, align 8, !tbaa !20
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !29  ; 4 uses
  %.not.i32 = icmp eq ptr %i.cw, null
  br i1 %.not.i32, label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit33, label %bb.af

bb.af:                                            ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !18
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !18
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ag, label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit33

bb.ag:                                            ; preds = %bb.af
  store i32 -559026175, ptr %i.cx, align 8, !tbaa !18
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(12) %i.cw) #10, !inline_history !2
  br label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit33

_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit33: ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit, %bb.af, %bb.ag
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %i.n, align 8, !tbaa !20
  %i.de = load ptr, ptr %i.p, align 8, !tbaa !26  ; 4 uses
  %.not.i34 = icmp eq ptr %i.de, null
  br i1 %.not.i34, label %_ZN5zxing8ArrayRefIiED2Ev.exit35, label %bb.ah

bb.ah:                                            ; preds = %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit33
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !18
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !18
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ai, label %_ZN5zxing8ArrayRefIiED2Ev.exit35

bb.ai:                                            ; preds = %bb.ah
  store i32 -559026175, ptr %i.df, align 8, !tbaa !18
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(12) %i.de) #10, !inline_history !3
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit35

_ZN5zxing8ArrayRefIiED2Ev.exit35:                 ; preds = %bb.ai, %bb.ah, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit33
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !23  ; 4 uses
  %.not.i36 = icmp eq ptr %i.dm, null
  br i1 %.not.i36, label %_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit37, label %bb.aj

bb.aj:                                            ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !18
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !18
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ak, label %_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit37

bb.ak:                                            ; preds = %bb.aj
  store i32 -559026175, ptr %i.dn, align 8, !tbaa !18
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %i.dm) #10, !inline_history !1
  br label %_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit37

_ZN5zxing3RefINS_10ByteMatrixEED2Ev.exit37:       ; preds = %bb.ak, %bb.aj, %_ZN5zxing8ArrayRefIiED2Ev.exit35
  call void @_ZN5zxing24GlobalHistogramBinarizerD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) #10
  br label %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit25

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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 12 uses
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
  %1 = add nsw i64 %indvars.iv131, -1
  %2 = mul nuw nsw i64 %1, %i.n
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge122.split, label %.lr.ph, !llvm.loop !63

bb.b:                                             ; preds = %.lr.ph, %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit
  %indvars.iv127 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next128, %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit ] ; 5 uses
  %i.u = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.v = shl i32 %i.u, 3
  %i.w = load i32, ptr %i.l, align 4, !tbaa !45   ; 6 uses
  %i.x = add nsw i32 %i.w, -8
  %spec.select96 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.x)
  %i.y = mul nsw i32 %i.w, %spec.select
  %i.z = add nsw i32 %spec.select96, %i.y
  %i.aa = sext i32 %i.w to i64                    ; 3 uses
  br label %.preheader100

.preheader100:                                    ; preds = %bb.b, %.loopexit99
  %.072117 = phi i32 [ %i.z, %bb.b ], [ %i.er, %.loopexit99 ] ; 3 uses
  %.073116 = phi i32 [ 0, %bb.b ], [ %i.eq, %.loopexit99 ] ; 7 uses
  %.076115 = phi i32 [ 0, %bb.b ], [ %.278.7, %.loopexit99 ]
  %.079114 = phi i32 [ 255, %bb.b ], [ %spec.select97.7, %.loopexit99 ]
  %.082113 = phi i32 [ 0, %bb.b ], [ %i.bo, %.loopexit99 ]
  %i.ab = sext i32 %.072117 to i64                ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = add nsw i32 %.082113, %i.ae
  %spec.select97 = tail call i32 @llvm.umin.i32(i32 %.079114, i32 %i.ae)
  %.278 = tail call i32 @llvm.umax.i32(i32 %.076115, i32 %i.ae)
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !46
  %i.aj = zext i8 %i.ai to i32                    ; 3 uses
  %i.ak = add nsw i32 %i.af, %i.aj
  %spec.select97.1 = tail call i32 @llvm.umin.i32(i32 %spec.select97, i32 %i.aj)
  %.278.1 = tail call i32 @llvm.umax.i32(i32 %.278, i32 %i.aj)
  %i.al = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !46
  %i.ao = zext i8 %i.an to i32                    ; 3 uses
  %i.ap = add nsw i32 %i.ak, %i.ao
  %spec.select97.2 = tail call i32 @llvm.umin.i32(i32 %spec.select97.1, i32 %i.ao)
  %.278.2 = tail call i32 @llvm.umax.i32(i32 %.278.1, i32 %i.ao)
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !46
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = add nsw i32 %i.ap, %i.at
  %spec.select97.3 = tail call i32 @llvm.umin.i32(i32 %spec.select97.2, i32 %i.at)
  %.278.3 = tail call i32 @llvm.umax.i32(i32 %.278.2, i32 %i.at)
  %i.av = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !46
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = add nsw i32 %i.au, %i.ay
  %spec.select97.4 = tail call i32 @llvm.umin.i32(i32 %spec.select97.3, i32 %i.ay)
  %.278.4 = tail call i32 @llvm.umax.i32(i32 %.278.3, i32 %i.ay)
  %i.ba = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.bb = getelementptr i8, ptr %i.ba, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !46
  %i.bd = zext i8 %i.bc to i32                    ; 3 uses
  %i.be = add nsw i32 %i.az, %i.bd
  %spec.select97.5 = tail call i32 @llvm.umin.i32(i32 %spec.select97.4, i32 %i.bd)
  %.278.5 = tail call i32 @llvm.umax.i32(i32 %.278.4, i32 %i.bd)
  %i.bf = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.bg = getelementptr i8, ptr %i.bf, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !46
  %i.bi = zext i8 %i.bh to i32                    ; 3 uses
  %i.bj = add nsw i32 %i.be, %i.bi
  %spec.select97.6 = tail call i32 @llvm.umin.i32(i32 %spec.select97.5, i32 %i.bi)
  %.278.6 = tail call i32 @llvm.umax.i32(i32 %.278.5, i32 %i.bi)
  %i.bk = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.bl = getelementptr i8, ptr %i.bk, i64 7
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !46
  %i.bn = zext i8 %i.bm to i32                    ; 3 uses
  %i.bo = add nsw i32 %i.bj, %i.bn                ; 5 uses
  %spec.select97.7 = tail call i32 @llvm.umin.i32(i32 %spec.select97.6, i32 %i.bn) ; 5 uses
  %.278.7 = tail call i32 @llvm.umax.i32(i32 %.278.6, i32 %i.bn) ; 3 uses
  %i.bp = sub nsw i32 %.278.7, %spec.select97.7
  %i.bq = icmp sgt i32 %i.bp, 24                  ; 2 uses
  br i1 %i.bq, label %.preheader98, label %.loopexit99

.loopexit99.thread:                               ; preds = %.loopexit99, %.preheader.prol.loopexit, %.preheader, %vector.body, %.preheader98
  %.4144 = phi i32 [ %op.rdx.1, %.preheader ], [ %i.bo, %.preheader98 ], [ %i.eb, %vector.body ], [ %op.rdx.lcssa.unr, %.preheader.prol.loopexit ], [ %i.bo, %.loopexit99 ] ; 2 uses
  %i.br = add nuw nsw i64 %indvars.iv127, %i.s    ; 2 uses
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !29  ; 5 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 5 uses
  %i.bv = getelementptr [16 x i8], ptr %i.bu, i64 %i.br ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %spec.select97.7, ptr %i.bw, align 4, !tbaa !70
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %.278.7, ptr %i.bx, align 4, !tbaa !71
  store i32 %.4144, ptr %i.bv, align 4, !tbaa !72
  %i.by = ashr i32 %.4144, 6
  br i1 %i.bq, label %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit99.thread
  %i.bz = lshr i32 %spec.select97.7, 1            ; 2 uses
  %i.ca = icmp ne i64 %indvars.iv127, 0
  %or.cond.i = and i1 %i.t, %i.ca
  br i1 %or.cond.i, label %bb.d, label %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !18 ; 2 uses
  %i.cd = getelementptr [16 x i8], ptr %i.bu, i64 %indvars.iv127
  %i.ce = getelementptr [16 x i8], ptr %i.cd, i64 %2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !51
  %i.ch = getelementptr i8, ptr %i.bv, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !51
  %i.cj = shl nsw i32 %i.ci, 1
  %i.ck = add nsw i32 %i.cj, %i.cg
  %i.cl = getelementptr i8, ptr %i.ce, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51
  %i.cn = add nsw i32 %i.ck, %i.cm
  %i.co = ashr i32 %i.cn, 2                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store i32 %i.cc, ptr %i.cp, align 8, !tbaa !18
  %i.cq = icmp eq i32 %i.cc, 0
  br i1 %i.cq, label %bb.e, label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  store i32 -559026175, ptr %i.cp, align 8, !tbaa !18
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(12) %i.bs) #10, !inline_history !64
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !29
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 16
  %.pre136.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !49
  br label %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i

_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %.pre136 = phi ptr [ %.pre136.pre, %bb.e ], [ %i.bu, %bb.d ]
  %i.cu = icmp slt i32 %spec.select97.7, %i.co
  %spec.select.i = select i1 %i.cu, i32 %i.co, i32 %i.bz
  br label %_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit

_ZN5zxing15HybridBinarizer17getBlockThresholdEiiiiiiii.exit: ; preds = %.loopexit99.thread, %bb.c, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i
  %i.cv = phi ptr [ %.pre136, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i ], [ %i.bu, %bb.c ], [ %i.bu, %.loopexit99.thread ]
  %.1.i = phi i32 [ %spec.select.i, %_ZN5zxing8ArrayRefINS_15BINARIZER_BLOCKEED2Ev.exit.i ], [ %i.bz, %bb.c ], [ %i.by, %.loopexit99.thread ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.br
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 %.1.i, ptr %i.cx, align 4, !tbaa !51
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %._crit_edge, label %bb.b, !llvm.loop !65

.preheader98:                                     ; preds = %.preheader100
  %i.cy = icmp samesign ult i32 %.073116, 7
  br i1 %i.cy, label %.preheader.preheader, label %.loopexit99.thread

.preheader.preheader:                             ; preds = %.preheader98
  %.1107 = add i32 %.072117, %i.w
  %i.cz = sext i32 %.1107 to i64                  ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.073116, 4
  %ident.check.not = icmp eq i32 %i.w, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.body, label %.preheader.preheader177

vector.body:                                      ; preds = %.preheader.preheader
  %i.da = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bo, i64 0
  %i.db = or disjoint i32 %.073116, 4
  %i.dc = add nsw i64 %i.cz, 4
  %i.dd = getelementptr i8, ptr %i.h, i64 %i.cz   ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.dd, align 1, !tbaa !46
  %i.de = zext <4 x i8> %wide.load to <4 x i32>
  %i.df = add <4 x i32> %i.da, %i.de
  %i.dg = getelementptr i8, ptr %i.dd, i64 1
  %wide.load167 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !46
  %i.dh = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.di = add <4 x i32> %i.df, %i.dh
  %i.dj = getelementptr i8, ptr %i.dd, i64 2
  %wide.load168 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !46
  %i.dk = zext <4 x i8> %wide.load168 to <4 x i32>
  %i.dl = add <4 x i32> %i.di, %i.dk
  %i.dm = getelementptr i8, ptr %i.dd, i64 3
  %wide.load169 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !46
  %i.dn = zext <4 x i8> %wide.load169 to <4 x i32>
  %i.do = add <4 x i32> %i.dl, %i.dn
  %i.dp = getelementptr i8, ptr %i.dd, i64 4
  %wide.load170 = load <4 x i8>, ptr %i.dp, align 1, !tbaa !46
  %i.dq = zext <4 x i8> %wide.load170 to <4 x i32>
  %i.dr = add <4 x i32> %i.do, %i.dq
  %i.ds = getelementptr i8, ptr %i.dd, i64 5
  %wide.load171 = load <4 x i8>, ptr %i.ds, align 1, !tbaa !46
  %i.dt = zext <4 x i8> %wide.load171 to <4 x i32>
  %i.du = add <4 x i32> %i.dr, %i.dt
  %i.dv = getelementptr i8, ptr %i.dd, i64 6
  %wide.load172 = load <4 x i8>, ptr %i.dv, align 1, !tbaa !46
  %i.dw = zext <4 x i8> %wide.load172 to <4 x i32>
  %i.dx = add <4 x i32> %i.du, %i.dw
  %i.dy = getelementptr i8, ptr %i.dd, i64 7
  %wide.load173 = load <4 x i8>, ptr %i.dy, align 1, !tbaa !46
  %i.dz = zext <4 x i8> %wide.load173 to <4 x i32>
  %i.ea = add <4 x i32> %i.dx, %i.dz
  %i.eb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ea) ; 2 uses
  %cmp.n = icmp eq i32 %.073116, 3
  br i1 %cmp.n, label %.loopexit99.thread, label %.preheader.preheader177

.preheader.preheader177:                          ; preds = %.preheader.preheader, %vector.body
  %indvars.iv.ph = phi i64 [ %i.cz, %.preheader.preheader ], [ %i.dc, %vector.body ] ; 3 uses
  %.174111.in.ph = phi i32 [ %.073116, %.preheader.preheader ], [ %i.db, %vector.body ] ; 4 uses
  %.284109.ph = phi i32 [ %i.bo, %.preheader.preheader ], [ %i.eb, %vector.body ] ; 2 uses
  %i.ec = and i32 %.174111.in.ph, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ec, 0
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader177
  %i.ed = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.ph
  %i.ee = load <8 x i8>, ptr %i.ed, align 1, !tbaa !46
  %i.ef = zext <8 x i8> %i.ee to <8 x i32>
  %i.eg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ef)
  %op.rdx.prol = add i32 %i.eg, %.284109.ph       ; 2 uses
  %.174111.prol = or disjoint i32 %.174111.in.ph, 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.aa
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader177
  %op.rdx.lcssa.unr = phi i32 [ poison, %.preheader.preheader177 ], [ %op.rdx.prol, %.preheader.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader177 ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %.174111.in.unr = phi i32 [ %.174111.in.ph, %.preheader.preheader177 ], [ %.174111.prol, %.preheader.prol ]
  %.284109.unr = phi i32 [ %.284109.ph, %.preheader.preheader177 ], [ %op.rdx.prol, %.preheader.prol ]
  %i.eh = icmp eq i32 %.174111.in.ph, 6
  br i1 %i.eh, label %.loopexit99.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.174111.in = phi i32 [ %.174111.1, %.preheader ], [ %.174111.in.unr, %.preheader.prol.loopexit ]
  %.284109 = phi i32 [ %op.rdx.1, %.preheader ], [ %.284109.unr, %.preheader.prol.loopexit ]
  %i.ei = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv
  %i.ej = load <8 x i8>, ptr %i.ei, align 1, !tbaa !46
  %i.ek = zext <8 x i8> %i.ej to <8 x i32>
  %i.el = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ek)
  %op.rdx = add i32 %i.el, %.284109
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aa ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next
  %i.en = load <8 x i8>, ptr %i.em, align 1, !tbaa !46
  %i.eo = zext <8 x i8> %i.en to <8 x i32>
  %i.ep = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eo)
  %op.rdx.1 = add i32 %i.ep, %op.rdx              ; 2 uses
  %.174111.1 = add i32 %.174111.in, 2             ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.aa
  %exitcond.not.1 = icmp eq i32 %.174111.1, 7
  br i1 %exitcond.not.1, label %.loopexit99.thread, label %.preheader, !llvm.loop !66

.loopexit99:                                      ; preds = %.preheader100
  %i.eq = add nuw nsw i32 %.073116, 1
  %i.er = add nsw i32 %.072117, %i.w
  %i.es = icmp samesign ult i32 %.073116, 7
  br i1 %i.es, label %.preheader100, label %.loopexit99.thread, !llvm.loop !67
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
  %i.h = load i32, ptr %i.b, align 4, !tbaa !53
  %i.i = load i32, ptr %i.d, align 8, !tbaa !78
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
  store ptr %i.p, ptr %i.l, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %i.r, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  %.pre = load i32, ptr %i.k, align 8, !tbaa !18
  %i.t = add i32 %.pre, 1
  br label %bb.b

bb.b:                                             ; preds = %.noexc30, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.u = phi ptr [ %i.p, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.v = phi i32 [ %i.t, %.noexc30 ], [ 1, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !57
  store i32 %i.v, ptr %i.k, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 4 uses
  %.not5.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i, label %_ZN5zxing8ArrayRefIiEaSEPNS_5ArrayIiEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %_ZN5zxing8ArrayRefIiEaSEPNS_5ArrayIiEE.exit

bb.d:                                             ; preds = %bb.c
  store i32 -559026175, ptr %i.z, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #10, !inline_history !73
  %.pre45 = load ptr, ptr %i.l, align 8, !tbaa !55
  br label %_ZN5zxing8ArrayRefIiEaSEPNS_5ArrayIiEE.exit

_ZN5zxing8ArrayRefIiEaSEPNS_5ArrayIiEE.exit:      ; preds = %bb.b, %bb.c, %bb.d
  %i.ag = phi ptr [ %i.u, %bb.b ], [ %i.u, %bb.c ], [ %.pre45, %bb.d ] ; 4 uses
  store ptr %i.g, ptr %i.x, align 8, !tbaa !26
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !53
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %.preheader31

.preheader31:                                     ; preds = %.lr.ph, %_ZN5zxing8ArrayRefIiEaSEPNS_5ArrayIiEE.exit
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !78
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph34, label %.preheader

bb.e:                                             ; preds = %.noexc3.i, %.noexc.i
  %i.al = landingpad { ptr, i32 }
end_hunk_0
