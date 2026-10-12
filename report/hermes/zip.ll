Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@mz_zip_reader_sort_central_dir_offsets_by_filename:bb.a
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %bb.j
  %.034.i8528 = phi ptr [ %i.ec, %bb.j ], [ %i.dw, %.lr.ph30.preheader ] ; 2 uses
  %.035.i8427 = phi ptr [ %i.eb, %bb.j ], [ %i.ds, %.lr.ph30.preheader ] ; 3 uses
  %i.dx = load i8, ptr %.035.i8427, align 1, !tbaa !19 ; 3 uses
  %i.dy = add i8 %i.dx, -65
  %or.cond.i91 = icmp ult i8 %i.dy, 26
  %narrow.i97 = add nuw nsw i8 %i.dx, 32
  %spec.select2 = select i1 %or.cond.i91, i8 %narrow.i97, i8 %i.dx ; 3 uses
  %i.dz = load i8, ptr %.034.i8528, align 1, !tbaa !19 ; 3 uses
  %i.ea = add i8 %i.dz, -65
  %or.cond41.i93 = icmp ult i8 %i.ea, 26
  %narrow38.i96 = add nuw nsw i8 %i.dz, 32
  %.in39.i94 = select i1 %or.cond41.i93, i8 %narrow38.i96, i8 %i.dz ; 2 uses
  %.not.i95 = icmp eq i8 %spec.select2, %.in39.i94
  br i1 %.not.i95, label %bb.j, label %mz_zip_reader_filename_less.exit98.loopexit

bb.j:                                             ; preds = %.lr.ph30
  %i.eb = getelementptr inbounds nuw i8, ptr %.035.i8427, i64 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.034.i8528, i64 1
  %i.ed = icmp ult ptr %i.eb, %i.dv
  br i1 %i.ed, label %.lr.ph30, label %mz_zip_reader_filename_less.exit98.loopexit, !llvm.loop !398

mz_zip_reader_filename_less.exit98.loopexit:      ; preds = %bb.j, %.lr.ph30
  %.in39.i94.lcssa = phi i8 [ %spec.select2, %bb.j ], [ %.in39.i94, %.lr.ph30 ]
  %.035.i84.lcssa.ph = phi ptr [ %i.eb, %bb.j ], [ %.035.i8427, %.lr.ph30 ]
  %i.ee = icmp ult i8 %spec.select2, %.in39.i94.lcssa
  br label %mz_zip_reader_filename_less.exit98

mz_zip_reader_filename_less.exit98:               ; preds = %mz_zip_reader_filename_less.exit98.loopexit, %bb.i
  %.035.i84.lcssa = phi ptr [ %i.ds, %bb.i ], [ %.035.i84.lcssa.ph, %mz_zip_reader_filename_less.exit98.loopexit ]
  %.133.i88 = phi i1 [ false, %bb.i ], [ %i.ee, %mz_zip_reader_filename_less.exit98.loopexit ]
  %i.ef = icmp eq ptr %.035.i84.lcssa, %i.dv
  %.in40.i90 = select i1 %i.ef, i1 %i.dt, i1 %.133.i88
  %i.eg = zext i1 %.in40.i90 to i32
  br label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_filename_less.exit98, %bb.h
  %i.eh = phi i32 [ 0, %bb.h ], [ %i.eg, %mz_zip_reader_filename_less.exit98 ]
  %i.ei = add nsw i32 %i.eh, %i.cu                ; 3 uses
  %i.ej = sext i32 %.050 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ej
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !18 ; 2 uses
  %i.eo = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ep ; 2 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !79 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !79 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 46 ; 3 uses
  %i.fb = icmp uge i16 %i.ex, %i.ez
  %.v.i = tail call i16 @llvm.umin.i16(i16 %i.ex, i16 %i.ez) ; 2 uses
  %i.fc = zext i16 %.v.i to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc ; 2 uses
  %.not61 = icmp eq i16 %.v.i, 0
  br i1 %.not61, label %mz_zip_reader_filename_less.exit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 46
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.l
  %.034.i39 = phi ptr [ %i.fk, %bb.l ], [ %i.fe, %.lr.ph41.preheader ] ; 2 uses
  %.035.i38 = phi ptr [ %i.fj, %bb.l ], [ %i.fa, %.lr.ph41.preheader ] ; 3 uses
  %i.ff = load i8, ptr %.035.i38, align 1, !tbaa !19 ; 3 uses
  %i.fg = add i8 %i.ff, -65
  %or.cond.i = icmp ult i8 %i.fg, 26
  %narrow.i = add nuw nsw i8 %i.ff, 32
  %spec.select3 = select i1 %or.cond.i, i8 %narrow.i, i8 %i.ff ; 3 uses
  %i.fh = load i8, ptr %.034.i39, align 1, !tbaa !19 ; 3 uses
  %i.fi = add i8 %i.fh, -65
  %or.cond41.i = icmp ult i8 %i.fi, 26
  %narrow38.i = add nuw nsw i8 %i.fh, 32
  %.in39.i = select i1 %or.cond41.i, i8 %narrow38.i, i8 %i.fh ; 2 uses
  %.not.i = icmp eq i8 %spec.select3, %.in39.i
  br i1 %.not.i, label %bb.l, label %mz_zip_reader_filename_less.exit.loopexit

bb.l:                                             ; preds = %.lr.ph41
  %i.fj = getelementptr inbounds nuw i8, ptr %.035.i38, i64 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.034.i39, i64 1
  %i.fl = icmp ult ptr %i.fj, %i.fd
  br i1 %i.fl, label %.lr.ph41, label %mz_zip_reader_filename_less.exit.loopexit, !llvm.loop !398

mz_zip_reader_filename_less.exit.loopexit:        ; preds = %bb.l, %.lr.ph41
  %.in39.i.lcssa = phi i8 [ %spec.select3, %bb.l ], [ %.in39.i, %.lr.ph41 ]
  %.035.i.lcssa.ph = phi ptr [ %i.fj, %bb.l ], [ %.035.i38, %.lr.ph41 ]
  %i.fm = icmp uge i8 %spec.select3, %.in39.i.lcssa
  br label %mz_zip_reader_filename_less.exit

mz_zip_reader_filename_less.exit:                 ; preds = %mz_zip_reader_filename_less.exit.loopexit, %bb.k
  %.035.i.lcssa = phi ptr [ %i.fa, %bb.k ], [ %.035.i.lcssa.ph, %mz_zip_reader_filename_less.exit.loopexit ]
  %.133.i = phi i1 [ true, %bb.k ], [ %i.fm, %mz_zip_reader_filename_less.exit.loopexit ]
  %i.fn = icmp eq ptr %.035.i.lcssa, %i.fd
  %.in40.i = select i1 %i.fn, i1 %i.fb, i1 %.133.i
  br i1 %.in40.i, label %mz_zip_reader_filename_less.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_filename_less.exit
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !18
  store i32 %i.co, ptr %i.em, align 4, !tbaa !18
  %i.fo = shl i32 %i.ei, 1                        ; 2 uses
  %i.fp = or disjoint i32 %i.fo, 1                ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %.not = icmp sgt i64 %indvars.iv.next, %i.fq
  br i1 %.not, label %bb.h, label %mz_zip_reader_filename_less.exit._crit_edge

mz_zip_reader_filename_less.exit._crit_edge:      ; preds = %bb.m, %mz_zip_reader_filename_less.exit
  %i.fr = icmp sgt i64 %indvars.iv, 2
  br i1 %i.fr, label %.lr.ph56, label %._crit_edge57, !llvm.loop !400

._crit_edge57:                                    ; preds = %.lr.ph56, %mz_zip_reader_filename_less.exit._crit_edge, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_array_ensure_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
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
  br i1 %i.c, label %bb.d, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d, %bb.b
  %.1 = phi i64 [ %2, %bb.b ], [ %.0, %bb.d ]     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.i = load ptr, ptr %1, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !116
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #33 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8, !tbaa !108
  store i64 %.1, ptr %i.a, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a, %bb.e
  %.018 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.018
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader63.lr.ph, label %._crit_edge71

.preheader63.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count62.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.lr.ph, %zip_central_dir_move.exit
  %.05166 = phi i64 [ 0, %.preheader63.lr.ph ], [ %indvars.iv78, %zip_central_dir_move.exit ] ; 3 uses
  br label %bb.b

.preheader59.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  br label %.preheader59

bb.b:                                             ; preds = %bb.b, %.preheader63
  %indvar = phi i64 [ %indvar.next.a, %bb.b ], [ 0, %.preheader63 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %.05166, %.preheader63 ] ; 6 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %.not53 = icmp eq i32 %i.h, 0
  %i.i = icmp slt i64 %indvars.iv, %i.d
  %i.j = and i1 %i.i, %.not53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvar.next.a = add i64 %indvar, 1
  br i1 %i.j, label %bb.b, label %.preheader62, !llvm.loop !401

.preheader62:                                     ; preds = %bb.b, %.preheader62
  %indvar5 = phi i64 [ %indvar.next6, %.preheader62 ], [ 0, %bb.b ] ; 3 uses
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader62 ], [ %indvars.iv, %bb.b ] ; 12 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp slt i64 %indvars.iv78, %i.d         ; 3 uses
  %i.o = and i1 %i.n, %i.m
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %indvar.next6 = add i64 %indvar5, 1
  br i1 %i.o, label %.preheader62, label %bb.c, !llvm.loop !402

bb.c:                                             ; preds = %.preheader62
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = trunc nsw i64 %indvars.iv78 to i32       ; 2 uses
  %i.r = icmp eq i32 %2, %i.p
  br i1 %i.r, label %zip_central_dir_move.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq i32 %2, %i.q
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv78
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18  ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !155
  %i.ae = sub i64 %i.ad, %i.ab
  %gepdiff.i = sub i32 %i.aa, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.049.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %.048.i = phi i32 [ %gepdiff.i, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.047.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %i.v, 0
  br i1 %i.af, label %bb.g, label %.loopexit54.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !119
  %i.ah = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %.049.i) #35
  store ptr %i.ah, ptr %0, align 8, !tbaa !119
  br i1 %i.n, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !120 ; 2 uses
  %3 = add i64 %.05166, %indvar
  %i.aj = add i64 %3, %indvar5
  %i.ak = sub i64 %i.d, %i.aj                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ak, -8                      ; 3 uses
  %i.al = add i64 %indvars.iv78, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv78
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !18
  %wide.load7 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !18
  %i.ap = sub <4 x i32> %wide.load, %broadcast.splat
  %i.aq = sub <4 x i32> %wide.load7, %broadcast.splat
  store <4 x i32> %i.ap, ptr %i.an, align 4, !tbaa !18
  store <4 x i32> %i.aq, ptr %i.ao, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %indvars.iv78, %.lr.ph.i ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = sub i32 %i.at, %.048.i
  store i32 %i.au, ptr %i.as, align 4, !tbaa !18
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count62.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !404

.loopexit54.i:                                    ; preds = %bb.f
  %i.av = mul i64 %.049.i, %i.w
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit54.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  br i1 %i.n, label %.lr.ph57.i, label %.loopexit.i

.lr.ph57.i:                                       ; preds = %bb.h
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !120 ; 2 uses
  %4 = add i64 %.05166, %indvar
  %i.ax = add i64 %4, %indvar5
  %i.ay = sub i64 %i.d, %i.ax                     ; 3 uses
  %min.iters.check9 = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check9, label %scalar.ph8.preheader, label %vector.ph10

vector.ph10:                                      ; preds = %.lr.ph57.i
  %n.vec11 = and i64 %i.ay, -8                    ; 3 uses
  %i.az = add i64 %indvars.iv78, %n.vec11
  %broadcast.splatinsert12 = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat13 = shufflevector <4 x i32> %broadcast.splatinsert12, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv78
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %vector.ph10
  %index15 = phi i64 [ 0, %vector.ph10 ], [ %index.next18, %vector.body14 ] ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %index15 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load16 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !18
  %wide.load17 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !18
  %i.bd = sub <4 x i32> %wide.load16, %broadcast.splat13
  %i.be = sub <4 x i32> %wide.load17, %broadcast.splat13
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !18
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !18
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next18, %n.vec11
  br i1 %i.bf, label %middle.block19, label %vector.body14, !llvm.loop !405

middle.block19:                                   ; preds = %vector.body14
  %cmp.n20 = icmp eq i64 %i.ay, %n.vec11
  br i1 %cmp.n20, label %.loopexit.i, label %scalar.ph8.preheader

scalar.ph8.preheader:                             ; preds = %.lr.ph57.i, %middle.block19
  %indvars.iv59.i.ph = phi i64 [ %indvars.iv78, %.lr.ph57.i ], [ %i.az, %middle.block19 ]
  br label %scalar.ph8

scalar.ph8:                                       ; preds = %scalar.ph8.preheader, %scalar.ph8
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %scalar.ph8 ], [ %indvars.iv59.i.ph, %scalar.ph8.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv59.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bi = sub i32 %i.bh, %.048.i
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !18
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %.loopexit.i, label %scalar.ph8, !llvm.loop !406

.loopexit.i:                                      ; preds = %scalar.ph8, %scalar.ph, %middle.block19, %middle.block, %bb.g, %bb.h, %.loopexit54.i
  %i.bj = add i64 %.049.i, %i.w
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !155
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %bb.c, %.loopexit.i
  %i.bk = icmp sgt i32 %2, %i.q
  br i1 %i.bk, label %.preheader63, label %.preheader59.lr.ph, !llvm.loop !407

.preheader59:                                     ; preds = %._crit_edge, %.preheader59.lr.ph
  %.05070 = phi i32 [ 0, %.preheader59.lr.ph ], [ %i.cn, %._crit_edge ] ; 3 uses
  %.369 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv84, %._crit_edge ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader59
  %indvar24 = phi i64 [ %indvar.next25, %bb.i ], [ 0, %.preheader59 ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.i ], [ %.369, %.preheader59 ] ; 6 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv81
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %.not = icmp eq i32 %i.bm, 0
  %i.bn = icmp slt i64 %indvars.iv81, %i.f
  %i.bo = and i1 %i.bn, %.not
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  %indvar.next25 = add i64 %indvar24, 1
  br i1 %i.bo, label %bb.i, label %bb.j, !llvm.loop !408

bb.j:                                             ; preds = %bb.i
  %i.bp = trunc nsw i64 %indvars.iv81 to i32      ; 3 uses
  %i.bq = icmp eq i32 %2, %i.bp
  br i1 %i.bq, label %._crit_edge71, label %.preheader58

.preheader58:                                     ; preds = %bb.j, %.preheader58
  %indvar22 = phi i64 [ %indvar.next23, %.preheader58 ], [ 0, %bb.j ] ; 3 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader58 ], [ %indvars.iv81, %bb.j ] ; 9 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv84
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = icmp slt i64 %indvars.iv84, %i.f
  %i.bv = and i1 %i.bu, %i.bt
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %indvar.next23 = add i64 %indvar22, 1
  br i1 %i.bv, label %.preheader58, label %.preheader, !llvm.loop !409

.preheader:                                       ; preds = %.preheader58
  %i.bw = trunc nsw i64 %indvars.iv84 to i32      ; 3 uses
  %i.bx = icmp sgt i32 %2, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.by = sub i32 %.05070, %i.bp
  %i.bz = add i32 %i.by, %i.bw
  br label %._crit_edge71

.lr.ph:                                           ; preds = %.preheader
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv81 ; 2 uses
  %i.cb = add i64 %indvar24, %.369
  %5 = add i64 %indvar22, %i.cb
  %i.cc = add i64 %indvars.iv84, 1
  %6 = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 %i.d)
  %i.cd = sub i64 %6, %5                          ; 3 uses
  %min.iters.check27 = icmp ult i64 %i.cd, 8
  %i.ce = shl i64 %indvar22, 2
  %diff.check = icmp ugt i64 %i.ce, -32
  %or.cond = select i1 %min.iters.check27, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph
  %n.vec29 = and i64 %i.cd, -8                    ; 4 uses
  %i.cf = add i64 %indvars.iv84, %n.vec29
  %i.cg = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv84
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body30 ] ; 3 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %index31 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load32 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !18
  %wide.load33 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !18
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index31 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store <4 x i32> %wide.load32, ptr %i.cj, align 4, !tbaa !18
  store <4 x i32> %wide.load33, ptr %i.ck, align 4, !tbaa !18
  %index.next34 = add nuw i64 %index31, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.cl, label %middle.block35, label %vector.body30, !llvm.loop !410

middle.block35:                                   ; preds = %vector.body30
  %cmp.n36 = icmp eq i64 %i.cd, %n.vec29
  br i1 %cmp.n36, label %._crit_edge, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph, %middle.block35
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec29, %middle.block35 ]
  %indvars.iv90.ph = phi i64 [ %indvars.iv84, %.lr.ph ], [ %i.cf, %middle.block35 ]
  br label %scalar.ph26

._crit_edge:                                      ; preds = %scalar.ph26, %middle.block35
  %i.cm = sub i32 %.05070, %i.bp
  %i.cn = add i32 %i.cm, %i.bw
  br label %.preheader59

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph26 ], [ %indvars.iv92.ph, %scalar.ph26.preheader ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph26 ], [ %indvars.iv90.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv90
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv92
  store i32 %i.cp, ptr %gep, align 4, !tbaa !18
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv.next91, %i.f
  br i1 %i.cq, label %scalar.ph26, label %._crit_edge, !llvm.loop !411

._crit_edge71:                                    ; preds = %bb.j, %bb.a, %._crit_edge.thread
  %.050.lcssa = phi i32 [ %i.bz, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05070, %bb.j ]
  %i.cr = sub nsw i32 %2, %.050.lcssa
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !412
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(0,1) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !21}
!5 = distinct !{null}
!6 = distinct !{!6, !21}
!7 = distinct !{!7, !21}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, !21}
!11 = distinct !{!11, !21}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"any pointer", !16, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"long", !16, i64 0}
!25 = !{!"p1 _ZTS17mz_internal_state", !22, i64 0}
!26 = !{!"mz_stream_s", !23, i64 0, !17, i64 8, !24, i64 16, !23, i64 24, !17, i64 32, !24, i64 40, !23, i64 48, !25, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !17, i64 88, !24, i64 96, !24, i64 104}
!27 = !{!26, !17, i64 88}
!28 = !{!26, !24, i64 96}
!29 = !{!26, !24, i64 104}
!30 = !{!26, !24, i64 16}
!31 = !{!26, !22, i64 64}
!32 = !{!26, !22, i64 72}
!33 = !{!26, !22, i64 80}
!34 = !{!26, !25, i64 56}
!35 = !{!"p1 long", !22, i64 0}
!36 = !{!"", !22, i64 0, !22, i64 8, !17, i64 16, !16, i64 20, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !22, i64 136, !22, i64 144, !35, i64 152, !35, i64 160, !17, i64 168, !23, i64 176, !24, i64 184, !24, i64 192, !16, i64 200, !16, i64 33226, !16, i64 34954, !16, i64 36682, !16, i64 37546, !16, i64 103082, !16, i64 168618, !16, i64 234154}
!37 = !{!36, !17, i64 16}
!38 = !{!36, !17, i64 28}
!39 = !{!36, !23, i64 48}
!40 = !{!36, !23, i64 56}
!41 = !{!36, !17, i64 80}
!42 = !{!36, !23, i64 64}
!43 = !{!36, !23, i64 72}
!44 = !{!36, !17, i64 132}
!45 = !{!36, !17, i64 108}
!46 = !{!36, !17, i64 104}
!47 = !{!36, !17, i64 100}
!48 = !{!36, !22, i64 0}
!49 = !{!36, !22, i64 8}
!50 = !{!26, !24, i64 40}
!51 = !{!23, !23, i64 0}
!52 = !{!26, !23, i64 24}
!53 = !{!26, !17, i64 32}
!54 = !{!26, !17, i64 8}
!55 = !{!26, !23, i64 0}
!56 = !{!24, !24, i64 0}
!57 = !{!36, !17, i64 32}
!58 = !{!36, !22, i64 136}
!59 = !{!36, !35, i64 152}
!60 = !{!36, !22, i64 144}
!61 = !{!36, !35, i64 160}
!62 = !{!36, !23, i64 176}
!63 = !{!36, !24, i64 184}
!64 = !{!36, !24, i64 192}
!65 = !{!36, !17, i64 168}
!66 = !{!36, !17, i64 116}
!67 = !{!36, !17, i64 120}
!68 = !{!36, !17, i64 112}
!69 = !{!36, !17, i64 40}
!70 = !{!36, !17, i64 44}
!71 = !{!"long long", !16, i64 0}
!72 = !{!"tinfl_decompressor_tag", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !16, i64 44, !71, i64 56, !24, i64 64, !16, i64 72, !16, i64 10536, !16, i64 10540}
!73 = !{!"", !72, i64 0, !17, i64 11000, !17, i64 11004, !17, i64 11008, !17, i64 11012, !17, i64 11016, !16, i64 11020, !17, i64 43788}
!74 = !{!73, !17, i64 0}
!75 = !{!73, !17, i64 43788}
!76 = !{!73, !17, i64 11016}
!77 = !{!72, !17, i64 0}
!78 = !{!"short", !16, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!36, !17, i64 36}
!83 = !{!36, !17, i64 84}
!84 = !{!36, !17, i64 92}
!85 = !{!36, !17, i64 96}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = !{!"", !24, i64 0, !24, i64 8, !23, i64 16, !17, i64 24}
!88 = !{!87, !17, i64 24}
!89 = !{!87, !24, i64 0}
!90 = !{!87, !23, i64 16}
!91 = !{!87, !24, i64 8}
!92 = !{!"p1 _ZTS25mz_zip_internal_state_tag", !22, i64 0}
!93 = !{!"", !71, i64 0, !71, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !71, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !92, i64 104}
!94 = !{!93, !22, i64 72}
!95 = !{!93, !92, i64 104}
!96 = !{!93, !17, i64 20}
!97 = !{!93, !22, i64 40}
!98 = !{!93, !22, i64 48}
!99 = !{!93, !22, i64 56}
!100 = !{!93, !22, i64 64}
!101 = !{!"", !22, i64 0, !24, i64 8, !24, i64 16, !17, i64 24}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!209 = distinct !{!209, !21}
!210 = distinct !{!210, !20}
!211 = distinct !{!211, !21, !80}
!212 = distinct !{!212, !21}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21}
!215 = distinct !{!215, !21}
!216 = distinct !{!216, !21}
!217 = distinct !{!217, !21}
!218 = distinct !{!218, !21}
!219 = distinct !{!219, !21}
!220 = distinct !{!220, !21}
!221 = distinct !{!221, !21}
!222 = distinct !{!222, !21}
!223 = distinct !{!223, !21}
!224 = distinct !{!224, !21}
!225 = distinct !{!225, !21}
!226 = distinct !{!226, !21}
!227 = distinct !{!227, !21}
!228 = distinct !{!228, !21}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, !21}
!231 = distinct !{!231, !21}
!232 = distinct !{!232, !21}
!233 = distinct !{!233, i1 false, !"LVerDomain"}
!234 = distinct !{!234, !233}
!235 = distinct !{!235, !233}
!236 = distinct !{!236, !21, !80, !81}
!237 = distinct !{!237, !21, !80}
!238 = distinct !{!238, !21}
!239 = distinct !{!239, !21}
!240 = distinct !{!240, !21}
!241 = distinct !{!241, !21}
!242 = distinct !{!242, !20}
!243 = distinct !{!243, !21}
!244 = distinct !{!244, !21}
!245 = distinct !{!245, !21}
!246 = !{!72, !17, i64 4}
!247 = !{!72, !71, i64 56}
!248 = !{!72, !17, i64 32}
!249 = !{!72, !17, i64 36}
!250 = !{!72, !17, i64 40}
!251 = !{!72, !24, i64 64}
!252 = !{!72, !17, i64 12}
!253 = !{!72, !17, i64 8}
!254 = !{!72, !17, i64 28}
!255 = !{!72, !17, i64 16}
!256 = !{!72, !17, i64 20}
!257 = !{!72, !17, i64 24}
!258 = !{!234}
!259 = !{!235}
!260 = !{ptr @mz_inflateEnd}
!261 = !{!"", !17, i64 0, !23, i64 8}
!262 = !{!261, !23, i64 8}
!263 = distinct !{!263, !21}
!264 = distinct !{!264, !21}
!265 = distinct !{!265, !21}
!266 = distinct !{!266, !21}
!267 = distinct !{!267, !21}
!268 = distinct !{!268, !21}
!269 = distinct !{!269, !21}
!270 = distinct !{!270, !21}
!271 = distinct !{!271, !21}
!272 = distinct !{!272, !21}
!273 = distinct !{!273, !21}
!274 = distinct !{!274, !20}
!275 = distinct !{!275, !21, !86}
!276 = distinct !{!276, !21}
!277 = distinct !{!277, !21, !86}
!278 = distinct !{!278, !21}
!279 = distinct !{!279, !21}
!280 = distinct !{!280, !21, !86}
!281 = distinct !{!281, !21}
!282 = distinct !{!282, !21}
!283 = distinct !{!283, !21}
!284 = distinct !{!284, !21, !86}
!285 = distinct !{!285, !20}
!286 = !{!36, !17, i64 88}
!287 = !{!36, !17, i64 124}
!288 = distinct !{!288, !21}
!289 = distinct !{!289, !21}
!290 = distinct !{null}
!291 = distinct !{!291, !21}
!292 = distinct !{!292, !21}
!293 = distinct !{!293, !21}
!294 = !{!93, !17, i64 28}
!295 = !{!103, !17, i64 104}
!296 = !{!124, !17, i64 0}
!297 = !{!124, !78, i64 10}
!298 = !{!129, !17, i64 32}
!299 = !{!124, !78, i64 48}
!300 = !{!124, !17, i64 64}
!301 = distinct !{!301, !21}
!302 = distinct !{!302, !21}
!303 = distinct !{!303, !21}
!304 = distinct !{!304, !21}
!305 = distinct !{!305, !21}
!306 = !{!103, !24, i64 72}
!307 = distinct !{!307, !21}
!308 = distinct !{!308, !21}
!309 = distinct !{!309, !21}
!310 = distinct !{!310, !21}
!311 = distinct !{!311, !21}
!312 = distinct !{!312, !21}
!313 = !{!163, !22, i64 216}
!314 = distinct !{!314, !21}
!315 = distinct !{!315, !21}
!316 = distinct !{!316, !21}
!317 = distinct !{!317, !21}
!318 = distinct !{!318, !21, !80, !81}
!319 = distinct !{!319, !21}
!320 = distinct !{!320, !21}
!321 = distinct !{!321, !21}
!322 = distinct !{!322, !21, !81, !80}
!323 = distinct !{!323, !21}
!324 = distinct !{!324, !20}
!325 = distinct !{!325, !21}
!326 = distinct !{!326, !21}
!327 = distinct !{!327, !21}
!328 = distinct !{!328, !21}
!329 = distinct !{!329, !21}
!330 = !{!163, !17, i64 20}
!331 = !{!"zip_entry_mark_t", !17, i64 0, !17, i64 4, !71, i64 8, !71, i64 16}
!332 = !{!331, !17, i64 4}
!333 = !{!331, !71, i64 8}
!334 = !{!331, !17, i64 0}
!335 = !{!331, !71, i64 16}
!336 = distinct !{!336, !21}
!337 = distinct !{!337, !21}
!338 = distinct !{!338, !21, !340}
!339 = distinct !{!339, !21}
!340 = !{!"llvm.loop.peeled.count", i32 1}
!341 = distinct !{!341, !21}
!342 = distinct !{!342, !21}
!343 = distinct !{!343, !20}
!344 = distinct !{!344, !20}
!345 = distinct !{!345, !21}
!346 = distinct !{!346, !21}
!347 = distinct !{!347, !21}
!348 = distinct !{!348, !21}
!349 = distinct !{!349, !21}
!350 = distinct !{!350, !21}
!351 = distinct !{!351, !21}
!352 = distinct !{!352, !21, !86}
!353 = distinct !{!353, !21}
!354 = distinct !{!354, !20}
!355 = distinct !{!355, !21}
!356 = distinct !{!356, !21, !86}
!357 = distinct !{!357, !20}
!358 = distinct !{!358, !21}
!359 = distinct !{!359, !21, !86}
!360 = distinct !{!360, !21}
!361 = distinct !{!361, !21}
!362 = distinct !{!362, !20}
!363 = distinct !{!363, !21}
!364 = distinct !{!364, !21, !86}
!365 = distinct !{!365, !21}
!366 = distinct !{!366, !20}
!367 = distinct !{!367, !21}
!368 = distinct !{!368, !21, !86}
!369 = distinct !{!369, !21}
!370 = distinct !{!370, !21}
!371 = distinct !{!371, !21}
!372 = distinct !{!372, !21}
!373 = distinct !{!373, !21}
!374 = distinct !{!374, !21}
!375 = distinct !{!375, !20}
!376 = distinct !{!376, !21}
!377 = distinct !{!377, !21}
!378 = distinct !{!378, !20}
!379 = distinct !{!379, !21}
!380 = distinct !{!380, !21}
!381 = distinct !{!381, !21}
!382 = distinct !{!382, !20}
!383 = distinct !{!383, !21, !81, !80}
!384 = distinct !{!384, !20}
!385 = distinct !{!385, !21}
!386 = distinct !{!386, !21}
!387 = distinct !{!387, !21}
!388 = distinct !{!388, !20}
!389 = distinct !{!389, !21}
!390 = distinct !{!390, !21}
!391 = distinct !{!391, !20}
!392 = distinct !{!392, !20}
!393 = distinct !{!393, !21}
!394 = distinct !{!394, !20}
!395 = !{!"", !78, i64 0, !78, i64 2}
!396 = !{!395, !78, i64 0}
!397 = !{!395, !78, i64 2}
!398 = distinct !{!398, !21}
!399 = distinct !{!399, !21}
!400 = distinct !{!400, !21}
!401 = distinct !{!401, !21}
!402 = distinct !{!402, !21}
!403 = distinct !{!403, !21, !80, !81}
!404 = distinct !{!404, !21, !81, !80}
!405 = distinct !{!405, !21, !80, !81}
!406 = distinct !{!406, !21, !81, !80}
!407 = distinct !{!407, !21}
!408 = distinct !{!408, !21}
!409 = distinct !{!409, !21}
!410 = distinct !{!410, !21, !80, !81}
!411 = distinct !{!411, !21, !80}
!412 = !{!103, !24, i64 40}
end_hunk_1
