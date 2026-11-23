Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ALACEncoder?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj:bb.a

.loopexit217:                                     ; preds = %bb.k, %._crit_edge
  %i.hi = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.hj = load ptr, ptr %i.ei, align 8, !tbaa !30
  %i.hk = zext nneg i32 %spec.select202.1 to i64
  %i.hl = getelementptr [32 x i8], ptr %i.g, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -32
  call void @pc_block(ptr noundef %i.hi, ptr noundef %i.hj, i32 noundef %5, ptr noundef %i.hm, i32 noundef %spec.select202.1, i32 noundef %i.m, i32 noundef 9)
  call void @set_standard_ag_params(ptr noundef nonnull %7, i32 noundef %5, i32 noundef %5)
  %i.hn = load ptr, ptr %i.ei, align 8, !tbaa !30
  %i.ho = call i32 @dyn_comp(ptr noundef nonnull %7, ptr noundef %i.hn, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %i.m, ptr noundef nonnull %i.b) ; 2 uses
  %i.hp = call i32 @BitBufferGetPosition(ptr noundef nonnull %1)
  %i.hq = call i32 @BitBufferGetPosition(ptr noundef nonnull %6)
  %i.hr = sub i32 %i.hp, %i.hq                    ; 2 uses
  %.not198 = icmp ult i32 %i.hr, %i.gr
  br i1 %.not198, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.loopexit217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !35
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.hr, i32 noundef %i.gr) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.1.ph = phi i32 [ 0, %bb.g ], [ %i.ho, %bb.l ] ; 9 uses
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12)
  %i.ht = select i1 %.not199, i32 1, i32 9
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ht, i32 noundef 4)
  br i1 %.not199, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hu = load i16, ptr %i.c, align 8, !tbaa !26
  switch i16 %i.hu, label %.loopexit [
    i16 16, label %.preheader
    i16 20, label %bb.p
    i16 24, label %bb.q
    i16 32, label %.preheader214
  ]

.preheader214:                                    ; preds = %bb.o
  %i.hv = mul i32 %5, %3                          ; 2 uses
  %.not254 = icmp eq i32 %i.hv, 0
  br i1 %.not254, label %.loopexit, label %.lr.ph241

.preheader:                                       ; preds = %bb.o
  %i.hw = mul i32 %5, %3                          ; 2 uses
  %.not257 = icmp eq i32 %i.hw, 0
  br i1 %.not257, label %.loopexit, label %.lr.ph249

.lr.ph249:                                        ; preds = %.preheader, %.lr.ph249
  %.5248 = phi i32 [ %i.ib, %.lr.ph249 ], [ 0, %.preheader ] ; 2 uses
  %i.hx = zext i32 %.5248 to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !37
  %i.ia = sext i16 %i.hz to i32
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ia, i32 noundef 16)
  %i.ib = add i32 %.5248, %3                      ; 2 uses
  %i.ic = icmp ult i32 %i.ib, %i.hw
  br i1 %i.ic, label %.lr.ph249, label %.loopexit, !llvm.loop !73

bb.p:                                             ; preds = %bb.o
  %i.id = load ptr, ptr %i.eh, align 8, !tbaa !28
  call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %i.id, i32 noundef %5)
  %.not256 = icmp eq i32 %5, 0
  br i1 %.not256, label %.loopexit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.p
  %wide.trip.count297 = zext i32 %5 to i64
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %indvars.iv294 = phi i64 [ 0, %.lr.ph247.preheader ], [ %indvars.iv.next295, %.lr.ph247 ] ; 2 uses
  %i.ie = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv294
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ig, i32 noundef 20)
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.loopexit, label %.lr.ph247, !llvm.loop !74

bb.q:                                             ; preds = %bb.o
  %i.ih = load ptr, ptr %i.eh, align 8, !tbaa !28
  call void @copy24ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %i.ih, i32 noundef %5)
  %.not255 = icmp eq i32 %5, 0
  br i1 %.not255, label %.loopexit, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %bb.q
  %wide.trip.count292 = zext i32 %5 to i64
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %indvars.iv289 = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next290, %.lr.ph244 ] ; 2 uses
  %i.ii = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv289
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !7
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ik, i32 noundef 24)
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit, label %.lr.ph244, !llvm.loop !75

.lr.ph241:                                        ; preds = %.preheader214, %.lr.ph241
  %.8240 = phi i32 [ %i.io, %.lr.ph241 ], [ 0, %.preheader214 ] ; 2 uses
  %i.il = zext i32 %.8240 to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !7
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.in, i32 noundef 32)
  %i.io = add i32 %.8240, %3                      ; 2 uses
  %i.ip = icmp ult i32 %i.io, %i.hv
  br i1 %i.ip, label %.lr.ph241, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph241, %.lr.ph244, %.lr.ph247, %.lr.ph249, %.preheader214, %bb.q, %bb.p, %.preheader, %.loopexit217, %bb.e, %bb.o, %bb.a
  %.0175 = phi i32 [ -50, %bb.a ], [ %.lcssa, %bb.e ], [ %.1.ph, %bb.o ], [ %i.ho, %.loopexit217 ], [ %.1.ph, %bb.q ], [ %.1.ph, %.preheader ], [ %.1.ph, %bb.p ], [ %.1.ph, %.preheader214 ], [ %.1.ph, %.lr.ph244 ], [ %.1.ph, %.lr.ph249 ], [ %.1.ph, %.lr.ph247 ], [ %.1.ph, %.lr.ph241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0175
}

declare void @copy20ToPredictor(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @copy24ToPredictor(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @set_standard_ag_params(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr nofree noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %1, ptr nofree noundef readnone byval(%struct.AudioFormatDescription) align 8 captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #5 align 2 !guid !82 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = load i32, ptr %5, align 4, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83
  %i.d = udiv i32 %i.a, %i.c                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  call void @BitBufferInit(ptr noundef nonnull %6, ptr noundef %4, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  switch i32 %i.h, label %bb.g [
    i32 2, label %bb.b
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 3)
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !27, !range !84, !noundef !85
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = call noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.059 = phi i32 [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.not68 = icmp eq i32 %.059, 0
  br i1 %.not68, label %.loopexit, label %.thread

bb.f:                                             ; preds = %bb.a
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 3)
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 4)
  %i.n = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %i.d) ; 2 uses
  %.not67 = icmp eq i32 %i.n, 0
  br i1 %.not67, label %.loopexit, label %.thread

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !26
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8                         ; 3 uses
  %i.t = shl nsw i32 %i.s, 1
  %i.u = load i32, ptr %i.g, align 4, !tbaa !42   ; 5 uses
  %i.v = add i32 %i.u, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZL12sChannelMaps, i64 %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %.057 = phi ptr [ %3, %bb.g ], [ %.158, %bb.n ] ; 4 uses
  %.055 = phi i32 [ 0, %bb.g ], [ %.156, %bb.n ]  ; 8 uses
  %.053 = phi i8 [ 0, %bb.g ], [ %.154, %bb.n ]   ; 4 uses
  %.051 = phi i8 [ 0, %bb.g ], [ %.152, %bb.n ]   ; 4 uses
  %.050 = phi i8 [ 0, %bb.g ], [ %.1, %bb.n ]     ; 4 uses
  %i.y = icmp ult i32 %.055, %i.u
  br i1 %i.y, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.x, align 4, !tbaa !7
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul i32 %.055, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %7 = lshr i64 %i.aa, %i.ac
  %8 = trunc nuw i64 %7 to i32
  %9 = and i32 %8, 7                              ; 3 uses
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %9, i32 noundef 3)
  switch i32 %9, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = zext i8 %.051 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ad, i32 noundef 4)
  %i.ae = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.057, i32 noundef %i.u, i32 noundef %.055, i32 noundef %i.d)
  %i.af = add nuw i32 %.055, 1
  %i.ag = add i8 %.051, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ah = zext i8 %.053 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ah, i32 noundef 4)
  %i.ai = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.057, i32 noundef %i.u, i32 noundef %.055, i32 noundef %i.d)
  %i.aj = add i32 %.055, 2
  %i.ak = add i8 %.053, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.al = zext i8 %.050 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.al, i32 noundef 4)
  %i.am = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.057, i32 noundef %i.u, i32 noundef %.055, i32 noundef %i.d)
  %i.an = add nuw i32 %.055, 1
  %i.ao = add i8 %.050, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9) ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.2 = phi i32 [ %i.ae, %bb.j ], [ %i.ai, %bb.k ], [ %i.am, %bb.l ] ; 2 uses
  %.pn.in = phi i32 [ %i.s, %bb.j ], [ %i.t, %bb.k ], [ %i.s, %bb.l ]
  %.156 = phi i32 [ %i.af, %bb.j ], [ %i.aj, %bb.k ], [ %i.an, %bb.l ]
  %.154 = phi i8 [ %.053, %bb.j ], [ %i.ak, %bb.k ], [ %.053, %bb.l ]
  %.152 = phi i8 [ %i.ag, %bb.j ], [ %.051, %bb.k ], [ %.051, %bb.l ]
  %.1 = phi i8 [ %.050, %bb.j ], [ %.050, %bb.k ], [ %i.ao, %bb.l ]
  %.pn = zext i32 %.pn.in to i64
  %.158 = getelementptr inbounds nuw i8, ptr %.057, i64 %.pn
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %bb.h, label %.thread, !llvm.loop !81

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.e
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 7, i32 noundef 3)
  call void @BitBufferByteAlign(ptr noundef nonnull %6, i32 noundef 1)
  %i.aq = call i32 @BitBufferGetPosition(ptr noundef nonnull %6)
  %i.ar = lshr i32 %i.aq, 3                       ; 3 uses
  store i32 %i.ar, ptr %5, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !86
  %i.au = add i32 %i.at, %i.ar
  store i32 %i.au, ptr %i.as, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8280 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !43
  %. = call i32 @llvm.umax.i32(i32 %i.aw, i32 %i.ar)
  store i32 %., ptr %i.av, align 8, !tbaa !43
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %.loopexit, %bb.e, %bb.f
  %.4 = phi i32 [ %.059, %bb.e ], [ 0, %.loopexit ], [ %i.n, %bb.f ], [ -50, %bb.m ], [ %.2, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.4
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11ALACEncoder6FinishEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 !guid !87 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8300) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #5 align 2 !guid !88 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %i.c = tail call i32 @Swap32NtoB(i32 noundef %i.b)
  store i32 %i.c, ptr %1, align 4, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.d, align 4, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !26
  %i.g = trunc i16 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.g, ptr %i.h, align 1, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 40, ptr %i.i, align 2, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 14, ptr %i.j, align 4, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 10, ptr %i.k, align 1, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8292
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.n, ptr %i.o, align 1, !tbaa !96
  %i.p = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.s = load i32, ptr %i.r, align 8, !tbaa !43
  %i.t = tail call i32 @Swap32NtoB(i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8276
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = tail call i32 @Swap32NtoB(i32 noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.x, ptr %i.y, align 4, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !46
  %i.ab = tail call i32 @Swap32NtoB(i32 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !100
  ret void
}

declare i32 @Swap32NtoB(i32 noundef) local_unnamed_addr #7

declare zeroext i16 @Swap16NtoB(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 24, 49) i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8300) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !guid !101 {
bb.a:
  %i.a = icmp ugt i32 %1, 2
  %. = select i1 %i.a, i32 48, i32 24
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8300) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 align 2 !guid !102 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %i.c = tail call i32 @Swap32NtoB(i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !26
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8292
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44   ; 2 uses
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %i.m = tail call i32 @Swap32NtoB(i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8276
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = tail call i32 @Swap32NtoB(i32 noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  %i.s = tail call i32 @Swap32NtoB(i32 noundef %i.r)
  %i.t = icmp ugt i8 %i.i, 2                      ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.mask = and i32 %i.h, 255
  %i.u = zext nneg i32 %.mask to i64
  %i.v = getelementptr [4 x i8], ptr @_ZL21ALACChannelLayoutTags, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.09.0 = phi i32 [ %i.x, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ 48, %bb.b ], [ 24, %bb.a ]      ; 3 uses
  %i.y = load i32, ptr %2, align 4, !tbaa !7
  %.not = icmp ult i32 %i.y, %.0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.f, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 40, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 10, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 14, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.i, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.j, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.m, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.p, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.s, ptr %.sroa.16.0..sroa_idx, align 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.z, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom, i64 3, i1 false)
  %.sroa.4.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 24, ptr %.sroa.4.0..0.2.sroa_idx, align 1
  %.sroa.5.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i64 1851877475, ptr %.sroa.5.0..0.2.sroa_idx, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.sroa.09.0, ptr %i.aa, align 1
  %.sroa.510.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.510.0..0.4.sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %storemerge = phi i32 [ %.0, %bb.d ], [ %.0, %bb.e ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -108, 1) i32 @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription(ptr noundef nonnull align 8 dereferenceable(8300) initializes((12, 28), (32, 80), (8288, 8300)) %0, ptr nofree noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %1) unnamed_addr #5 align 2 !guid !104 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !105
  %i.b = fptoui double %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8296
  store i32 %i.b, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8292 ; 3 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_0
