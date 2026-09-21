Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/lstopo-ascii?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@output_ascii:bb.a
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %._crit_edge.split ], [ 0, %.preheader95.lr.ph ] ; 2 uses
  %i.gk = load i32, ptr %i.bf, align 4, !tbaa !32
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %set_color.exit, label %._crit_edge.split

.preheader:                                       ; preds = %._crit_edge.split, %bb.aj
  %i.gm = phi i32 [ %i.gh, %bb.aj ], [ %i.gy, %._crit_edge.split ]
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph112, label %._crit_edge

set_color.exit:                                   ; preds = %.preheader95, %set_color.exit
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %set_color.exit ], [ 0, %.preheader95 ] ; 2 uses
  %i.go = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv131
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %indvars.iv128
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !39
  %i.gt = call i32 @putwc(i32 noundef %i.gs, ptr noundef nonnull %i.c) #16 ; 0 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.gu = load i32, ptr %i.bf, align 4, !tbaa !32
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next129, %i.gv
  br i1 %i.gw, label %set_color.exit, label %._crit_edge.split, !llvm.loop !52

._crit_edge.split:                                ; preds = %set_color.exit, %.preheader95
  %i.gx = call i32 @putwc(i32 noundef 10, ptr noundef nonnull %i.c) #16 ; 0 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.gy = load i32, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next132, %i.gz
  br i1 %i.ha, label %.preheader95, label %.preheader, !llvm.loop !53

.lr.ph112:                                        ; preds = %.preheader, %.lr.ph112
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.lr.ph112 ], [ 0, %.preheader ] ; 2 uses
  %i.hb = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv140
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !36
  call void @free(ptr noundef %i.hd) #16
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.he = load i32, ptr %i.bk, align 8, !tbaa !33
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next141, %i.hf
  br i1 %i.hg, label %.lr.ph112, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph112, %._crit_edge100, %.preheader
  %i.hh = load ptr, ptr %i.bo, align 8, !tbaa !34
  call void @free(ptr noundef %i.hh) #16
  %i.hi = load ptr, ptr @stdout, align 8, !tbaa !23
  %.not90 = icmp eq ptr %i.c, %i.hi
  br i1 %.not90, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.hj = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge
  call void @destroy_colors(ptr noundef nonnull %0) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.b
  %.078 = phi i32 [ 0, %bb.al ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.078
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @open_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

declare i32 @setupterm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @tputs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @myputchar(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.b = tail call i32 @putwc(i32 noundef %0, ptr noundef %i.a) #16
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i32 @tgetflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @output_draw(ptr noundef) local_unnamed_addr #2

declare void @declare_colors(ptr noundef) local_unnamed_addr #2

declare void @lstopo_prepare_custom_styles(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @nl_langinfo(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @putwc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

declare void @destroy_colors(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ascii_declare_color(ptr nofree readnone captures(none) %0, ptr noundef initializes((16, 20)) %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = load i32, ptr @ascii_color_index, align 4, !tbaa !24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.f, ptr %i.g, align 8, !tbaa !27
  %.b = load i1, ptr @ascii_color_index_step, align 4
  %i.h = select i1 %.b, i32 -1, i32 1
  %i.i = add nsw i32 %i.h, %i.f
  store i32 %i.i, ptr @ascii_color_index, align 4, !tbaa !24
  %i.j = mul nsw i32 %i.a, 1001
  %i.k = sdiv i32 %i.j, 256                       ; 2 uses
  %i.l = mul nsw i32 %i.c, 1001
  %i.m = sdiv i32 %i.l, 256                       ; 2 uses
  %i.n = mul nsw i32 %i.e, 1001
  %i.o = sdiv i32 %i.n, 256                       ; 2 uses
  %i.p = load ptr, ptr @initc, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr (ptr, ...) @tparm(ptr noundef nonnull %i.p, i32 noundef %i.f, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16 ; 2 uses
  %.not30 = icmp eq ptr %i.q, null
  br i1 %.not30, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @initp, align 8, !tbaa !26 ; 2 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr (ptr, ...) @tparm(ptr noundef nonnull %i.r, i32 noundef %i.f, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 0, i32 noundef 0) #16 ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b
  %.sink = phi ptr [ %i.q, %bb.b ], [ %i.s, %bb.d ]
  %i.t = tail call i32 @tputs(ptr noundef nonnull %.sink, i32 noundef 1, ptr noundef nonnull @myputchar) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d, %bb.b
  %i.u = load ptr, ptr @default_color, align 8, !tbaa !40
  %i.v = icmp ne ptr %i.u, null
  %i.w = icmp ne i32 %i.a, 0
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  %i.x = icmp ne i32 %i.c, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.x
  %i.y = icmp ne i32 %i.e, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.y
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr @default_color, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ascii_box(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree readnone captures(none) %7, i32 %8) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 11 uses
  %i.c = shl i32 %3, 1
  %9 = udiv i32 %i.c, 10                          ; 7 uses
  %10 = shl i32 %4, 1                             ; 2 uses
  %11 = udiv i32 %10, 10                          ; 2 uses
  %12 = udiv i32 %5, 10                           ; 6 uses
  %13 = udiv i32 %6, 10
  %i.d = add nsw i32 %11, -1                      ; 3 uses
  %i.e = add nsw i32 %i.d, %9                     ; 6 uses
  %i.f = add nsw i32 %13, -1                      ; 3 uses
  %i.g = add nsw i32 %i.f, %12                    ; 6 uses
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %9, i32 noundef %12, i32 noundef 10, i32 noundef 0, ptr noundef %1)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %12, i32 noundef 6, i32 noundef 0, ptr noundef %1)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %9, i32 noundef %i.g, i32 noundef 9, i32 noundef 0, ptr noundef %1)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %i.g, i32 noundef 5, i32 noundef 0, ptr noundef %1)
  %i.h = icmp ugt i32 %i.d, 1
  br i1 %i.h, label %.lr.ph, label %.preheader65

.preheader65:                                     ; preds = %.lr.ph, %bb.a
  %i.i = icmp ugt i32 %i.f, 1
  br i1 %i.i, label %.lr.ph68, label %.preheader64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06266 = phi i32 [ %i.k, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.j = add i32 %.06266, %9                      ; 2 uses
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %i.j, i32 noundef %12, i32 noundef 12, i32 noundef 2, ptr noundef %1)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %i.j, i32 noundef %i.g, i32 noundef 12, i32 noundef 1, ptr noundef %1)
  %i.k = add nuw i32 %.06266, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.d
  br i1 %exitcond.not, label %.preheader65, label %.lr.ph, !llvm.loop !75

.preheader64:                                     ; preds = %.lr.ph68, %.preheader65
  %.172 = add nuw nsw i32 %12, 1                  ; 3 uses
  %i.l = icmp ult i32 %.172, %i.g
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader64
  %.16369 = add nuw nsw i32 %9, 1                 ; 5 uses
  %i.m = icmp ult i32 %.16369, %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not22.i = icmp eq ptr %1, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32   ; 4 uses
  br i1 %.not22.i, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %xtraiter = and i32 %11, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0        ; 2 uses
  %.not.i.us.us.prol = icmp slt i32 %.16369, %i.q
  %i.r = zext nneg i32 %.16369 to i64
  %.163.us.us.prol = add nuw nsw i32 %9, 2        ; 3 uses
  %.off = add i32 %10, -30
  %14 = icmp ult i32 %.off, 10
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.split.us.us
  %.173.us = phi i32 [ %.1.us, %..loopexit_crit_edge.split.us.us ], [ %.172, %.preheader.us.preheader ] ; 5 uses
  %i.s = sext i32 %.173.us to i64                 ; 3 uses
  %.not.i.us.us.prol.not = xor i1 %.not.i.us.us.prol, true
  %brmerge = select i1 %lcmp.mod.not, i1 true, i1 %.not.i.us.us.prol.not
  %.16369.mux = select i1 %lcmp.mod.not, i32 %.16369, i32 %.163.us.us.prol
  br i1 %brmerge, label %.prol.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.t = load i32, ptr %i.n, align 8, !tbaa !33
  %.not20.i.us.us.prol = icmp slt i32 %.173.us, %i.t
  br i1 %.not20.i.us.us.prol, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.r
  store i32 32, ptr %i.x, align 8, !tbaa !39
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.preheader.us, %bb.b, %bb.c
  %.16370.us.us.unr = phi i32 [ %.16369.mux, %.preheader.us ], [ %.163.us.us.prol, %bb.c ], [ %.163.us.us.prol, %bb.b ]
  br i1 %14, label %..loopexit_crit_edge.split.us.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %put.exit.us.us.1
  %.16370.us.us = phi i32 [ %.163.us.us.1, %put.exit.us.us.1 ], [ %.16370.us.us.unr, %.prol.loopexit ] ; 4 uses
  %.not.i.us.us = icmp slt i32 %.16370.us.us, %i.q
  br i1 %.not.i.us.us, label %bb.d, label %put.exit.us.us

bb.d:                                             ; preds = %.preheader.us.new
  %i.y = load i32, ptr %i.n, align 8, !tbaa !33
  %.not20.i.us.us = icmp slt i32 %.173.us, %i.y
  br i1 %.not20.i.us.us, label %bb.e, label %put.exit.us.us

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.s
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = sext i32 %.16370.us.us to i64
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.ab, i64 %i.ac
  store i32 32, ptr %i.ad, align 8, !tbaa !39
  br label %put.exit.us.us

put.exit.us.us:                                   ; preds = %bb.e, %bb.d, %.preheader.us.new
  %.163.us.us = add nuw i32 %.16370.us.us, 1      ; 2 uses
  %.not.i.us.us.1 = icmp slt i32 %.163.us.us, %i.q
  br i1 %.not.i.us.us.1, label %bb.f, label %put.exit.us.us.1

bb.f:                                             ; preds = %put.exit.us.us
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !33
  %.not20.i.us.us.1 = icmp slt i32 %.173.us, %i.ae
  br i1 %.not20.i.us.us.1, label %bb.g, label %put.exit.us.us.1

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.s
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ai = sext i32 %.163.us.us to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.ai
  store i32 32, ptr %i.aj, align 8, !tbaa !39
  br label %put.exit.us.us.1

put.exit.us.us.1:                                 ; preds = %bb.g, %bb.f, %put.exit.us.us
  %.163.us.us.1 = add nuw i32 %.16370.us.us, 2    ; 2 uses
  %exitcond81.not.1 = icmp eq i32 %.163.us.us.1, %i.e
  br i1 %exitcond81.not.1, label %..loopexit_crit_edge.split.us.us, label %.preheader.us.new, !llvm.loop !76

..loopexit_crit_edge.split.us.us:                 ; preds = %put.exit.us.us.1, %.prol.loopexit
  %.1.us = add nuw i32 %.173.us, 1                ; 2 uses
  %exitcond82.not = icmp eq i32 %.1.us, %i.g
  br i1 %exitcond82.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !77

.lr.ph68:                                         ; preds = %.preheader65, %.lr.ph68
  %.067 = phi i32 [ %i.al, %.lr.ph68 ], [ 1, %.preheader65 ] ; 2 uses
  %i.ak = add i32 %.067, %12                      ; 2 uses
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %9, i32 noundef %i.ak, i32 noundef 3, i32 noundef 8, ptr noundef %1)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %i.ak, i32 noundef 3, i32 noundef 4, ptr noundef %1)
  %i.al = add nuw i32 %.067, 1                    ; 2 uses
  %exitcond78.not = icmp eq i32 %i.al, %i.f
  br i1 %exitcond78.not, label %.preheader64, label %.lr.ph68, !llvm.loop !78

..loopexit_crit_edge.split:                       ; preds = %put.exit
  %.1 = add nuw i32 %.173, 1                      ; 2 uses
  %exitcond80.not = icmp eq i32 %.1, %i.g
  br i1 %exitcond80.not, label %._crit_edge.split, label %.preheader, !llvm.loop !77

.preheader:                                       ; preds = %.preheader.lr.ph.split, %..loopexit_crit_edge.split
  %.173 = phi i32 [ %.1, %..loopexit_crit_edge.split ], [ %.172, %.preheader.lr.ph.split ] ; 3 uses
  %i.am = sext i32 %.173 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %put.exit
  %.16370 = phi i32 [ %.16369, %.preheader ], [ %.163, %put.exit ] ; 3 uses
  %.not.i = icmp slt i32 %.16370, %i.q
  br i1 %.not.i, label %bb.i, label %put.exit

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.n, align 8, !tbaa !33
  %.not20.i = icmp slt i32 %.173, %i.an
  br i1 %.not20.i, label %bb.j, label %put.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.am
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = sext i32 %.16370 to i64
  %i.as = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  store i32 32, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %1, ptr %i.at, align 8, !tbaa !44
  br label %put.exit

put.exit:                                         ; preds = %bb.h, %bb.i, %bb.j
  %.163 = add nuw i32 %.16370, 1                  ; 2 uses
  %exitcond79.not = icmp eq i32 %.163, %i.e
  br i1 %exitcond79.not, label %..loopexit_crit_edge.split, label %bb.h, !llvm.loop !76

._crit_edge.split:                                ; preds = %..loopexit_crit_edge.split, %..loopexit_crit_edge.split.us.us, %.preheader.lr.ph, %.preheader64
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ascii_line(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree readnone captures(none) %6, i32 %7) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = shl i32 %2, 1
  %8 = udiv i32 %i.c, 10                          ; 3 uses
  %9 = udiv i32 %3, 10                            ; 3 uses
  %10 = shl i32 %4, 1
  %11 = udiv i32 %10, 10                          ; 3 uses
  %12 = udiv i32 %5, 10                           ; 3 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %8, i32 %11) ; 3 uses
  %spec.select58 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11) ; 5 uses
  %.049 = tail call i32 @llvm.umax.i32(i32 %9, i32 %12) ; 3 uses
  %.048 = tail call i32 @llvm.umin.i32(i32 %9, i32 %12) ; 5 uses
  %i.d = icmp eq i32 %11, %8
  %i.e = icmp eq i32 %12, %9                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %spec.select58, i32 noundef %.048, i32 noundef 2, i32 noundef 0, ptr noundef null)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %spec.select58, i32 noundef %.049, i32 noundef 1, i32 noundef 0, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.062 = add nuw nsw i32 %.048, 1                ; 2 uses
  %i.f = icmp samesign ult i32 %.062, %.049
  br i1 %i.f, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %bb.d, %.lr.ph64
  %.063 = phi i32 [ %.0, %.lr.ph64 ], [ %.062, %bb.d ] ; 2 uses
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %spec.select58, i32 noundef %.063, i32 noundef 3, i32 noundef 0, ptr noundef null)
  %.0 = add nuw nsw i32 %.063, 1                  ; 2 uses
  %exitcond66.not = icmp eq i32 %.0, %.049
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph64, !llvm.loop !79

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %spec.select58, i32 noundef %.048, i32 noundef 8, i32 noundef 0, ptr noundef null)
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %spec.select, i32 noundef %.048, i32 noundef 4, i32 noundef 0, ptr noundef null)
  %.04660 = add nuw nsw i32 %spec.select58, 1     ; 2 uses
  %i.g = icmp samesign ult i32 %.04660, %spec.select
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.04661 = phi i32 [ %.046, %.lr.ph ], [ %.04660, %bb.f ] ; 2 uses
  tail call fastcc void @merge(ptr noundef %i.b, i32 noundef %.04661, i32 noundef %.048, i32 noundef 12, i32 noundef 0, ptr noundef null)
  %.046 = add nuw nsw i32 %.04661, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %.046, %spec.select
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !80

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph64, %bb.f, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ascii_text(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nofree readnone captures(none) %7, i32 %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = udiv i32 %5, 10                          ; 3 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #21
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = shl i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #19 ; 5 uses
  %i.h = tail call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %i.g, i64 noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #16 ; 0 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !24   ; 3 uses
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = shl i32 %4, 1
  %i.k = udiv i32 %i.j, 10                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.p = zext nneg i32 %i.c to i64                ; 2 uses
  %.not21.i = icmp eq ptr %1, null
  br i1 %.not21.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %put.exit.us
  %i.q = phi i32 [ %i.z, %put.exit.us ], [ %i.i, %.lr.ph ]
  %.020.us = phi ptr [ %i.y, %put.exit.us ], [ %i.g, %.lr.ph ]
  %.01619.us = phi i32 [ %i.r, %put.exit.us ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = add i32 %.01619.us, 1
  %.not.i.us = icmp slt i32 %.01619.us, %i.m
  br i1 %.not.i.us, label %bb.b, label %put.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.s = load i32, ptr %i.n, align 8, !tbaa !33
  %.not20.i.us = icmp slt i32 %i.c, %i.s
  br i1 %.not20.i.us, label %bb.c, label %put.exit.us

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = sext i32 %.01619.us to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.w
  store i32 %i.q, ptr %i.x, align 8, !tbaa !39
  br label %put.exit.us

put.exit.us:                                      ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %.020.us, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24   ; 2 uses
  %.not.us = icmp eq i32 %i.z, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !81

.lr.ph.split:                                     ; preds = %.lr.ph, %put.exit
  %i.aa = phi i32 [ %i.ak, %put.exit ], [ %i.i, %.lr.ph ]
  %.020 = phi ptr [ %i.aj, %put.exit ], [ %i.g, %.lr.ph ]
  %.01619 = phi i32 [ %i.ab, %put.exit ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ab = add i32 %.01619, 1
  %.not.i = icmp slt i32 %.01619, %i.m
  br i1 %.not.i, label %bb.d, label %put.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !33
  %.not20.i = icmp slt i32 %i.c, %i.ac
  br i1 %.not20.i, label %bb.e, label %put.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = sext i32 %.01619 to i64
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  store i32 %i.aa, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %1, ptr %i.ai, align 8, !tbaa !43
  br label %put.exit

put.exit:                                         ; preds = %bb.e, %.lr.ph.split, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !81

._crit_edge:                                      ; preds = %put.exit, %put.exit.us, %bb.a
  tail call void @free(ptr noundef %i.g) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ascii_textsize(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) #12 {
bb.a:
  %i.a = mul i32 %2, 10
  %i.b = lshr exact i32 %i.a, 1
  store i32 %i.b, ptr %4, align 4, !tbaa !24
  ret void
}

declare ptr @tparm(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @merge(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 13) %3, i32 noundef range(i32 0, 9) %4, ptr noundef %5) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.b, label %put.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %.not17 = icmp slt i32 %2, %i.d
  br i1 %.not17, label %bb.c, label %put.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.m, align 8, !tbaa !42
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.l, label %to_directions.exit [
    i32 9484, label %to_directions.exit.thread
    i32 9488, label %bb.e
    i32 9492, label %bb.f
    i32 9496, label %bb.g
    i32 9472, label %bb.h
    i32 9474, label %to_directions.exit.thread27
    i32 9591, label %bb.i
    i32 9589, label %bb.j
    i32 9590, label %bb.k
    i32 9588, label %bb.l
    i32 9500, label %bb.m
    i32 9508, label %bb.n
    i32 9516, label %bb.o
    i32 9524, label %bb.p
    i32 9532, label %to_directions.exit.thread32
  ]

to_directions.exit.thread32:                      ; preds = %bb.d
  %i.n = xor i32 %4, 15
  %i.o = or i32 %i.n, %3
  br label %to_directions.exit

to_directions.exit.thread27:                      ; preds = %bb.d
  %i.p = and i32 %4, 3
  %i.q = xor i32 %i.p, 3
  %i.r = or i32 %i.q, %3
  br label %to_directions.exit
end_hunk_0
