Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nbench1?download=true
inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoStringSortIteration:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %wide.load119.a = load <2 x i64>, ptr %i.fb, align 8, !tbaa !15
  %wide.load120 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !15
  %i.fd = sub <2 x i64> %wide.load119.a, %broadcast.splat116
  %i.fe = sub <2 x i64> %wide.load120, %broadcast.splat116
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !15
  store <2 x i64> %i.fe, ptr %i.fc, align 8, !tbaa !15
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ff, label %middle.block122, label %vector.body117, !llvm.loop !48

middle.block122:                                  ; preds = %vector.body117
  br i1 %cmp.n123, label %stradjust.exit.i, label %.lr.ph.split.us.i.i.preheader143

.lr.ph.split.us.i.i.preheader143:                 ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block122
  %.046.us.i.i.ph = phi i64 [ 1, %.lr.ph.split.us.i.i.preheader ], [ %i.dn, %middle.block122 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader143, %.lr.ph.split.us.i.i
  %.046.us.i.i = phi i64 [ %.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.046.us.i.i.ph, %.lr.ph.split.us.i.i.preheader143 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i.i ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !15
  %i.fi = sub i64 %i.fh, %i.et
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !15
  %.0.us.i.i = add nuw i64 %.046.us.i.i, 1
  %exitcond48.not.i.i = icmp eq i64 %.046.us.i.i, %.028
  br i1 %exitcond48.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !49

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader144, %.lr.ph.split.i.i
  %.046.i.i = phi i64 [ %.0.i.i, %.lr.ph.split.i.i ], [ %.046.i.i.ph, %.lr.ph.split.i.i.preheader144 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.i.i ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !15
  %i.fl = add i64 %i.fk, %i.et
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !15
  %.0.i.i = add nuw i64 %.046.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.046.i.i, %.028
  br i1 %exitcond.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.i.i, !llvm.loop !50

stradjust.exit.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %middle.block136, %middle.block122, %bb.e
  %i.fm = load i64, ptr %.01533, align 8, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fm
  store i8 %i.dy, ptr %i.fn, align 1, !tbaa !32
  %i.fo = load i64, ptr %i.dv, align 8, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fo
  %i.fq = add nuw nsw i64 %i.ek, 1
  call void @MoveMemory(ptr noundef nonnull %.034, ptr noundef nonnull %i.fp, i64 noundef %i.fq) #11
  %i.fr = load i8, ptr %i.a, align 16, !tbaa !32  ; 5 uses
  %i.fs = zext i8 %i.fr to i32
  %i.ft = load i64, ptr %i.dv, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ft ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !32
  %i.fw = zext i8 %i.fv to i32
  %i.fx = sub nsw i32 %i.fs, %i.fw                ; 2 uses
  %i.fy = call i32 @llvm.abs.i32(i32 %i.fx, i1 true)
  %i.fz = icmp eq i64 %.156.i, %.028
  br i1 %i.fz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %stradjust.exit.i
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !32
  %.pre60.i = zext i8 %i.fr to i64
  br label %stradjust.exit49.i

bb.g:                                             ; preds = %stradjust.exit.i
  %i.ga = load i64, ptr %i.dp, align 8, !tbaa !15 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !32
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !15 ; 2 uses
  %i.gg = add i64 %i.ga, 1
  %i.gh = add i64 %i.gg, %i.gd
  %i.gi = sub i64 %i.gh, %i.gf
  %i.gj = zext i8 %i.fr to i64                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %.034, i64 %i.gf
  call void @MoveMemory(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.gm, i64 noundef %i.gi) #11
  %.045.i.i = add i64 %.156.i, 1                  ; 7 uses
  %i.gn = icmp ult i64 %.045.i.i, %i.u
  br i1 %i.gn, label %.lr.ph.i40.i, label %._crit_edge.i39.i

.lr.ph.i40.i:                                     ; preds = %bb.g
  %i.go = icmp slt i32 %i.fx, 0
  %i.gp = zext nneg i32 %i.fy to i64              ; 4 uses
  %min.iters.check86 = icmp ult i64 %indvar83, 4  ; 2 uses
  br i1 %i.go, label %.lr.ph.split.us.i45.i.preheader, label %.lr.ph.split.i41.i.preheader

.lr.ph.split.i41.i.preheader:                     ; preds = %.lr.ph.i40.i
  br i1 %min.iters.check86, label %.lr.ph.split.i41.i.preheader141, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph.split.i41.i.preheader
  %n.vec100 = and i64 %indvar83, -4               ; 3 uses
  %i.gq = add i64 %.045.i.i, %n.vec100
  %broadcast.splatinsert101 = insertelement <2 x i64> poison, i64 %i.gp, i64 0
  %broadcast.splat102 = shufflevector <2 x i64> %broadcast.splatinsert101, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.045.i.i
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph99
  %index104 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body103 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index104 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %wide.load105.a = load <2 x i64>, ptr %i.gs, align 8, !tbaa !15
  %wide.load106 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !15
  %i.gu = add <2 x i64> %wide.load105.a, %broadcast.splat102
  %i.gv = add <2 x i64> %wide.load106, %broadcast.splat102
  store <2 x i64> %i.gu, ptr %i.gs, align 8, !tbaa !15
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !tbaa !15
  %index.next107 = add nuw i64 %index104, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.gw, label %middle.block108, label %vector.body103, !llvm.loop !51

middle.block108:                                  ; preds = %vector.body103
  %cmp.n109 = icmp eq i64 %indvar83, %n.vec100
  br i1 %cmp.n109, label %._crit_edge.i39.i, label %.lr.ph.split.i41.i.preheader141

.lr.ph.split.i41.i.preheader141:                  ; preds = %.lr.ph.split.i41.i.preheader, %middle.block108
  %.046.i42.i.ph = phi i64 [ %.045.i.i, %.lr.ph.split.i41.i.preheader ], [ %i.gq, %middle.block108 ]
  br label %.lr.ph.split.i41.i

.lr.ph.split.us.i45.i.preheader:                  ; preds = %.lr.ph.i40.i
  br i1 %min.iters.check86, label %.lr.ph.split.us.i45.i.preheader140, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.split.us.i45.i.preheader
  %n.vec88 = and i64 %indvar83, -4                ; 3 uses
  %i.gx = add i64 %.045.i.i, %n.vec88
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.045.i.i
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body89 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %index90 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load91.a = load <2 x i64>, ptr %i.gz, align 8, !tbaa !15
  %wide.load92 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !15
  %i.hb = sub <2 x i64> %wide.load91.a, %broadcast.splat
  %i.hc = sub <2 x i64> %wide.load92, %broadcast.splat
  store <2 x i64> %i.hb, ptr %i.gz, align 8, !tbaa !15
  store <2 x i64> %i.hc, ptr %i.ha, align 8, !tbaa !15
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.hd = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.hd, label %middle.block94, label %vector.body89, !llvm.loop !52

middle.block94:                                   ; preds = %vector.body89
  %cmp.n95 = icmp eq i64 %indvar83, %n.vec88
  br i1 %cmp.n95, label %._crit_edge.i39.i, label %.lr.ph.split.us.i45.i.preheader140

.lr.ph.split.us.i45.i.preheader140:               ; preds = %.lr.ph.split.us.i45.i.preheader, %middle.block94
  %.046.us.i46.i.ph = phi i64 [ %.045.i.i, %.lr.ph.split.us.i45.i.preheader ], [ %i.gx, %middle.block94 ]
  br label %.lr.ph.split.us.i45.i

.lr.ph.split.us.i45.i:                            ; preds = %.lr.ph.split.us.i45.i.preheader140, %.lr.ph.split.us.i45.i
  %.046.us.i46.i = phi i64 [ %.0.us.i47.i, %.lr.ph.split.us.i45.i ], [ %.046.us.i46.i.ph, %.lr.ph.split.us.i45.i.preheader140 ] ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i46.i ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !15
  %i.hg = sub i64 %i.hf, %i.gp
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !15
  %.0.us.i47.i = add nuw i64 %.046.us.i46.i, 1
  %exitcond48.not.i48.i = icmp eq i64 %.046.us.i46.i, %.028
  br i1 %exitcond48.not.i48.i, label %._crit_edge.i39.i, label %.lr.ph.split.us.i45.i, !llvm.loop !53

.lr.ph.split.i41.i:                               ; preds = %.lr.ph.split.i41.i.preheader141, %.lr.ph.split.i41.i
  %.046.i42.i = phi i64 [ %.0.i43.i, %.lr.ph.split.i41.i ], [ %.046.i42.i.ph, %.lr.ph.split.i41.i.preheader141 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.i42.i ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !15
  %i.hj = add i64 %i.hi, %i.gp
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !15
  %.0.i43.i = add nuw i64 %.046.i42.i, 1
  %exitcond.not.i44.i = icmp eq i64 %.046.i42.i, %.028
  br i1 %exitcond.not.i44.i, label %._crit_edge.i39.i, label %.lr.ph.split.i41.i, !llvm.loop !54

._crit_edge.i39.i:                                ; preds = %.lr.ph.split.i41.i, %.lr.ph.split.us.i45.i, %middle.block108, %middle.block94, %bb.g
  %i.hk = load i64, ptr %i.dv, align 8, !tbaa !15
  %i.hl = getelementptr inbounds nuw i8, ptr %.034, i64 %i.hk
  store i8 %i.fr, ptr %i.hl, align 1, !tbaa !32
  br label %stradjust.exit49.i

stradjust.exit49.i:                               ; preds = %._crit_edge.i39.i, %bb.f
  %.pre-phi61.i = phi i64 [ %.pre60.i, %bb.f ], [ %i.gj, %._crit_edge.i39.i ]
  %i.hm = load i64, ptr %i.dv, align 8, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %.034, i64 %i.hm
  %i.ho = add nuw nsw i64 %.pre-phi61.i, 1
  call void @MoveMemory(ptr noundef nonnull %i.hn, ptr noundef nonnull %i.a, i64 noundef %i.ho) #11
  %i.hp = add i64 %.156.i, -1                     ; 2 uses
  %.not38.i = icmp eq i64 %i.hp, 0
  %indvar.next84 = add i64 %indvar83, 1
  br i1 %.not38.i, label %StrHeapSort.exit.loopexit, label %bb.e, !llvm.loop !55

StrHeapSort.exit.loopexit:                        ; preds = %stradjust.exit49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.hq = getelementptr i8, ptr %.034, i64 %2
  %i.hr = getelementptr i8, ptr %i.hq, i64 100
  %i.hs = add nuw nsw i32 %.01632, 1              ; 2 uses
  %exitcond43.not = icmp eq i32 %i.hs, %1
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !56

._crit_edge:                                      ; preds = %StrHeapSort.exit.loopexit, %.lr.ph, %LoadStringArray.exit
  %i.ht = phi i64 [ %i.dj, %.lr.ph ], [ %i.di, %LoadStringArray.exit ], [ %i.dj, %StrHeapSort.exit.loopexit ]
  %i.hu = call i64 @StopStopwatch(i64 noundef %i.ht) #11
  call void @FreeMemory(ptr noundef %i.ba, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i64 %i.hu
}

; Function Attrs: nounwind uwtable
define dso_local void @DoBitops() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr @global_bitopstruct, align 8, !tbaa !57
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !59
  %i.f = shl i64 %i.e, 3
  %i.g = call ptr @AllocateMemory(i64 noundef %i.f, ptr noundef nonnull %i.b) #11 ; 5 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %.not39 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %.not39, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.h) #11
  call void (...) @ErrorExit() #11
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.g
  %storemerge = phi i64 [ %i.r, %bb.g ], [ 30, %.preheader ] ; 2 uses
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !60
  %i.i = shl i64 %storemerge, 4
  %i.j = call ptr @AllocateMemory(i64 noundef %i.i, ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.k) #11
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !60
  %i.m = call fastcc i64 @DoBitfieldIteration(ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.l, ptr noundef %i.a)
  %sext = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @FreeMemory(ptr noundef %i.j, ptr noundef nonnull %i.b) #11
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !60
  %i.r = add i64 %i.q, 100
  br label %bb.d

bb.h:                                             ; preds = %bb.a
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.h) #11
  call void (...) @ErrorExit() #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !60
  %i.t = shl i64 %i.s, 4
  %i.u = call ptr @AllocateMemory(i64 noundef %i.t, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.v) #11
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.j, %bb.k
  %.031 = phi ptr [ %i.u, %bb.j ], [ %i.u, %bb.k ], [ %i.j, %bb.f ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit
  %.030 = phi i64 [ 0, %.loopexit ], [ %i.y, %bb.l ]
  %.0 = phi double [ 0.000000e+00, %.loopexit ], [ %i.ab, %bb.l ]
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !60
  %i.x = call fastcc i64 @DoBitfieldIteration(ptr noundef %i.g, ptr noundef %.031, i64 noundef %i.w, ptr noundef %i.a)
  %i.y = add i64 %i.x, %.030                      ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !15
  %i.aa = uitofp i64 %i.z to double
  %i.ab = fadd double %.0, %i.aa                  ; 3 uses
  %i.ac = fcmp olt double %i.ab, 1.250000e+06
  br i1 %i.ac, label %bb.l, label %bb.m, !llvm.loop !61

bb.m:                                             ; preds = %bb.l
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %.031, ptr noundef nonnull %i.b) #11
  %i.ad = call double @TicksToFracSecs(i64 noundef %i.y) #11
  %i.ae = fdiv double %i.ab, %i.ad
  store double %i.ae, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 16), align 8, !tbaa !62
  %i.af = load i32, ptr @global_bitopstruct, align 8, !tbaa !57
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr @global_bitopstruct, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoBitfieldIteration(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !15
  %i.a = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !59
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.050
  store i64 6148914691236517205, ptr %i.c, align 8, !tbaa !15
  %i.d = add nuw nsw i64 %.050, 1                 ; 2 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !59
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %._crit_edge, %.lr.ph53
  %.151 = phi i64 [ %i.s, %.lr.ph53 ], [ 0, %._crit_edge ] ; 3 uses
  %i.i = tail call i32 @abs_randwc(i32 noundef 262140) #11 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.151
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.151 ; 2 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !15
  %i.m = sub i32 262140, %i.i
  %i.n = tail call i32 @abs_randwc(i32 noundef %i.m) #11
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !15
  %i.q = load i64, ptr %3, align 8, !tbaa !15
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %3, align 8, !tbaa !15
  %i.s = add nuw nsw i64 %.151, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %.lr.ph57.preheader, label %.lr.ph53, !llvm.loop !64

._crit_edge54:                                    ; preds = %._crit_edge
  %i.t = tail call i64 (...) @StartStopwatch() #11
  br label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %.lr.ph53
  %i.u = tail call i64 (...) @StartStopwatch() #11
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %ToggleBitRun.exit
  %.255 = phi i64 [ %i.da, %ToggleBitRun.exit ], [ 0, %.lr.ph57.preheader ] ; 4 uses
  %i.v = urem i64 %.255, 3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.255 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15   ; 13 uses
  %.not12.i = icmp eq i64 %i.z, 0                 ; 3 uses
  switch i64 %i.v, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph57
  br i1 %.not12.i, label %ToggleBitRun.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !15  ; 4 uses
  %xtraiter74 = and i64 %i.z, 1
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.i
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = lshr i64 %i.aa, 6
  %i.ad = and i64 %i.aa, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 2 uses
end_hunk_0
