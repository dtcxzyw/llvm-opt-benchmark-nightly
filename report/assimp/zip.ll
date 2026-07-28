inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 62
begin_hunk_0_@mz_zip_reader_sort_central_dir_offsets_by_filename:bb.a
  %.not58 = icmp eq i16 %i.dk, 0
  br i1 %.not58, label %mz_zip_reader_filename_less.exit104, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 46
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.j
  %.036.i9126 = phi ptr [ %i.ds, %bb.j ], [ %i.di, %.lr.ph28.preheader ] ; 3 uses
  %.037.i9025 = phi ptr [ %i.dt, %bb.j ], [ %i.dn, %.lr.ph28.preheader ] ; 2 uses
  %i.do = load i8, ptr %.036.i9126, align 1       ; 3 uses
  %i.dp = add i8 %i.do, -65
  %or.cond.i97 = icmp ult i8 %i.dp, 26
  %narrow.i103 = add nuw nsw i8 %i.do, 32
  %spec.select2 = select i1 %or.cond.i97, i8 %narrow.i103, i8 %i.do ; 3 uses
  %i.dq = load i8, ptr %.037.i9025, align 1       ; 3 uses
  %i.dr = add i8 %i.dq, -65
  %or.cond43.i99 = icmp ult i8 %i.dr, 26
  %narrow40.i102 = add nuw nsw i8 %i.dq, 32
  %.in41.i100 = select i1 %or.cond43.i99, i8 %narrow40.i102, i8 %i.dq ; 2 uses
  %.not.i101 = icmp eq i8 %spec.select2, %.in41.i100
  br i1 %.not.i101, label %bb.j, label %mz_zip_reader_filename_less.exit104.loopexit

bb.j:                                             ; preds = %.lr.ph28
  %i.ds = getelementptr inbounds nuw i8, ptr %.036.i9126, i64 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.037.i9025, i64 1
  %i.du = icmp ult ptr %i.ds, %i.dm
  br i1 %i.du, label %.lr.ph28, label %mz_zip_reader_filename_less.exit104.loopexit

mz_zip_reader_filename_less.exit104.loopexit:     ; preds = %bb.j, %.lr.ph28
  %.in41.i100.lcssa = phi i8 [ %spec.select2, %bb.j ], [ %.in41.i100, %.lr.ph28 ]
  %.036.i91.lcssa.ph = phi ptr [ %i.ds, %bb.j ], [ %.036.i9126, %.lr.ph28 ]
  %i.dv = icmp ult i8 %spec.select2, %.in41.i100.lcssa
  br label %mz_zip_reader_filename_less.exit104

mz_zip_reader_filename_less.exit104:              ; preds = %mz_zip_reader_filename_less.exit104.loopexit, %bb.i
  %.036.i91.lcssa = phi ptr [ %i.di, %bb.i ], [ %.036.i91.lcssa.ph, %mz_zip_reader_filename_less.exit104.loopexit ]
  %.135.i94 = phi i1 [ false, %bb.i ], [ %i.dv, %mz_zip_reader_filename_less.exit104.loopexit ]
  %i.dw = icmp eq ptr %.036.i91.lcssa, %i.dm
  %.in42.i96 = select i1 %i.dw, i1 %i.dj, i1 %.135.i94
  %i.dx = zext i1 %.in42.i96 to i64
  br label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_filename_less.exit104, %.lr.ph50
  %i.dy = phi i64 [ 0, %.lr.ph50 ], [ %i.dx, %mz_zip_reader_filename_less.exit104 ]
  %i.dz = add i64 %i.dy, %i.cm                    ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.07548
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dz ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre65, i64 %i.cl
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.ef ; 2 uses
  %i.eh = zext i32 %i.ec to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.pre65, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %i.en = load i16, ptr %i.em, align 1            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 28
  %i.ep = load i16, ptr %i.eo, align 1            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 46 ; 3 uses
  %i.er = icmp uge i16 %i.en, %i.ep
  %i.es = tail call i16 @llvm.umin.i16(i16 %i.en, i16 %i.ep) ; 2 uses
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et ; 2 uses
  %.not59 = icmp eq i16 %i.es, 0
  br i1 %.not59, label %mz_zip_reader_filename_less.exit, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 46
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.l
  %.036.i37 = phi ptr [ %i.fa, %bb.l ], [ %i.eq, %.lr.ph39.preheader ] ; 3 uses
  %.037.i36 = phi ptr [ %i.fb, %bb.l ], [ %i.ev, %.lr.ph39.preheader ] ; 2 uses
  %i.ew = load i8, ptr %.036.i37, align 1         ; 3 uses
  %i.ex = add i8 %i.ew, -65
  %or.cond.i = icmp ult i8 %i.ex, 26
  %narrow.i = add nuw nsw i8 %i.ew, 32
  %spec.select3 = select i1 %or.cond.i, i8 %narrow.i, i8 %i.ew ; 3 uses
  %i.ey = load i8, ptr %.037.i36, align 1         ; 3 uses
  %i.ez = add i8 %i.ey, -65
  %or.cond43.i = icmp ult i8 %i.ez, 26
  %narrow40.i = add nuw nsw i8 %i.ey, 32
  %.in41.i = select i1 %or.cond43.i, i8 %narrow40.i, i8 %i.ey ; 2 uses
  %.not.i = icmp eq i8 %spec.select3, %.in41.i
  br i1 %.not.i, label %bb.l, label %mz_zip_reader_filename_less.exit.loopexit

bb.l:                                             ; preds = %.lr.ph39
  %i.fa = getelementptr inbounds nuw i8, ptr %.036.i37, i64 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.037.i36, i64 1
  %i.fc = icmp ult ptr %i.fa, %i.eu
  br i1 %i.fc, label %.lr.ph39, label %mz_zip_reader_filename_less.exit.loopexit

mz_zip_reader_filename_less.exit.loopexit:        ; preds = %bb.l, %.lr.ph39
  %.in41.i.lcssa = phi i8 [ %spec.select3, %bb.l ], [ %.in41.i, %.lr.ph39 ]
  %.036.i.lcssa.ph = phi ptr [ %i.fa, %bb.l ], [ %.036.i37, %.lr.ph39 ]
  %i.fd = icmp uge i8 %spec.select3, %.in41.i.lcssa
  br label %mz_zip_reader_filename_less.exit

mz_zip_reader_filename_less.exit:                 ; preds = %mz_zip_reader_filename_less.exit.loopexit, %bb.k
  %.036.i.lcssa = phi ptr [ %i.eq, %bb.k ], [ %.036.i.lcssa.ph, %mz_zip_reader_filename_less.exit.loopexit ]
  %.135.i = phi i1 [ true, %bb.k ], [ %i.fd, %mz_zip_reader_filename_less.exit.loopexit ]
  %i.fe = icmp eq ptr %.036.i.lcssa, %i.eu
  %.in42.i = select i1 %i.fe, i1 %i.er, i1 %.135.i
  br i1 %.in42.i, label %mz_zip_reader_filename_less.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_filename_less.exit
  store i32 %i.ec, ptr %i.ea, align 4
  store i32 %i.cj, ptr %i.eb, align 4
  %i.ff = shl i64 %i.dz, 1                        ; 2 uses
  %i.fg = or disjoint i64 %i.ff, 1                ; 2 uses
  %.not88 = icmp ult i64 %i.fg, %indvars.iv60
  br i1 %.not88, label %.lr.ph50, label %mz_zip_reader_filename_less.exit._crit_edge

mz_zip_reader_filename_less.exit._crit_edge:      ; preds = %bb.m, %mz_zip_reader_filename_less.exit, %.lr.ph55
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1 ; 2 uses
  %i.fh = and i64 %indvars.iv.next61, 4294967295
  %.not87 = icmp eq i64 %i.fh, 0
  br i1 %.not87, label %.loopexit, label %.lr.ph55

.loopexit:                                        ; preds = %mz_zip_reader_filename_less.exit._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_array_ensure_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %i.c = icmp ult i64 %.0, %2
  %i.d = shl i64 %.0, 1
  br i1 %i.c, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b
  %.1 = phi i64 [ %2, %bb.b ], [ %.0, %bb.d ]     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #36 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8
  store i64 %.1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a, %bb.e
  %.018 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.018
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -21, 1) i32 @zip_entry_finalize(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 -1, 4294967296) %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 8) #40 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %.preheader62

.preheader62:                                     ; preds = %bb.a
  %i.b = icmp sgt i64 %2, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader62
  %scevgep.i = getelementptr i8, ptr %i.a, i64 8
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %zip_sort.exit.thread
  %.04963 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %zip_sort.exit.thread ] ; 14 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04963 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04963
  store i64 %i.e, ptr %i.f, align 8
  %.not100 = icmp eq i64 %.04963, 0
  br i1 %.not100, label %zip_index_next.exit.i, label %.lr.ph83

bb.b:                                             ; preds = %.lr.ph83
  %i.g = icmp sgt i64 %.0.in.i.i82, 1
  br i1 %i.g, label %.lr.ph83, label %zip_index_next.exit.i

.lr.ph83:                                         ; preds = %.lr.ph.a, %bb.b
  %.0.in.i.i82 = phi i64 [ %.0.i.i, %bb.b ], [ %.04963, %.lr.ph.a ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in.i.i82, -1          ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i.i
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %zip_index_next.exit.i, label %bb.b

zip_index_next.exit.i:                            ; preds = %bb.b, %.lr.ph83, %.lr.ph.a
  %.010.i.i = phi i64 [ 0, %.lr.ph.a ], [ 0, %bb.b ], [ %.0.in.i.i82, %.lr.ph83 ] ; 11 uses
  %.not.i = icmp eq i64 %.010.i.i, %.04963
  br i1 %.not.i, label %zip_sort.exit.thread, label %bb.c

bb.c:                                             ; preds = %zip_index_next.exit.i
  %i.k = icmp samesign ugt i64 %.04963, %.010.i.i
  br i1 %i.k, label %vector.body.a, label %.loopexit

vector.body.a:                                    ; preds = %bb.c
  %3 = shl nuw nsw i64 %.010.i.i, 3               ; 2 uses
  %i.l = getelementptr i8, ptr %scevgep.i, i64 %3
  %i.m = getelementptr i8, ptr %i.a, i64 %3
  %4 = sub nuw nsw i64 %.04963, %.010.i.i
  %5 = shl nsw i64 %4, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.m, i64 %5, i1 false)
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010.i.i
  store i64 %i.e, ptr %6, align 8
  br label %.lr.ph.i59.preheader

.loopexit:                                        ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010.i.i
  store i64 %i.e, ptr %i.n, align 8
  %.not61 = icmp eq i64 %.04963, 0
  br i1 %.not61, label %zip_index_update.exit, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %vector.body.a, %.loopexit
  %xtraiter = and i64 %.04963, 1
  %i.o = icmp eq i64 %.04963, 1
  br i1 %i.o, label %.lr.ph.i59.epil.preheader, label %.lr.ph.i59.preheader.new

.lr.ph.i59.preheader.new:                         ; preds = %.lr.ph.i59.preheader
  %unroll_iter = and i64 %.04963, 9223372036854775806
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.f, %.lr.ph.i59.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i59.preheader.new ], [ %i.w, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i59.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not.i60 = icmp slt i64 %i.q, %.010.i.i
  br i1 %.not.i60, label %.lr.ph.i59.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i59
  %i.r = add nuw nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  br label %.lr.ph.i59.1

.lr.ph.i59.1:                                     ; preds = %bb.d, %.lr.ph.i59
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not.i60.1 = icmp slt i64 %i.u, %.010.i.i
  br i1 %.not.i60.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i59.1
  %i.v = add nuw nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i59.1
  %i.w = add nuw nsw i64 %.012.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %zip_index_update.exit.loopexit.unr-lcssa, label %.lr.ph.i59

zip_index_update.exit.loopexit.unr-lcssa:         ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zip_index_update.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %zip_index_update.exit.loopexit.unr-lcssa, %.lr.ph.i59.preheader
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i59.preheader ], [ %i.w, %zip_index_update.exit.loopexit.unr-lcssa ]
  %lcmp.mod103 = trunc i64 %.04963 to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i.epil.init ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.not.i60.epil = icmp slt i64 %i.y, %.010.i.i
  br i1 %.not.i60.epil, label %zip_index_update.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i59.epil.preheader
  %i.z = add nuw nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8
  br label %zip_index_update.exit

zip_index_update.exit:                            ; preds = %zip_index_update.exit.loopexit.unr-lcssa, %bb.g, %.lr.ph.i59.epil.preheader, %.loopexit
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.010.i.i
  store i64 %.04963, ptr %i.aa, align 8
  br label %zip_sort.exit.thread

zip_sort.exit.thread:                             ; preds = %zip_index_next.exit.i, %zip_index_update.exit
  store i64 %.010.i.i, ptr %i.c, align 8
  %i.ab = add nuw nsw i64 %.04963, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.a

._crit_edge:                                      ; preds = %zip_sort.exit.thread, %.preheader62
  %i.ac = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 8) #40 ; 11 uses
  %.not56 = icmp eq ptr %i.ac, null
  br i1 %.not56, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ad = add nsw i64 %2, -1                      ; 8 uses
  %i.ae = icmp sgt i64 %2, 1
  br i1 %i.ae, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.preheader
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  %min.iters.check88 = icmp ult i64 %2, 5
  br i1 %min.iters.check88, label %.lr.ph65.preheader101, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph65.preheader
  %n.vec91 = and i64 %i.ad, -4                    ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph89 ], [ %wide.load95, %vector.body92 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index93 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %wide.load94 = load <2 x i64>, ptr %i.ag, align 8 ; 3 uses
  %wide.load95 = load <2 x i64>, ptr %i.ah, align 8 ; 4 uses
  %i.ai = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load94, <2 x i32> <i32 1, i32 2>
  %i.aj = shufflevector <2 x i64> %wide.load94, <2 x i64> %wide.load95, <2 x i32> <i32 1, i32 2>
  %i.ak = sub <2 x i64> %wide.load94, %i.ai
  %i.al = sub <2 x i64> %wide.load95, %i.aj
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index93 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 8
  store <2 x i64> %i.al, ptr %i.an, align 8
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.ao, label %middle.block97, label %vector.body92, !llvm.loop !48

middle.block97:                                   ; preds = %vector.body92
  %vector.recur.extract = extractelement <2 x i64> %wide.load95, i64 1
  %cmp.n98 = icmp eq i64 %i.ad, %n.vec91
  br i1 %cmp.n98, label %._crit_edge66.thread, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block97
  %.ph = phi i64 [ %.pre, %.lr.ph65.preheader ], [ %vector.recur.extract, %middle.block97 ]
  %.15064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec91, %middle.block97 ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %i.ap = phi i64 [ %i.as, %.lr.ph65 ], [ %.ph, %.lr.ph65.preheader101 ]
  %.15064 = phi i64 [ %i.aq, %.lr.ph65 ], [ %.15064.ph, %.lr.ph65.preheader101 ] ; 2 uses
  %i.aq = add nuw nsw i64 %.15064, 1              ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = sub i64 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.15064
  store i64 %i.at, ptr %i.au, align 8
  %exitcond73.not = icmp eq i64 %i.aq, %i.ad
  br i1 %exitcond73.not, label %._crit_edge66.thread, label %.lr.ph65, !llvm.loop !49

._crit_edge66.thread:                             ; preds = %.lr.ph65, %middle.block97
  %i.av = load i64, ptr %0, align 8
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ad
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  store i64 %i.ay, ptr %i.az, align 8
  br label %.lr.ph69.preheader

._crit_edge66:                                    ; preds = %.preheader
  %i.ba = load i64, ptr %0, align 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ad
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  store i64 %i.bd, ptr %i.be, align 8
  br i1 %i.b, label %.lr.ph69.preheader, label %._crit_edge70

.lr.ph69.preheader:                               ; preds = %._crit_edge66.thread, %._crit_edge66
  %xtraiter104 = and i64 %2, 3                    ; 3 uses
  %i.bf = icmp ult i64 %i.ad, 3
  br i1 %i.bf, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter107 = and i64 %2, -4
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %.267 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %i.cd, %.lr.ph69 ] ; 5 uses
  %niter108 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %niter108.next.3, %.lr.ph69 ]
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  store i64 %i.cb, ptr %i.cc, align 8
  %i.cd = add nuw nsw i64 %.267, 4                ; 2 uses
  %niter108.next.3 = add i64 %niter108, 4         ; 2 uses
  %niter108.ncmp.3 = icmp eq i64 %niter108.next.3, %unroll_iter107
  br i1 %niter108.ncmp.3, label %._crit_edge70.loopexit.unr-lcssa, label %.lr.ph69

._crit_edge70.loopexit.unr-lcssa:                 ; preds = %.lr.ph69
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %._crit_edge70, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %._crit_edge70.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.267.epil.init = phi i64 [ 0, %.lr.ph69.preheader ], [ %i.cd, %._crit_edge70.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter104, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %.267.epil = phi i64 [ %i.cj, %.lr.ph69.epil ], [ %.267.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph69.epil ], [ 0, %.lr.ph69.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267.epil ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = add nuw nsw i64 %.267.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter104
  br i1 %epil.iter.cmp.not, label %._crit_edge70, label %.lr.ph69.epil, !llvm.loop !50

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit.unr-lcssa, %.lr.ph69.epil, %._crit_edge66
  tail call void @free(ptr noundef nonnull %i.ac) #36
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge70
  %.1.ph = phi i32 [ 0, %._crit_edge70 ], [ -21, %._crit_edge ]
  tail call void @free(ptr noundef %i.a) #36
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ -21, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader71.lr.ph, label %.critedge4._crit_edge

.preheader71.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count81.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 6 uses
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.lr.ph, %zip_central_dir_move.exit
  %.05778 = phi i32 [ 0, %.preheader71.lr.ph ], [ %.2.lcssa, %zip_central_dir_move.exit ] ; 2 uses
  %i.e = sext i32 %.05778 to i64
  %i.f = add nsw i32 %.05778, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.f) ; 2 uses
  br label %bb.b

.preheader68.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  br label %.preheader68

bb.b:                                             ; preds = %.preheader71, %bb.c
  %indvars.iv = phi i64 [ %i.e, %.preheader71 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %.not60 = icmp eq i32 %i.j, 0
  br i1 %.not60, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.k, label %bb.b, label %.critedge2

.critedge:                                        ; preds = %bb.b
  %i.l = trunc nsw i64 %indvars.iv to i32         ; 5 uses
  %i.m = icmp sgt i32 %2, %i.l
  br i1 %i.m, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge, %bb.d
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.d ], [ %indvars.iv, %.critedge ] ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv95
  %i.o = load i32, ptr %i.n, align 4
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %.critedge2.loopexit.split.loop.exit133, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph

.critedge2.loopexit.split.loop.exit133:           ; preds = %.lr.ph
  %i.p = trunc nsw i64 %indvars.iv95 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.d, %.critedge2.loopexit.split.loop.exit133, %.critedge
  %.1.lcssa116 = phi i32 [ %i.l, %.critedge ], [ %i.l, %.critedge2.loopexit.split.loop.exit133 ], [ %i.l, %bb.d ], [ %smax, %bb.c ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.l, %.critedge ], [ %i.p, %.critedge2.loopexit.split.loop.exit133 ], [ %2, %bb.d ], [ %smax, %bb.c ] ; 4 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit133 ], [ false, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.1.lcssa116, %2
  br i1 %i.q, label %zip_central_dir_move.exit, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.r = load ptr, ptr %0, align 8                ; 4 uses
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = sext i32 %.1.lcssa116 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = icmp eq i32 %.2.lcssa, %2
  br i1 %i.y, label %.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %.2.lcssa to i64                ; 9 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = sub i64 %i.ae, %i.ac                    ; 11 uses
  %gepdiff.i = sub i32 %i.ab, %i.v                ; 10 uses
  %i.ag = icmp ne ptr %i.r, null                  ; 2 uses
  %i.ah = icmp eq i32 %i.v, 0
  %or.cond.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.af) #38
  store ptr %i.aj, ptr %0, align 8
  br i1 %.lcssa, label %.lr.ph.i.preheader, label %.thread66.i

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ak = sub nsw i64 %i.d, %i.z
  %xtraiter27 = and i64 %i.ak, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv.i.prol ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sub i32 %i.an, %gepdiff.i
  store i32 %i.ao, ptr %i.am, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ap = sub nsw i64 %i.z, %i.d
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.thread66.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sub i32 %i.at, %gepdiff.i
  store i32 %i.au, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub i32 %i.ay, %gepdiff.i
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub i32 %i.bd, %gepdiff.i
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 12     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sub i32 %i.bi, %gepdiff.i
  store i32 %i.bj, ptr %i.bh, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count81.i
  br i1 %exitcond.not.i.3, label %.thread66.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.f
  %i.bk = mul i64 %i.af, %i.w
  %.not.i = icmp ne i64 %i.bk, 0
  %or.cond58.not.i = select i1 %i.ag, i1 %.not.i, i1 false
  br i1 %or.cond58.not.i, label %bb.h, label %.thread66.i

bb.h:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  br i1 %.lcssa, label %.lr.ph76.i.preheader, label %.thread66.i

.lr.ph76.i.preheader:                             ; preds = %bb.h
  %i.bl = sub nsw i64 %i.d, %i.z
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ], [ %i.z, %.lr.ph76.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.i.prol ], [ 0, %.lr.ph76.i.preheader ]
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv78.i.prol ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 %i.bo, %gepdiff.i
  store i32 %i.bp, ptr %i.bn, align 4
  %indvars.iv.next79.i.prol = add nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol, !llvm.loop !52

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %indvars.iv78.i.unr = phi i64 [ %i.z, %.lr.ph76.i.preheader ], [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ]
  %i.bq = sub nsw i64 %i.z, %i.d
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.thread66.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %.lr.ph76.i ], [ %indvars.iv78.i.unr, %.lr.ph76.i.prol.loopexit ] ; 5 uses
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv78.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = sub i32 %i.bu, %gepdiff.i
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv78.i
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sub i32 %i.bz, %gepdiff.i
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = load ptr, ptr %i.b, align 8
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %indvars.iv78.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = sub i32 %i.ce, %gepdiff.i
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = load ptr, ptr %i.b, align 8
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv78.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 12     ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = sub i32 %i.cj, %gepdiff.i
  store i32 %i.ck, ptr %i.ci, align 4
  %indvars.iv.next79.i.3 = add nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond82.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %wide.trip.count81.i
  br i1 %exitcond82.not.i.3, label %.thread66.i, label %.lr.ph76.i

.thread66.i:                                      ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %bb.h, %.loopexit.i, %bb.e
  %.0536373.i = phi i64 [ %i.af, %.loopexit.i ], [ 0, %bb.e ], [ %i.af, %bb.h ], [ %i.af, %.lr.ph.i.prol.loopexit ], [ %i.af, %bb.g ], [ %i.af, %.lr.ph.i ], [ %i.af, %.lr.ph76.i ], [ %i.af, %.lr.ph76.i.prol.loopexit ]
  %i.cl = add i64 %.0536373.i, %i.w
  store i64 %i.cl, ptr %i.c, align 8
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %.critedge2, %.thread66.i
  %i.cm = icmp slt i32 %.2.lcssa, %2
  br i1 %i.cm, label %.preheader71, label %.preheader68.lr.ph

.preheader68:                                     ; preds = %._crit_edge, %.preheader68.lr.ph
  %.05689 = phi i32 [ 0, %.preheader68.lr.ph ], [ %i.en, %._crit_edge ] ; 3 uses
  %.388 = phi i32 [ 0, %.preheader68.lr.ph ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.cn = sext i32 %.388 to i64
  %i.co = add nsw i32 %.388, 1
  %smax100 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.co)
  br label %bb.i

bb.i:                                             ; preds = %.preheader68, %bb.j
  %indvars.iv98 = phi i64 [ %i.cn, %.preheader68 ], [ %indvars.iv.next99, %bb.j ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv98
  %i.cq = load i32, ptr %i.cp, align 4
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.j, label %.critedge4.split.loop.exit136

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next99, %i.h
  br i1 %i.cr, label %bb.i, label %.critedge4

.critedge4.split.loop.exit136:                    ; preds = %bb.i
  %i.cs = trunc nsw i64 %indvars.iv98 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.j, %.critedge4.split.loop.exit136
  %.4.lcssa = phi i32 [ %i.cs, %.critedge4.split.loop.exit136 ], [ %smax100, %bb.j ] ; 7 uses
  %i.ct = icmp eq i32 %.4.lcssa, %2
  br i1 %i.ct, label %.critedge4._crit_edge, label %.preheader

.preheader:                                       ; preds = %.critedge4
  %i.cu = icmp slt i32 %.4.lcssa, %2
  br i1 %i.cu, label %.lr.ph81.preheader, label %.critedge6

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.cv = sext i32 %.4.lcssa to i64
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.k
  %indvars.iv102 = phi i64 [ %i.cv, %.lr.ph81.preheader ], [ %indvars.iv.next103, %bb.k ] ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv102
  %i.cx = load i32, ptr %i.cw, align 4
  %.not59 = icmp eq i32 %i.cx, 0
  br i1 %.not59, label %.critedge6.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph81
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, %i.h
  br i1 %exitcond105.not, label %._crit_edge.thread, label %.lr.ph81

.critedge6.loopexit:                              ; preds = %.lr.ph81
  %i.cy = trunc nsw i64 %indvars.iv102 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.preheader
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %i.cy, %.critedge6.loopexit ] ; 6 uses
  %i.cz = icmp slt i32 %.5.lcssa, %2
  br i1 %i.cz, label %.lr.ph87.preheader, label %._crit_edge.thread

.lr.ph87.preheader:                               ; preds = %.critedge6
  %i.da = sext i32 %.5.lcssa to i64               ; 2 uses
  %i.db = sext i32 %.4.lcssa to i64               ; 5 uses
  %i.dc = sub i32 %2, %.5.lcssa                   ; 2 uses
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %xtraiter30 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp ult i32 %i.dd, 3
  br i1 %i.de, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv108 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next109.3, %.lr.ph87 ] ; 5 uses
  %indvars.iv106 = phi i64 [ %i.da, %.lr.ph87.preheader.new ], [ %indvars.iv.next107.3, %.lr.ph87 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter.next.3, %.lr.ph87 ]
  %i.df = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv106
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv108
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.db
  store i32 %i.dh, ptr %i.dj, align 4
  %i.dk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv106
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv108
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.db
  store i32 %i.dn, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv106
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv108
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.db
  store i32 %i.du, ptr %i.dx, align 4
  %i.dy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv106
  %i.ea = getelementptr i8, ptr %i.dz, i64 12
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv108
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.db
  store i32 %i.eb, ptr %i.ee, align 4
  %indvars.iv.next109.3 = add nuw nsw i64 %indvars.iv108, 4 ; 2 uses
  %indvars.iv.next107.3 = add nsw i64 %indvars.iv106, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph87

._crit_edge.thread:                               ; preds = %.critedge6, %bb.k
  %.5.lcssa118.ph = phi i32 [ %2, %bb.k ], [ %.5.lcssa, %.critedge6 ]
  %i.ef = sub i32 %.05689, %.4.lcssa
  %i.eg = add i32 %i.ef, %.5.lcssa118.ph
  br label %.critedge4._crit_edge

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph87
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %._crit_edge, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv108.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next109.3, %._crit_edge.unr-lcssa ]
  %indvars.iv106.epil.init = phi i64 [ %i.da, %.lr.ph87.preheader ], [ %indvars.iv.next107.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph87.epil

.lr.ph87.epil:                                    ; preds = %.lr.ph87.epil, %.lr.ph87.epil.preheader
  %indvars.iv108.epil = phi i64 [ %indvars.iv108.epil.init, %.lr.ph87.epil.preheader ], [ %indvars.iv.next109.epil, %.lr.ph87.epil ] ; 2 uses
  %indvars.iv106.epil = phi i64 [ %indvars.iv106.epil.init, %.lr.ph87.epil.preheader ], [ %indvars.iv.next107.epil, %.lr.ph87.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph87.epil.preheader ], [ %epil.iter.next, %.lr.ph87.epil ]
  %i.eh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %indvars.iv106.epil
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv108.epil
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.db
  store i32 %i.ej, ptr %i.el, align 4
  %indvars.iv.next109.epil = add nuw nsw i64 %indvars.iv108.epil, 1
  %indvars.iv.next107.epil = add nsw i64 %indvars.iv106.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter30
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph87.epil, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph87.epil, %._crit_edge.unr-lcssa
  %i.em = sub i32 %.05689, %.4.lcssa
  %i.en = add i32 %i.em, %.5.lcssa
  br label %.preheader68

.critedge4._crit_edge:                            ; preds = %.critedge4, %bb.a, %._crit_edge.thread
  %.056.lcssa = phi i32 [ %i.eg, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05689, %.critedge4 ]
  %i.eo = sub nsw i32 %2, %.056.lcssa
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.eq, ptr %i.er, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = !{ptr @mz_deflateEnd}
!6 = !{ptr @mz_compress2, ptr @mz_deflateEnd}
!7 = !{ptr @mz_inflateInit2}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = !{ptr @mz_inflateEnd}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = !{ptr @mz_zip_reader_end_internal}
!20 = distinct !{null}
!21 = !{ptr @mz_zip_array_ensure_capacity}
!22 = !{ptr @mz_zip_writer_init_v2}
!23 = !{ptr @mz_zip_writer_init_heap_v2}
!24 = !{ptr @mz_zip_writer_end_internal}
!25 = !{ptr @mz_zip_reader_extract_to_heap}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !42, !41}
!49 = distinct !{!49, !41, !42}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
end_hunk_0
