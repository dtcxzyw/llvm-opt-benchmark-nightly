Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@mz_zip_reader_sort_central_dir_offsets_by_filename:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 46 ; 3 uses
  %i.dt = icmp ult i16 %i.dp, %i.dr
  %.v.i83 = tail call i16 @llvm.umin.i16(i16 %i.dp, i16 %i.dr) ; 2 uses
  %i.du = zext i16 %.v.i83 to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du ; 2 uses
  %.not60 = icmp eq i16 %.v.i83, 0
  br i1 %.not60, label %mz_zip_reader_filename_less.exit98, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 46
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %bb.j
  %.034.i8528 = phi ptr [ %i.ec, %bb.j ], [ %i.dw, %.lr.ph30.preheader ] ; 2 uses
  %.035.i8427 = phi ptr [ %i.eb, %bb.j ], [ %i.ds, %.lr.ph30.preheader ] ; 3 uses
  %i.dx = load i8, ptr %.035.i8427, align 1, !tbaa !80 ; 3 uses
  %i.dy = add i8 %i.dx, -65
  %or.cond.i91 = icmp ult i8 %i.dy, 26
  %narrow.i97 = add nuw nsw i8 %i.dx, 32
  %spec.select2 = select i1 %or.cond.i91, i8 %narrow.i97, i8 %i.dx ; 3 uses
  %i.dz = load i8, ptr %.034.i8528, align 1, !tbaa !80 ; 3 uses
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
  br i1 %i.ed, label %.lr.ph30, label %mz_zip_reader_filename_less.exit98.loopexit, !llvm.loop !572

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
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !140 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !140 ; 2 uses
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
  %i.ff = load i8, ptr %.035.i38, align 1, !tbaa !80 ; 3 uses
  %i.fg = add i8 %i.ff, -65
  %or.cond.i = icmp ult i8 %i.fg, 26
  %narrow.i = add nuw nsw i8 %i.ff, 32
  %spec.select3 = select i1 %or.cond.i, i8 %narrow.i, i8 %i.ff ; 3 uses
  %i.fh = load i8, ptr %.034.i39, align 1, !tbaa !80 ; 3 uses
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
  br i1 %i.fl, label %.lr.ph41, label %mz_zip_reader_filename_less.exit.loopexit, !llvm.loop !572

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
  br i1 %i.fr, label %.lr.ph56, label %._crit_edge57, !llvm.loop !574

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
define internal fastcc range(i32 0, 2) i32 @mz_zip_array_ensure_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #5 !guid !576 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = load ptr, ptr %1, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !177
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #33 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8, !tbaa !169
  store i64 %.1, ptr %i.a, align 8, !tbaa !176
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
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 !guid !587 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader63.lr.ph, label %._crit_edge71

.preheader63.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count62.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  br label %.preheader63

.preheader59.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  br label %.preheader59

.preheader63:                                     ; preds = %.preheader63.backedge, %.preheader63.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader63.lr.ph ], [ %indvars.iv.be, %.preheader63.backedge ] ; 8 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %.not53 = icmp eq i32 %i.h, 0
  %i.i = icmp slt i64 %indvars.iv, %i.d
  %i.j = and i1 %i.i, %.not53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.j, label %.preheader63.backedge, label %.preheader62

.preheader63.backedge:                            ; preds = %.preheader63, %zip_central_dir_move.exit
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %.preheader63 ], [ %indvars.iv78, %zip_central_dir_move.exit ]
  br label %.preheader63, !llvm.loop !577

.preheader62:                                     ; preds = %.preheader63, %.preheader62
  %indvar = phi i64 [ %indvar.next, %.preheader62 ], [ 0, %.preheader63 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader62 ], [ %indvars.iv, %.preheader63 ] ; 12 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp slt i64 %indvars.iv78, %i.d         ; 3 uses
  %i.o = and i1 %i.n, %i.m
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %.preheader62, label %bb.b, !llvm.loop !578

bb.b:                                             ; preds = %.preheader62
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = trunc nsw i64 %indvars.iv78 to i32       ; 2 uses
  %i.r = icmp eq i32 %2, %i.p
  br i1 %i.r, label %zip_central_dir_move.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !180    ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq i32 %2, %i.q
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv78
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18  ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !216
  %i.ae = sub i64 %i.ad, %i.ab
  %gepdiff.i = sub i32 %i.aa, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.049.i = phi i64 [ %i.ae, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.048.i = phi i32 [ %gepdiff.i, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %.047.i = phi ptr [ %i.ac, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.af = icmp eq i32 %i.v, 0
  br i1 %i.af, label %bb.f, label %.loopexit54.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !180
  %i.ah = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %.049.i) #35
  store ptr %i.ah, ptr %0, align 8, !tbaa !180
  br i1 %i.n, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.aj = add i64 %indvars.iv, %indvar
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
  %wide.load5 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !18
  %i.ap = sub <4 x i32> %wide.load, %broadcast.splat
  %i.aq = sub <4 x i32> %wide.load5, %broadcast.splat
  store <4 x i32> %i.ap, ptr %i.an, align 4, !tbaa !18
  store <4 x i32> %i.aq, ptr %i.ao, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !579

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
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !580

.loopexit54.i:                                    ; preds = %bb.e
  %i.av = mul i64 %.049.i, %i.w
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.loopexit54.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  br i1 %i.n, label %.lr.ph57.i, label %.loopexit.i

.lr.ph57.i:                                       ; preds = %bb.g
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.ax = add i64 %indvars.iv, %indvar
  %i.ay = sub i64 %i.d, %i.ax                     ; 3 uses
  %min.iters.check7 = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check7, label %scalar.ph6.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph57.i
  %n.vec9 = and i64 %i.ay, -8                     ; 3 uses
  %i.az = add i64 %indvars.iv78, %n.vec9
  %broadcast.splatinsert10 = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat11 = shufflevector <4 x i32> %broadcast.splatinsert10, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv78
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph8
  %index13 = phi i64 [ 0, %vector.ph8 ], [ %index.next16, %vector.body12 ] ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %index13 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load14 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !18
  %wide.load15 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !18
  %i.bd = sub <4 x i32> %wide.load14, %broadcast.splat11
  %i.be = sub <4 x i32> %wide.load15, %broadcast.splat11
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !18
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !18
  %index.next16 = add nuw i64 %index13, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next16, %n.vec9
  br i1 %i.bf, label %middle.block17, label %vector.body12, !llvm.loop !581

middle.block17:                                   ; preds = %vector.body12
  %cmp.n18 = icmp eq i64 %i.ay, %n.vec9
  br i1 %cmp.n18, label %.loopexit.i, label %scalar.ph6.preheader

scalar.ph6.preheader:                             ; preds = %.lr.ph57.i, %middle.block17
  %indvars.iv59.i.ph = phi i64 [ %indvars.iv78, %.lr.ph57.i ], [ %i.az, %middle.block17 ]
  br label %scalar.ph6

scalar.ph6:                                       ; preds = %scalar.ph6.preheader, %scalar.ph6
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %scalar.ph6 ], [ %indvars.iv59.i.ph, %scalar.ph6.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv59.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bi = sub i32 %i.bh, %.048.i
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !18
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %.loopexit.i, label %scalar.ph6, !llvm.loop !582

.loopexit.i:                                      ; preds = %scalar.ph6, %scalar.ph, %middle.block17, %middle.block, %bb.f, %bb.g, %.loopexit54.i
  %i.bj = add i64 %.049.i, %i.w
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !216
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %bb.b, %.loopexit.i
  %i.bk = icmp sgt i32 %2, %i.q
  br i1 %i.bk, label %.preheader63.backedge, label %.preheader59.lr.ph

.preheader59:                                     ; preds = %._crit_edge, %.preheader59.lr.ph
  %.05070 = phi i32 [ 0, %.preheader59.lr.ph ], [ %i.co, %._crit_edge ] ; 3 uses
  %.369 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv84, %._crit_edge ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader59
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.h ], [ %.369, %.preheader59 ] ; 7 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv81
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %.not = icmp eq i32 %i.bm, 0
  %i.bn = icmp slt i64 %indvars.iv81, %i.f
  %i.bo = and i1 %i.bn, %.not
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  br i1 %i.bo, label %bb.h, label %bb.i, !llvm.loop !583

bb.i:                                             ; preds = %bb.h
  %i.bp = trunc nsw i64 %indvars.iv81 to i32      ; 3 uses
  %i.bq = icmp eq i32 %2, %i.bp
  br i1 %i.bq, label %._crit_edge71, label %.preheader58

.preheader58:                                     ; preds = %bb.i, %.preheader58
  %indvar22 = phi i64 [ %indvar.next23, %.preheader58 ], [ 0, %bb.i ] ; 3 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader58 ], [ %indvars.iv81, %bb.i ] ; 9 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv84
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = icmp slt i64 %indvars.iv84, %i.f
  %i.bv = and i1 %i.bu, %i.bt
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %indvar.next23 = add i64 %indvar22, 1
  br i1 %i.bv, label %.preheader58, label %.preheader, !llvm.loop !584

.preheader:                                       ; preds = %.preheader58
  %i.bw = trunc nsw i64 %indvars.iv84 to i32      ; 3 uses
  %i.bx = icmp sgt i32 %2, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.by = sub i32 %.05070, %i.bp
  %i.bz = add i32 %i.by, %i.bw
  br label %._crit_edge71

.lr.ph:                                           ; preds = %.preheader
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !181 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv81 ; 2 uses
  %i.cb = add i64 %indvars.iv84, 1
  %i.cc = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 %i.d)
  %i.cd = add i64 %indvars.iv81, %indvar22
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.ce, 8
  %i.cf = shl i64 %indvar22, 2
  %diff.check = icmp ugt i64 %i.cf, -32
  %or.cond = select i1 %min.iters.check25, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph24.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph
  %n.vec27 = and i64 %i.ce, -8                    ; 4 uses
  %i.cg = add i64 %indvars.iv84, %n.vec27
  %i.ch = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv84
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next32, %vector.body28 ] ; 3 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %index29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load30 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !18
  %wide.load31 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !18
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %index29 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load30, ptr %i.ck, align 4, !tbaa !18
  store <4 x i32> %wide.load31, ptr %i.cl, align 4, !tbaa !18
  %index.next32 = add nuw i64 %index29, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.cm, label %middle.block33, label %vector.body28, !llvm.loop !585

middle.block33:                                   ; preds = %vector.body28
  %cmp.n34 = icmp eq i64 %i.ce, %n.vec27
  br i1 %cmp.n34, label %._crit_edge, label %scalar.ph24.preheader

scalar.ph24.preheader:                            ; preds = %.lr.ph, %middle.block33
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec27, %middle.block33 ]
  %indvars.iv90.ph = phi i64 [ %indvars.iv84, %.lr.ph ], [ %i.cg, %middle.block33 ]
  br label %scalar.ph24

._crit_edge:                                      ; preds = %scalar.ph24, %middle.block33
  %i.cn = sub i32 %.05070, %i.bp
  %i.co = add i32 %i.cn, %i.bw
  br label %.preheader59

scalar.ph24:                                      ; preds = %scalar.ph24.preheader, %scalar.ph24
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph24 ], [ %indvars.iv92.ph, %scalar.ph24.preheader ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph24 ], [ %indvars.iv90.ph, %scalar.ph24.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv90
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv92
  store i32 %i.cq, ptr %gep, align 4, !tbaa !18
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next91, %i.f
  br i1 %i.cr, label %scalar.ph24, label %._crit_edge, !llvm.loop !586

._crit_edge71:                                    ; preds = %bb.i, %bb.a, %._crit_edge.thread
  %.050.lcssa = phi i32 [ %i.bz, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05070, %bb.i ]
  %i.cs = sub nsw i32 %2, %.050.lcssa
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !588
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
declare i32 @llvm.bswap.i32(i32) #30

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

!0 = distinct !{!0, !82}
!1 = distinct !{!1, !82}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !82}
!5 = distinct !{null}
!6 = distinct !{!6, !82}
!7 = distinct !{!7, !82}
!8 = distinct !{!8, !82}
!9 = distinct !{!9, !82}
!10 = distinct !{!10, !82}
!11 = distinct !{!11, !82}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{i64 1874041372034620475}
!20 = !{i64 -4107827121457623324}
!21 = !{i64 -4035303515854659229}
!22 = !{i64 4569965394985283705}
!23 = !{i64 7330691840581560976}
!24 = !{i64 271658650379106508}
!25 = !{i64 -2778152941078943768}
!26 = !{i64 -4930659766541599001}
!27 = !{i64 5728615748716722258}
!28 = !{i64 -2704818536845704730}
!29 = !{i64 -1173924396709876227}
!30 = !{i64 3102174243724338540}
!31 = !{i64 8947357179152712245}
!32 = !{i64 -5333293093682381153}
!33 = !{i64 5025825484842959461}
!34 = !{i64 7408880031356159059}
!35 = !{i64 3059344931593216428}
!36 = !{i64 -8869428710581451160}
!37 = !{i64 4666254193028456079}
!38 = !{i64 -6104109744418591106}
!39 = !{i64 493108514420670983}
!40 = !{i64 -1252764299180196142}
!41 = !{i64 2397868083254040232}
!42 = !{i64 8669199340438267933}
!43 = !{i64 5521691845320879228}
!44 = !{i64 6378499771255267455}
!45 = !{i64 -1124721155732504699}
!46 = !{i64 8962684712448282150}
!47 = !{i64 -3029789484365552151}
!48 = !{i64 -5190021082582526942}
!49 = !{i64 -7151045257601986522}
!50 = !{i64 -4379616468544448016}
!51 = !{i64 -6533806345603818237}
!52 = !{i64 -7438470720864392251}
!53 = !{i64 5981440004296933512}
!54 = !{i64 -7525444642489786305}
!55 = !{i64 8776453885599774142}
!56 = !{i64 3951200783647296333}
!57 = !{i64 3580826441832009627}
!58 = !{i64 2772784893211495859}
!59 = !{i64 -1520400136637673040}
!60 = !{i64 5984170735826623290}
!61 = !{i64 -6276111967076797387}
!62 = !{i64 3442664343918730989}
!63 = !{i64 3668723386505755292}
!64 = !{i64 -3650442541989866621}
!65 = !{i64 -2678696502469437059}
!66 = !{i64 -1466484959749431215}
!67 = !{i64 902943600532335669}
!68 = !{i64 -5048117611910969732}
!69 = !{i64 -6466575904214920596}
!70 = !{i64 -8996249655105258998}
!71 = !{i64 -48421385792647422}
!72 = !{i64 8525456522938098467}
!73 = !{i64 8370482971695920057}
!74 = !{i64 8052131104831435919}
!75 = !{i64 7837602480261995814}
!76 = !{i64 -7832089950017931490}
!77 = !{i64 -3409362931178714074}
!78 = !{i64 3516898161350316613}
!79 = !{i64 6860196389787880967}
!80 = !{!16, !16, i64 0}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"any pointer", !16, i64 0}
!84 = !{!"p1 omnipotent char", !83, i64 0}
!85 = !{!"long", !16, i64 0}
!86 = !{!"p1 _ZTS17mz_internal_state", !83, i64 0}
!87 = !{!"mz_stream_s", !84, i64 0, !17, i64 8, !85, i64 16, !84, i64 24, !17, i64 32, !85, i64 40, !84, i64 48, !86, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !17, i64 88, !85, i64 96, !85, i64 104}
!88 = !{!87, !17, i64 88}
!89 = !{!87, !85, i64 96}
!90 = !{!87, !85, i64 104}
!91 = !{!87, !85, i64 16}
!92 = !{!87, !83, i64 64}
!93 = !{!87, !83, i64 72}
!94 = !{!87, !83, i64 80}
!95 = !{!87, !86, i64 56}
!96 = !{!"p1 long", !83, i64 0}
!97 = !{!"", !83, i64 0, !83, i64 8, !17, i64 16, !16, i64 20, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !83, i64 136, !83, i64 144, !96, i64 152, !96, i64 160, !17, i64 168, !84, i64 176, !85, i64 184, !85, i64 192, !16, i64 200, !16, i64 33226, !16, i64 34954, !16, i64 36682, !16, i64 37546, !16, i64 103082, !16, i64 168618, !16, i64 234154}
!98 = !{!97, !17, i64 16}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!378 = distinct !{!378, !81}
!379 = !{i64 -701521174556227129}
!380 = !{!97, !17, i64 88}
!381 = !{!97, !17, i64 124}
!382 = !{i64 8391480328641978658}
!383 = !{i64 1406105032629506323}
!384 = !{i64 4791272049373182791}
!385 = !{i64 1330806171556421794}
!386 = !{i64 -1753251007804321809}
!387 = !{i64 -8264711858068859193}
!388 = distinct !{!388, !82}
!389 = distinct !{!389, !82}
!390 = !{i64 -1774004435582322855}
!391 = !{i64 5812288951374369053}
!392 = !{i64 -4293284352030627270}
!393 = distinct !{null}
!394 = distinct !{!394, !82}
!395 = distinct !{!395, !82}
!396 = distinct !{!396, !82}
!397 = !{i64 6879888265919130139}
!398 = !{!154, !17, i64 28}
!399 = !{!164, !17, i64 104}
!400 = !{i64 9103848612012208532}
!401 = !{i64 7788334861226881431}
!402 = !{i64 -8802767877565570177}
!403 = !{i64 5956101798542928014}
!404 = !{i64 936627569722041182}
!405 = !{i64 1211115258543706638}
!406 = !{i64 4589165230459122415}
!407 = !{i64 9085218545713355210}
!408 = !{i64 -1820674131351263958}
!409 = !{!185, !17, i64 0}
!410 = !{!185, !139, i64 10}
!411 = !{!190, !17, i64 32}
!412 = !{!185, !139, i64 48}
!413 = !{!185, !17, i64 64}
!414 = !{i64 4945987823079478909}
!415 = distinct !{!415, !82}
!416 = distinct !{!416, !82}
!417 = distinct !{!417, !82}
!418 = distinct !{!418, !82}
!419 = distinct !{!419, !82}
!420 = !{i64 2406002929389343849}
!421 = !{!164, !85, i64 72}
!422 = !{i64 7180042338350551911}
!423 = !{i64 -2970595459866399893}
!424 = !{i64 705853374431799512}
!425 = !{i64 -8083681427513250158}
!426 = !{i64 -3675455652605953144}
!427 = !{i64 -7890735919881130463}
!428 = distinct !{!428, !82}
!429 = distinct !{!429, !82}
!430 = !{i64 -7143236068676887845}
!431 = !{i64 -5878468348811541197}
!432 = !{i64 -7267874711283941359}
!433 = !{i64 -401355557404035835}
!434 = !{i64 -3766216591967120310}
!435 = !{i64 3641879259970721883}
!436 = !{i64 -6477980001016948316}
!437 = !{i64 -8374785160602751199}
!438 = distinct !{!438, !82}
!439 = !{i64 429005236348509546}
!440 = !{i64 -4251388698833995298}
!441 = distinct !{!441, !82}
!442 = !{i64 5019374597297320375}
!443 = !{i64 5582751650802183468}
!444 = !{i64 -7469791474039209572}
!445 = !{i64 -7135052820407835047}
!446 = !{i64 -7790948336891717141}
!447 = !{i64 -4802699052107751887}
!448 = !{i64 6170154422323745754}
!449 = !{i64 3434645078457787028}
!450 = distinct !{!450, !82}
!451 = !{i64 -1184990473453025490}
!452 = distinct !{!452, !82}
!453 = !{i64 -1693337925715097788}
!454 = !{i64 -3593390961366706009}
!455 = !{i64 8501949967183227785}
!456 = !{i64 -6753339865258775545}
!457 = !{i64 7882617947755924903}
!458 = !{i64 -2984110647989145402}
!459 = !{i64 -6580137231098753248}
!460 = !{i64 -1897917986149780584}
!461 = !{i64 -9210685045215698653}
!462 = !{i64 -1067250208633949073}
!463 = !{!224, !83, i64 216}
!464 = !{i64 3490689503510056884}
!465 = !{i64 4798552441212814777}
!466 = !{i64 -779635523501957693}
!467 = !{i64 -8474254719463340335}
!468 = !{i64 -8288305899352987474}
!469 = !{i64 -8205718263291063807}
!470 = !{i64 -5226647831321295124}
!471 = !{i64 5435254695178290253}
!472 = distinct !{!472, !82}
!473 = !{i64 -6362864369200039936}
!474 = !{i64 -4281849789427736433}
!475 = !{i64 9022916650998602960}
!476 = !{i64 -5454763550107718044}
!477 = !{i64 -8254750084516259480}
!478 = !{i64 7332899079260674065}
!479 = distinct !{!479, !82}
!480 = distinct !{!480, !82}
!481 = distinct !{!481, !82}
!482 = distinct !{!482, !82, !141, !142}
!483 = distinct !{!483, !82}
!484 = distinct !{!484, !82}
!485 = distinct !{!485, !82}
!486 = distinct !{!486, !82, !142, !141}
!487 = distinct !{!487, !82}
!488 = distinct !{!488, !81}
!489 = distinct !{!489, !82}
!490 = distinct !{!490, !82}
!491 = distinct !{!491, !82}
!492 = distinct !{!492, !82}
!493 = distinct !{!493, !82}
!494 = !{i64 481305574669901889}
!495 = !{!224, !17, i64 20}
!496 = !{!"zip_entry_mark_t", !17, i64 0, !17, i64 4, !132, i64 8, !132, i64 16}
!497 = !{!496, !17, i64 4}
!498 = !{!496, !132, i64 8}
!499 = !{!496, !17, i64 0}
!500 = !{!496, !132, i64 16}
!501 = !{i64 967747061617916012}
!502 = distinct !{!502, !82}
!503 = distinct !{!503, !82}
!504 = distinct !{!504, !82, !507}
!505 = distinct !{!505, !82}
!506 = !{i64 -7593629092002575874}
!507 = !{!"llvm.loop.peeled.count", i32 1}
!508 = !{i64 5200575801424909474}
!509 = !{i64 -7809373574992113528}
!510 = !{i64 -5463901888773073320}
!511 = distinct !{!511, !82}
!512 = distinct !{!512, !82}
!513 = !{i64 8433518362826732232}
!514 = !{i64 -4851337312473919809}
!515 = distinct !{!515, !81}
!516 = distinct !{!516, !81}
!517 = distinct !{!517, !82}
!518 = distinct !{!518, !82}
!519 = distinct !{!519, !82}
!520 = distinct !{!520, !82}
!521 = distinct !{!521, !82}
!522 = distinct !{!522, !82}
!523 = distinct !{!523, !82}
!524 = distinct !{!524, !82, !147}
!525 = distinct !{!525, !82}
!526 = distinct !{!526, !81}
!527 = distinct !{!527, !82}
!528 = distinct !{!528, !82, !147}
!529 = distinct !{!529, !81}
!530 = distinct !{!530, !82}
!531 = distinct !{!531, !82, !147}
!532 = distinct !{!532, !82}
!533 = distinct !{!533, !82}
!534 = distinct !{!534, !81}
!535 = distinct !{!535, !82}
!536 = distinct !{!536, !82, !147}
!537 = distinct !{!537, !82}
!538 = distinct !{!538, !81}
!539 = distinct !{!539, !82}
!540 = distinct !{!540, !82, !147}
!541 = !{i64 -2329490266317244323}
!542 = distinct !{!542, !82}
!543 = distinct !{!543, !82}
!544 = distinct !{!544, !82}
!545 = distinct !{!545, !82}
!546 = distinct !{!546, !82}
!547 = distinct !{!547, !82}
!548 = distinct !{!548, !81}
!549 = distinct !{!549, !82}
!550 = distinct !{!550, !82}
!551 = distinct !{!551, !81}
!552 = distinct !{!552, !82}
!553 = distinct !{!553, !82}
!554 = distinct !{!554, !82}
!555 = distinct !{!555, !81}
!556 = distinct !{!556, !82, !142, !141}
!557 = distinct !{!557, !81}
!558 = distinct !{!558, !82}
!559 = distinct !{!559, !82}
!560 = distinct !{!560, !82}
!561 = distinct !{!561, !81}
!562 = distinct !{!562, !82}
!563 = distinct !{!563, !82}
!564 = distinct !{!564, !81}
!565 = distinct !{!565, !81}
!566 = distinct !{!566, !82}
!567 = distinct !{!567, !81}
!568 = !{i64 -9210843921222517923}
!569 = !{!"", !139, i64 0, !139, i64 2}
!570 = !{!569, !139, i64 0}
!571 = !{!569, !139, i64 2}
!572 = distinct !{!572, !82}
!573 = distinct !{!573, !82}
!574 = distinct !{!574, !82}
!575 = !{i64 235850052019602902}
!576 = !{i64 -1435924492973142331}
!577 = distinct !{!577, !82}
!578 = distinct !{!578, !82}
!579 = distinct !{!579, !82, !141, !142}
!580 = distinct !{!580, !82, !142, !141}
!581 = distinct !{!581, !82, !141, !142}
!582 = distinct !{!582, !82, !142, !141}
!583 = distinct !{!583, !82}
!584 = distinct !{!584, !82}
!585 = distinct !{!585, !82, !141, !142}
!586 = distinct !{!586, !82, !141}
!587 = !{i64 2460330534957039597}
!588 = !{!164, !85, i64 40}
end_hunk_1
