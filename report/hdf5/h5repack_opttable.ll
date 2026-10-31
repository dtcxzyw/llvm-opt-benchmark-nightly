Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5repack_opttable?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@options_table_init:bb.a
  store i32 -1, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 4408
  store i64 256, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 3384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ao, i8 0, i64 1024, i1 false), !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 4416
  store i32 -1, ptr %i.ap, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 5448
  store i64 256, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ar, i8 0, i64 1024, i1 false), !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 5456
  store i32 -1, ptr %i.as, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 6488
  store i64 256, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 5464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.au, i8 0, i64 1024, i1 false), !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 6760
  store i32 -1, ptr %i.av, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 6768
  store i64 -1, ptr %i.aw, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 6500
  store i32 -1, ptr %i.ax, align 4, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 6496
  store i32 0, ptr %i.ay, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.az = icmp samesign ult i64 %indvars.iv, 29
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.d, %bb.e, %bb.b, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @H5Epush2(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @options_table_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.b) #15
  tail call void @free(ptr noundef %0) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @options_add_layout(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 2 uses
  %i.d = add i32 %i.c, %1
  %i.e = load i32, ptr %3, align 8, !tbaa !26
  %.not = icmp ult i32 %i.d, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @aux_inctable(ptr noundef nonnull %3, i32 noundef %1)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.ab, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i32, ptr %i.b, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.h = phi i32 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ]
  %.not76 = icmp eq i32 %i.h, 0
  %.not126 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not76, label %.preheader, label %.preheader104

.preheader104:                                    ; preds = %bb.c
  br i1 %.not126, label %.loopexit, label %.preheader103.lr.ph

.preheader103.lr.ph:                              ; preds = %.preheader104
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 6500 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6504 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 6760 ; 6 uses
  %wide.trip.count137 = zext i32 %1 to i64
  %.pre.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !28
  br label %.preheader103

.preheader:                                       ; preds = %bb.c
  br i1 %.not126, label %.loopexit, label %.lr.ph122

.lr.ph122:                                        ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 6500
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6504 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 6760 ; 2 uses
  %wide.trip.count144 = zext i32 %1 to i64
  %.pre146 = load ptr, ptr %i.m, align 8, !tbaa !28
  br label %bb.x

.preheader103:                                    ; preds = %.preheader103.lr.ph, %aux_tblinsert_layout.exit86
  %.pre.pre = phi ptr [ %.pre.pre.pre, %.preheader103.lr.ph ], [ %.pre.pre147, %aux_tblinsert_layout.exit86 ] ; 6 uses
  %indvars.iv135 = phi i64 [ 0, %.preheader103.lr.ph ], [ %indvars.iv.next136, %aux_tblinsert_layout.exit86 ] ; 4 uses
  %.0118 = phi i1 [ false, %.preheader103.lr.ph ], [ %.1100, %aux_tblinsert_layout.exit86 ]
  %.068117 = phi i32 [ 0, %.preheader103.lr.ph ], [ %.169, %aux_tblinsert_layout.exit86 ] ; 5 uses
  %.pre.pre189 = ptrtoaddr ptr %.pre.pre to i64
  %i.q = load i32, ptr %i.b, align 4, !tbaa !27   ; 5 uses
  %.not125 = icmp eq i32 %i.q, 0
  br i1 %.not125, label %aux_tblinsert_layout.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader103
  %i.r = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %indvars.iv135 ; 3 uses
  %wide.trip.count = zext i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.s = getelementptr inbounds nuw [6776 x i8], ptr %.pre.pre, i64 %indvars.iv ; 4 uses
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.s) #17
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.v = trunc nuw i64 %indvars.iv to i32         ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 6760 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr @enable_error_stack, align 4, !tbaa !14
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !21 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  %i.ad = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr @H5E_tools_g, align 8, !tbaa !21
  %i.ag = load i64, ptr @H5E_tools_min_info_id_g, align 8, !tbaa !21
  %i.ah = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ab, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.options_add_layout, i32 noundef 202, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.r) #15 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.r) #18 ; 0 uses
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ak) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.j, align 4, !tbaa !19  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 6500 ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !19
  %i.an = icmp eq i32 %i.al, 2
  br i1 %i.an, label %bb.l, label %aux_tblinsert_layout.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -2
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.am, align 4, !tbaa !19
  store i32 -2, ptr %i.w, align 8, !tbaa !17
  br label %aux_tblinsert_layout.exit.thread

bb.n:                                             ; preds = %bb.l
  store i32 %i.ao, ptr %i.w, align 8, !tbaa !17
  %i.aq = load i32, ptr %i.l, align 8, !tbaa !17  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %aux_tblinsert_layout.exit.thread

.lr.ph.i:                                         ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 6504 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 5 uses
  %min.iters.check192 = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check192, label %scalar.ph191.preheader, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph.i
  %i.at = sub i64 %.pre.pre189, %i.a
  %i.au = mul nuw nsw i64 %indvars.iv, 6776
  %i.av = add i64 %i.at, %i.au
  %i.aw = add i64 %i.av, -1
  %diff.check190 = icmp ult i64 %i.aw, 31
  br i1 %diff.check190, label %scalar.ph191.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck188
  %n.vec194 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next199, %vector.body195 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index196 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load197 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !21
  %wide.load198 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index196 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load197, ptr %i.az, align 8, !tbaa !21
  store <2 x i64> %wide.load198, ptr %i.ba, align 8, !tbaa !21
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.bb, label %middle.block200, label %vector.body195, !llvm.loop !32

middle.block200:                                  ; preds = %vector.body195
  %cmp.n201 = icmp eq i64 %n.vec194, %wide.trip.count.i
  br i1 %cmp.n201, label %aux_tblinsert_layout.exit.thread, label %scalar.ph191.preheader

scalar.ph191.preheader:                           ; preds = %vector.memcheck188, %.lr.ph.i, %middle.block200
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.lr.ph.i ], [ %n.vec194, %middle.block200 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph191.prol.loopexit, label %scalar.ph191.prol

scalar.ph191.prol:                                ; preds = %scalar.ph191.preheader, %scalar.ph191.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph191.prol ], [ %indvars.iv.i.ph, %scalar.ph191.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph191.prol ], [ 0, %scalar.ph191.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.prol
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.prol
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph191.prol.loopexit, label %scalar.ph191.prol, !llvm.loop !33

scalar.ph191.prol.loopexit:                       ; preds = %scalar.ph191.prol, %scalar.ph191.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph191.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph191.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %aux_tblinsert_layout.exit.thread, label %scalar.ph191

scalar.ph191:                                     ; preds = %scalar.ph191.prol.loopexit, %scalar.ph191
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph191 ], [ %indvars.iv.i.unr, %scalar.ph191.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !21
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.1
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.1
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !21
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.2
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.2
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %aux_tblinsert_layout.exit.thread, label %scalar.ph191, !llvm.loop !34

bb.o:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %aux_tblinsert_layout.exit, label %bb.d, !llvm.loop !35

aux_tblinsert_layout.exit:                        ; preds = %bb.o, %.preheader103
  br i1 %.0118, label %aux_tblinsert_layout.exit.thread, label %bb.p

bb.p:                                             ; preds = %aux_tblinsert_layout.exit
  %i.bt = add i32 %i.q, %.068117
  %i.bu = add i32 %.068117, 1                     ; 6 uses
  %i.bv = zext i32 %i.bt to i64                   ; 3 uses
  %i.bw = getelementptr inbounds nuw [6776 x i8], ptr %.pre.pre, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %indvars.iv135
  %i.by = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bw, i64 noundef 256, ptr noundef nonnull @.str.4, ptr noundef %i.bx) #15 ; 0 uses
  %.val79 = load ptr, ptr %i.i, align 8, !tbaa !28 ; 8 uses
  %.val79174 = ptrtoaddr ptr %.val79 to i64
  %i.bz = load i32, ptr %i.j, align 4, !tbaa !19  ; 2 uses
  %i.ca = getelementptr inbounds nuw [6776 x i8], ptr %.val79, i64 %i.bv ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6500 ; 2 uses
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !19
  %i.cc = icmp eq i32 %i.bz, 2
  br i1 %i.cc, label %bb.q, label %aux_tblinsert_layout.exit86

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -2
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.cb, align 4, !tbaa !19
  br label %aux_tblinsert_layout.exit86.sink.split

bb.s:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 6760
  store i32 %i.cd, ptr %i.cf, align 8, !tbaa !17
  %i.cg = load i32, ptr %i.l, align 8, !tbaa !17  ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i81, label %aux_tblinsert_layout.exit86

.lr.ph.i81:                                       ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 6504 ; 6 uses
  %wide.trip.count.i82 = zext nneg i32 %i.cg to i64 ; 5 uses
  %min.iters.check177 = icmp ult i32 %i.cg, 8
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.i81
  %i.cj = mul nuw nsw i64 %i.bv, 6776
  %i.ck = add i64 %i.cj, %.val79174
  %4 = sub i64 %i.a, %i.ck
  %diff.check181 = icmp ugt i64 %4, -32
  br i1 %diff.check181, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck173
  %n.vec179 = and i64 %wide.trip.count.i82, 2147483644 ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next184, %vector.body180 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index181 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load182 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !21
  %wide.load183 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index181 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x i64> %wide.load182, ptr %i.cn, align 8, !tbaa !21
  store <2 x i64> %wide.load183, ptr %i.co, align 8, !tbaa !21
  %index.next184 = add nuw i64 %index181, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.cp, label %middle.block185, label %vector.body180, !llvm.loop !36

middle.block185:                                  ; preds = %vector.body180
  %cmp.n186 = icmp eq i64 %n.vec179, %wide.trip.count.i82
  br i1 %cmp.n186, label %aux_tblinsert_layout.exit86, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck173, %.lr.ph.i81, %middle.block185
  %indvars.iv.i83.ph = phi i64 [ 0, %vector.memcheck173 ], [ 0, %.lr.ph.i81 ], [ %n.vec179, %middle.block185 ] ; 3 uses
  %xtraiter225 = and i64 %wide.trip.count.i82, 3  ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol

scalar.ph176.prol:                                ; preds = %scalar.ph176.preheader, %scalar.ph176.prol
  %indvars.iv.i83.prol = phi i64 [ %indvars.iv.next.i84.prol, %scalar.ph176.prol ], [ %indvars.iv.i83.ph, %scalar.ph176.preheader ] ; 3 uses
  %prol.iter227 = phi i64 [ %prol.iter227.next, %scalar.ph176.prol ], [ 0, %scalar.ph176.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i83.prol
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i83.prol
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !21
  %indvars.iv.next.i84.prol = add nuw nsw i64 %indvars.iv.i83.prol, 1 ; 2 uses
  %prol.iter227.next = add i64 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i64 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol, !llvm.loop !37

scalar.ph176.prol.loopexit:                       ; preds = %scalar.ph176.prol, %scalar.ph176.preheader
  %indvars.iv.i83.unr = phi i64 [ %indvars.iv.i83.ph, %scalar.ph176.preheader ], [ %indvars.iv.next.i84.prol, %scalar.ph176.prol ]
  %i.ct = sub nsw i64 %indvars.iv.i83.ph, %wide.trip.count.i82
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %aux_tblinsert_layout.exit86, label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84.3, %scalar.ph176 ], [ %indvars.iv.i83.unr, %scalar.ph176.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i83
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i83
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !21
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i84
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !21
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i84
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !21
  %indvars.iv.next.i84.1 = add nuw nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i84.1
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i84.1
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !21
  %indvars.iv.next.i84.2 = add nuw nsw i64 %indvars.iv.i83, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i84.2
  %i.df = load i64, ptr %i.de, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i84.2
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !21
  %indvars.iv.next.i84.3 = add nuw nsw i64 %indvars.iv.i83, 4 ; 2 uses
  %exitcond.not.i85.3 = icmp eq i64 %indvars.iv.next.i84.3, %wide.trip.count.i82
  br i1 %exitcond.not.i85.3, label %aux_tblinsert_layout.exit86, label %scalar.ph176, !llvm.loop !38

aux_tblinsert_layout.exit.thread:                 ; preds = %scalar.ph191.prol.loopexit, %scalar.ph191, %middle.block200, %bb.n, %bb.m, %bb.k, %aux_tblinsert_layout.exit
  %.072108 = phi i32 [ %i.q, %aux_tblinsert_layout.exit ], [ %i.v, %bb.n ], [ %i.v, %bb.m ], [ %i.v, %bb.k ], [ %i.v, %middle.block200 ], [ %i.v, %scalar.ph191 ], [ %i.v, %scalar.ph191.prol.loopexit ]
  %i.dh = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %indvars.iv135 ; 2 uses
  %i.di = zext i32 %.072108 to i64
  %i.dj = getelementptr inbounds nuw [6776 x i8], ptr %.pre.pre, i64 %i.di
  %i.dk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dh, ptr noundef nonnull dereferenceable(1) %i.dj) #17
  %.not77 = icmp eq i32 %i.dk, 0
  br i1 %.not77, label %aux_tblinsert_layout.exit86, label %bb.t

bb.t:                                             ; preds = %aux_tblinsert_layout.exit.thread
  %i.dl = add i32 %i.q, %.068117
  %i.dm = add i32 %.068117, 1                     ; 6 uses
  %i.dn = zext i32 %i.dl to i64                   ; 3 uses
  %i.do = getelementptr inbounds nuw [6776 x i8], ptr %.pre.pre, i64 %i.dn
  %i.dp = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.do, i64 noundef 256, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.dh) #15 ; 0 uses
  %.val78 = load ptr, ptr %i.i, align 8, !tbaa !28 ; 8 uses
  %.val78171 = ptrtoaddr ptr %.val78 to i64
  %i.dq = load i32, ptr %i.j, align 4, !tbaa !19  ; 2 uses
  %i.dr = getelementptr inbounds nuw [6776 x i8], ptr %.val78, i64 %i.dn ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 6500 ; 2 uses
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !19
  %i.dt = icmp eq i32 %i.dq, 2
  br i1 %i.dt, label %bb.u, label %aux_tblinsert_layout.exit86

bb.u:                                             ; preds = %bb.t
  %i.du = load i32, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %i.dv = icmp eq i32 %i.du, -2
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %i.ds, align 4, !tbaa !19
  br label %aux_tblinsert_layout.exit86.sink.split

bb.w:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 6760
  store i32 %i.du, ptr %i.dw, align 8, !tbaa !17
  %i.dx = load i32, ptr %i.l, align 8, !tbaa !17  ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i87, label %aux_tblinsert_layout.exit86

.lr.ph.i87:                                       ; preds = %bb.w
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 6504 ; 6 uses
  %wide.trip.count.i88 = zext nneg i32 %i.dx to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.dx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i87
  %i.ea = mul nuw nsw i64 %i.dn, 6776
  %i.eb = add i64 %i.ea, %.val78171
  %5 = sub i64 %i.a, %i.eb
  %diff.check = icmp ugt i64 %5, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i88, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load = load <2 x i64>, ptr %i.ec, align 8, !tbaa !21
  %wide.load172 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %wide.load, ptr %i.ee, align 8, !tbaa !21
  store <2 x i64> %wide.load172, ptr %i.ef, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i88
  br i1 %cmp.n, label %aux_tblinsert_layout.exit86, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i87, %middle.block
  %indvars.iv.i89.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i87 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter228 = and i64 %wide.trip.count.i88, 3  ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i89.prol = phi i64 [ %indvars.iv.next.i90.prol, %scalar.ph.prol ], [ %indvars.iv.i89.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i89.prol
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.i89.prol
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !21
  %indvars.iv.next.i90.prol = add nuw nsw i64 %indvars.iv.i89.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !40

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i89.unr = phi i64 [ %indvars.iv.i89.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i90.prol, %scalar.ph.prol ]
  %i.ek = sub nsw i64 %indvars.iv.i89.ph, %wide.trip.count.i88
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %aux_tblinsert_layout.exit86, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90.3, %scalar.ph ], [ %indvars.iv.i89.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i89
  %i.en = load i64, ptr %i.em, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.i89
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !21
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i90
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next.i90
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !21
  %indvars.iv.next.i90.1 = add nuw nsw i64 %indvars.iv.i89, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i90.1
  %i.et = load i64, ptr %i.es, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next.i90.1
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !21
  %indvars.iv.next.i90.2 = add nuw nsw i64 %indvars.iv.i89, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i90.2
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next.i90.2
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !21
  %indvars.iv.next.i90.3 = add nuw nsw i64 %indvars.iv.i89, 4 ; 2 uses
  %exitcond.not.i91.3 = icmp eq i64 %indvars.iv.next.i90.3, %wide.trip.count.i88
  br i1 %exitcond.not.i91.3, label %aux_tblinsert_layout.exit86, label %scalar.ph, !llvm.loop !41

aux_tblinsert_layout.exit86.sink.split:           ; preds = %bb.r, %bb.v
  %.sink165 = phi ptr [ %i.dr, %bb.v ], [ %i.ca, %bb.r ]
  %.pre.pre147.ph = phi ptr [ %.val78, %bb.v ], [ %.val79, %bb.r ]
  %.1100.ph = phi i1 [ true, %bb.v ], [ false, %bb.r ]
  %.169.ph = phi i32 [ %i.dm, %bb.v ], [ %i.bu, %bb.r ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink165, i64 6760
  store i32 -2, ptr %i.ey, align 8, !tbaa !17
  br label %aux_tblinsert_layout.exit86

aux_tblinsert_layout.exit86:                      ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block185, %middle.block, %aux_tblinsert_layout.exit86.sink.split, %bb.w, %bb.t, %bb.s, %bb.p, %aux_tblinsert_layout.exit.thread
  %.pre.pre147 = phi ptr [ %.pre.pre147.ph, %aux_tblinsert_layout.exit86.sink.split ], [ %.pre.pre, %aux_tblinsert_layout.exit.thread ], [ %.val79, %bb.p ], [ %.val78, %bb.w ], [ %.val79, %bb.s ], [ %.val78, %bb.t ], [ %.val78, %middle.block ], [ %.val79, %middle.block185 ], [ %.val78, %scalar.ph.prol.loopexit ], [ %.val78, %scalar.ph ], [ %.val79, %scalar.ph176 ], [ %.val79, %scalar.ph176.prol.loopexit ]
  %.1100 = phi i1 [ %.1100.ph, %aux_tblinsert_layout.exit86.sink.split ], [ true, %aux_tblinsert_layout.exit.thread ], [ false, %bb.p ], [ true, %bb.w ], [ false, %bb.s ], [ true, %bb.t ], [ true, %middle.block ], [ false, %middle.block185 ], [ true, %scalar.ph.prol.loopexit ], [ true, %scalar.ph ], [ false, %scalar.ph176 ], [ false, %scalar.ph176.prol.loopexit ]
  %.169 = phi i32 [ %.169.ph, %aux_tblinsert_layout.exit86.sink.split ], [ %.068117, %aux_tblinsert_layout.exit.thread ], [ %i.bu, %bb.p ], [ %i.dm, %bb.w ], [ %i.bu, %bb.s ], [ %i.dm, %bb.t ], [ %i.dm, %middle.block ], [ %i.bu, %middle.block185 ], [ %i.dm, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ], [ %i.bu, %scalar.ph176 ], [ %i.bu, %scalar.ph176.prol.loopexit ] ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %.preheader103, !llvm.loop !42

bb.x:                                             ; preds = %.lr.ph122, %aux_tblinsert_layout.exit98
  %i.ez = phi ptr [ %.pre146, %.lr.ph122 ], [ %.val, %aux_tblinsert_layout.exit98 ]
  %indvars.iv139 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next140, %aux_tblinsert_layout.exit98 ] ; 3 uses
  %indvars141 = trunc i64 %indvars.iv139 to i32
  %i.fa = load i32, ptr %i.b, align 4, !tbaa !27
  %i.fb = add i32 %i.fa, %indvars141
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = getelementptr inbounds nuw [6776 x i8], ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %indvars.iv139
  %i.ff = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fd, i64 noundef 256, ptr noundef nonnull @.str.4, ptr noundef %i.fe) #15 ; 0 uses
  %.val = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %.val206 = ptrtoaddr ptr %.val to i64
  %i.fg = load i32, ptr %i.n, align 4, !tbaa !19  ; 2 uses
  %i.fh = getelementptr inbounds nuw [6776 x i8], ptr %.val, i64 %i.fc ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 6500 ; 2 uses
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !19
  %i.fj = icmp eq i32 %i.fg, 2
  br i1 %i.fj, label %bb.y, label %aux_tblinsert_layout.exit98

bb.y:                                             ; preds = %bb.x
  %i.fk = load i32, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  %i.fl = icmp eq i32 %i.fk, -2
  br i1 %i.fl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.fi, align 4, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 6760
  store i32 -2, ptr %i.fm, align 8, !tbaa !17
  br label %aux_tblinsert_layout.exit98

bb.aa:                                            ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 6760
  store i32 %i.fk, ptr %i.fn, align 8, !tbaa !17
  %i.fo = load i32, ptr %i.p, align 8, !tbaa !17  ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i93, label %aux_tblinsert_layout.exit98

.lr.ph.i93:                                       ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 6504 ; 6 uses
  %wide.trip.count.i94 = zext nneg i32 %i.fo to i64 ; 5 uses
  %min.iters.check209 = icmp ult i32 %i.fo, 8
  br i1 %min.iters.check209, label %scalar.ph208.preheader, label %vector.memcheck205

vector.memcheck205:                               ; preds = %.lr.ph.i93
  %i.fr = mul nuw nsw i64 %i.fc, 6776
  %i.fs = add i64 %i.fr, %.val206
  %6 = sub i64 %i.a, %i.fs
  %diff.check219 = icmp ugt i64 %6, -32
  br i1 %diff.check219, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck205
  %n.vec211 = and i64 %wide.trip.count.i94, 2147483644 ; 3 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body212 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index213 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load214 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !21
  %wide.load215 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !21
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index213 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <2 x i64> %wide.load214, ptr %i.fv, align 8, !tbaa !21
  store <2 x i64> %wide.load215, ptr %i.fw, align 8, !tbaa !21
  %index.next216 = add nuw i64 %index213, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.fx, label %middle.block217, label %vector.body212, !llvm.loop !43

middle.block217:                                  ; preds = %vector.body212
  %cmp.n218 = icmp eq i64 %n.vec211, %wide.trip.count.i94
  br i1 %cmp.n218, label %aux_tblinsert_layout.exit98, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %vector.memcheck205, %.lr.ph.i93, %middle.block217
  %indvars.iv.i95.ph = phi i64 [ 0, %vector.memcheck205 ], [ 0, %.lr.ph.i93 ], [ %n.vec211, %middle.block217 ] ; 3 uses
  %xtraiter231 = and i64 %wide.trip.count.i94, 3  ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader, %scalar.ph208.prol
  %indvars.iv.i95.prol = phi i64 [ %indvars.iv.next.i96.prol, %scalar.ph208.prol ], [ %indvars.iv.i95.ph, %scalar.ph208.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph208.prol ], [ 0, %scalar.ph208.preheader ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i95.prol
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i95.prol
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !21
  %indvars.iv.next.i96.prol = add nuw nsw i64 %indvars.iv.i95.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol, !llvm.loop !44

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %indvars.iv.i95.unr = phi i64 [ %indvars.iv.i95.ph, %scalar.ph208.preheader ], [ %indvars.iv.next.i96.prol, %scalar.ph208.prol ]
  %i.gb = sub nsw i64 %indvars.iv.i95.ph, %wide.trip.count.i94
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %aux_tblinsert_layout.exit98, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i96.3, %scalar.ph208 ], [ %indvars.iv.i95.unr, %scalar.ph208.prol.loopexit ] ; 6 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i95
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i95
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !21
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i96
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i96
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !21
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i95, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i96.1
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i96.1
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !21
  %indvars.iv.next.i96.2 = add nuw nsw i64 %indvars.iv.i95, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i96.2
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !21
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i96.2
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !21
  %indvars.iv.next.i96.3 = add nuw nsw i64 %indvars.iv.i95, 4 ; 2 uses
  %exitcond.not.i97.3 = icmp eq i64 %indvars.iv.next.i96.3, %wide.trip.count.i94
  br i1 %exitcond.not.i97.3, label %aux_tblinsert_layout.exit98, label %scalar.ph208, !llvm.loop !45

aux_tblinsert_layout.exit98:                      ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block217, %bb.x, %bb.z, %bb.aa
  %exitcond145.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit, label %bb.x, !llvm.loop !46

.loopexit:                                        ; preds = %aux_tblinsert_layout.exit86, %aux_tblinsert_layout.exit98, %.preheader104, %.preheader
  %.3 = phi i32 [ %1, %aux_tblinsert_layout.exit98 ], [ 0, %.preheader ], [ 0, %.preheader104 ], [ %.169, %aux_tblinsert_layout.exit86 ]
  %i.gp = load i32, ptr %i.b, align 4, !tbaa !27
  %i.gq = add i32 %i.gp, %.3
  store i32 %i.gq, ptr %i.b, align 4, !tbaa !27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %.loopexit
  %.073 = phi i32 [ 0, %.loopexit ], [ -1, %bb.b ]
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @aux_inctable(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26
  %i.b = add i32 %i.a, %1                         ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = zext i32 %i.b to i64
  %i.f = mul nuw nsw i64 %i.e, 6776
  %i.g = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.f) #20 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @enable_error_stack, align 4, !tbaa !14
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !21 ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  %i.m = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @H5E_tools_g, align 8, !tbaa !21
  %i.p = load i64, ptr @H5E_tools_min_info_id_g, align 8, !tbaa !21
  %i.q = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.aux_inctable, i32 noundef 109, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.1) #15 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %i.r) #16 ; 0 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc = tail call i32 @fputc(i32 10, ptr %i.s) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.c, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27   ; 2 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !26
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.x = zext i32 %i.u to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw [6776 x i8], ptr %i.y, i64 %indvars.iv ; 23 uses
  store i8 0, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  store i32 -1, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1288
  store i64 256, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ac, i8 0, i64 1024, i1 false), !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1296
  store i32 -1, ptr %i.ad, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 2328
  store i64 256, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.af, i8 0, i64 1024, i1 false), !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2336
  store i32 -1, ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 3368
  store i64 256, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 2344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ai, i8 0, i64 1024, i1 false), !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 3376
  store i32 -1, ptr %i.aj, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4408
  store i64 256, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 3384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.al, i8 0, i64 1024, i1 false), !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 4416
  store i32 -1, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 5448
  store i64 256, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 4424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ao, i8 0, i64 1024, i1 false), !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 5456
  store i32 -1, ptr %i.ap, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 6488
  store i64 256, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 5464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ar, i8 0, i64 1024, i1 false), !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 6760
  store i32 -1, ptr %i.as, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 6768
  store i64 -1, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 6500
  store i32 -1, ptr %i.au, align 4, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 6496
  store i32 0, ptr %i.av, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !26
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.b, %bb.e, %bb.d
  %.014 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ 0, %bb.f ], [ 0, %.lr.ph ]
  ret i32 %.014
}

end_hunk_0
