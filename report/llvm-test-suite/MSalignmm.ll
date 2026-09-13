Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MSalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@MSalignmm:bb.a

._crit_edge225:                                   ; preds = %scalar.ph302, %middle.block313, %.preheader211
  store ptr %i.s, ptr %i.q, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.v, ptr %i.cz, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.u, ptr %i.da, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.w, ptr %i.db, align 8, !tbaa !17
  %i.dc = add nsw i32 %i.i, -1
  %i.dd = add nsw i32 %i.l, -1
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
  %i.u = sub nsw i32 %9, %8                       ; 23 uses
  %i.v = add nsw i32 %i.u, 1                      ; 11 uses
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
  %exitcond260.not.a = icmp eq i64 %indvars.iv.next256, %wide.trip.count259
  br i1 %exitcond260.not.a, label %.preheader, label %bb.b, !llvm.loop !42

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
  %or.cond362.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond362.a, label %.lr.ph.preheader383, label %vector.ph

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
  %or.cond363.a = select i1 %min.iters.check28, i1 true, i1 %diff.check26
  br i1 %or.cond363.a, label %.lr.ph25.preheader382, label %vector.ph29

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
  %wide.load81 = load <4 x float>, ptr %i.tn, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  %wide.load82 = load <4 x float>, ptr %i.to, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  %i.tp = fadd <4 x float> %wide.load81, %i.tl
  %i.tq = fadd <4 x float> %wide.load82, %i.tm
  store <4 x float> %i.tp, ptr %i.tn, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  store <4 x float> %i.tq, ptr %i.to, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  %index.next83 = add nuw i64 %index76, 8         ; 2 uses
  %i.tr = icmp eq i64 %index.next83, %n.vec74
  br i1 %i.tr, label %middle.block84, label %vector.body75, !llvm.loop !94

middle.block84:                                   ; preds = %vector.body75
  %cmp.n85 = icmp eq i64 %i.sz, %n.vec74
  br i1 %cmp.n85, label %.lr.ph32, label %.lr.ph30.preheader380

.lr.ph30.preheader380:                            ; preds = %vector.memcheck59, %.lr.ph30.preheader, %middle.block84
  %indvars.iv144.ph = phi i64 [ 1, %vector.memcheck59 ], [ 1, %.lr.ph30.preheader ], [ %i.tf, %middle.block84 ] ; 5 uses
  %i.ts = and i64 %wide.trip.count147, 1
  %lcmp.mod391.not.not = icmp eq i64 %i.ts, 0
  br i1 %lcmp.mod391.not.not, label %.lr.ph30.prol, label %.lr.ph30.prol.loopexit

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader380
  %i.tt = load float, ptr %i.l, align 4, !tbaa !13
  %i.tu = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144.ph
  %i.tv = getelementptr i8, ptr %i.tu, i64 -4
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !13
  %i.tx = fadd float %i.tt, %i.tw
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv144.ph ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !13
  %i.ua = fadd float %i.tz, %i.tx
  store float %i.ua, ptr %i.ty, align 4, !tbaa !13
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader380
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph30.preheader380 ], [ %indvars.iv.next145.prol, %.lr.ph30.prol ]
  %i.ub = add nsw i64 %wide.trip.count147, -1
  %i.uc = icmp eq i64 %indvars.iv144.ph, %i.ub
  br i1 %i.uc, label %.lr.ph32, label %.lr.ph30

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %.lr.ph28 ], [ %indvars.iv139.unr, %.lr.ph28.prol.loopexit ] ; 4 uses
  %i.ud = load float, ptr %i.e, align 4, !tbaa !13
  %i.ue = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv139
  %i.uf = getelementptr i8, ptr %i.ue, i64 -4
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !13
  %i.uh = fadd float %i.ud, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv139 ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !13
  %i.uk = fadd float %i.uj, %i.uh
  store float %i.uk, ptr %i.ui, align 4, !tbaa !13
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.ul = load float, ptr %i.e, align 4, !tbaa !13
  %i.um = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next140
  %i.un = getelementptr i8, ptr %i.um, i64 -4
  %i.uo = load float, ptr %i.un, align 4, !tbaa !13
  %i.up = fadd float %i.ul, %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next140 ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !13
  %i.us = fadd float %i.ur, %i.up
  store float %i.us, ptr %i.uq, align 4, !tbaa !13
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.1, label %.lr.ph30.preheader, label %.lr.ph28, !llvm.loop !95

.lr.ph32:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30, %middle.block84
  %i.ut = getelementptr i8, ptr %i.e, i64 4       ; 6 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 2)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64
  %i.uu = add nsw i64 %wide.trip.count147, -1     ; 2 uses
  %min.iters.check100 = icmp slt i32 %i.sy, 17
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph32
  %scevgep88 = getelementptr i8, ptr %i.rj, i64 4 ; 2 uses
  %i.uv = shl nuw nsw i64 %wide.trip.count147, 2  ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.rj, i64 %i.uv ; 2 uses
  %i.uw = getelementptr i8, ptr %i.qv, i64 %i.uv
  %scevgep90 = getelementptr i8, ptr %i.uw, i64 -4
  %i.ux = shl nsw i64 %i.d, 2
  %i.uy = getelementptr i8, ptr %i.c, i64 %i.ux
  %scevgep91 = getelementptr i8, ptr %i.uy, i64 8
  %bound092 = icmp ult ptr %scevgep88, %scevgep90
  %bound193 = icmp ult ptr %i.qv, %scevgep89
  %found.conflict94 = and i1 %bound092, %bound193
  %bound095 = icmp ult ptr %scevgep88, %scevgep91
  %bound196 = icmp ult ptr %i.ut, %scevgep89
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %found.conflict94, %found.conflict97
  br i1 %conflict.rdx98, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck87
  %n.vec102 = and i64 %i.uu, -8                   ; 3 uses
  %i.uz = or disjoint i64 %n.vec102, 1
  %i.va = load float, ptr %i.ut, align 4, !tbaa !13, !alias.scope !158
  %broadcast.splatinsert107 = insertelement <4 x float> poison, float %i.va, i64 0
  %broadcast.splat108 = shufflevector <4 x float> %broadcast.splatinsert107, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.vb = or disjoint i64 %index104, 1            ; 3 uses
  %i.vc = getelementptr [4 x i8], ptr %i.qv, i64 %i.vb ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 -4
  %i.ve = getelementptr i8, ptr %i.vc, i64 12
  %wide.load105 = load <4 x float>, ptr %i.vd, align 4, !tbaa !13, !alias.scope !159
  %wide.load106 = load <4 x float>, ptr %i.ve, align 4, !tbaa !13, !alias.scope !159
  %i.vf = fadd <4 x float> %wide.load105, %broadcast.splat108
  %i.vg = fadd <4 x float> %wide.load106, %broadcast.splat108
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.vb ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  store <4 x float> %i.vf, ptr %i.vh, align 4, !tbaa !13, !alias.scope !160, !noalias !161
  store <4 x float> %i.vg, ptr %i.vi, align 4, !tbaa !13, !alias.scope !160, !noalias !161
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.vb ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store <4 x i32> zeroinitializer, ptr %i.vj, align 4, !tbaa !7
  store <4 x i32> zeroinitializer, ptr %i.vk, align 4, !tbaa !7
  %index.next109 = add nuw i64 %index104, 8       ; 2 uses
  %i.vl = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.vl, label %middle.block110, label %vector.body103, !llvm.loop !100

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.uu, %n.vec102
  br i1 %cmp.n111, label %._crit_edge33, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %vector.memcheck87, %.lr.ph32, %middle.block110
  %indvars.iv149.ph = phi i64 [ 1, %vector.memcheck87 ], [ 1, %.lr.ph32 ], [ %i.uz, %middle.block110 ] ; 6 uses
  %i.vm = and i64 %wide.trip.count147, 1
  %lcmp.mod394.not.not = icmp eq i64 %i.vm, 0
  br i1 %lcmp.mod394.not.not, label %scalar.ph99.prol, label %scalar.ph99.prol.loopexit

scalar.ph99.prol:                                 ; preds = %scalar.ph99.preheader
  %i.vn = getelementptr [4 x i8], ptr %i.qv, i64 %indvars.iv149.ph
  %i.vo = getelementptr i8, ptr %i.vn, i64 -4
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !13
  %i.vq = load float, ptr %i.ut, align 4, !tbaa !13
  %i.vr = fadd float %i.vp, %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv149.ph
  store float %i.vr, ptr %i.vs, align 4, !tbaa !13
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv149.ph
  store i32 0, ptr %i.vt, align 4, !tbaa !7
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.ph, 1
  br label %scalar.ph99.prol.loopexit

scalar.ph99.prol.loopexit:                        ; preds = %scalar.ph99.prol, %scalar.ph99.preheader
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %scalar.ph99.preheader ], [ %indvars.iv.next150.prol, %scalar.ph99.prol ]
  %i.vu = add nsw i64 %wide.trip.count147, -1
  %i.vv = icmp eq i64 %indvars.iv149.ph, %i.vu
  br i1 %i.vv, label %._crit_edge33, label %scalar.ph99

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph30 ], [ %indvars.iv144.unr, %.lr.ph30.prol.loopexit ] ; 4 uses
  %i.vw = load float, ptr %i.l, align 4, !tbaa !13
  %i.vx = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144
  %i.vy = getelementptr i8, ptr %i.vx, i64 -4
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !13
  %i.wa = fadd float %i.vw, %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv144 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !13
  %i.wd = fadd float %i.wc, %i.wa
  store float %i.wd, ptr %i.wb, align 4, !tbaa !13
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.we = load float, ptr %i.l, align 4, !tbaa !13
  %i.wf = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.next145
  %i.wg = getelementptr i8, ptr %i.wf, i64 -4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !13
  %i.wi = fadd float %i.we, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next145 ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !13
  %i.wl = fadd float %i.wk, %i.wi
  store float %i.wl, ptr %i.wj, align 4, !tbaa !13
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %exitcond148.not.1 = icmp eq i64 %indvars.iv.next145.1, %wide.trip.count147
  br i1 %exitcond148.not.1, label %.lr.ph32, label %.lr.ph30, !llvm.loop !101

scalar.ph99:                                      ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %scalar.ph99 ], [ %indvars.iv149.unr, %scalar.ph99.prol.loopexit ] ; 5 uses
  %i.wm = getelementptr [4 x i8], ptr %i.qv, i64 %indvars.iv149
  %i.wn = getelementptr i8, ptr %i.wm, i64 -4
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !13
  %i.wp = load float, ptr %i.ut, align 4, !tbaa !13
  %i.wq = fadd float %i.wo, %i.wp
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv149
  store float %i.wq, ptr %i.wr, align 4, !tbaa !13
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv149
  store i32 0, ptr %i.ws, align 4, !tbaa !7
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %i.wt = getelementptr [4 x i8], ptr %i.qv, i64 %indvars.iv.next150
  %i.wu = getelementptr i8, ptr %i.wt, i64 -4
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !13
  %i.ww = load float, ptr %i.ut, align 4, !tbaa !13
  %i.wx = fadd float %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.next150
  store float %i.wx, ptr %i.wy, align 4, !tbaa !13
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv.next150
  store i32 0, ptr %i.wz, align 4, !tbaa !7
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %exitcond154.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count153
  br i1 %exitcond154.not.1, label %._crit_edge33, label %scalar.ph99, !llvm.loop !102

._crit_edge33:                                    ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99, %middle.block110
  %i.xa = zext nneg i32 %i.u to i64               ; 14 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.xa
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !13
  store float %i.xc, ptr %i.ri, align 4, !tbaa !13
  %i.xd = uitofp nneg i32 %i.t to double
  %i.xe = fmul nnan double %i.xd, 5.000000e-01
  %i.xf = fptosi double %i.xe to i32              ; 10 uses
  %.not47 = icmp eq i32 %i.xf, 0
  br i1 %.not47, label %.lr.ph58, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge33
  %i.xg = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.064935 = getelementptr inbounds nuw i8, ptr %i.rk, i64 4 ; 2 uses
  %.064336 = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %smax158 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 2) ; 2 uses
  %i.xh = zext nneg i32 %i.xf to i64
  %i.xi = add nuw i32 %i.xf, 1
  %wide.trip.count170 = zext i32 %i.xi to i64
  %wide.trip.count159 = zext nneg i32 %smax158 to i64
  %wide.trip.count165 = zext nneg i32 %smax158 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph52, %._crit_edge46
  %indvars.iv167 = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next168, %._crit_edge46 ] ; 7 uses
  %.065150 = phi ptr [ %i.qw, %.lr.ph52 ], [ %.065349, %._crit_edge46 ] ; 7 uses
  %.065349 = phi ptr [ %i.qv, %.lr.ph52 ], [ %.065150, %._crit_edge46 ] ; 7 uses
  %i.xj = add nsw i64 %indvars.iv167, -1          ; 5 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.xj
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !13
  store float %i.xl, ptr %.065349, align 4, !tbaa !13
  %i.xm = trunc nuw nsw i64 %indvars.iv167 to i32
  tail call fastcc void @match_calc(ptr noundef %.065150, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %i.xm, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 0)
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv167
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !13
  store float %i.xo, ptr %.065150, align 4, !tbaa !13
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv167 ; 3 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !13 ; 2 uses
  store float %i.xq, ptr %i.rj, align 4, !tbaa !13
  %i.xr = icmp eq i64 %indvars.iv167, %i.xh
  br i1 %i.xr, label %.lr.ph45.split.us.preheader, label %.lr.ph45.split.preheader

.lr.ph45.split.preheader:                         ; preds = %bb.u
  %i.xs = load float, ptr %.065349, align 4, !tbaa !13
  %i.xt = load float, ptr %i.xg, align 4, !tbaa !13
  %i.xu = fadd float %i.xs, %i.xt
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xj
  %i.xw = trunc nuw nsw i64 %i.xj to i32
  br label %.lr.ph45.split

.lr.ph45.split.us.preheader:                      ; preds = %bb.u
  store float %i.xq, ptr %i.qz, align 4, !tbaa !13
  %i.xx = load float, ptr %.065349, align 4, !tbaa !13
  %i.xy = load float, ptr %i.xg, align 4, !tbaa !13
  %i.xz = fadd float %i.xx, %i.xy
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xj
  %i.yb = trunc nuw nsw i64 %i.xj to i32          ; 2 uses
  br label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45.split.us.preheader, %bb.w
  %indvars.iv161 = phi i64 [ 1, %.lr.ph45.split.us.preheader ], [ %indvars.iv.next162, %bb.w ] ; 8 uses
  %.064343.us = phi ptr [ %.064336, %.lr.ph45.split.us.preheader ], [ %.0643.us, %bb.w ] ; 4 uses
  %.064942.us = phi ptr [ %.064935, %.lr.ph45.split.us.preheader ], [ %.0649.us, %bb.w ] ; 3 uses
  %.065150.pn314 = phi ptr [ %.065150, %.lr.ph45.split.us.preheader ], [ %.063941.us, %bb.w ]
  %.063540.us = phi float [ %i.xz, %.lr.ph45.split.us.preheader ], [ %.1636.us, %bb.w ] ; 3 uses
  %.064139.us = phi ptr [ %.065349, %.lr.ph45.split.us.preheader ], [ %i.zd, %bb.w ] ; 2 uses
  %.064538.us = phi i32 [ 0, %.lr.ph45.split.us.preheader ], [ %.1646.us, %bb.w ]
  %.063941.us = getelementptr inbounds nuw i8, ptr %.065150.pn314, i64 4 ; 3 uses
  %i.yc = load float, ptr %.064139.us, align 4, !tbaa !13 ; 4 uses
  %i.yd = add nsw i64 %indvars.iv161, -1          ; 2 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.yd
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !13
  %i.yg = fadd float %.063540.us, %i.yf           ; 2 uses
  %i.yh = fcmp ogt float %i.yg, %i.yc
  %.0655.us = select i1 %i.yh, float %i.yg, float %i.yc ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv161
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !13
  %i.yk = fadd float %i.yc, %i.yj                 ; 2 uses
  %i.yl = fcmp ult float %i.yk, %.063540.us       ; 2 uses
  %i.ym = trunc nuw nsw i64 %i.yd to i32
  %.1646.us = select i1 %i.yl, i32 %.064538.us, i32 %i.ym ; 2 uses
  %.1636.us = select i1 %i.yl, float %.063540.us, float %i.yk ; 2 uses
  %i.yn = load float, ptr %.064343.us, align 4, !tbaa !13 ; 2 uses
  %i.yo = load float, ptr %i.ya, align 4, !tbaa !13
  %i.yp = fadd float %i.yn, %i.yo                 ; 2 uses
  %i.yq = fcmp ogt float %i.yp, %.0655.us
  %.1656.us = select i1 %i.yq, float %i.yp, float %.0655.us
  %i.yr = load float, ptr %i.xp, align 4, !tbaa !13
  %i.ys = fadd float %i.yc, %i.yr                 ; 2 uses
  %i.yt = fcmp ult float %i.ys, %i.yn
  br i1 %i.yt, label %.lr.ph45.split.us._crit_edge, label %bb.v

.lr.ph45.split.us._crit_edge:                     ; preds = %.lr.ph45.split.us
  %.pre = load i32, ptr %.064942.us, align 4, !tbaa !7
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph45.split.us
  store float %i.ys, ptr %.064343.us, align 4, !tbaa !13
  store i32 %i.yb, ptr %.064942.us, align 4, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph45.split.us._crit_edge, %bb.v
  %i.yu = phi i32 [ %.pre, %.lr.ph45.split.us._crit_edge ], [ %i.yb, %bb.v ]
  %i.yv = load float, ptr %.063941.us, align 4, !tbaa !13
  %i.yw = fadd float %.1656.us, %i.yv             ; 2 uses
  store float %i.yw, ptr %.063941.us, align 4, !tbaa !13
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv161
  store i32 %i.yu, ptr %i.yx, align 4, !tbaa !7
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv161
  store i32 %.1646.us, ptr %i.yy, align 4, !tbaa !7
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv161
  store float %i.yw, ptr %i.yz, align 4, !tbaa !13
  %i.za = load float, ptr %.064343.us, align 4, !tbaa !13
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv161
  store float %i.za, ptr %i.zb, align 4, !tbaa !13
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv161
  store float %.1636.us, ptr %i.zc, align 4, !tbaa !13
  %i.zd = getelementptr inbounds nuw i8, ptr %.064139.us, i64 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %.0649.us = getelementptr inbounds nuw i8, ptr %.064942.us, i64 4
  %.0643.us = getelementptr inbounds nuw i8, ptr %.064343.us, i64 4
  %exitcond166.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge46, label %.lr.ph45.split.us, !llvm.loop !103

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %bb.y
  %indvars.iv155 = phi i64 [ 1, %.lr.ph45.split.preheader ], [ %indvars.iv.next156, %bb.y ] ; 3 uses
  %.064343 = phi ptr [ %.064336, %.lr.ph45.split.preheader ], [ %.0643, %bb.y ] ; 3 uses
  %.064942 = phi ptr [ %.064935, %.lr.ph45.split.preheader ], [ %.0649, %bb.y ] ; 2 uses
  %.065150.pn = phi ptr [ %.065150, %.lr.ph45.split.preheader ], [ %.063941, %bb.y ]
  %.063540 = phi float [ %i.xu, %.lr.ph45.split.preheader ], [ %.1636, %bb.y ] ; 3 uses
  %.064139 = phi ptr [ %.065349, %.lr.ph45.split.preheader ], [ %i.zw, %bb.y ] ; 2 uses
  %.063941 = getelementptr inbounds nuw i8, ptr %.065150.pn, i64 4 ; 3 uses
  %i.ze = load float, ptr %.064139, align 4, !tbaa !13 ; 4 uses
  %i.zf = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv155
  %i.zg = getelementptr i8, ptr %i.zf, i64 -4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !13
  %i.zi = fadd float %.063540, %i.zh              ; 2 uses
  %i.zj = fcmp ogt float %i.zi, %i.ze
  %.0655 = select i1 %i.zj, float %i.zi, float %i.ze ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv155
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !13
  %i.zm = fadd float %i.ze, %i.zl                 ; 2 uses
  %.inv = fcmp oge float %i.zm, %.063540
  %.1636 = select i1 %.inv, float %i.zm, float %.063540
  %i.zn = load float, ptr %.064343, align 4, !tbaa !13 ; 2 uses
  %i.zo = load float, ptr %i.xv, align 4, !tbaa !13
  %i.zp = fadd float %i.zn, %i.zo                 ; 2 uses
  %i.zq = fcmp ogt float %i.zp, %.0655
  %.1656 = select i1 %i.zq, float %i.zp, float %.0655
  %i.zr = load float, ptr %i.xp, align 4, !tbaa !13
  %i.zs = fadd float %i.ze, %i.zr                 ; 2 uses
  %i.zt = fcmp ult float %i.zs, %i.zn
  br i1 %i.zt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph45.split
  store float %i.zs, ptr %.064343, align 4, !tbaa !13
  store i32 %i.xw, ptr %.064942, align 4, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph45.split
  %i.zu = load float, ptr %.063941, align 4, !tbaa !13
  %i.zv = fadd float %.1656, %i.zu
  store float %i.zv, ptr %.063941, align 4, !tbaa !13
  %i.zw = getelementptr inbounds nuw i8, ptr %.064139, i64 4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %.0649 = getelementptr inbounds nuw i8, ptr %.064942, i64 4
  %.0643 = getelementptr inbounds nuw i8, ptr %.064343, i64 4
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge46, label %.lr.ph45.split, !llvm.loop !103

._crit_edge46:                                    ; preds = %bb.y, %bb.w
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.065150, i64 %i.xa
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !13
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv167
  store float %i.zy, ptr %i.zz, align 4, !tbaa !13
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.lr.ph58, label %bb.u, !llvm.loop !104

.lr.ph58:                                         ; preds = %._crit_edge46, %._crit_edge33
  %.0653.lcssa = phi ptr [ %i.qv, %._crit_edge33 ], [ %.065150, %._crit_edge46 ] ; 13 uses
  %.0651.lcssa = phi ptr [ %i.qw, %._crit_edge33 ], [ %.065349, %._crit_edge46 ]
  tail call fastcc void @match_calc(ptr noundef %i.rh, ptr noundef %i.rq, ptr noundef %i.rr, i32 noundef %i.u, i32 noundef %i.t, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.0653.lcssa, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %i.s, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 1)
  %14 = zext nneg i32 %i.s to i64                 ; 8 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %14 ; 5 uses
  %min.iters.check125 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph58
  %i.aaa = shl nuw nsw i64 %14, 2
  %scevgep114 = getelementptr i8, ptr %i.rh, i64 %i.aaa ; 2 uses
  %i.aab = add nsw i64 %i.d, %14
  %i.aac = shl nsw i64 %i.aab, 2
  %i.aad = add nsw i64 %i.aac, 4                  ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.g, i64 %i.aad
  %scevgep116 = getelementptr i8, ptr %i.c, i64 %i.aad
  %bound0117 = icmp ult ptr %i.rh, %scevgep115
  %bound1118 = icmp ult ptr %15, %scevgep114
  %found.conflict119 = and i1 %bound0117, %bound1118
  %bound0120 = icmp ult ptr %i.rh, %scevgep116
  %bound1121 = icmp ult ptr %i.ut, %scevgep114
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %found.conflict119, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck113
  %n.vec127 = and i64 %14, 2147483640             ; 3 uses
  %i.aae = load float, ptr %15, align 4, !tbaa !13, !alias.scope !162
  %broadcast.splatinsert132 = insertelement <4 x float> poison, float %i.aae, i64 0
  %broadcast.splat133 = shufflevector <4 x float> %broadcast.splatinsert132, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body128 ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index129 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 20
  %wide.load130.a = load <4 x float>, ptr %i.aag, align 4, !tbaa !13, !alias.scope !163
  %wide.load131 = load <4 x float>, ptr %i.aah, align 4, !tbaa !13, !alias.scope !163
  %i.aai = fadd <4 x float> %broadcast.splat133, %wide.load130.a
  %i.aaj = fadd <4 x float> %broadcast.splat133, %wide.load131
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %index129 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16 ; 2 uses
  %wide.load134.a = load <4 x float>, ptr %i.aak, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %wide.load135 = load <4 x float>, ptr %i.aal, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %i.aam = fadd <4 x float> %wide.load134.a, %i.aai
  %i.aan = fadd <4 x float> %wide.load135, %i.aaj
  store <4 x float> %i.aam, ptr %i.aak, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  store <4 x float> %i.aan, ptr %i.aal, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %index.next136 = add nuw i64 %index129, 8       ; 2 uses
  %i.aao = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.aao, label %middle.block137, label %vector.body128, !llvm.loop !109

middle.block137:                                  ; preds = %vector.body128
  %cmp.n138 = icmp eq i64 %n.vec127, %14
  br i1 %cmp.n138, label %.lr.ph60, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %vector.memcheck113, %.lr.ph58, %middle.block137
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph58 ], [ %n.vec127, %middle.block137 ] ; 4 uses
  %xtraiter396 = and i64 %14, 1
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol

scalar.ph124.prol:                                ; preds = %scalar.ph124.preheader
  %i.aap = load float, ptr %15, align 4, !tbaa !13
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.prol
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !13
  %i.aas = fadd float %i.aap, %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv172.ph ; 2 uses
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !13
  %i.aav = fadd float %i.aau, %i.aas
  store float %i.aav, ptr %i.aat, align 4, !tbaa !13
  br label %scalar.ph124.prol.loopexit

scalar.ph124.prol.loopexit:                       ; preds = %scalar.ph124.prol, %scalar.ph124.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph124.preheader ], [ %indvars.iv.next173.prol, %scalar.ph124.prol ]
  %i.aaw = add nsw i64 %14, -1
  %i.aax = icmp eq i64 %indvars.iv172.ph, %i.aaw
  br i1 %i.aax, label %.lr.ph60, label %scalar.ph124

.lr.ph60:                                         ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124, %middle.block137
  %16 = getelementptr [4 x i8], ptr %i.o, i64 %i.xa ; 6 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %wide.trip.count181 = zext nneg i32 %smax180 to i64 ; 6 uses
  %min.iters.check153 = icmp slt i32 %i.u, 16
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph60
  %i.aay = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %scevgep141.a = getelementptr i8, ptr %.0653.lcssa, i64 %i.aay ; 2 uses
  %i.aaz = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.aba = add nsw i64 %i.k, %i.xa
  %17 = shl nsw i64 %i.aba, 2
  %18 = getelementptr i8, ptr %i.n, i64 %17
  %scevgep142 = getelementptr i8, ptr %18, i64 4
  %19 = getelementptr i8, ptr %i.j, i64 %i.aaz
  %scevgep143.a = getelementptr i8, ptr %19, i64 4
  %i.abb = getelementptr i8, ptr %i.j, i64 %i.aaz
  %i.abc = getelementptr i8, ptr %i.abb, i64 %i.aay
  %scevgep144 = getelementptr i8, ptr %i.abc, i64 4
  %bound0145 = icmp ult ptr %.0653.lcssa, %scevgep142
  %bound1146 = icmp ult ptr %16, %scevgep141.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0148 = icmp ult ptr %.0653.lcssa, %scevgep144
  %bound1149 = icmp ult ptr %scevgep143.a, %scevgep141.a
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %found.conflict147, %found.conflict150
  br i1 %conflict.rdx151, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck140
  %n.vec155 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.abd = load float, ptr %16, align 4, !tbaa !13, !alias.scope !166
  %broadcast.splatinsert160 = insertelement <4 x float> poison, float %i.abd, i64 0
  %broadcast.splat161 = shufflevector <4 x float> %broadcast.splatinsert160, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body156 ] ; 3 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index157 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 20
  %wide.load158 = load <4 x float>, ptr %i.abf, align 4, !tbaa !13, !alias.scope !167
  %wide.load159 = load <4 x float>, ptr %i.abg, align 4, !tbaa !13, !alias.scope !167
  %i.abh = fadd <4 x float> %broadcast.splat161, %wide.load158
  %i.abi = fadd <4 x float> %broadcast.splat161, %wide.load159
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %index157 ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.abj, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %wide.load163 = load <4 x float>, ptr %i.abk, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %i.abl = fadd <4 x float> %wide.load162, %i.abh
  %i.abm = fadd <4 x float> %wide.load163, %i.abi
  store <4 x float> %i.abl, ptr %i.abj, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  store <4 x float> %i.abm, ptr %i.abk, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.abn = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.abn, label %middle.block165, label %vector.body156, !llvm.loop !114

middle.block165:                                  ; preds = %vector.body156
  %cmp.n166 = icmp eq i64 %n.vec155, %wide.trip.count181
  br i1 %cmp.n166, label %.lr.ph62, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck140, %.lr.ph60, %middle.block165
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck140 ], [ 0, %.lr.ph60 ], [ %n.vec155, %middle.block165 ] ; 4 uses
  %xtraiter399 = and i64 %wide.trip.count181, 1
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader
  %i.abo = load float, ptr %16, align 4, !tbaa !13
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !13
  %i.abr = fadd float %i.abo, %i.abq
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !13
  %i.abu = fadd float %i.abt, %i.abr
  store float %i.abu, ptr %i.abs, align 4, !tbaa !13
  br label %scalar.ph152.prol.loopexit

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph152.preheader ], [ %indvars.iv.next178.prol, %scalar.ph152.prol ]
  %i.abv = add nsw i64 %wide.trip.count181, -1
  %i.abw = icmp eq i64 %indvars.iv177.ph, %i.abv
  br i1 %i.abw, label %.lr.ph62, label %scalar.ph152

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph124 ], [ %indvars.iv172.unr, %scalar.ph124.prol.loopexit ] ; 3 uses
  %i.abx = load float, ptr %15, align 4, !tbaa !13
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !13
  %i.aca = fadd float %i.abx, %i.abz
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv172 ; 2 uses
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !13
  %i.acd = fadd float %i.acc, %i.aca
  store float %i.acd, ptr %i.acb, align 4, !tbaa !13
  %i.ace = load float, ptr %15, align 4, !tbaa !13
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !13
  %i.ach = fadd float %i.ace, %i.acg
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next173 ; 2 uses
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !13
  %i.ack = fadd float %i.acj, %i.ach
  store float %i.ack, ptr %i.aci, align 4, !tbaa !13
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %14
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph124, !llvm.loop !115

.lr.ph62:                                         ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block165
  %i.acl = getelementptr [4 x i8], ptr %i.o, i64 %i.xa
  %i.acm = getelementptr i8, ptr %i.acl, i64 -4   ; 3 uses
  %i.acn = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.aco = add i32 %8, %i.acn
  %i.acp = sub i32 %9, %i.aco                     ; 2 uses
  %i.acq = zext i32 %i.acp to i64
  %i.acr = add nuw nsw i64 %i.acq, 1              ; 2 uses
  %min.iters.check181 = icmp ult i32 %i.acp, 19
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph62
  %i.acs = shl nuw nsw i64 %i.xa, 2               ; 4 uses
  %i.act = add nsw i64 %i.acs, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.acu = add i32 %8, %smin
  %i.acv = sub i32 %9, %i.acu
  %i.acw = zext i32 %i.acv to i64
  %i.acx = shl nuw nsw i64 %i.acw, 2              ; 2 uses
  %i.acy = sub nsw i64 %i.act, %i.acx
  %scevgep169.a = getelementptr i8, ptr %i.rj, i64 %i.acy ; 2 uses
  %scevgep170.a = getelementptr i8, ptr %i.rj, i64 %i.acs ; 2 uses
  %i.acz = sub nsw i64 %i.acs, %i.acx
  %scevgep171 = getelementptr i8, ptr %.0653.lcssa, i64 %i.acz
  %i.ada = getelementptr i8, ptr %.0653.lcssa, i64 %i.acs
  %scevgep172 = getelementptr i8, ptr %i.ada, i64 4
  %bound0173 = icmp ult ptr %scevgep169.a, %scevgep172
  %bound1174 = icmp ult ptr %scevgep171, %scevgep170.a
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0176 = icmp ult ptr %scevgep169.a, %16
  %bound1177 = icmp ult ptr %i.acm, %scevgep170.a
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %found.conflict175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck168
  %n.vec183 = and i64 %i.acr, 8589934588          ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adb = sub nsw i64 %i.xa, %n.vec183
  %i.adc = load float, ptr %i.acm, align 4, !tbaa !13, !alias.scope !170
  %broadcast.splatinsert190 = insertelement <4 x float> poison, float %i.adc, i64 0
  %i.add = shufflevector <4 x float> %broadcast.splatinsert190, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next193, %vector.body186 ] ; 2 uses
  %i.ade = sub i64 %i.xa, %index187               ; 3 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %i.ade
  %i.adg = getelementptr inbounds i8, ptr %i.adf, i64 -12
  %wide.load188 = load <4 x float>, ptr %i.adg, align 4, !tbaa !13, !alias.scope !171
  %i.adh = getelementptr [4 x i8], ptr %i.rj, i64 %i.ade
  %i.adi = getelementptr i8, ptr %i.adh, i64 -16
  %reverse192 = fadd <4 x float> %wide.load188, %i.add
  store <4 x float> %reverse192, ptr %i.adi, align 4, !tbaa !13, !alias.scope !172, !noalias !173
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.ade
  %i.adk = getelementptr inbounds i8, ptr %i.adj, i64 -12
  store <4 x i32> %broadcast.splat185, ptr %i.adk, align 4, !tbaa !7
  %index.next193 = add nuw i64 %index187, 4       ; 2 uses
  %i.adl = icmp eq i64 %index.next193, %n.vec183
  br i1 %i.adl, label %middle.block194, label %vector.body186, !llvm.loop !120

middle.block194:                                  ; preds = %vector.body186
  %cmp.n195 = icmp eq i64 %i.acr, %n.vec183
  br i1 %cmp.n195, label %.preheader8, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck168, %.lr.ph62, %middle.block194
  %indvars.iv183.ph = phi i64 [ %i.xa, %vector.memcheck168 ], [ %i.xa, %.lr.ph62 ], [ %i.adb, %middle.block194 ]
  br label %scalar.ph180

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph152 ], [ %indvars.iv177.unr, %scalar.ph152.prol.loopexit ] ; 3 uses
  %i.adm = load float, ptr %16, align 4, !tbaa !13
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !13
  %i.adp = fadd float %i.adm, %i.ado
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !13
  %i.ads = fadd float %i.adr, %i.adp
  store float %i.ads, ptr %i.adq, align 4, !tbaa !13
  %i.adt = load float, ptr %16, align 4, !tbaa !13
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 3 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.1
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !13
  %i.adw = fadd float %i.adt, %i.adv
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv.next178 ; 2 uses
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !13
  %i.adz = fadd float %i.ady, %i.adw
  store float %i.adz, ptr %i.adx, align 4, !tbaa !13
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond182.not.1, label %.lr.ph62, label %scalar.ph152, !llvm.loop !121

.preheader8:                                      ; preds = %scalar.ph180, %middle.block194
  %i.aea = add nsw i32 %i.u, -1
  %i.aeb = zext nneg i32 %i.aea to i64            ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aeb
  %i.aed = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.aed
  %i.aef = getelementptr inbounds i8, ptr %i.aee, i64 -8
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.aed
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 -8
  %i.aei = add nsw i32 %i.xf, -1                  ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %smax197 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 1) ; 3 uses
  %i.aek = zext nneg i32 %i.xf to i64             ; 2 uses
  %wide.trip.count198 = zext nneg i32 %smax197 to i64 ; 2 uses
  %i.ael = icmp sgt i32 %i.s, 0
  br i1 %i.ael, label %.lr.ph72.lr.ph, label %.loopexit

.lr.ph72.lr.ph:                                   ; preds = %.preheader8
  %i.aem = zext nneg i32 %i.s to i64
  %xtraiter402 = and i64 %i.xa, 1
  %i.aen = and i64 %i.xa, 2147483646
  %i.aeo = add nsw i64 %i.aen, -4
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod406 = trunc i32 %i.u to i1
  %xtraiter407 = and i64 %wide.trip.count198, 1
  %i.aep = icmp eq i32 %smax197, 1
  %unroll_iter411 = and i64 %wide.trip.count198, 2147483646
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  %lcmp.mod410 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph180 ], [ %indvars.iv183.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv183
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !13
  %i.aes = load float, ptr %i.acm, align 4, !tbaa !13
  %i.aet = fadd float %i.aer, %i.aes
  %i.aeu = getelementptr [4 x i8], ptr %i.rj, i64 %indvars.iv183
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -4
  store float %i.aet, ptr %i.aev, align 4, !tbaa !13
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv183
  store i32 %i.s, ptr %i.aew, align 4, !tbaa !7
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.aex = trunc nuw i64 %indvars.iv183 to i32
  %i.aey = icmp sgt i32 %i.aex, 1
  br i1 %i.aey, label %scalar.ph180, label %.preheader8, !llvm.loop !122

bb.z:                                             ; preds = %bb.ar
  %i.aez = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.afa = icmp sgt i32 %i.aez, 0
  br i1 %i.afa, label %.lr.ph72, label %.loopexit, !llvm.loop !123

.lr.ph72:                                         ; preds = %.lr.ph72.lr.ph, %bb.z
  %i.afb = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %i.aez, %bb.z ] ; 3 uses
  %.019 = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %.1, %bb.z ]
  %.061918 = phi float [ -1.000000e+07, %.lr.ph72.lr.ph ], [ %.1620, %bb.z ] ; 2 uses
  %.062517 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2, %bb.z ]
  %.062716 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2629, %bb.z ] ; 2 uses
  %.165215 = phi ptr [ %.0651.lcssa, %.lr.ph72.lr.ph ], [ %.165414, %bb.z ] ; 4 uses
  %.165414 = phi ptr [ %.0653.lcssa, %.lr.ph72.lr.ph ], [ %.165215, %bb.z ] ; 3 uses
  %.065913 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.5, %bb.z ]
  %indvars.iv20012 = phi i64 [ %i.aem, %.lr.ph72.lr.ph ], [ %indvars.iv.next20120, %bb.z ] ; 5 uses
  %indvars.iv.next20120 = add nsw i64 %indvars.iv20012, -1 ; 4 uses
  %indvars21 = trunc i64 %indvars.iv.next20120 to i32 ; 6 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv20012
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !13
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.xa ; 2 uses
  store float %i.afd, ptr %i.afe, align 4, !tbaa !13
  tail call fastcc void @match_calc(ptr noundef %.165215, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 0)
  %i.aff = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.aff
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !13
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.xa
  store float %i.afh, ptr %i.afi, align 4, !tbaa !13
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.aed
  %.164263 = getelementptr inbounds i8, ptr %i.afj, i64 -4
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.aed
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 -8
  %i.afm = load float, ptr %i.afe, align 4, !tbaa !13
  %i.afn = load float, ptr %i.aec, align 4, !tbaa !13
  %i.afo = fadd float %i.afm, %i.afn
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aff
  %i.afr = icmp eq i32 %.062716, %indvars21
  %i.afs = icmp eq i64 %indvars.iv20012, %i.aek   ; 2 uses
  %or.cond719 = or i1 %i.afs, %i.afr
  %i.aft = icmp eq i32 %indvars21, %i.xf
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.aeb, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.164270 = phi ptr [ %.164263, %.lr.ph72 ], [ %.1642, %bb.ak ] ; 2 uses
  %.263769 = phi float [ %i.afo, %.lr.ph72 ], [ %.3638, %bb.ak ] ; 3 uses
  %.164068 = phi ptr [ %i.afl, %.lr.ph72 ], [ %i.ahd, %bb.ak ] ; 3 uses
  %.164467 = phi ptr [ %i.aef, %.lr.ph72 ], [ %i.ahb, %bb.ak ] ; 4 uses
  %.264766 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3648, %bb.ak ] ; 2 uses
  %.165065 = phi ptr [ %i.aeh, %.lr.ph72 ], [ %i.ahc, %bb.ak ] ; 3 uses
  %i.afu = load float, ptr %.164270, align 4, !tbaa !13 ; 4 uses
  %i.afv = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !13
  %i.afy = fadd float %.263769, %i.afx            ; 2 uses
  %i.afz = fcmp ogt float %i.afy, %i.afu          ; 2 uses
  %.2657 = select i1 %i.afz, float %i.afy, float %i.afu ; 2 uses
  %i.aga = trunc nuw i64 %i.afv to i32            ; 3 uses
  %.0621 = select i1 %i.afz, i32 %.264766, i32 %i.aga
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !13
  %i.agd = fadd float %i.afu, %i.agc              ; 2 uses
  %i.age = fcmp ult float %i.agd, %.263769        ; 2 uses
  %.3648 = select i1 %i.age, i32 %.264766, i32 %i.aga
  %.3638 = select i1 %i.age, float %.263769, float %i.agd ; 2 uses
  %i.agf = load float, ptr %.164467, align 4, !tbaa !13 ; 2 uses
  %i.agg = load float, ptr %i.afp, align 4, !tbaa !13
  %i.agh = fadd float %i.agf, %i.agg              ; 2 uses
  %i.agi = fcmp ogt float %i.agh, %.2657
  br i1 %i.agi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.agj = load i32, ptr %.165065, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3658 = phi float [ %i.agh, %bb.ab ], [ %.2657, %bb.aa ] ; 2 uses
  %.1624 = phi i32 [ %i.agj, %bb.ab ], [ %i.afb, %bb.aa ]
  %.1622 = phi i32 [ %i.aga, %bb.ab ], [ %.0621, %bb.aa ]
  %i.agk = load float, ptr %i.afq, align 4, !tbaa !13
  %i.agl = fadd float %i.afu, %i.agk              ; 2 uses
  %i.agm = fcmp ult float %i.agl, %i.agf
  br i1 %i.agm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %i.agl, ptr %.164467, align 4, !tbaa !13
  store i32 %i.afb, ptr %.165065, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond719, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv186
  store i32 %.1624, ptr %i.agn, align 4, !tbaa !7
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv186
  store i32 %.1622, ptr %i.ago, align 4, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.aft, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv186 ; 2 uses
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !13
  %i.agr = fadd float %.3658, %i.agq
  store float %i.agr, ptr %i.agp, align 4, !tbaa !13
  %i.ags = load float, ptr %.164467, align 4, !tbaa !13
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.afv ; 2 uses
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !13
  %i.agv = fadd float %i.ags, %i.agu
  store float %i.agv, ptr %i.agt, align 4, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.afs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv186 ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !13
  %i.agy = fadd float %.3638, %i.agx
  store float %i.agy, ptr %i.agw, align 4, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.agz = load float, ptr %.164068, align 4, !tbaa !13
  %i.aha = fadd float %.3658, %i.agz
  store float %i.aha, ptr %.164068, align 4, !tbaa !13
  %i.ahb = getelementptr inbounds i8, ptr %.164467, i64 -4
  %i.ahc = getelementptr inbounds i8, ptr %.165065, i64 -4
  %i.ahd = getelementptr inbounds i8, ptr %.164068, i64 -4
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, -1
  %.1642 = getelementptr inbounds i8, ptr %.164270, i64 -4 ; 2 uses
  %i.ahe = trunc nuw i64 %indvars.iv186 to i32
  %i.ahf = icmp sgt i32 %i.ahe, 0
  br i1 %i.ahf, label %bb.aa, label %._crit_edge73, !llvm.loop !124

._crit_edge73:                                    ; preds = %bb.ak
  %i.ahg = load float, ptr %.1642, align 4, !tbaa !13
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aff
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !13
  %i.ahj = fadd float %i.ahg, %i.ahi              ; 2 uses
  %i.ahk = fcmp olt float %.061918, %i.ahj        ; 2 uses
  %.1620 = select i1 %i.ahk, float %i.ahj, float %.061918 ; 2 uses
  %.1 = select i1 %i.ahk, i32 %i.afb, i32 %.019   ; 3 uses
  %i.ahl = icmp eq i32 %indvars21, %i.xf
  br i1 %i.ahl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge73
  %i.ahm = load float, ptr %i.qz, align 4, !tbaa !13
  %i.ahn = fadd float %.1620, %i.ahm
  store float %i.ahn, ptr %i.qz, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge73
  %i.aho = icmp eq i64 %indvars.iv20012, %i.aek
  br i1 %i.aho, label %.lr.ph80.preheader.new, label %bb.ar

.lr.ph80.preheader.new:                           ; preds = %bb.am
  %i.ahp = load float, ptr %i.aej, align 4, !tbaa !13
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80, %.lr.ph80.preheader.new
  %indvars.iv189 = phi i64 [ 2, %.lr.ph80.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph80 ] ; 4 uses
  %.063178 = phi float [ %i.ahp, %.lr.ph80.preheader.new ], [ %.1632.1, %.lr.ph80 ] ; 2 uses
  %.166077 = phi i32 [ 0, %.lr.ph80.preheader.new ], [ %.2661.1, %.lr.ph80 ]
  %niter = phi i64 [ 0, %.lr.ph80.preheader.new ], [ %niter.next.1, %.lr.ph80 ] ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv189
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !13 ; 2 uses
  %i.ahs = fcmp ogt float %i.ahr, %.063178        ; 2 uses
  %i.aht = trunc nuw nsw i64 %indvars.iv189 to i32
  %.2661 = select i1 %i.ahs, i32 %i.aht, i32 %.166077
  %.1632 = select i1 %i.ahs, float %i.ahr, float %.063178 ; 2 uses
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next190
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !13 ; 2 uses
  %i.ahw = fcmp ogt float %i.ahv, %.1632          ; 2 uses
  %i.ahx = trunc nuw nsw i64 %indvars.iv.next190 to i32
  %.2661.1 = select i1 %i.ahw, i32 %i.ahx, i32 %.2661 ; 3 uses
  %.1632.1 = select i1 %i.ahw, float %i.ahv, float %.1632 ; 4 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aeo
  br i1 %niter.ncmp.1, label %.lr.ph86.preheader.unr-lcssa, label %.lr.ph80, !llvm.loop !125

.lr.ph86.preheader.unr-lcssa:                     ; preds = %.lr.ph80
  br i1 %lcmp.mod403.not, label %.lr.ph86.preheader, label %.lr.ph80.epil.preheader

.lr.ph80.epil.preheader:                          ; preds = %.lr.ph86.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next190.1
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !13 ; 2 uses
  %i.aia = fcmp ogt float %i.ahz, %.1632.1        ; 2 uses
  %i.aib = trunc nuw nsw i64 %indvars.iv.next190.1 to i32
  %.2661.epil = select i1 %i.aia, i32 %i.aib, i32 %.2661.1
  %.1632.epil = select i1 %i.aia, float %i.ahz, float %.1632.1
  br label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.lr.ph86.preheader.unr-lcssa, %.lr.ph80.epil.preheader
  %.2661.lcssa = phi i32 [ %.2661.1, %.lr.ph86.preheader.unr-lcssa ], [ %.2661.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  %.1632.lcssa = phi float [ %.1632.1, %.lr.ph86.preheader.unr-lcssa ], [ %.1632.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  br i1 %i.aep, label %.lr.ph86.epil.preheader, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ] ; 4 uses
  %.263385 = phi float [ %.3634.1, %.lr.ph86 ], [ %.1632.lcssa, %.lr.ph86.preheader ] ; 2 uses
  %.366284 = phi i32 [ %.4663.1, %.lr.ph86 ], [ %.2661.lcssa, %.lr.ph86.preheader ]
  %niter412 = phi i64 [ %niter412.next.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ]
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv194
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !13 ; 2 uses
  %i.aie = fcmp ogt float %i.aid, %.263385        ; 2 uses
  %i.aif = trunc nuw nsw i64 %indvars.iv194 to i32
  %.4663 = select i1 %i.aie, i32 %i.aif, i32 %.366284
  %.3634 = select i1 %i.aie, float %i.aid, float %.263385 ; 2 uses
  %indvars.iv.next195 = or disjoint i64 %indvars.iv194, 1 ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.next195
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !13 ; 2 uses
  %i.aii = fcmp ogt float %i.aih, %.3634          ; 2 uses
  %i.aij = trunc nuw nsw i64 %indvars.iv.next195 to i32
  %.4663.1 = select i1 %i.aii, i32 %i.aij, i32 %.4663 ; 3 uses
  %.3634.1 = select i1 %i.aii, float %i.aih, float %.3634 ; 2 uses
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %niter412.next.1 = add i64 %niter412, 2         ; 2 uses
  %niter412.ncmp.1 = icmp eq i64 %niter412.next.1, %unroll_iter411
  br i1 %niter412.ncmp.1, label %._crit_edge87.unr-lcssa, label %.lr.ph86, !llvm.loop !126

._crit_edge87.unr-lcssa:                          ; preds = %.lr.ph86
  br i1 %lcmp.mod408.not, label %._crit_edge87, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv194.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next195.1, %._crit_edge87.unr-lcssa ] ; 2 uses
  %.263385.epil.init = phi float [ %.1632.lcssa, %.lr.ph86.preheader ], [ %.3634.1, %._crit_edge87.unr-lcssa ]
  %.366284.epil.init = phi i32 [ %.2661.lcssa, %.lr.ph86.preheader ], [ %.4663.1, %._crit_edge87.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod410)
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv194.epil.init
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !13
  %i.aim = fcmp ogt float %i.ail, %.263385.epil.init
  %i.ain = trunc nuw nsw i64 %indvars.iv194.epil.init to i32
  %.4663.epil = select i1 %i.aim, i32 %i.ain, i32 %.366284.epil.init
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.epil.preheader
  %.4663.lcssa = phi i32 [ %.4663.1, %._crit_edge87.unr-lcssa ], [ %.4663.epil, %.lr.ph86.epil.preheader ] ; 5 uses
  %i.aio = sext i32 %.4663.lcssa to i64           ; 4 uses
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.aio
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !13 ; 3 uses
  %i.air = add nsw i32 %.4663.lcssa, -1           ; 4 uses
  %i.ais = icmp sgt i32 %.4663.lcssa, 0
  br i1 %i.ais, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %._crit_edge87
  %i.ait = zext nneg i32 %i.air to i64
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.ait
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !13 ; 2 uses
  %i.aiw = fcmp ogt float %i.aiv, %i.aiq
  br i1 %i.aiw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.aio
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge87
  %.4 = phi float [ %i.aiv, %bb.ao ], [ %i.aiq, %bb.an ], [ %i.aiq, %._crit_edge87 ]
  %.1626 = phi i32 [ %i.aiy, %bb.ao ], [ %i.air, %bb.an ], [ %i.air, %._crit_edge87 ]
  %i.aiz = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.aio
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !13
  %i.ajb = fcmp ogt float %i.aja, %.4
  br i1 %i.ajb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.aio
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.am
  %.5 = phi i32 [ %.4663.lcssa, %bb.aq ], [ %.4663.lcssa, %bb.ap ], [ %.065913, %bb.am ] ; 4 uses
  %.2629 = phi i32 [ %i.ajd, %bb.aq ], [ %i.aei, %bb.ap ], [ %.062716, %bb.am ] ; 3 uses
  %.2 = phi i32 [ %i.air, %bb.aq ], [ %.1626, %bb.ap ], [ %.062517, %bb.am ] ; 4 uses
  %i.aje = icmp eq i32 %.2629, %indvars21
  br i1 %i.aje, label %bb.as, label %bb.z, !llvm.loop !123

bb.as:                                            ; preds = %bb.ar
  %i.ajf = icmp eq i32 %.5, 0
  br i1 %i.ajf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ajg = add nsw i32 %.1, -1
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %.not714.not = icmp sgt i32 %.5, %i.u
  br i1 %.not714.not, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ajh = sext i32 %.2 to i64                    ; 2 uses
  %i.aji = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !7
  %i.ajk = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.ajh
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.preheader8, %bb.au, %bb.at, %bb.av
  %.0664 = phi i32 [ %.1, %bb.at ], [ %i.xf, %bb.au ], [ %i.ajj, %bb.av ], [ %i.xf, %.preheader8 ], [ %i.xf, %bb.z ] ; 4 uses
  %.6 = phi i32 [ 1, %bb.at ], [ %i.v, %bb.au ], [ %i.ajl, %bb.av ], [ 0, %.preheader8 ], [ %.5, %bb.z ] ; 4 uses
  %.3630 = phi i32 [ %i.ajg, %bb.at ], [ %i.aei, %bb.au ], [ %indvars21, %bb.av ], [ 0, %.preheader8 ], [ %.2629, %bb.z ] ; 5 uses
  %.3 = phi i32 [ 0, %bb.at ], [ %i.u, %bb.au ], [ %.2, %bb.av ], [ 0, %.preheader8 ], [ %.2, %bb.z ] ; 4 uses
  tail call void @FreeFloatVec(ptr noundef %i.qv) #13
  tail call void @FreeFloatVec(ptr noundef %i.qw) #13
  tail call void @FreeFloatVec(ptr noundef %i.rh) #13
  tail call void @FreeFloatVec(ptr noundef nonnull %i.ri) #13
  tail call void @FreeFloatVec(ptr noundef %i.qx) #13
  tail call void @FreeFloatVec(ptr noundef %i.qz) #13
  tail call void @FreeFloatVec(ptr noundef %i.qy) #13
  tail call void @FreeIntVec(ptr noundef %i.ra) #13
  tail call void @FreeIntVec(ptr noundef %i.rb) #13
  tail call void @FreeIntVec(ptr noundef %i.rc) #13
  tail call void @FreeIntVec(ptr noundef %i.rd) #13
  tail call void @FreeIntVec(ptr noundef %i.re) #13
  tail call void @FreeIntVec(ptr noundef %i.rf) #13
  tail call void @FreeFloatVec(ptr noundef %i.rj) #13
  tail call void @FreeIntVec(ptr noundef %i.rk) #13
  tail call void @FreeFloatMtx(ptr noundef %i.ro) #13
  tail call void @FreeIntMtx(ptr noundef %i.rp) #13
  %i.ajm = add nsw i32 %.3630, %6
  %i.ajn = add nsw i32 %.3, %8
  %i.ajo = tail call fastcc float @MSalignmm_rec(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %i.ajm, i32 noundef %8, i32 noundef %i.ajn, ptr noundef %i.am, ptr noundef %i.an, i32 noundef %i.p, ptr noundef nonnull %13) ; 2 uses
  %i.ajp = load ptr, ptr %10, align 8, !tbaa !10  ; 2 uses
  %i.ajq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajp) #14
  %i.ajr = trunc i64 %i.ajq to i32                ; 2 uses
  %i.ajs = xor i32 %.3, -1
  %i.ajt = add i32 %.6, %i.ajs                    ; 4 uses
  %i.aju = icmp sgt i32 %i.ajt, 0
  br i1 %i.aju, label %.preheader6.preheader, label %bb.ay

.preheader6.preheader:                            ; preds = %.loopexit
  %i.ajv = zext nneg i32 %i.ajt to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rn, i8 45, i64 %i.ajv, i1 false), !tbaa !135
  %i.ajw = add i32 %.6, -2
  %i.ajx = sub i32 %i.ajw, %.3
  %i.ajy = zext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 1
  store i8 0, ptr %i.aka, align 1, !tbaa !135
  br i1 %i.ap, label %.lr.ph92, label %.preheader5

.lr.ph92:                                         ; preds = %.preheader6.preheader
  %i.akb = add nsw i32 %i.ajt, %i.ajr
  %i.akc = sext i32 %i.akb to i64
  %wide.trip.count213 = zext nneg i32 %0 to i64
  br label %bb.aw

.preheader5:                                      ; preds = %bb.aw, %.preheader6.preheader
  %i.akd = sext i32 %.3 to i64                    ; 2 uses
  br i1 %i.bc, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader5
  %i.ake = add nsw i32 %i.ajt, %i.ajr
  %i.akf = sext i32 %i.ake to i64
  %wide.trip.count219 = zext nneg i32 %1 to i64
  br label %bb.ax

bb.aw:                                            ; preds = %.lr.ph92, %bb.aw
  %indvars.iv209 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next210, %bb.aw ] ; 2 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv209 ; 2 uses
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !10
  %i.aki = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.akh, ptr noundef nonnull dereferenceable(1) %i.rn) #13 ; 0 uses
  %i.akj = load ptr, ptr %i.akg, align 8, !tbaa !10
  %i.akk = getelementptr inbounds i8, ptr %i.akj, i64 %i.akc
  store i8 0, ptr %i.akk, align 1, !tbaa !135
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count213
  br i1 %exitcond214.not, label %.preheader5, label %bb.aw, !llvm.loop !127

bb.ax:                                            ; preds = %.lr.ph94, %bb.ax
  %indvars.iv215 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next216, %bb.ax ] ; 3 uses
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv215 ; 2 uses
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !10
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv215
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !10
  %i.akp = getelementptr inbounds i8, ptr %i.ako, i64 %i.k
  %i.akq = getelementptr inbounds i8, ptr %i.akp, i64 %i.akd
end_hunk_1
