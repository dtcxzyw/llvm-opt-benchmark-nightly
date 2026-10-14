Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cnfWrite?download=true
inline.NumInlined: 177
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Cnf_ManWriteCnfMapping:bb.a
  %i.z = load i8, ptr %.val27, align 8, !tbaa !44 ; 3 uses
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !36  ; 7 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !34
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp slt i32 %i.ad, 16
  br i1 %i.ag, label %Vec_IntGrow.exit11.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.ad, 1073741823
  %i.ai = shl nuw nsw i32 %i.ad, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ad, %spec.select.i
  br i1 %.not.i9.i, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.d, %bb.f
  %.sink = phi i64 [ %i.ak, %bb.f ], [ 64, %bb.d ]
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.f ], [ 16, %bb.d ]
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %.sink) #14 ; 2 uses
  store ptr %i.al, ptr %i.q, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %i.d, align 8, !tbaa !34
  %.pre = load i8, ptr %.val27, align 8, !tbaa !44
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.e, %Vec_IntGrow.exit11.sink.split.i
  %i.am = phi i8 [ %i.z, %bb.c ], [ %i.z, %bb.e ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %.promoted52 = phi ptr [ %i.r, %bb.c ], [ %i.r, %bb.e ], [ %i.al, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.an = add nsw i32 %i.ad, 1
  store i32 %i.an, ptr %i.f, align 4, !tbaa !36
  %i.ao = sext i32 %i.ad to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.promoted52, i64 %i.ao
  store i32 %i.ac, ptr %i.ap, align 4, !tbaa !41
  %i.aq = icmp sgt i8 %i.am, 0
  br i1 %i.aq, label %.lr.ph, label %.lr.ph56

.lr.ph:                                           ; preds = %Vec_IntPush.exit
  %.promoted = load i32, ptr %i.f, align 4, !tbaa !36
  %.promoted49 = load i32, ptr %i.d, align 8, !tbaa !34
  %i.ar = sext i32 %.promoted to i64
  br label %bb.g

.preheader:                                       ; preds = %Vec_IntPush.exit37
  %i.as = trunc nuw nsw i64 %indvars.iv.next72 to i32
  %i.at = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.at, ptr %i.f, align 4, !tbaa !36
  store i32 %spec.select.sink.i3450, ptr %i.d, align 8
  store ptr %storemerge4754, ptr %i.q, align 8
  %i.au = icmp samesign ult i64 %indvars.iv71, 3
  br i1 %i.au, label %.lr.ph56, label %bb.o

.lr.ph56:                                         ; preds = %Vec_IntPush.exit, %.preheader
  %.023.lcssa91 = phi i32 [ %i.as, %.preheader ], [ 0, %Vec_IntPush.exit ]
  %.promoted6290 = phi ptr [ %storemerge4754, %.preheader ], [ %.promoted52, %Vec_IntPush.exit ]
  %.promoted57 = load i32, ptr %i.f, align 4, !tbaa !36
  %.promoted59 = load i32, ptr %i.d, align 8, !tbaa !34
  %i.av = sext i32 %.promoted57 to i64
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph, %Vec_IntPush.exit37
  %indvars.iv71 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next72, %Vec_IntPush.exit37 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit37 ] ; 7 uses
  %storemerge4753 = phi ptr [ %.promoted52, %.lr.ph ], [ %storemerge4754, %Vec_IntPush.exit37 ] ; 3 uses
  %spec.select.sink.i3451 = phi i32 [ %.promoted49, %.lr.ph ], [ %spec.select.sink.i3450, %Vec_IntPush.exit37 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv71
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !41
  %i.ay = trunc nsw i64 %indvars.iv to i32
  %i.az = icmp eq i32 %spec.select.sink.i3451, %i.ay
  br i1 %i.az, label %bb.h, label %Vec_IntPush.exit37

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp slt i64 %indvars.iv, 16
  br i1 %i.ba, label %Vec_IntPush.exit37.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bc = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i30 = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 3 uses
  %i.bd = sext i32 %spec.select.i30 to i64
  %.not.i9.i31 = icmp samesign ult i64 %indvars.iv, %i.bd
  br i1 %.not.i9.i31, label %bb.j, label %Vec_IntPush.exit37

bb.j:                                             ; preds = %bb.i
  %i.be = zext nneg i32 %spec.select.i30 to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  br label %Vec_IntPush.exit37.sink.split

Vec_IntPush.exit37.sink.split:                    ; preds = %bb.h, %bb.j
  %.sink92 = phi i64 [ %i.bf, %bb.j ], [ 64, %bb.h ]
  %spec.select.sink.i3450.ph = phi i32 [ %spec.select.i30, %bb.j ], [ 16, %bb.h ]
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %storemerge4753, i64 noundef %.sink92) #14
  br label %Vec_IntPush.exit37

Vec_IntPush.exit37:                               ; preds = %Vec_IntPush.exit37.sink.split, %bb.g, %bb.i
  %storemerge4754 = phi ptr [ %storemerge4753, %bb.g ], [ %storemerge4753, %bb.i ], [ %i.bg, %Vec_IntPush.exit37.sink.split ] ; 5 uses
  %spec.select.sink.i3450 = phi i32 [ %spec.select.sink.i3451, %bb.g ], [ %spec.select.sink.i3451, %bb.i ], [ %spec.select.sink.i3450.ph, %Vec_IntPush.exit37.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %storemerge4754, i64 %indvars.iv
  store i32 %i.ax, ptr %i.bh, align 4, !tbaa !41
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 3 uses
  %i.bi = load i8, ptr %.val27, align 8, !tbaa !44
  %i.bj = sext i8 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next72, %i.bj
  br i1 %i.bk, label %bb.g, label %.preheader, !llvm.loop !66

bb.k:                                             ; preds = %.lr.ph56, %Vec_IntPush.exit45
  %indvars.iv76 = phi i64 [ %i.av, %.lr.ph56 ], [ %indvars.iv.next77, %Vec_IntPush.exit45 ] ; 7 uses
  %storemerge4663 = phi ptr [ %.promoted6290, %.lr.ph56 ], [ %storemerge4664, %Vec_IntPush.exit45 ] ; 3 uses
  %spec.select.sink.i4261 = phi i32 [ %.promoted59, %.lr.ph56 ], [ %spec.select.sink.i4260, %Vec_IntPush.exit45 ] ; 3 uses
  %.155 = phi i32 [ %.023.lcssa91, %.lr.ph56 ], [ %i.bv, %Vec_IntPush.exit45 ]
  %i.bl = trunc nsw i64 %indvars.iv76 to i32
  %i.bm = icmp eq i32 %spec.select.sink.i4261, %i.bl
  br i1 %i.bm, label %bb.l, label %Vec_IntPush.exit45

bb.l:                                             ; preds = %bb.k
  %i.bn = icmp slt i64 %indvars.iv76, 16
  br i1 %i.bn, label %Vec_IntPush.exit45.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = icmp samesign ult i64 %indvars.iv76, 1073741823
  %indvars.iv76.tr = trunc nsw i64 %indvars.iv76 to i32
  %i.bp = shl nsw i32 %indvars.iv76.tr, 1
  %spec.select.i38 = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 3 uses
  %i.bq = sext i32 %spec.select.i38 to i64
  %.not.i9.i39 = icmp samesign ult i64 %indvars.iv76, %i.bq
  br i1 %.not.i9.i39, label %bb.n, label %Vec_IntPush.exit45

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %spec.select.i38 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  br label %Vec_IntPush.exit45.sink.split

Vec_IntPush.exit45.sink.split:                    ; preds = %bb.l, %bb.n
  %.sink93 = phi i64 [ %i.bs, %bb.n ], [ 64, %bb.l ]
  %spec.select.sink.i4260.ph = phi i32 [ %spec.select.i38, %bb.n ], [ 16, %bb.l ]
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %storemerge4663, i64 noundef %.sink93) #14
  br label %Vec_IntPush.exit45

Vec_IntPush.exit45:                               ; preds = %Vec_IntPush.exit45.sink.split, %bb.k, %bb.m
  %storemerge4664 = phi ptr [ %storemerge4663, %bb.k ], [ %storemerge4663, %bb.m ], [ %i.bt, %Vec_IntPush.exit45.sink.split ] ; 4 uses
  %spec.select.sink.i4260 = phi i32 [ %spec.select.sink.i4261, %bb.k ], [ %spec.select.sink.i4261, %bb.m ], [ %spec.select.sink.i4260.ph, %Vec_IntPush.exit45.sink.split ] ; 2 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %storemerge4664, i64 %indvars.iv76
  store i32 -1, ptr %i.bu, align 4, !tbaa !41
  %i.bv = add nuw nsw i32 %.155, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, 4
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !67

._crit_edge:                                      ; preds = %Vec_IntPush.exit45
  %i.bw = trunc nsw i64 %indvars.iv.next77 to i32
  store i32 %i.bw, ptr %i.f, align 4, !tbaa !36
  store i32 %spec.select.sink.i4260, ptr %i.d, align 8
  store ptr %storemerge4664, ptr %i.q, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %.preheader
  %i.bx = phi ptr [ %storemerge4664, %._crit_edge ], [ %storemerge4754, %.preheader ]
  %i.by = add nsw i32 %.067, 5
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !32
  %i.bz = sext i32 %.val to i64
  %i.ca = icmp slt i64 %indvars.iv.next80, %i.bz
  br i1 %i.ca, label %bb.c, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.o, %Vec_IntStart.exit
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cnf_SopConvertToVector(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((4, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !39
  %3 = insertelement <4 x i8> poison, i8 %i.e, i64 0
  %4 = shufflevector <4 x i8> %3, <4 x i8> poison, <4 x i32> zeroinitializer
  %5 = sdiv <4 x i8> %4, <i8 27, i8 9, i8 3, i8 1>
  %6 = srem <4 x i8> %5, splat (i8 3)
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %8 = icmp eq <8 x i8> %7, <i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1> ; 8 uses
  %9 = extractelement <8 x i1> %8, i64 7
  %switch.select.a = select i1 %9, i32 128, i32 0
  %10 = extractelement <8 x i1> %8, i64 6
  %switch.select48.a = select i1 %10, i32 64, i32 %switch.select.a
  %11 = extractelement <8 x i1> %8, i64 5
  %switch.select54 = select i1 %11, i32 32, i32 0
  %12 = extractelement <8 x i1> %8, i64 4
  %switch.select56 = select i1 %12, i32 16, i32 %switch.select54
  %13 = extractelement <8 x i1> %8, i64 3
  %switch.select50 = select i1 %13, i32 8, i32 0
  %14 = extractelement <8 x i1> %8, i64 2
  %switch.select52 = select i1 %14, i32 4, i32 %switch.select50
  %15 = extractelement <8 x i1> %8, i64 1
  %switch.select58 = select i1 %15, i32 2, i32 0
  %16 = extractelement <8 x i1> %8, i64 0
  %switch.select60 = select i1 %16, i32 1, i32 %switch.select58
  %i.f = or disjoint i32 %switch.select56, %switch.select48.a
  %i.g = or disjoint i32 %switch.select52, %i.f
  %i.h = or disjoint i32 %switch.select60, %i.g
  %i.i = load i32, ptr %i.a, align 4, !tbaa !36   ; 7 uses
  %i.j = load i32, ptr %2, align 8, !tbaa !34
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %.preheader.preheader.Vec_IntPush.exit_crit_edge

.preheader.preheader.Vec_IntPush.exit_crit_edge:  ; preds = %.preheader.preheader
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %Vec_IntPush.exit

bb.b:                                             ; preds = %.preheader.preheader
  %i.l = icmp slt i32 %i.i, 16
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %i.i, 1073741823
  %i.q = shl nuw nsw i32 %i.i, 1
  %spec.select.i = select i1 %i.p, i32 %i.q, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.i, %spec.select.i
  %.pre31 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 3 uses
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i10.i = icmp eq ptr %.pre31, null
  %i.r = zext nneg i32 %spec.select.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @realloc(ptr noundef nonnull %.pre31, i64 noundef %i.s) #14
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #13
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %i.v = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ], [ %i.t, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ]
  store ptr %i.v, ptr %i.c, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !34
  %.pre32 = load i32, ptr %i.a, align 4, !tbaa !36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.preheader.preheader.Vec_IntPush.exit_crit_edge, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.w = phi i32 [ %i.i, %.preheader.preheader.Vec_IntPush.exit_crit_edge ], [ %i.i, %bb.f ], [ %.pre32, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.x = phi ptr [ %.pre, %.preheader.preheader.Vec_IntPush.exit_crit_edge ], [ %.pre31, %bb.f ], [ %i.v, %Vec_IntGrow.exit11.sink.split.i ]
  %i.y = add nsw i32 %i.w, 1
  store i32 %i.y, ptr %i.a, align 4, !tbaa !36
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  store i32 %i.h, ptr %i.aa, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader.preheader, !llvm.loop !69

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @Cnf_SopCountLiterals(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi31 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !39 ; 3 uses
  %wide.load32 = load <4 x i8>, ptr %i.c, align 1, !tbaa !39 ; 3 uses
  %wide.load.frozen = freeze <4 x i8> %wide.load  ; 2 uses
  %i.d = sdiv <4 x i8> %wide.load.frozen, splat (i8 3) ; 2 uses
  %i.e = mul <4 x i8> %i.d, splat (i8 3)
  %.decomposed = sub <4 x i8> %wide.load.frozen, %i.e
  %wide.load32.frozen = freeze <4 x i8> %wide.load32 ; 2 uses
  %i.f = sdiv <4 x i8> %wide.load32.frozen, splat (i8 3) ; 2 uses
  %i.g = mul <4 x i8> %i.f, splat (i8 3)
  %.decomposed36 = sub <4 x i8> %wide.load32.frozen, %i.g
  %i.h = icmp ne <4 x i8> %.decomposed, splat (i8 2)
  %i.i = icmp ne <4 x i8> %.decomposed36, splat (i8 2)
  %i.j = zext <4 x i1> %i.h to <4 x i32>
  %i.k = zext <4 x i1> %i.i to <4 x i32>
  %i.l = add <4 x i32> %vec.phi, %i.j
  %i.m = add <4 x i32> %vec.phi31, %i.k
  %i.n = srem <4 x i8> %i.d, splat (i8 3)
  %i.o = srem <4 x i8> %i.f, splat (i8 3)
  %i.p = icmp ne <4 x i8> %i.n, splat (i8 2)
  %i.q = icmp ne <4 x i8> %i.o, splat (i8 2)
  %i.r = zext <4 x i1> %i.p to <4 x i32>
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = add <4 x i32> %i.l, %i.r
  %i.u = add <4 x i32> %i.m, %i.s
  %i.v = sdiv <4 x i8> %wide.load, splat (i8 9)
  %i.w = sdiv <4 x i8> %wide.load32, splat (i8 9)
  %i.x = srem <4 x i8> %i.v, splat (i8 3)
  %i.y = srem <4 x i8> %i.w, splat (i8 3)
  %i.z = icmp ne <4 x i8> %i.x, splat (i8 2)
  %i.aa = icmp ne <4 x i8> %i.y, splat (i8 2)
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = zext <4 x i1> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %i.t, %i.ab
  %i.ae = add <4 x i32> %i.u, %i.ac
  %i.af = sdiv <4 x i8> %wide.load, splat (i8 27)
  %i.ag = sdiv <4 x i8> %wide.load32, splat (i8 27)
  %i.ah = srem <4 x i8> %i.af, splat (i8 3)
  %i.ai = srem <4 x i8> %i.ag, splat (i8 3)
  %i.aj = icmp ne <4 x i8> %i.ah, splat (i8 2)
  %i.ak = icmp ne <4 x i8> %i.ai, splat (i8 2)
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = add <4 x i32> %i.ad, %i.al              ; 2 uses
  %i.ao = add <4 x i32> %i.ae, %i.am              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01216.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.01216 = phi i32 [ %op.rdx, %.lr.ph ], [ %.01216.ph, %.lr.ph.preheader33 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39
  %i.at = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.au = shufflevector <4 x i8> %i.at, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.av = sdiv <4 x i8> %i.au, <i8 1, i8 3, i8 9, i8 27>
  %i.aw = srem <4 x i8> %i.av, splat (i8 3)
  %i.ax = icmp ne <4 x i8> %i.aw, splat (i8 2)
  %i.ay = bitcast <4 x i1> %i.ax to i4
  %i.az = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.ay)
  %i.ba = zext nneg i4 %i.az to i32
  %op.rdx = add i32 %.01216, %i.ba                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %i.aq, %middle.block ], [ %op.rdx, %.lr.ph ]
  ret i32 %.012.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Cnf_IsopCountLiterals(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 2 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph23, label %.critedge

.lr.ph23:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val16 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.us.preheader, label %.critedge

.lr.ph.us.preheader:                              ; preds = %.lr.ph23
  %wide.trip.count = zext nneg i32 %.val to i64
  %xtraiter = and i32 %1, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i32 %1, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod29 = trunc i32 %1 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
end_hunk_0
