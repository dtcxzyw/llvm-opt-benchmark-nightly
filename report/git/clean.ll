Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/clean?download=true
inline.NumInlined: 81
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@list_and_choose:bb.a
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = and i8 %i.ez, 2
  %.not69.i = icmp eq i8 %i.fa, 0
  br i1 %.not69.i, label %sub_0.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.154.i = phi i32 [ %.053.i, %bb.al ], [ 1, %bb.ak ]
  %.1.i79 = phi i32 [ %.052.i, %bb.al ], [ 0, %bb.ak ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i70, i64 1
  br label %bb.aj, !llvm.loop !120

bb.an:                                            ; preds = %bb.aj
  %i.fc = icmp eq i32 %.052.i, 0
  br i1 %i.fc, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fd = call i64 @__isoc23_strtol(ptr noundef nonnull %.059.i, ptr noundef null, i32 noundef 10) #15, !inline_history !121
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  br label %find_unique.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ff = icmp eq i32 %.053.i, 0
  br i1 %i.ff, label %sub_0.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = call i64 @__isoc23_strtol(ptr noundef nonnull %.059.i, ptr noundef null, i32 noundef 10) #15, !inline_history !121
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.059.i, i32 noundef 45) #17
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !64
  %.not74.i = icmp eq i8 %i.fk, 0
  br i1 %.not74.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load i32, ptr %i.a, align 4, !tbaa !60
  br label %find_unique.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.fm = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fj, ptr noundef null, i32 noundef 10) #15, !inline_history !121
  %i.fn = trunc i64 %i.fm to i32
  br label %find_unique.exit.i

sub_0.i:                                          ; preds = %bb.al, %bb.ak, %bb.ap
  %i.fo = load i8, ptr %.059.i, align 1           ; 2 uses
  %.not27.i = icmp eq i8 %i.fo, 42
  br i1 %.not27.i, label %.thread4.tail.i, label %.thread4.tail.thread.i

.thread4.tail.i:                                  ; preds = %sub_0.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.059.i, i64 1
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.at, label %.thread4.tail.thread.i

bb.at:                                            ; preds = %.thread4.tail.i
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !60
  br label %find_unique.exit.i

.thread4.tail.thread.i:                           ; preds = %.thread4.tail.i, %sub_0.i
  %i.ft = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.059.i) #17 ; 3 uses
  %i.fu = load i32, ptr %1, align 8, !tbaa !58
  switch i32 %i.fu, label %bb.au [
    i32 2, label %bb.av
    i32 1, label %bb.ba
  ]

bb.au:                                            ; preds = %.thread4.tail.thread.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.72) #16
  unreachable

bb.av:                                            ; preds = %.thread4.tail.thread.i
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !60  ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph46.i.i, label %find_unique.exit.thread.i

.lr.ph46.i.i:                                     ; preds = %bb.av
  %i.fx = load ptr, ptr %i.j, align 8, !tbaa !59  ; 2 uses
  %i.fy = and i64 %i.ft, 4294967295
  %i.fz = icmp eq i64 %i.fy, 1
  %sext32.i.i = shl i64 %i.ft, 32
  %i.ga = ashr exact i64 %sext32.i.i, 32          ; 2 uses
  br i1 %i.fz, label %.lr.ph46.split.us.split.i.i, label %.lr.ph46.split.i.i

.lr.ph46.split.us.split.i.i:                      ; preds = %.lr.ph46.i.i, %bb.aw
  %.045.us.i.i = phi i32 [ %.1.us.i.i, %bb.aw ], [ 0, %.lr.ph46.i.i ] ; 2 uses
  %.02744.us.i.i = phi i32 [ %i.gg, %bb.aw ], [ 0, %.lr.ph46.i.i ] ; 2 uses
  %.03043.us.i.i = phi ptr [ %i.gh, %bb.aw ], [ %i.fx, %.lr.ph46.i.i ] ; 3 uses
  %i.gb = load i8, ptr %.03043.us.i.i, align 8, !tbaa !133
  %i.gc = icmp eq i8 %i.fo, %i.gb
  br i1 %i.gc, label %.split.us.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph46.split.us.split.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.03043.us.i.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !131
  %i.gf = call i32 @strncasecmp(ptr noundef nonnull readonly %.059.i, ptr noundef %i.ge, i64 noundef %i.ga) #17
  %.not33.us.i.i = icmp eq i32 %i.gf, 0
  %.not34.us.i.i = icmp eq i32 %.045.us.i.i, 0
  %i.gg = add nuw nsw i32 %.02744.us.i.i, 1       ; 3 uses
  %spec.select.i.i = select i1 %.not34.us.i.i, i32 %i.gg, i32 -1
  %.1.us.i.i = select i1 %.not33.us.i.i, i32 %spec.select.i.i, i32 %.045.us.i.i ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.03043.us.i.i, i64 32
  %exitcond57.not.i.i = icmp eq i32 %i.gg, %i.fv
  br i1 %exitcond57.not.i.i, label %find_unique.exit.i, label %.lr.ph46.split.us.split.i.i, !llvm.loop !122

.lr.ph46.split.i.i:                               ; preds = %.lr.ph46.i.i, %bb.az
  %.045.i.i = phi i32 [ %.1.i.i, %bb.az ], [ 0, %.lr.ph46.i.i ] ; 2 uses
  %.02744.i.i = phi i32 [ %.pre-phi.i.i78, %bb.az ], [ 0, %.lr.ph46.i.i ] ; 2 uses
  %.03043.i.i = phi ptr [ %i.gn, %bb.az ], [ %i.fx, %.lr.ph46.i.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.03043.i.i, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !131
  %i.gk = call i32 @strncasecmp(ptr noundef nonnull readonly %.059.i, ptr noundef %i.gj, i64 noundef %i.ga) #17
  %.not33.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not33.i.i, label %bb.ax, label %.lr.ph46.split._crit_edge.i.i

.lr.ph46.split._crit_edge.i.i:                    ; preds = %.lr.ph46.split.i.i
  %.pre.i.i77 = add nuw nsw i32 %.02744.i.i, 1
  br label %bb.az

.split.us.i.i:                                    ; preds = %.lr.ph46.split.us.split.i.i
  %i.gl = add nuw nsw i32 %.02744.us.i.i, 1       ; 2 uses
  br label %find_unique.exit.i

bb.ax:                                            ; preds = %.lr.ph46.split.i.i
  %.not34.i.i = icmp eq i32 %.045.i.i, 0
  br i1 %.not34.i.i, label %bb.ay, label %find_unique.exit.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.gm = add nuw nsw i32 %.02744.i.i, 1          ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph46.split._crit_edge.i.i
  %.pre-phi.i.i78 = phi i32 [ %.pre.i.i77, %.lr.ph46.split._crit_edge.i.i ], [ %i.gm, %bb.ay ] ; 2 uses
  %.1.i.i = phi i32 [ %.045.i.i, %.lr.ph46.split._crit_edge.i.i ], [ %i.gm, %bb.ay ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.03043.i.i, i64 32
  %exitcond56.not.i.i = icmp eq i32 %.pre-phi.i.i78, %i.fv
  br i1 %exitcond56.not.i.i, label %find_unique.exit.i, label %.lr.ph46.split.i.i, !llvm.loop !122

bb.ba:                                            ; preds = %.thread4.tail.thread.i
  %i.go = load i32, ptr %i.a, align 4, !tbaa !60  ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i, label %find_unique.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.ba
  %i.gq = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !47
  %sext.i.i = shl i64 %i.ft, 32
  %i.gs = ashr exact i64 %sext.i.i, 32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.be, %.lr.ph.i.i
  %.240.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.3.i.i, %bb.be ] ; 2 uses
  %.12839.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.pre-phi59.i.i, %bb.be ] ; 2 uses
  %.02938.i.i = phi ptr [ %i.gr, %.lr.ph.i.i ], [ %i.gw, %bb.be ] ; 2 uses
  %i.gt = load ptr, ptr %.02938.i.i, align 8, !tbaa !49
  %i.gu = call i32 @strncasecmp(ptr noundef nonnull readonly %.059.i, ptr noundef %i.gt, i64 noundef %i.gs) #17
  %.not.i.i73 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i73, label %bb.bc, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bb
  %.pre58.i.i = add nuw nsw i32 %.12839.i.i, 1
  br label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %.not31.i.i = icmp eq i32 %.240.i.i, 0
  br i1 %.not31.i.i, label %bb.bd, label %find_unique.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.gv = add nuw nsw i32 %.12839.i.i, 1          ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i
  %.pre-phi59.i.i = phi i32 [ %.pre58.i.i, %._crit_edge.i.i ], [ %i.gv, %bb.bd ] ; 2 uses
  %.3.i.i = phi i32 [ %.240.i.i, %._crit_edge.i.i ], [ %i.gv, %bb.bd ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.02938.i.i, i64 16
  %exitcond.not.i.i = icmp eq i32 %.pre-phi59.i.i, %i.go
  br i1 %exitcond.not.i.i, label %find_unique.exit.i, label %bb.bb, !llvm.loop !123

find_unique.exit.i:                               ; preds = %bb.be, %bb.az, %bb.aw, %.split.us.i.i, %bb.at, %bb.as, %bb.ar, %bb.ao
  %.057.i = phi i32 [ %i.fe, %bb.ao ], [ %i.fh, %bb.as ], [ %i.fh, %bb.ar ], [ 1, %bb.at ], [ %i.gl, %.split.us.i.i ], [ %.1.us.i.i, %bb.aw ], [ %.1.i.i, %bb.az ], [ %.3.i.i, %bb.be ] ; 5 uses
  %.056.i = phi i32 [ %i.fe, %bb.ao ], [ %i.fn, %bb.as ], [ %i.fl, %bb.ar ], [ %i.fs, %bb.at ], [ %i.gl, %.split.us.i.i ], [ %.1.us.i.i, %bb.aw ], [ %.1.i.i, %bb.az ], [ %.3.i.i, %bb.be ] ; 6 uses
  %i.gx = icmp slt i32 %.056.i, 1
  %i.gy = icmp slt i32 %.057.i, 1
  %or.cond.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %or.cond.i, label %find_unique.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %find_unique.exit.i
  %i.gz = load i32, ptr %i.a, align 4, !tbaa !60
  %i.ha = icmp sle i32 %.056.i, %i.gz
  %i.hb = icmp samesign ule i32 %.057.i, %.056.i  ; 2 uses
  %.not75.i = icmp eq i32 %.057.i, %.056.i
  %i.hc = select i1 %.not.i68, i1 %i.hb, i1 %.not75.i
  %or.cond79.i = select i1 %i.ha, i1 %i.hc, i1 false
  br i1 %or.cond79.i, label %.preheader.i, label %find_unique.exit.thread.i

.preheader.i:                                     ; preds = %bb.bf
  br i1 %i.hb, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.hd = zext nneg i32 %.057.i to i64            ; 3 uses
  %7 = add nuw i32 %.056.i, 1
  %i.he = sub nuw nsw i32 %.056.i, %.057.i        ; 2 uses
  %narrow = add nuw i32 %i.he, 1
  %i.hf = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check215 = icmp ult i32 %i.he, 7
  br i1 %min.iters.check215, label %.lr.ph.i74.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph.preheader.i
  %n.vec217 = and i64 %i.hf, 4294967288           ; 3 uses
  %i.hg = add nuw nsw i64 %n.vec217, %i.hd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.058.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.f, i64 %i.hd
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next220, %vector.body218 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index219 ; 2 uses
  %i.hh = getelementptr i8, ptr %gep, i64 -4
  %i.hi = getelementptr i8, ptr %gep, i64 12
  store <4 x i32> %broadcast.splat, ptr %i.hh, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat, ptr %i.hi, align 4, !tbaa !16
  %index.next220 = add nuw i64 %index219, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next220, %n.vec217
  br i1 %i.hj, label %middle.block221, label %vector.body218, !llvm.loop !124

middle.block221:                                  ; preds = %vector.body218
  %cmp.n222 = icmp eq i64 %n.vec217, %i.hf
  br i1 %cmp.n222, label %.loopexit.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block221
  %indvars.iv.i75.ph = phi i64 [ %i.hd, %.lr.ph.preheader.i ], [ %i.hg, %middle.block221 ]
  br label %.lr.ph.i74

find_unique.exit.thread.i:                        ; preds = %bb.bc, %bb.ax, %bb.bf, %find_unique.exit.i, %bb.ba, %bb.av
  %i.hk = load i32, ptr @clean_use_color, align 4, !tbaa !16
  %i.hl = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.hk) #15
  %.0.i.i.i71 = select i1 %i.hl, ptr getelementptr inbounds nuw (i8, ptr @clean_colors, i64 375), ptr @.str.19
  %i.hm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.0.i.i.i71) ; 0 uses
  %i.hn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !16
  %.not4.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %find_unique.exit.thread.i
  %i.ho = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #15
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.bg, %find_unique.exit.thread.i
  %.0.i.i72 = phi ptr [ %i.ho, %bb.bg ], [ @.str.71, %find_unique.exit.thread.i ]
  %i.hp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i.i72, ptr noundef nonnull %.059.i) ; 0 uses
  %i.hq = load i32, ptr @clean_use_color, align 4, !tbaa !16
  %i.hr = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.hq) #15
  %.0.i.i80.i = select i1 %i.hr, ptr @clean_colors, ptr @.str.19
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.0.i.i80.i) ; 0 uses
  br label %.loopexit.i

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i76, %.lr.ph.i74 ], [ %indvars.iv.i75.ph, %.lr.ph.i74.preheader ] ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.i75
  %i.hu = getelementptr i8, ptr %i.ht, i64 -4
  store i32 %.058.i, ptr %i.hu, align 4, !tbaa !16
  %indvars.iv.next.i76 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %i.hv = trunc i64 %indvars.iv.next.i76 to i32
  %exitcond.not.i = icmp eq i32 %7, %i.hv
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i74, !llvm.loop !125

.loopexit.i:                                      ; preds = %.lr.ph.i74, %middle.block221, %_.exit.i, %.preheader.i, %.lr.ph120
  %i.hw = getelementptr inbounds nuw i8, ptr %.06321.i119, i64 16 ; 2 uses
  %i.hx = load ptr, ptr %2, align 8, !tbaa !47
  %i.hy = load i64, ptr %i.s, align 8, !tbaa !46
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = icmp ult ptr %i.hw, %i.hz
  br i1 %i.ia, label %.lr.ph120, label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit.i, %bb.ag
  call void @string_list_clear(ptr noundef nonnull %2, i32 noundef 0) #15
  %i.ib = load i32, ptr %i.a, align 4, !tbaa !60  ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph26.preheader.i, label %parse_choice.exit.thread

.lr.ph26.preheader.i:                             ; preds = %.critedge.i
  %wide.trip.count.i = zext nneg i32 %i.ib to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ib, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.if, %vector.body ]
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load = load <4 x i32>, ptr %i.id, align 4, !tbaa !16
  %wide.load213 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !16
  %i.if = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ig = add <4 x i32> %wide.load213, %vec.phi212 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ig, %i.if
  %i.ii = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %parse_choice.exit, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %.lr.ph26.preheader.i, %middle.block
  %indvars.iv35.i.ph = phi i64 [ 0, %.lr.ph26.preheader.i ], [ %n.vec, %middle.block ]
  %.06224.i.ph = phi i32 [ 0, %.lr.ph26.preheader.i ], [ %i.ii, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.lr.ph26.i ], [ %indvars.iv35.i.ph, %.lr.ph26.i.preheader ] ; 2 uses
  %.06224.i = phi i32 [ %i.il, %.lr.ph26.i ], [ %.06224.i.ph, %.lr.ph26.i.preheader ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv35.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !16
  %i.il = add nsw i32 %i.ik, %.06224.i            ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count.i
  br i1 %exitcond.not.i.a, label %parse_choice.exit, label %.lr.ph26.i, !llvm.loop !127

parse_choice.exit:                                ; preds = %.lr.ph26.i, %middle.block
  %.lcssa204 = phi i32 [ %i.ii, %middle.block ], [ %i.il, %.lr.ph26.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.im = load i32, ptr %i.o, align 8, !tbaa !56  ; 2 uses
  %i.in = and i32 %i.im, 1
  %.not53 = icmp eq i32 %i.in, 0
  br i1 %.not53, label %bb.bi, label %bb.bh

parse_choice.exit.thread:                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.io = load i32, ptr %i.o, align 8, !tbaa !56  ; 2 uses
  %i.ip = and i32 %i.io, 1
  %.not5386 = icmp eq i32 %i.ip, 0
  br i1 %.not5386, label %bb.bi, label %.outer.backedge

.outer.backedge:                                  ; preds = %parse_choice.exit.thread, %bb.bi, %bb.bh
  %.044.ph.be = phi i32 [ %.062.lcssa.i89, %bb.bi ], [ 0, %bb.bh ], [ 0, %parse_choice.exit.thread ]
  br label %.outer

bb.bh:                                            ; preds = %parse_choice.exit
  %.not55 = icmp eq i32 %.lcssa204, 0
  br i1 %.not55, label %.outer.backedge, label %.thread92

bb.bi:                                            ; preds = %parse_choice.exit.thread, %parse_choice.exit
  %i.iq = phi i32 [ %i.io, %parse_choice.exit.thread ], [ %i.im, %parse_choice.exit ]
  %.062.lcssa.i89 = phi i32 [ 0, %parse_choice.exit.thread ], [ %.lcssa204, %parse_choice.exit ] ; 2 uses
  %i.ir = and i32 %i.iq, 2
  %.not54 = icmp eq i32 %i.ir, 0
  br i1 %.not54, label %.outer.backedge, label %.loopexit

.outer:                                           ; preds = %.outer.backedge, %.preheader99
  %.044.ph = phi i32 [ 0, %.preheader99 ], [ %.044.ph.be, %.outer.backedge ] ; 2 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.ae
  %i.is = call ptr @xmalloc(i64 noundef 4) #15    ; 2 uses
  store i32 -1, ptr %i.is, align 4, !tbaa !16
  br label %bb.bm

.loopexit:                                        ; preds = %.tail.thread, %bb.bi, %print_highlight_menu_stuff.exit
  %.145 = phi i32 [ %.044.ph, %print_highlight_menu_stuff.exit ], [ %.044.ph, %.tail.thread ], [ %.062.lcssa.i89, %bb.bi ] ; 2 uses
  %.not57 = icmp eq i32 %.145, 0
  br i1 %.not57, label %.preheader, label %.thread92

.preheader:                                       ; preds = %.loopexit
  %i.it = load i32, ptr %i.a, align 4, !tbaa !60  ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %.lr.ph123.preheader, label %.thread92

.lr.ph123.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.it to i64   ; 3 uses
  %min.iters.check225 = icmp ult i32 %i.it, 8
  br i1 %min.iters.check225, label %.lr.ph123.preheader240, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph123.preheader
  %n.vec227 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next234, %vector.body228 ] ; 2 uses
  %vec.phi230 = phi <4 x i32> [ zeroinitializer, %vector.ph226 ], [ %i.ix, %vector.body228 ]
  %vec.phi231 = phi <4 x i32> [ zeroinitializer, %vector.ph226 ], [ %i.iy, %vector.body228 ]
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index229 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %wide.load232 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !16
  %wide.load233 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !16
  %i.ix = add <4 x i32> %wide.load232, %vec.phi230 ; 2 uses
  %i.iy = add <4 x i32> %wide.load233, %vec.phi231 ; 2 uses
  %index.next234 = add nuw i64 %index229, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.iz, label %middle.block235, label %vector.body228, !llvm.loop !128

middle.block235:                                  ; preds = %vector.body228
  %bin.rdx236 = add <4 x i32> %i.iy, %i.ix
  %i.ja = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx236) ; 2 uses
  %cmp.n237 = icmp eq i64 %n.vec227, %wide.trip.count
  br i1 %cmp.n237, label %.thread92, label %.lr.ph123.preheader240

.lr.ph123.preheader240:                           ; preds = %.lr.ph123.preheader, %middle.block235
  %indvars.iv148.ph = phi i64 [ 0, %.lr.ph123.preheader ], [ %n.vec227, %middle.block235 ]
  %.246121.ph = phi i32 [ 0, %.lr.ph123.preheader ], [ %i.ja, %middle.block235 ]
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader240, %.lr.ph123
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %.lr.ph123 ], [ %indvars.iv148.ph, %.lr.ph123.preheader240 ] ; 2 uses
  %.246121 = phi i32 [ %i.jd, %.lr.ph123 ], [ %.246121.ph, %.lr.ph123.preheader240 ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv148
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !16
  %i.jd = add nsw i32 %i.jc, %.246121             ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count
  br i1 %exitcond.not, label %.thread92, label %.lr.ph123, !llvm.loop !129

.thread92:                                        ; preds = %bb.bh, %.lr.ph123, %middle.block235, %.preheader, %.loopexit
  %.3 = phi i32 [ %.145, %.loopexit ], [ %i.jd, %.lr.ph123 ], [ 0, %.preheader ], [ %i.ja, %middle.block235 ], [ %.lcssa204, %bb.bh ] ; 3 uses
  %i.je = sext i32 %.3 to i64                     ; 2 uses
  %i.jf = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.je, i64 1) ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  br i1 %i.jg, label %bb.bj, label %st_add.exit

bb.bj:                                            ; preds = %.thread92
  call void (ptr, ...) @die(ptr noundef nonnull @.str.73, i64 noundef range(i64 -2147483648, 2147483648) %i.je, i64 noundef 1) #16
  unreachable

st_add.exit:                                      ; preds = %.thread92
  %i.jh = extractvalue { i64, i1 } %i.jf, 0
  %i.ji = call ptr @xcalloc(i64 noundef %i.jh, i64 noundef 4) #15 ; 3 uses
  %i.jj = load i32, ptr %i.a, align 4, !tbaa !60  ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  %i.jl = icmp sgt i32 %.3, 0
  %i.jm = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %i.jm, label %.lr.ph126, label %._crit_edge

.lr.ph126:                                        ; preds = %st_add.exit, %bb.bl
  %i.jn = phi i32 [ %i.ju, %bb.bl ], [ %i.jj, %st_add.exit ]
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.bl ], [ 0, %st_add.exit ] ; 3 uses
  %.0125 = phi i32 [ %.1, %bb.bl ], [ 0, %st_add.exit ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv151
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !16
  %.not58 = icmp eq i32 %i.jp, 0
  br i1 %.not58, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph126
  %i.jq = add nsw i32 %.0125, 1
  %i.jr = sext i32 %.0125 to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jr
  %i.jt = trunc nuw nsw i64 %indvars.iv151 to i32
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !16
  %.pre = load i32, ptr %i.a, align 4, !tbaa !60
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph126, %bb.bk
  %i.ju = phi i32 [ %.pre, %bb.bk ], [ %i.jn, %.lr.ph126 ] ; 2 uses
  %.1 = phi i32 [ %i.jq, %bb.bk ], [ %.0125, %.lr.ph126 ] ; 3 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next152, %i.jv
  %i.jx = icmp slt i32 %.1, %.3
  %i.jy = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %i.jy, label %.lr.ph126, label %._crit_edge.loopexit, !llvm.loop !130

end_hunk_0
