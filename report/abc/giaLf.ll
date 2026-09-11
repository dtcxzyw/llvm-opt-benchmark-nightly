Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaLf?download=true
inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Lf_ManComputeCrossCut:bb.a
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph99.split, %bb.e, %bb.d
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %.lr.ph104, label %.lr.ph99.split, !llvm.loop !160

.lr.ph104:                                        ; preds = %bb.f, %.lr.ph99
  %i.au = getelementptr i8, ptr %0, i64 32
  %.val75 = load ptr, ptr %i.au, align 8, !tbaa !54 ; 2 uses
  %.not57 = icmp eq ptr %.val75, null
  br i1 %.not57, label %.critedge6, label %.lr.ph104.split.preheader

.lr.ph104.split.preheader:                        ; preds = %.lr.ph104
  %wide.trip.count123 = zext nneg i32 %i.b to i64
  br label %.lr.ph104.split

.lr.ph104.split:                                  ; preds = %.lr.ph104.split.preheader, %bb.k
  %indvars.iv120 = phi i64 [ 0, %.lr.ph104.split.preheader ], [ %indvars.iv.next121, %bb.k ] ; 2 uses
  %.0103 = phi i32 [ 0, %.lr.ph104.split.preheader ], [ %.3, %bb.k ] ; 2 uses
  %.046102 = phi i32 [ 0, %.lr.ph104.split.preheader ], [ %.248, %bb.k ] ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.val75, i64 %indvars.iv120 ; 4 uses
  %.val70 = load i64, ptr %i.av, align 4          ; 3 uses
  %i.aw = and i64 %.val70, 2147483648
  %.not.i82 = icmp ne i64 %i.aw, 0
  %i.ax = and i64 %.val70, 536870911              ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 536870911
  %narrow.i83.not = or i1 %.not.i82, %i.ay
  br i1 %narrow.i83.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph104.split
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !60
  %.not61 = icmp ne i32 %i.ba, 0
  %i.bb = zext i1 %.not61 to i32
  %spec.select = add nsw i32 %.0103, %i.bb        ; 3 uses
  %.147 = tail call i32 @llvm.smax.i32(i32 %.046102, i32 %spec.select) ; 2 uses
  %i.bc = sub nsw i64 0, %i.ax
  %i.bd = getelementptr inbounds [12 x i8], ptr %i.av, i64 %i.bc ; 2 uses
  %.val69 = load i64, ptr %i.bd, align 4          ; 2 uses
  %i.be = and i64 %.val69, 2147483648
  %.not.i84 = icmp ne i64 %i.be, 0
  %i.bf = and i64 %.val69, 536870911
  %i.bg = icmp eq i64 %i.bf, 536870911
  %narrow.i85.not = or i1 %.not.i84, %i.bg
  br i1 %narrow.i85.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !60
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !60
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = sext i1 %i.bk to i32
  %spec.select67 = add nsw i32 %spec.select, %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %spec.select, %bb.g ], [ %spec.select67, %bb.h ] ; 2 uses
  %i.bm = lshr i64 %.val70, 32
  %i.bn = and i64 %i.bm, 536870911
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [12 x i8], ptr %i.av, i64 %i.bo ; 2 uses
  %.val = load i64, ptr %i.bp, align 4            ; 2 uses
  %i.bq = and i64 %.val, 2147483648
  %.not.i86 = icmp ne i64 %i.bq, 0
  %i.br = and i64 %.val, 536870911
  %i.bs = icmp eq i64 %i.br, 536870911
  %narrow.i87.not = or i1 %.not.i86, %i.bs
  br i1 %narrow.i87.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !60
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !60
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = sext i1 %i.bw to i32
  %spec.select68 = add nsw i32 %.2, %i.bx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph104.split, %bb.i
  %.248 = phi i32 [ %.046102, %.lr.ph104.split ], [ %.147, %bb.j ], [ %.147, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %.0103, %.lr.ph104.split ], [ %spec.select68, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.critedge4, label %.lr.ph104.split, !llvm.loop !161

.critedge4:                                       ; preds = %bb.k
  %i.by = icmp eq i32 %.3, 0
  br i1 %i.by, label %.critedge6, label %bb.l

bb.l:                                             ; preds = %.critedge4
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge4, %bb.l, %.lr.ph104, %bb.a
  %.046.lcssa131134 = phi i32 [ 0, %.lr.ph104 ], [ 0, %bb.a ], [ %.248, %.critedge4 ], [ %.248, %bb.l ] ; 2 uses
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.046.lcssa131134) ; 0 uses
  ret i32 %.046.lcssa131134
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @Lf_ManTtIsMux(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = trunc i64 %0 to i32
  switch i32 %i.a, label %bb.b [
    i32 454761243, label %bb.c
    i32 -1313754703, label %bb.c
    i32 1313754702, label %bb.c
    i32 -454761244, label %bb.c
    i32 656877351, label %bb.c
    i32 1920103026, label %bb.c
    i32 -1920103027, label %bb.c
    i32 -656877352, label %bb.c
    i32 488447261, label %bb.c
    i32 -774778415, label %bb.c
    i32 774778414, label %bb.c
    i32 -488447262, label %bb.c
    i32 1195853639, label %bb.c
    i32 1953789044, label %bb.c
    i32 -1953789045, label %bb.c
    i32 -1195853640, label %bb.c
    i32 1397969747, label %bb.c
    i32 -1549556829, label %bb.c
    i32 1549556828, label %bb.c
    i32 -1397969748, label %bb.c
    i32 892679477, label %bb.c
    i32 976894522, label %bb.c
    i32 -976894523, label %bb.c
    i32 -892679478, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.05 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.05
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Lf_ManAnalyzeCoDrivers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val29 = load i32, ptr %i.a, align 8, !tbaa !58 ; 6 uses
  %i.b = add i32 %.val29, -1
  %or.cond.i.i = icmp ult i32 %i.b, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val29 ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntStart.exit, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i.i to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #33 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.f = sext i32 %.val29 to i64
  %i.g = shl nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.g, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %bb.a, %Vec_IntAlloc.exit.i, %bb.b
  %i.h = phi ptr [ %i.e, %bb.b ], [ null, %Vec_IntAlloc.exit.i ], [ null, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4        ; 2 uses
  %.val3138 = load i32, ptr %i.k, align 4, !tbaa !64
  %i.l = icmp sgt i32 %.val3138, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val32 = load ptr, ptr %i.m, align 8, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %.val32, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %.val33.val = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val31 = load i32, ptr %i.k, align 4, !tbaa !64
  %i.o = sext i32 %.val31 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val33.val, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [12 x i8], ptr %.val32, i64 %i.r
  %.val34 = load i64, ptr %i.s, align 4
  %i.t = trunc i64 %.val34 to i32                 ; 2 uses
  %3 = and i32 %i.t, 536870912
  %.not28 = icmp eq i32 %3, 0
  %4 = select i1 %.not28, i32 1, i32 2
  %i.u = and i32 %i.t, 536870911
  %i.v = sub nsw i32 %i.q, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57
  %i.z = or i32 %4, %i.y
  store i32 %i.z, ptr %i.x, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.aa, label %bb.c, label %.critedge, !llvm.loop !162

.critedge:                                        ; preds = %bb.c, %.lr.ph, %Vec_IntStart.exit
  %i.ab = icmp sgt i32 %.val29, 0
  br i1 %i.ab, label %.lr.ph44, label %.critedge2

.lr.ph44:                                         ; preds = %.critedge
  %wide.trip.count = zext nneg i32 %.val29 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val29, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !57 ; 2 uses
  %wide.load65 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !57 ; 2 uses
  %i.ae = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.af = icmp ne <4 x i32> %wide.load65, zeroinitializer
  %i.ag = zext <4 x i1> %i.ae to <4 x i32>
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = add <4 x i32> %vec.phi63, %i.ag         ; 2 uses
  %i.aj = add <4 x i32> %vec.phi64, %i.ah         ; 2 uses
  %i.ak = icmp eq <4 x i32> %wide.load, splat (i32 3)
  %i.al = icmp eq <4 x i32> %wide.load65, splat (i32 3)
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = zext <4 x i1> %i.al to <4 x i32>
  %i.ao = add <4 x i32> %vec.phi, %i.am           ; 2 uses
  %i.ap = add <4 x i32> %vec.phi62, %i.an         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx66 = add <4 x i32> %i.aj, %i.ai
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge2.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph44, %middle.block
  %indvars.iv48.ph = phi i64 [ 0, %.lr.ph44 ], [ %n.vec, %middle.block ]
  %.043.ph = phi i32 [ 0, %.lr.ph44 ], [ %i.ar, %middle.block ]
  %.02542.ph = phi i32 [ 0, %.lr.ph44 ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %scalar.ph ], [ %indvars.iv48.ph, %scalar.ph.preheader ] ; 2 uses
  %.043 = phi i32 [ %i.ba, %scalar.ph ], [ %.043.ph, %scalar.ph.preheader ]
  %.02542 = phi i32 [ %i.ax, %scalar.ph ], [ %.02542.ph, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv48
  %i.au = load i32, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = add nuw nsw i32 %.02542, %i.aw          ; 2 uses
  %i.ay = icmp eq i32 %i.au, 3
  %i.az = zext i1 %i.ay to i32
  %i.ba = add nuw nsw i32 %.043, %i.az            ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2.thread, label %scalar.ph, !llvm.loop !164

.critedge2:                                       ; preds = %.critedge
  %.not.i37 = icmp eq ptr %i.h, null
  br i1 %.not.i37, label %Vec_IntFree.exit, label %.critedge2.thread

.critedge2.thread:                                ; preds = %scalar.ph, %middle.block, %.critedge2
  %.0.lcssa58 = phi i32 [ 0, %.critedge2 ], [ %i.ar, %middle.block ], [ %i.ba, %scalar.ph ]
  %.025.lcssa56 = phi i32 [ 0, %.critedge2 ], [ %i.as, %middle.block ], [ %i.ax, %scalar.ph ]
  tail call void @free(ptr noundef nonnull %i.h) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %.critedge2.thread
  %.0.lcssa59 = phi i32 [ 0, %.critedge2 ], [ %.0.lcssa58, %.critedge2.thread ]
  %.025.lcssa57 = phi i32 [ 0, %.critedge2 ], [ %.025.lcssa56, %.critedge2.thread ]
  store i32 %.025.lcssa57, ptr %1, align 4, !tbaa !57
  store i32 %.0.lcssa59, ptr %2, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define void @Lf_ManComputeSwitching(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @Gia_ManComputeSwitchProbs(ptr noundef %0, i32 noundef 48, i32 noundef 16, i32 noundef 0) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !68
  tail call void @free(ptr noundef %i.a) #34
  ret void
}

declare ptr @Gia_ManComputeSwitchProbs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define float @Lf_CutRef_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [10 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = lshr i32 %i.c, 24                        ; 6 uses
  %i.e = icmp ugt i32 %i.c, 33554431
  %i.f = and i32 %i.c, 8388608
  %.not.i = icmp eq i32 %i.f, 0
  %or.cond.i = and i1 %i.e, %.not.i
  br i1 %or.cond.i, label %bb.b, label %Lf_CutArea.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %.not17.i = icmp eq i32 %i.j, 0
  br i1 %.not17.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %Lf_CutSwitches.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 256
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !72 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.m = icmp ult i32 %i.c, 67108864
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 252
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.d ] ; 5 uses
  %.078.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.new ], [ %i.an, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !73
  %i.s = fadd float %.078.i.i, %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !73
  %i.z = fadd float %i.s, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !57
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !73
  %i.ag = fadd float %i.z, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !73
  %i.an = fadd float %i.ag, %i.am                 ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Lf_CutSwitches.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !0

Lf_CutSwitches.exit.i.loopexit.unr-lcssa:         ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Lf_CutSwitches.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %Lf_CutSwitches.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %Lf_CutSwitches.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.an, %Lf_CutSwitches.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.e ] ; 2 uses
  %.078.i.i.epil = phi float [ %.078.i.i.epil.init, %.epil.preheader ], [ %i.at, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
end_hunk_0
