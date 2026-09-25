Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa_ManExactSynthesis5:bb.a
.lr.ph48.split.1:                                 ; preds = %.lr.ph48.split
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.a, align 16, !tbaa !51
  %i.dh = lshr i64 %i.dg, 1
  %i.di = and i64 %i.dh, 1
  %i.dj = shl nuw nsw i64 1, %i.di
  %i.dk = load i64, ptr %i.df, align 8, !tbaa !51
  %i.dl = or i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.df, align 8, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.a, align 16, !tbaa !51
  %i.do = lshr i64 %i.dn, 2
  %i.dp = and i64 %i.do, 1
  %i.dq = shl nuw nsw i64 1, %i.dp
  %i.dr = load i64, ptr %i.dm, align 8, !tbaa !51
  %i.ds = or i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.dm, align 8, !tbaa !51
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %vector.body72, %.lr.ph48.split, %.lr.ph48.split.1, %._crit_edge.us, %Abc_TtNot.exit
  %i.dt = add nsw i32 %i.b, 1
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !91
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !94
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !102
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !87
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !116
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !103
  %i.ei = tail call ptr @Exa5_ManGenTest(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, i32 noundef %i.b, i32 noundef %i.dt, i32 noundef 1, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef %i.eh) ; 3 uses
  %.not37 = icmp eq ptr %i.ei, null
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge49
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !125 ; 2 uses
  %.not.i = icmp eq ptr %i.ek, null
  br i1 %.not.i, label %Mini_AigStop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ek) #41
  br label %Mini_AigStop.exit

Mini_AigStop.exit:                                ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %i.ei) #41
  br label %bb.h

bb.h:                                             ; preds = %Mini_AigStop.exit, %._crit_edge49
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !46  ; 2 uses
  %.not.i43 = icmp eq ptr %i.el, null
  br i1 %.not.i43, label %Vec_WrdFree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.el) #41
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.j, %bb.k
  tail call void @free(ptr noundef nonnull %i.d) #41
  %i.em = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %.not.i44 = icmp eq ptr %i.em, null
  br i1 %.not.i44, label %Vec_WrdFree.exit45, label %bb.l

bb.l:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.em) #41
  br label %Vec_WrdFree.exit45

Vec_WrdFree.exit45:                               ; preds = %Vec_WrdFree.exit, %bb.l
  tail call void @free(ptr noundef nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Mini_AigPrintArray(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.90, i64 6, i64 1, ptr %0) ; 0 uses
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val3243 = load i32, ptr %i.a, align 4, !tbaa !124 ; 2 uses
  %i.b = icmp sgt i32 %.val3243, 3
  br i1 %i.b, label %.lr.ph, label %.lr.ph52.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  br label %bb.b

.preheader42:                                     ; preds = %Mini_AigNodeIsAnd.exit.thread
  %i.d = icmp sgt i32 %.val32, 3
  br i1 %i.d, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader42
  %i.e = getelementptr i8, ptr %1, i64 16
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %Mini_AigNodeIsAnd.exit.thread
  %.val3257 = phi i32 [ %.val3243, %.lr.ph ], [ %.val32, %Mini_AigNodeIsAnd.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %Mini_AigNodeIsAnd.exit.thread ] ; 2 uses
  %.045 = phi i32 [ 0, %.lr.ph ], [ %.1, %Mini_AigNodeIsAnd.exit.thread ] ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !125
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 2 uses
  %.not.i = icmp eq i32 %i.g, 2147483647
  br i1 %.not.i, label %Mini_AigNodeIsAnd.exit.thread, label %Mini_AigNodeIsAnd.exit

Mini_AigNodeIsAnd.exit:                           ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54   ; 2 uses
  %.not41 = icmp eq i32 %i.i, 2147483647
  br i1 %.not41, label %Mini_AigNodeIsAnd.exit.thread, label %bb.c

bb.c:                                             ; preds = %Mini_AigNodeIsAnd.exit
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.91, i32 noundef %i.g, i32 noundef %i.i) #41 ; 0 uses
  %i.k = add nsw i32 %.045, 1
  %.val32.pre = load i32, ptr %i.a, align 4, !tbaa !124
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsAnd.exit.thread:                    ; preds = %bb.b, %bb.c, %Mini_AigNodeIsAnd.exit
  %.val32 = phi i32 [ %.val32.pre, %bb.c ], [ %.val3257, %Mini_AigNodeIsAnd.exit ], [ %.val3257, %bb.b ] ; 4 uses
  %.1 = phi i32 [ %i.k, %bb.c ], [ %.045, %Mini_AigNodeIsAnd.exit ], [ %.045, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sdiv i32 %.val32, 2
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.preheader42, !llvm.loop !575

.preheader:                                       ; preds = %Mini_AigNodeIsPo.exit.thread, %.preheader42
  %.2.lcssa = phi i32 [ %.1, %.preheader42 ], [ %.3, %Mini_AigNodeIsPo.exit.thread ] ; 2 uses
  %i.o = icmp slt i32 %.2.lcssa, 8
  br i1 %i.o, label %.lr.ph52.preheader, label %._crit_edge

.lr.ph52.preheader:                               ; preds = %bb.a, %.preheader
  %.22951.ph = phi i32 [ 0, %bb.a ], [ %.2.lcssa, %.preheader ]
  br label %.lr.ph52

bb.d:                                             ; preds = %.lr.ph49, %Mini_AigNodeIsPo.exit.thread
  %.val60 = phi i32 [ %.val32, %.lr.ph49 ], [ %.val, %Mini_AigNodeIsPo.exit.thread ] ; 2 uses
  %indvars.iv54 = phi i64 [ 1, %.lr.ph49 ], [ %indvars.iv.next55, %Mini_AigNodeIsPo.exit.thread ] ; 2 uses
  %.248 = phi i32 [ %.1, %.lr.ph49 ], [ %.3, %Mini_AigNodeIsPo.exit.thread ] ; 3 uses
  %.val.i37 = load ptr, ptr %i.e, align 8, !tbaa !125
  %.idx64 = shl nuw nsw i64 %indvars.iv54, 3
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i37, i64 %.idx64 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !54   ; 3 uses
  %.not.i38 = icmp eq i32 %i.q, 2147483647
  br i1 %.not.i38, label %Mini_AigNodeIsPo.exit.thread, label %Mini_AigNodeIsPo.exit

Mini_AigNodeIsPo.exit:                            ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54
  %.not = icmp eq i32 %i.s, 2147483647
  br i1 %.not, label %bb.e, label %Mini_AigNodeIsPo.exit.thread

bb.e:                                             ; preds = %Mini_AigNodeIsPo.exit
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %i.q, i32 noundef %i.q) #41 ; 0 uses
  %i.u = add nsw i32 %.248, 1
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !124
  br label %Mini_AigNodeIsPo.exit.thread

Mini_AigNodeIsPo.exit.thread:                     ; preds = %bb.d, %bb.e, %Mini_AigNodeIsPo.exit
  %.val = phi i32 [ %.val.pre, %bb.e ], [ %.val60, %Mini_AigNodeIsPo.exit ], [ %.val60, %bb.d ] ; 2 uses
  %.3 = phi i32 [ %i.u, %bb.e ], [ %.248, %Mini_AigNodeIsPo.exit ], [ %.248, %bb.d ] ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.v = sdiv i32 %.val, 2
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next55, %i.w
  br i1 %i.x, label %bb.d, label %.preheader, !llvm.loop !576

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %.22951 = phi i32 [ %i.z, %.lr.ph52 ], [ %.22951.ph, %.lr.ph52.preheader ]
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef 0) #41 ; 0 uses
  %i.z = add i32 %.22951, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, 8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph52, !llvm.loop !577

._crit_edge:                                      ; preds = %.lr.ph52, %.preheader
  %fwrite30 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 2, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Mini_AigWriteEntry(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val35 = load i32, ptr %i.a, align 4, !tbaa !124 ; 3 uses
  %i.b = icmp sgt i32 %.val35, 3
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %1 = sdiv i32 %.val35, 2
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !125
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  br label %bb.b

.lr.ph50:                                         ; preds = %Mini_AigNodeIsAnd.exit.thread
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val.i39 = load ptr, ptr %i.d, align 8, !tbaa !125 ; 3 uses
  %i.e = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %2 = icmp slt i32 %.val35, 6
  br i1 %2, label %.epil.preheader, label %.lr.ph50.new

.lr.ph50.new:                                     ; preds = %.lr.ph50
  %unroll_iter = and i64 %i.e, -2
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %Mini_AigNodeIsAnd.exit.thread
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %Mini_AigNodeIsAnd.exit.thread ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph ], [ %.1, %Mini_AigNodeIsAnd.exit.thread ] ; 6 uses
  %.03144 = phi i64 [ 0, %.lr.ph ], [ %.2, %Mini_AigNodeIsAnd.exit.thread ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 3 uses
  %.not.i = icmp eq i32 %i.g, 2147483647
  br i1 %.not.i, label %Mini_AigNodeIsAnd.exit.thread, label %Mini_AigNodeIsAnd.exit

Mini_AigNodeIsAnd.exit:                           ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54   ; 3 uses
  %.not43 = icmp eq i32 %i.i, 2147483647
  br i1 %.not43, label %Mini_AigNodeIsAnd.exit.thread, label %bb.c

bb.c:                                             ; preds = %Mini_AigNodeIsAnd.exit
  %i.j = icmp slt i32 %.046, 4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl i32 %i.i, 4
  %i.l = and i32 %i.k, 240
  %i.m = and i32 %i.g, 15
  %i.n = or disjoint i32 %i.l, %i.m
  %i.o = shl nsw i32 %.046, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = shl i32 %i.i, 5
  %i.q = and i32 %i.p, 992
  %i.r = and i32 %i.g, 31
  %i.s = or disjoint i32 %i.q, %i.r
  %i.t = mul i32 %.046, 10
  %i.u = add i32 %i.t, -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink64 = phi i32 [ %i.u, %bb.e ], [ %i.o, %bb.d ]
  %.sink.in = phi i32 [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %.sink = zext i32 %.sink.in to i64
  %i.v = zext nneg i32 %.sink64 to i64
  %i.w = shl i64 %.sink, %i.v
  %.132 = or i64 %i.w, %.03144
  %i.x = add nsw i32 %.046, 1
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsAnd.exit.thread:                    ; preds = %bb.b, %bb.f, %Mini_AigNodeIsAnd.exit
  %.2 = phi i64 [ %.132, %bb.f ], [ %.03144, %Mini_AigNodeIsAnd.exit ], [ %.03144, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %i.x, %bb.f ], [ %.046, %Mini_AigNodeIsAnd.exit ], [ %.046, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph50, label %bb.b, !llvm.loop !16

bb.g:                                             ; preds = %Mini_AigNodeIsPo.exit.thread.1, %.lr.ph50.new
  %indvars.iv53 = phi i64 [ 1, %.lr.ph50.new ], [ %indvars.iv.next54.1, %Mini_AigNodeIsPo.exit.thread.1 ] ; 3 uses
  %.348 = phi i64 [ %.2, %.lr.ph50.new ], [ %.4.1, %Mini_AigNodeIsPo.exit.thread.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph50.new ], [ %niter.next.1, %Mini_AigNodeIsPo.exit.thread.1 ]
  %.idx61 = shl nuw nsw i64 %indvars.iv53, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i39, i64 %.idx61 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !54   ; 2 uses
  %.not.i40 = icmp eq i32 %i.z, 2147483647
  br i1 %.not.i40, label %Mini_AigNodeIsPo.exit.thread, label %Mini_AigNodeIsPo.exit

Mini_AigNodeIsPo.exit:                            ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !54
  %.not = icmp eq i32 %i.ab, 2147483647
  br i1 %.not, label %bb.h, label %Mini_AigNodeIsPo.exit.thread

bb.h:                                             ; preds = %Mini_AigNodeIsPo.exit
  %i.ac = and i32 %i.z, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 62
  %spec.select = or i64 %i.ae, %.348
  br label %Mini_AigNodeIsPo.exit.thread

Mini_AigNodeIsPo.exit.thread:                     ; preds = %bb.g, %bb.h, %Mini_AigNodeIsPo.exit
  %.4 = phi i64 [ %.348, %Mini_AigNodeIsPo.exit ], [ %spec.select, %bb.h ], [ %.348, %bb.g ] ; 3 uses
  %indvars.iv.next54 = shl i64 %indvars.iv53, 3
  %i.af = getelementptr i8, ptr %.val.i39, i64 %indvars.iv.next54 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54 ; 2 uses
  %.not.i40.1 = icmp eq i32 %i.ah, 2147483647
  br i1 %.not.i40.1, label %Mini_AigNodeIsPo.exit.thread.1, label %Mini_AigNodeIsPo.exit.1

Mini_AigNodeIsPo.exit.1:                          ; preds = %Mini_AigNodeIsPo.exit.thread
  %i.ai = getelementptr i8, ptr %i.af, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54
  %.not.1 = icmp eq i32 %i.aj, 2147483647
  br i1 %.not.1, label %bb.i, label %Mini_AigNodeIsPo.exit.thread.1

bb.i:                                             ; preds = %Mini_AigNodeIsPo.exit.1
  %i.ak = and i32 %i.ah, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 62
  %spec.select.1 = or i64 %i.am, %.4
  br label %Mini_AigNodeIsPo.exit.thread.1

Mini_AigNodeIsPo.exit.thread.1:                   ; preds = %bb.i, %Mini_AigNodeIsPo.exit.1, %Mini_AigNodeIsPo.exit.thread
  %.4.1 = phi i64 [ %.4, %Mini_AigNodeIsPo.exit.1 ], [ %spec.select.1, %bb.i ], [ %.4, %Mini_AigNodeIsPo.exit.thread ] ; 3 uses
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !17

._crit_edge.loopexit.unr-lcssa:                   ; preds = %Mini_AigNodeIsPo.exit.thread.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph50
  %indvars.iv53.epil.init = phi i64 [ 1, %.lr.ph50 ], [ %indvars.iv.next54.1, %._crit_edge.loopexit.unr-lcssa ]
  %.348.epil.init = phi i64 [ %.2, %.lr.ph50 ], [ %.4.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %.idx61.epil = shl nuw nsw i64 %indvars.iv53.epil.init, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i39, i64 %.idx61.epil ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54 ; 2 uses
  %.not.i40.epil = icmp eq i32 %i.ao, 2147483647
  br i1 %.not.i40.epil, label %._crit_edge, label %Mini_AigNodeIsPo.exit.epil

Mini_AigNodeIsPo.exit.epil:                       ; preds = %.epil.preheader
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !54
  %.not.epil = icmp eq i32 %i.aq, 2147483647
  br i1 %.not.epil, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %Mini_AigNodeIsPo.exit.epil
  %i.ar = and i32 %i.ao, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 62
  %spec.select.epil = or i64 %i.at, %.348.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %Mini_AigNodeIsPo.exit.epil, %.epil.preheader, %bb.a
  %.3.lcssa = phi i64 [ 0, %bb.a ], [ %.4.1, %._crit_edge.loopexit.unr-lcssa ], [ %.348.epil.init, %Mini_AigNodeIsPo.exit.epil ], [ %spec.select.epil, %bb.j ], [ %.348.epil.init, %.epil.preheader ]
  ret i64 %.3.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @Abc_TtConvertEntry(i64 noundef %0) local_unnamed_addr #24 {
.preheader.preheader:
  %i.a = alloca [16 x i64], align 16              ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep, ptr noundef nonnull align 16 dereferenceable(32) @s_Truths6, i64 32, i1 false), !tbaa !51
  %i.b = trunc i64 %0 to i32                      ; 13 uses
  %i.c = lshr i64 %0, 32                          ; 2 uses
  %i.d = trunc nuw i64 %i.c to i32                ; 9 uses
  %i.e = and i32 %i.b, 255                        ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.g = and i32 %i.b, 15                         ; 2 uses
  %i.h = lshr i32 %i.e, 4
  %i.i = lshr i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51
  %i.m = and i64 %0, 1
  %sext = sub nsw i64 0, %i.m
  %i.n = xor i64 %i.l, %sext                      ; 2 uses
  %i.o = lshr i32 %i.e, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  %i.s = shl i32 %i.b, 27
  %sext83 = ashr i32 %i.s, 31
  %i.t = sext i32 %sext83 to i64
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = icmp samesign ult i32 %i.g, %i.h
  %i.w = and i64 %i.u, %i.n
  %i.x = xor i64 %i.u, %i.n
  %i.y = select i1 %i.v, i64 %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !51
  %i.aa = lshr i32 %i.b, 8                        ; 2 uses
  %i.ab = and i32 %i.aa, 255                      ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ad = and i32 %i.aa, 15                       ; 2 uses
  %i.ae = lshr i32 %i.ab, 4
  %i.af = lshr i32 %i.ad, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51
  %i.aj = shl i32 %i.b, 23
  %sext84 = ashr i32 %i.aj, 31
  %i.ak = sext i32 %sext84 to i64
  %i.al = xor i64 %i.ai, %i.ak                    ; 2 uses
end_hunk_0
