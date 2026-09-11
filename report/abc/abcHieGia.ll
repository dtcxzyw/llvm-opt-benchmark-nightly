Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcHieGia?download=true
inline.NumInlined: 670
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@GiaHie_CollectMultiBits:bb.a

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !92
  store i32 %i.g, ptr %i.l, align 4, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %Vec_BitStart.exit
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %1, 1
  br i1 %i.p, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.d
  %xtraiter61 = and i32 %1, 1
  %unroll_iter = and i32 %1, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.03853 = phi i32 [ 0, %.preheader.preheader ], [ %i.ae, %.preheader ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader ], [ %niter.next.1, %.preheader ]
  %i.q = and i32 %.03853, 30
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = lshr i32 %.03853, 5
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46
  %i.w = or i32 %i.v, %i.r
  store i32 %i.w, ptr %i.u, align 4, !tbaa !46
  %i.x = and i32 %.03853, 30
  %i.y = shl nuw i32 2, %i.x
  %i.z = lshr i32 %.03853, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.ad = or i32 %i.ac, %i.y
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !46
  %i.ae = add nuw nsw i32 %.03853, 2              ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !194

bb.e:                                             ; preds = %bb.c
  %i.af = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull %0) ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %.val45 = load i32, ptr %i.ah, align 4, !tbaa !69 ; 2 uses
  %i.ai = icmp sgt i32 %.val45, 1
  %i.aj = getelementptr i8, ptr %i.af, i64 8
  %.val48 = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 4 uses
  br i1 %i.ai, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.e
  %i.ak = zext nneg i32 %.val45 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.loopexit50
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.loopexit50 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46 ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %i.aq = phi i32 [ %i.ap, %bb.f ], [ %.val, %.critedge ] ; 2 uses
  %i.ar = sub nsw i32 %i.aq, %i.am
  %i.as = icmp slt i32 %i.ar, 2
  br i1 %i.as, label %.loopexit50, label %.preheader49

.preheader49:                                     ; preds = %bb.g
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %1) ; 4 uses
  %i.at = icmp slt i32 %i.am, %invariant.smin
  br i1 %i.at, label %.lr.ph.preheader, label %.loopexit50

.lr.ph.preheader:                                 ; preds = %.preheader49
  %i.au = sub i32 %invariant.smin, %i.am
  %.neg = add i32 %i.am, 1
  %xtraiter = and i32 %i.au, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.av = and i32 %i.am, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = ashr i32 %i.am, 5
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46
  %i.bb = or i32 %i.ba, %i.aw
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !46
  %i.bc = add nsw i32 %i.am, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.051.unr = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %i.bd = icmp eq i32 %invariant.smin, %.neg
  br i1 %i.bd, label %.loopexit50, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.051 = phi i32 [ %i.bt, %.lr.ph ], [ %.051.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.be = and i32 %.051, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = ashr i32 %.051, 5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !46
  %i.bk = or i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !46
  %i.bl = add nsw i32 %.051, 1                    ; 2 uses
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = ashr i32 %i.bl, 5
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !46
  %i.bs = or i32 %i.br, %i.bn
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !46
  %i.bt = add nsw i32 %.051, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bt, %invariant.smin
  br i1 %exitcond.not.1, label %.loopexit50, label %.lr.ph, !llvm.loop !195

.loopexit50:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader49, %bb.g
  %i.bu = or disjoint i64 %indvars.iv.next, 1
  %i.bv = icmp samesign ult i64 %i.bu, %i.ak
  br i1 %i.bv, label %.critedge, label %._crit_edge.thread, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.e
  %.not.i = icmp eq ptr %.val48, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.loopexit50, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val48) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.af) #21
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod62.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod63 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bw = and i32 %i.ae, 31
  %i.bx = shl nuw i32 1, %i.bw
  %i.by = lshr i32 %i.ae, 5
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !46
  %i.cc = or i32 %i.cb, %i.bx
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %Vec_BitStart.exit, %Vec_IntFree.exit
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GiaHie_DumpIoListMulti(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.in.v = select i1 %.not, i64 640, i64 648
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load ptr, ptr %.in, align 8, !tbaa !80   ; 4 uses
  %.not46 = icmp eq ptr %i.a, null
  br i1 %.not46, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val54.pn.in.v = select i1 %.not, i64 64, i64 72
  %.val54.pn.in = getelementptr i8, ptr %0, i64 %.val54.pn.in.v
  %.val54.pn = load ptr, ptr %.val54.pn.in, align 8, !tbaa !95
  %.ph.in = getelementptr i8, ptr %.val54.pn, i64 4
  %.ph = load i32, ptr %.ph.in, align 4, !tbaa !69
  %i.b = icmp sgt i32 %.ph, 1
  br i1 %i.b, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = select i1 %.not, i32 105, i32 111
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i32 noundef %i.c) #21 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !50
  %i.f = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull %i.a) ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val50 = load i32, ptr %i.g, align 4, !tbaa !69 ; 2 uses
  %3 = sdiv i32 %.val50, 2                        ; 2 uses
  %i.h = icmp sgt i32 %.val50, 1
  %4 = getelementptr i8, ptr %i.f, i64 8
  %.val53 = load ptr, ptr %4, align 8, !tbaa !71  ; 4 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %GiaHie_PrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %GiaHie_PrintOneName.exit ] ; 4 uses
  %.057 = phi i32 [ 1, %.lr.ph ], [ %.1, %GiaHie_PrintOneName.exit ] ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %6 = xor i32 %5, -1
  %7 = add nsw i32 %3, %6
  %8 = shl nuw nsw i32 %7, 1
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr [4 x i8], ptr %.val53, i64 %9 ; 2 uses
  %i.j = load i32, ptr %10, align 4, !tbaa !46    ; 2 uses
  %i.k = getelementptr i8, ptr %10, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46   ; 2 uses
  %.not58 = icmp eq i64 %indvars.iv, 0
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sub nuw nsw i64 %wide.trip.count, %indvars.iv
  %.idx62 = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.val53, i64 %.idx62
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.p = phi i32 [ %i.o, %bb.f ], [ %.val, %bb.e ]
  %i.q = sub nsw i32 %i.p, %i.j
  %i.r = icmp slt i32 %i.q, 2
  br i1 %i.r, label %GiaHie_PrintOneName.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp eq i32 %.057, 0
  br i1 %.not48, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val49 = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.s = sext i32 %i.j to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = icmp sgt i32 %i.l, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = sext i8 %i.x to i32
  %fputc.i = tail call i32 @fputc(i32 %i.y, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %GiaHie_PrintOneName.exit, label %.lr.ph.i, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.j, %bb.g
  %.1 = phi i32 [ %.057, %bb.g ], [ 0, %bb.j ], [ 0, %.lr.ph.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !197

._crit_edge:                                      ; preds = %bb.d
  %.not.i = icmp eq ptr %.val53, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %GiaHie_PrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val53) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.f) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %Vec_IntFree.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @GiaHie_ObjGetDumpName(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef signext range(i8 105, 123) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18    ; 4 uses
  %i.f = icmp eq i8 %i.e, 92
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.e, -123
  %or.cond.i = icmp ult i8 %i.g, -26
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add i8 %i.e, -65
  %or.cond26.i = icmp ult i8 %i.h, 26
  %.not.i = icmp eq i8 %i.e, 95
  %or.cond30.i = or i1 %.not.i, %or.cond26.i
  br i1 %or.cond30.i, label %bb.e, label %GiaHie_NameIsLegalInVerilog.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18    ; 2 uses
  %.not2333.i = icmp eq i8 %i.j, 0
  br i1 %.not2333.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.k = phi i8 [ %i.q, %bb.g ], [ %i.j, %bb.e ]  ; 3 uses
  %i.l = phi ptr [ %i.p, %bb.g ], [ %i.i, %bb.e ]
  %i.m = and i8 %i.k, -33
  %i.n = add i8 %i.m, -91
  %or.cond31.i = icmp ult i8 %i.n, -26
  %i.o = add i8 %i.k, -58
  %or.cond29.i = icmp ult i8 %i.o, -10
  %or.cond32.i = and i1 %or.cond29.i, %or.cond31.i
  br i1 %or.cond32.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  switch i8 %i.k, label %GiaHie_NameIsLegalInVerilog.exit [
    i8 95, label %bb.g
    i8 36, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18    ; 2 uses
  %.not23.i = icmp eq i8 %i.q, 0
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !198

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.e
  %strcpy = tail call ptr @strcpy(ptr nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr nonnull dereferenceable(1) %i.d) ; 0 uses
  br label %bb.i

GiaHie_NameIsLegalInVerilog.exit:                 ; preds = %bb.f, %bb.d
  %i.r = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull %i.d) #21 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.s = zext nneg i8 %1 to i32                   ; 2 uses
  %i.t = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.s, i32 noundef %3, i32 noundef %2, i32 noundef %i.s) #21 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %GiaHie_NameIsLegalInVerilog.exit, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @GiaHie_CountSymbsAll(ptr nofree noundef readonly captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.b = load ptr, ptr %.val28, align 8, !tbaa !47 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18
  switch i8 %i.d, label %bb.c [
    i8 0, label %GiaHie_CountSymbs.exit
    i8 91, label %GiaHie_CountSymbs.exit
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.b, !llvm.loop !5

GiaHie_CountSymbs.exit:                           ; preds = %bb.b, %bb.b
  %i.e = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val26 = load i32, ptr %i.f, align 4, !tbaa !50 ; 3 uses
  %i.g = shl nsw i32 %.val26, 1                   ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 9 uses
  %i.i = add i32 %i.g, -1
  %or.cond.i = icmp ult i32 %i.i, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  store i32 %spec.store.select.i, ptr %i.h, align 8, !tbaa !70
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntGrow.exit11.sink.split.i, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %GiaHie_CountSymbs.exit
  %i.k = sext i32 %spec.store.select.i to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #23 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !71
  br label %Vec_IntPush.exit36

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %GiaHie_CountSymbs.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !71
  store i32 16, ptr %i.h, align 8, !tbaa !70
  br label %Vec_IntPush.exit36

Vec_IntPush.exit36:                               ; preds = %Vec_IntGrow.exit11.sink.split.i, %Vec_IntAlloc.exit
  %i.q = phi i32 [ %spec.store.select.i, %Vec_IntAlloc.exit ], [ 16, %Vec_IntGrow.exit11.sink.split.i ]
  %i.r = phi ptr [ %i.m, %Vec_IntAlloc.exit ], [ %i.p, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.s = phi ptr [ %i.n, %Vec_IntAlloc.exit ], [ %i.o, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !46
  store i32 2, ptr %i.j, align 4, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.e, ptr %i.t, align 4, !tbaa !46
  %i.u = icmp sgt i32 %.val26, 1
  br i1 %i.u, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntPush.exit36, %bb.s
  %.val62 = phi i32 [ %.val, %bb.s ], [ %.val26, %Vec_IntPush.exit36 ]
  %i.v = phi ptr [ %i.bk, %bb.s ], [ %i.r, %Vec_IntPush.exit36 ] ; 3 uses
  %i.w = phi ptr [ %i.bl, %bb.s ], [ %i.r, %Vec_IntPush.exit36 ] ; 7 uses
  %i.x = phi i32 [ %i.bm, %bb.s ], [ %i.q, %Vec_IntPush.exit36 ] ; 6 uses
  %i.y = phi i32 [ %i.bn, %bb.s ], [ 2, %Vec_IntPush.exit36 ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 1, %Vec_IntPush.exit36 ] ; 3 uses
  %.060 = phi i32 [ %.1, %bb.s ], [ %i.e, %Vec_IntPush.exit36 ] ; 3 uses
  %.02458 = phi ptr [ %.125, %bb.s ], [ %i.b, %Vec_IntPush.exit36 ] ; 2 uses
  %.val27 = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val27, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i37
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18
  switch i8 %i.ac, label %bb.e [
    i8 0, label %GiaHie_CountSymbs.exit39
    i8 91, label %GiaHie_CountSymbs.exit39
  ]

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1
  br label %bb.d, !llvm.loop !5

GiaHie_CountSymbs.exit39:                         ; preds = %bb.d, %bb.d
  %i.ad = trunc nuw nsw i64 %indvars.iv.i37 to i32 ; 3 uses
  %i.ae = icmp eq i32 %.060, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %GiaHie_CountSymbs.exit39
  %i.af = sext i32 %.060 to i64
  %i.ag = tail call i32 @strncmp(ptr noundef nonnull %i.aa, ptr noundef %.02458, i64 noundef %i.af) #24
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %GiaHie_CountSymbs.exit39
  %i.ah = icmp eq i32 %i.y, %i.x
  br i1 %i.ah, label %bb.h, label %Vec_IntPush.exit47

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp slt i32 %i.x, 16
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i45 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i45, label %bb.k, label %bb.j
end_hunk_0
