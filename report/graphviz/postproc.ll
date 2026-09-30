Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/postproc?download=true
inline.NumInlined: 63
inline.NumDeleted: 24
begin_hunk_0_@agxbprint:bb.a

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.155.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef readonly %1, ptr noundef nonnull %3) #16 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !64 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.155.i, label %agxbnext.exit49.i, label %bb.l

agxbnext.exit49.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit49.i, %bb.k
  %i.aa = phi i8 [ %.pre.i, %agxbnext.exit49.i ], [ %.val.i, %bb.k ]
  %i.ab = trunc i32 %i.v to i8
  %i.ac = add i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.e, align 1, !tbaa !64
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !64
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %vagxbprint.exit

vagxbprint.exit:                                  ; preds = %bb.a, %bb.n
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

declare hidden i64 @gv_list_prepend_slot_(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @dotneato_postprocess(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @gv_postprocess(ptr noundef %0, i32 noundef 1)
  ret void
}

declare ptr @agroot(ptr noundef) local_unnamed_addr #5

declare { double, double } @ccwrotatepf(double, double, i32 noundef) local_unnamed_addr #5

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #5

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @countClusterLabels(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agroot(ptr noundef %0) #16
  %.not = icmp eq ptr %0, %i.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 3 uses
  br i1 %.not, label %._crit_edge20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not14 = icmp eq ptr %i.c, null
  br i1 %.not14, label %._crit_edge20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  %i.e = load i8, ptr %i.d, align 1, !tbaa !44, !range !45, !noundef !46
  %spec.select = zext nneg i8 %i.e to i64
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.a, %bb.c, %bb.b
  %.011 = phi i64 [ 0, %bb.b ], [ %spec.select, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 236
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %.not1516 = icmp slt i32 %i.h, 1
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge20
  %.1.lcssa = phi i64 [ %.011, %._crit_edge20 ], [ %i.o, %.lr.ph ]
  ret i64 %.1.lcssa

.lr.ph:                                           ; preds = %._crit_edge20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %._crit_edge20 ] ; 3 uses
  %i.i = phi ptr [ %i.p, %.lr.ph ], [ %.pre, %._crit_edge20 ]
  %.117 = phi i64 [ %i.o, %.lr.ph ], [ %.011, %._crit_edge20 ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call fastcc i64 @countClusterLabels(ptr noundef %i.m)
  %i.o = add i64 %i.n, %.117                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 236
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = sext i32 %i.r to i64
  %.not15.not = icmp slt i64 %indvars.iv, %i.s
  br i1 %.not15.not, label %.lr.ph, label %._crit_edge, !llvm.loop !143
}

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #5

declare { double, double } @edgeMidpoint(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @addClusterObj(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef byval(%struct.cinfo_t) align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cinfo_t, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.not17 = icmp slt i32 %i.d, 1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  call fastcc void @addClusterObj(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %i.i, ptr noundef nonnull byval(%struct.cinfo_t) align 8 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %i.m = sext i32 %i.l to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.m
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = tail call ptr @agroot(ptr noundef nonnull %1) #16
  %.not11 = icmp eq ptr %1, %i.n
  br i1 %.not11, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 5 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 105
  %i.s = load i8, ptr %i.r, align 1, !tbaa !44, !range !45, !noundef !46
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60   ; 6 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i8, ptr @Flip, align 1, !tbaa !42, !range !45, !noalias !147, !noundef !46
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %..i = select i1 %i.x, ptr %i.z, ptr %i.y
  %.23.i = select i1 %i.x, ptr %i.y, ptr %i.z
  %.sink.i = load double, ptr %.23.i, align 8, !tbaa !15, !noalias !147 ; 2 uses
  %.sink22.i = load double, ptr %..i, align 8, !tbaa !15, !noalias !147 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store double %.sink22.i, ptr %i.aa, align 8, !tbaa !51, !noalias !147
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %.sink.i, ptr %i.ab, align 8, !tbaa !52, !noalias !147
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !49, !noalias !147
  %i.ad = insertelement <2 x double> poison, double %.sink22.i, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %.sink.i, i64 1 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, splat (double 5.000000e-01)
  %i.ag = load <2 x double>, ptr %i.v, align 8, !tbaa !15, !noalias !147
  %i.ah = fsub <2 x double> %i.ag, %i.af          ; 4 uses
  store <2 x double> %i.ah, ptr %i.v, align 8, !tbaa !15, !noalias !147
  %4 = load <2 x double>, ptr %2, align 8         ; 2 uses
  %i.ai = fcmp olt <2 x double> %4, %i.ah
  %i.aj = select <2 x i1> %i.ai, <2 x double> %4, <2 x double> %i.ah
  store <2 x double> %i.aj, ptr %2, align 8, !tbaa !15
  %i.ak = load <2 x double>, ptr %.sroa.515.0..sroa_idx, align 8 ; 2 uses
  %i.al = fadd <2 x double> %i.ae, %i.ah          ; 2 uses
  %i.am = fcmp ogt <2 x double> %i.ak, %i.al
  %i.an = select <2 x i1> %i.am, <2 x double> %i.ak, <2 x double> %i.al
  store <2 x double> %i.an, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !61
  ret void
}

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @late_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @placeLabels(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @printData(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !63, !range !45, !noundef !46
  %i.d = zext nneg i8 %i.c to i32
  %i.e = load double, ptr %4, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !151
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !153
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.13, i64 noundef %1, i64 noundef %3, i32 noundef %i.d, double noundef %i.e, double noundef %i.g, double noundef %i.i, double noundef %i.k) #18 ; 0 uses
  %i.m = load i8, ptr @Verbose, align 1, !tbaa !64
  %i.n = icmp ult i8 %i.m, 2
  br i1 %i.n, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.14, i64 8, i64 1, ptr %i.o) #20 ; 0 uses
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 8, i64 1, ptr %i.p) #20 ; 0 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.03137 = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.03236 = phi ptr [ %i.af, %bb.d ], [ %0, %bb.b ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03236, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 3 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.t = load double, ptr %.03236, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %.03236, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !155
  %i.w = getelementptr inbounds nuw i8, ptr %.03236, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %.03236, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !52
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ @.str.16, %.lr.ph ]
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i64 noundef %.03137, double noundef %i.t, double noundef %i.v, double noundef %i.x, double noundef %i.z, ptr noundef %i.r, ptr noundef %i.ad) #18 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03236, i64 40
  %i.ag = add nuw i64 %.03137, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !148

bb.e:                                             ; preds = %._crit_edge, %bb.e
  %.039 = phi i64 [ 0, %._crit_edge ], [ %i.ax, %bb.e ] ; 2 uses
  %.03338 = phi ptr [ %2, %._crit_edge ], [ %i.aw, %bb.e ] ; 8 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %.03338, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !55
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.03338, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !156
  %i.an = getelementptr inbounds nuw i8, ptr %.03338, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !157
  %i.ap = load double, ptr %.03338, align 8, !tbaa !158
  %i.aq = getelementptr inbounds nuw i8, ptr %.03338, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !159
  %i.as = getelementptr inbounds nuw i8, ptr %.03338, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.18, i64 noundef %.039, ptr noundef nonnull %.03338, i32 noundef %i.ak, double noundef %i.am, double noundef %i.ao, double noundef %i.ap, double noundef %i.ar, ptr noundef %i.au) #18 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.03338, i64 48
  %i.ax = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond41.not = icmp eq i64 %i.ax, %3
  br i1 %exitcond41.not, label %.loopexit, label %bb.e, !llvm.loop !149

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

declare void @updateBB(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #8 {
bb.a:
  tail call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare ptr @getsplinepoints(ptr noundef) local_unnamed_addr #5

declare void @gv_nodesize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #5

declare ptr @agnameof(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483646, 2147483649) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !64 ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit, label %bb.g

agxbsizeof.exit:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %.fr = freeze i64 %i.c                          ; 6 uses
  %i.d = icmp eq i64 %.fr, 0
  %i.e = shl i64 %.fr, 1
  %spec.select45 = select i1 %i.d, i64 8192, i64 %i.e
  %i.f = add i64 %.fr, %1
  %spec.select34 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %spec.select45) ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.h = icmp eq i64 %spec.select34, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %agxbsizeof.exit
  tail call void @free(ptr noundef %i.g) #16
  br label %gv_recalloc.exit

bb.c:                                             ; preds = %agxbsizeof.exit
  %i.i = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %spec.select34) #22 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.12, i64 noundef %spec.select34) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %spec.select34, %.fr
  br i1 %i.m, label %bb.f, label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.fr
  %i.o = sub nuw i64 %spec.select34, %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add nsw i64 %1, 31
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.p, i64 62) ; 3 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #17 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %gv_calloc.exit
end_hunk_0
