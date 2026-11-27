Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/SparseMatrix?download=true
inline.NumInlined: 69
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@SparseMatrix_add:bb.a
  store i32 %i.dj, ptr %i.dn, align 4, !tbaa !23
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.5218
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !23
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %indvars.iv267
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.5218
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !23
  %i.ds = add i64 %.5218, 1                       ; 2 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.dt = load i32, ptr %i.df, align 4, !tbaa !23
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next268, %i.du
  br i1 %i.dv, label %.lr.ph220, label %._crit_edge221, !llvm.loop !69

._crit_edge221:                                   ; preds = %.lr.ph220, %.lr.ph234
  %.5.lcssa = phi i64 [ %.4231, %.lr.ph234 ], [ %i.ds, %.lr.ph220 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv273
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !23 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next274 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !23
  %i.ea = icmp slt i32 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %._crit_edge221
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv273
  %i.ec = sext i32 %i.dx to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph228, %bb.t
  %indvars.iv270 = phi i64 [ %i.ec, %.lr.ph228 ], [ %indvars.iv.next271, %bb.t ] ; 4 uses
  %.6226 = phi i64 [ %.5.lcssa, %.lr.ph228 ], [ %.7, %bb.t ] ; 4 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv270
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !23 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !23 ; 2 uses
  %i.ei = load i32, ptr %i.eb, align 4, !tbaa !23
  %i.ej = icmp slt i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.6226
  store i32 %i.ee, ptr %i.ek, align 4, !tbaa !23
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %indvars.iv270
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.6226
  store i32 %i.em, ptr %i.en, align 4, !tbaa !23
  %i.eo = add i64 %.6226, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %indvars.iv270
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = sext i32 %i.eh to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !23
  %i.eu = add nsw i32 %i.et, %i.eq
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.7 = phi i64 [ %i.eo, %bb.r ], [ %.6226, %bb.s ] ; 2 uses
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.ev = load i32, ptr %i.dy, align 4, !tbaa !23
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next271, %i.ew
  br i1 %i.ex, label %bb.q, label %._crit_edge229, !llvm.loop !70

._crit_edge229:                                   ; preds = %bb.t, %._crit_edge221
  %.6.lcssa = phi i64 [ %.5.lcssa, %._crit_edge221 ], [ %.7, %bb.t ] ; 3 uses
  %i.ey = trunc i64 %.6.lcssa to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next274
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !23
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.loopexit, label %.lr.ph234, !llvm.loop !71

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %._crit_edge211
  %indvars.iv264 = phi i64 [ 0, %.lr.ph215.preheader ], [ %indvars.iv.next265, %._crit_edge211 ] ; 4 uses
  %.8213 = phi i64 [ 0, %.lr.ph215.preheader ], [ %.10.lcssa, %._crit_edge211 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv264
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 5 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next265 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !23
  %i.fe = icmp slt i32 %i.fb, %i.fd
  br i1 %i.fe, label %.lr.ph203.preheader, label %._crit_edge204

.lr.ph203.preheader:                              ; preds = %.lr.ph215
  %i.ff = sext i32 %i.fb to i64
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %.lr.ph203
  %indvars.iv = phi i64 [ %i.ff, %.lr.ph203.preheader ], [ %indvars.iv.next, %.lr.ph203 ] ; 2 uses
  %.9201 = phi i64 [ %.8213, %.lr.ph203.preheader ], [ %i.fm, %.lr.ph203 ] ; 3 uses
  %i.fg = trunc i64 %.9201 to i32
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !23 ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.fj
  store i32 %i.fg, ptr %i.fk, align 4, !tbaa !23
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.9201
  store i32 %i.fi, ptr %i.fl, align 4, !tbaa !23
  %i.fm = add i64 %.9201, 1                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fn = load i32, ptr %i.fc, align 4, !tbaa !23
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next, %i.fo
  br i1 %i.fp, label %.lr.ph203, label %._crit_edge204, !llvm.loop !72

._crit_edge204:                                   ; preds = %.lr.ph203, %.lr.ph215
  %.9.lcssa = phi i64 [ %.8213, %.lr.ph215 ], [ %i.fm, %.lr.ph203 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv264
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next265 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !23 ; 2 uses
  %i.fu = icmp slt i32 %i.fr, %i.ft
  br i1 %i.fu, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge204
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv264 ; 2 uses
  %i.fw = sext i32 %i.fr to i64
  %.pre289 = load i32, ptr %i.fv, align 4, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %bb.w
  %i.fx = phi i32 [ %i.ft, %.lr.ph210 ], [ %i.gh, %bb.w ]
  %i.fy = phi i32 [ %.pre289, %.lr.ph210 ], [ %i.gi, %bb.w ] ; 2 uses
  %indvars.iv261 = phi i64 [ %i.fw, %.lr.ph210 ], [ %indvars.iv.next262, %bb.w ] ; 2 uses
  %.10208 = phi i64 [ %.9.lcssa, %.lr.ph210 ], [ %.11, %bb.w ] ; 3 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv261
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !23 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !23
  %i.ge = icmp slt i32 %i.gd, %i.fy
  br i1 %i.ge, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.10208
  store i32 %i.ga, ptr %i.gf, align 4, !tbaa !23
  %i.gg = add i64 %.10208, 1
  %.pre = load i32, ptr %i.fv, align 4, !tbaa !23
  %.pre290 = load i32, ptr %i.fs, align 4, !tbaa !23
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.gh = phi i32 [ %.pre290, %bb.v ], [ %i.fx, %bb.u ] ; 2 uses
  %i.gi = phi i32 [ %.pre, %bb.v ], [ %i.fy, %bb.u ]
  %.11 = phi i64 [ %i.gg, %bb.v ], [ %.10208, %bb.u ] ; 2 uses
  %indvars.iv.next262 = add nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.gj = sext i32 %i.gh to i64
  %i.gk = icmp slt i64 %indvars.iv.next262, %i.gj
  br i1 %i.gk, label %bb.u, label %._crit_edge211, !llvm.loop !73

._crit_edge211:                                   ; preds = %bb.w, %._crit_edge204
  %.10.lcssa = phi i64 [ %.9.lcssa, %._crit_edge204 ], [ %.11, %bb.w ] ; 3 uses
  %i.gl = trunc i64 %.10.lcssa to i32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next265
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !23
  %exitcond.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph215, !llvm.loop !74

bb.x:                                             ; preds = %._crit_edge
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.go = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 611) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit:                                        ; preds = %._crit_edge211, %._crit_edge229, %._crit_edge248, %.preheader, %bb.p, %bb.k
  %.12 = phi i64 [ %.6.lcssa, %._crit_edge229 ], [ %.2.lcssa, %._crit_edge248 ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %.preheader ], [ %.10.lcssa, %._crit_edge211 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.12, ptr %i.gp, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.an) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.0184 = phi ptr [ %i.x, %.loopexit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0184
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define internal fastcc noalias nonnull ptr @SparseMatrix_general_new(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #21 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.4, i64 noundef 72) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %6, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %4, ptr %i.f, align 8, !tbaa !30
  %cond.i = icmp eq i32 %5, 1
  br i1 %cond.i, label %SparseMatrix_init.exit, label %bb.c

bb.c:                                             ; preds = %gv_alloc.exit.i
  %i.g = add nsw i32 %0, 1                        ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #21
  br label %SparseMatrix_init.exit.thread

bb.d:                                             ; preds = %bb.c
  %mul.ov.i.i = icmp slt i32 %0, -1
  br i1 %mul.ov.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.3, i64 noundef %i.h, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #21 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %SparseMatrix_init.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.o = shl nuw nsw i64 %i.h, 2
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.4, i64 noundef %i.o) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

SparseMatrix_init.exit:                           ; preds = %gv_alloc.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 1, ptr %i.q, align 8, !tbaa !19
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.y, label %bb.h

SparseMatrix_init.exit.thread:                    ; preds = %.thread.i, %bb.f
  %i.r = phi ptr [ %i.i, %.thread.i ], [ %i.l, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %5, ptr %i.t, align 8, !tbaa !19
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %bb.y, label %bb.q

bb.h:                                             ; preds = %SparseMatrix_init.exit
  %mul.ov.i.i9 = icmp ugt i64 %2, 4611686018427387903
  br i1 %mul.ov.i.i9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef 4) #21 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.z = shl nuw i64 %2, 2
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.4, i64 noundef %i.z) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !13
  %i.ac = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef 4) #21 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.m, label %gv_calloc.exit22.i

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.af = shl nuw i64 %2, 2
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.4, i64 noundef %i.af) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit22.i:                               ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !14
  %mul.i23.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %2, i64 %4)
  %mul.ov.i24.i = extractvalue { i64, i1 } %mul.i23.i, 1
  br i1 %mul.ov.i24.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %gv_calloc.exit22.i
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef %4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.o:                                             ; preds = %gv_calloc.exit22.i
  %i.ak = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef %4) #21 ; 2 uses
  %i.al = icmp ne i64 %4, 0
  %i.am = icmp eq ptr %i.ak, null
  %i.an = and i1 %i.al, %i.am
  br i1 %i.an, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ap = mul i64 %4, %2
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.4, i64 noundef %i.ap) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.q:                                             ; preds = %SparseMatrix_init.exit.thread
  %mul.ov.i.i912 = icmp ugt i64 %2, 4611686018427387903
  br i1 %mul.ov.i.i912, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef 4) #21 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %gv_calloc.exit28.i

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aw = shl nuw i64 %2, 2
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.4, i64 noundef %i.aw) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit28.i:                               ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !14
  %.not.i10 = icmp eq i64 %4, 0
  br i1 %.not.i10, label %SparseMatrix_alloc.exit, label %bb.u

bb.u:                                             ; preds = %gv_calloc.exit28.i
  %mul.i29.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %2, i64 %4)
  %mul.ov.i30.i = extractvalue { i64, i1 } %mul.i29.i, 1
  br i1 %mul.ov.i30.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef %4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bb = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef %4) #21 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.be = mul i64 %4, %2
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.4, i64 noundef %i.be) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.sink.split.i:                                    ; preds = %bb.w, %bb.o
  %.sink.i.a = phi ptr [ %i.ak, %bb.o ], [ %i.bb, %bb.w ]
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sink.i.a, ptr %7, align 8, !tbaa !15
  br label %SparseMatrix_alloc.exit

SparseMatrix_alloc.exit:                          ; preds = %gv_calloc.exit28.i, %.sink.split.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.bg, align 8, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %SparseMatrix_init.exit.thread, %SparseMatrix_alloc.exit, %SparseMatrix_init.exit
  ret ptr %i.a
}

; Function Attrs: nofree nounwind uwtable
define void @SparseMatrix_export(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  switch i32 %i.b, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %cond.i = icmp eq i32 %i.e, 4
  br i1 %cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5) #17 ; 0 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.g, i32 noundef %i.i, i64 noundef %i.k) #17 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = icmp sgt i32 %i.c, 0
  br i1 %i.s, label %.lr.ph27.preheader.i, label %SparseMatrix_export_csr.exit

.lr.ph27.preheader.i:                             ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !23
  br label %.lr.ph27.i

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.6, i64 46, i64 1, ptr %i.t) #22 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph27.i
  %i.u = phi i32 [ %i.x, %.lr.ph27.i ], [ %i.ah, %.lr.ph.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SparseMatrix_export_csr.exit, label %.lr.ph27.i, !llvm.loop !75

.lr.ph27.i:                                       ; preds = %.loopexit.i, %.lr.ph27.preheader.i
  %i.v = phi i32 [ %.pre.i, %.lr.ph27.preheader.i ], [ %i.u, %.loopexit.i ] ; 2 uses
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph27.preheader.i ], [ %indvars.iv.next30.i, %.loopexit.i ]
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next30.i ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !23   ; 2 uses
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph27.i
  %i.z = sext i32 %i.v to i64
  %i.aa = trunc nuw nsw i64 %indvars.iv.next30.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.af) #17 ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !23  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !76

SparseMatrix_export_csr.exit:                     ; preds = %.loopexit.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 54, i64 1, ptr %i.ak) #22 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 373) #18 ; 0 uses
  tail call void @abort() #19
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_from_coordinate_format(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = tail call fastcc ptr @SparseMatrix_from_coordinate_arrays_internal(i64 noundef %i.j, i32 noundef %i.k, i32 noundef %i.m, ptr noundef readonly %i.f, ptr noundef readonly %i.h, ptr noundef readonly %i.d, i32 noundef %i.o, i64 noundef %i.q, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_from_coordinate_arrays(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @SparseMatrix_from_coordinate_arrays_internal(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = tail call fastcc ptr @SparseMatrix_from_coordinate_arrays_internal(i64 noundef %i.j, i32 noundef %i.k, i32 noundef %i.m, ptr noundef readonly %i.f, ptr noundef readonly %i.h, ptr noundef readonly %i.d, i32 noundef %i.o, i64 noundef %i.q, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_from_coordinate_arrays_not_compacted(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @SparseMatrix_from_coordinate_arrays_internal(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SparseMatrix_from_coordinate_arrays_internal(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %i.b = icmp slt i32 %2, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @SparseMatrix_general_new(i32 noundef %1, i32 noundef %2, i64 noundef %0, i32 noundef %6, i64 noundef %7, i32 noundef 0) ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 33 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 7 uses
  %i.h = add nuw i32 %1, 1
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
end_hunk_0
