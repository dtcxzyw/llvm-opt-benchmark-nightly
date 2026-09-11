Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-ac?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_ac_chklsig:bb.a
    i8 61, label %bb.au
    i8 60, label %bb.av
    i8 62, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  %i.dx = load i32, ptr %i.b, align 4, !tbaa !59
  %.not221 = icmp eq i32 %.0175, %i.dx
  br i1 %.not221, label %bb.ax, label %.critedge228

bb.av:                                            ; preds = %bb.at
  %i.dy = load i32, ptr %i.b, align 4, !tbaa !59
  %.not220 = icmp ult i32 %.0175, %i.dy
  br i1 %.not220, label %bb.ax, label %.critedge228

bb.aw:                                            ; preds = %bb.at
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !59
  %.not219 = icmp ugt i32 %.0175, %i.dz
  br i1 %.not219, label %bb.ax, label %.critedge228

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.ea = load i32, ptr %i.c, align 4, !tbaa !59  ; 2 uses
  %.not222 = icmp eq i32 %i.ea, 0
  br i1 %.not222, label %bb.ay, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %.not223317 = icmp eq i64 %.0170, 0
  br i1 %.not223317, label %.critedge228, label %.lr.ph320

.lr.ph320:                                        ; preds = %.preheader, %.lr.ph320
  %.1171319 = phi i64 [ %i.ee, %.lr.ph320 ], [ %.0170, %.preheader ] ; 2 uses
  %.1180318 = phi i32 [ %i.ed, %.lr.ph320 ], [ 0, %.preheader ]
  %i.eb = trunc i64 %.1171319 to i32
  %i.ec = and i32 %i.eb, 1
  %i.ed = add i32 %i.ec, %.1180318                ; 2 uses
  %i.ee = lshr i64 %.1171319, 1                   ; 2 uses
  %.not223 = icmp eq i64 %i.ee, 0
  br i1 %.not223, label %._crit_edge321, label %.lr.ph320

._crit_edge321:                                   ; preds = %.lr.ph320
  %i.ef = icmp ult i32 %i.ed, %i.ea
  br i1 %i.ef, label %.critedge228, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge321, %bb.ax
  %i.eg = load i32, ptr %3, align 4, !tbaa !59
  %i.eh = add i32 %i.eg, %.0175
  store i32 %i.eh, ptr %3, align 4, !tbaa !59
  br label %.critedge228

.critedge228:                                     ; preds = %.preheader, %bb.p, %._crit_edge321, %bb.at, %bb.aw, %bb.av, %bb.au, %bb.ap, %bb.aq, %bb.w, %bb.v, %bb.q, %bb.t, %bb.s, %bb.r, %bb.ay, %bb.an, %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.u, %bb.o, %bb.l, %bb.j, %._crit_edge.thread365, %bb.h, %bb.b
  %.0196 = phi i32 [ -1, %._crit_edge.thread365 ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aj ], [ %i.db, %bb.ai ], [ -1, %bb.an ], [ 0, %bb.aw ], [ 0, %bb.ap ], [ 0, %bb.at ], [ 1, %bb.ay ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.w ], [ -1, %bb.z ], [ %i.bn, %bb.j ], [ -1, %bb.l ], [ -1, %bb.o ], [ 0, %bb.q ], [ 1, %bb.x ], [ %.0179, %bb.v ], [ 0, %bb.t ], [ -1, %bb.b ], [ 1, %bb.u ], [ 0, %bb.r ], [ 0, %bb.s ], [ -1, %bb.h ], [ 0, %._crit_edge321 ], [ 1, %bb.aq ], [ %.0179, %bb.p ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0196
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_ac_initdata(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21) #20
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.a, align 8, !tbaa !89
  %.not136 = icmp eq i32 %3, 0                    ; 8 uses
  br i1 %.not136, label %.loopexit152, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = shl i32 %3, 1                            ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #22 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !90
  %.not137 = icmp eq ptr %i.e, null
  br i1 %.not137, label %bb.e, label %.preheader151

.preheader151:                                    ; preds = %bb.d
  %.not161 = icmp eq i32 %i.b, 0
  br i1 %.not161, label %.loopexit152, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader151
  %i.g = add nsw i64 %i.c, -2                     ; 2 uses
  %i.h = lshr exact i64 %i.g, 1
  %i.i = add nuw i64 %i.h, 1                      ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i64 %i.g, 14
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, -8
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.22) #20
  br label %bb.ar

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 -2, ptr %i.k, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 -2, ptr %i.m, align 4, !tbaa !59
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 -2, ptr %i.o, align 4, !tbaa !59
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 -2, ptr %i.q, align 4, !tbaa !59
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 -2, ptr %i.s, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 -2, ptr %i.u, align 4, !tbaa !59
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i32 -2, ptr %i.w, align 4, !tbaa !59
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 -2, ptr %i.y, align 4, !tbaa !59
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.loopexit152.loopexit.unr-lcssa, label %.lr.ph

.loopexit152.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit152, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit152.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.loopexit152.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  store i32 -2, ptr %i.z, align 4, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit152, label %.lr.ph.epil, !llvm.loop !142

.loopexit152:                                     ; preds = %.loopexit152.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader151, %bb.c
  %i.aa = phi ptr [ null, %bb.c ], [ %i.e, %.preheader151 ], [ %i.e, %.lr.ph.epil ], [ %i.e, %.loopexit152.loopexit.unr-lcssa ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.ab, align 8, !tbaa !91
  %.not138 = icmp eq i32 %1, 0                    ; 7 uses
  br i1 %.not138, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit152
  %i.ac = zext i32 %1 to i64
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 8) #24 ; 3 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !92
  %.not139 = icmp eq ptr %i.ad, null
  br i1 %.not139, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.23) #20
  br i1 %.not136, label %bb.ar, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !90
  tail call void @free(ptr noundef %i.af) #20
  br label %bb.ar

bb.i:                                             ; preds = %bb.f, %.loopexit152
  %i.ag = phi ptr [ %i.ad, %bb.f ], [ null, %.loopexit152 ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.ah, align 4, !tbaa !93
  %.not140 = icmp eq i32 %2, 0
  br i1 %.not140, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = zext i32 %2 to i64                      ; 5 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 3 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #22 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !94
  %.not141 = icmp eq ptr %i.ak, null
  br i1 %.not141, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %.not138, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.ag) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not136, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef %i.aa) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.24) #20
  br label %bb.ar

bb.p:                                             ; preds = %bb.j
  %i.am = shl i32 %2, 6
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 4) #24 ; 9 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !58
  %.not142 = icmp eq ptr %i.ao, null
  br i1 %.not142, label %bb.q, label %.preheader150

.preheader150:                                    ; preds = %bb.p
  %.not162 = icmp eq i32 %2, 1                    ; 2 uses
  br i1 %.not162, label %._crit_edge, label %.lr.ph155.preheader

.lr.ph155.preheader:                              ; preds = %.preheader150
  %i.ap = add nsw i64 %i.ai, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %2, 5
  br i1 %min.iters.check, label %.lr.ph155.preheader211, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph155.preheader
  %n.vec = and i64 %i.ap, -4                      ; 3 uses
  %i.aq = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ar = shl <2 x i64> %vec.ind, splat (i64 6)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 6)
  %i.as = add <2 x i64> %step.add, splat (i64 128)
  %i.at = and <2 x i64> %i.ar, splat (i64 4294967232)
  %i.au = and <2 x i64> %i.as, splat (i64 4294967232)
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ao, <2 x i64> %i.at
  %wide.gep198 = getelementptr inbounds nuw [4 x i8], ptr %i.ao, <2 x i64> %i.au
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store <2 x ptr> %wide.gep, ptr %i.aw, align 8, !tbaa !58
  store <2 x ptr> %wide.gep198, ptr %i.ax, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph155.preheader211

.lr.ph155.preheader211:                           ; preds = %.lr.ph155.preheader, %middle.block
  %indvars.iv165.ph = phi i64 [ 1, %.lr.ph155.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph155

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ak) #20
  br i1 %.not138, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef %i.ag) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not136, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef %i.aa) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.25) #20
  br label %bb.ar

.lr.ph155:                                        ; preds = %.lr.ph155.preheader211, %.lr.ph155
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %.lr.ph155 ], [ %indvars.iv165.ph, %.lr.ph155.preheader211 ] ; 3 uses
  %i.az = shl i64 %indvars.iv165, 6
  %i.ba = and i64 %i.az, 4294967232
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv165
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !58
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next166, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph155, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph155, %middle.block, %.preheader150
  %i.bd = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 1) #24 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !95
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %bb.v, label %bb.z

bb.v:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ao) #20
  tail call void @free(ptr noundef nonnull %i.ak) #20
  br i1 %.not138, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef %i.ag) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not136, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef %i.aa) #20
  br label %bb.ar

bb.z:                                             ; preds = %._crit_edge
  %i.bg = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !96
  %.not143 = icmp eq ptr %i.bg, null
  br i1 %.not143, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.bd) #20
  tail call void @free(ptr noundef nonnull %i.ao) #20
  tail call void @free(ptr noundef nonnull %i.ak) #20
  br i1 %.not138, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef %i.ag) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not136, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef %i.aa) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.26) #20
  br label %bb.ar

bb.af:                                            ; preds = %bb.z
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.aj) #22 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !97
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.aj) #22 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !98
  %.not144 = icmp eq ptr %i.bi, null
  %.not145 = icmp eq ptr %i.bk, null
  %or.cond = or i1 %.not144, %.not145
  br i1 %or.cond, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.bg) #20
  tail call void @free(ptr noundef %i.bi) #20
  tail call void @free(ptr noundef %i.bk) #20
  tail call void @free(ptr noundef nonnull %i.bd) #20
  tail call void @free(ptr noundef nonnull %i.ao) #20
  tail call void @free(ptr noundef nonnull %i.ak) #20
  br i1 %.not138, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @free(ptr noundef %i.ag) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.not136, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef %i.aa) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.27) #20
  br label %bb.ar

bb.al:                                            ; preds = %bb.af
  %i.bm = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 4) #24 ; 20 uses
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !58
  %i.bn = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 4) #24 ; 20 uses
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !58
  %.not146 = icmp eq ptr %i.bm, null
  %.not147 = icmp eq ptr %i.bn, null
  %or.cond148 = or i1 %.not146, %.not147
  br i1 %or.cond148, label %bb.am, label %vector.body201

vector.body201:                                   ; preds = %bb.al
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> splat (i32 -2), ptr %i.bm, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.bo, align 4, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> splat (i32 -2), ptr %i.bn, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.bp, align 4, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store <4 x i32> splat (i32 -2), ptr %i.bq, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.br, align 4, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store <4 x i32> splat (i32 -2), ptr %i.bs, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.bt, align 4, !tbaa !59
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  store <4 x i32> splat (i32 -2), ptr %i.bu, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.bv, align 4, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <4 x i32> splat (i32 -2), ptr %i.bw, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.bx, align 4, !tbaa !59
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  store <4 x i32> splat (i32 -2), ptr %i.by, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.bz, align 4, !tbaa !59
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <4 x i32> splat (i32 -2), ptr %i.ca, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cb, align 4, !tbaa !59
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  store <4 x i32> splat (i32 -2), ptr %i.cc, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cd, align 4, !tbaa !59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  store <4 x i32> splat (i32 -2), ptr %i.ce, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cf, align 4, !tbaa !59
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  store <4 x i32> splat (i32 -2), ptr %i.cg, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.ch, align 4, !tbaa !59
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 176
  store <4 x i32> splat (i32 -2), ptr %i.ci, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cj, align 4, !tbaa !59
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  store <4 x i32> splat (i32 -2), ptr %i.ck, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cl, align 4, !tbaa !59
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  store <4 x i32> splat (i32 -2), ptr %i.cm, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cn, align 4, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  store <4 x i32> splat (i32 -2), ptr %i.co, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cp, align 4, !tbaa !59
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 224
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  store <4 x i32> splat (i32 -2), ptr %i.cq, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cr, align 4, !tbaa !59
  br i1 %.not162, label %.loopexit, label %.lr.ph159.preheader

bb.am:                                            ; preds = %bb.al
  tail call void @free(ptr noundef nonnull %i.bg) #20
  tail call void @free(ptr noundef %i.bm) #20
  tail call void @free(ptr noundef %i.bn) #20
  tail call void @free(ptr noundef nonnull %i.bi) #20
  tail call void @free(ptr noundef nonnull %i.bk) #20
  tail call void @free(ptr noundef nonnull %i.bd) #20
  tail call void @free(ptr noundef nonnull %i.ao) #20
  tail call void @free(ptr noundef nonnull %i.ak) #20
  br i1 %.not138, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @free(ptr noundef %i.ag) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %.not136, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @free(ptr noundef %i.aa) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28) #20
  br label %bb.ar

.lr.ph159.preheader:                              ; preds = %vector.body201
  %wide.trip.count179 = zext i32 %2 to i64
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %.lr.ph159
  %indvars.iv176 = phi i64 [ 1, %.lr.ph159.preheader ], [ %indvars.iv.next177, %.lr.ph159 ] ; 4 uses
  %i.cs = shl i64 %indvars.iv176, 6
  %i.ct = and i64 %i.cs, 4294967232               ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ct ; 17 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv176
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ct ; 17 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv176
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <4 x i32> splat (i32 -2), ptr %i.cu, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cy, align 4, !tbaa !59
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> splat (i32 -2), ptr %i.cw, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.cz, align 4, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store <4 x i32> splat (i32 -2), ptr %i.da, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.db, align 4, !tbaa !59
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <4 x i32> splat (i32 -2), ptr %i.dc, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dd, align 4, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  store <4 x i32> splat (i32 -2), ptr %i.de, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.df, align 4, !tbaa !59
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  store <4 x i32> splat (i32 -2), ptr %i.dg, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dh, align 4, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store <4 x i32> splat (i32 -2), ptr %i.di, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dj, align 4, !tbaa !59
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  store <4 x i32> splat (i32 -2), ptr %i.dk, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dl, align 4, !tbaa !59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 144
  store <4 x i32> splat (i32 -2), ptr %i.dm, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dn, align 4, !tbaa !59
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  store <4 x i32> splat (i32 -2), ptr %i.do, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dp, align 4, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cu, i64 160
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cu, i64 176
  store <4 x i32> splat (i32 -2), ptr %i.dq, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dr, align 4, !tbaa !59
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 176
  store <4 x i32> splat (i32 -2), ptr %i.ds, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dt, align 4, !tbaa !59
  %i.du = getelementptr inbounds nuw i8, ptr %i.cu, i64 192
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cu, i64 208
  store <4 x i32> splat (i32 -2), ptr %i.du, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dv, align 4, !tbaa !59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  store <4 x i32> splat (i32 -2), ptr %i.dw, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dx, align 4, !tbaa !59
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cu, i64 224
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 240
  store <4 x i32> splat (i32 -2), ptr %i.dy, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.dz, align 4, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 224
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  store <4 x i32> splat (i32 -2), ptr %i.ea, align 4, !tbaa !59
  store <4 x i32> splat (i32 -2), ptr %i.eb, align 4, !tbaa !59
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph159

.loopexit:                                        ; preds = %.lr.ph159, %vector.body201, %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i32> splat (i32 -2), ptr %i.ec, align 8, !tbaa !59
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i32> splat (i32 -2), ptr %i.ed, align 8, !tbaa !59
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i32> splat (i32 -2), ptr %i.ee, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <4 x i32> splat (i32 -2), ptr %i.ef, align 8, !tbaa !59
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x i32> splat (i32 -2), ptr %i.eg, align 8, !tbaa !59
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <4 x i32> splat (i32 -2), ptr %i.eh, align 8, !tbaa !59
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 168
  store <4 x i32> splat (i32 -2), ptr %i.ei, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x i32> splat (i32 -2), ptr %i.ej, align 8, !tbaa !59
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 1, ptr %i.ek, align 8, !tbaa !99
  br label %bb.ar

bb.ar:                                            ; preds = %bb.x, %bb.y, %bb.g, %bb.h, %.loopexit, %bb.aq, %bb.ak, %bb.ae, %bb.u, %bb.o, %bb.e, %bb.b
  %.0131 = phi i32 [ 20, %bb.g ], [ 0, %.loopexit ], [ 20, %bb.aq ], [ 20, %bb.ak ], [ 20, %bb.ae ], [ 20, %bb.u ], [ 20, %bb.o ], [ 2, %bb.b ], [ 20, %bb.e ], [ 20, %bb.h ], [ 20, %bb.y ], [ 20, %bb.x ]
  ret i32 %.0131
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define i32 @cli_ac_caloff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %.not36 = icmp eq i32 %i.b, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph.split.us

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.c, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100
  %.not3647 = icmp eq i32 %i.f, 0
  br i1 %.not3647, label %.loopexit, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !90
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv42
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 116
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.q
  store i32 -2, ptr %i.r, align 4, !tbaa !59
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !100
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next43, %i.t
  br i1 %i.u, label %bb.c, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %i.v = phi ptr [ %.pre, %.lr.ph.split.preheader ], [ %i.am, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 5 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 116 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !103
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ah
  %i.aj = tail call i32 @cli_caloff(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.z, ptr noundef nonnull %i.aa, ptr noundef %i.ae, ptr noundef %i.ai) #20 ; 2 uses
  %.not32 = icmp eq i32 %i.aj, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.29, ptr noundef %i.al) #20
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph.split
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !90  ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !102
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59 ; 2 uses
  %.not33 = icmp eq i32 %i.aq, -2
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 18
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !30
  %i.at = zext i16 %i.as to i32
  %i.au = add i32 %i.aq, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = load i64, ptr %2, align 8, !tbaa !152
  %i.ax = icmp slt i64 %i.aw, %i.av
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -2, ptr %i.ap, align 4, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !100
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph.split, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.c, %.thread, %bb.b, %bb.d
  %.028 = phi i32 [ %i.aj, %bb.d ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %bb.h ]
  ret i32 %.028
}

declare i32 @cli_caloff(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @cli_ac_freedata(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not51 = icmp eq i32 %i.b, 0
  br i1 %.not51, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.c = phi i32 [ %i.k, %bb.d ], [ %i.b, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not57 = icmp eq ptr %i.f, null
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.g) #20
  %i.h = load ptr, ptr %0, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.j) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi i32 [ %i.c, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.n) #20
  store ptr null, ptr %0, align 8, !tbaa !92
  store i32 0, ptr %i.a, align 8, !tbaa !91
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !93   ; 2 uses
end_hunk_0
