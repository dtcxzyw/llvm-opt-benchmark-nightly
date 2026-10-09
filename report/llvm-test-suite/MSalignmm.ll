Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MSalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@MSalignmm:bb.a
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
  %exitcond260.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.b, !llvm.loop !42

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
  %or.cond422 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond422, label %.lr.ph.preheader443, label %vector.ph

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
  br i1 %cmp.n, label %.preheader13, label %.lr.ph.preheader443

.lr.ph.preheader443:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader443, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader443 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader443 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.prol
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !46

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader443
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader443 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
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
  %or.cond423 = select i1 %min.iters.check28, i1 true, i1 %diff.check26
  br i1 %or.cond423, label %.lr.ph25.preheader442, label %vector.ph29

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
  br i1 %cmp.n37, label %._crit_edge, label %.lr.ph25.preheader442

.lr.ph25.preheader442:                            ; preds = %.lr.ph25.preheader, %middle.block36
  %indvars.iv134.ph = phi i64 [ 0, %.lr.ph25.preheader ], [ %n.vec30, %middle.block36 ] ; 3 uses
  %xtraiter444 = and i64 %wide.trip.count137, 3   ; 2 uses
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol

.lr.ph25.prol:                                    ; preds = %.lr.ph25.preheader442, %.lr.ph25.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph25.prol ], [ %indvars.iv134.ph, %.lr.ph25.preheader442 ] ; 3 uses
  %prol.iter446 = phi i64 [ %prol.iter446.next, %.lr.ph25.prol ], [ 0, %.lr.ph25.preheader442 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv134.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv134.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !10
  %indvars.iv.next135.prol = add nuw nsw i64 %indvars.iv134.prol, 1 ; 2 uses
  %prol.iter446.next = add i64 %prol.iter446, 1   ; 2 uses
  %prol.iter446.cmp.not = icmp eq i64 %prol.iter446.next, %xtraiter444
  br i1 %prol.iter446.cmp.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol, !llvm.loop !48

.lr.ph25.prol.loopexit:                           ; preds = %.lr.ph25.prol, %.lr.ph25.preheader442
  %indvars.iv134.unr = phi i64 [ %indvars.iv134.ph, %.lr.ph25.preheader442 ], [ %indvars.iv.next135.prol, %.lr.ph25.prol ]
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
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !13
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.lr.ph58, label %bb.u, !llvm.loop !104

.lr.ph58:                                         ; preds = %._crit_edge46, %._crit_edge33
  %.0653.lcssa = phi ptr [ %i.rh, %._crit_edge33 ], [ %.065150, %._crit_edge46 ] ; 13 uses
  %.0651.lcssa = phi ptr [ %i.ri, %._crit_edge33 ], [ %.065349, %._crit_edge46 ]
  tail call fastcc void @match_calc(ptr noundef %i.rt, ptr noundef %i.sc, ptr noundef %i.sd, i32 noundef %i.u, i32 noundef %i.t, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.0653.lcssa, ptr noundef %i.sd, ptr noundef %i.sc, i32 noundef %i.s, i32 noundef %i.v, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 1)
  %i.aay = zext nneg i32 %i.s to i64              ; 8 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aay ; 5 uses
  %min.iters.check142 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph58
  %i.aba = shl nuw nsw i64 %i.aay, 2
  %i.abb = getelementptr i8, ptr %i.rt, i64 %i.aba ; 2 uses
  %i.abc = add nsw i64 %i.d, %i.aay
  %i.abd = shl nsw i64 %i.abc, 2
  %i.abe = add nsw i64 %i.abd, 4                  ; 2 uses
  %i.abf = getelementptr i8, ptr %i.g, i64 %i.abe
  %i.abg = getelementptr i8, ptr %i.c, i64 %i.abe
  %bound0144 = icmp ult ptr %i.rt, %i.abf
  %bound1145 = icmp ult ptr %i.aaz, %i.abb
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0147 = icmp ult ptr %i.rt, %i.abg
  %bound1148 = icmp ult ptr %i.vn, %i.abb
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict146, %found.conflict149
  br i1 %conflict.rdx150, label %scalar.ph141.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck143
  %n.vec152 = and i64 %i.aay, 2147483640          ; 3 uses
  %i.abh = load float, ptr %i.aaz, align 4, !tbaa !13, !alias.scope !162
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %i.abh, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index154 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 20
  %wide.load155 = load <4 x float>, ptr %i.abj, align 4, !tbaa !13, !alias.scope !163
  %wide.load156 = load <4 x float>, ptr %i.abk, align 4, !tbaa !13, !alias.scope !163
  %i.abl = fadd <4 x float> %broadcast.splat158, %wide.load155
  %i.abm = fadd <4 x float> %broadcast.splat158, %wide.load156
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %index154 ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16 ; 2 uses
  %wide.load159 = load <4 x float>, ptr %i.abn, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %wide.load160 = load <4 x float>, ptr %i.abo, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %i.abp = fadd <4 x float> %wide.load159, %i.abl
  %i.abq = fadd <4 x float> %wide.load160, %i.abm
  store <4 x float> %i.abp, ptr %i.abn, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  store <4 x float> %i.abq, ptr %i.abo, align 4, !tbaa !13, !alias.scope !164, !noalias !165
  %index.next161 = add nuw i64 %index154, 8       ; 2 uses
  %i.abr = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.abr, label %middle.block162, label %vector.body153, !llvm.loop !109

middle.block162:                                  ; preds = %vector.body153
  %cmp.n163 = icmp eq i64 %n.vec152, %i.aay
  br i1 %cmp.n163, label %.lr.ph60, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %vector.memcheck143, %.lr.ph58, %middle.block162
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.lr.ph58 ], [ %n.vec152, %middle.block162 ] ; 4 uses
  %xtraiter456 = and i64 %i.aay, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol

scalar.ph141.prol:                                ; preds = %scalar.ph141.preheader
  %i.abs = load float, ptr %i.aaz, align 4, !tbaa !13
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.prol
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !13
  %i.abv = fadd float %i.abs, %i.abu
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv172.ph ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !13
  %i.aby = fadd float %i.abx, %i.abv
  store float %i.aby, ptr %i.abw, align 4, !tbaa !13
  br label %scalar.ph141.prol.loopexit

scalar.ph141.prol.loopexit:                       ; preds = %scalar.ph141.prol, %scalar.ph141.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph141.preheader ], [ %indvars.iv.next173.prol, %scalar.ph141.prol ]
  %i.abz = add nsw i64 %i.aay, -1
  %i.aca = icmp eq i64 %indvars.iv172.ph, %i.abz
  br i1 %i.aca, label %.lr.ph60, label %scalar.ph141

.lr.ph60:                                         ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141, %middle.block162
  %i.acb = getelementptr [4 x i8], ptr %i.o, i64 %i.xy ; 6 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %wide.trip.count181 = zext nneg i32 %smax180 to i64 ; 6 uses
  %min.iters.check177 = icmp slt i32 %i.u, 16
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph60
  %i.acc = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %i.acd = getelementptr i8, ptr %.0653.lcssa, i64 %i.acc ; 2 uses
  %i.ace = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.acf = add nsw i64 %i.k, %i.xy
  %i.acg = shl nsw i64 %i.acf, 2
  %i.ach = getelementptr i8, ptr %i.n, i64 %i.acg
  %i.aci = getelementptr i8, ptr %i.ach, i64 4
  %i.acj = getelementptr i8, ptr %i.j, i64 %i.ace
  %i.ack = getelementptr i8, ptr %i.acj, i64 4
  %i.acl = getelementptr i8, ptr %i.j, i64 %i.ace
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.acc
  %i.acn = getelementptr i8, ptr %i.acm, i64 4
  %bound0179 = icmp ult ptr %.0653.lcssa, %i.aci
  %bound1180 = icmp ult ptr %i.acb, %i.acd
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0182 = icmp ult ptr %.0653.lcssa, %i.acn
  %bound1183 = icmp ult ptr %i.ack, %i.acd
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %found.conflict181, %found.conflict184
  br i1 %conflict.rdx185, label %scalar.ph176.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck178
  %n.vec187 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.aco = load float, ptr %i.acb, align 4, !tbaa !13, !alias.scope !166
  %broadcast.splatinsert192 = insertelement <4 x float> poison, float %i.aco, i64 0
  %broadcast.splat193 = shufflevector <4 x float> %broadcast.splatinsert192, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next196, %vector.body188 ] ; 3 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index189 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 20
  %wide.load190 = load <4 x float>, ptr %i.acq, align 4, !tbaa !13, !alias.scope !167
  %wide.load191 = load <4 x float>, ptr %i.acr, align 4, !tbaa !13, !alias.scope !167
  %i.acs = fadd <4 x float> %broadcast.splat193, %wide.load190
  %i.act = fadd <4 x float> %broadcast.splat193, %wide.load191
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %index189 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 2 uses
  %wide.load194 = load <4 x float>, ptr %i.acu, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %wide.load195 = load <4 x float>, ptr %i.acv, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %i.acw = fadd <4 x float> %wide.load194, %i.acs
  %i.acx = fadd <4 x float> %wide.load195, %i.act
  store <4 x float> %i.acw, ptr %i.acu, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  store <4 x float> %i.acx, ptr %i.acv, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %index.next196 = add nuw i64 %index189, 8       ; 2 uses
  %i.acy = icmp eq i64 %index.next196, %n.vec187
  br i1 %i.acy, label %middle.block197, label %vector.body188, !llvm.loop !114

middle.block197:                                  ; preds = %vector.body188
  %cmp.n198 = icmp eq i64 %n.vec187, %wide.trip.count181
  br i1 %cmp.n198, label %.lr.ph62, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck178, %.lr.ph60, %middle.block197
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck178 ], [ 0, %.lr.ph60 ], [ %n.vec187, %middle.block197 ] ; 4 uses
  %xtraiter459 = and i64 %wide.trip.count181, 1
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol

scalar.ph176.prol:                                ; preds = %scalar.ph176.preheader
  %i.acz = load float, ptr %i.acb, align 4, !tbaa !13
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !13
  %i.adc = fadd float %i.acz, %i.adb
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.ade = load float, ptr %i.add, align 4, !tbaa !13
  %i.adf = fadd float %i.ade, %i.adc
  store float %i.adf, ptr %i.add, align 4, !tbaa !13
  br label %scalar.ph176.prol.loopexit

scalar.ph176.prol.loopexit:                       ; preds = %scalar.ph176.prol, %scalar.ph176.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph176.preheader ], [ %indvars.iv.next178.prol, %scalar.ph176.prol ]
  %i.adg = add nsw i64 %wide.trip.count181, -1
  %i.adh = icmp eq i64 %indvars.iv177.ph, %i.adg
  br i1 %i.adh, label %.lr.ph62, label %scalar.ph176

scalar.ph141:                                     ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph141 ], [ %indvars.iv172.unr, %scalar.ph141.prol.loopexit ] ; 3 uses
  %i.adi = load float, ptr %i.aaz, align 4, !tbaa !13
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !13
  %i.adl = fadd float %i.adi, %i.adk
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv172 ; 2 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !13
  %i.ado = fadd float %i.adn, %i.adl
  store float %i.ado, ptr %i.adm, align 4, !tbaa !13
  %i.adp = load float, ptr %i.aaz, align 4, !tbaa !13
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !13
  %i.ads = fadd float %i.adp, %i.adr
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv.next173 ; 2 uses
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !13
  %i.adv = fadd float %i.adu, %i.ads
  store float %i.adv, ptr %i.adt, align 4, !tbaa !13
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %i.aay
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph141, !llvm.loop !115

.lr.ph62:                                         ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176, %middle.block197
  %i.adw = getelementptr [4 x i8], ptr %i.o, i64 %i.xy
  %i.adx = getelementptr i8, ptr %i.adw, i64 -4   ; 3 uses
  %i.ady = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.adz = sub nsw i32 %i.u, %i.ady               ; 2 uses
  %i.aea = zext nneg i32 %i.adz to i64            ; 2 uses
  %i.aeb = add nuw nsw i64 %i.aea, 1              ; 2 uses
  %min.iters.check212 = icmp ult i32 %i.adz, 19
  br i1 %min.iters.check212, label %scalar.ph211.preheader, label %vector.memcheck213

vector.memcheck213:                               ; preds = %.lr.ph62
  %i.aec = shl nuw nsw i64 %i.xy, 2               ; 4 uses
  %i.aed = shl nuw nsw i64 %i.aea, 2              ; 2 uses
  %i.aee = add nsw i64 %i.aec, -4
  %i.aef = sub nsw i64 %i.aee, %i.aed
  %i.aeg = getelementptr i8, ptr %i.rv, i64 %i.aef ; 2 uses
  %i.aeh = getelementptr i8, ptr %i.rv, i64 %i.aec ; 2 uses
  %i.aei = sub nsw i64 %i.aec, %i.aed
  %i.aej = getelementptr i8, ptr %.0653.lcssa, i64 %i.aei
  %i.aek = getelementptr i8, ptr %.0653.lcssa, i64 %i.aec
  %i.ael = getelementptr i8, ptr %i.aek, i64 4
  %bound0214 = icmp ult ptr %i.aeg, %i.ael
  %bound1215 = icmp ult ptr %i.aej, %i.aeh
  %found.conflict216 = and i1 %bound0214, %bound1215
  %bound0217 = icmp ult ptr %i.aeg, %i.acb
  %bound1218 = icmp ult ptr %i.adx, %i.aeh
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %found.conflict216, %found.conflict219
  br i1 %conflict.rdx220, label %scalar.ph211.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck213
  %n.vec222 = and i64 %i.aeb, 4294967292          ; 3 uses
  %broadcast.splatinsert223 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat224 = shufflevector <4 x i32> %broadcast.splatinsert223, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aem = sub nsw i64 %i.xy, %n.vec222
  %i.aen = load float, ptr %i.adx, align 4, !tbaa !13, !alias.scope !170
  %broadcast.splatinsert229 = insertelement <4 x float> poison, float %i.aen, i64 0
  %i.aeo = shufflevector <4 x float> %broadcast.splatinsert229, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next232, %vector.body225 ] ; 2 uses
  %i.aep = sub i64 %i.xy, %index226               ; 3 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %i.aep
  %i.aer = getelementptr inbounds i8, ptr %i.aeq, i64 -12
  %wide.load227 = load <4 x float>, ptr %i.aer, align 4, !tbaa !13, !alias.scope !171
  %i.aes = getelementptr [4 x i8], ptr %i.rv, i64 %i.aep
  %i.aet = getelementptr i8, ptr %i.aes, i64 -16
  %reverse231 = fadd <4 x float> %wide.load227, %i.aeo
  store <4 x float> %reverse231, ptr %i.aet, align 4, !tbaa !13, !alias.scope !172, !noalias !173
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.aep
  %i.aev = getelementptr inbounds i8, ptr %i.aeu, i64 -12
  store <4 x i32> %broadcast.splat224, ptr %i.aev, align 4, !tbaa !7
  %index.next232 = add nuw i64 %index226, 4       ; 2 uses
  %i.aew = icmp eq i64 %index.next232, %n.vec222
  br i1 %i.aew, label %middle.block233, label %vector.body225, !llvm.loop !120

middle.block233:                                  ; preds = %vector.body225
  %cmp.n234 = icmp eq i64 %i.aeb, %n.vec222
  br i1 %cmp.n234, label %.preheader8, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %vector.memcheck213, %.lr.ph62, %middle.block233
  %indvars.iv183.ph = phi i64 [ %i.xy, %vector.memcheck213 ], [ %i.xy, %.lr.ph62 ], [ %i.aem, %middle.block233 ]
  br label %scalar.ph211

scalar.ph176:                                     ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph176 ], [ %indvars.iv177.unr, %scalar.ph176.prol.loopexit ] ; 3 uses
  %i.aex = load float, ptr %i.acb, align 4, !tbaa !13
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !13
  %i.afa = fadd float %i.aex, %i.aez
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !13
  %i.afd = fadd float %i.afc, %i.afa
  store float %i.afd, ptr %i.afb, align 4, !tbaa !13
  %i.afe = load float, ptr %i.acb, align 4, !tbaa !13
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 3 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.1
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !13
  %i.afh = fadd float %i.afe, %i.afg
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv.next178 ; 2 uses
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !13
  %i.afk = fadd float %i.afj, %i.afh
  store float %i.afk, ptr %i.afi, align 4, !tbaa !13
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond182.not.1, label %.lr.ph62, label %scalar.ph176, !llvm.loop !121

.preheader8:                                      ; preds = %scalar.ph211, %middle.block233
  %i.afl = add nsw i32 %i.u, -1
  %i.afm = zext nneg i32 %i.afl to i64            ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.afm
  %i.afo = zext nneg i32 %i.v to i64              ; 4 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.afo
  %i.afq = getelementptr inbounds i8, ptr %i.afp, i64 -8
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.afo
  %i.afs = getelementptr inbounds i8, ptr %i.afr, i64 -8
  %i.aft = add nsw i32 %i.yd, -1                  ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %smax197 = tail call i32 @llvm.smax.i32(i32 %i.to, i32 1) ; 3 uses
  %i.afv = zext nneg i32 %i.yd to i64             ; 2 uses
  %wide.trip.count198 = zext nneg i32 %smax197 to i64 ; 2 uses
  %i.afw = icmp sgt i32 %i.s, 0
  br i1 %i.afw, label %.lr.ph72.lr.ph, label %.loopexit

.lr.ph72.lr.ph:                                   ; preds = %.preheader8
  %i.afx = zext nneg i32 %i.s to i64
  %xtraiter462 = and i64 %i.xy, 1
  %i.afy = and i64 %i.xy, 2147483646
  %i.afz = add nsw i64 %i.afy, -4
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  %lcmp.mod466 = trunc i32 %i.u to i1
  %xtraiter467 = and i64 %wide.trip.count198, 1
  %i.aga = icmp eq i32 %smax197, 1
  %unroll_iter471 = and i64 %wide.trip.count198, 2147483646
  %lcmp.mod468.not = icmp eq i64 %xtraiter467, 0
  %lcmp.mod470 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph211:                                     ; preds = %scalar.ph211.preheader, %scalar.ph211
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph211 ], [ %indvars.iv183.ph, %scalar.ph211.preheader ] ; 5 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv183
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !13
  %i.agd = load float, ptr %i.adx, align 4, !tbaa !13
  %i.age = fadd float %i.agc, %i.agd
  %i.agf = getelementptr [4 x i8], ptr %i.rv, i64 %indvars.iv183
  %i.agg = getelementptr i8, ptr %i.agf, i64 -4
  store float %i.age, ptr %i.agg, align 4, !tbaa !13
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv183
  store i32 %i.s, ptr %i.agh, align 4, !tbaa !7
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.agi = trunc nuw i64 %indvars.iv183 to i32
  %i.agj = icmp sgt i32 %i.agi, 1
  br i1 %i.agj, label %scalar.ph211, label %.preheader8, !llvm.loop !122

bb.z:                                             ; preds = %bb.ar
  %i.agk = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.agl = icmp sgt i32 %i.agk, 0
  br i1 %i.agl, label %.lr.ph72, label %.loopexit, !llvm.loop !123

.lr.ph72:                                         ; preds = %.lr.ph72.lr.ph, %bb.z
  %i.agm = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %i.agk, %bb.z ] ; 3 uses
  %.019 = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %.1, %bb.z ]
  %.061918 = phi float [ -1.000000e+07, %.lr.ph72.lr.ph ], [ %.1620, %bb.z ] ; 2 uses
  %.062517 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2, %bb.z ]
  %.062716 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2629, %bb.z ] ; 2 uses
  %.165215 = phi ptr [ %.0651.lcssa, %.lr.ph72.lr.ph ], [ %.165414, %bb.z ] ; 4 uses
  %.165414 = phi ptr [ %.0653.lcssa, %.lr.ph72.lr.ph ], [ %.165215, %bb.z ] ; 3 uses
  %.065913 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.5, %bb.z ]
  %indvars.iv20012 = phi i64 [ %i.afx, %.lr.ph72.lr.ph ], [ %indvars.iv.next20120, %bb.z ] ; 5 uses
  %indvars.iv.next20120 = add nsw i64 %indvars.iv20012, -1 ; 4 uses
  %indvars21 = trunc i64 %indvars.iv.next20120 to i32 ; 6 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv20012
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !13
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.xy ; 2 uses
  store float %i.ago, ptr %i.agp, align 4, !tbaa !13
  tail call fastcc void @match_calc(ptr noundef %.165215, ptr noundef %i.sd, ptr noundef %i.sc, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.sa, ptr noundef %i.sb, i32 noundef 0)
  %i.agq = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.agq
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !13
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.xy
  store float %i.ags, ptr %i.agt, align 4, !tbaa !13
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.afo
  %.164263 = getelementptr inbounds i8, ptr %i.agu, i64 -4
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.afo
  %i.agw = getelementptr inbounds i8, ptr %i.agv, i64 -8
  %i.agx = load float, ptr %i.agp, align 4, !tbaa !13
  %i.agy = load float, ptr %i.afn, align 4, !tbaa !13
  %i.agz = fadd float %i.agx, %i.agy
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.agq
  %i.ahc = icmp eq i32 %.062716, %indvars21
  %i.ahd = icmp eq i64 %indvars.iv20012, %i.afv   ; 2 uses
  %or.cond718 = or i1 %i.ahd, %i.ahc
  %i.ahe = icmp eq i32 %indvars21, %i.yd
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.afm, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.164270 = phi ptr [ %.164263, %.lr.ph72 ], [ %.1642, %bb.ak ] ; 2 uses
  %.263769 = phi float [ %i.agz, %.lr.ph72 ], [ %.3638, %bb.ak ] ; 3 uses
  %.164068 = phi ptr [ %i.agw, %.lr.ph72 ], [ %i.aio, %bb.ak ] ; 3 uses
  %.164467 = phi ptr [ %i.afq, %.lr.ph72 ], [ %i.aim, %bb.ak ] ; 4 uses
  %.264766 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3648, %bb.ak ] ; 2 uses
  %.165065 = phi ptr [ %i.afs, %.lr.ph72 ], [ %i.ain, %bb.ak ] ; 3 uses
  %i.ahf = load float, ptr %.164270, align 4, !tbaa !13 ; 4 uses
  %i.ahg = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ahg
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !13
  %i.ahj = fadd float %.263769, %i.ahi            ; 2 uses
  %i.ahk = fcmp ogt float %i.ahj, %i.ahf          ; 2 uses
  %.2657 = select i1 %i.ahk, float %i.ahj, float %i.ahf ; 2 uses
  %i.ahl = trunc nuw i64 %i.ahg to i32            ; 3 uses
  %.0621 = select i1 %i.ahk, i32 %.264766, i32 %i.ahl
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !13
  %i.aho = fadd float %i.ahf, %i.ahn              ; 2 uses
  %i.ahp = fcmp ult float %i.aho, %.263769        ; 2 uses
  %.3648 = select i1 %i.ahp, i32 %.264766, i32 %i.ahl
  %.3638 = select i1 %i.ahp, float %.263769, float %i.aho ; 2 uses
  %i.ahq = load float, ptr %.164467, align 4, !tbaa !13 ; 2 uses
  %i.ahr = load float, ptr %i.aha, align 4, !tbaa !13
  %i.ahs = fadd float %i.ahq, %i.ahr              ; 2 uses
  %i.aht = fcmp ogt float %i.ahs, %.2657
  br i1 %i.aht, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ahu = load i32, ptr %.165065, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3658 = phi float [ %i.ahs, %bb.ab ], [ %.2657, %bb.aa ] ; 2 uses
  %.1624 = phi i32 [ %i.ahu, %bb.ab ], [ %i.agm, %bb.aa ]
  %.1622 = phi i32 [ %i.ahl, %bb.ab ], [ %.0621, %bb.aa ]
  %i.ahv = load float, ptr %i.ahb, align 4, !tbaa !13
  %i.ahw = fadd float %i.ahf, %i.ahv              ; 2 uses
  %i.ahx = fcmp ult float %i.ahw, %i.ahq
  br i1 %i.ahx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %i.ahw, ptr %.164467, align 4, !tbaa !13
  store i32 %i.agm, ptr %.165065, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond718, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv186
  store i32 %.1624, ptr %i.ahy, align 4, !tbaa !7
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv186
  store i32 %.1622, ptr %i.ahz, align 4, !tbaa !7
end_hunk_1
