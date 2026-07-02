inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Assign:bb.a
  %i.c = load i64, ptr @cardTopNotPref, align 8, !tbaa !8 ; 3 uses
  %i.d = load i64, ptr @cardBotNotPref, align 8, !tbaa !8 ; 3 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  %.pre = load i64, ptr @channelTracks, align 8, !tbaa !8 ; 2 uses
  br i1 %.not.i, label %IdealTrack.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 %.pre, %i.d
  %i.g = mul i64 %i.f, %i.c
  %i.h = add i64 %i.c, 1
  %i.i = mul i64 %i.d, %i.h
  %i.j = add i64 %i.g, %i.i
  %i.k = udiv i64 %i.j, %i.e
  br label %IdealTrack.exit

IdealTrack.exit:                                  ; preds = %bb.a, %bb.b
  %storemerge.i = phi i64 [ %i.k, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %.not95 = icmp eq i64 %.pre, 0
  br i1 %.not95, label %._crit_edge110.thread, label %.lr.ph

.lr.ph:                                           ; preds = %IdealTrack.exit
  %i.l = load ptr, ptr @tracksAssign, align 8, !tbaa !14
  br label %bb.c

.preheader94:                                     ; preds = %bb.c
  %.not7597 = icmp eq i64 %i.r, 0
  br i1 %.not7597, label %._crit_edge110.thread, label %.lr.ph100

.lr.ph100:                                        ; preds = %.preheader94
  %i.m = load ptr, ptr @tracksNoHCV, align 8, !tbaa !14
  %i.n = load ptr, ptr @tracksNotPref, align 8
  %i.o = load ptr, ptr @tracksAssign, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.06096 = phi i64 [ 1, %.lr.ph ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06096
  store i64 0, ptr %i.p, align 8, !tbaa !8
  %i.q = add i64 %.06096, 1                       ; 2 uses
  %i.r = load i64, ptr @channelTracks, align 8, !tbaa !8 ; 3 uses
  %.not = icmp ugt i64 %i.q, %i.r
  br i1 %.not, label %.preheader94, label %bb.c, !llvm.loop !48

bb.d:                                             ; preds = %.lr.ph100, %bb.g
  %i.s = phi i64 [ %i.r, %.lr.ph100 ], [ %i.z, %bb.g ] ; 2 uses
  %.16199 = phi i64 [ 1, %.lr.ph100 ], [ %i.aa, %bb.g ] ; 4 uses
  %.06498 = phi i64 [ 0, %.lr.ph100 ], [ %.165, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.16199
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %.not86 = icmp eq i64 %i.u, 0
  br i1 %.not86, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.16199
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8
  %.not87 = icmp eq i64 %i.w, 0
  br i1 %.not87, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.16199
  store i64 1, ptr %i.x, align 8, !tbaa !8
  %i.y = add i64 %.06498, 1
  %.pre120 = load i64, ptr @channelTracks, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.z = phi i64 [ %i.s, %bb.e ], [ %.pre120, %bb.f ], [ %i.s, %bb.d ] ; 5 uses
  %.165 = phi i64 [ %.06498, %bb.e ], [ %i.y, %bb.f ], [ %.06498, %bb.d ] ; 2 uses
  %i.aa = add i64 %.16199, 1                      ; 2 uses
  %.not75 = icmp ugt i64 %i.aa, %i.z
  br i1 %.not75, label %._crit_edge, label %bb.d, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.g
  %i.ab = icmp eq i64 %.165, 0
  br i1 %i.ab, label %.preheader93, label %.thread91

.preheader93:                                     ; preds = %._crit_edge
  %.not76101 = icmp eq i64 %i.z, 0
  br i1 %.not76101, label %._crit_edge110.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader93
  %i.ac = load ptr, ptr @tracksNoHCV, align 8, !tbaa !14
  %i.ad = load ptr, ptr @tracksTopNotPref, align 8
  %i.ae = load ptr, ptr @tracksBotNotPref, align 8
  %i.af = load ptr, ptr @tracksAssign, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph104, %bb.l
  %i.ag = phi i64 [ %i.z, %.lr.ph104 ], [ %i.ap, %bb.l ] ; 3 uses
  %.2103 = phi i64 [ 1, %.lr.ph104 ], [ %i.aq, %bb.l ] ; 5 uses
  %.266102 = phi i64 [ 0, %.lr.ph104 ], [ %.367, %bb.l ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.2103
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !8
  %.not83 = icmp eq i64 %i.ai, 0
  br i1 %.not83, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.2103
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8
  %.not84 = icmp eq i64 %i.ak, 0
  br i1 %.not84, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.2103
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8
  %.not85 = icmp eq i64 %i.am, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.2103
  store i64 1, ptr %i.an, align 8, !tbaa !8
  %i.ao = add i64 %.266102, 1
  %.pre121 = load i64, ptr @channelTracks, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ap = phi i64 [ %.pre121, %bb.k ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ] ; 6 uses
  %.367 = phi i64 [ %i.ao, %bb.k ], [ %.266102, %bb.j ], [ %.266102, %bb.i ], [ %.266102, %bb.h ] ; 2 uses
  %i.aq = add i64 %.2103, 1                       ; 2 uses
  %.not76 = icmp ugt i64 %i.aq, %i.ap
  br i1 %.not76, label %._crit_edge105, label %bb.h, !llvm.loop !50

._crit_edge105:                                   ; preds = %bb.l
  %i.ar = icmp eq i64 %.367, 0
  br i1 %i.ar, label %.preheader, label %.thread91

.preheader:                                       ; preds = %._crit_edge105
  %i.as = icmp ugt i64 %i.ap, 2
  br i1 %i.as, label %.lr.ph109, label %._crit_edge110.thread

.lr.ph109:                                        ; preds = %.preheader
  %i.at = load ptr, ptr @tracksNoHCV, align 8, !tbaa !14
  %i.au = load ptr, ptr @tracksNotPref, align 8
  %i.av = load ptr, ptr @tracksAssign, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph109, %bb.p
  %i.aw = phi i64 [ %i.ap, %.lr.ph109 ], [ %i.bd, %bb.p ] ; 2 uses
  %.3108 = phi i64 [ 2, %.lr.ph109 ], [ %i.be, %bb.p ] ; 4 uses
  %.5107 = phi i64 [ 0, %.lr.ph109 ], [ %.6, %bb.p ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.3108
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !8
  %.not81 = icmp eq i64 %i.ay, 0
  br i1 %.not81, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.3108
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !8
  %.not82 = icmp eq i64 %i.ba, 0
  br i1 %.not82, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.3108
  store i64 1, ptr %i.bb, align 8, !tbaa !8
  %i.bc = add i64 %.5107, 1
  %.pre122 = load i64, ptr @channelTracks, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.bd = phi i64 [ %.pre122, %bb.o ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ] ; 4 uses
  %.6 = phi i64 [ %i.bc, %bb.o ], [ %.5107, %bb.n ], [ %.5107, %bb.m ] ; 2 uses
  %i.be = add nuw i64 %.3108, 1                   ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.m, label %._crit_edge110, !llvm.loop !51

._crit_edge110:                                   ; preds = %bb.p
  %i.bg = icmp eq i64 %.6, 0
  br i1 %i.bg, label %._crit_edge110.thread, label %.thread91

._crit_edge110.thread:                            ; preds = %.preheader93, %IdealTrack.exit, %.preheader94, %.preheader, %._crit_edge110
  %i.bh = phi i64 [ %i.bd, %._crit_edge110 ], [ %i.ap, %.preheader ], [ 0, %.preheader94 ], [ 0, %IdealTrack.exit ], [ 0, %.preheader93 ] ; 3 uses
  %i.bi = load ptr, ptr @tracksNoHCV, align 8, !tbaa !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !8
  %.not77 = icmp eq i64 %i.bk, 0
  br i1 %.not77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge110.thread
  %i.bl = load ptr, ptr @tracksAssign, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 1, ptr %i.bm, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge110.thread
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8
  %.not78 = icmp eq i64 %i.bo, 0
  br i1 %.not78, label %.thread91, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr @tracksAssign, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bh
  store i64 1, ptr %i.bq, align 8, !tbaa !8
  %.pre123 = load i64, ptr @channelTracks, align 8, !tbaa !8
  br label %.thread91

.thread91:                                        ; preds = %._crit_edge, %._crit_edge105, %bb.r, %bb.s, %._crit_edge110
  %i.br = phi i64 [ %i.z, %._crit_edge ], [ %i.ap, %._crit_edge105 ], [ %i.bh, %bb.r ], [ %.pre123, %bb.s ], [ %i.bd, %._crit_edge110 ]
  %.not79112 = icmp eq i64 %i.br, 0
  br i1 %.not79112, label %._crit_edge118, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.thread91
  %.pre125 = load ptr, ptr @tracksAssign, align 8, !tbaa !14
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.x
  %3 = phi ptr [ %4, %bb.x ], [ %.pre125, %.lr.ph117.preheader ] ; 2 uses
  %.057116.a = phi i64 [ %.1, %bb.x ], [ 1000000, %.lr.ph117.preheader ] ; 5 uses
  %.058115 = phi i64 [ %.159, %bb.x ], [ undef, %.lr.ph117.preheader ] ; 4 uses
  %.4114 = phi i64 [ %i.cb, %bb.x ], [ 1, %.lr.ph117.preheader ] ; 7 uses
  %.062113 = phi i64 [ %.163, %bb.x ], [ 0, %.lr.ph117.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.4114
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !8
  %.not80 = icmp eq i64 %i.bt, 0
  br i1 %.not80, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.lr.ph117
  %i.bu = load ptr, ptr @netsAssign, align 8, !tbaa !14
  %i.bv = tail call i64 @VCV(ptr noundef %0, i64 noundef %2, i64 noundef %.4114, ptr noundef %i.bu) #11 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %.057116.a
  %.pre124 = load ptr, ptr @tracksAssign, align 8, !tbaa !14 ; 3 uses
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = sub i64 %.4114, %storemerge.i
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.bx, i1 true)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.by = icmp eq i64 %i.bv, %.057116.a
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = sub i64 %.4114, %storemerge.i
  %spec.select88 = tail call i64 @llvm.abs.i64(i64 %i.bz, i1 true) ; 2 uses
  %i.ca = icmp slt i64 %spec.select88, %.058115
  %spec.select151 = select i1 %i.ca, i64 %.4114, i64 %.062113
  %spec.select152 = tail call i64 @llvm.smin.i64(i64 %spec.select88, i64 %.058115)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %.lr.ph117, %bb.v
  %4 = phi ptr [ %3, %.lr.ph117 ], [ %.pre124, %bb.u ], [ %.pre124, %bb.v ], [ %.pre124, %bb.w ]
  %.163 = phi i64 [ %.062113, %.lr.ph117 ], [ %.4114, %bb.u ], [ %.062113, %bb.v ], [ %spec.select151, %bb.w ] ; 2 uses
  %.159 = phi i64 [ %.058115, %.lr.ph117 ], [ %spec.select, %bb.u ], [ %.058115, %bb.v ], [ %spec.select152, %bb.w ]
  %.1 = phi i64 [ %.057116.a, %.lr.ph117 ], [ %i.bv, %bb.u ], [ %.057116.a, %bb.v ], [ %.057116.a, %bb.w ]
  %i.cb = add i64 %.4114, 1                       ; 2 uses
  %i.cc = load i64, ptr @channelTracks, align 8, !tbaa !8
  %.not79 = icmp ugt i64 %i.cb, %i.cc
  br i1 %.not79, label %._crit_edge118, label %.lr.ph117, !llvm.loop !52

._crit_edge118:                                   ; preds = %bb.x, %.thread91
  %.062.lcssa = phi i64 [ 0, %.thread91 ], [ %.163, %bb.x ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store i64 %.062.lcssa, ptr %i.cd, align 8, !tbaa !8
  ret void
}

declare void @LongestPathVCG(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @NoHCV(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IdealTrack(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %2, %1                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 %0, %2
  %i.c = mul i64 %i.b, %1
  %i.d = add i64 %1, 1
  %i.e = mul i64 %2, %i.d
  %i.f = add i64 %i.c, %i.e
  %i.g = udiv i64 %i.f, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.g, %bb.b ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !8
  ret void
}

declare i64 @VCV(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BuildCostMatrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !8 ; 2 uses
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %._crit_edge75, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.b = load ptr, ptr @costMatrix, align 8, !tbaa !10
  %i.c = load i64, ptr @channelTracks, align 8, !tbaa !8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.lr.ph74.preheader, label %.lr.ph66.split

.preheader:                                       ; preds = %._crit_edge
  %i.e = icmp eq i64 %i.m, 0
  br i1 %i.e, label %._crit_edge75, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %.lr.ph66, %.preheader
  br label %.lr.ph74

.lr.ph66.split:                                   ; preds = %.lr.ph66, %._crit_edge
  %i.f = phi i64 [ %i.m, %._crit_edge ], [ %i.a, %.lr.ph66 ]
  %i.g = phi i64 [ %i.n, %._crit_edge ], [ 1, %.lr.ph66 ]
  %.064 = phi i64 [ %i.o, %._crit_edge ], [ 1, %.lr.ph66 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.064
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %.not5761 = icmp eq i64 %i.g, 0
  br i1 %.not5761, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph66.split, %.lr.ph
  %.04262 = phi i64 [ %i.k, %.lr.ph ], [ 1, %.lr.ph66.split ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04262
  store i64 0, ptr %i.j, align 8, !tbaa !8
  %i.k = add i64 %.04262, 1                       ; 2 uses
  %i.l = load i64, ptr @channelTracks, align 8, !tbaa !8 ; 2 uses
  %.not57 = icmp ugt i64 %i.k, %i.l
  br i1 %.not57, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr @channelNets, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph66.split
  %i.m = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %.lr.ph66.split ] ; 3 uses
  %i.n = phi i64 [ %i.l, %._crit_edge.loopexit ], [ 0, %.lr.ph66.split ]
  %i.o = add i64 %.064, 1                         ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.m
  br i1 %.not, label %.preheader, label %.lr.ph66.split, !llvm.loop !33

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.loopexit
  %.173 = phi i64 [ %i.bc, %.loopexit ], [ 1, %.lr.ph74.preheader ] ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.173
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8
  %.not51 = icmp eq i64 %i.q, 0
  br i1 %.not51, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph74
  %i.r = load ptr, ptr @costMatrix, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.173
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  tail call void @LongestPathVCG(ptr noundef %0, i64 noundef %.173) #11
  %i.u = load ptr, ptr @tracksNoHCV, align 8, !tbaa !14
  tail call void @NoHCV(ptr noundef %1, i64 noundef %.173, ptr noundef %2, ptr noundef %i.u) #11
  %i.v = load i64, ptr @cardTopNotPref, align 8, !tbaa !8 ; 3 uses
  %i.w = load i64, ptr @cardBotNotPref, align 8, !tbaa !8 ; 3 uses
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  %.pre77 = load i64, ptr @channelTracks, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i, label %IdealTrack.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub i64 %.pre77, %i.w
  %i.z = mul i64 %i.y, %i.v
  %i.aa = add i64 %i.v, 1
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = udiv i64 %i.ac, %i.x
  br label %IdealTrack.exit

IdealTrack.exit:                                  ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ %i.ad, %bb.c ], [ 1, %bb.b ]
  %.not5267 = icmp eq i64 %.pre77, 0
  br i1 %.not5267, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %IdealTrack.exit
  %i.ae = load ptr, ptr @tracksNoHCV, align 8, !tbaa !14
  %i.af = load ptr, ptr @tracksNotPref, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph71, %bb.l
  %i.ag = phi i64 [ %.pre77, %.lr.ph71 ], [ %i.bb, %bb.l ] ; 3 uses
  %.14368 = phi i64 [ 1, %.lr.ph71 ], [ %i.ba, %bb.l ] ; 9 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.14368
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !8
  %.not53 = icmp eq i64 %i.ai, 0
  br i1 %.not53, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr @cardNotPref, align 8, !tbaa !8 ; 2 uses
  %.not54 = icmp eq i64 %i.aj, %i.ag
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.14368
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8
  %.not56 = icmp eq i64 %i.al, 0
  br i1 %.not56, label %bb.j, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.am = load i64, ptr @cardBotNotPref, align 8, !tbaa !8 ; 2 uses
  %i.an = sub i64 %i.ag, %i.am
  %i.ao = icmp ugt i64 %.14368, %i.an
  br i1 %i.ao, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr @cardTopNotPref, align 8, !tbaa !8 ; 2 uses
  %.not55 = icmp ugt i64 %.14368, %i.ap
  br i1 %.not55, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.neg60 = shl i64 %i.ag, 1
  %i.aq = add i64 %i.am, %i.ap
  %i.ar = sub i64 %.neg60, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.sink95 = phi i64 [ %i.ar, %bb.i ], [ %i.aj, %bb.f ]
  %i.as = mul i64 %.sink95, 100                   ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.14368
  store i64 %i.as, ptr %i.at, align 8, !tbaa !8
  %i.au = icmp slt i64 %i.as, 1000000
  br i1 %i.au, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.g, %bb.h, %bb.f, %bb.j
  %i.av = phi i64 [ %i.as, %bb.j ], [ 10000, %bb.f ], [ 10000, %bb.h ], [ 10000, %bb.g ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.14368
  %i.ax = sub i64 %storemerge.i, %.14368
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.ax, i1 true)
  %i.ay = add nsw i64 %i.av, %spec.select
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.14368
  store i64 1000000, ptr %i.az, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %bb.j
  %i.ba = add i64 %.14368, 1                      ; 2 uses
  %i.bb = load i64, ptr @channelTracks, align 8, !tbaa !8 ; 2 uses
  %.not52 = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not52, label %.loopexit, label %bb.d, !llvm.loop !35

.loopexit:                                        ; preds = %bb.l, %IdealTrack.exit, %.lr.ph74
  %i.bc = add i64 %.173, 1                        ; 2 uses
  %i.bd = load i64, ptr @channelNets, align 8, !tbaa !8
  %.not50 = icmp ugt i64 %i.bc, %i.bd
  br i1 %.not50, label %._crit_edge75, label %.lr.ph74, !llvm.loop !36

._crit_edge75:                                    ; preds = %.loopexit, %bb.a, %.preheader
  ret void
end_hunk_0
