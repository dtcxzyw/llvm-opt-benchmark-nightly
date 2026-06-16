inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@MSalignmm:bb.a
  %i.dg = tail call fastcc float @MSalignmm_rec(i32 noundef %4, i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.x, ptr noundef %i.y, i32 noundef 0, i32 noundef %i.de, i32 noundef 0, i32 noundef %i.df, ptr noundef %i.o, ptr noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.q)
  br i1 %i.z, label %.lr.ph225.preheader, label %.preheader207

.lr.ph225.preheader:                              ; preds = %._crit_edge222
  %wide.trip.count258 = zext nneg i32 %4 to i64
  br label %.lr.ph225

.preheader207:                                    ; preds = %.lr.ph225, %._crit_edge222
  br i1 %i.ab, label %.lr.ph227.preheader, label %._crit_edge228

.lr.ph227.preheader:                              ; preds = %.preheader207
  %wide.trip.count263 = zext nneg i32 %5 to i64
  br label %.lr.ph227

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %.lr.ph225
  %indvars.iv255 = phi i64 [ 0, %.lr.ph225.preheader ], [ %indvars.iv.next256, %.lr.ph225 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv255
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv255
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !8
  %i.dl = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(1) %i.dk) #13 ; 0 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %.preheader207, label %.lr.ph225, !llvm.loop !36

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %.lr.ph227
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvars.iv.next261, %.lr.ph227 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv260
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv260
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8
  %i.dq = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dn, ptr noundef nonnull dereferenceable(1) %i.dp) #13 ; 0 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263
  br i1 %exitcond264.not, label %._crit_edge228, label %.lr.ph227, !llvm.loop !37

._crit_edge228:                                   ; preds = %.lr.ph227, %.preheader207
  %i.dr = load ptr, ptr %0, align 8, !tbaa !8
  %i.ds = tail call i32 @seqlen(ptr noundef %i.dr) #13
  %.not198 = icmp eq i32 %i.ds, %i.d
  br i1 %.not198, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge228
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.du = load ptr, ptr %0, align 8, !tbaa !8
  %i.dv = tail call i32 @seqlen(ptr noundef %i.du) #13
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.3, i32 noundef %i.dv, i32 noundef %i.d) #15 ; 0 uses
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dy = load ptr, ptr %0, align 8, !tbaa !8
  %i.dz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.4, ptr noundef %i.dy) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %._crit_edge228
  %i.ea = load ptr, ptr %1, align 8, !tbaa !8
  %i.eb = tail call i32 @seqlen(ptr noundef %i.ea) #13
  %.not199 = icmp eq i32 %i.eb, %i.f
  br i1 %.not199, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ed = load ptr, ptr %1, align 8, !tbaa !8
  %i.ee = tail call i32 @seqlen(ptr noundef %i.ed) #13
  %i.ef = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.5, i32 noundef %i.ee, i32 noundef %i.f) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @FreeFloatVec(ptr noundef %i.s) #13
  tail call void @FreeFloatVec(ptr noundef %i.u) #13
  tail call void @FreeFloatVec(ptr noundef %i.v) #13
  tail call void @FreeFloatVec(ptr noundef %i.w) #13
  tail call void @FreeFloatMtx(ptr noundef %i.x) #13
  tail call void @FreeFloatMtx(ptr noundef %i.y) #13
  tail call void @free(ptr noundef nonnull %i.q) #13
  tail call void @FreeCharMtx(ptr noundef %i.o) #13
  tail call void @FreeCharMtx(ptr noundef %i.p) #13
  %i.eg = load ptr, ptr %1, align 8, !tbaa !8
  %i.eh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #14
  br i1 %i.z, label %.lr.ph231, label %.preheader

.lr.ph231:                                        ; preds = %bb.n
  %i.ei = load ptr, ptr %0, align 8, !tbaa !8
  %i.ej = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ei) #14
  %sext201 = shl i64 %i.ej, 32
  %i.ek = ashr exact i64 %sext201, 32
  %wide.trip.count268 = zext nneg i32 %4 to i64
  br label %bb.o

.preheader:                                       ; preds = %bb.q, %bb.n
  br i1 %i.ab, label %.lr.ph233, label %._crit_edge234

.lr.ph233:                                        ; preds = %.preheader
  %sext = shl i64 %i.eh, 32
  %i.el = ashr exact i64 %sext, 32
  %wide.trip.count273 = zext nneg i32 %5 to i64
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph231, %bb.q
  %indvars.iv265 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next266, %bb.q ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv265
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !8
  %i.eo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #14
  %.not202 = icmp eq i64 %i.eo, %i.ek
  br i1 %.not202, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str, i32 noundef %i.ep, i32 noundef %4) #15 ; 0 uses
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.et = tail call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %i.es) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %.preheader, label %bb.o, !llvm.loop !38

bb.r:                                             ; preds = %.lr.ph233, %bb.t
  %indvars.iv270 = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next271, %bb.t ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv270
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !8
  %i.ew = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ev) #14
  %.not200 = icmp eq i64 %i.ew, %i.el
  br i1 %.not200, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = trunc nuw nsw i64 %indvars.iv270 to i32
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.2, i32 noundef %i.ex, i32 noundef %5) #15 ; 0 uses
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fb = tail call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %i.fa) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %._crit_edge234, label %bb.r, !llvm.loop !39

._crit_edge234:                                   ; preds = %bb.t, %.preheader
  ret float %i.dg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @seqlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare void @MScpmx_calc_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @new_OpeningGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @new_FinalGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @st_OpeningGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @st_FinalGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @MSalignmm_rec(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, i32 noundef %12, ptr noundef %13) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %11 to i64
  %i.b = ptrtoaddr ptr %10 to i64
  %i.c = load ptr, ptr %13, align 8, !tbaa !34    ; 4 uses
  %i.d = sext i32 %6 to i64                       ; 14 uses
  %i.e = getelementptr [4 x i8], ptr %i.c, i64 %i.d ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %i.d ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 4 uses
  %i.k = sext i32 %8 to i64                       ; 12 uses
  %i.l = getelementptr [4 x i8], ptr %i.j, i64 %i.k ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 3 uses
  %i.o = getelementptr [4 x i8], ptr %i.n, i64 %i.k ; 12 uses
  %i.p = add nsw i32 %12, 1                       ; 2 uses
  %i.q = load i32, ptr @reccycle, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr @reccycle, align 4, !tbaa !4
  %i.s = sub i32 %7, %6                           ; 22 uses
  %i.t = add i32 %i.s, 1                          ; 8 uses
  %i.u = sub nsw i32 %9, %8                       ; 22 uses
  %i.v = add nsw i32 %i.u, 1                      ; 12 uses
  %i.w = icmp slt i32 %i.u, 0
  br i1 %i.w, label %.preheader1, label %bb.d

.preheader1:                                      ; preds = %bb.a
  %i.x = icmp sgt i32 %0, 0
  br i1 %i.x, label %.lr.ph110, label %.preheader

.lr.ph110:                                        ; preds = %.preheader1
  %i.y = sext i32 %i.t to i64                     ; 2 uses
  %wide.trip.count259 = zext nneg i32 %0 to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %.preheader1
  %i.z = icmp sgt i32 %1, 0
  br i1 %i.z, label %.lr.ph117, label %common.ret

.lr.ph117:                                        ; preds = %.preheader
  %14 = icmp sgt i32 %i.s, -1
  %wide.trip.count266 = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph110, %bb.b
  %indvars.iv255 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next256, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv255 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv255
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.d
  %i.af = tail call ptr @strncpy(ptr noundef %i.ab, ptr noundef %i.ae, i64 noundef %i.y) #13 ; 0 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !40
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.b, !llvm.loop !41

bb.c:                                             ; preds = %.lr.ph117, %._crit_edge115
  %indvars.iv262 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next263, %._crit_edge115 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv262 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  store i8 0, ptr %i.aj, align 1, !tbaa !40
  br i1 %14, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.c, %.lr.ph114
  %.0630112 = phi i32 [ %i.al, %.lr.ph114 ], [ 0, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.ak)
  %endptr = getelementptr inbounds i8, ptr %i.ak, i64 %strlen
  store i16 45, ptr %endptr, align 1
  %i.al = add nuw i32 %.0630112, 1
  %exitcond261.not = icmp eq i32 %.0630112, %i.s
  br i1 %exitcond261.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !42

._crit_edge115:                                   ; preds = %.lr.ph114, %bb.c
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count266
  br i1 %exitcond267.not, label %common.ret, label %bb.c, !llvm.loop !43

bb.d:                                             ; preds = %bb.a
  %i.am = tail call ptr @AllocateCharMtx(i32 noundef %0, i32 noundef 0) #13 ; 14 uses
  %i.an = tail call ptr @AllocateCharMtx(i32 noundef %1, i32 noundef 0) #13 ; 13 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = icmp sgt i32 %0, 0                      ; 5 uses
  br i1 %i.ap, label %.lr.ph.preheader, label %.preheader13

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.aq = ptrtoaddr ptr %i.am to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 6
  %i.ar = sub i64 %i.aq, %i.b
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond379 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond379, label %.lr.ph.preheader400, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !tbaa !8
  %wide.load24 = load <2 x ptr>, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x ptr> %wide.load, ptr %i.au, align 8, !tbaa !8
  store <2 x ptr> %wide.load24, ptr %i.av, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader13, label %.lr.ph.preheader400

.lr.ph.preheader400:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader400, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader400 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader400 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.prol
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !45

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader400
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader400 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.preheader13, label %.lr.ph

.preheader13:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.d
  %i.bc = icmp sgt i32 %1, 0                      ; 5 uses
  br i1 %i.bc, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader13
  %wide.trip.count137 = zext nneg i32 %1 to i64   ; 5 uses
  %min.iters.check28 = icmp ult i32 %1, 6
  %i.bd = sub i64 %i.ao, %i.a
  %diff.check26 = icmp ult i64 %i.bd, 32
  %or.cond380 = select i1 %min.iters.check28, i1 true, i1 %diff.check26
  br i1 %or.cond380, label %.lr.ph25.preheader399, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph25.preheader
  %n.vec31 = and i64 %wide.trip.count137, 2147483644 ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next36, %vector.body32 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index33 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load34 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !8
  %wide.load35 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index33 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x ptr> %wide.load34, ptr %i.bg, align 8, !tbaa !8
  store <2 x ptr> %wide.load35, ptr %i.bh, align 8, !tbaa !8
  %index.next36 = add nuw i64 %index33, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.bi, label %middle.block37, label %vector.body32, !llvm.loop !47

middle.block37:                                   ; preds = %vector.body32
  %cmp.n38 = icmp eq i64 %n.vec31, %wide.trip.count137
  br i1 %cmp.n38, label %._crit_edge, label %.lr.ph25.preheader399

.lr.ph25.preheader399:                            ; preds = %.lr.ph25.preheader, %middle.block37
  %indvars.iv134.ph = phi i64 [ 0, %.lr.ph25.preheader ], [ %n.vec31, %middle.block37 ] ; 3 uses
  %xtraiter401 = and i64 %wide.trip.count137, 3   ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol

.lr.ph25.prol:                                    ; preds = %.lr.ph25.preheader399, %.lr.ph25.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph25.prol ], [ %indvars.iv134.ph, %.lr.ph25.preheader399 ] ; 3 uses
  %prol.iter403 = phi i64 [ %prol.iter403.next, %.lr.ph25.prol ], [ 0, %.lr.ph25.preheader399 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv134.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv134.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !8
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 2 uses
  %prol.iter403.next = add i64 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i64 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol, !llvm.loop !48

.lr.ph25.prol.loopexit:                           ; preds = %.lr.ph25.prol, %.lr.ph25.preheader399
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph25.preheader399 ], [ %indvars.iv.next135.prol, %.lr.ph25.prol ]
  %i.bm = sub nsw i64 %indvars.iv134.ph, %wide.trip.count137
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next.1
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next.2
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader13, label %.lr.ph, !llvm.loop !49

.lr.ph25:                                         ; preds = %.lr.ph25.prol.loopexit, %.lr.ph25
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph25 ], [ %indvars.iv134.unr, %.lr.ph25.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv134
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv134
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !8
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next135
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next135
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !8
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next135.1
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next135.1
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !8
  %indvars.iv.next135.2 = add nuw nsw i64 %indvars.iv134, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next135.2
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next135.2
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !8
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %exitcond138.not.3 = icmp eq i64 %indvars.iv.next135.3, %wide.trip.count137
  br i1 %exitcond138.not.3, label %._crit_edge, label %.lr.ph25, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph25.prol.loopexit, %.lr.ph25, %middle.block37, %.preheader13
  %i.cm = icmp slt i32 %i.s, 99
  %i.cn = icmp samesign ult i32 %i.u, 99
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.e, label %.lr.ph28.preheader

bb.e:                                             ; preds = %._crit_edge
  %i.co = load ptr, ptr %13, align 8, !tbaa !34   ; 3 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.d ; 7 uses
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.d ; 6 uses
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.k ; 7 uses
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !34  ; 2 uses
end_hunk_0
begin_hunk_1_@MSalignmm_rec:bb.a
  %i.tr = and i64 %wide.trip.count147, 1
  %lcmp.mod408.not.not = icmp eq i64 %i.tr, 0
  br i1 %lcmp.mod408.not.not, label %.lr.ph30.prol, label %.lr.ph30.prol.loopexit

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader397
  %i.ts = load float, ptr %i.l, align 4, !tbaa !16
  %i.tt = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144.ph
  %i.tu = getelementptr i8, ptr %i.tt, i64 -4
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !16
  %i.tw = fadd float %i.ts, %i.tv
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv144.ph ; 2 uses
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !16
  %i.tz = fadd float %i.ty, %i.tw
  store float %i.tz, ptr %i.tx, align 4, !tbaa !16
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader397
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph30.preheader397 ], [ %indvars.iv.next145.prol, %.lr.ph30.prol ]
  %i.ua = add nsw i64 %wide.trip.count147, -1
  %i.ub = icmp eq i64 %indvars.iv144.ph, %i.ua
  br i1 %i.ub, label %.lr.ph32, label %.lr.ph30

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %.lr.ph28 ], [ %indvars.iv139.unr, %.lr.ph28.prol.loopexit ] ; 4 uses
  %i.uc = load float, ptr %i.e, align 4, !tbaa !16
  %i.ud = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv139
  %i.ue = getelementptr i8, ptr %i.ud, i64 -4
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !16
  %i.ug = fadd float %i.uc, %i.uf
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv139 ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !16
  %i.uj = fadd float %i.ui, %i.ug
  store float %i.uj, ptr %i.uh, align 4, !tbaa !16
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.uk = load float, ptr %i.e, align 4, !tbaa !16
  %i.ul = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next140
  %i.um = getelementptr i8, ptr %i.ul, i64 -4
  %i.un = load float, ptr %i.um, align 4, !tbaa !16
  %i.uo = fadd float %i.uk, %i.un
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.next140 ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !16
  %i.ur = fadd float %i.uq, %i.uo
  store float %i.ur, ptr %i.up, align 4, !tbaa !16
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.1, label %.lr.ph30.preheader, label %.lr.ph28, !llvm.loop !118

.lr.ph32:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30, %middle.block87
  %i.us = getelementptr i8, ptr %i.e, i64 4       ; 6 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.sx, i32 2)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64
  %i.ut = add nsw i64 %wide.trip.count147, -1     ; 2 uses
  %min.iters.check103 = icmp slt i32 %i.sx, 17
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph32
  %scevgep91 = getelementptr i8, ptr %i.ri, i64 4 ; 2 uses
  %i.uu = shl nuw nsw i64 %wide.trip.count147, 2  ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.ri, i64 %i.uu ; 2 uses
  %i.uv = getelementptr i8, ptr %i.qu, i64 %i.uu
  %scevgep93 = getelementptr i8, ptr %i.uv, i64 -4
  %i.uw = shl nsw i64 %i.d, 2
  %i.ux = getelementptr i8, ptr %i.c, i64 %i.uw
  %scevgep94 = getelementptr i8, ptr %i.ux, i64 8
  %bound095 = icmp ult ptr %scevgep91, %scevgep93
  %bound196 = icmp ult ptr %i.qu, %scevgep92
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult ptr %scevgep91, %scevgep94
  %bound199 = icmp ult ptr %i.us, %scevgep92
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  br i1 %conflict.rdx101, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck90
  %n.vec106 = and i64 %i.ut, -8                   ; 3 uses
  %i.uy = or disjoint i64 %n.vec106, 1
  %i.uz = load float, ptr %i.us, align 4, !tbaa !16, !alias.scope !119
  %broadcast.splatinsert111 = insertelement <4 x float> poison, float %i.uz, i64 0
  %broadcast.splat112 = shufflevector <4 x float> %broadcast.splatinsert111, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %i.va = or disjoint i64 %index108, 1            ; 3 uses
  %i.vb = getelementptr [4 x i8], ptr %i.qu, i64 %i.va ; 2 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 -4
  %i.vd = getelementptr i8, ptr %i.vb, i64 12
  %wide.load109 = load <4 x float>, ptr %i.vc, align 4, !tbaa !16, !alias.scope !122
  %wide.load110 = load <4 x float>, ptr %i.vd, align 4, !tbaa !16, !alias.scope !122
  %i.ve = fadd <4 x float> %wide.load109, %broadcast.splat112
  %i.vf = fadd <4 x float> %wide.load110, %broadcast.splat112
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.va ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  store <4 x float> %i.ve, ptr %i.vg, align 4, !tbaa !16, !alias.scope !124, !noalias !126
  store <4 x float> %i.vf, ptr %i.vh, align 4, !tbaa !16, !alias.scope !124, !noalias !126
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.va ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store <4 x i32> zeroinitializer, ptr %i.vi, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.vj, align 4, !tbaa !4
  %index.next113 = add nuw i64 %index108, 8       ; 2 uses
  %i.vk = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.vk, label %middle.block114, label %vector.body107, !llvm.loop !127

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %i.ut, %n.vec106
  br i1 %cmp.n115, label %._crit_edge33, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %vector.memcheck90, %.lr.ph32, %middle.block114
  %indvars.iv149.ph = phi i64 [ 1, %vector.memcheck90 ], [ 1, %.lr.ph32 ], [ %i.uy, %middle.block114 ] ; 6 uses
  %i.vl = and i64 %wide.trip.count147, 1
  %lcmp.mod411.not.not = icmp eq i64 %i.vl, 0
  br i1 %lcmp.mod411.not.not, label %scalar.ph102.prol, label %scalar.ph102.prol.loopexit

scalar.ph102.prol:                                ; preds = %scalar.ph102.preheader
  %i.vm = getelementptr [4 x i8], ptr %i.qu, i64 %indvars.iv149.ph
  %i.vn = getelementptr i8, ptr %i.vm, i64 -4
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !16
  %i.vp = load float, ptr %i.us, align 4, !tbaa !16
  %i.vq = fadd float %i.vo, %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv149.ph
  store float %i.vq, ptr %i.vr, align 4, !tbaa !16
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv149.ph
  store i32 0, ptr %i.vs, align 4, !tbaa !4
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.ph, 1
  br label %scalar.ph102.prol.loopexit

scalar.ph102.prol.loopexit:                       ; preds = %scalar.ph102.prol, %scalar.ph102.preheader
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %scalar.ph102.preheader ], [ %indvars.iv.next150.prol, %scalar.ph102.prol ]
  %i.vt = add nsw i64 %wide.trip.count147, -1
  %i.vu = icmp eq i64 %indvars.iv149.ph, %i.vt
  br i1 %i.vu, label %._crit_edge33, label %scalar.ph102

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph30 ], [ %indvars.iv144.unr, %.lr.ph30.prol.loopexit ] ; 4 uses
  %i.vv = load float, ptr %i.l, align 4, !tbaa !16
  %i.vw = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144
  %i.vx = getelementptr i8, ptr %i.vw, i64 -4
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !16
  %i.vz = fadd float %i.vv, %i.vy
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv144 ; 2 uses
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !16
  %i.wc = fadd float %i.wb, %i.vz
  store float %i.wc, ptr %i.wa, align 4, !tbaa !16
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.wd = load float, ptr %i.l, align 4, !tbaa !16
  %i.we = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.next145
  %i.wf = getelementptr i8, ptr %i.we, i64 -4
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !16
  %i.wh = fadd float %i.wd, %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next145 ; 2 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !16
  %i.wk = fadd float %i.wj, %i.wh
  store float %i.wk, ptr %i.wi, align 4, !tbaa !16
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %exitcond148.not.1 = icmp eq i64 %indvars.iv.next145.1, %wide.trip.count147
  br i1 %exitcond148.not.1, label %.lr.ph32, label %.lr.ph30, !llvm.loop !128

scalar.ph102:                                     ; preds = %scalar.ph102.prol.loopexit, %scalar.ph102
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %scalar.ph102 ], [ %indvars.iv149.unr, %scalar.ph102.prol.loopexit ] ; 5 uses
  %i.wl = getelementptr [4 x i8], ptr %i.qu, i64 %indvars.iv149
  %i.wm = getelementptr i8, ptr %i.wl, i64 -4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !16
  %i.wo = load float, ptr %i.us, align 4, !tbaa !16
  %i.wp = fadd float %i.wn, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv149
  store float %i.wp, ptr %i.wq, align 4, !tbaa !16
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv149
  store i32 0, ptr %i.wr, align 4, !tbaa !4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %i.ws = getelementptr [4 x i8], ptr %i.qu, i64 %indvars.iv.next150
  %i.wt = getelementptr i8, ptr %i.ws, i64 -4
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !16
  %i.wv = load float, ptr %i.us, align 4, !tbaa !16
  %i.ww = fadd float %i.wu, %i.wv
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv.next150
  store float %i.ww, ptr %i.wx, align 4, !tbaa !16
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.next150
  store i32 0, ptr %i.wy, align 4, !tbaa !4
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %exitcond154.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count153
  br i1 %exitcond154.not.1, label %._crit_edge33, label %scalar.ph102, !llvm.loop !129

._crit_edge33:                                    ; preds = %scalar.ph102.prol.loopexit, %scalar.ph102, %middle.block114
  %i.wz = zext nneg i32 %i.u to i64               ; 14 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !16
  store float %i.xb, ptr %i.rh, align 4, !tbaa !16
  %i.xc = uitofp nneg i32 %i.t to double
  %i.xd = fmul nnan double %i.xc, 5.000000e-01
  %i.xe = fptosi double %i.xd to i32              ; 10 uses
  %.not47 = icmp slt i32 %i.xe, 1
  br i1 %.not47, label %.lr.ph58, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge33
  %i.xf = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.067035 = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %.067636 = getelementptr inbounds nuw i8, ptr %i.ri, i64 4 ; 2 uses
  %smax158 = tail call i32 @llvm.smax.i32(i32 %i.sx, i32 2) ; 2 uses
  %i.xg = zext nneg i32 %i.xe to i64
  %wide.trip.count170 = zext nneg i32 %i.xe to i64
  %wide.trip.count159 = zext nneg i32 %smax158 to i64
  %wide.trip.count165 = zext nneg i32 %smax158 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph52, %._crit_edge46
  %indvars.iv167 = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next168, %._crit_edge46 ] ; 7 uses
  %.066649 = phi ptr [ %i.qu, %.lr.ph52 ], [ %.066848, %._crit_edge46 ] ; 7 uses
  %.066848 = phi ptr [ %i.qv, %.lr.ph52 ], [ %.066649, %._crit_edge46 ] ; 7 uses
  %i.xh = add nsw i64 %indvars.iv167, -1          ; 5 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.xh
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !16
  store float %i.xj, ptr %.066649, align 4, !tbaa !16
  %i.xk = trunc nuw nsw i64 %indvars.iv167 to i32
  tail call fastcc void @match_calc(ptr noundef %.066848, ptr noundef %i.rq, ptr noundef %i.rp, i32 noundef %i.xk, i32 noundef %i.v, ptr noundef %i.rn, ptr noundef %i.ro, i32 noundef 0)
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv167
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !16
  store float %i.xm, ptr %.066848, align 4, !tbaa !16
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv167 ; 3 uses
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !16 ; 2 uses
  store float %i.xo, ptr %i.ri, align 4, !tbaa !16
  %i.xp = icmp eq i64 %indvars.iv167, %i.xg
  br i1 %i.xp, label %.lr.ph45.split.us.preheader, label %.lr.ph45.split.preheader

.lr.ph45.split.preheader:                         ; preds = %bb.u
  %i.xq = load float, ptr %.066649, align 4, !tbaa !16
  %i.xr = load float, ptr %i.xf, align 4, !tbaa !16
  %i.xs = fadd float %i.xq, %i.xr
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xh
  %i.xu = trunc nuw nsw i64 %i.xh to i32
  br label %.lr.ph45.split

.lr.ph45.split.us.preheader:                      ; preds = %bb.u
  store float %i.xo, ptr %i.qy, align 4, !tbaa !16
  %i.xv = load float, ptr %.066649, align 4, !tbaa !16
  %i.xw = load float, ptr %i.xf, align 4, !tbaa !16
  %i.xx = fadd float %i.xv, %i.xw
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xh
  %i.xz = trunc nuw nsw i64 %i.xh to i32          ; 2 uses
  br label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45.split.us.preheader, %bb.w
  %indvars.iv161 = phi i64 [ 1, %.lr.ph45.split.us.preheader ], [ %indvars.iv.next162, %bb.w ] ; 8 uses
  %.067643.us = phi ptr [ %.067636, %.lr.ph45.split.us.preheader ], [ %.0676.us, %bb.w ] ; 4 uses
  %.067042.us = phi ptr [ %.067035, %.lr.ph45.split.us.preheader ], [ %.0670.us, %bb.w ] ; 3 uses
  %.066848.pn310 = phi ptr [ %.066848, %.lr.ph45.split.us.preheader ], [ %.068041.us, %bb.w ]
  %.067239.us = phi i32 [ 0, %.lr.ph45.split.us.preheader ], [ %.1673.us, %bb.w ]
  %.067838.us = phi ptr [ %.066649, %.lr.ph45.split.us.preheader ], [ %i.zb, %bb.w ] ; 2 uses
  %.068237.us = phi float [ %i.xx, %.lr.ph45.split.us.preheader ], [ %.1683.us, %bb.w ] ; 3 uses
  %.068041.us = getelementptr inbounds nuw i8, ptr %.066848.pn310, i64 4 ; 3 uses
  %i.ya = load float, ptr %.067838.us, align 4, !tbaa !16 ; 4 uses
  %i.yb = add nsw i64 %indvars.iv161, -1          ; 2 uses
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.yb
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !16
  %i.ye = fadd float %.068237.us, %i.yd           ; 2 uses
  %i.yf = fcmp ogt float %i.ye, %i.ya
  %.0657.us = select i1 %i.yf, float %i.ye, float %i.ya ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv161
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !16
  %i.yi = fadd float %i.ya, %i.yh                 ; 2 uses
  %i.yj = fcmp ult float %i.yi, %.068237.us       ; 2 uses
  %.1683.us = select i1 %i.yj, float %.068237.us, float %i.yi ; 2 uses
  %i.yk = trunc nuw nsw i64 %i.yb to i32
  %.1673.us = select i1 %i.yj, i32 %.067239.us, i32 %i.yk ; 2 uses
  %i.yl = load float, ptr %.067643.us, align 4, !tbaa !16 ; 2 uses
  %i.ym = load float, ptr %i.xy, align 4, !tbaa !16
  %i.yn = fadd float %i.yl, %i.ym                 ; 2 uses
  %i.yo = fcmp ogt float %i.yn, %.0657.us
  %.1658.us = select i1 %i.yo, float %i.yn, float %.0657.us
  %i.yp = load float, ptr %i.xn, align 4, !tbaa !16
  %i.yq = fadd float %i.ya, %i.yp                 ; 2 uses
  %i.yr = fcmp ult float %i.yq, %i.yl
  br i1 %i.yr, label %.lr.ph45.split.us._crit_edge, label %bb.v

.lr.ph45.split.us._crit_edge:                     ; preds = %.lr.ph45.split.us
  %.pre = load i32, ptr %.067042.us, align 4, !tbaa !4
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph45.split.us
  store float %i.yq, ptr %.067643.us, align 4, !tbaa !16
  store i32 %i.xz, ptr %.067042.us, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph45.split.us._crit_edge, %bb.v
  %i.ys = phi i32 [ %.pre, %.lr.ph45.split.us._crit_edge ], [ %i.xz, %bb.v ]
  %i.yt = load float, ptr %.068041.us, align 4, !tbaa !16
  %i.yu = fadd float %.1658.us, %i.yt             ; 2 uses
  store float %i.yu, ptr %.068041.us, align 4, !tbaa !16
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv161
  store i32 %i.ys, ptr %i.yv, align 4, !tbaa !4
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv161
  store i32 %.1673.us, ptr %i.yw, align 4, !tbaa !4
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv161
  store float %i.yu, ptr %i.yx, align 4, !tbaa !16
  %i.yy = load float, ptr %.067643.us, align 4, !tbaa !16
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv161
  store float %i.yy, ptr %i.yz, align 4, !tbaa !16
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv161
  store float %.1683.us, ptr %i.za, align 4, !tbaa !16
  %i.zb = getelementptr inbounds nuw i8, ptr %.067838.us, i64 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %.0670.us = getelementptr inbounds nuw i8, ptr %.067042.us, i64 4
  %.0676.us = getelementptr inbounds nuw i8, ptr %.067643.us, i64 4
  %exitcond166.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge46, label %.lr.ph45.split.us, !llvm.loop !130

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %bb.y
  %indvars.iv155 = phi i64 [ 1, %.lr.ph45.split.preheader ], [ %indvars.iv.next156, %bb.y ] ; 3 uses
  %.067643 = phi ptr [ %.067636, %.lr.ph45.split.preheader ], [ %.0676, %bb.y ] ; 3 uses
  %.067042 = phi ptr [ %.067035, %.lr.ph45.split.preheader ], [ %.0670, %bb.y ] ; 2 uses
  %.066848.pn = phi ptr [ %.066848, %.lr.ph45.split.preheader ], [ %.068041, %bb.y ]
  %.067838 = phi ptr [ %.066649, %.lr.ph45.split.preheader ], [ %i.zu, %bb.y ] ; 2 uses
  %.068237 = phi float [ %i.xs, %.lr.ph45.split.preheader ], [ %.1683, %bb.y ] ; 3 uses
  %.068041 = getelementptr inbounds nuw i8, ptr %.066848.pn, i64 4 ; 3 uses
  %i.zc = load float, ptr %.067838, align 4, !tbaa !16 ; 4 uses
  %i.zd = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv155
  %i.ze = getelementptr i8, ptr %i.zd, i64 -4
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !16
  %i.zg = fadd float %.068237, %i.zf              ; 2 uses
  %i.zh = fcmp ogt float %i.zg, %i.zc
  %.0657 = select i1 %i.zh, float %i.zg, float %i.zc ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv155
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !16
  %i.zk = fadd float %i.zc, %i.zj                 ; 2 uses
  %.inv = fcmp oge float %i.zk, %.068237
  %.1683 = select i1 %.inv, float %i.zk, float %.068237
  %i.zl = load float, ptr %.067643, align 4, !tbaa !16 ; 2 uses
  %i.zm = load float, ptr %i.xt, align 4, !tbaa !16
  %i.zn = fadd float %i.zl, %i.zm                 ; 2 uses
  %i.zo = fcmp ogt float %i.zn, %.0657
  %.1658 = select i1 %i.zo, float %i.zn, float %.0657
  %i.zp = load float, ptr %i.xn, align 4, !tbaa !16
  %i.zq = fadd float %i.zc, %i.zp                 ; 2 uses
  %i.zr = fcmp ult float %i.zq, %i.zl
  br i1 %i.zr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph45.split
  store float %i.zq, ptr %.067643, align 4, !tbaa !16
  store i32 %i.xu, ptr %.067042, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph45.split
  %i.zs = load float, ptr %.068041, align 4, !tbaa !16
  %i.zt = fadd float %.1658, %i.zs
  store float %i.zt, ptr %.068041, align 4, !tbaa !16
  %i.zu = getelementptr inbounds nuw i8, ptr %.067838, i64 4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %.0670 = getelementptr inbounds nuw i8, ptr %.067042, i64 4
  %.0676 = getelementptr inbounds nuw i8, ptr %.067643, i64 4
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge46, label %.lr.ph45.split, !llvm.loop !130

._crit_edge46:                                    ; preds = %bb.y, %bb.w
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.066848, i64 %i.wz
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !16
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv167
  store float %i.zw, ptr %i.zx, align 4, !tbaa !16
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %.not, label %.lr.ph58, label %bb.u, !llvm.loop !131

.lr.ph58:                                         ; preds = %._crit_edge46, %._crit_edge33
  %.0668.lcssa = phi ptr [ %i.qv, %._crit_edge33 ], [ %.066649, %._crit_edge46 ]
  %.0666.lcssa = phi ptr [ %i.qu, %._crit_edge33 ], [ %.066848, %._crit_edge46 ] ; 13 uses
  tail call fastcc void @match_calc(ptr noundef %i.rg, ptr noundef %i.rp, ptr noundef %i.rq, i32 noundef %i.u, i32 noundef %i.t, ptr noundef %i.rn, ptr noundef %i.ro, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.0666.lcssa, ptr noundef %i.rq, ptr noundef %i.rp, i32 noundef %i.s, i32 noundef %i.v, ptr noundef %i.rn, ptr noundef %i.ro, i32 noundef 1)
  %i.zy = zext nneg i32 %i.s to i64               ; 8 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.zy ; 5 uses
  %min.iters.check129 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph58
  %i.aaa = shl nuw nsw i64 %i.zy, 2
  %scevgep118 = getelementptr i8, ptr %i.rg, i64 %i.aaa ; 2 uses
  %i.aab = add nsw i64 %i.d, %i.zy
  %i.aac = shl nsw i64 %i.aab, 2
  %i.aad = add nsw i64 %i.aac, 4                  ; 2 uses
  %scevgep119 = getelementptr i8, ptr %i.g, i64 %i.aad
  %scevgep120 = getelementptr i8, ptr %i.c, i64 %i.aad
  %bound0121 = icmp ult ptr %i.rg, %scevgep119
  %bound1122 = icmp ult ptr %i.zz, %scevgep118
  %found.conflict123 = and i1 %bound0121, %bound1122
  %bound0124 = icmp ult ptr %i.rg, %scevgep120
  %bound1125 = icmp ult ptr %i.us, %scevgep118
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %found.conflict123, %found.conflict126
  br i1 %conflict.rdx127, label %scalar.ph128.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck117
  %n.vec132 = and i64 %i.zy, 2147483640           ; 3 uses
  %i.aae = load float, ptr %i.zz, align 4, !tbaa !16, !alias.scope !132
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.aae, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %broadcast.splatinsert137, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next141, %vector.body133 ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index134 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 20
  %wide.load135 = load <4 x float>, ptr %i.aag, align 4, !tbaa !16, !alias.scope !135
  %wide.load136 = load <4 x float>, ptr %i.aah, align 4, !tbaa !16, !alias.scope !135
  %i.aai = fadd <4 x float> %broadcast.splat138, %wide.load135
  %i.aaj = fadd <4 x float> %broadcast.splat138, %wide.load136
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %index134 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.aak, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  %wide.load140 = load <4 x float>, ptr %i.aal, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  %i.aam = fadd <4 x float> %wide.load139, %i.aai
  %i.aan = fadd <4 x float> %wide.load140, %i.aaj
  store <4 x float> %i.aam, ptr %i.aak, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  store <4 x float> %i.aan, ptr %i.aal, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  %index.next141 = add nuw i64 %index134, 8       ; 2 uses
  %i.aao = icmp eq i64 %index.next141, %n.vec132
  br i1 %i.aao, label %middle.block142, label %vector.body133, !llvm.loop !140

middle.block142:                                  ; preds = %vector.body133
  %cmp.n143 = icmp eq i64 %n.vec132, %i.zy
  br i1 %cmp.n143, label %.lr.ph60, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %vector.memcheck117, %.lr.ph58, %middle.block142
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck117 ], [ 0, %.lr.ph58 ], [ %n.vec132, %middle.block142 ] ; 4 uses
  %xtraiter413 = and i64 %i.zy, 1
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod414.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol

scalar.ph128.prol:                                ; preds = %scalar.ph128.preheader
  %i.aap = load float, ptr %i.zz, align 4, !tbaa !16
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.prol
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !16
  %i.aas = fadd float %i.aap, %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv172.ph ; 2 uses
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !16
  %i.aav = fadd float %i.aau, %i.aas
  store float %i.aav, ptr %i.aat, align 4, !tbaa !16
  br label %scalar.ph128.prol.loopexit

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph128.preheader ], [ %indvars.iv.next173.prol, %scalar.ph128.prol ]
  %i.aaw = add nsw i64 %i.zy, -1
  %i.aax = icmp eq i64 %indvars.iv172.ph, %i.aaw
  br i1 %i.aax, label %.lr.ph60, label %scalar.ph128

.lr.ph60:                                         ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block142
  %i.aay = getelementptr [4 x i8], ptr %i.o, i64 %i.wz ; 6 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %wide.trip.count181 = zext nneg i32 %smax180 to i64 ; 6 uses
  %min.iters.check158 = icmp slt i32 %i.u, 16
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph60
  %i.aaz = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %scevgep146 = getelementptr i8, ptr %.0666.lcssa, i64 %i.aaz ; 2 uses
  %i.aba = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.abb = add nsw i64 %i.k, %i.wz
  %i.abc = shl nsw i64 %i.abb, 2
  %i.abd = getelementptr i8, ptr %i.n, i64 %i.abc
  %scevgep147 = getelementptr i8, ptr %i.abd, i64 4
  %i.abe = getelementptr i8, ptr %i.j, i64 %i.aba
  %scevgep148 = getelementptr i8, ptr %i.abe, i64 4
  %i.abf = getelementptr i8, ptr %i.j, i64 %i.aba
  %i.abg = getelementptr i8, ptr %i.abf, i64 %i.aaz
  %scevgep149 = getelementptr i8, ptr %i.abg, i64 4
  %bound0150 = icmp ult ptr %.0666.lcssa, %scevgep147
  %bound1151 = icmp ult ptr %i.aay, %scevgep146
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %.0666.lcssa, %scevgep149
  %bound1154 = icmp ult ptr %scevgep148, %scevgep146
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  br i1 %conflict.rdx156, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck145
  %n.vec161 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.abh = load float, ptr %i.aay, align 4, !tbaa !16, !alias.scope !141
  %broadcast.splatinsert166 = insertelement <4 x float> poison, float %i.abh, i64 0
  %broadcast.splat167 = shufflevector <4 x float> %broadcast.splatinsert166, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next170, %vector.body162 ] ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index163 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 20
  %wide.load164 = load <4 x float>, ptr %i.abj, align 4, !tbaa !16, !alias.scope !144
  %wide.load165 = load <4 x float>, ptr %i.abk, align 4, !tbaa !16, !alias.scope !144
  %i.abl = fadd <4 x float> %broadcast.splat167, %wide.load164
  %i.abm = fadd <4 x float> %broadcast.splat167, %wide.load165
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %index163 ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16 ; 2 uses
  %wide.load168 = load <4 x float>, ptr %i.abn, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  %wide.load169 = load <4 x float>, ptr %i.abo, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  %i.abp = fadd <4 x float> %wide.load168, %i.abl
  %i.abq = fadd <4 x float> %wide.load169, %i.abm
  store <4 x float> %i.abp, ptr %i.abn, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  store <4 x float> %i.abq, ptr %i.abo, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  %index.next170 = add nuw i64 %index163, 8       ; 2 uses
  %i.abr = icmp eq i64 %index.next170, %n.vec161
  br i1 %i.abr, label %middle.block171, label %vector.body162, !llvm.loop !149

middle.block171:                                  ; preds = %vector.body162
  %cmp.n172 = icmp eq i64 %n.vec161, %wide.trip.count181
  br i1 %cmp.n172, label %.lr.ph62, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %vector.memcheck145, %.lr.ph60, %middle.block171
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph60 ], [ %n.vec161, %middle.block171 ] ; 4 uses
  %xtraiter416 = and i64 %wide.trip.count181, 1
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %scalar.ph157.prol.loopexit, label %scalar.ph157.prol

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.abs = load float, ptr %i.aay, align 4, !tbaa !16
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !16
  %i.abv = fadd float %i.abs, %i.abu
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !16
  %i.aby = fadd float %i.abx, %i.abv
  store float %i.aby, ptr %i.abw, align 4, !tbaa !16
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph157.preheader ], [ %indvars.iv.next178.prol, %scalar.ph157.prol ]
  %i.abz = add nsw i64 %wide.trip.count181, -1
  %i.aca = icmp eq i64 %indvars.iv177.ph, %i.abz
  br i1 %i.aca, label %.lr.ph62, label %scalar.ph157

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph128 ], [ %indvars.iv172.unr, %scalar.ph128.prol.loopexit ] ; 3 uses
  %i.acb = load float, ptr %i.zz, align 4, !tbaa !16
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !16
  %i.ace = fadd float %i.acb, %i.acd
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv172 ; 2 uses
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !16
  %i.ach = fadd float %i.acg, %i.ace
  store float %i.ach, ptr %i.acf, align 4, !tbaa !16
  %i.aci = load float, ptr %i.zz, align 4, !tbaa !16
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !16
  %i.acl = fadd float %i.aci, %i.ack
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.next173 ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !16
  %i.aco = fadd float %i.acn, %i.acl
  store float %i.aco, ptr %i.acm, align 4, !tbaa !16
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %i.zy
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph128, !llvm.loop !150

.lr.ph62:                                         ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block171
  %i.acp = getelementptr [4 x i8], ptr %i.o, i64 %i.wz
  %i.acq = getelementptr i8, ptr %i.acp, i64 -4   ; 3 uses
  %smin186 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.acr = add i32 %8, %smin186
  %i.acs = sub i32 %9, %i.acr                     ; 2 uses
  %i.act = zext i32 %i.acs to i64
  %i.acu = add nuw nsw i64 %i.act, 1              ; 2 uses
end_hunk_1
begin_hunk_2_@MSalignmm_rec:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv186
  store i32 %.1629, ptr %i.agq, align 4, !tbaa !4
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv186
  store i32 %.1627, ptr %i.agr, align 4, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.afw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv186 ; 2 uses
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !16
  %i.agu = fadd float %.3660, %i.agt
  store float %i.agu, ptr %i.ags, align 4, !tbaa !16
  %i.agv = load float, ptr %.167766, align 4, !tbaa !16
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.afy ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !16
  %i.agy = fadd float %i.agv, %i.agx
  store float %i.agy, ptr %i.agw, align 4, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.afv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv186 ; 2 uses
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !16
  %i.ahb = fadd float %.3685, %i.aha
  store float %i.ahb, ptr %i.agz, align 4, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ahc = load float, ptr %.168165, align 4, !tbaa !16
  %i.ahd = fadd float %.3660, %i.ahc
  store float %i.ahd, ptr %.168165, align 4, !tbaa !16
  %i.ahe = getelementptr inbounds i8, ptr %.167766, i64 -4
  %i.ahf = getelementptr inbounds i8, ptr %.167168, i64 -4
  %i.ahg = getelementptr inbounds i8, ptr %.168165, i64 -4
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, -1
  %.1679 = getelementptr inbounds i8, ptr %.167970, i64 -4 ; 2 uses
  %i.ahh = trunc nuw i64 %indvars.iv186 to i32
  %i.ahi = icmp sgt i32 %i.ahh, 0
  br i1 %i.ahi, label %bb.aa, label %._crit_edge73, !llvm.loop !163

._crit_edge73:                                    ; preds = %bb.ak
  %i.ahj = load float, ptr %.1679, align 4, !tbaa !16
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afi
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !16
  %i.ahm = fadd float %i.ahj, %i.ahl              ; 2 uses
  %i.ahn = fcmp olt float %.061918, %i.ahm        ; 2 uses
  %.1620 = select i1 %i.ahn, float %i.ahm, float %.061918 ; 2 uses
  %.1 = select i1 %i.ahn, i32 %i.afe, i32 %.019   ; 3 uses
  %i.aho = icmp eq i32 %indvars21, %i.xe
  br i1 %i.aho, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge73
  %i.ahp = load float, ptr %i.qy, align 4, !tbaa !16
  %i.ahq = fadd float %.1620, %i.ahp
  store float %i.ahq, ptr %i.qy, align 4, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge73
  %i.ahr = icmp eq i64 %indvars.iv20012, %i.aen
  br i1 %i.ahr, label %.lr.ph80.preheader.new, label %bb.ar

.lr.ph80.preheader.new:                           ; preds = %bb.am
  %i.ahs = load float, ptr %i.aem, align 4, !tbaa !16
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80, %.lr.ph80.preheader.new
  %indvars.iv189 = phi i64 [ 2, %.lr.ph80.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph80 ] ; 4 uses
  %.165177 = phi i32 [ 0, %.lr.ph80.preheader.new ], [ %.2652.1, %.lr.ph80 ]
  %.066276 = phi float [ %i.ahs, %.lr.ph80.preheader.new ], [ %.1663.1, %.lr.ph80 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph80.preheader.new ], [ %niter.next.1, %.lr.ph80 ] ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv189
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !16 ; 2 uses
  %i.ahv = fcmp ogt float %i.ahu, %.066276        ; 2 uses
  %.1663 = select i1 %i.ahv, float %i.ahu, float %.066276 ; 2 uses
  %i.ahw = trunc nuw nsw i64 %indvars.iv189 to i32
  %.2652 = select i1 %i.ahv, i32 %i.ahw, i32 %.165177
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv.next190
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !16 ; 2 uses
  %i.ahz = fcmp ogt float %i.ahy, %.1663          ; 2 uses
  %.1663.1 = select i1 %i.ahz, float %i.ahy, float %.1663 ; 4 uses
  %i.aia = trunc nuw nsw i64 %indvars.iv.next190 to i32
  %.2652.1 = select i1 %i.ahz, i32 %i.aia, i32 %.2652 ; 3 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aer
  br i1 %niter.ncmp.1, label %.lr.ph86.preheader.unr-lcssa, label %.lr.ph80, !llvm.loop !164

.lr.ph86.preheader.unr-lcssa:                     ; preds = %.lr.ph80
  br i1 %lcmp.mod420.not, label %.lr.ph86.preheader, label %.lr.ph80.epil.preheader

.lr.ph80.epil.preheader:                          ; preds = %.lr.ph86.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv.next190.1
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !16 ; 2 uses
  %i.aid = fcmp ogt float %i.aic, %.1663.1        ; 2 uses
  %.1663.epil = select i1 %i.aid, float %i.aic, float %.1663.1
  %i.aie = trunc nuw nsw i64 %indvars.iv.next190.1 to i32
  %.2652.epil = select i1 %i.aid, i32 %i.aie, i32 %.2652.1
  br label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.lr.ph86.preheader.unr-lcssa, %.lr.ph80.epil.preheader
  %.1663.lcssa = phi float [ %.1663.1, %.lr.ph86.preheader.unr-lcssa ], [ %.1663.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  %.2652.lcssa = phi i32 [ %.2652.1, %.lr.ph86.preheader.unr-lcssa ], [ %.2652.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  br i1 %i.aes, label %.lr.ph86.epil.preheader, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ] ; 4 uses
  %.365384 = phi i32 [ %.4654.1, %.lr.ph86 ], [ %.2652.lcssa, %.lr.ph86.preheader ]
  %.266483 = phi float [ %.3665.1, %.lr.ph86 ], [ %.1663.lcssa, %.lr.ph86.preheader ] ; 2 uses
  %niter429 = phi i64 [ %niter429.next.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ]
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv194
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !16 ; 2 uses
  %i.aih = fcmp ogt float %i.aig, %.266483        ; 2 uses
  %.3665 = select i1 %i.aih, float %i.aig, float %.266483 ; 2 uses
  %i.aii = trunc nuw nsw i64 %indvars.iv194 to i32
  %.4654 = select i1 %i.aih, i32 %i.aii, i32 %.365384
  %indvars.iv.next195 = or disjoint i64 %indvars.iv194, 1 ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next195
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !16 ; 2 uses
  %i.ail = fcmp ogt float %i.aik, %.3665          ; 2 uses
  %.3665.1 = select i1 %i.ail, float %i.aik, float %.3665 ; 2 uses
  %i.aim = trunc nuw nsw i64 %indvars.iv.next195 to i32
  %.4654.1 = select i1 %i.ail, i32 %i.aim, i32 %.4654 ; 3 uses
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %niter429.next.1 = add i64 %niter429, 2         ; 2 uses
  %niter429.ncmp.1 = icmp eq i64 %niter429.next.1, %unroll_iter428
  br i1 %niter429.ncmp.1, label %._crit_edge87.unr-lcssa, label %.lr.ph86, !llvm.loop !165

._crit_edge87.unr-lcssa:                          ; preds = %.lr.ph86
  br i1 %lcmp.mod425.not, label %._crit_edge87, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv194.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next195.1, %._crit_edge87.unr-lcssa ] ; 2 uses
  %.365384.epil.init = phi i32 [ %.2652.lcssa, %.lr.ph86.preheader ], [ %.4654.1, %._crit_edge87.unr-lcssa ]
  %.266483.epil.init = phi float [ %.1663.lcssa, %.lr.ph86.preheader ], [ %.3665.1, %._crit_edge87.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod427)
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv194.epil.init
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !16
  %i.aip = fcmp ogt float %i.aio, %.266483.epil.init
  %i.aiq = trunc nuw nsw i64 %indvars.iv194.epil.init to i32
  %.4654.epil = select i1 %i.aip, i32 %i.aiq, i32 %.365384.epil.init
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.epil.preheader
  %.4654.lcssa = phi i32 [ %.4654.1, %._crit_edge87.unr-lcssa ], [ %.4654.epil, %.lr.ph86.epil.preheader ] ; 5 uses
  %i.air = sext i32 %.4654.lcssa to i64           ; 4 uses
  %i.ais = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.air
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !16 ; 3 uses
  %i.aiu = add nsw i32 %.4654.lcssa, -1           ; 4 uses
  %i.aiv = icmp sgt i32 %.4654.lcssa, 0
  br i1 %i.aiv, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %._crit_edge87
  %i.aiw = zext nneg i32 %i.aiu to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.aiw
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !16 ; 2 uses
  %i.aiz = fcmp ogt float %i.aiy, %i.ait
  br i1 %i.aiz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.air
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge87
  %.4661 = phi float [ %i.aiy, %bb.ao ], [ %i.ait, %bb.an ], [ %i.ait, %._crit_edge87 ]
  %.1642 = phi i32 [ %i.ajb, %bb.ao ], [ %i.aiu, %bb.an ], [ %i.aiu, %._crit_edge87 ]
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.qy, i64 %i.air
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !16
  %i.aje = fcmp ogt float %i.ajd, %.4661
  br i1 %i.aje, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %i.air
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.am
  %.5655 = phi i32 [ %.4654.lcssa, %bb.aq ], [ %.4654.lcssa, %bb.ap ], [ %.065015, %bb.am ] ; 4 uses
  %.2647 = phi i32 [ %i.ajg, %bb.aq ], [ %i.ael, %bb.ap ], [ %.064516, %bb.am ] ; 3 uses
  %.2643 = phi i32 [ %i.aiu, %bb.aq ], [ %.1642, %bb.ap ], [ %.064117, %bb.am ] ; 4 uses
  %i.ajh = icmp eq i32 %.2647, %indvars21
  br i1 %i.ajh, label %bb.as, label %bb.z, !llvm.loop !162

bb.as:                                            ; preds = %bb.ar
  %i.aji = icmp eq i32 %.5655, 0
  br i1 %i.aji, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ajj = add nsw i32 %.1, -1
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %.not714 = icmp slt i32 %.5655, %i.v
  br i1 %.not714, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.ajk = sext i32 %.2643 to i64                 ; 2 uses
  %i.ajl = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !4
  %i.ajn = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.ajk
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.preheader8, %bb.au, %bb.at, %bb.av
  %.6656 = phi i32 [ 1, %bb.at ], [ %i.v, %bb.au ], [ %i.ajo, %bb.av ], [ 0, %.preheader8 ], [ %.5655, %bb.z ] ; 4 uses
  %.0649 = phi i32 [ %.1, %bb.at ], [ %i.xe, %bb.au ], [ %i.ajm, %bb.av ], [ %i.xe, %.preheader8 ], [ %i.xe, %bb.z ] ; 4 uses
  %.3648 = phi i32 [ %i.ajj, %bb.at ], [ %i.ael, %bb.au ], [ %indvars21, %bb.av ], [ 0, %.preheader8 ], [ %.2647, %bb.z ] ; 5 uses
  %.3644 = phi i32 [ 0, %bb.at ], [ %i.u, %bb.au ], [ %.2643, %bb.av ], [ 0, %.preheader8 ], [ %.2643, %bb.z ] ; 4 uses
  tail call void @FreeFloatVec(ptr noundef %i.qu) #13
  tail call void @FreeFloatVec(ptr noundef %i.qv) #13
  tail call void @FreeFloatVec(ptr noundef %i.rg) #13
  tail call void @FreeFloatVec(ptr noundef nonnull %i.rh) #13
  tail call void @FreeFloatVec(ptr noundef %i.qw) #13
  tail call void @FreeFloatVec(ptr noundef %i.qy) #13
  tail call void @FreeFloatVec(ptr noundef %i.qx) #13
  tail call void @FreeIntVec(ptr noundef %i.qz) #13
  tail call void @FreeIntVec(ptr noundef %i.ra) #13
  tail call void @FreeIntVec(ptr noundef %i.rb) #13
  tail call void @FreeIntVec(ptr noundef %i.rc) #13
  tail call void @FreeIntVec(ptr noundef %i.rd) #13
  tail call void @FreeIntVec(ptr noundef %i.re) #13
  tail call void @FreeFloatVec(ptr noundef %i.ri) #13
  tail call void @FreeIntVec(ptr noundef %i.rj) #13
  tail call void @FreeFloatMtx(ptr noundef %i.rn) #13
  tail call void @FreeIntMtx(ptr noundef %i.ro) #13
  %i.ajp = add nsw i32 %.3648, %6
  %i.ajq = add nsw i32 %.3644, %8
  %i.ajr = tail call fastcc float @MSalignmm_rec(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %i.ajp, i32 noundef %8, i32 noundef %i.ajq, ptr noundef %i.am, ptr noundef %i.an, i32 noundef %i.p, ptr noundef nonnull %13) ; 2 uses
  %i.ajs = load ptr, ptr %10, align 8, !tbaa !8   ; 2 uses
  %i.ajt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajs) #14
  %i.aju = trunc i64 %i.ajt to i32                ; 2 uses
  %i.ajv = xor i32 %.3644, -1
  %i.ajw = add i32 %.6656, %i.ajv                 ; 4 uses
  %i.ajx = icmp sgt i32 %i.ajw, 0
  br i1 %i.ajx, label %.preheader6.preheader, label %bb.ay

.preheader6.preheader:                            ; preds = %.loopexit
  %i.ajy = zext nneg i32 %i.ajw to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rm, i8 45, i64 %i.ajy, i1 false), !tbaa !40
  %i.ajz = add i32 %.6656, -2
  %i.aka = sub i32 %i.ajz, %.3644
  %i.akb = add i32 %i.aka, 1
  %i.akc = zext nneg i32 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.akc
  store i8 0, ptr %i.akd, align 1, !tbaa !40
  br i1 %i.ap, label %.lr.ph92, label %.preheader5

.lr.ph92:                                         ; preds = %.preheader6.preheader
  %i.ake = add nsw i32 %i.ajw, %i.aju
  %i.akf = sext i32 %i.ake to i64
  %wide.trip.count213 = zext nneg i32 %0 to i64
  br label %bb.aw

.preheader5:                                      ; preds = %bb.aw, %.preheader6.preheader
  %i.akg = sext i32 %.3644 to i64                 ; 2 uses
  br i1 %i.bc, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader5
  %i.akh = add nsw i32 %i.ajw, %i.aju
  %i.aki = sext i32 %i.akh to i64
  %wide.trip.count219 = zext nneg i32 %1 to i64
  br label %bb.ax

bb.aw:                                            ; preds = %.lr.ph92, %bb.aw
  %indvars.iv209 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next210, %bb.aw ] ; 2 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv209 ; 2 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !8
  %i.akl = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.akk, ptr noundef nonnull dereferenceable(1) %i.rm) #13 ; 0 uses
  %i.akm = load ptr, ptr %i.akj, align 8, !tbaa !8
  %i.akn = getelementptr inbounds i8, ptr %i.akm, i64 %i.akf
  store i8 0, ptr %i.akn, align 1, !tbaa !40
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count213
  br i1 %exitcond214.not, label %.preheader5, label %bb.aw, !llvm.loop !166

bb.ax:                                            ; preds = %.lr.ph94, %bb.ax
  %indvars.iv215 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next216, %bb.ax ] ; 3 uses
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv215 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !8
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv215
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !8
  %i.aks = getelementptr inbounds i8, ptr %i.akr, i64 %i.k
  %i.akt = getelementptr inbounds i8, ptr %i.aks, i64 %i.akg
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 1
  %i.akv = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.akp, ptr noundef nonnull %i.aku, i64 noundef %i.ajy) #13 ; 0 uses
  %i.akw = load ptr, ptr %i.ako, align 8, !tbaa !8
  %i.akx = getelementptr inbounds i8, ptr %i.akw, i64 %i.aki
  store i8 0, ptr %i.akx, align 1, !tbaa !40
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge95, label %bb.ax, !llvm.loop !167

._crit_edge95:                                    ; preds = %bb.ax, %.preheader5
  %i.aky = getelementptr [4 x i8], ptr %i.l, i64 %i.akg
  %i.akz = getelementptr i8, ptr %i.aky, i64 4
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !16
  %i.alb = sext i32 %.6656 to i64
  %i.alc = getelementptr [4 x i8], ptr %i.o, i64 %i.alb
  %i.ald = getelementptr i8, ptr %i.alc, i64 -4
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !16
  %i.alf = fadd float %i.ala, %i.ale
  %i.alg = fadd float %i.ajr, %i.alf
  %.pre268 = load ptr, ptr %10, align 8, !tbaa !8
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge95, %.loopexit
  %i.alh = phi ptr [ %.pre268, %._crit_edge95 ], [ %i.ajs, %.loopexit ]
  %.0622 = phi float [ %i.alg, %._crit_edge95 ], [ %i.ajr, %.loopexit ] ; 2 uses
  %i.ali = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.alh) #14
  %i.alj = trunc i64 %i.ali to i32                ; 2 uses
  %i.alk = xor i32 %.3648, -1
  %i.all = add i32 %.0649, %i.alk                 ; 4 uses
  %i.alm = icmp sgt i32 %i.all, 0
  br i1 %i.alm, label %.preheader4.preheader, label %bb.bb

.preheader4.preheader:                            ; preds = %bb.ay
  %i.aln = zext nneg i32 %i.all to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rm, i8 45, i64 %i.aln, i1 false), !tbaa !40
  %i.alo = add i32 %.0649, -2
  %i.alp = sub i32 %i.alo, %.3648
  %i.alq = add i32 %i.alp, 1
  %i.alr = zext nneg i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.alr
  store i8 0, ptr %i.als, align 1, !tbaa !40
  br i1 %i.ap, label %.lr.ph99, label %.preheader3

.lr.ph99:                                         ; preds = %.preheader4.preheader
  %i.alt = sext i32 %.3648 to i64
  %i.alu = add nsw i32 %i.all, %i.alj
  %i.alv = sext i32 %i.alu to i64
  %wide.trip.count231 = zext nneg i32 %0 to i64
  br label %bb.az

.preheader3:                                      ; preds = %bb.az, %.preheader4.preheader
  br i1 %i.bc, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader3
  %i.alw = add nsw i32 %i.all, %i.alj
  %i.alx = sext i32 %i.alw to i64
  %wide.trip.count237 = zext nneg i32 %1 to i64
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph99, %bb.az
  %indvars.iv227 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next228, %bb.az ] ; 3 uses
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv227 ; 2 uses
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !8
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv227
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !8
  %i.amc = getelementptr inbounds i8, ptr %i.amb, i64 %i.d
  %i.amd = getelementptr inbounds i8, ptr %i.amc, i64 %i.alt
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 1
  %i.amf = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.alz, ptr noundef nonnull %i.ame, i64 noundef %i.aln) #13 ; 0 uses
  %i.amg = load ptr, ptr %i.aly, align 8, !tbaa !8
  %i.amh = getelementptr inbounds i8, ptr %i.amg, i64 %i.alv
  store i8 0, ptr %i.amh, align 1, !tbaa !40
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.preheader3, label %bb.az, !llvm.loop !168

bb.ba:                                            ; preds = %.lr.ph101, %bb.ba
  %indvars.iv233 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next234, %bb.ba ] ; 2 uses
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv233 ; 2 uses
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !8
  %i.amk = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.amj, ptr noundef nonnull dereferenceable(1) %i.rm) #13 ; 0 uses
  %i.aml = load ptr, ptr %i.ami, align 8, !tbaa !8
  %i.amm = getelementptr inbounds i8, ptr %i.aml, i64 %i.alx
  store i8 0, ptr %i.amm, align 1, !tbaa !40
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge102, label %bb.ba, !llvm.loop !169

._crit_edge102:                                   ; preds = %bb.ba, %.preheader3
  %i.amn = sext i32 %.3648 to i64
  %i.amo = getelementptr [4 x i8], ptr %i.e, i64 %i.amn
  %i.amp = getelementptr i8, ptr %i.amo, i64 4
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !16
  %i.amr = sext i32 %.0649 to i64
  %i.ams = getelementptr [4 x i8], ptr %i.h, i64 %i.amr
  %i.amt = getelementptr i8, ptr %i.ams, i64 -4
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !16
  %i.amv = fadd float %i.amq, %i.amu
  %i.amw = fadd float %.0622, %i.amv
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge102, %bb.ay
  %.1623 = phi float [ %i.amw, %._crit_edge102 ], [ %.0622, %bb.ay ]
  %i.amx = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.amy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amx) #14 ; 2 uses
  br i1 %i.ap, label %.lr.ph105, label %.preheader2

.lr.ph105:                                        ; preds = %bb.bb
  %sext715 = shl i64 %i.amy, 32
  %i.amz = ashr exact i64 %sext715, 32            ; 3 uses
  %wide.trip.count243 = zext nneg i32 %0 to i64   ; 3 uses
end_hunk_2
