Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MSalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@MSalignmm:bb.a

._crit_edge223:                                   ; preds = %scalar.ph299, %middle.block314, %.preheader209
  store ptr %i.s, ptr %i.q, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.v, ptr %i.dd, align 8, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.u, ptr %i.de, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.w, ptr %i.df, align 8, !tbaa !17
  %i.dg = add nsw i32 %i.i, -1
  %i.dh = add nsw i32 %i.l, -1
  %i.di = tail call fastcc float @MSalignmm_rec(i32 noundef %4, i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.x, ptr noundef %i.y, i32 noundef 0, i32 noundef %i.dg, i32 noundef 0, i32 noundef %i.dh, ptr noundef %i.o, ptr noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.q)
  br i1 %i.z, label %.lr.ph226.preheader, label %.preheader208

.lr.ph226.preheader:                              ; preds = %._crit_edge223
  %wide.trip.count259 = zext nneg i32 %4 to i64
  br label %.lr.ph226

.preheader208:                                    ; preds = %.lr.ph226, %._crit_edge223
  br i1 %i.ab, label %.lr.ph228.preheader, label %._crit_edge229

.lr.ph228.preheader:                              ; preds = %.preheader208
  %wide.trip.count264 = zext nneg i32 %5 to i64
  br label %.lr.ph228

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %indvars.iv256 = phi i64 [ 0, %.lr.ph226.preheader ], [ %indvars.iv.next257, %.lr.ph226 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv256
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv256
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10
  %i.dn = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dk, ptr noundef nonnull dereferenceable(1) %i.dm) #13 ; 0 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader208, label %.lr.ph226, !llvm.loop !32

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %indvars.iv261 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next262, %.lr.ph228 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv261
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv261
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !10
  %i.ds = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dp, ptr noundef nonnull dereferenceable(1) %i.dr) #13 ; 0 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %._crit_edge229, label %.lr.ph228, !llvm.loop !33

._crit_edge229:                                   ; preds = %.lr.ph228, %.preheader208
  %i.dt = load ptr, ptr %0, align 8, !tbaa !10
  %i.du = tail call i32 @seqlen(ptr noundef %i.dt) #13
  %.not198 = icmp eq i32 %i.du, %i.d
  br i1 %.not198, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge229
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.dw = load ptr, ptr %0, align 8, !tbaa !10
  %i.dx = tail call i32 @seqlen(ptr noundef %i.dw) #13
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.3, i32 noundef %i.dx, i32 noundef %i.d) #15 ; 0 uses
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ea = load ptr, ptr %0, align 8, !tbaa !10
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.4, ptr noundef %i.ea) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %._crit_edge229
  %i.ec = load ptr, ptr %1, align 8, !tbaa !10
  %i.ed = tail call i32 @seqlen(ptr noundef %i.ec) #13
  %.not199 = icmp eq i32 %i.ed, %i.f
  br i1 %.not199, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ef = load ptr, ptr %1, align 8, !tbaa !10
  %i.eg = tail call i32 @seqlen(ptr noundef %i.ef) #13
  %i.eh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.5, i32 noundef %i.eg, i32 noundef %i.f) #15 ; 0 uses
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
  %i.ei = load ptr, ptr %1, align 8, !tbaa !10
  %i.ej = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ei) #14
  br i1 %i.z, label %.lr.ph232, label %.preheader

.lr.ph232:                                        ; preds = %bb.n
  %i.ek = load ptr, ptr %0, align 8, !tbaa !10
  %i.el = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ek) #14
  %i.em = shl i64 %i.el, 32
  %i.en = ashr exact i64 %i.em, 32
  %wide.trip.count269 = zext nneg i32 %4 to i64
  br label %bb.o

.preheader:                                       ; preds = %bb.q, %bb.n
  br i1 %i.ab, label %.lr.ph234, label %._crit_edge235

.lr.ph234:                                        ; preds = %.preheader
  %i.eo = shl i64 %i.ej, 32
  %i.ep = ashr exact i64 %i.eo, 32
  %wide.trip.count274 = zext nneg i32 %5 to i64
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph232, %bb.q
  %indvars.iv266 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next267, %bb.q ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv266
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !10
  %i.es = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #14
  %.not201 = icmp eq i64 %i.es, %i.en
  br i1 %.not201, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.et = trunc nuw nsw i64 %indvars.iv266 to i32
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str, i32 noundef %i.et, i32 noundef %4) #15 ; 0 uses
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite202 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %i.ew) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %.preheader, label %bb.o, !llvm.loop !34

bb.r:                                             ; preds = %.lr.ph234, %bb.t
  %indvars.iv271 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next272, %bb.t ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv271
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !10
  %i.ez = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #14
  %.not200 = icmp eq i64 %i.ez, %i.ep
  br i1 %.not200, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fa = trunc nuw nsw i64 %indvars.iv271 to i32
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.fc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.2, i32 noundef %i.fa, i32 noundef %5) #15 ; 0 uses
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %i.fd) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %._crit_edge235, label %bb.r, !llvm.loop !35

._crit_edge235:                                   ; preds = %bb.t, %.preheader
  ret float %i.di
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
  %.not717111 = icmp slt i32 %i.s, 0
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
  br i1 %.not717111, label %._crit_edge115, label %.lr.ph114

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
  %or.cond424 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond424, label %.lr.ph.preheader445, label %vector.ph

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
  br i1 %cmp.n, label %.preheader13, label %.lr.ph.preheader445

.lr.ph.preheader445:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader445, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader445 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader445 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.prol
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !46

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader445
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader445 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
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
  %diff.check30 = icmp ugt i64 %i.bd, -32
  %or.cond425 = select i1 %min.iters.check28, i1 true, i1 %diff.check30
  br i1 %or.cond425, label %.lr.ph25.preheader444, label %vector.ph31

vector.ph31:                                      ; preds = %.lr.ph25.preheader
  %n.vec32 = and i64 %wide.trip.count137, 2147483644 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph31
  %index34 = phi i64 [ 0, %vector.ph31 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index34 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load35 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !10
  %wide.load36 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index34 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x ptr> %wide.load35, ptr %i.bg, align 8, !tbaa !10
  store <2 x ptr> %wide.load36, ptr %i.bh, align 8, !tbaa !10
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.bi, label %middle.block38, label %vector.body33, !llvm.loop !47

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count137
  br i1 %cmp.n39, label %._crit_edge, label %.lr.ph25.preheader444

.lr.ph25.preheader444:                            ; preds = %.lr.ph25.preheader, %middle.block38
  %indvars.iv134.ph = phi i64 [ 0, %.lr.ph25.preheader ], [ %n.vec32, %middle.block38 ] ; 3 uses
  %xtraiter446 = and i64 %wide.trip.count137, 3   ; 2 uses
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol

.lr.ph25.prol:                                    ; preds = %.lr.ph25.preheader444, %.lr.ph25.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph25.prol ], [ %indvars.iv134.ph, %.lr.ph25.preheader444 ] ; 3 uses
  %prol.iter448 = phi i64 [ %prol.iter448.next, %.lr.ph25.prol ], [ 0, %.lr.ph25.preheader444 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv134.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv134.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !10
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 2 uses
  %prol.iter448.next = add i64 %prol.iter448, 1   ; 2 uses
  %prol.iter448.cmp.not = icmp eq i64 %prol.iter448.next, %xtraiter446
  br i1 %prol.iter448.cmp.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol, !llvm.loop !48

.lr.ph25.prol.loopexit:                           ; preds = %.lr.ph25.prol, %.lr.ph25.preheader444
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph25.preheader444 ], [ %indvars.iv.next135.prol, %.lr.ph25.prol ]
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
  %wide.load94 = load <4 x float>, ptr %i.uh, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  %wide.load95 = load <4 x float>, ptr %i.ui, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  %i.uj = fadd <4 x float> %wide.load94, %i.uf
  %i.uk = fadd <4 x float> %wide.load95, %i.ug
  store <4 x float> %i.uj, ptr %i.uh, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  store <4 x float> %i.uk, ptr %i.ui, align 4, !tbaa !13, !alias.scope !156, !noalias !157
  %index.next96 = add nuw i64 %index89, 8         ; 2 uses
  %i.ul = icmp eq i64 %index.next96, %n.vec87
  br i1 %i.ul, label %middle.block97, label %vector.body88, !llvm.loop !94

middle.block97:                                   ; preds = %vector.body88
  %cmp.n98 = icmp eq i64 %i.tp, %n.vec87
  br i1 %cmp.n98, label %.lr.ph32, label %.lr.ph30.preheader442

.lr.ph30.preheader442:                            ; preds = %vector.memcheck78, %.lr.ph30.preheader, %middle.block97
  %indvars.iv144.ph = phi i64 [ 1, %vector.memcheck78 ], [ 1, %.lr.ph30.preheader ], [ %i.tz, %middle.block97 ] ; 5 uses
  %i.um = and i64 %wide.trip.count147, 1
  %lcmp.mod453.not.not = icmp eq i64 %i.um, 0
  br i1 %lcmp.mod453.not.not, label %.lr.ph30.prol, label %.lr.ph30.prol.loopexit

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader442
  %i.un = load float, ptr %i.l, align 4, !tbaa !13
  %i.uo = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144.ph
  %i.up = getelementptr i8, ptr %i.uo, i64 -4
  %i.uq = load float, ptr %i.up, align 4, !tbaa !13
  %i.ur = fadd float %i.un, %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv144.ph ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !13
  %i.uu = fadd float %i.ut, %i.ur
  store float %i.uu, ptr %i.us, align 4, !tbaa !13
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader442
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph30.preheader442 ], [ %indvars.iv.next145.prol, %.lr.ph30.prol ]
  %i.uv = add nsw i64 %wide.trip.count147, -1
  %i.uw = icmp eq i64 %indvars.iv144.ph, %i.uv
  br i1 %i.uw, label %.lr.ph32, label %.lr.ph30

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %.lr.ph28 ], [ %indvars.iv139.unr, %.lr.ph28.prol.loopexit ] ; 4 uses
  %i.ux = load float, ptr %i.e, align 4, !tbaa !13
  %i.uy = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv139
  %i.uz = getelementptr i8, ptr %i.uy, i64 -4
  %i.va = load float, ptr %i.uz, align 4, !tbaa !13
  %i.vb = fadd float %i.ux, %i.va
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv139 ; 2 uses
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !13
  %i.ve = fadd float %i.vd, %i.vb
  store float %i.ve, ptr %i.vc, align 4, !tbaa !13
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.vf = load float, ptr %i.e, align 4, !tbaa !13
  %i.vg = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next140
  %i.vh = getelementptr i8, ptr %i.vg, i64 -4
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !13
  %i.vj = fadd float %i.vf, %i.vi
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv.next140 ; 2 uses
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !13
  %i.vm = fadd float %i.vl, %i.vj
  store float %i.vm, ptr %i.vk, align 4, !tbaa !13
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.1, label %.lr.ph30.preheader, label %.lr.ph28, !llvm.loop !95

.lr.ph32:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30, %middle.block97
  %i.vn = getelementptr i8, ptr %i.e, i64 4       ; 6 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.to, i32 2)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64
  %i.vo = add nsw i64 %wide.trip.count147, -1     ; 2 uses
  %min.iters.check112 = icmp slt i32 %i.to, 17
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph32
  %i.vp = getelementptr i8, ptr %i.rv, i64 4      ; 2 uses
  %i.vq = shl nuw nsw i64 %wide.trip.count147, 2  ; 2 uses
  %i.vr = getelementptr i8, ptr %i.rv, i64 %i.vq  ; 2 uses
  %i.vs = getelementptr i8, ptr %i.rh, i64 %i.vq
  %i.vt = getelementptr i8, ptr %i.vs, i64 -4
  %i.vu = shl nsw i64 %i.d, 2
  %i.vv = getelementptr i8, ptr %i.c, i64 %i.vu
  %i.vw = getelementptr i8, ptr %i.vv, i64 8
  %bound0114 = icmp ult ptr %i.vp, %i.vt
  %bound1115 = icmp ult ptr %i.rh, %i.vr
  %found.conflict116 = and i1 %bound0114, %bound1115
  %bound0117 = icmp ult ptr %i.vp, %i.vw
  %bound1118 = icmp ult ptr %i.vn, %i.vr
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %found.conflict116, %found.conflict119
  br i1 %conflict.rdx120, label %scalar.ph111.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.vo, -8                   ; 3 uses
  %i.vx = or disjoint i64 %n.vec122, 1
  %i.vy = load float, ptr %i.vn, align 4, !tbaa !13, !alias.scope !158
  %broadcast.splatinsert127 = insertelement <4 x float> poison, float %i.vy, i64 0
  %broadcast.splat128 = shufflevector <4 x float> %broadcast.splatinsert127, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body123 ] ; 2 uses
  %i.vz = or disjoint i64 %index124, 1            ; 3 uses
  %i.wa = getelementptr [4 x i8], ptr %i.rh, i64 %i.vz ; 2 uses
  %i.wb = getelementptr i8, ptr %i.wa, i64 -4
  %i.wc = getelementptr i8, ptr %i.wa, i64 12
  %wide.load125 = load <4 x float>, ptr %i.wb, align 4, !tbaa !13, !alias.scope !159
  %wide.load126 = load <4 x float>, ptr %i.wc, align 4, !tbaa !13, !alias.scope !159
  %i.wd = fadd <4 x float> %wide.load125, %broadcast.splat128
  %i.we = fadd <4 x float> %wide.load126, %broadcast.splat128
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.vz ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store <4 x float> %i.wd, ptr %i.wf, align 4, !tbaa !13, !alias.scope !160, !noalias !161
  store <4 x float> %i.we, ptr %i.wg, align 4, !tbaa !13, !alias.scope !160, !noalias !161
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.vz ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store <4 x i32> zeroinitializer, ptr %i.wh, align 4, !tbaa !7
  store <4 x i32> zeroinitializer, ptr %i.wi, align 4, !tbaa !7
  %index.next129 = add nuw i64 %index124, 8       ; 2 uses
  %i.wj = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.wj, label %middle.block130, label %vector.body123, !llvm.loop !100

middle.block130:                                  ; preds = %vector.body123
  %cmp.n131 = icmp eq i64 %i.vo, %n.vec122
  br i1 %cmp.n131, label %._crit_edge33, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck113, %.lr.ph32, %middle.block130
  %indvars.iv149.ph = phi i64 [ 1, %vector.memcheck113 ], [ 1, %.lr.ph32 ], [ %i.vx, %middle.block130 ] ; 6 uses
  %i.wk = and i64 %wide.trip.count147, 1
  %lcmp.mod456.not.not = icmp eq i64 %i.wk, 0
  br i1 %lcmp.mod456.not.not, label %scalar.ph111.prol, label %scalar.ph111.prol.loopexit

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader
  %i.wl = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv149.ph
  %i.wm = getelementptr i8, ptr %i.wl, i64 -4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !13
  %i.wo = load float, ptr %i.vn, align 4, !tbaa !13
  %i.wp = fadd float %i.wn, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv149.ph
  store float %i.wp, ptr %i.wq, align 4, !tbaa !13
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv149.ph
  store i32 0, ptr %i.wr, align 4, !tbaa !7
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.ph, 1
  br label %scalar.ph111.prol.loopexit

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %scalar.ph111.preheader ], [ %indvars.iv.next150.prol, %scalar.ph111.prol ]
  %i.ws = add nsw i64 %wide.trip.count147, -1
  %i.wt = icmp eq i64 %indvars.iv149.ph, %i.ws
  br i1 %i.wt, label %._crit_edge33, label %scalar.ph111

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph30 ], [ %indvars.iv144.unr, %.lr.ph30.prol.loopexit ] ; 4 uses
  %i.wu = load float, ptr %i.l, align 4, !tbaa !13
  %i.wv = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144
  %i.ww = getelementptr i8, ptr %i.wv, i64 -4
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !13
  %i.wy = fadd float %i.wu, %i.wx
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv144 ; 2 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !13
  %i.xb = fadd float %i.xa, %i.wy
  store float %i.xb, ptr %i.wz, align 4, !tbaa !13
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.xc = load float, ptr %i.l, align 4, !tbaa !13
  %i.xd = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.next145
  %i.xe = getelementptr i8, ptr %i.xd, i64 -4
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !13
  %i.xg = fadd float %i.xc, %i.xf
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next145 ; 2 uses
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !13
  %i.xj = fadd float %i.xi, %i.xg
  store float %i.xj, ptr %i.xh, align 4, !tbaa !13
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %exitcond148.not.1 = icmp eq i64 %indvars.iv.next145.1, %wide.trip.count147
  br i1 %exitcond148.not.1, label %.lr.ph32, label %.lr.ph30, !llvm.loop !101

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %scalar.ph111 ], [ %indvars.iv149.unr, %scalar.ph111.prol.loopexit ] ; 5 uses
  %i.xk = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv149
  %i.xl = getelementptr i8, ptr %i.xk, i64 -4
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !13
  %i.xn = load float, ptr %i.vn, align 4, !tbaa !13
  %i.xo = fadd float %i.xm, %i.xn
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv149
  store float %i.xo, ptr %i.xp, align 4, !tbaa !13
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv149
  store i32 0, ptr %i.xq, align 4, !tbaa !7
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %i.xr = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv.next150
  %i.xs = getelementptr i8, ptr %i.xr, i64 -4
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !13
  %i.xu = load float, ptr %i.vn, align 4, !tbaa !13
  %i.xv = fadd float %i.xt, %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv.next150
  store float %i.xv, ptr %i.xw, align 4, !tbaa !13
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv.next150
  store i32 0, ptr %i.xx, align 4, !tbaa !7
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %exitcond154.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count153
  br i1 %exitcond154.not.1, label %._crit_edge33, label %scalar.ph111, !llvm.loop !102

._crit_edge33:                                    ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111, %middle.block130
  %i.xy = zext nneg i32 %i.u to i64               ; 10 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.xy
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !13
  store float %i.ya, ptr %i.ru, align 4, !tbaa !13
  %i.yb = uitofp nneg i32 %i.t to double
  %i.yc = fmul nnan double %i.yb, 5.000000e-01
  %i.yd = fptosi double %i.yc to i32              ; 9 uses
  %.not47 = icmp eq i32 %i.yd, 0
  br i1 %.not47, label %.lr.ph58, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge33
  %i.ye = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.064935 = getelementptr inbounds nuw i8, ptr %i.rw, i64 4 ; 2 uses
  %.064336 = getelementptr inbounds nuw i8, ptr %i.rv, i64 4 ; 2 uses
  %smax158 = tail call i32 @llvm.smax.i32(i32 %i.to, i32 2) ; 2 uses
  %i.yf = zext nneg i32 %i.yd to i64
  %i.yg = add nuw i32 %i.yd, 1
  %wide.trip.count170 = zext i32 %i.yg to i64
  %wide.trip.count159 = zext nneg i32 %smax158 to i64
  %wide.trip.count165 = zext nneg i32 %smax158 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph52, %._crit_edge46
  %indvars.iv167 = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next168, %._crit_edge46 ] ; 7 uses
  %.065150 = phi ptr [ %i.ri, %.lr.ph52 ], [ %.065349, %._crit_edge46 ] ; 7 uses
  %.065349 = phi ptr [ %i.rh, %.lr.ph52 ], [ %.065150, %._crit_edge46 ] ; 7 uses
  %i.yh = add nsw i64 %indvars.iv167, -1          ; 5 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %i.yh
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !13
  store float %i.yj, ptr %.065349, align 4, !tbaa !13
  %i.yk = trunc nuw nsw i64 %indvars.iv167 to i32
  tail call fastcc void @match_calc(ptr noundef %.065150, ptr noundef %i.sd, ptr noundef %i.sc, i32 noundef %i.yk, i32 noundef %i.v, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 0)
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv167
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !13
  store float %i.ym, ptr %.065150, align 4, !tbaa !13
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv167 ; 3 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !13 ; 2 uses
  store float %i.yo, ptr %i.rv, align 4, !tbaa !13
  %i.yp = icmp eq i64 %indvars.iv167, %i.yf
  br i1 %i.yp, label %.lr.ph45.split.us.preheader, label %.lr.ph45.split.preheader

.lr.ph45.split.preheader:                         ; preds = %bb.u
  %i.yq = load float, ptr %.065349, align 4, !tbaa !13
  %i.yr = load float, ptr %i.ye, align 4, !tbaa !13
  %i.ys = fadd float %i.yq, %i.yr
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.yh
  %i.yu = trunc nuw nsw i64 %i.yh to i32
  br label %.lr.ph45.split

.lr.ph45.split.us.preheader:                      ; preds = %bb.u
  store float %i.yo, ptr %i.rl, align 4, !tbaa !13
  %i.yv = load float, ptr %.065349, align 4, !tbaa !13
  %i.yw = load float, ptr %i.ye, align 4, !tbaa !13
  %i.yx = fadd float %i.yv, %i.yw
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.yh
  %i.yz = trunc nuw nsw i64 %i.yh to i32          ; 2 uses
  br label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45.split.us.preheader, %bb.w
  %indvars.iv161 = phi i64 [ 1, %.lr.ph45.split.us.preheader ], [ %indvars.iv.next162, %bb.w ] ; 8 uses
  %.064343.us = phi ptr [ %.064336, %.lr.ph45.split.us.preheader ], [ %.0643.us, %bb.w ] ; 4 uses
  %.064942.us = phi ptr [ %.064935, %.lr.ph45.split.us.preheader ], [ %.0649.us, %bb.w ] ; 3 uses
  %.065150.pn314 = phi ptr [ %.065150, %.lr.ph45.split.us.preheader ], [ %.063941.us, %bb.w ]
  %.063540.us = phi float [ %i.yx, %.lr.ph45.split.us.preheader ], [ %.1636.us, %bb.w ] ; 3 uses
  %.064139.us = phi ptr [ %.065349, %.lr.ph45.split.us.preheader ], [ %i.aab, %bb.w ] ; 2 uses
  %.064538.us = phi i32 [ 0, %.lr.ph45.split.us.preheader ], [ %.1646.us, %bb.w ]
  %.063941.us = getelementptr inbounds nuw i8, ptr %.065150.pn314, i64 4 ; 3 uses
  %i.za = load float, ptr %.064139.us, align 4, !tbaa !13 ; 4 uses
  %i.zb = add nsw i64 %indvars.iv161, -1          ; 2 uses
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.zb
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !13
  %i.ze = fadd float %.063540.us, %i.zd           ; 2 uses
  %i.zf = fcmp ogt float %i.ze, %i.za
  %.0655.us = select i1 %i.zf, float %i.ze, float %i.za ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv161
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !13
  %i.zi = fadd float %i.za, %i.zh                 ; 2 uses
  %i.zj = fcmp ult float %i.zi, %.063540.us       ; 2 uses
  %i.zk = trunc nuw nsw i64 %i.zb to i32
  %.1646.us = select i1 %i.zj, i32 %.064538.us, i32 %i.zk ; 2 uses
  %.1636.us = select i1 %i.zj, float %.063540.us, float %i.zi ; 2 uses
  %i.zl = load float, ptr %.064343.us, align 4, !tbaa !13 ; 2 uses
  %i.zm = load float, ptr %i.yy, align 4, !tbaa !13
  %i.zn = fadd float %i.zl, %i.zm                 ; 2 uses
  %i.zo = fcmp ogt float %i.zn, %.0655.us
  %.1656.us = select i1 %i.zo, float %i.zn, float %.0655.us
  %i.zp = load float, ptr %i.yn, align 4, !tbaa !13
  %i.zq = fadd float %i.za, %i.zp                 ; 2 uses
  %i.zr = fcmp ult float %i.zq, %i.zl
  br i1 %i.zr, label %.lr.ph45.split.us._crit_edge, label %bb.v

.lr.ph45.split.us._crit_edge:                     ; preds = %.lr.ph45.split.us
  %.pre = load i32, ptr %.064942.us, align 4, !tbaa !7
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph45.split.us
  store float %i.zq, ptr %.064343.us, align 4, !tbaa !13
  store i32 %i.yz, ptr %.064942.us, align 4, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph45.split.us._crit_edge, %bb.v
  %i.zs = phi i32 [ %.pre, %.lr.ph45.split.us._crit_edge ], [ %i.yz, %bb.v ]
  %i.zt = load float, ptr %.063941.us, align 4, !tbaa !13
  %i.zu = fadd float %.1656.us, %i.zt             ; 2 uses
  store float %i.zu, ptr %.063941.us, align 4, !tbaa !13
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv161
  store i32 %i.zs, ptr %i.zv, align 4, !tbaa !7
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %indvars.iv161
  store i32 %.1646.us, ptr %i.zw, align 4, !tbaa !7
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv161
  store float %i.zu, ptr %i.zx, align 4, !tbaa !13
  %i.zy = load float, ptr %.064343.us, align 4, !tbaa !13
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv161
  store float %i.zy, ptr %i.zz, align 4, !tbaa !13
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv161
  store float %.1636.us, ptr %i.aaa, align 4, !tbaa !13
  %i.aab = getelementptr inbounds nuw i8, ptr %.064139.us, i64 4
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
  %.063540 = phi float [ %i.ys, %.lr.ph45.split.preheader ], [ %.1636, %bb.y ] ; 3 uses
  %.064139 = phi ptr [ %.065349, %.lr.ph45.split.preheader ], [ %i.aau, %bb.y ] ; 2 uses
  %.063941 = getelementptr inbounds nuw i8, ptr %.065150.pn, i64 4 ; 3 uses
  %i.aac = load float, ptr %.064139, align 4, !tbaa !13 ; 4 uses
  %i.aad = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv155
  %i.aae = getelementptr i8, ptr %i.aad, i64 -4
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !13
  %i.aag = fadd float %.063540, %i.aaf            ; 2 uses
  %i.aah = fcmp ogt float %i.aag, %i.aac
  %.0655 = select i1 %i.aah, float %i.aag, float %i.aac ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv155
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !13
  %i.aak = fadd float %i.aac, %i.aaj              ; 2 uses
  %.inv = fcmp oge float %i.aak, %.063540
  %.1636 = select i1 %.inv, float %i.aak, float %.063540
  %i.aal = load float, ptr %.064343, align 4, !tbaa !13 ; 2 uses
  %i.aam = load float, ptr %i.yt, align 4, !tbaa !13
  %i.aan = fadd float %i.aal, %i.aam              ; 2 uses
  %i.aao = fcmp ogt float %i.aan, %.0655
  %.1656 = select i1 %i.aao, float %i.aan, float %.0655
  %i.aap = load float, ptr %i.yn, align 4, !tbaa !13
  %i.aaq = fadd float %i.aac, %i.aap              ; 2 uses
  %i.aar = fcmp ult float %i.aaq, %i.aal
  br i1 %i.aar, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph45.split
  store float %i.aaq, ptr %.064343, align 4, !tbaa !13
  store i32 %i.yu, ptr %.064942, align 4, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph45.split
  %i.aas = load float, ptr %.063941, align 4, !tbaa !13
  %i.aat = fadd float %.1656, %i.aas
  store float %i.aat, ptr %.063941, align 4, !tbaa !13
  %i.aau = getelementptr inbounds nuw i8, ptr %.064139, i64 4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %.0649 = getelementptr inbounds nuw i8, ptr %.064942, i64 4
  %.0643 = getelementptr inbounds nuw i8, ptr %.064343, i64 4
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge46, label %.lr.ph45.split, !llvm.loop !103

._crit_edge46:                                    ; preds = %bb.y, %bb.w
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.065150, i64 %i.xy
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !13
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv167
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !13
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.lr.ph58, label %bb.u, !llvm.loop !104

.lr.ph58:                                         ; preds = %._crit_edge46, %._crit_edge33
  %.0653.lcssa = phi ptr [ %i.rh, %._crit_edge33 ], [ %.065150, %._crit_edge46 ] ; 13 uses
  %.0651.lcssa = phi ptr [ %i.ri, %._crit_edge33 ], [ %.065349, %._crit_edge46 ]
  tail call fastcc void @match_calc(ptr noundef %i.rt, ptr noundef %i.sc, ptr noundef %i.sd, i32 noundef %i.u, i32 noundef %i.t, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.0653.lcssa, ptr noundef %i.sd, ptr noundef %i.sc, i32 noundef %i.s, i32 noundef %i.v, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 1)
  %i.aay = zext nneg i32 %i.s to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aay ; 5 uses
  %wide.trip.count174 = zext nneg i32 %i.s to i64 ; 7 uses
  %min.iters.check144 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph58
  %i.aba = shl nuw nsw i64 %wide.trip.count174, 2
  %i.abb = getelementptr i8, ptr %i.rt, i64 %i.aba ; 2 uses
  %i.abc = add nsw i64 %i.d, %wide.trip.count174
  %i.abd = shl nsw i64 %i.abc, 2
  %i.abe = add nsw i64 %i.abd, 4                  ; 2 uses
  %i.abf = getelementptr i8, ptr %i.g, i64 %i.abe
  %i.abg = getelementptr i8, ptr %i.c, i64 %i.abe
  %bound0146 = icmp ult ptr %i.rt, %i.abf
  %bound1147 = icmp ult ptr %i.aaz, %i.abb
  %found.conflict148 = and i1 %bound0146, %bound1147
  %bound0149 = icmp ult ptr %i.rt, %i.abg
  %bound1150 = icmp ult ptr %i.vn, %i.abb
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %found.conflict148, %found.conflict151
  br i1 %conflict.rdx152, label %scalar.ph143.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck145
  %n.vec154 = and i64 %wide.trip.count174, 2147483640 ; 3 uses
  %i.abh = load float, ptr %i.aaz, align 4, !tbaa !13, !alias.scope !162
  %broadcast.splatinsert159 = insertelement <4 x float> poison, float %i.abh, i64 0
  %broadcast.splat160 = shufflevector <4 x float> %broadcast.splatinsert159, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body155 ] ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index156 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 20
  %wide.load157 = load <4 x float>, ptr %i.abj, align 4, !tbaa !13, !alias.scope !163
  %wide.load158 = load <4 x float>, ptr %i.abk, align 4, !tbaa !13, !alias.scope !163
  %i.abl = fadd <4 x float> %broadcast.splat160, %wide.load157
  %i.abm = fadd <4 x float> %broadcast.splat160, %wide.load158
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %index156 ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16 ; 2 uses
  %wide.load161 = load <4 x float>, ptr %i.abn, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %wide.load162 = load <4 x float>, ptr %i.abo, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %i.abp = fadd <4 x float> %wide.load161, %i.abl
  %i.abq = fadd <4 x float> %wide.load162, %i.abm
  store <4 x float> %i.abp, ptr %i.abn, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  store <4 x float> %i.abq, ptr %i.abo, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %index.next163 = add nuw i64 %index156, 8       ; 2 uses
  %i.abr = icmp eq i64 %index.next163, %n.vec154
  br i1 %i.abr, label %middle.block164, label %vector.body155, !llvm.loop !109

middle.block164:                                  ; preds = %vector.body155
  %cmp.n165 = icmp eq i64 %n.vec154, %wide.trip.count174
  br i1 %cmp.n165, label %.lr.ph60, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.memcheck145, %.lr.ph58, %middle.block164
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph58 ], [ %n.vec154, %middle.block164 ] ; 4 uses
  %xtraiter458 = and i64 %wide.trip.count174, 1
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %scalar.ph143.prol.loopexit, label %scalar.ph143.prol

scalar.ph143.prol:                                ; preds = %scalar.ph143.preheader
  %i.abs = load float, ptr %i.aaz, align 4, !tbaa !13
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.prol
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !13
  %i.abv = fadd float %i.abs, %i.abu
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv172.ph ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !13
  %i.aby = fadd float %i.abx, %i.abv
  store float %i.aby, ptr %i.abw, align 4, !tbaa !13
  br label %scalar.ph143.prol.loopexit

scalar.ph143.prol.loopexit:                       ; preds = %scalar.ph143.prol, %scalar.ph143.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph143.preheader ], [ %indvars.iv.next173.prol, %scalar.ph143.prol ]
  %i.abz = add nsw i64 %wide.trip.count174, -1
  %i.aca = icmp eq i64 %indvars.iv172.ph, %i.abz
  br i1 %i.aca, label %.lr.ph60, label %scalar.ph143

.lr.ph60:                                         ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143, %middle.block164
  %i.acb = getelementptr [4 x i8], ptr %i.o, i64 %i.xy ; 6 uses
  %wide.trip.count181 = zext nneg i32 %i.u to i64 ; 9 uses
  %min.iters.check179 = icmp ult i32 %i.u, 12
  br i1 %min.iters.check179, label %scalar.ph178.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph60
  %i.acc = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %i.acd = getelementptr i8, ptr %.0653.lcssa, i64 %i.acc ; 2 uses
  %i.ace = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.acf = add nsw i64 %i.ace, %i.acc
  %14 = add nsw i64 %i.acf, 4                     ; 2 uses
  %i.acg = getelementptr i8, ptr %i.n, i64 %14
  %i.ach = getelementptr i8, ptr %i.j, i64 %i.ace
  %i.aci = getelementptr i8, ptr %i.ach, i64 4
  %i.acj = getelementptr i8, ptr %i.j, i64 %14
  %bound0181 = icmp ult ptr %.0653.lcssa, %i.acg
  %bound1182 = icmp ult ptr %i.acb, %i.acd
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0184 = icmp ult ptr %.0653.lcssa, %i.acj
  %bound1185 = icmp ult ptr %i.aci, %i.acd
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %found.conflict183, %found.conflict186
  br i1 %conflict.rdx187, label %scalar.ph178.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck180
  %n.vec189 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.ack = load float, ptr %i.acb, align 4, !tbaa !13, !alias.scope !166
  %broadcast.splatinsert194 = insertelement <4 x float> poison, float %i.ack, i64 0
  %broadcast.splat195 = shufflevector <4 x float> %broadcast.splatinsert194, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body190 ] ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index191 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 20
  %wide.load192 = load <4 x float>, ptr %i.acm, align 4, !tbaa !13, !alias.scope !167
  %wide.load193 = load <4 x float>, ptr %i.acn, align 4, !tbaa !13, !alias.scope !167
  %i.aco = fadd <4 x float> %broadcast.splat195, %wide.load192
  %i.acp = fadd <4 x float> %broadcast.splat195, %wide.load193
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %index191 ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 16 ; 2 uses
  %wide.load196 = load <4 x float>, ptr %i.acq, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %wide.load197 = load <4 x float>, ptr %i.acr, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %i.acs = fadd <4 x float> %wide.load196, %i.aco
  %i.act = fadd <4 x float> %wide.load197, %i.acp
  store <4 x float> %i.acs, ptr %i.acq, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  store <4 x float> %i.act, ptr %i.acr, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %index.next198 = add nuw i64 %index191, 8       ; 2 uses
  %i.acu = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.acu, label %middle.block199, label %vector.body190, !llvm.loop !114

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %n.vec189, %wide.trip.count181
  br i1 %cmp.n200, label %.lr.ph62, label %scalar.ph178.preheader

scalar.ph178.preheader:                           ; preds = %vector.memcheck180, %.lr.ph60, %middle.block199
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck180 ], [ 0, %.lr.ph60 ], [ %n.vec189, %middle.block199 ] ; 4 uses
  %xtraiter461 = and i64 %wide.trip.count181, 1
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %scalar.ph178.prol.loopexit, label %scalar.ph178.prol

scalar.ph178.prol:                                ; preds = %scalar.ph178.preheader
  %i.acv = load float, ptr %i.acb, align 4, !tbaa !13
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !13
  %i.acy = fadd float %i.acv, %i.acx
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !13
  %i.adb = fadd float %i.ada, %i.acy
  store float %i.adb, ptr %i.acz, align 4, !tbaa !13
  br label %scalar.ph178.prol.loopexit

scalar.ph178.prol.loopexit:                       ; preds = %scalar.ph178.prol, %scalar.ph178.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph178.preheader ], [ %indvars.iv.next178.prol, %scalar.ph178.prol ]
  %i.adc = add nsw i64 %wide.trip.count181, -1
  %i.add = icmp eq i64 %indvars.iv177.ph, %i.adc
  br i1 %i.add, label %.lr.ph62, label %scalar.ph178

scalar.ph143:                                     ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph143 ], [ %indvars.iv172.unr, %scalar.ph143.prol.loopexit ] ; 3 uses
  %i.ade = load float, ptr %i.aaz, align 4, !tbaa !13
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !13
  %i.adh = fadd float %i.ade, %i.adg
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv172 ; 2 uses
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !13
  %i.adk = fadd float %i.adj, %i.adh
  store float %i.adk, ptr %i.adi, align 4, !tbaa !13
  %i.adl = load float, ptr %i.aaz, align 4, !tbaa !13
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !13
  %i.ado = fadd float %i.adl, %i.adn
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv.next173 ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !13
  %i.adr = fadd float %i.adq, %i.ado
  store float %i.adr, ptr %i.adp, align 4, !tbaa !13
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count174
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph143, !llvm.loop !115

.lr.ph62:                                         ; preds = %scalar.ph178.prol.loopexit, %scalar.ph178, %middle.block199
  %i.ads = getelementptr [4 x i8], ptr %i.o, i64 %i.xy
  %i.adt = getelementptr i8, ptr %i.ads, i64 -4   ; 3 uses
  %15 = xor i32 %8, -1
  %i.adu = add i32 %9, %15                        ; 2 uses
  %i.adv = zext i32 %i.adu to i64                 ; 2 uses
  %i.adw = add nuw nsw i64 %i.adv, 1              ; 2 uses
  %min.iters.check214 = icmp ult i32 %i.adu, 19
  br i1 %min.iters.check214, label %scalar.ph213.preheader, label %vector.memcheck215

vector.memcheck215:                               ; preds = %.lr.ph62
  %i.adx = shl nuw nsw i64 %wide.trip.count181, 2 ; 4 uses
  %i.ady = shl nuw nsw i64 %i.adv, 2              ; 2 uses
  %i.adz = add nsw i64 %i.adx, -4
  %i.aea = sub nsw i64 %i.adz, %i.ady
  %i.aeb = getelementptr i8, ptr %i.rv, i64 %i.aea ; 2 uses
  %i.aec = getelementptr i8, ptr %i.rv, i64 %i.adx ; 2 uses
  %i.aed = sub nsw i64 %i.adx, %i.ady
  %i.aee = getelementptr i8, ptr %.0653.lcssa, i64 %i.aed
  %i.aef = getelementptr i8, ptr %.0653.lcssa, i64 %i.adx
  %i.aeg = getelementptr i8, ptr %i.aef, i64 4
  %bound0216 = icmp ult ptr %i.aeb, %i.aeg
  %bound1217 = icmp ult ptr %i.aee, %i.aec
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0219 = icmp ult ptr %i.aeb, %i.acb
  %bound1220 = icmp ult ptr %i.adt, %i.aec
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %found.conflict218, %found.conflict221
  br i1 %conflict.rdx222, label %scalar.ph213.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %vector.memcheck215
  %n.vec224 = and i64 %i.adw, 8589934588          ; 3 uses
  %broadcast.splatinsert225 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat226 = shufflevector <4 x i32> %broadcast.splatinsert225, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aeh = sub nsw i64 %i.xy, %n.vec224
  %i.aei = load float, ptr %i.adt, align 4, !tbaa !13, !alias.scope !170
  %broadcast.splatinsert231 = insertelement <4 x float> poison, float %i.aei, i64 0
  %i.aej = shufflevector <4 x float> %broadcast.splatinsert231, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph223
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next234, %vector.body227 ] ; 2 uses
  %i.aek = sub i64 %i.xy, %index228               ; 3 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %i.aek
  %i.aem = getelementptr inbounds i8, ptr %i.ael, i64 -12
  %wide.load229 = load <4 x float>, ptr %i.aem, align 4, !tbaa !13, !alias.scope !171
  %i.aen = getelementptr [4 x i8], ptr %i.rv, i64 %i.aek
  %i.aeo = getelementptr i8, ptr %i.aen, i64 -16
  %reverse233 = fadd <4 x float> %wide.load229, %i.aej
  store <4 x float> %reverse233, ptr %i.aeo, align 4, !tbaa !13, !alias.scope !172, !noalias !173
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.aek
  %i.aeq = getelementptr inbounds i8, ptr %i.aep, i64 -12
  store <4 x i32> %broadcast.splat226, ptr %i.aeq, align 4, !tbaa !7
  %index.next234 = add nuw i64 %index228, 4       ; 2 uses
  %i.aer = icmp eq i64 %index.next234, %n.vec224
  br i1 %i.aer, label %middle.block235, label %vector.body227, !llvm.loop !120

middle.block235:                                  ; preds = %vector.body227
  %cmp.n236 = icmp eq i64 %i.adw, %n.vec224
  br i1 %cmp.n236, label %.preheader8, label %scalar.ph213.preheader

scalar.ph213.preheader:                           ; preds = %vector.memcheck215, %.lr.ph62, %middle.block235
  %indvars.iv183.ph = phi i64 [ %i.xy, %vector.memcheck215 ], [ %i.xy, %.lr.ph62 ], [ %i.aeh, %middle.block235 ]
  br label %scalar.ph213

scalar.ph178:                                     ; preds = %scalar.ph178.prol.loopexit, %scalar.ph178
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph178 ], [ %indvars.iv177.unr, %scalar.ph178.prol.loopexit ] ; 3 uses
  %i.aes = load float, ptr %i.acb, align 4, !tbaa !13
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !13
  %i.aev = fadd float %i.aes, %i.aeu
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !13
  %i.aey = fadd float %i.aex, %i.aev
  store float %i.aey, ptr %i.aew, align 4, !tbaa !13
  %i.aez = load float, ptr %i.acb, align 4, !tbaa !13
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 3 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.1
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !13
  %i.afc = fadd float %i.aez, %i.afb
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv.next178 ; 2 uses
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !13
  %i.aff = fadd float %i.afe, %i.afc
  store float %i.aff, ptr %i.afd, align 4, !tbaa !13
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond182.not.1, label %.lr.ph62, label %scalar.ph178, !llvm.loop !121

.preheader8:                                      ; preds = %scalar.ph213, %middle.block235
  %i.afg = add nsw i32 %i.u, -1
  %i.afh = zext nneg i32 %i.afg to i64            ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.afh
  %i.afj = zext nneg i32 %i.v to i64              ; 4 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.afj
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 -8
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.afj
  %i.afn = getelementptr inbounds i8, ptr %i.afm, i64 -8
  %i.afo = add nsw i32 %i.yd, -1                  ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %smax197 = tail call i32 @llvm.smax.i32(i32 %i.to, i32 1) ; 3 uses
  %i.afq = zext nneg i32 %i.yd to i64             ; 2 uses
  %wide.trip.count197 = zext nneg i32 %smax197 to i64 ; 2 uses
  %wide.trip.count198 = zext nneg i32 %i.s to i64
  %xtraiter464 = and i64 %wide.trip.count181, 1
  %16 = and i64 %wide.trip.count181, 2147483646
  %17 = add nsw i64 %16, -4
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  %lcmp.mod468 = trunc i32 %i.u to i1
  %xtraiter469 = and i64 %wide.trip.count197, 1
  %18 = icmp eq i32 %smax197, 1
  %unroll_iter473 = and i64 %wide.trip.count197, 2147483646
  %lcmp.mod470.not = icmp eq i64 %xtraiter469, 0
  %lcmp.mod472 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph213:                                     ; preds = %scalar.ph213.preheader, %scalar.ph213
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph213 ], [ %indvars.iv183.ph, %scalar.ph213.preheader ] ; 5 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv183
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !13
  %i.aft = load float, ptr %i.adt, align 4, !tbaa !13
  %i.afu = fadd float %i.afs, %i.aft
  %i.afv = getelementptr [4 x i8], ptr %i.rv, i64 %indvars.iv183
  %i.afw = getelementptr i8, ptr %i.afv, i64 -4
  store float %i.afu, ptr %i.afw, align 4, !tbaa !13
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv183
  store i32 %i.s, ptr %i.afx, align 4, !tbaa !7
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.afy = trunc nuw i64 %indvars.iv183 to i32
  %i.afz = icmp sgt i32 %i.afy, 1
  br i1 %i.afz, label %scalar.ph213, label %.preheader8, !llvm.loop !122

bb.z:                                             ; preds = %bb.ar
  %i.aga = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.agb = icmp sgt i32 %i.aga, 0
  br i1 %i.agb, label %.lr.ph72, label %.loopexit, !llvm.loop !123

.lr.ph72:                                         ; preds = %.preheader8, %bb.z
  %i.agc = phi i32 [ %i.s, %.preheader8 ], [ %i.aga, %bb.z ] ; 3 uses
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
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv20012
  %i.age = load float, ptr %i.agd, align 4, !tbaa !13
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.xy ; 2 uses
  store float %i.age, ptr %i.agf, align 4, !tbaa !13
  tail call fastcc void @match_calc(ptr noundef %.165215, ptr noundef %i.sd, ptr noundef %i.sc, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 0)
  %i.agg = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.agg
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !13
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.xy
  store float %i.agi, ptr %i.agj, align 4, !tbaa !13
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.afj
  %.164263 = getelementptr inbounds i8, ptr %i.agk, i64 -4
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.afj
  %i.agm = getelementptr inbounds i8, ptr %i.agl, i64 -8
  %i.agn = load float, ptr %i.agf, align 4, !tbaa !13
  %i.ago = load float, ptr %i.afi, align 4, !tbaa !13
  %i.agp = fadd float %i.agn, %i.ago
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.agg
  %i.ags = icmp eq i32 %.062716, %indvars21
  %i.agt = icmp eq i64 %indvars.iv20012, %i.afq   ; 2 uses
  %or.cond718 = or i1 %i.agt, %i.ags
  %i.agu = icmp eq i32 %indvars21, %i.yd
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.afh, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.164270 = phi ptr [ %.164263, %.lr.ph72 ], [ %.1642, %bb.ak ] ; 2 uses
  %.263769 = phi float [ %i.agp, %.lr.ph72 ], [ %.3638, %bb.ak ] ; 3 uses
  %.164068 = phi ptr [ %i.agm, %.lr.ph72 ], [ %i.aie, %bb.ak ] ; 3 uses
  %.164467 = phi ptr [ %i.afl, %.lr.ph72 ], [ %i.aic, %bb.ak ] ; 4 uses
  %.264766 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3648, %bb.ak ] ; 2 uses
  %.165065 = phi ptr [ %i.afn, %.lr.ph72 ], [ %i.aid, %bb.ak ] ; 3 uses
  %i.agv = load float, ptr %.164270, align 4, !tbaa !13 ; 4 uses
  %i.agw = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.agw
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !13
  %i.agz = fadd float %.263769, %i.agy            ; 2 uses
  %i.aha = fcmp ogt float %i.agz, %i.agv          ; 2 uses
  %.2657 = select i1 %i.aha, float %i.agz, float %i.agv ; 2 uses
  %i.ahb = trunc nuw i64 %i.agw to i32            ; 3 uses
  %.0621 = select i1 %i.aha, i32 %.264766, i32 %i.ahb
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !13
  %i.ahe = fadd float %i.agv, %i.ahd              ; 2 uses
  %i.ahf = fcmp ult float %i.ahe, %.263769        ; 2 uses
  %.3648 = select i1 %i.ahf, i32 %.264766, i32 %i.ahb
  %.3638 = select i1 %i.ahf, float %.263769, float %i.ahe ; 2 uses
  %i.ahg = load float, ptr %.164467, align 4, !tbaa !13 ; 2 uses
  %i.ahh = load float, ptr %i.agq, align 4, !tbaa !13
  %i.ahi = fadd float %i.ahg, %i.ahh              ; 2 uses
  %i.ahj = fcmp ogt float %i.ahi, %.2657
  br i1 %i.ahj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ahk = load i32, ptr %.165065, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3658 = phi float [ %i.ahi, %bb.ab ], [ %.2657, %bb.aa ] ; 2 uses
  %.1624 = phi i32 [ %i.ahk, %bb.ab ], [ %i.agc, %bb.aa ]
  %.1622 = phi i32 [ %i.ahb, %bb.ab ], [ %.0621, %bb.aa ]
  %i.ahl = load float, ptr %i.agr, align 4, !tbaa !13
  %i.ahm = fadd float %i.agv, %i.ahl              ; 2 uses
  %i.ahn = fcmp ult float %i.ahm, %i.ahg
  br i1 %i.ahn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %i.ahm, ptr %.164467, align 4, !tbaa !13
  store i32 %i.agc, ptr %.165065, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond718, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv186
  store i32 %.1624, ptr %i.aho, align 4, !tbaa !7
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv186
  store i32 %.1622, ptr %i.ahp, align 4, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.agu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv186 ; 2 uses
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !13
  %i.ahs = fadd float %.3658, %i.ahr
  store float %i.ahs, ptr %i.ahq, align 4, !tbaa !13
  %i.aht = load float, ptr %.164467, align 4, !tbaa !13
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.agw ; 2 uses
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !13
  %i.ahw = fadd float %i.aht, %i.ahv
  store float %i.ahw, ptr %i.ahu, align 4, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.agt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv186 ; 2 uses
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !13
  %i.ahz = fadd float %.3638, %i.ahy
  store float %i.ahz, ptr %i.ahx, align 4, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.aia = load float, ptr %.164068, align 4, !tbaa !13
  %i.aib = fadd float %.3658, %i.aia
  store float %i.aib, ptr %.164068, align 4, !tbaa !13
  %i.aic = getelementptr inbounds i8, ptr %.164467, i64 -4
  %i.aid = getelementptr inbounds i8, ptr %.165065, i64 -4
  %i.aie = getelementptr inbounds i8, ptr %.164068, i64 -4
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, -1
  %.1642 = getelementptr inbounds i8, ptr %.164270, i64 -4 ; 2 uses
  %i.aif = trunc nuw i64 %indvars.iv186 to i32
  %i.aig = icmp sgt i32 %i.aif, 0
  br i1 %i.aig, label %bb.aa, label %._crit_edge73, !llvm.loop !124

._crit_edge73:                                    ; preds = %bb.ak
  %i.aih = load float, ptr %.1642, align 4, !tbaa !13
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.agg
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !13
  %i.aik = fadd float %i.aih, %i.aij              ; 2 uses
  %i.ail = fcmp olt float %.061918, %i.aik        ; 2 uses
  %.1620 = select i1 %i.ail, float %i.aik, float %.061918 ; 2 uses
  %.1 = select i1 %i.ail, i32 %i.agc, i32 %.019   ; 3 uses
  %i.aim = icmp eq i32 %indvars21, %i.yd
  br i1 %i.aim, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge73
  %i.ain = load float, ptr %i.rl, align 4, !tbaa !13
  %i.aio = fadd float %.1620, %i.ain
  store float %i.aio, ptr %i.rl, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge73
  %i.aip = icmp eq i64 %indvars.iv20012, %i.afq
  br i1 %i.aip, label %.lr.ph80.preheader.new, label %bb.ar

.lr.ph80.preheader.new:                           ; preds = %bb.am
  %i.aiq = load float, ptr %i.afp, align 4, !tbaa !13
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80, %.lr.ph80.preheader.new
  %indvars.iv189 = phi i64 [ 2, %.lr.ph80.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph80 ] ; 4 uses
  %.063178 = phi float [ %i.aiq, %.lr.ph80.preheader.new ], [ %.1632.1, %.lr.ph80 ] ; 2 uses
  %.166077 = phi i32 [ 0, %.lr.ph80.preheader.new ], [ %.2661.1, %.lr.ph80 ]
  %niter = phi i64 [ 0, %.lr.ph80.preheader.new ], [ %niter.next.1, %.lr.ph80 ] ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv189
  %i.ais = load float, ptr %i.air, align 4, !tbaa !13 ; 2 uses
  %i.ait = fcmp ogt float %i.ais, %.063178        ; 2 uses
  %i.aiu = trunc nuw nsw i64 %indvars.iv189 to i32
  %.2661 = select i1 %i.ait, i32 %i.aiu, i32 %.166077
  %.1632 = select i1 %i.ait, float %i.ais, float %.063178 ; 2 uses
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 2 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.next190
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !13 ; 2 uses
  %i.aix = fcmp ogt float %i.aiw, %.1632          ; 2 uses
  %i.aiy = trunc nuw nsw i64 %indvars.iv.next190 to i32
  %.2661.1 = select i1 %i.aix, i32 %i.aiy, i32 %.2661 ; 3 uses
  %.1632.1 = select i1 %i.aix, float %i.aiw, float %.1632 ; 4 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %17
  br i1 %niter.ncmp.1, label %.lr.ph86.preheader.unr-lcssa, label %.lr.ph80, !llvm.loop !125

.lr.ph86.preheader.unr-lcssa:                     ; preds = %.lr.ph80
  br i1 %lcmp.mod465.not, label %.lr.ph86.preheader, label %.lr.ph80.epil.preheader

.lr.ph80.epil.preheader:                          ; preds = %.lr.ph86.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod468)
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.next190.1
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !13 ; 2 uses
  %i.ajb = fcmp ogt float %i.aja, %.1632.1        ; 2 uses
  %i.ajc = trunc nuw nsw i64 %indvars.iv.next190.1 to i32
  %.2661.epil = select i1 %i.ajb, i32 %i.ajc, i32 %.2661.1
  %.1632.epil = select i1 %i.ajb, float %i.aja, float %.1632.1
  br label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.lr.ph86.preheader.unr-lcssa, %.lr.ph80.epil.preheader
  %.2661.lcssa = phi i32 [ %.2661.1, %.lr.ph86.preheader.unr-lcssa ], [ %.2661.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  %.1632.lcssa = phi float [ %.1632.1, %.lr.ph86.preheader.unr-lcssa ], [ %.1632.epil, %.lr.ph80.epil.preheader ] ; 2 uses
  br i1 %18, label %.lr.ph86.epil.preheader, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ] ; 4 uses
  %.263385 = phi float [ %.3634.1, %.lr.ph86 ], [ %.1632.lcssa, %.lr.ph86.preheader ] ; 2 uses
  %.366284 = phi i32 [ %.4663.1, %.lr.ph86 ], [ %.2661.lcssa, %.lr.ph86.preheader ]
  %niter474 = phi i64 [ %niter474.next.1, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv194
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !13 ; 2 uses
  %i.ajf = fcmp ogt float %i.aje, %.263385        ; 2 uses
  %i.ajg = trunc nuw nsw i64 %indvars.iv194 to i32
  %.4663 = select i1 %i.ajf, i32 %i.ajg, i32 %.366284
  %.3634 = select i1 %i.ajf, float %i.aje, float %.263385 ; 2 uses
  %indvars.iv.next195 = or disjoint i64 %indvars.iv194, 1 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv.next195
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !13 ; 2 uses
  %i.ajj = fcmp ogt float %i.aji, %.3634          ; 2 uses
  %i.ajk = trunc nuw nsw i64 %indvars.iv.next195 to i32
  %.4663.1 = select i1 %i.ajj, i32 %i.ajk, i32 %.4663 ; 3 uses
  %.3634.1 = select i1 %i.ajj, float %i.aji, float %.3634 ; 2 uses
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %niter474.next.1 = add i64 %niter474, 2         ; 2 uses
  %niter474.ncmp.1 = icmp eq i64 %niter474.next.1, %unroll_iter473
  br i1 %niter474.ncmp.1, label %._crit_edge87.unr-lcssa, label %.lr.ph86, !llvm.loop !126

._crit_edge87.unr-lcssa:                          ; preds = %.lr.ph86
  br i1 %lcmp.mod470.not, label %._crit_edge87, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv194.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next195.1, %._crit_edge87.unr-lcssa ] ; 2 uses
  %.263385.epil.init = phi float [ %.1632.lcssa, %.lr.ph86.preheader ], [ %.3634.1, %._crit_edge87.unr-lcssa ]
  %.366284.epil.init = phi i32 [ %.2661.lcssa, %.lr.ph86.preheader ], [ %.4663.1, %._crit_edge87.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod472)
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv194.epil.init
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !13
  %i.ajn = fcmp ogt float %i.ajm, %.263385.epil.init
  %i.ajo = trunc nuw nsw i64 %indvars.iv194.epil.init to i32
  %.4663.epil = select i1 %i.ajn, i32 %i.ajo, i32 %.366284.epil.init
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.unr-lcssa, %.lr.ph86.epil.preheader
  %.4663.lcssa = phi i32 [ %.4663.1, %._crit_edge87.unr-lcssa ], [ %.4663.epil, %.lr.ph86.epil.preheader ] ; 5 uses
  %i.ajp = sext i32 %.4663.lcssa to i64           ; 4 uses
  %i.ajq = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.ajp
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !13 ; 3 uses
  %i.ajs = add nsw i32 %.4663.lcssa, -1           ; 4 uses
  %i.ajt = icmp sgt i32 %.4663.lcssa, 0
  br i1 %i.ajt, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %._crit_edge87
  %i.aju = zext nneg i32 %i.ajs to i64
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.aju
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !13 ; 2 uses
  %i.ajx = fcmp ogt float %i.ajw, %i.ajr
  br i1 %i.ajx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.ajp
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge87
  %.4 = phi float [ %i.ajw, %bb.ao ], [ %i.ajr, %bb.an ], [ %i.ajr, %._crit_edge87 ]
  %.1626 = phi i32 [ %i.ajz, %bb.ao ], [ %i.ajs, %bb.an ], [ %i.ajs, %._crit_edge87 ]
  %i.aka = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.ajp
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !13
  %i.akc = fcmp ogt float %i.akb, %.4
  br i1 %i.akc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.akd = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.ajp
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.am
  %.5 = phi i32 [ %.4663.lcssa, %bb.aq ], [ %.4663.lcssa, %bb.ap ], [ %.065913, %bb.am ] ; 4 uses
  %.2629 = phi i32 [ %i.ake, %bb.aq ], [ %i.afo, %bb.ap ], [ %.062716, %bb.am ] ; 3 uses
  %.2 = phi i32 [ %i.ajs, %bb.aq ], [ %.1626, %bb.ap ], [ %.062517, %bb.am ] ; 4 uses
  %i.akf = icmp eq i32 %.2629, %indvars21
  br i1 %i.akf, label %bb.as, label %bb.z, !llvm.loop !123

bb.as:                                            ; preds = %bb.ar
  %i.akg = icmp eq i32 %.5, 0
  br i1 %i.akg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.akh = add nsw i32 %.1, -1
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %.not714.not = icmp sgt i32 %.5, %i.u
  br i1 %.not714.not, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aki = sext i32 %.2 to i64                    ; 2 uses
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.aki
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !7
  %i.akl = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.aki
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.au, %bb.at, %bb.av
  %.0664 = phi i32 [ %.1, %bb.at ], [ %i.yd, %bb.au ], [ %i.akk, %bb.av ], [ %i.yd, %bb.z ] ; 4 uses
  %.6 = phi i32 [ 1, %bb.at ], [ %i.v, %bb.au ], [ %i.akm, %bb.av ], [ %.5, %bb.z ] ; 4 uses
  %.3630 = phi i32 [ %i.akh, %bb.at ], [ %i.afo, %bb.au ], [ %indvars21, %bb.av ], [ %.2629, %bb.z ] ; 5 uses
  %.3 = phi i32 [ 0, %bb.at ], [ %i.u, %bb.au ], [ %.2, %bb.av ], [ %.2, %bb.z ] ; 4 uses
  tail call void @FreeFloatVec(ptr noundef %i.rh) #13
  tail call void @FreeFloatVec(ptr noundef %i.ri) #13
  tail call void @FreeFloatVec(ptr noundef %i.rt) #13
  tail call void @FreeFloatVec(ptr noundef nonnull %i.ru) #13
  tail call void @FreeFloatVec(ptr noundef %i.rj) #13
  tail call void @FreeFloatVec(ptr noundef %i.rl) #13
  tail call void @FreeFloatVec(ptr noundef %i.rk) #13
  tail call void @FreeIntVec(ptr noundef %i.rm) #13
  tail call void @FreeIntVec(ptr noundef %i.rn) #13
  tail call void @FreeIntVec(ptr noundef %i.ro) #13
  tail call void @FreeIntVec(ptr noundef %i.rp) #13
  tail call void @FreeIntVec(ptr noundef %i.rq) #13
  tail call void @FreeIntVec(ptr noundef %i.rr) #13
  tail call void @FreeFloatVec(ptr noundef %i.rv) #13
  tail call void @FreeIntVec(ptr noundef %i.rw) #13
  tail call void @FreeFloatMtx(ptr noundef %i.sa) #13
  tail call void @FreeIntMtx(ptr noundef %i.sb) #13
  %i.akn = add nsw i32 %.3630, %6
  %i.ako = add nsw i32 %.3, %8
  %i.akp = tail call fastcc float @MSalignmm_rec(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %i.akn, i32 noundef %8, i32 noundef %i.ako, ptr noundef %i.am, ptr noundef %i.an, i32 noundef %i.p, ptr noundef nonnull %13) ; 2 uses
  %i.akq = load ptr, ptr %10, align 8, !tbaa !10  ; 2 uses
  %i.akr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.akq) #14
  %i.aks = trunc i64 %i.akr to i32                ; 2 uses
  %i.akt = xor i32 %.3, -1
  %i.aku = add i32 %.6, %i.akt                    ; 4 uses
  %i.akv = icmp sgt i32 %i.aku, 0
  br i1 %i.akv, label %.preheader6.preheader, label %bb.ay

.preheader6.preheader:                            ; preds = %.loopexit
  %i.akw = zext nneg i32 %i.aku to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rz, i8 45, i64 %i.akw, i1 false), !tbaa !135
  %i.akx = add i32 %.6, -2
  %i.aky = sub i32 %i.akx, %.3
  %i.akz = zext i32 %i.aky to i64
  %i.ala = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.akz
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 1
  store i8 0, ptr %i.alb, align 1, !tbaa !135
  br i1 %i.ap, label %.lr.ph92, label %.preheader5

.lr.ph92:                                         ; preds = %.preheader6.preheader
  %i.alc = add nsw i32 %i.aku, %i.aks
  %i.ald = sext i32 %i.alc to i64
  %wide.trip.count213 = zext nneg i32 %0 to i64
  br label %bb.aw

.preheader5:                                      ; preds = %bb.aw, %.preheader6.preheader
  %i.ale = sext i32 %.3 to i64                    ; 2 uses
  br i1 %i.bc, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader5
  %i.alf = add nsw i32 %i.aku, %i.aks
  %i.alg = sext i32 %i.alf to i64
  %wide.trip.count219 = zext nneg i32 %1 to i64
  br label %bb.ax

bb.aw:                                            ; preds = %.lr.ph92, %bb.aw
  %indvars.iv209 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next210, %bb.aw ] ; 2 uses
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv209 ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !10
  %i.alj = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.ali, ptr noundef nonnull dereferenceable(1) %i.rz) #13 ; 0 uses
  %i.alk = load ptr, ptr %i.alh, align 8, !tbaa !10
  %i.all = getelementptr inbounds i8, ptr %i.alk, i64 %i.ald
  store i8 0, ptr %i.all, align 1, !tbaa !135
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count213
  br i1 %exitcond214.not, label %.preheader5, label %bb.aw, !llvm.loop !127

bb.ax:                                            ; preds = %.lr.ph94, %bb.ax
  %indvars.iv215 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next216, %bb.ax ] ; 3 uses
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv215 ; 2 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !10
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv215
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !10
  %i.alq = getelementptr inbounds i8, ptr %i.alp, i64 %i.k
  %i.alr = getelementptr inbounds i8, ptr %i.alq, i64 %i.ale
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 1
  %i.alt = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.aln, ptr noundef nonnull %i.als, i64 noundef %i.akw) #13 ; 0 uses
  %i.alu = load ptr, ptr %i.alm, align 8, !tbaa !10
  %i.alv = getelementptr inbounds i8, ptr %i.alu, i64 %i.alg
  store i8 0, ptr %i.alv, align 1, !tbaa !135
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge95, label %bb.ax, !llvm.loop !128

._crit_edge95:                                    ; preds = %bb.ax, %.preheader5
  %i.alw = getelementptr [4 x i8], ptr %i.l, i64 %i.ale
  %i.alx = getelementptr i8, ptr %i.alw, i64 4
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !13
  %i.alz = sext i32 %.6 to i64
  %i.ama = getelementptr [4 x i8], ptr %i.o, i64 %i.alz
  %i.amb = getelementptr i8, ptr %i.ama, i64 -4
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !13
  %i.amd = fadd float %i.aly, %i.amc
  %i.ame = fadd float %i.akp, %i.amd
  %.pre268 = load ptr, ptr %10, align 8, !tbaa !10
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge95, %.loopexit
  %i.amf = phi ptr [ %.pre268, %._crit_edge95 ], [ %i.akq, %.loopexit ]
  %.0683 = phi float [ %i.ame, %._crit_edge95 ], [ %i.akp, %.loopexit ] ; 2 uses
  %i.amg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amf) #14
  %i.amh = trunc i64 %i.amg to i32                ; 2 uses
  %i.ami = xor i32 %.3630, -1
  %i.amj = add i32 %.0664, %i.ami                 ; 4 uses
  %i.amk = icmp sgt i32 %i.amj, 0
  br i1 %i.amk, label %.preheader4.preheader, label %bb.bb

.preheader4.preheader:                            ; preds = %bb.ay
  %i.aml = zext nneg i32 %i.amj to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rz, i8 45, i64 %i.aml, i1 false), !tbaa !135
  %i.amm = add i32 %.0664, -2
  %i.amn = sub i32 %i.amm, %.3630
  %i.amo = zext i32 %i.amn to i64
  %i.amp = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.amo
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 1
  store i8 0, ptr %i.amq, align 1, !tbaa !135
  br i1 %i.ap, label %.lr.ph99, label %.preheader3

.lr.ph99:                                         ; preds = %.preheader4.preheader
  %i.amr = sext i32 %.3630 to i64
  %i.ams = add nsw i32 %i.amj, %i.amh
  %i.amt = sext i32 %i.ams to i64
  %wide.trip.count231 = zext nneg i32 %0 to i64
  br label %bb.az

.preheader3:                                      ; preds = %bb.az, %.preheader4.preheader
  br i1 %i.bc, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader3
  %i.amu = add nsw i32 %i.amj, %i.amh
  %i.amv = sext i32 %i.amu to i64
  %wide.trip.count237 = zext nneg i32 %1 to i64
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph99, %bb.az
  %indvars.iv227 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next228, %bb.az ] ; 3 uses
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv227 ; 2 uses
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !10
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv227
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !10
  %i.ana = getelementptr inbounds i8, ptr %i.amz, i64 %i.d
  %i.anb = getelementptr inbounds i8, ptr %i.ana, i64 %i.amr
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 1
  %i.and = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.amx, ptr noundef nonnull %i.anc, i64 noundef %i.aml) #13 ; 0 uses
  %i.ane = load ptr, ptr %i.amw, align 8, !tbaa !10
  %i.anf = getelementptr inbounds i8, ptr %i.ane, i64 %i.amt
  store i8 0, ptr %i.anf, align 1, !tbaa !135
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.preheader3, label %bb.az, !llvm.loop !129

bb.ba:                                            ; preds = %.lr.ph101, %bb.ba
  %indvars.iv233 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next234, %bb.ba ] ; 2 uses
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv233 ; 2 uses
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !10
  %i.ani = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.anh, ptr noundef nonnull dereferenceable(1) %i.rz) #13 ; 0 uses
  %i.anj = load ptr, ptr %i.ang, align 8, !tbaa !10
  %i.ank = getelementptr inbounds i8, ptr %i.anj, i64 %i.amv
  store i8 0, ptr %i.ank, align 1, !tbaa !135
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge102, label %bb.ba, !llvm.loop !130

._crit_edge102:                                   ; preds = %bb.ba, %.preheader3
  %i.anl = sext i32 %.3630 to i64
  %i.anm = getelementptr [4 x i8], ptr %i.e, i64 %i.anl
  %i.ann = getelementptr i8, ptr %i.anm, i64 4
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !13
  %i.anp = sext i32 %.0664 to i64
  %i.anq = getelementptr [4 x i8], ptr %i.h, i64 %i.anp
  %i.anr = getelementptr i8, ptr %i.anq, i64 -4
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !13
  %i.ant = fadd float %i.ano, %i.ans
  %i.anu = fadd float %.0683, %i.ant
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge102, %bb.ay
  %.1684 = phi float [ %i.anu, %._crit_edge102 ], [ %.0683, %bb.ay ]
  %i.anv = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.anw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.anv) #14 ; 2 uses
  br i1 %i.ap, label %.lr.ph105, label %.preheader2

.lr.ph105:                                        ; preds = %bb.bb
  %i.anx = shl i64 %i.anw, 32
  %i.any = ashr exact i64 %i.anx, 32              ; 3 uses
  %wide.trip.count243 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check239 = icmp ult i32 %0, 4
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %.lr.ph105
  %n.vec241 = and i64 %wide.trip.count243, 2147483644 ; 3 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next247, %vector.body242 ] ; 2 uses
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index243 ; 3 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 16 ; 2 uses
  %wide.load244 = load <2 x ptr>, ptr %i.anz, align 8, !tbaa !10
  %wide.load245 = load <2 x ptr>, ptr %i.aoa, align 8, !tbaa !10
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load244, i64 %i.any
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
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !11, !14, !15}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
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
!51 = distinct !{!51, i1 false, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !11, !14, !15}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !11, !14, !15}
!61 = distinct !{!61, !11, !14}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
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
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = distinct !{!89, !11, !14, !15}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !11, !14, !15}
!95 = distinct !{!95, !11, !14}
!96 = distinct !{!96, i1 false, !"LVerDomain"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !96}
!100 = distinct !{!100, !11, !14, !15}
!101 = distinct !{!101, !11, !14}
!102 = distinct !{!102, !11, !14}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !105}
!109 = distinct !{!109, !11, !14, !15}
!110 = distinct !{!110, i1 false, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !11, !14, !15}
!115 = distinct !{!115, !11, !14}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
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
