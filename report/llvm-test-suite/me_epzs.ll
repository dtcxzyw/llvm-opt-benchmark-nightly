Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_epzs?download=true
inline.NumInlined: 242
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@EPZSInit:bb.a
  %sdiamond.sink88 = phi ptr [ %switch.load93, %switch.lookup91 ], [ @sdiamond, %bb.w ]
  %i.qj = load ptr, ptr %sdiamond.sink88, align 8, !tbaa !49
  store ptr %i.qj, ptr @searchPatternD, align 8, !tbaa !49
  ret i32 %.0
}

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem2Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem6Dshort(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @EPZSDelete() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %freeEPZScolocated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @EPZSCo_located, align 8, !tbaa !30 ; 7 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %freeEPZScolocated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = sdiv i32 %i.h, 4
  tail call void @free_mem4Dshort(ptr noundef %i.f, i32 noundef 2, i32 noundef %i.i) #13
  %i.j = load i32, ptr %i.d, align 8, !tbaa !18
  %.not9.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = load i32, ptr %i.g, align 8, !tbaa !17
  %i.n = sdiv i32 %i.m, 8
  tail call void @free_mem4Dshort(ptr noundef %i.l, i32 noundef 2, i32 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = load i32, ptr %i.g, align 8, !tbaa !17
  %i.r = sdiv i32 %i.q, 8
  tail call void @free_mem4Dshort(ptr noundef %i.p, i32 noundef 2, i32 noundef %i.r) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #13
  br label %freeEPZScolocated.exit

freeEPZScolocated.exit:                           ; preds = %bb.e, %bb.b, %bb.a
  %i.s = load ptr, ptr @EPZSMap, align 8, !tbaa !61
  tail call void @free_mem2Dshort(ptr noundef %i.s) #13
  %i.t = load ptr, ptr @EPZSDistortion, align 8, !tbaa !62
  tail call void @free_mem3Dint(ptr noundef %i.t, i32 noundef 6) #13
  %i.u = load ptr, ptr @window_predictor_extended, align 8, !tbaa !49 ; 3 uses
  %.not.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i2, label %freeEPZSpattern.exit, label %bb.f

bb.f:                                             ; preds = %freeEPZScolocated.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.w) #13
  tail call void @free(ptr noundef nonnull %i.u) #13
  br label %freeEPZSpattern.exit

freeEPZSpattern.exit:                             ; preds = %freeEPZScolocated.exit, %bb.f
  %i.x = load ptr, ptr @window_predictor, align 8, !tbaa !49 ; 3 uses
  %.not.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i3, label %freeEPZSpattern.exit4, label %bb.g

bb.g:                                             ; preds = %freeEPZSpattern.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.z) #13
  tail call void @free(ptr noundef nonnull %i.x) #13
  br label %freeEPZSpattern.exit4

freeEPZSpattern.exit4:                            ; preds = %freeEPZSpattern.exit, %bb.g
  %i.aa = load ptr, ptr @predictor, align 8, !tbaa !49 ; 3 uses
  %.not.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i5, label %freeEPZSpattern.exit6, label %bb.h

bb.h:                                             ; preds = %freeEPZSpattern.exit4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.ac) #13
  tail call void @free(ptr noundef nonnull %i.aa) #13
  br label %freeEPZSpattern.exit6

freeEPZSpattern.exit6:                            ; preds = %freeEPZSpattern.exit4, %bb.h
  %i.ad = load ptr, ptr @pmvfast, align 8, !tbaa !49 ; 3 uses
  %.not.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i7, label %freeEPZSpattern.exit8, label %bb.i

bb.i:                                             ; preds = %freeEPZSpattern.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.af) #13
  tail call void @free(ptr noundef nonnull %i.ad) #13
  br label %freeEPZSpattern.exit8

freeEPZSpattern.exit8:                            ; preds = %freeEPZSpattern.exit6, %bb.i
  %i.ag = load ptr, ptr @sbdiamond, align 8, !tbaa !49 ; 3 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %freeEPZSpattern.exit10, label %bb.j

bb.j:                                             ; preds = %freeEPZSpattern.exit8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.ai) #13
  tail call void @free(ptr noundef nonnull %i.ag) #13
  br label %freeEPZSpattern.exit10

freeEPZSpattern.exit10:                           ; preds = %freeEPZSpattern.exit8, %bb.j
  %i.aj = load ptr, ptr @ldiamond, align 8, !tbaa !49 ; 3 uses
  %.not.i11 = icmp eq ptr %i.aj, null
  br i1 %.not.i11, label %freeEPZSpattern.exit12, label %bb.k

bb.k:                                             ; preds = %freeEPZSpattern.exit10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.al) #13
  tail call void @free(ptr noundef nonnull %i.aj) #13
  br label %freeEPZSpattern.exit12

freeEPZSpattern.exit12:                           ; preds = %freeEPZSpattern.exit10, %bb.k
  %i.am = load ptr, ptr @ediamond, align 8, !tbaa !49 ; 3 uses
  %.not.i13 = icmp eq ptr %i.am, null
  br i1 %.not.i13, label %freeEPZSpattern.exit14, label %bb.l

bb.l:                                             ; preds = %freeEPZSpattern.exit12
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.ao) #13
  tail call void @free(ptr noundef nonnull %i.am) #13
  br label %freeEPZSpattern.exit14

freeEPZSpattern.exit14:                           ; preds = %freeEPZSpattern.exit12, %bb.l
  %i.ap = load ptr, ptr @sdiamond, align 8, !tbaa !49 ; 3 uses
  %.not.i15 = icmp eq ptr %i.ap, null
  br i1 %.not.i15, label %freeEPZSpattern.exit16, label %bb.m

bb.m:                                             ; preds = %freeEPZSpattern.exit14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.ar) #13
  tail call void @free(ptr noundef nonnull %i.ap) #13
  br label %freeEPZSpattern.exit16

freeEPZSpattern.exit16:                           ; preds = %freeEPZSpattern.exit14, %bb.m
  %i.as = load ptr, ptr @square, align 8, !tbaa !49 ; 3 uses
  %.not.i17 = icmp eq ptr %i.as, null
  br i1 %.not.i17, label %freeEPZSpattern.exit18, label %bb.n

bb.n:                                             ; preds = %freeEPZSpattern.exit16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.au) #13
  tail call void @free(ptr noundef nonnull %i.as) #13
  br label %freeEPZSpattern.exit18

freeEPZSpattern.exit18:                           ; preds = %freeEPZSpattern.exit16, %bb.n
  %i.av = load ptr, ptr @input, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !53
  %.not1 = icmp eq i32 %i.ax, 0
  br i1 %.not1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %freeEPZSpattern.exit18
  %i.ay = load ptr, ptr @EPZSMotion, align 8, !tbaa !63
  %i.az = load ptr, ptr @img, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !54
  tail call void @free_mem6Dshort(ptr noundef %i.ay, i32 noundef 6, i32 noundef %i.bb, i32 noundef 7, i32 noundef 4) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %freeEPZSpattern.exit18
  ret void
}

declare void @free_mem2Dshort(ptr noundef) local_unnamed_addr #3

declare void @free_mem3Dint(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_mem6Dshort(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @EPZSSliceInit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x [6 x [33 x i32]]], align 16  ; 56 uses
  %i.b = load ptr, ptr @img, align 8, !tbaa !30   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64
  %i.e = icmp eq i32 %i.d, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 15268 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !65   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.preheader941.lr.ph, label %._crit_edge957

.preheader941.lr.ph:                              ; preds = %bb.a
  %2 = shl i32 %i.g, 2
  %i.i = load ptr, ptr @enc_picture, align 8      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = or disjoint i32 %2, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.n = add nuw nsw i32 %smax, 1
  %wide.trip.count1046 = zext nneg i32 %i.n to i64
  br label %.preheader941

.preheader941:                                    ; preds = %.preheader941.lr.ph, %._crit_edge955
  %indvars.iv1043 = phi i64 [ 0, %.preheader941.lr.ph ], [ %indvars.iv.next1044, %._crit_edge955 ] ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv1043
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9    ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader940.lr.ph, label %._crit_edge955

.preheader940.lr.ph:                              ; preds = %.preheader941
  %i.r = trunc nuw nsw i64 %indvars.iv1043 to i32
  %i.s = lshr i32 %i.r, 1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1043
  %i.u = getelementptr inbounds nuw [4096 x i8], ptr @mv_scale, i64 %indvars.iv1043
  %wide.trip.count1041 = zext nneg i32 %i.p to i64 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  br label %.preheader940

.preheader940:                                    ; preds = %.preheader940.lr.ph, %._crit_edge
  %indvars.iv1038 = phi i64 [ 0, %.preheader940.lr.ph ], [ %indvars.iv.next1039, %._crit_edge ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv1038
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv1038
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !149  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader940, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader940 ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !149
  switch i32 %i.s, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sink1278.in = phi ptr [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.k, %bb.b ]
  %.sink1278 = load i32, ptr %.sink1278.in, align 4, !tbaa !9 ; 3 uses
  %.not865 = icmp eq i32 %.sink1278, %i.z
  br i1 %.not865, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub nsw i32 %.sink1278, %i.z
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %i.ae, i32 -128)
  %i.ag = tail call noundef i32 @llvm.smin.i32(i32 %i.af, i32 127) ; 2 uses
  %i.ah = sub nsw i32 %.sink1278, %i.ad
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %i.ah, i32 -128)
  %i.aj = tail call noundef i32 @llvm.smin.i32(i32 %i.ai, i32 127)
  %.lhs.trunc = trunc nsw i32 %i.ag to i8
  %i.ak = sdiv i8 %.lhs.trunc, 2
  %i.al = tail call i8 @llvm.abs.i8(i8 %i.ak, i1 true)
  %i.am = zext nneg i8 %i.al to i16
  %.lhs.trunc901 = or disjoint i16 %i.am, 16384
  %.rhs.trunc = trunc nsw i32 %i.ag to i16
  %i.an = sdiv i16 %.lhs.trunc901, %.rhs.trunc
  %.sext902 = sext i16 %i.an to i32
  %i.ao = mul nsw i32 %i.aj, %.sext902
  %i.ap = add nsw i32 %i.ao, 32
  %i.aq = ashr i32 %i.ap, 6
  %i.ar = tail call noundef i32 @llvm.smax.i32(i32 %i.aq, i32 -2048)
  %i.as = tail call noundef i32 @llvm.smin.i32(i32 %i.ar, i32 2047)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink1279 = phi i32 [ %i.as, %bb.f ], [ 256, %bb.e ]
  %gep = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %.sink1279, ptr %gep, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count1041
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 1 ; 2 uses
  %exitcond1042.not = icmp eq i64 %indvars.iv.next1039, %wide.trip.count1041
  br i1 %exitcond1042.not, label %._crit_edge955, label %.preheader940, !llvm.loop !127

._crit_edge955:                                   ; preds = %._crit_edge, %.preheader941
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 1 ; 2 uses
  %exitcond1047 = icmp eq i64 %indvars.iv.next1044, %wide.trip.count1046
  br i1 %exitcond1047, label %._crit_edge957, label %.preheader941, !llvm.loop !128

._crit_edge957:                                   ; preds = %._crit_edge955, %bb.a
  %i.at = load ptr, ptr @input, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4100
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge957
  %i.aw = zext i1 %i.e to i64                     ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !69 ; 18 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %i.aw
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.i, label %.preheader939

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69
  br label %.preheader939

.preheader939:                                    ; preds = %bb.h, %bb.i
  %.0817 = phi ptr [ %i.be, %bb.i ], [ %i.az, %bb.h ] ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 792 ; 9 uses
  store <4 x i32> splat (i32 256), ptr %i.a, align 16, !tbaa !9
  store <4 x i32> splat (i32 256), ptr %i.bf, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 256, ptr %i.bg, align 16, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store i32 256, ptr %i.bh, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 256, ptr %i.bi, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 812
  store i32 256, ptr %i.bj, align 4, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 924
  store <4 x i32> splat (i32 256), ptr %i.bk, align 4, !tbaa !9
  store <4 x i32> splat (i32 256), ptr %i.bl, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 256, ptr %i.bm, align 4, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 940
  store i32 256, ptr %i.bn, align 4, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 256, ptr %i.bo, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store i32 256, ptr %i.bp, align 16, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store <4 x i32> splat (i32 256), ptr %i.bq, align 8, !tbaa !9
  store <4 x i32> splat (i32 256), ptr %i.br, align 16, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 256, ptr %i.bs, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store i32 256, ptr %i.bt, align 16, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  store i32 256, ptr %i.bu, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1076
  store i32 256, ptr %i.bv, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 396 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1188
  store <4 x i32> splat (i32 256), ptr %i.bw, align 4, !tbaa !9
  store <4 x i32> splat (i32 256), ptr %i.bx, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  store i32 256, ptr %i.by, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1204
  store i32 256, ptr %i.bz, align 4, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i32 256, ptr %i.ca, align 16, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  store i32 256, ptr %i.cb, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  store <4 x i32> splat (i32 256), ptr %i.cc, align 16, !tbaa !9
  store <4 x i32> splat (i32 256), ptr %i.cd, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  store i32 256, ptr %i.ce, align 16, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 1336
  store i32 256, ptr %i.cf, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 548
  store i32 256, ptr %i.cg, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  store i32 256, ptr %i.ch, align 4, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 660 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 1452
  store <4 x i32> splat (i32 256), ptr %i.ci, align 4, !tbaa !9
  store <4 x i32> splat (i32 256), ptr %i.cj, align 4, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 676
  store i32 256, ptr %i.ck, align 4, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1468
  store i32 256, ptr %i.cl, align 4, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  store i32 256, ptr %i.cm, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  store i32 256, ptr %i.cn, align 16, !tbaa !9
  %3 = load i32, ptr %i.f, align 4, !tbaa !65     ; 4 uses
  %.not830962 = icmp slt i32 %3, 0
  br i1 %.not830962, label %._crit_edge964.thread, label %.preheader937.lr.ph

.preheader937.lr.ph:                              ; preds = %.preheader939
  %4 = shl nsw i32 %3, 2
  %i.co = load ptr, ptr @enc_picture, align 8     ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = zext i1 %i.e to i64
  %5 = zext nneg i32 %4 to i64
  br label %.preheader937

.preheader937:                                    ; preds = %.preheader937.lr.ph, %._crit_edge961
  %indvars.iv1061 = phi i64 [ 0, %.preheader937.lr.ph ], [ %indvars.iv.next1062, %._crit_edge961 ] ; 10 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv1061
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !9  ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph, label %._crit_edge961

.lr.ph:                                           ; preds = %.preheader937
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1061
  %i.cx = or disjoint i64 %indvars.iv1061, %i.cs  ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !67 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !149 ; 2 uses
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !67 ; 2 uses
  %i.de = getelementptr inbounds nuw [4096 x i8], ptr @mv_scale, i64 %indvars.iv1061 ; 2 uses
  %i.df = getelementptr inbounds nuw [132 x i8], ptr %i.a, i64 %indvars.iv1061
  %i.dg = or disjoint i64 %indvars.iv1061, 1      ; 2 uses
  %i.dh = getelementptr inbounds nuw [132 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %i.cx
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !9
  %i.dk = icmp sgt i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw [132 x i8], ptr %i.bf, i64 %indvars.iv1061 ; 2 uses
  %i.dm = getelementptr inbounds nuw [132 x i8], ptr %i.bf, i64 %i.dg
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %wide.trip.count1059 = zext nneg i32 %i.cu to i64
  %i.dp = trunc nuw nsw i64 %indvars.iv1061 to i32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv1056 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1057, %bb.t ] ; 10 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv1056
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !149
  switch i32 %i.dp, label %bb.l [
    i32 0, label %bb.m
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink1282.in = phi ptr [ %i.cp, %bb.k ], [ %i.cr, %bb.l ], [ %i.cq, %bb.j ]
  %.sink1282 = load i32, ptr %.sink1282.in, align 4, !tbaa !9
  %i.du = sub nsw i32 %.sink1282, %i.dt
  %i.dv = tail call noundef i32 @llvm.smax.i32(i32 %i.du, i32 -128)
  %i.dw = tail call noundef i32 @llvm.smin.i32(i32 %i.dv, i32 127) ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv1056
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !149 ; 2 uses
  %.not863 = icmp eq i32 %i.dc, %i.ea
  br i1 %.not863, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = sub nsw i32 %i.dc, %i.ea
  %i.ec = tail call noundef i32 @llvm.smax.i32(i32 %i.eb, i32 -128)
  %i.ed = tail call noundef i32 @llvm.smin.i32(i32 %i.ec, i32 127) ; 2 uses
  %.lhs.trunc908 = trunc nsw i32 %i.ed to i8
  %i.ee = sdiv i8 %.lhs.trunc908, 2
  %i.ef = tail call i8 @llvm.abs.i8(i8 %i.ee, i1 true)
  %i.eg = zext nneg i8 %i.ef to i16
  %.lhs.trunc910 = or disjoint i16 %i.eg, 16384
  %.rhs.trunc911 = trunc nsw i32 %i.ed to i16
  %i.eh = sdiv i16 %.lhs.trunc910, %.rhs.trunc911
  %.sext912 = sext i16 %i.eh to i32
  %i.ei = mul nsw i32 %i.dw, %.sext912
  %i.ej = add nsw i32 %i.ei, 32
  %i.ek = ashr i32 %i.ej, 6
  %i.el = tail call noundef i32 @llvm.smax.i32(i32 %i.ek, i32 -2048)
  %i.em = tail call noundef i32 @llvm.smin.i32(i32 %i.el, i32 2047)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0782 = phi i32 [ %i.em, %bb.n ], [ 256, %bb.m ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv1056
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !9
  %i.ep = mul nsw i32 %i.eo, %.0782
  %i.eq = add nsw i32 %i.ep, 128
  %i.er = ashr i32 %i.eq, 8                       ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv1056
  store i32 %i.er, ptr %i.es, align 4, !tbaa !9
  %i.et = add nsw i32 %.0782, -256                ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv1056
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !9
  br i1 %i.dk, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ev = load ptr, ptr %i.dn, align 8, !tbaa !69
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %6 = load i32, ptr %i.ew, align 4, !tbaa !149   ; 2 uses
  %i.ex = load i32, ptr %i.dz, align 4, !tbaa !149 ; 2 uses
  %.not864 = icmp eq i32 %6, %i.ex
  br i1 %.not864, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ey = sub nsw i32 %6, %i.ex
  %i.ez = tail call noundef i32 @llvm.smax.i32(i32 %i.ey, i32 -128)
  %i.fa = tail call noundef i32 @llvm.smin.i32(i32 %i.ez, i32 127) ; 2 uses
  %.lhs.trunc903 = trunc nsw i32 %i.fa to i8
  %i.fb = sdiv i8 %.lhs.trunc903, 2
  %i.fc = tail call i8 @llvm.abs.i8(i8 %i.fb, i1 true)
  %i.fd = zext nneg i8 %i.fc to i16
  %.lhs.trunc905 = or disjoint i16 %i.fd, 16384
  %.rhs.trunc906 = trunc nsw i32 %i.fa to i16
  %i.fe = sdiv i16 %.lhs.trunc905, %.rhs.trunc906
  %.sext907 = sext i16 %i.fe to i32
  %i.ff = mul nsw i32 %i.dw, %.sext907
  %i.fg = add nsw i32 %i.ff, 32
  %i.fh = ashr i32 %i.fg, 6
  %i.fi = tail call noundef i32 @llvm.smax.i32(i32 %i.fh, i32 -2048)
  %i.fj = tail call noundef i32 @llvm.smin.i32(i32 %i.fi, i32 2047)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1783 = phi i32 [ %i.fj, %bb.q ], [ 256, %bb.p ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv1056
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !9
  %i.fm = mul nsw i32 %i.fl, %.1783
  %i.fn = add nsw i32 %i.fm, 128
  %i.fo = ashr i32 %i.fn, 8
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv1056
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !9
  %i.fq = add nsw i32 %.1783, -256
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv1056
  store i32 %i.er, ptr %i.fr, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink1283 = phi i32 [ %i.fq, %bb.r ], [ %i.et, %bb.s ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv1056
  store i32 %.sink1283, ptr %i.fs, align 4, !tbaa !9
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 1 ; 2 uses
  %exitcond1060.not = icmp eq i64 %indvars.iv.next1057, %wide.trip.count1059
  br i1 %exitcond1060.not, label %._crit_edge961, label %bb.j, !llvm.loop !129

._crit_edge961:                                   ; preds = %bb.t, %.preheader937
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 2
  %.not830.not = icmp samesign ult i64 %indvars.iv1061, %5
  br i1 %.not830.not, label %.preheader937, label %._crit_edge964, !llvm.loop !130

._crit_edge964:                                   ; preds = %._crit_edge961
  %.not831.not = icmp eq i32 %3, 0
  br i1 %.not831.not, label %bb.v, label %._crit_edge964.thread

._crit_edge964.thread:                            ; preds = %.preheader939, %._crit_edge964
  %i.ft = select i1 %i.e, i64 3, i64 2
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !67 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !69 ; 2 uses
  %i.fx = select i1 %i.e, i64 5, i64 4
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !67 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !69
  %i.gb = load i32, ptr @listXsize, align 16, !tbaa !9
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %._crit_edge964.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !69
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !69
  br label %bb.ab

bb.v:                                             ; preds = %._crit_edge964
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !75 ; 3 uses
  %.not832 = icmp eq i32 %i.gi, 0
  br i1 %.not832, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = load i32, ptr %i.az, align 8, !tbaa !150
  %.not833 = icmp eq i32 %i.gi, %i.gj
  br i1 %.not833, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gk = getelementptr inbounds nuw i8, ptr %i.az, i64 6428
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !151
  %.not834 = icmp eq i32 %i.gl, 0
  br i1 %.not834, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gm = icmp eq i32 %i.gi, 1
  br i1 %i.gm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %i.az, i64 6536
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !152 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.az, i64 6544
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !153 ; 2 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %i.az, i64 6544
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !153 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.az, i64 6536
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !152 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.z, %bb.aa, %bb.x, %bb.w, %._crit_edge964.thread, %bb.u
  %.not831.not1256 = phi i1 [ false, %bb.u ], [ false, %._crit_edge964.thread ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ] ; 3 uses
  %.0825 = phi ptr [ %i.az, %bb.u ], [ %i.az, %._crit_edge964.thread ], [ %i.go, %bb.z ], [ %i.gs, %bb.aa ], [ %i.az, %bb.x ], [ %i.az, %bb.w ], [ %i.az, %bb.v ] ; 20 uses
  %.0824 = phi ptr [ %i.fw, %bb.u ], [ %i.fw, %._crit_edge964.thread ], [ %i.go, %bb.z ], [ %i.gs, %bb.aa ], [ %i.az, %bb.x ], [ %i.az, %bb.w ], [ %i.az, %bb.v ] ; 4 uses
  %.0823 = phi ptr [ %i.gg, %bb.u ], [ %i.ga, %._crit_edge964.thread ], [ %i.go, %bb.z ], [ %i.gs, %bb.aa ], [ %i.az, %bb.x ], [ %i.az, %bb.w ], [ %i.az, %bb.v ] ; 4 uses
  %.1820 = phi ptr [ %i.ge, %bb.u ], [ %.0817, %._crit_edge964.thread ], [ %i.gq, %bb.z ], [ %i.gu, %bb.aa ], [ %.0817, %bb.x ], [ %.0817, %bb.w ], [ %.0817, %bb.v ] ; 2 uses
  %.1818 = phi ptr [ %.0817, %bb.u ], [ %.0817, %._crit_edge964.thread ], [ %i.gq, %bb.z ], [ %i.gu, %bb.aa ], [ %.0817, %bb.x ], [ %.0817, %bb.w ], [ %.0817, %bb.v ] ; 6 uses
  %i.gv = load ptr, ptr @active_sps, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1148
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !154
  %.not835 = icmp eq i32 %i.gx, 0                 ; 2 uses
  br i1 %.not835, label %.preheader935, label %.loopexit936

.preheader935:                                    ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw i8, ptr %.0825, i64 6396
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !76
  %i.ha = ashr i32 %i.gz, 2                       ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph976, label %.loopexit936

.lr.ph976:                                        ; preds = %.preheader935
  %i.hc = getelementptr inbounds nuw i8, ptr %.0825, i64 6392
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !77
  %i.he = ashr i32 %i.hd, 2                       ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %.0825, i64 6528
  %i.hh = getelementptr inbounds nuw i8, ptr %.0823, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.0824, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.0825, i64 6504 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 14456 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br i1 %i.hf, label %.lr.ph973.preheader, label %.loopexit936

.lr.ph973.preheader:                              ; preds = %.lr.ph976
  %wide.trip.count1087 = zext nneg i32 %i.ha to i64
  %wide.trip.count1082 = zext nneg i32 %i.he to i64
  %.sroa.gep1211 = getelementptr inbounds nuw i8, ptr %i.a, i64 924
  %.sroa.gep1215 = getelementptr inbounds nuw i8, ptr %i.a, i64 924
  %.sroa.gep1219 = getelementptr inbounds nuw i8, ptr %i.a, i64 924
  br label %.lr.ph973

.lr.ph973:                                        ; preds = %.lr.ph973.preheader, %._crit_edge974
  %indvars.iv1084 = phi i64 [ 0, %.lr.ph973.preheader ], [ %indvars.iv.next1085, %._crit_edge974 ] ; 18 uses
  %i.hm = trunc nuw nsw i64 %indvars.iv1084 to i32
  %i.hn = lshr i32 %i.hm, 1                       ; 3 uses
  %i.ho = and i32 %i.hn, 1073741820
  %i.hp = add nuw nsw i32 %i.ho, %i.hn
  %i.hq = load ptr, ptr @enc_picture, align 8     ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = zext nneg i32 %i.hp to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 3 uses
  %i.hu = zext nneg i32 %i.hn to i64              ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph973, %bb.ar
  %indvars.iv1079 = phi i64 [ 0, %.lr.ph973 ], [ %indvars.iv.next1080, %bb.ar ] ; 21 uses
  br i1 %.not831.not1256, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hv = load ptr, ptr %i.hg, align 8, !tbaa !155
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv1084
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !78
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv1079
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !79
  %.not837 = icmp eq i8 %i.hz, 0
  br i1 %.not837, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = load i32, ptr %i.hr, align 4, !tbaa !149 ; 2 uses
  %i.ib = load i32, ptr %i.hh, align 4, !tbaa !149
  %i.ic = sub nsw i32 %i.ia, %i.ib
  %i.id = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ie = load i32, ptr %i.hi, align 4, !tbaa !149
  %i.if = sub nsw i32 %i.ia, %i.ie
  %i.ig = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = icmp samesign ugt i32 %i.id, %i.ig
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !156
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !158
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.hs ; 2 uses
  br i1 %i.ih, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !160
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv1079
  %i.in = load i64, ptr %i.im, align 8, !tbaa !161 ; 3 uses
  %i.io = icmp slt i64 %i.in, 0
  %i.ip = load i32, ptr @listXsize, align 16      ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  %or.cond = select i1 %i.io, i1 %i.iq, i1 false  ; 3 uses
  %.1820..0824 = select i1 %or.cond, ptr %.1820, ptr %.0824
  %.not840 = icmp eq i64 %i.in, -1
  br i1 %.not840, label %bb.ai, label %.preheader931

.preheader931:                                    ; preds = %bb.af
  %i.ir = load i32, ptr %i.hk, align 8, !tbaa !162
  %i.is = tail call noundef i32 @llvm.smin.i32(i32 %i.ir, i32 %i.ip) ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph968.preheader, label %.loopexit932

.lr.ph968.preheader:                              ; preds = %.preheader931
  %wide.trip.count1072 = zext nneg i32 %i.is to i64
  br label %.lr.ph968

bb.ag:                                            ; preds = %.lr.ph968
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 1 ; 2 uses
  %exitcond1073.not = icmp eq i64 %indvars.iv.next1070, %wide.trip.count1072
  br i1 %exitcond1073.not, label %.loopexit932, label %.lr.ph968, !llvm.loop !131

.lr.ph968:                                        ; preds = %.lr.ph968.preheader, %bb.ag
  %indvars.iv1069 = phi i64 [ 0, %.lr.ph968.preheader ], [ %indvars.iv.next1070, %bb.ag ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv1069
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !161
  %i.iw = icmp eq i64 %i.iv, %i.in
  br i1 %i.iw, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph968
  %..sroa.sel.idx.sroa.sel = select i1 %or.cond, ptr %i.bf, ptr %i.a
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %..sroa.sel.idx.sroa.sel, i64 %indvars.iv1069
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !9
  %..sroa.sel.sroa.sel.v.sroa.sel = select i1 %or.cond, ptr %.sroa.gep1215, ptr %i.bk
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %..sroa.sel.sroa.sel.v.sroa.sel, i64 %indvars.iv1069
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !9
  br label %.loopexit932

.loopexit932:                                     ; preds = %bb.ag, %.preheader931, %bb.ah
  %.sroa.36.0 = phi i32 [ %i.ja, %bb.ah ], [ 0, %.preheader931 ], [ 0, %bb.ag ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.iy, %bb.ah ], [ 256, %.preheader931 ], [ 256, %bb.ag ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1820..0824, i64 6512
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !163
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !81
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.hu
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !61
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv1079
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !83 ; 3 uses
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !84
  %i.jj = sext i16 %i.ji to i32
  %i.jk = mul nsw i32 %.sroa.0.0, %i.jj
  %i.jl = add nsw i32 %i.jk, 128
  %i.jm = ashr i32 %i.jl, 8
  %i.jn = tail call noundef i32 @llvm.smax.i32(i32 %i.jm, i32 -32768)
  %i.jo = tail call noundef i32 @llvm.smin.i32(i32 %i.jn, i32 32767)
  %i.jp = trunc nsw i32 %i.jo to i16
  %i.jq = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 2 uses
end_hunk_0
begin_hunk_1_@EPZSSliceInit:bb.a
  %i.ni = tail call noundef i32 @llvm.smin.i32(i32 %i.nh, i32 32767)
  %i.nj = trunc nsw i32 %i.ni to i16
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  store i16 %i.nj, ptr %i.nk, align 2, !tbaa !84
  %i.nl = load i16, ptr %i.mm, align 2, !tbaa !84
  %i.nm = sext i16 %i.nl to i32
  %i.nn = mul nsw i32 %.sroa.36.1, %i.nm
  %i.no = add nsw i32 %i.nn, 128
  %i.np = ashr i32 %i.no, 8
  %i.nq = tail call noundef i32 @llvm.smax.i32(i32 %i.np, i32 -32768)
  %i.nr = tail call noundef i32 @llvm.smin.i32(i32 %i.nq, i32 32767)
  %i.ns = trunc nsw i32 %i.nr to i16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !81
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv1084
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !61
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv1079
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !83 ; 2 uses
  store i16 %i.ns, ptr %i.ny, align 2, !tbaa !84
  %i.nz = load i16, ptr %i.nb, align 2, !tbaa !84
  %i.oa = sext i16 %i.nz to i32
  %i.ob = mul nsw i32 %.sroa.36.1, %i.oa
  %i.oc = add nsw i32 %i.ob, 128
  %i.od = ashr i32 %i.oc, 8
  %i.oe = tail call noundef i32 @llvm.smax.i32(i32 %i.od, i32 -32768)
  %i.of = tail call noundef i32 @llvm.smin.i32(i32 %i.oe, i32 32767)
  %i.og = trunc nsw i32 %i.of to i16
  br label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.oh = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !81
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv1084
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !61
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv1079
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !83 ; 2 uses
  store i16 0, ptr %i.om, align 2, !tbaa !84
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 2
  store i16 0, ptr %i.on, align 2, !tbaa !84
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !81
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv1084
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !61
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %indvars.iv1079
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !83 ; 2 uses
  store i16 0, ptr %i.ot, align 2, !tbaa !84
  br label %bb.ar

bb.an:                                            ; preds = %bb.ad, %bb.ac
  %i.ou = load ptr, ptr %i.hj, align 8, !tbaa !156
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !158
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %indvars.iv1084
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !160
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv1079
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !161
  %i.pa = icmp slt i64 %i.oz, 0
  %i.pb = load i32, ptr @listXsize, align 16      ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 1
  %or.cond5 = select i1 %i.pa, i1 %i.pc, i1 false ; 3 uses
  %.1818..0825 = select i1 %or.cond5, ptr %.1818, ptr %.0825 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.1818..0825, i64 6504
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !156
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !158
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv1084
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !160
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv1079
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !161 ; 2 uses
  %.not838 = icmp eq i64 %i.pj, -1
  br i1 %.not838, label %bb.aq, label %.preheader929

.preheader929:                                    ; preds = %bb.an
  %i.pk = load i32, ptr %i.hk, align 8, !tbaa !162
  %i.pl = tail call noundef i32 @llvm.smin.i32(i32 %i.pk, i32 %i.pb) ; 2 uses
  %i.pm = icmp sgt i32 %i.pl, 0
  br i1 %i.pm, label %.lr.ph970.preheader, label %.loopexit930

.lr.ph970.preheader:                              ; preds = %.preheader929
  %wide.trip.count1077 = zext nneg i32 %i.pl to i64
  br label %.lr.ph970

bb.ao:                                            ; preds = %.lr.ph970
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1075, %wide.trip.count1077
  br i1 %exitcond1078.not, label %.loopexit930, label %.lr.ph970, !llvm.loop !133

.lr.ph970:                                        ; preds = %.lr.ph970.preheader, %bb.ao
  %indvars.iv1074 = phi i64 [ 0, %.lr.ph970.preheader ], [ %indvars.iv.next1075, %bb.ao ] ; 4 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv1074
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !161
  %i.pp = icmp eq i64 %i.po, %i.pj
  br i1 %i.pp, label %bb.ap, label %bb.ao

bb.ap:                                            ; preds = %.lr.ph970
  %.867.sroa.sel.idx.sroa.sel = select i1 %or.cond5, ptr %i.bf, ptr %i.a
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.867.sroa.sel.idx.sroa.sel, i64 %indvars.iv1074
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !9
  %.867.sroa.sel.sroa.sel.v.sroa.sel = select i1 %or.cond5, ptr %.sroa.gep1219, ptr %i.bk
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.867.sroa.sel.sroa.sel.v.sroa.sel, i64 %indvars.iv1074
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !9
  br label %.loopexit930

.loopexit930:                                     ; preds = %bb.ao, %.preheader929, %bb.ap
  %.sroa.36.2 = phi i32 [ %i.pt, %bb.ap ], [ 0, %.preheader929 ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.pr, %bb.ap ], [ 256, %.preheader929 ], [ 256, %bb.ao ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.1818..0825, i64 6512
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !163
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !81
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv1084
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv1079
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !83 ; 3 uses
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !84
  %i.qc = sext i16 %i.qb to i32
  %i.qd = mul nsw i32 %.sroa.0.2, %i.qc
  %i.qe = add nsw i32 %i.qd, 128
  %i.qf = ashr i32 %i.qe, 8
  %i.qg = tail call noundef i32 @llvm.smax.i32(i32 %i.qf, i32 -32768)
  %i.qh = tail call noundef i32 @llvm.smin.i32(i32 %i.qg, i32 32767)
  %i.qi = trunc nsw i32 %i.qh to i16
  %i.qj = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !81
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv1084
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !61
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv1079
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !83 ; 2 uses
  store i16 %i.qi, ptr %i.qo, align 2, !tbaa !84
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qa, i64 2 ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !84
  %i.qr = sext i16 %i.qq to i32
  %i.qs = mul nsw i32 %.sroa.0.2, %i.qr
  %i.qt = add nsw i32 %i.qs, 128
  %i.qu = ashr i32 %i.qt, 8
  %i.qv = tail call noundef i32 @llvm.smax.i32(i32 %i.qu, i32 -32768)
  %i.qw = tail call noundef i32 @llvm.smin.i32(i32 %i.qv, i32 32767)
  %i.qx = trunc nsw i32 %i.qw to i16
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qo, i64 2
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !84
  %i.qz = load i16, ptr %i.qa, align 2, !tbaa !84
  %i.ra = sext i16 %i.qz to i32
  %i.rb = mul nsw i32 %.sroa.36.2, %i.ra
  %i.rc = add nsw i32 %i.rb, 128
  %i.rd = ashr i32 %i.rc, 8
  %i.re = tail call noundef i32 @llvm.smax.i32(i32 %i.rd, i32 -32768)
  %i.rf = tail call noundef i32 @llvm.smin.i32(i32 %i.re, i32 32767)
  %i.rg = trunc nsw i32 %i.rf to i16
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !81
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv1084
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !61
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %indvars.iv1079
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !83 ; 2 uses
  store i16 %i.rg, ptr %i.rm, align 2, !tbaa !84
  %i.rn = load i16, ptr %i.qp, align 2, !tbaa !84
  %i.ro = sext i16 %i.rn to i32
  %i.rp = mul nsw i32 %.sroa.36.2, %i.ro
  %i.rq = add nsw i32 %i.rp, 128
  %i.rr = ashr i32 %i.rq, 8
  %i.rs = tail call noundef i32 @llvm.smax.i32(i32 %i.rr, i32 -32768)
  %i.rt = tail call noundef i32 @llvm.smin.i32(i32 %i.rs, i32 32767)
  %i.ru = trunc nsw i32 %i.rt to i16
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.rv = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !81
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv1084
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !61
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv1079
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !83 ; 2 uses
  store i16 0, ptr %i.sa, align 2, !tbaa !84
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  store i16 0, ptr %i.sb, align 2, !tbaa !84
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !81
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %indvars.iv1084
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !61
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv1079
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !83 ; 2 uses
  store i16 0, ptr %i.sh, align 2, !tbaa !84
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit934, %bb.am, %.loopexit932, %bb.ai, %bb.aq, %.loopexit930
  %.sink1287 = phi ptr [ %i.ny, %.loopexit934 ], [ %i.ot, %bb.am ], [ %i.kt, %.loopexit932 ], [ %i.lo, %bb.ai ], [ %i.sh, %bb.aq ], [ %i.rm, %.loopexit930 ]
  %.sink1285 = phi i16 [ %i.og, %.loopexit934 ], [ 0, %bb.am ], [ %i.lb, %.loopexit932 ], [ 0, %bb.ai ], [ 0, %bb.aq ], [ %i.ru, %.loopexit930 ]
  %i.si = getelementptr inbounds nuw i8, ptr %.sink1287, i64 2
  store i16 %.sink1285, ptr %i.si, align 2, !tbaa !84
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 1 ; 2 uses
  %exitcond1083.not = icmp eq i64 %indvars.iv.next1080, %wide.trip.count1082
  br i1 %exitcond1083.not, label %._crit_edge974, label %bb.ac, !llvm.loop !134

._crit_edge974:                                   ; preds = %bb.ar
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 1 ; 2 uses
  %exitcond1088.not = icmp eq i64 %indvars.iv.next1085, %wide.trip.count1087
  br i1 %exitcond1088.not, label %.loopexit936, label %.lr.ph973, !llvm.loop !135

.loopexit936:                                     ; preds = %._crit_edge974, %.preheader935, %.lr.ph976, %bb.ab
  %i.sj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !75
  %.fr = freeze i32 %i.sk                         ; 2 uses
  %.not841.not = icmp eq i32 %.fr, 0              ; 3 uses
  %i.sl = or i32 %.fr, %3
  %brmerge.not = icmp eq i32 %i.sl, 0
  br i1 %brmerge.not, label %.loopexit928, label %.preheader927

.preheader927:                                    ; preds = %.loopexit936
  %i.sm = getelementptr inbounds nuw i8, ptr %.0825, i64 6396
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !76 ; 2 uses
  %i.so = sdiv i32 %i.sn, 8                       ; 2 uses
  %i.sp = icmp sgt i32 %i.sn, 7
  br i1 %i.sp, label %.preheader926.lr.ph, label %.loopexit928

.preheader926.lr.ph:                              ; preds = %.preheader927
  %i.sq = getelementptr inbounds nuw i8, ptr %.0825, i64 6392
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !77 ; 2 uses
  %i.ss = sdiv i32 %i.sr, 4                       ; 2 uses
  %i.st = icmp sgt i32 %i.sr, 3
  %i.su = getelementptr inbounds nuw i8, ptr %.0823, i64 6504
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 14456 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.0825, i64 6528
  %i.sy = getelementptr inbounds nuw i8, ptr %.0824, i64 6504
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.0825, i64 6504
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.st, label %.preheader926.lr.ph.split, label %.loopexit928

.preheader926.lr.ph.split:                        ; preds = %.preheader926.lr.ph
  br i1 %.not831.not1256, label %.preheader926.lr.ph.split.split.us, label %.preheader926.lr.ph.split.split

.preheader926.lr.ph.split.split.us:               ; preds = %.preheader926.lr.ph.split
  %i.tc = load ptr, ptr %i.ta, align 8, !tbaa !156
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !158
  %wide.trip.count1122 = zext nneg i32 %i.so to i64
  %wide.trip.count1117 = zext nneg i32 %i.ss to i64
  %.sroa.gep1223 = getelementptr inbounds nuw i8, ptr %i.a, i64 924
  br label %.preheader926.us

.preheader926.us:                                 ; preds = %._crit_edge985.split.us.us, %.preheader926.lr.ph.split.split.us
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %._crit_edge985.split.us.us ], [ 0, %.preheader926.lr.ph.split.split.us ] ; 8 uses
  %i.te = load ptr, ptr @enc_picture, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv1119
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !160
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.preheader926.us
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %bb.aw ], [ 0, %.preheader926.us ] ; 8 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv1114
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !161
  %i.tk = icmp slt i64 %i.tj, 0
  %i.tl = load i32, ptr @listXsize, align 16      ; 2 uses
  %i.tm = icmp sgt i32 %i.tl, 1
  %or.cond7.us.us = select i1 %i.tk, i1 %i.tm, i1 false ; 3 uses
  %.1818..0825868.us.us = select i1 %or.cond7.us.us, ptr %.1818, ptr %.0825 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.1818..0825868.us.us, i64 6504
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !156
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !158
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv1119
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !160
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv1114
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !161 ; 2 uses
  %.not858.us.us = icmp eq i64 %i.tt, -1
  br i1 %.not858.us.us, label %bb.av, label %.preheader920.us.us

.preheader920.us.us:                              ; preds = %bb.as
  %i.tu = load i32, ptr %i.sv, align 8, !tbaa !162
  %i.tv = tail call noundef i32 @llvm.smin.i32(i32 %i.tu, i32 %i.tl) ; 2 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  br i1 %i.tw, label %.lr.ph982.us.us.preheader, label %.loopexit921.us.us

.lr.ph982.us.us.preheader:                        ; preds = %.preheader920.us.us
  %wide.trip.count1112 = zext nneg i32 %i.tv to i64
  br label %.lr.ph982.us.us

.lr.ph982.us.us:                                  ; preds = %.lr.ph982.us.us.preheader, %bb.at
  %indvars.iv1109 = phi i64 [ 0, %.lr.ph982.us.us.preheader ], [ %indvars.iv.next1110, %bb.at ] ; 4 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv1109
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !161
  %i.tz = icmp eq i64 %i.ty, %i.tt
  br i1 %i.tz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph982.us.us
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 1 ; 2 uses
  %exitcond1113.not = icmp eq i64 %indvars.iv.next1110, %wide.trip.count1112
  br i1 %exitcond1113.not, label %.loopexit921.us.us, label %.lr.ph982.us.us, !llvm.loop !136

bb.au:                                            ; preds = %.lr.ph982.us.us
  %.869.sroa.sel.idx.us.us.sroa.sel = select i1 %or.cond7.us.us, ptr %i.bf, ptr %i.a
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.869.sroa.sel.idx.us.us.sroa.sel, i64 %indvars.iv1109
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !9
  %.869.sroa.sel.sroa.sel.v.us.us.sroa.sel = select i1 %or.cond7.us.us, ptr %.sroa.gep1223, ptr %i.bk
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.869.sroa.sel.sroa.sel.v.us.us.sroa.sel, i64 %indvars.iv1109
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !9
  br label %.loopexit921.us.us

.loopexit921.us.us:                               ; preds = %bb.at, %.preheader920.us.us, %bb.au
  %.sroa.36.3.us.us = phi i32 [ %i.ud, %bb.au ], [ 0, %.preheader920.us.us ], [ 0, %bb.at ] ; 2 uses
  %.sroa.0.3.us.us = phi i32 [ %i.ub, %bb.au ], [ 256, %.preheader920.us.us ], [ 256, %bb.at ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.1818..0825868.us.us, i64 6512
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !163
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !81
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv1119
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !61
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv1114
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !83 ; 3 uses
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !84
  %i.um = sext i16 %i.ul to i32
  %i.un = mul nsw i32 %.sroa.0.3.us.us, %i.um
  %i.uo = add nsw i32 %i.un, 128
  %i.up = ashr i32 %i.uo, 8
  %i.uq = tail call noundef i32 @llvm.smax.i32(i32 %i.up, i32 -32768)
  %i.ur = tail call noundef i32 @llvm.smin.i32(i32 %i.uq, i32 32767)
  %i.us = trunc nsw i32 %i.ur to i16
  %i.ut = load ptr, ptr %i.tb, align 8, !tbaa !19 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !81
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv1119
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !61
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %indvars.iv1114
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !83 ; 2 uses
  store i16 %i.us, ptr %i.uy, align 2, !tbaa !84
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uk, i64 2 ; 2 uses
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !84
  %i.vb = sext i16 %i.va to i32
  %i.vc = mul nsw i32 %.sroa.0.3.us.us, %i.vb
  %i.vd = add nsw i32 %i.vc, 128
  %i.ve = ashr i32 %i.vd, 8
  %i.vf = tail call noundef i32 @llvm.smax.i32(i32 %i.ve, i32 -32768)
  %i.vg = tail call noundef i32 @llvm.smin.i32(i32 %i.vf, i32 32767)
  %i.vh = trunc nsw i32 %i.vg to i16
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uy, i64 2
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !84
  %i.vj = load i16, ptr %i.uk, align 2, !tbaa !84
  %i.vk = sext i16 %i.vj to i32
  %i.vl = mul nsw i32 %.sroa.36.3.us.us, %i.vk
  %i.vm = add nsw i32 %i.vl, 128
  %i.vn = ashr i32 %i.vm, 8
  %i.vo = tail call noundef i32 @llvm.smax.i32(i32 %i.vn, i32 -32768)
  %i.vp = tail call noundef i32 @llvm.smin.i32(i32 %i.vo, i32 32767)
  %i.vq = trunc nsw i32 %i.vp to i16
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv1119
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !61
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv1114
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !83 ; 2 uses
  store i16 %i.vq, ptr %i.vw, align 2, !tbaa !84
  %i.vx = load i16, ptr %i.uz, align 2, !tbaa !84
  %i.vy = sext i16 %i.vx to i32
  %i.vz = mul nsw i32 %.sroa.36.3.us.us, %i.vy
  %i.wa = add nsw i32 %i.vz, 128
  %i.wb = ashr i32 %i.wa, 8
  %i.wc = tail call noundef i32 @llvm.smax.i32(i32 %i.wb, i32 -32768)
  %i.wd = tail call noundef i32 @llvm.smin.i32(i32 %i.wc, i32 32767)
  %i.we = trunc nsw i32 %i.wd to i16
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.wf = load ptr, ptr %i.tb, align 8, !tbaa !19 ; 2 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !81
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv1119
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !61
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv1114
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !83 ; 2 uses
  store i16 0, ptr %i.wk, align 2, !tbaa !84
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i16 0, ptr %i.wl, align 2, !tbaa !84
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !81
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %indvars.iv1119
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !61
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv1114
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !83 ; 2 uses
  store i16 0, ptr %i.wr, align 2, !tbaa !84
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit921.us.us
  %.sink1290 = phi ptr [ %i.wr, %bb.av ], [ %i.vw, %.loopexit921.us.us ]
  %.sink1288 = phi i16 [ 0, %bb.av ], [ %i.we, %.loopexit921.us.us ]
  %i.ws = getelementptr inbounds nuw i8, ptr %.sink1290, i64 2
  store i16 %.sink1288, ptr %i.ws, align 2, !tbaa !84
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1 ; 2 uses
  %exitcond1118.not = icmp eq i64 %indvars.iv.next1115, %wide.trip.count1117
  br i1 %exitcond1118.not, label %._crit_edge985.split.us.us, label %bb.as, !llvm.loop !137

._crit_edge985.split.us.us:                       ; preds = %bb.aw
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 1 ; 2 uses
  %exitcond1123.not = icmp eq i64 %indvars.iv.next1120, %wide.trip.count1122
  br i1 %exitcond1123.not, label %.loopexit928, label %.preheader926.us, !llvm.loop !138

.preheader926.lr.ph.split.split:                  ; preds = %.preheader926.lr.ph.split
  %i.wt = load ptr, ptr %i.su, align 8, !tbaa !156
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !158
  %i.wv = load ptr, ptr %i.sx, align 8, !tbaa !155
  %i.ww = load ptr, ptr %i.sy, align 8, !tbaa !156
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !158
  %wide.trip.count1107 = zext nneg i32 %i.so to i64
  %wide.trip.count1102 = zext nneg i32 %i.ss to i64
  %.sroa.gep1201 = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  %.sroa.gep1203 = getelementptr inbounds nuw i8, ptr %i.a, i64 1452
  %.sroa.gep1205 = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %.sroa.gep1207 = getelementptr inbounds nuw i8, ptr %i.a, i64 1188
end_hunk_1
