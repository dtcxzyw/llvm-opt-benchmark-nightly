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
  %i.k = sext i32 %8 to i64                       ; 11 uses
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
  %i.u = sub nsw i32 %9, %8                       ; 21 uses
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
  %i.xa = zext nneg i32 %i.u to i64               ; 10 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.xa
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !13
  store float %i.xc, ptr %i.ri, align 4, !tbaa !13
  %i.xd = uitofp nneg i32 %i.t to double
  %i.xe = fmul nnan double %i.xd, 5.000000e-01
  %i.xf = fptosi double %i.xe to i32              ; 9 uses
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
  %i.aaa = zext nneg i32 %i.s to i64
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aaa ; 5 uses
  %wide.trip.count174 = zext nneg i32 %i.s to i64 ; 7 uses
  %min.iters.check125 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph58
  %i.aac = shl nuw nsw i64 %wide.trip.count174, 2
  %scevgep114 = getelementptr i8, ptr %i.rh, i64 %i.aac ; 2 uses
  %i.aad = add nsw i64 %i.d, %wide.trip.count174
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
  %n.vec127 = and i64 %wide.trip.count174, 2147483640 ; 3 uses
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
  %cmp.n138 = icmp eq i64 %n.vec127, %wide.trip.count174
  br i1 %cmp.n138, label %.lr.ph60, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %vector.memcheck113, %.lr.ph58, %middle.block137
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph58 ], [ %n.vec127, %middle.block137 ] ; 4 uses
  %xtraiter396 = and i64 %wide.trip.count174, 1
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
  %i.aay = add nsw i64 %wide.trip.count174, -1
  %i.aaz = icmp eq i64 %indvars.iv172.ph, %i.aay
  br i1 %i.aaz, label %.lr.ph60, label %scalar.ph124

.lr.ph60:                                         ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124, %middle.block137
  %i.aba = getelementptr [4 x i8], ptr %i.o, i64 %i.xa ; 6 uses
  %wide.trip.count181 = zext nneg i32 %i.u to i64 ; 9 uses
  %min.iters.check153 = icmp ult i32 %i.u, 12
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph60
  %i.abb = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %scevgep141 = getelementptr i8, ptr %.0653.lcssa, i64 %i.abb ; 2 uses
  %i.abc = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.abd = add nsw i64 %i.abc, %i.abb
  %14 = add nsw i64 %i.abd, 4                     ; 2 uses
  %scevgep143.a = getelementptr i8, ptr %i.n, i64 %14
  %i.abe = getelementptr i8, ptr %i.j, i64 %i.abc
  %i.abf = getelementptr i8, ptr %i.abe, i64 4
  %scevgep144 = getelementptr i8, ptr %i.j, i64 %14
  %bound0145 = icmp ult ptr %.0653.lcssa, %scevgep143.a
  %bound1146 = icmp ult ptr %i.aba, %scevgep141
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0148 = icmp ult ptr %.0653.lcssa, %scevgep144
  %bound1149 = icmp ult ptr %i.abf, %scevgep141
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %found.conflict147, %found.conflict150
  br i1 %conflict.rdx151, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck140
  %n.vec155 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.abg = load float, ptr %i.aba, align 4, !tbaa !13, !alias.scope !166
  %broadcast.splatinsert160 = insertelement <4 x float> poison, float %i.abg, i64 0
  %broadcast.splat161 = shufflevector <4 x float> %broadcast.splatinsert160, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body156 ] ; 3 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index157 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 4
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 20
  %wide.load158 = load <4 x float>, ptr %i.abi, align 4, !tbaa !13, !alias.scope !167
  %wide.load159 = load <4 x float>, ptr %i.abj, align 4, !tbaa !13, !alias.scope !167
  %i.abk = fadd <4 x float> %broadcast.splat161, %wide.load158
  %i.abl = fadd <4 x float> %broadcast.splat161, %wide.load159
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %index157 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.abm, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %wide.load163 = load <4 x float>, ptr %i.abn, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %i.abo = fadd <4 x float> %wide.load162, %i.abk
  %i.abp = fadd <4 x float> %wide.load163, %i.abl
  store <4 x float> %i.abo, ptr %i.abm, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  store <4 x float> %i.abp, ptr %i.abn, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.abq = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.abq, label %middle.block165, label %vector.body156, !llvm.loop !114

middle.block165:                                  ; preds = %vector.body156
  %cmp.n166 = icmp eq i64 %n.vec155, %wide.trip.count181
  br i1 %cmp.n166, label %.lr.ph62, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck140, %.lr.ph60, %middle.block165
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck140 ], [ 0, %.lr.ph60 ], [ %n.vec155, %middle.block165 ] ; 4 uses
  %xtraiter399 = and i64 %wide.trip.count181, 1
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader
  %i.abr = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !13
  %i.abu = fadd float %i.abr, %i.abt
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !13
  %i.abx = fadd float %i.abw, %i.abu
  store float %i.abx, ptr %i.abv, align 4, !tbaa !13
  br label %scalar.ph152.prol.loopexit

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph152.preheader ], [ %indvars.iv.next178.prol, %scalar.ph152.prol ]
  %i.aby = add nsw i64 %wide.trip.count181, -1
  %i.abz = icmp eq i64 %indvars.iv177.ph, %i.aby
  br i1 %i.abz, label %.lr.ph62, label %scalar.ph152

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph124 ], [ %indvars.iv172.unr, %scalar.ph124.prol.loopexit ] ; 3 uses
  %i.aca = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !13
  %i.acd = fadd float %i.aca, %i.acc
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv172 ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !13
  %i.acg = fadd float %i.acf, %i.acd
  store float %i.acg, ptr %i.ace, align 4, !tbaa !13
  %i.ach = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !13
  %i.ack = fadd float %i.ach, %i.acj
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next173 ; 2 uses
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !13
  %i.acn = fadd float %i.acm, %i.ack
  store float %i.acn, ptr %i.acl, align 4, !tbaa !13
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count174
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph124, !llvm.loop !115

.lr.ph62:                                         ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block165
  %i.aco = getelementptr [4 x i8], ptr %i.o, i64 %i.xa
  %i.acp = getelementptr i8, ptr %i.aco, i64 -4   ; 3 uses
  %15 = xor i32 %8, -1
  %i.acq = add i32 %9, %15                        ; 2 uses
  %i.acr = zext i32 %i.acq to i64
  %i.acs = add nuw nsw i64 %i.acr, 1              ; 2 uses
  %min.iters.check181 = icmp ult i32 %i.acq, 19
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph62
  %i.act = shl nuw nsw i64 %wide.trip.count181, 2 ; 4 uses
  %i.acu = add nsw i64 %i.act, -4
  %16 = xor i32 %8, -1
  %i.acv = add i32 %9, %16
  %i.acw = zext i32 %i.acv to i64
  %i.acx = shl nuw nsw i64 %i.acw, 2              ; 2 uses
  %i.acy = sub nsw i64 %i.acu, %i.acx
  %scevgep169 = getelementptr i8, ptr %i.rj, i64 %i.acy ; 2 uses
  %scevgep170 = getelementptr i8, ptr %i.rj, i64 %i.act ; 2 uses
  %i.acz = sub nsw i64 %i.act, %i.acx
  %scevgep171 = getelementptr i8, ptr %.0653.lcssa, i64 %i.acz
  %i.ada = getelementptr i8, ptr %.0653.lcssa, i64 %i.act
  %scevgep172 = getelementptr i8, ptr %i.ada, i64 4
  %bound0173 = icmp ult ptr %scevgep169, %scevgep172
  %bound1174 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0176 = icmp ult ptr %scevgep169, %i.aba
  %bound1177 = icmp ult ptr %i.acp, %scevgep170
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %found.conflict175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck168
  %n.vec183 = and i64 %i.acs, 8589934588          ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adb = sub nsw i64 %i.xa, %n.vec183
  %i.adc = load float, ptr %i.acp, align 4, !tbaa !13, !alias.scope !170
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
  %cmp.n195 = icmp eq i64 %i.acs, %n.vec183
  br i1 %cmp.n195, label %.preheader8, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck168, %.lr.ph62, %middle.block194
  %indvars.iv183.ph = phi i64 [ %i.xa, %vector.memcheck168 ], [ %i.xa, %.lr.ph62 ], [ %i.adb, %middle.block194 ]
  br label %scalar.ph180

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph152 ], [ %indvars.iv177.unr, %scalar.ph152.prol.loopexit ] ; 3 uses
  %i.adm = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !13
  %i.adp = fadd float %i.adm, %i.ado
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !13
  %i.ads = fadd float %i.adr, %i.adp
  store float %i.ads, ptr %i.adq, align 4, !tbaa !13
  %i.adt = load float, ptr %i.aba, align 4, !tbaa !13
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
  %wide.trip.count197 = zext nneg i32 %smax197 to i64 ; 2 uses
  %wide.trip.count198 = zext nneg i32 %i.s to i64
  %xtraiter402 = and i64 %wide.trip.count181, 1
  %17 = and i64 %wide.trip.count181, 2147483646
  %18 = add nsw i64 %17, -4
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod406 = trunc i32 %i.u to i1
  %xtraiter407 = and i64 %wide.trip.count197, 1
  %19 = icmp eq i32 %smax197, 1
  %unroll_iter411 = and i64 %wide.trip.count197, 2147483646
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  %lcmp.mod410 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph180 ], [ %indvars.iv183.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv183
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !13
  %i.aen = load float, ptr %i.acp, align 4, !tbaa !13
  %i.aeo = fadd float %i.aem, %i.aen
  %i.aep = getelementptr [4 x i8], ptr %i.rj, i64 %indvars.iv183
  %i.aeq = getelementptr i8, ptr %i.aep, i64 -4
  store float %i.aeo, ptr %i.aeq, align 4, !tbaa !13
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv183
  store i32 %i.s, ptr %i.aer, align 4, !tbaa !7
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.aes = trunc nuw i64 %indvars.iv183 to i32
  %i.aet = icmp sgt i32 %i.aes, 1
  br i1 %i.aet, label %scalar.ph180, label %.preheader8, !llvm.loop !122

bb.z:                                             ; preds = %bb.ar
  %i.aeu = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.aev = icmp sgt i32 %i.aeu, 0
  br i1 %i.aev, label %.lr.ph72, label %.loopexit, !llvm.loop !123

.lr.ph72:                                         ; preds = %.preheader8, %bb.z
  %i.aew = phi i32 [ %i.s, %.preheader8 ], [ %i.aeu, %bb.z ] ; 3 uses
  %.019 = phi i32 [ %i.s, %.preheader8 ], [ %.1, %bb.z ]
  %.061918 = phi float [ -1.000000e+07, %.preheader8 ], [ %.1620, %bb.z ] ; 2 uses
  %.062517 = phi i32 [ 0, %.preheader8 ], [ %.2, %bb.z ]
  %.062716 = phi i32 [ 0, %.preheader8 ], [ %.2629, %bb.z ] ; 2 uses
  %.165215 = phi ptr [ %.0651.lcssa, %.preheader8 ], [ %.165414, %bb.z ] ; 4 uses
  %.165414 = phi ptr [ %.0653.lcssa, %.preheader8 ], [ %.165215, %bb.z ] ; 3 uses
  %.065913 = phi i32 [ 0, %.preheader8 ], [ %.5, %bb.z ]
  %indvars.iv20012 = phi i64 [ %wide.trip.count198, %.preheader8 ], [ %indvars.iv.next20120, %bb.z ] ; 5 uses
  %indvars.iv.next20120 = add nsw i64 %indvars.iv20012, -1 ; 4 uses
  %indvars21 = trunc i64 %indvars.iv.next20120 to i32 ; 6 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv20012
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !13
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.xa ; 2 uses
  store float %i.aey, ptr %i.aez, align 4, !tbaa !13
  tail call fastcc void @match_calc(ptr noundef %.165215, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 0)
  %i.afa = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.afa
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !13
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.xa
  store float %i.afc, ptr %i.afd, align 4, !tbaa !13
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.aed
  %.164263 = getelementptr inbounds i8, ptr %i.afe, i64 -4
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.aed
  %i.afg = getelementptr inbounds i8, ptr %i.aff, i64 -8
  %i.afh = load float, ptr %i.aez, align 4, !tbaa !13
  %i.afi = load float, ptr %i.aec, align 4, !tbaa !13
  %i.afj = fadd float %i.afh, %i.afi
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afa
  %i.afm = icmp eq i32 %.062716, %indvars21
  %i.afn = icmp eq i64 %indvars.iv20012, %i.aek   ; 2 uses
  %or.cond719 = or i1 %i.afn, %i.afm
  %i.afo = icmp eq i32 %indvars21, %i.xf
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.aeb, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.164270 = phi ptr [ %.164263, %.lr.ph72 ], [ %.1642, %bb.ak ] ; 2 uses
  %.263769 = phi float [ %i.afj, %.lr.ph72 ], [ %.3638, %bb.ak ] ; 3 uses
  %.164068 = phi ptr [ %i.afg, %.lr.ph72 ], [ %i.agy, %bb.ak ] ; 3 uses
  %.164467 = phi ptr [ %i.aef, %.lr.ph72 ], [ %i.agw, %bb.ak ] ; 4 uses
  %.264766 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3648, %bb.ak ] ; 2 uses
  %.165065 = phi ptr [ %i.aeh, %.lr.ph72 ], [ %i.agx, %bb.ak ] ; 3 uses
  %i.afp = load float, ptr %.164270, align 4, !tbaa !13 ; 4 uses
  %i.afq = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.afq
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !13
  %i.aft = fadd float %.263769, %i.afs            ; 2 uses
  %i.afu = fcmp ogt float %i.aft, %i.afp          ; 2 uses
  %.2657 = select i1 %i.afu, float %i.aft, float %i.afp ; 2 uses
  %i.afv = trunc nuw i64 %i.afq to i32            ; 3 uses
  %.0621 = select i1 %i.afu, i32 %.264766, i32 %i.afv
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !13
  %i.afy = fadd float %i.afp, %i.afx              ; 2 uses
  %i.afz = fcmp ult float %i.afy, %.263769        ; 2 uses
  %.3648 = select i1 %i.afz, i32 %.264766, i32 %i.afv
  %.3638 = select i1 %i.afz, float %.263769, float %i.afy ; 2 uses
  %i.aga = load float, ptr %.164467, align 4, !tbaa !13 ; 2 uses
  %i.agb = load float, ptr %i.afk, align 4, !tbaa !13
  %i.agc = fadd float %i.aga, %i.agb              ; 2 uses
  %i.agd = fcmp ogt float %i.agc, %.2657
  br i1 %i.agd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.age = load i32, ptr %.165065, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3658 = phi float [ %i.agc, %bb.ab ], [ %.2657, %bb.aa ] ; 2 uses
  %.1624 = phi i32 [ %i.age, %bb.ab ], [ %i.aew, %bb.aa ]
  %.1622 = phi i32 [ %i.afv, %bb.ab ], [ %.0621, %bb.aa ]
  %i.agf = load float, ptr %i.afl, align 4, !tbaa !13
  %i.agg = fadd float %i.afp, %i.agf              ; 2 uses
  %i.agh = fcmp ult float %i.agg, %i.aga
  br i1 %i.agh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %i.agg, ptr %.164467, align 4, !tbaa !13
  store i32 %i.aew, ptr %.165065, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond719, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv186
  store i32 %.1624, ptr %i.agi, align 4, !tbaa !7
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv186
  store i32 %.1622, ptr %i.agj, align 4, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.afo, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv186 ; 2 uses
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !13
  %i.agm = fadd float %.3658, %i.agl
  store float %i.agm, ptr %i.agk, align 4, !tbaa !13
  %i.agn = load float, ptr %.164467, align 4, !tbaa !13
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.afq ; 2 uses
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !13
  %i.agq = fadd float %i.agn, %i.agp
  store float %i.agq, ptr %i.ago, align 4, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.afn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv186 ; 2 uses
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !13
  %i.agt = fadd float %.3638, %i.ags
  store float %i.agt, ptr %i.agr, align 4, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.agu = load float, ptr %.164068, align 4, !tbaa !13
  %i.agv = fadd float %.3658, %i.agu
  store float %i.agv, ptr %.164068, align 4, !tbaa !13
  %i.agw = getelementptr inbounds i8, ptr %.164467, i64 -4
  %i.agx = getelementptr inbounds i8, ptr %.165065, i64 -4
  %i.agy = getelementptr inbounds i8, ptr %.164068, i64 -4
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, -1
  %.1642 = getelementptr inbounds i8, ptr %.164270, i64 -4 ; 2 uses
  %i.agz = trunc nuw i64 %indvars.iv186 to i32
  %i.aha = icmp sgt i32 %i.agz, 0
  br i1 %i.aha, label %bb.aa, label %._crit_edge73, !llvm.loop !124

._crit_edge73:                                    ; preds = %bb.ak
  %i.ahb = load float, ptr %.1642, align 4, !tbaa !13
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afa
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !13
  %i.ahe = fadd float %i.ahb, %i.ahd              ; 2 uses
  %i.ahf = fcmp olt float %.061918, %i.ahe        ; 2 uses
  %.1620 = select i1 %i.ahf, float %i.ahe, float %.061918 ; 2 uses
  %.1 = select i1 %i.ahf, i32 %i.aew, i32 %.019   ; 3 uses
  %i.ahg = icmp eq i32 %indvars21, %i.xf
  br i1 %i.ahg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge73
  %i.ahh = load float, ptr %i.qz, align 4, !tbaa !13
  %i.ahi = fadd float %.1620, %i.ahh
  store float %i.ahi, ptr %i.qz, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge73
  %i.ahj = icmp eq i64 %indvars.iv20012, %i.aek
  br i1 %i.ahj, label %.lr.ph80.preheader.new, label %bb.ar

.lr.ph80.preheader.new:                           ; preds = %bb.am
  %i.ahk = load float, ptr %i.aej, align 4, !tbaa !13
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80, %.lr.ph80.preheader.new
  %indvars.iv189 = phi i64 [ 2, %.lr.ph80.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph80 ] ; 4 uses
  %.063178 = phi float [ %i.ahk, %.lr.ph80.preheader.new ], [ %.1632.1, %.lr.ph80 ] ; 2 uses
  %.166077 = phi i32 [ 0, %.lr.ph80.preheader.new ], [ %.2661.1, %.lr.ph80 ]
  %niter = phi i64 [ 0, %.lr.ph80.preheader.new ], [ %niter.next.1, %.lr.ph80 ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv189
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !13 ; 2 uses
  %i.ahn = fcmp ogt float %i.ahm, %.063178        ; 2 uses
  %i.aho = trunc nuw nsw i64 %indvars.iv189 to i32
  %.2661 = select i1 %i.ahn, i32 %i.aho, i32 %.166077
  %.1632 = select i1 %i.ahn, float %i.ahm, float %.063178 ; 2 uses
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next190
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !13 ; 2 uses
  %i.ahr = fcmp ogt float %i.ahq, %.1632          ; 2 uses
  %i.ahs = trunc nuw nsw i64 %indvars.iv.next190 to i32
  %.2661.1 = select i1 %i.ahr, i32 %i.ahs, i32 %.2661 ; 3 uses
  %.1632.1 = select i1 %i.ahr, float %i.ahq, float %.1632 ; 4 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %18
  br i1 %niter.ncmp.1, label %.lr.ph86.preheader.unr-lcssa, label %.lr.ph80, !llvm.loop !125

.lr.ph86.preheader.unr-lcssa:                     ; preds = %.lr.ph80
  br i1 %lcmp.mod403.not, label %.lr.ph86.preheader, label %.lr.ph80.epil.preheader

.lr.ph80.epil.preheader:                          ; preds = %.lr.ph86.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next190.1
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !13 ; 2 uses
  %i.ahv = fcmp ogt float %i.ahu, %.1632.1        ; 2 uses
  %i.ahw = trunc nuw nsw i64 %indvars.iv.next190.1 to i32
  %.2661.epil = select i1 %i.ahv, i32 %i.ahw, i32 %.2661.1
  %.1632.epil = select i1 %i.ahv, float %i.ahu, float %.1632.1
  br label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.lr.ph86.preheader.unr-lcssa, %.lr.ph80.epil.preheader
  %.2661.lcssa = phi i32 [ %.2661.1, %.lr.ph86.preheader.unr-lcssa ], [ %.2661.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  %.1632.lcssa = phi float [ %.1632.1, %.lr.ph86.preheader.unr-lcssa ], [ %.1632.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  br i1 %19, label %.lr.ph86.epil.preheader, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ] ; 4 uses
  %.263385 = phi float [ %.3634.1, %.lr.ph86 ], [ %.1632.lcssa, %.lr.ph86.preheader ] ; 2 uses
  %.366284 = phi i32 [ %.4663.1, %.lr.ph86 ], [ %.2661.lcssa, %.lr.ph86.preheader ]
  %niter412 = phi i64 [ %niter412.next.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ]
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv194
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !13 ; 2 uses
  %i.ahz = fcmp ogt float %i.ahy, %.263385        ; 2 uses
  %i.aia = trunc nuw nsw i64 %indvars.iv194 to i32
  %.4663 = select i1 %i.ahz, i32 %i.aia, i32 %.366284
  %.3634 = select i1 %i.ahz, float %i.ahy, float %.263385 ; 2 uses
  %indvars.iv.next195 = or disjoint i64 %indvars.iv194, 1 ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.next195
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !13 ; 2 uses
  %i.aid = fcmp ogt float %i.aic, %.3634          ; 2 uses
  %i.aie = trunc nuw nsw i64 %indvars.iv.next195 to i32
  %.4663.1 = select i1 %i.aid, i32 %i.aie, i32 %.4663 ; 3 uses
  %.3634.1 = select i1 %i.aid, float %i.aic, float %.3634 ; 2 uses
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
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv194.epil.init
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !13
  %i.aih = fcmp ogt float %i.aig, %.263385.epil.init
  %i.aii = trunc nuw nsw i64 %indvars.iv194.epil.init to i32
  %.4663.epil = select i1 %i.aih, i32 %i.aii, i32 %.366284.epil.init
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.epil.preheader
  %.4663.lcssa = phi i32 [ %.4663.1, %._crit_edge87.unr-lcssa ], [ %.4663.epil, %.lr.ph86.epil.preheader ] ; 5 uses
  %i.aij = sext i32 %.4663.lcssa to i64           ; 4 uses
  %i.aik = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.aij
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !13 ; 3 uses
  %i.aim = add nsw i32 %.4663.lcssa, -1           ; 4 uses
  %i.ain = icmp sgt i32 %.4663.lcssa, 0
  br i1 %i.ain, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %._crit_edge87
  %i.aio = zext nneg i32 %i.aim to i64
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.aio
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !13 ; 2 uses
  %i.air = fcmp ogt float %i.aiq, %i.ail
  br i1 %i.air, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.aij
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge87
  %.4 = phi float [ %i.aiq, %bb.ao ], [ %i.ail, %bb.an ], [ %i.ail, %._crit_edge87 ]
  %.1626 = phi i32 [ %i.ait, %bb.ao ], [ %i.aim, %bb.an ], [ %i.aim, %._crit_edge87 ]
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.aij
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !13
  %i.aiw = fcmp ogt float %i.aiv, %.4
  br i1 %i.aiw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.aij
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.am
  %.5 = phi i32 [ %.4663.lcssa, %bb.aq ], [ %.4663.lcssa, %bb.ap ], [ %.065913, %bb.am ] ; 4 uses
  %.2629 = phi i32 [ %i.aiy, %bb.aq ], [ %i.aei, %bb.ap ], [ %.062716, %bb.am ] ; 3 uses
  %.2 = phi i32 [ %i.aim, %bb.aq ], [ %.1626, %bb.ap ], [ %.062517, %bb.am ] ; 4 uses
  %i.aiz = icmp eq i32 %.2629, %indvars21
  br i1 %i.aiz, label %bb.as, label %bb.z, !llvm.loop !123

bb.as:                                            ; preds = %bb.ar
  %i.aja = icmp eq i32 %.5, 0
  br i1 %i.aja, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ajb = add nsw i32 %.1, -1
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %.not714.not = icmp sgt i32 %.5, %i.u
  br i1 %.not714.not, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ajc = sext i32 %.2 to i64                    ; 2 uses
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !7
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.ajc
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.au, %bb.at, %bb.av
  %.0664 = phi i32 [ %.1, %bb.at ], [ %i.xf, %bb.au ], [ %i.aje, %bb.av ], [ %i.xf, %bb.z ] ; 4 uses
  %.6 = phi i32 [ 1, %bb.at ], [ %i.v, %bb.au ], [ %i.ajg, %bb.av ], [ %.5, %bb.z ] ; 4 uses
  %.3630 = phi i32 [ %i.ajb, %bb.at ], [ %i.aei, %bb.au ], [ %indvars21, %bb.av ], [ %.2629, %bb.z ] ; 5 uses
  %.3 = phi i32 [ 0, %bb.at ], [ %i.u, %bb.au ], [ %.2, %bb.av ], [ %.2, %bb.z ] ; 4 uses
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
  %i.ajh = add nsw i32 %.3630, %6
  %i.aji = add nsw i32 %.3, %8
  %i.ajj = tail call fastcc float @MSalignmm_rec(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %i.ajh, i32 noundef %8, i32 noundef %i.aji, ptr noundef %i.am, ptr noundef %i.an, i32 noundef %i.p, ptr noundef nonnull %13) ; 2 uses
  %i.ajk = load ptr, ptr %10, align 8, !tbaa !10  ; 2 uses
  %i.ajl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajk) #14
  %i.ajm = trunc i64 %i.ajl to i32                ; 2 uses
  %i.ajn = xor i32 %.3, -1
  %i.ajo = add i32 %.6, %i.ajn                    ; 4 uses
  %i.ajp = icmp sgt i32 %i.ajo, 0
  br i1 %i.ajp, label %.preheader6.preheader, label %bb.ay

.preheader6.preheader:                            ; preds = %.loopexit
  %i.ajq = zext nneg i32 %i.ajo to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rn, i8 45, i64 %i.ajq, i1 false), !tbaa !135
  %i.ajr = add i32 %.6, -2
  %i.ajs = sub i32 %i.ajr, %.3
  %i.ajt = zext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 1
  store i8 0, ptr %i.ajv, align 1, !tbaa !135
  br i1 %i.ap, label %.lr.ph92, label %.preheader5

.lr.ph92:                                         ; preds = %.preheader6.preheader
  %i.ajw = add nsw i32 %i.ajo, %i.ajm
  %i.ajx = sext i32 %i.ajw to i64
  %wide.trip.count213 = zext nneg i32 %0 to i64
  br label %bb.aw

.preheader5:                                      ; preds = %bb.aw, %.preheader6.preheader
  %i.ajy = sext i32 %.3 to i64                    ; 2 uses
  br i1 %i.bc, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader5
  %i.ajz = add nsw i32 %i.ajo, %i.ajm
  %i.aka = sext i32 %i.ajz to i64
  %wide.trip.count219 = zext nneg i32 %1 to i64
  br label %bb.ax

bb.aw:                                            ; preds = %.lr.ph92, %bb.aw
  %indvars.iv209 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next210, %bb.aw ] ; 2 uses
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv209 ; 2 uses
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !10
  %i.akd = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.akc, ptr noundef nonnull dereferenceable(1) %i.rn) #13 ; 0 uses
  %i.ake = load ptr, ptr %i.akb, align 8, !tbaa !10
  %i.akf = getelementptr inbounds i8, ptr %i.ake, i64 %i.ajx
  store i8 0, ptr %i.akf, align 1, !tbaa !135
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count213
  br i1 %exitcond214.not, label %.preheader5, label %bb.aw, !llvm.loop !127

bb.ax:                                            ; preds = %.lr.ph94, %bb.ax
  %indvars.iv215 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next216, %bb.ax ] ; 3 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv215 ; 2 uses
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !10
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv215
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !10
  %i.akk = getelementptr inbounds i8, ptr %i.akj, i64 %i.k
  %i.akl = getelementptr inbounds i8, ptr %i.akk, i64 %i.ajy
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 1
  %i.akn = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.akh, ptr noundef nonnull %i.akm, i64 noundef %i.ajq) #13 ; 0 uses
  %i.ako = load ptr, ptr %i.akg, align 8, !tbaa !10
  %i.akp = getelementptr inbounds i8, ptr %i.ako, i64 %i.aka
  store i8 0, ptr %i.akp, align 1, !tbaa !135
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge95, label %bb.ax, !llvm.loop !128

._crit_edge95:                                    ; preds = %bb.ax, %.preheader5
  %i.akq = getelementptr [4 x i8], ptr %i.l, i64 %i.ajy
  %i.akr = getelementptr i8, ptr %i.akq, i64 4
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !13
  %i.akt = sext i32 %.6 to i64
  %i.aku = getelementptr [4 x i8], ptr %i.o, i64 %i.akt
  %i.akv = getelementptr i8, ptr %i.aku, i64 -4
  %i.akw = load float, ptr %i.akv, align 4, !tbaa !13
  %i.akx = fadd float %i.aks, %i.akw
  %i.aky = fadd float %i.ajj, %i.akx
  %.pre268 = load ptr, ptr %10, align 8, !tbaa !10
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge95, %.loopexit
  %i.akz = phi ptr [ %.pre268, %._crit_edge95 ], [ %i.ajk, %.loopexit ]
  %.0683 = phi float [ %i.aky, %._crit_edge95 ], [ %i.ajj, %.loopexit ] ; 2 uses
  %i.ala = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.akz) #14
  %i.alb = trunc i64 %i.ala to i32                ; 2 uses
  %i.alc = xor i32 %.3630, -1
  %i.ald = add i32 %.0664, %i.alc                 ; 4 uses
  %i.ale = icmp sgt i32 %i.ald, 0
  br i1 %i.ale, label %.preheader4.preheader, label %bb.bb

.preheader4.preheader:                            ; preds = %bb.ay
  %i.alf = zext nneg i32 %i.ald to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rn, i8 45, i64 %i.alf, i1 false), !tbaa !135
  %i.alg = add i32 %.0664, -2
  %i.alh = sub i32 %i.alg, %.3630
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.ali
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 1
  store i8 0, ptr %i.alk, align 1, !tbaa !135
  br i1 %i.ap, label %.lr.ph99, label %.preheader3

.lr.ph99:                                         ; preds = %.preheader4.preheader
  %i.all = sext i32 %.3630 to i64
  %i.alm = add nsw i32 %i.ald, %i.alb
  %i.aln = sext i32 %i.alm to i64
  %wide.trip.count231 = zext nneg i32 %0 to i64
  br label %bb.az

.preheader3:                                      ; preds = %bb.az, %.preheader4.preheader
  br i1 %i.bc, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader3
  %i.alo = add nsw i32 %i.ald, %i.alb
  %i.alp = sext i32 %i.alo to i64
  %wide.trip.count237 = zext nneg i32 %1 to i64
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph99, %bb.az
  %indvars.iv227 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next228, %bb.az ] ; 3 uses
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv227 ; 2 uses
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !10
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv227
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !10
  %i.alu = getelementptr inbounds i8, ptr %i.alt, i64 %i.d
  %i.alv = getelementptr inbounds i8, ptr %i.alu, i64 %i.all
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 1
  %i.alx = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.alr, ptr noundef nonnull %i.alw, i64 noundef %i.alf) #13 ; 0 uses
  %i.aly = load ptr, ptr %i.alq, align 8, !tbaa !10
  %i.alz = getelementptr inbounds i8, ptr %i.aly, i64 %i.aln
  store i8 0, ptr %i.alz, align 1, !tbaa !135
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.preheader3, label %bb.az, !llvm.loop !129

bb.ba:                                            ; preds = %.lr.ph101, %bb.ba
  %indvars.iv233 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next234, %bb.ba ] ; 2 uses
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv233 ; 2 uses
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !10
  %i.amc = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.amb, ptr noundef nonnull dereferenceable(1) %i.rn) #13 ; 0 uses
  %i.amd = load ptr, ptr %i.ama, align 8, !tbaa !10
  %i.ame = getelementptr inbounds i8, ptr %i.amd, i64 %i.alp
  store i8 0, ptr %i.ame, align 1, !tbaa !135
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge102, label %bb.ba, !llvm.loop !130

._crit_edge102:                                   ; preds = %bb.ba, %.preheader3
  %i.amf = sext i32 %.3630 to i64
  %i.amg = getelementptr [4 x i8], ptr %i.e, i64 %i.amf
  %i.amh = getelementptr i8, ptr %i.amg, i64 4
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !13
  %i.amj = sext i32 %.0664 to i64
  %i.amk = getelementptr [4 x i8], ptr %i.h, i64 %i.amj
  %i.aml = getelementptr i8, ptr %i.amk, i64 -4
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !13
  %i.amn = fadd float %i.ami, %i.amm
  %i.amo = fadd float %.0683, %i.amn
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge102, %bb.ay
  %.1684 = phi float [ %i.amo, %._crit_edge102 ], [ %.0683, %bb.ay ]
  %i.amp = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.amq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amp) #14 ; 2 uses
  br i1 %i.ap, label %.lr.ph105, label %.preheader2

.lr.ph105:                                        ; preds = %bb.bb
  %sext715 = shl i64 %i.amq, 32
  %i.amr = ashr exact i64 %sext715, 32            ; 3 uses
  %wide.trip.count243 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check198 = icmp ult i32 %0, 4
  br i1 %min.iters.check198, label %scalar.ph197.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph105
  %n.vec200 = and i64 %wide.trip.count243, 2147483644 ; 3 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next206, %vector.body201 ] ; 2 uses
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index202 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %wide.load203 = load <2 x ptr>, ptr %i.ams, align 8, !tbaa !10
  %wide.load204 = load <2 x ptr>, ptr %i.amt, align 8, !tbaa !10
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load203, i64 %i.amr
end_hunk_1
begin_hunk_2_@match_calc:bb.a
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %.pre, float %i.fx)
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1240), align 8, !tbaa !7
  %i.gc = sitofp i32 %i.gb to float
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float %.pre93, float %i.ga)
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1344), align 16, !tbaa !7
  %i.gf = sitofp i32 %i.ge to float
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gf, float %.pre95, float %i.gd)
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1448), align 8, !tbaa !7
  %i.gi = sitofp i32 %i.gh to float
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %.pre97, float %i.gg)
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1552), align 16, !tbaa !7
  %i.gl = sitofp i32 %i.gk to float
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %.pre99, float %i.gj)
  %i.gn = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1656), align 8, !tbaa !7
  %i.go = sitofp i32 %i.gn to float
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.go, float %.pre101, float %i.gm)
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1760), align 16, !tbaa !7
  %i.gr = sitofp i32 %i.gq to float
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float %.pre103, float %i.gp)
  %i.gt = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1864), align 8, !tbaa !7
  %i.gu = sitofp i32 %i.gt to float
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.ba, float %i.gs)
  %i.gw = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1968), align 16, !tbaa !7
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.bc, float %i.gv)
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2072), align 8, !tbaa !7
  %i.ha = sitofp i32 %i.gz to float
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.be, float %i.gy)
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2176), align 16, !tbaa !7
  %i.hd = sitofp i32 %i.hc to float
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.bg, float %i.hb)
  %i.hf = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2280), align 8, !tbaa !7
  %i.hg = sitofp i32 %i.hf to float
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.bi, float %i.he)
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2384), align 16, !tbaa !7
  %i.hj = sitofp i32 %i.hi to float
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.bk, float %i.hh)
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2488), align 8, !tbaa !7
  %i.hm = sitofp i32 %i.hl to float
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.bm, float %i.hk)
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2592), align 16, !tbaa !7
  %i.hp = sitofp i32 %i.ho to float
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.bo, float %i.hn)
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2696), align 8, !tbaa !7
  %i.hs = sitofp i32 %i.hr to float
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.bq, float %i.hq)
  store float %i.ht, ptr %i.et, align 16, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.hv = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 100), align 4, !tbaa !7
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.ag, float 0.000000e+00)
  %i.hy = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 204), align 4, !tbaa !7
  %i.hz = sitofp i32 %i.hy to float
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ai, float %i.hx)
  %i.ib = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 308), align 4, !tbaa !7
  %i.ic = sitofp i32 %i.ib to float
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ak, float %i.ia)
  %i.ie = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 412), align 4, !tbaa !7
  %i.if = sitofp i32 %i.ie to float
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.if, float %i.am, float %i.id)
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 516), align 4, !tbaa !7
  %i.ii = sitofp i32 %i.ih to float
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.ao, float %i.ig)
  %i.ik = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 620), align 4, !tbaa !7
  %i.il = sitofp i32 %i.ik to float
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.aq, float %i.ij)
  %i.in = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 724), align 4, !tbaa !7
  %i.io = sitofp i32 %i.in to float
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.io, float %i.as, float %i.im)
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 828), align 4, !tbaa !7
  %i.ir = sitofp i32 %i.iq to float
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.au, float %i.ip)
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 932), align 4, !tbaa !7
  %i.iu = sitofp i32 %i.it to float
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.aw, float %i.is)
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1036), align 4, !tbaa !7
  %i.ix = sitofp i32 %i.iw to float
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ay, float %i.iv)
  %i.iz = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1140), align 4, !tbaa !7
  %i.ja = sitofp i32 %i.iz to float
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ja, float %.pre, float %i.iy)
  %i.jc = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1244), align 4, !tbaa !7
  %i.jd = sitofp i32 %i.jc to float
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %.pre93, float %i.jb)
  %i.jf = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1348), align 4, !tbaa !7
  %i.jg = sitofp i32 %i.jf to float
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.jg, float %.pre95, float %i.je)
  %i.ji = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1452), align 4, !tbaa !7
  %i.jj = sitofp i32 %i.ji to float
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jj, float %.pre97, float %i.jh)
  %i.jl = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1556), align 4, !tbaa !7
  %i.jm = sitofp i32 %i.jl to float
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jm, float %.pre99, float %i.jk)
  %i.jo = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1660), align 4, !tbaa !7
  %i.jp = sitofp i32 %i.jo to float
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jp, float %.pre101, float %i.jn)
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1764), align 4, !tbaa !7
  %i.js = sitofp i32 %i.jr to float
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.js, float %.pre103, float %i.jq)
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1868), align 4, !tbaa !7
  %i.jv = sitofp i32 %i.ju to float
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.ba, float %i.jt)
  %i.jx = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 1972), align 4, !tbaa !7
  %i.jy = sitofp i32 %i.jx to float
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.bc, float %i.jw)
  %i.ka = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2076), align 4, !tbaa !7
  %i.kb = sitofp i32 %i.ka to float
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.be, float %i.jz)
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2180), align 4, !tbaa !7
  %i.ke = sitofp i32 %i.kd to float
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.bg, float %i.kc)
  %i.kg = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2284), align 4, !tbaa !7
  %i.kh = sitofp i32 %i.kg to float
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.bi, float %i.kf)
  %i.kj = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2388), align 4, !tbaa !7
  %i.kk = sitofp i32 %i.kj to float
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kk, float %i.bk, float %i.ki)
  %i.km = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2492), align 4, !tbaa !7
  %i.kn = sitofp i32 %i.km to float
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.bm, float %i.kl)
  %i.kp = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2596), align 4, !tbaa !7
  %i.kq = sitofp i32 %i.kp to float
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.bo, float %i.ko)
  %i.ks = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2700), align 4, !tbaa !7
  %i.kt = sitofp i32 %i.ks to float
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.bq, float %i.kr)
  store float %i.ku, ptr %i.hu, align 4, !tbaa !13
  %.not6170 = icmp eq i32 %4, 0
  br i1 %.not6170, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %scalar.ph, %._crit_edge
  %.in = phi i32 [ %i.kv, %._crit_edge ], [ %4, %scalar.ph ]
  %.073 = phi ptr [ %i.lm, %._crit_edge ], [ %6, %scalar.ph ] ; 2 uses
  %.05072 = phi ptr [ %i.ln, %._crit_edge ], [ %5, %scalar.ph ] ; 2 uses
  %.05171 = phi ptr [ %i.ll, %._crit_edge ], [ %0, %scalar.ph ] ; 3 uses
  %i.kv = add nsw i32 %.in, -1                    ; 2 uses
  store float 0.000000e+00, ptr %.05171, align 4, !tbaa !13
  %i.kw = load ptr, ptr %.073, align 8, !tbaa !19 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !7  ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, -1
  br i1 %i.ky, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph74
  %i.kz = load ptr, ptr %.05072, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv89 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next90, %bb.h ] ; 2 uses
  %i.la = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lh, %bb.h ]
  %i.lb = phi i32 [ %i.kx, %.lr.ph ], [ %i.lj, %bb.h ]
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lc
  %i.le = load float, ptr %i.ld, align 4, !tbaa !13
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv89
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !13
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.le, float %i.lg, float %i.la) ; 2 uses
  store float %i.lh, ptr %.05171, align 4, !tbaa !13
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next90
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !7  ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, -1
  br i1 %i.lk, label %bb.h, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.h, %.lr.ph74
  %i.ll = getelementptr inbounds nuw i8, ptr %.05171, i64 4
  %i.lm = getelementptr inbounds nuw i8, ptr %.073, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %.05072, i64 8
  %.not61 = icmp eq i32 %i.kv, 0
  br i1 %.not61, label %._crit_edge75, label %.lr.ph74, !llvm.loop !178

._crit_edge75:                                    ; preds = %._crit_edge, %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @FreeIntVec(ptr noundef) local_unnamed_addr #2

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare void @gapireru(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"float", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"p1 float", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !11, !14, !15}
!26 = distinct !{!26, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !11, !14, !15}
!30 = distinct !{!30, !11, !14}
!31 = distinct !{!31, !11, !14}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!23}
!39 = !{!24}
!40 = !{!27}
!41 = !{!28}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11, !14, !15}
!46 = distinct !{!46, !136}
!47 = distinct !{!47, !11, !14, !15}
!48 = distinct !{!48, !136}
!49 = distinct !{!49, !11, !14}
!50 = distinct !{!50, !11, !14}
!51 = distinct !{!51, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !11, !14, !15}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !11, !14, !15}
!61 = distinct !{!61, !11, !14}
!62 = distinct !{!62, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !11, !14, !15}
!67 = distinct !{!67, !11, !14}
!68 = distinct !{!68, !11, !14}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !136}
!72 = distinct !{!72, !11, !14, !15}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11, !15, !14}
!75 = distinct !{!75, !11, !14, !15}
!76 = distinct !{!76, !11, !14, !15}
!77 = distinct !{!77, !136}
!78 = distinct !{!78, !11, !14}
!79 = distinct !{!79, !11, !14, !15}
!80 = distinct !{!80, !136}
!81 = distinct !{!81, !11, !14}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = distinct !{!89, !11, !14, !15}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !11, !14, !15}
!95 = distinct !{!95, !11, !14}
!96 = distinct !{!96, !"LVerDomain"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !96}
!100 = distinct !{!100, !11, !14, !15}
!101 = distinct !{!101, !11, !14}
!102 = distinct !{!102, !11, !14}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !105}
!109 = distinct !{!109, !11, !14, !15}
!110 = distinct !{!110, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !11, !14, !15}
!115 = distinct !{!115, !11, !14}
!116 = distinct !{!116, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !116}
!120 = distinct !{!120, !11, !14, !15}
!121 = distinct !{!121, !11, !14}
!122 = distinct !{!122, !11, !14}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11, !14, !15}
!132 = distinct !{!132, !11, !14, !15}
!133 = distinct !{!133, !11, !15, !14}
!134 = distinct !{!134, !11, !15, !14}
!135 = !{!5, !5, i64 0}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!52}
!138 = !{!53}
!139 = !{!54}
!140 = !{!52, !53}
!141 = !{!57}
!142 = !{!58}
!143 = !{!59}
!144 = !{!57, !58}
!145 = !{!63}
!146 = !{!64}
!147 = !{!65}
!148 = !{!64, !63}
!149 = !{!"branch_weights", i32 8, i32 24}
!150 = !{!86}
!151 = !{!87}
!152 = !{!88}
!153 = !{!86, !87}
!154 = !{!91}
!155 = !{!92}
!156 = !{!93}
!157 = !{!91, !92}
!158 = !{!97}
!159 = !{!98}
!160 = !{!99}
!161 = !{!98, !97}
!162 = !{!106}
!163 = !{!107}
!164 = !{!108}
!165 = !{!106, !107}
!166 = !{!111}
!167 = !{!112}
!168 = !{!113}
end_hunk_2
