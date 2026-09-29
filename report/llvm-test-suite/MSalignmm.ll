Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MSalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@MSalignmm:bb.a
  %i.de = tail call fastcc float @MSalignmm_rec(i32 noundef %4, i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.x, ptr noundef %i.y, i32 noundef 0, i32 noundef %i.dc, i32 noundef 0, i32 noundef %i.dd, ptr noundef %i.o, ptr noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.q)
  br i1 %i.z, label %.lr.ph228.preheader, label %.preheader210

.lr.ph228.preheader:                              ; preds = %._crit_edge225
  %wide.trip.count261 = zext nneg i32 %4 to i64
  br label %.lr.ph228

.preheader210:                                    ; preds = %.lr.ph228, %._crit_edge225
  br i1 %i.ab, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %.preheader210
  %wide.trip.count266 = zext nneg i32 %5 to i64
  br label %.lr.ph230

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %indvars.iv258 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next259, %.lr.ph228 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv258
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv258
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !10
  %i.dj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dg, ptr noundef nonnull dereferenceable(1) %i.di) #13 ; 0 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %.preheader210, label %.lr.ph228, !llvm.loop !32

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %indvars.iv263 = phi i64 [ 0, %.lr.ph230.preheader ], [ %indvars.iv.next264, %.lr.ph230 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv263
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv263
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !10
  %i.do = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dl, ptr noundef nonnull dereferenceable(1) %i.dn) #13 ; 0 uses
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count266
  br i1 %exitcond267.not, label %._crit_edge231, label %.lr.ph230, !llvm.loop !33

._crit_edge231:                                   ; preds = %.lr.ph230, %.preheader210
  %i.dp = load ptr, ptr %0, align 8, !tbaa !10
  %i.dq = tail call i32 @seqlen(ptr noundef %i.dp) #13
  %.not198 = icmp eq i32 %i.dq, %i.d
  br i1 %.not198, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge231
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ds = load ptr, ptr %0, align 8, !tbaa !10
  %i.dt = tail call i32 @seqlen(ptr noundef %i.ds) #13
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.3, i32 noundef %i.dt, i32 noundef %i.d) #15 ; 0 uses
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.dw = load ptr, ptr %0, align 8, !tbaa !10
  %i.dx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.4, ptr noundef %i.dw) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %._crit_edge231
  %i.dy = load ptr, ptr %1, align 8, !tbaa !10
  %i.dz = tail call i32 @seqlen(ptr noundef %i.dy) #13
  %.not199 = icmp eq i32 %i.dz, %i.f
  br i1 %.not199, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.eb = load ptr, ptr %1, align 8, !tbaa !10
  %i.ec = tail call i32 @seqlen(ptr noundef %i.eb) #13
  %i.ed = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ea, ptr noundef nonnull @.str.5, i32 noundef %i.ec, i32 noundef %i.f) #15 ; 0 uses
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
  %i.ee = load ptr, ptr %1, align 8, !tbaa !10
  %i.ef = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ee) #14
  br i1 %i.z, label %.lr.ph234, label %.preheader

.lr.ph234:                                        ; preds = %bb.n
  %i.eg = load ptr, ptr %0, align 8, !tbaa !10
  %i.eh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #14
  %sext201 = shl i64 %i.eh, 32
  %i.ei = ashr exact i64 %sext201, 32
  %wide.trip.count271 = zext nneg i32 %4 to i64
  br label %bb.o

.preheader:                                       ; preds = %bb.q, %bb.n
  br i1 %i.ab, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %.preheader
  %sext = shl i64 %i.ef, 32
  %i.ej = ashr exact i64 %sext, 32
  %wide.trip.count276 = zext nneg i32 %5 to i64
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph234, %bb.q
  %indvars.iv268 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next269, %bb.q ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv268
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.el) #14
  %.not202 = icmp eq i64 %i.em, %i.ei
  br i1 %.not202, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = trunc nuw nsw i64 %indvars.iv268 to i32
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str, i32 noundef %i.en, i32 noundef %4) #15 ; 0 uses
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite203 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %i.eq) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader, label %bb.o, !llvm.loop !34

bb.r:                                             ; preds = %.lr.ph236, %bb.t
  %indvars.iv273 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next274, %bb.t ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv273
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10
  %i.et = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.es) #14
  %.not200 = icmp eq i64 %i.et, %i.ej
  br i1 %.not200, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = trunc nuw nsw i64 %indvars.iv273 to i32
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.2, i32 noundef %i.eu, i32 noundef %5) #15 ; 0 uses
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %i.ex) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge237, label %bb.r, !llvm.loop !35

._crit_edge237:                                   ; preds = %bb.t, %.preheader
  ret float %i.de
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
  %i.c = load ptr, ptr %13, align 8, !tbaa !17    ; 4 uses
  %i.d = sext i32 %6 to i64                       ; 14 uses
  %i.e = getelementptr [4 x i8], ptr %i.c, i64 %i.d ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %i.d ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 4 uses
  %i.k = sext i32 %8 to i64                       ; 12 uses
  %i.l = getelementptr [4 x i8], ptr %i.j, i64 %i.k ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = getelementptr [4 x i8], ptr %i.n, i64 %i.k ; 12 uses
  %i.p = add nsw i32 %12, 1                       ; 2 uses
  %i.q = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr @reccycle, align 4, !tbaa !7
  %i.s = sub i32 %7, %6                           ; 22 uses
  %i.t = add i32 %i.s, 1                          ; 8 uses
  %i.u = sub nsw i32 %9, %8                       ; 22 uses
  %i.v = add nuw nsw i32 %i.u, 1                  ; 11 uses
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
  %.not718111 = icmp slt i32 %i.s, 0
  %wide.trip.count266 = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph110, %bb.b
  %indvars.iv255 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next256, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv255 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv255
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.d
  %i.af = tail call ptr @strncpy(ptr noundef %i.ab, ptr noundef %i.ae, i64 noundef %i.y) #13 ; 0 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !135
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.b, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph117, %._crit_edge115
  %indvars.iv262 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next263, %._crit_edge115 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv262 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10
  store i8 0, ptr %i.aj, align 1, !tbaa !135
  br i1 %.not718111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.c, %.lr.ph114
  %.0665112 = phi i32 [ %i.al, %.lr.ph114 ], [ 0, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !10 ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.ak)
  %endptr = getelementptr inbounds i8, ptr %i.ak, i64 %strlen
  store i16 45, ptr %endptr, align 1
  %i.al = add nuw i32 %.0665112, 1
  %exitcond261.not = icmp eq i32 %.0665112, %i.s
  br i1 %exitcond261.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !43

._crit_edge115:                                   ; preds = %.lr.ph114, %bb.c
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count266
  br i1 %exitcond267.not, label %common.ret, label %bb.c, !llvm.loop !44

bb.d:                                             ; preds = %bb.a
  %i.am = tail call ptr @AllocateCharMtx(i32 noundef %0, i32 noundef 0) #13 ; 14 uses
  %i.an = tail call ptr @AllocateCharMtx(i32 noundef %1, i32 noundef 0) #13 ; 13 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = icmp sgt i32 %0, 0                      ; 5 uses
  br i1 %i.ap, label %.lr.ph.preheader, label %.preheader13

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.aq = ptrtoaddr ptr %i.am to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.ar = sub i64 %i.b, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond362 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond362, label %.lr.ph.preheader383, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !tbaa !10
  %wide.load24 = load <2 x ptr>, ptr %i.at, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x ptr> %wide.load, ptr %i.au, align 8, !tbaa !10
  store <2 x ptr> %wide.load24, ptr %i.av, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader13, label %.lr.ph.preheader383

.lr.ph.preheader383:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader383, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader383 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader383 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.prol
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !46

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader383
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader383 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.preheader13, label %.lr.ph

.preheader13:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.d
  %i.bc = icmp sgt i32 %1, 0                      ; 5 uses
  br i1 %i.bc, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader13
  %wide.trip.count137 = zext nneg i32 %1 to i64   ; 5 uses
  %min.iters.check28 = icmp ult i32 %1, 8
  %i.bd = sub i64 %i.a, %i.ao
  %diff.check26 = icmp ugt i64 %i.bd, -32
  %or.cond363 = select i1 %min.iters.check28, i1 true, i1 %diff.check26
  br i1 %or.cond363, label %.lr.ph25.preheader382, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph25.preheader
  %n.vec30 = and i64 %wide.trip.count137, 2147483644 ; 3 uses
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next35, %vector.body31 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load33 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !10
  %wide.load34 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x ptr> %wide.load33, ptr %i.bg, align 8, !tbaa !10
  store <2 x ptr> %wide.load34, ptr %i.bh, align 8, !tbaa !10
  %index.next35 = add nuw i64 %index32, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next35, %n.vec30
  br i1 %i.bi, label %middle.block36, label %vector.body31, !llvm.loop !47

middle.block36:                                   ; preds = %vector.body31
  %cmp.n37 = icmp eq i64 %n.vec30, %wide.trip.count137
  br i1 %cmp.n37, label %._crit_edge, label %.lr.ph25.preheader382

.lr.ph25.preheader382:                            ; preds = %.lr.ph25.preheader, %middle.block36
  %indvars.iv134.ph = phi i64 [ 0, %.lr.ph25.preheader ], [ %n.vec30, %middle.block36 ] ; 3 uses
  %xtraiter384 = and i64 %wide.trip.count137, 3   ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol

.lr.ph25.prol:                                    ; preds = %.lr.ph25.preheader382, %.lr.ph25.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph25.prol ], [ %indvars.iv134.ph, %.lr.ph25.preheader382 ] ; 3 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph25.prol ], [ 0, %.lr.ph25.preheader382 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv134.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv134.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !10
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol, !llvm.loop !48

.lr.ph25.prol.loopexit:                           ; preds = %.lr.ph25.prol, %.lr.ph25.preheader382
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph25.preheader382 ], [ %indvars.iv.next135.prol, %.lr.ph25.prol ]
  %i.bm = sub nsw i64 %indvars.iv134.ph, %wide.trip.count137
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next.1
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !10
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next.2
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@MSalignmm_rec:bb.a
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.lr.ph58, label %bb.u, !llvm.loop !104

.lr.ph58:                                         ; preds = %._crit_edge46, %._crit_edge33
  %.0653.lcssa = phi ptr [ %i.qv, %._crit_edge33 ], [ %.065150, %._crit_edge46 ] ; 13 uses
  %.0651.lcssa = phi ptr [ %i.qw, %._crit_edge33 ], [ %.065349, %._crit_edge46 ]
  tail call fastcc void @match_calc(ptr noundef %i.rh, ptr noundef %i.rq, ptr noundef %i.rr, i32 noundef %i.u, i32 noundef %i.t, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.0653.lcssa, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %i.s, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 1)
  %i.aaa = zext nneg i32 %i.s to i64              ; 8 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aaa ; 5 uses
  %min.iters.check125 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph58
  %i.aac = shl nuw nsw i64 %i.aaa, 2
  %scevgep114 = getelementptr i8, ptr %i.rh, i64 %i.aac ; 2 uses
  %i.aad = add nsw i64 %i.d, %i.aaa
  %i.aae = shl nsw i64 %i.aad, 2
  %i.aaf = add nsw i64 %i.aae, 4                  ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.g, i64 %i.aaf
  %scevgep116 = getelementptr i8, ptr %i.c, i64 %i.aaf
  %bound0117 = icmp ult ptr %i.rh, %scevgep115
  %bound1118 = icmp ult ptr %i.aab, %scevgep114
  %found.conflict119 = and i1 %bound0117, %bound1118
  %bound0120 = icmp ult ptr %i.rh, %scevgep116
  %bound1121 = icmp ult ptr %i.ut, %scevgep114
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %found.conflict119, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck113
  %n.vec127 = and i64 %i.aaa, 2147483640          ; 3 uses
  %i.aag = load float, ptr %i.aab, align 4, !tbaa !13, !alias.scope !162
  %broadcast.splatinsert132 = insertelement <4 x float> poison, float %i.aag, i64 0
  %broadcast.splat133 = shufflevector <4 x float> %broadcast.splatinsert132, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body128 ] ; 3 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index129 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 20
  %wide.load130 = load <4 x float>, ptr %i.aai, align 4, !tbaa !13, !alias.scope !163
  %wide.load131 = load <4 x float>, ptr %i.aaj, align 4, !tbaa !13, !alias.scope !163
  %i.aak = fadd <4 x float> %broadcast.splat133, %wide.load130
  %i.aal = fadd <4 x float> %broadcast.splat133, %wide.load131
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %index129 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %wide.load134 = load <4 x float>, ptr %i.aam, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %wide.load135 = load <4 x float>, ptr %i.aan, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %i.aao = fadd <4 x float> %wide.load134, %i.aak
  %i.aap = fadd <4 x float> %wide.load135, %i.aal
  store <4 x float> %i.aao, ptr %i.aam, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  store <4 x float> %i.aap, ptr %i.aan, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %index.next136 = add nuw i64 %index129, 8       ; 2 uses
  %i.aaq = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.aaq, label %middle.block137, label %vector.body128, !llvm.loop !109

middle.block137:                                  ; preds = %vector.body128
  %cmp.n138 = icmp eq i64 %n.vec127, %i.aaa
  br i1 %cmp.n138, label %.lr.ph60, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %vector.memcheck113, %.lr.ph58, %middle.block137
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph58 ], [ %n.vec127, %middle.block137 ] ; 4 uses
  %xtraiter396 = and i64 %i.aaa, 1
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol

scalar.ph124.prol:                                ; preds = %scalar.ph124.preheader
  %i.aar = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.prol
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !13
  %i.aau = fadd float %i.aar, %i.aat
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv172.ph ; 2 uses
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !13
  %i.aax = fadd float %i.aaw, %i.aau
  store float %i.aax, ptr %i.aav, align 4, !tbaa !13
  br label %scalar.ph124.prol.loopexit

scalar.ph124.prol.loopexit:                       ; preds = %scalar.ph124.prol, %scalar.ph124.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph124.preheader ], [ %indvars.iv.next173.prol, %scalar.ph124.prol ]
  %i.aay = add nsw i64 %i.aaa, -1
  %i.aaz = icmp eq i64 %indvars.iv172.ph, %i.aay
  br i1 %i.aaz, label %.lr.ph60, label %scalar.ph124

.lr.ph60:                                         ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124, %middle.block137
  %i.aba = getelementptr [4 x i8], ptr %i.o, i64 %i.xa ; 6 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %wide.trip.count181 = zext nneg i32 %smax180 to i64 ; 6 uses
  %min.iters.check153 = icmp slt i32 %i.u, 16
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph60
  %i.abb = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %scevgep141 = getelementptr i8, ptr %.0653.lcssa, i64 %i.abb ; 2 uses
  %i.abc = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.abd = add nsw i64 %i.k, %i.xa
  %i.abe = shl nsw i64 %i.abd, 2
  %i.abf = getelementptr i8, ptr %i.n, i64 %i.abe
  %scevgep142 = getelementptr i8, ptr %i.abf, i64 4
  %i.abg = getelementptr i8, ptr %i.j, i64 %i.abc
  %scevgep143 = getelementptr i8, ptr %i.abg, i64 4
  %i.abh = getelementptr i8, ptr %i.j, i64 %i.abc
  %i.abi = getelementptr i8, ptr %i.abh, i64 %i.abb
  %scevgep144 = getelementptr i8, ptr %i.abi, i64 4
  %bound0145 = icmp ult ptr %.0653.lcssa, %scevgep142
  %bound1146 = icmp ult ptr %i.aba, %scevgep141
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0148 = icmp ult ptr %.0653.lcssa, %scevgep144
  %bound1149 = icmp ult ptr %scevgep143, %scevgep141
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %found.conflict147, %found.conflict150
  br i1 %conflict.rdx151, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck140
  %n.vec155 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.abj = load float, ptr %i.aba, align 4, !tbaa !13, !alias.scope !166
  %broadcast.splatinsert160 = insertelement <4 x float> poison, float %i.abj, i64 0
  %broadcast.splat161 = shufflevector <4 x float> %broadcast.splatinsert160, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body156 ] ; 3 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index157 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 20
  %wide.load158 = load <4 x float>, ptr %i.abl, align 4, !tbaa !13, !alias.scope !167
  %wide.load159 = load <4 x float>, ptr %i.abm, align 4, !tbaa !13, !alias.scope !167
  %i.abn = fadd <4 x float> %broadcast.splat161, %wide.load158
  %i.abo = fadd <4 x float> %broadcast.splat161, %wide.load159
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %index157 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.abp, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %wide.load163 = load <4 x float>, ptr %i.abq, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %i.abr = fadd <4 x float> %wide.load162, %i.abn
  %i.abs = fadd <4 x float> %wide.load163, %i.abo
  store <4 x float> %i.abr, ptr %i.abp, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  store <4 x float> %i.abs, ptr %i.abq, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.abt = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.abt, label %middle.block165, label %vector.body156, !llvm.loop !114

middle.block165:                                  ; preds = %vector.body156
  %cmp.n166 = icmp eq i64 %n.vec155, %wide.trip.count181
  br i1 %cmp.n166, label %.lr.ph62, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck140, %.lr.ph60, %middle.block165
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck140 ], [ 0, %.lr.ph60 ], [ %n.vec155, %middle.block165 ] ; 4 uses
  %xtraiter399 = and i64 %wide.trip.count181, 1
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader
  %i.abu = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !13
  %i.abx = fadd float %i.abu, %i.abw
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !13
  %i.aca = fadd float %i.abz, %i.abx
  store float %i.aca, ptr %i.aby, align 4, !tbaa !13
  br label %scalar.ph152.prol.loopexit

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph152.preheader ], [ %indvars.iv.next178.prol, %scalar.ph152.prol ]
  %i.acb = add nsw i64 %wide.trip.count181, -1
  %i.acc = icmp eq i64 %indvars.iv177.ph, %i.acb
  br i1 %i.acc, label %.lr.ph62, label %scalar.ph152

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph124 ], [ %indvars.iv172.unr, %scalar.ph124.prol.loopexit ] ; 3 uses
  %i.acd = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !13
  %i.acg = fadd float %i.acd, %i.acf
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv172 ; 2 uses
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !13
  %i.acj = fadd float %i.aci, %i.acg
  store float %i.acj, ptr %i.ach, align 4, !tbaa !13
  %i.ack = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !13
  %i.acn = fadd float %i.ack, %i.acm
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next173 ; 2 uses
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !13
  %i.acq = fadd float %i.acp, %i.acn
  store float %i.acq, ptr %i.aco, align 4, !tbaa !13
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %i.aaa
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph124, !llvm.loop !115

.lr.ph62:                                         ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block165
  %i.acr = getelementptr [4 x i8], ptr %i.o, i64 %i.xa
  %i.acs = getelementptr i8, ptr %i.acr, i64 -4   ; 3 uses
  %i.act = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.acu = add i32 %8, %i.act
  %i.acv = sub i32 %9, %i.acu                     ; 2 uses
  %i.acw = zext i32 %i.acv to i64                 ; 2 uses
  %i.acx = add nuw nsw i64 %i.acw, 1              ; 2 uses
  %min.iters.check181 = icmp ult i32 %i.acv, 19
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph62
  %i.acy = shl nuw nsw i64 %i.xa, 2               ; 4 uses
  %14 = shl nuw nsw i64 %i.acw, 2                 ; 2 uses
  %15 = add nsw i64 %i.acy, -4
  %i.acz = sub nsw i64 %15, %14
  %scevgep169 = getelementptr i8, ptr %i.rj, i64 %i.acz ; 2 uses
  %scevgep170 = getelementptr i8, ptr %i.rj, i64 %i.acy ; 2 uses
  %i.ada = sub nsw i64 %i.acy, %14
  %scevgep171 = getelementptr i8, ptr %.0653.lcssa, i64 %i.ada
  %i.adb = getelementptr i8, ptr %.0653.lcssa, i64 %i.acy
  %scevgep172 = getelementptr i8, ptr %i.adb, i64 4
  %bound0173 = icmp ult ptr %scevgep169, %scevgep172
  %bound1174 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0176 = icmp ult ptr %scevgep169, %i.aba
  %bound1177 = icmp ult ptr %i.acs, %scevgep170
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %found.conflict175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck168
  %n.vec183 = and i64 %i.acx, 8589934588          ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adc = sub nsw i64 %i.xa, %n.vec183
  %i.add = load float, ptr %i.acs, align 4, !tbaa !13, !alias.scope !170
  %broadcast.splatinsert190 = insertelement <4 x float> poison, float %i.add, i64 0
  %i.ade = shufflevector <4 x float> %broadcast.splatinsert190, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next193, %vector.body186 ] ; 2 uses
  %i.adf = sub i64 %i.xa, %index187               ; 3 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %i.adf
  %i.adh = getelementptr inbounds i8, ptr %i.adg, i64 -12
  %wide.load188 = load <4 x float>, ptr %i.adh, align 4, !tbaa !13, !alias.scope !171
  %i.adi = getelementptr [4 x i8], ptr %i.rj, i64 %i.adf
  %i.adj = getelementptr i8, ptr %i.adi, i64 -16
  %reverse192 = fadd <4 x float> %wide.load188, %i.ade
  store <4 x float> %reverse192, ptr %i.adj, align 4, !tbaa !13, !alias.scope !172, !noalias !173
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.adf
  %i.adl = getelementptr inbounds i8, ptr %i.adk, i64 -12
  store <4 x i32> %broadcast.splat185, ptr %i.adl, align 4, !tbaa !7
  %index.next193 = add nuw i64 %index187, 4       ; 2 uses
  %i.adm = icmp eq i64 %index.next193, %n.vec183
  br i1 %i.adm, label %middle.block194, label %vector.body186, !llvm.loop !120

middle.block194:                                  ; preds = %vector.body186
  %cmp.n195 = icmp eq i64 %i.acx, %n.vec183
  br i1 %cmp.n195, label %.preheader8, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck168, %.lr.ph62, %middle.block194
  %indvars.iv183.ph = phi i64 [ %i.xa, %vector.memcheck168 ], [ %i.xa, %.lr.ph62 ], [ %i.adc, %middle.block194 ]
  br label %scalar.ph180

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph152 ], [ %indvars.iv177.unr, %scalar.ph152.prol.loopexit ] ; 3 uses
  %i.adn = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !13
  %i.adq = fadd float %i.adn, %i.adp
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !13
  %i.adt = fadd float %i.ads, %i.adq
  store float %i.adt, ptr %i.adr, align 4, !tbaa !13
  %i.adu = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 3 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.1
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !13
  %i.adx = fadd float %i.adu, %i.adw
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv.next178 ; 2 uses
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !13
  %i.aea = fadd float %i.adz, %i.adx
  store float %i.aea, ptr %i.ady, align 4, !tbaa !13
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond182.not.1, label %.lr.ph62, label %scalar.ph152, !llvm.loop !121

.preheader8:                                      ; preds = %scalar.ph180, %middle.block194
  %i.aeb = add nsw i32 %i.u, -1
  %i.aec = zext nneg i32 %i.aeb to i64            ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aec
  %i.aee = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.aee
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 -8
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.aee
  %i.aei = getelementptr inbounds i8, ptr %i.aeh, i64 -8
  %i.aej = add nsw i32 %i.xf, -1                  ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %smax197 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 1) ; 3 uses
  %i.ael = zext nneg i32 %i.xf to i64             ; 2 uses
  %wide.trip.count198 = zext nneg i32 %smax197 to i64 ; 2 uses
  %i.aem = icmp sgt i32 %i.s, 0
  br i1 %i.aem, label %.lr.ph72.lr.ph, label %.loopexit

.lr.ph72.lr.ph:                                   ; preds = %.preheader8
  %i.aen = zext nneg i32 %i.s to i64
  %xtraiter402 = and i64 %i.xa, 1
  %i.aeo = and i64 %i.xa, 2147483646
  %i.aep = add nsw i64 %i.aeo, -4
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod406 = trunc i32 %i.u to i1
  %xtraiter407 = and i64 %wide.trip.count198, 1
  %i.aeq = icmp eq i32 %smax197, 1
  %unroll_iter411 = and i64 %wide.trip.count198, 2147483646
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  %lcmp.mod410 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph180 ], [ %indvars.iv183.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv183
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !13
  %i.aet = load float, ptr %i.acs, align 4, !tbaa !13
  %i.aeu = fadd float %i.aes, %i.aet
  %i.aev = getelementptr [4 x i8], ptr %i.rj, i64 %indvars.iv183
  %i.aew = getelementptr i8, ptr %i.aev, i64 -4
  store float %i.aeu, ptr %i.aew, align 4, !tbaa !13
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv183
  store i32 %i.s, ptr %i.aex, align 4, !tbaa !7
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.aey = trunc nuw i64 %indvars.iv183 to i32
  %i.aez = icmp sgt i32 %i.aey, 1
  br i1 %i.aez, label %scalar.ph180, label %.preheader8, !llvm.loop !122

bb.z:                                             ; preds = %bb.ar
  %i.afa = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.afb = icmp sgt i32 %i.afa, 0
  br i1 %i.afb, label %.lr.ph72, label %.loopexit, !llvm.loop !123

.lr.ph72:                                         ; preds = %.lr.ph72.lr.ph, %bb.z
  %i.afc = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %i.afa, %bb.z ] ; 3 uses
  %.019 = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %.1, %bb.z ]
  %.061918 = phi float [ -1.000000e+07, %.lr.ph72.lr.ph ], [ %.1620, %bb.z ] ; 2 uses
  %.062517 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2, %bb.z ]
  %.062716 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2629, %bb.z ] ; 2 uses
  %.165215 = phi ptr [ %.0651.lcssa, %.lr.ph72.lr.ph ], [ %.165414, %bb.z ] ; 4 uses
  %.165414 = phi ptr [ %.0653.lcssa, %.lr.ph72.lr.ph ], [ %.165215, %bb.z ] ; 3 uses
  %.065913 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.5, %bb.z ]
  %indvars.iv20012 = phi i64 [ %i.aen, %.lr.ph72.lr.ph ], [ %indvars.iv.next20120, %bb.z ] ; 5 uses
  %indvars.iv.next20120 = add nsw i64 %indvars.iv20012, -1 ; 4 uses
  %indvars21 = trunc i64 %indvars.iv.next20120 to i32 ; 6 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv20012
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !13
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.xa ; 2 uses
  store float %i.afe, ptr %i.aff, align 4, !tbaa !13
  tail call fastcc void @match_calc(ptr noundef %.165215, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 0)
  %i.afg = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.afg
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !13
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.xa
  store float %i.afi, ptr %i.afj, align 4, !tbaa !13
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.aee
  %.164263 = getelementptr inbounds i8, ptr %i.afk, i64 -4
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.aee
  %i.afm = getelementptr inbounds i8, ptr %i.afl, i64 -8
  %i.afn = load float, ptr %i.aff, align 4, !tbaa !13
  %i.afo = load float, ptr %i.aed, align 4, !tbaa !13
  %i.afp = fadd float %i.afn, %i.afo
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afg
  %i.afs = icmp eq i32 %.062716, %indvars21
  %i.aft = icmp eq i64 %indvars.iv20012, %i.ael   ; 2 uses
  %or.cond719 = or i1 %i.aft, %i.afs
  %i.afu = icmp eq i32 %indvars21, %i.xf
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.aec, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.164270 = phi ptr [ %.164263, %.lr.ph72 ], [ %.1642, %bb.ak ] ; 2 uses
  %.263769 = phi float [ %i.afp, %.lr.ph72 ], [ %.3638, %bb.ak ] ; 3 uses
  %.164068 = phi ptr [ %i.afm, %.lr.ph72 ], [ %i.ahe, %bb.ak ] ; 3 uses
  %.164467 = phi ptr [ %i.aeg, %.lr.ph72 ], [ %i.ahc, %bb.ak ] ; 4 uses
  %.264766 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3648, %bb.ak ] ; 2 uses
  %.165065 = phi ptr [ %i.aei, %.lr.ph72 ], [ %i.ahd, %bb.ak ] ; 3 uses
  %i.afv = load float, ptr %.164270, align 4, !tbaa !13 ; 4 uses
  %i.afw = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.afw
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !13
  %i.afz = fadd float %.263769, %i.afy            ; 2 uses
  %i.aga = fcmp ogt float %i.afz, %i.afv          ; 2 uses
  %.2657 = select i1 %i.aga, float %i.afz, float %i.afv ; 2 uses
  %i.agb = trunc nuw i64 %i.afw to i32            ; 3 uses
  %.0621 = select i1 %i.aga, i32 %.264766, i32 %i.agb
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !13
  %i.age = fadd float %i.afv, %i.agd              ; 2 uses
  %i.agf = fcmp ult float %i.age, %.263769        ; 2 uses
  %.3648 = select i1 %i.agf, i32 %.264766, i32 %i.agb
  %.3638 = select i1 %i.agf, float %.263769, float %i.age ; 2 uses
  %i.agg = load float, ptr %.164467, align 4, !tbaa !13 ; 2 uses
  %i.agh = load float, ptr %i.afq, align 4, !tbaa !13
  %i.agi = fadd float %i.agg, %i.agh              ; 2 uses
  %i.agj = fcmp ogt float %i.agi, %.2657
  br i1 %i.agj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.agk = load i32, ptr %.165065, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3658 = phi float [ %i.agi, %bb.ab ], [ %.2657, %bb.aa ] ; 2 uses
  %.1624 = phi i32 [ %i.agk, %bb.ab ], [ %i.afc, %bb.aa ]
  %.1622 = phi i32 [ %i.agb, %bb.ab ], [ %.0621, %bb.aa ]
  %i.agl = load float, ptr %i.afr, align 4, !tbaa !13
  %i.agm = fadd float %i.afv, %i.agl              ; 2 uses
  %i.agn = fcmp ult float %i.agm, %i.agg
  br i1 %i.agn, label %bb.ae, label %bb.ad
end_hunk_1
