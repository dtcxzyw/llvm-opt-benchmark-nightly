Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlnRead?download=true
inline.NumInlined: 1040
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Rtl_ReduceInverse:bb.a
  %indvars.iv.i228 = phi i64 [ 0, %.lr.ph.i226 ], [ %indvars.iv.next.i229, %bb.am ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i228
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !63
  %i.fw = icmp eq i32 %i.fv, %i.fq
  br i1 %i.fw, label %Vec_IntPushUnique.exit, label %bb.am

._crit_edge.i217:                                 ; preds = %bb.am, %bb.al
  %i.fx = load i32, ptr %i.k, align 8, !tbaa !44
  %i.fy = icmp eq i32 %i.fr, %i.fx
  br i1 %i.fy, label %bb.ao, label %._crit_edge.i217.Vec_IntPush.exit.i_crit_edge

._crit_edge.i217.Vec_IntPush.exit.i_crit_edge:    ; preds = %._crit_edge.i217
  %.pre337 = load ptr, ptr %i.n, align 8, !tbaa !43
  br label %Vec_IntPush.exit.i

bb.ao:                                            ; preds = %._crit_edge.i217
  %i.fz = icmp slt i32 %i.fr, 16
  br i1 %i.fz, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ga = load ptr, ptr %i.n, align 8, !tbaa !43  ; 2 uses
  %.not9.i.i.i224 = icmp eq ptr %i.ga, null
  br i1 %.not9.i.i.i224, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ga, i64 noundef 64) #37
  br label %Vec_IntGrow.exit11.sink.split.i.i221

bb.ar:                                            ; preds = %bb.ap
  %i.gc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i221

bb.as:                                            ; preds = %bb.ao
  %i.gd = icmp samesign ult i32 %i.fr, 1073741823
  %i.ge = shl nuw nsw i32 %i.fr, 1
  %spec.select.i.i218 = select i1 %i.gd, i32 %i.ge, i32 2147483647 ; 4 uses
  %.not.i9.i.i219 = icmp samesign ult i32 %i.fr, %spec.select.i.i218
  %.pre338 = load ptr, ptr %i.n, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i9.i.i219, label %bb.at, label %Vec_IntPush.exit.i

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i.i220 = icmp eq ptr %.pre338, null
  %i.gf = zext nneg i32 %spec.select.i.i218 to i64
  %i.gg = shl nuw nsw i64 %i.gf, 2                ; 2 uses
  br i1 %.not9.i10.i.i220, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gh = tail call ptr @realloc(ptr noundef nonnull %.pre338, i64 noundef %i.gg) #37
  br label %Vec_IntGrow.exit11.sink.split.i.i221

bb.av:                                            ; preds = %bb.at
  %i.gi = tail call noalias ptr @malloc(i64 noundef %i.gg) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i221

Vec_IntGrow.exit11.sink.split.i.i221:             ; preds = %bb.au, %bb.av, %bb.aq, %bb.ar
  %storemerge = phi ptr [ %i.gc, %bb.ar ], [ %i.gb, %bb.aq ], [ %i.gh, %bb.au ], [ %i.gi, %bb.av ] ; 2 uses
  %spec.select.sink.i.i222 = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i.i218, %bb.au ], [ %spec.select.i.i218, %bb.av ]
  store ptr %storemerge, ptr %i.n, align 8, !tbaa !43
  store i32 %spec.select.sink.i.i222, ptr %i.k, align 8, !tbaa !44
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %._crit_edge.i217.Vec_IntPush.exit.i_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i221, %bb.as
  %i.gj = phi ptr [ %.pre337, %._crit_edge.i217.Vec_IntPush.exit.i_crit_edge ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i.i221 ], [ %.pre338, %bb.as ]
  %i.gk = add nsw i32 %i.fr, 1
  store i32 %i.gk, ptr %i.l, align 4, !tbaa !62
  %i.gl = sext i32 %i.fr to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gl
  store i32 %i.fq, ptr %i.gm, align 4, !tbaa !63
  %.pre339 = load i32, ptr %i.v, align 8, !tbaa !113
  br label %Vec_IntPushUnique.exit

Vec_IntPushUnique.exit:                           ; preds = %bb.an, %Vec_IntPush.exit.i, %bb.ai, %bb.ak, %bb.aj
  %i.gn = phi i32 [ %i.en, %bb.aj ], [ %.pre339, %Vec_IntPush.exit.i ], [ %i.en, %bb.ai ], [ %i.en, %bb.ak ], [ %i.en, %bb.an ] ; 2 uses
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next302, %i.go
  br i1 %i.gp, label %bb.ah, label %.critedge4, !llvm.loop !302

.critedge4:                                       ; preds = %Vec_IntPushUnique.exit, %bb.ah, %.critedge.preheader, %.critedge2
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %.val158 = load i32, ptr %i.l, align 4, !tbaa !62 ; 5 uses
  %i.gq = icmp sgt i32 %.val158, 0
  br i1 %i.gq, label %.lr.ph271, label %.critedge6.preheader

.lr.ph271:                                        ; preds = %.critedge4
  %.val173 = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.gr = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.trip.count = zext nneg i32 %.val158 to i64
  br label %bb.aw

.critedge6.preheader:                             ; preds = %bb.aw, %.critedge4
  %i.gs = icmp sgt i32 %.val158, 1
  br i1 %i.gs, label %.critedge8.lr.ph.preheader, label %.preheader

.critedge8.lr.ph.preheader:                       ; preds = %.critedge6.preheader
  %.val170 = load ptr, ptr %i.n, align 8, !tbaa !43 ; 5 uses
  br label %.critedge8.lr.ph

bb.aw:                                            ; preds = %.lr.ph271, %bb.aw
  %indvars.iv304 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next305, %bb.aw ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val173, i64 %indvars.iv304
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !63 ; 2 uses
  %i.gv = ashr i32 %i.gu, 16                      ; 2 uses
  %i.gw = and i32 %i.gu, 65535                    ; 2 uses
  %i.gx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %i.gv, i32 noundef %i.gw) ; 0 uses
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %.val172 = load ptr, ptr %i.gz, align 8, !tbaa !43
  %i.ha = sext i32 %i.gv to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %.val172, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !63 ; 3 uses
  %i.hd = lshr i32 %i.hc, 1
  %i.he = and i32 %i.hd, 32767
  %.val.i231 = load ptr, ptr %i.gr, align 8, !tbaa !66
  %i.hf = tail call ptr @Abc_NamStr(ptr noundef %.val.i231, i32 noundef %i.he) #38
  %i.hg = and i32 %i.hc, 1
  %.not.i232 = icmp eq i32 %i.hg, 0
  %i.hh = select i1 %.not.i232, i32 105, i32 111
  %i.hi = ashr i32 %i.hc, 16
  %i.hj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef %i.hf, i32 noundef %i.hh, i32 noundef %i.hi) ; 0 uses
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143) ; 0 uses
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %.val171 = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.hn = zext nneg i32 %i.gw to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val171, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !63 ; 3 uses
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = and i32 %i.hq, 32767
  %.val.i233 = load ptr, ptr %i.gr, align 8, !tbaa !66
  %i.hs = tail call ptr @Abc_NamStr(ptr noundef %.val.i233, i32 noundef %i.hr) #38
  %i.ht = and i32 %i.hp, 1
  %.not.i234 = icmp eq i32 %i.ht, 0
  %i.hu = select i1 %.not.i234, i32 105, i32 111
  %i.hv = ashr i32 %i.hp, 16
  %i.hw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef %i.hs, i32 noundef %i.hu, i32 noundef %i.hv) ; 0 uses
  %putchar148 = tail call i32 @putchar(i32 10)    ; 0 uses
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count
  br i1 %exitcond.not, label %.critedge6.preheader, label %bb.aw, !llvm.loop !303

.critedge8.lr.ph:                                 ; preds = %.critedge8.lr.ph.preheader, %Vec_IntDrop.exit
  %i.hx = phi i32 [ %i.je, %Vec_IntDrop.exit ], [ %.val158, %.critedge8.lr.ph.preheader ] ; 4 uses
  br label %.critedge8

.preheader:                                       ; preds = %Vec_IntDrop.exit, %bb.ax, %.critedge6.preheader
  %i.hy = phi i32 [ %i.hx, %bb.ax ], [ %.val158, %.critedge6.preheader ], [ %i.je, %Vec_IntDrop.exit ] ; 6 uses
  store i32 %i.hy, ptr %i.l, align 4
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph278, label %.critedge12.preheader

.lr.ph278:                                        ; preds = %.preheader
  %.val168 = load ptr, ptr %i.n, align 8, !tbaa !43 ; 2 uses
  %wide.trip.count316 = zext nneg i32 %i.hy to i64 ; 3 uses
  %min.iters.check400 = icmp ult i32 %i.hy, 8
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph278
  %n.vec402 = and i64 %wide.trip.count316, 2147483640 ; 3 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next406, %vector.body403 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.val168, i64 %index404 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ia, align 4, !tbaa !63 ; 2 uses
  %wide.load405 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !63 ; 2 uses
  %i.ic = and <4 x i32> %wide.load, splat (i32 -65536)
  %i.id = and <4 x i32> %wide.load405, splat (i32 -65536)
  %i.ie = add <4 x i32> %i.ic, splat (i32 -65536)
  %i.if = add <4 x i32> %i.id, splat (i32 -65536)
  %i.ig = and <4 x i32> %wide.load, splat (i32 65535)
  %i.ih = and <4 x i32> %wide.load405, splat (i32 65535)
  %i.ii = add nuw nsw <4 x i32> %i.ig, splat (i32 1)
  %i.ij = add nuw nsw <4 x i32> %i.ih, splat (i32 1)
  %i.ik = or <4 x i32> %i.ie, %i.ii
  %i.il = or <4 x i32> %i.if, %i.ij
  store <4 x i32> %i.ik, ptr %i.ia, align 4, !tbaa !63
  store <4 x i32> %i.il, ptr %i.ib, align 4, !tbaa !63
  %index.next406 = add nuw i64 %index404, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next406, %n.vec402
  br i1 %i.im, label %middle.block407, label %vector.body403, !llvm.loop !304

middle.block407:                                  ; preds = %vector.body403
  %cmp.n408 = icmp eq i64 %n.vec402, %wide.trip.count316
  br i1 %cmp.n408, label %.lr.ph280, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %.lr.ph278, %middle.block407
  %indvars.iv312.ph = phi i64 [ 0, %.lr.ph278 ], [ %n.vec402, %middle.block407 ]
  br label %scalar.ph399

bb.ax:                                            ; preds = %.critedge8
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 2 ; 2 uses
  %i.in = trunc i64 %indvars.iv.next308 to i32
  %i.io = or disjoint i32 %i.in, 1
  %i.ip = icmp slt i32 %i.io, %i.hx
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ip, label %.critedge8, label %.preheader, !llvm.loop !305

.critedge8:                                       ; preds = %.critedge8.lr.ph, %bb.ax
  %indvar = phi i64 [ 0, %.critedge8.lr.ph ], [ %indvar.next, %bb.ax ] ; 4 uses
  %indvars.iv307 = phi i64 [ 0, %.critedge8.lr.ph ], [ %indvars.iv.next308, %bb.ax ] ; 4 uses
  %i.iq = or disjoint i64 %indvars.iv307, 1       ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.val170, i64 %indvars.iv307
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !63 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.val170, i64 %i.iq
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !63 ; 2 uses
  %i.iv = and i32 %i.is, 65535
  %i.iw = add nuw nsw i32 %i.iv, 1
  %i.ix = ashr i32 %i.iu, 16
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.ay, label %bb.ax

bb.ay:                                            ; preds = %.critedge8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.val170, i64 %indvars.iv307
  %i.ja = trunc nuw nsw i64 %i.iq to i32
  %i.jb = and i32 %i.is, -65536
  %i.jc = and i32 %i.iu, 65535
  %i.jd = or disjoint i32 %i.jc, %i.jb
  store i32 %i.jd, ptr %i.iz, align 4, !tbaa !63
  %i.je = add nsw i32 %i.hx, -1                   ; 4 uses
  %i.jf = icmp sgt i32 %i.je, %i.ja
  br i1 %i.jf, label %.lr.ph.i236.preheader, label %Vec_IntDrop.exit

.lr.ph.i236.preheader:                            ; preds = %bb.ay
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = shl i64 %indvar, 3                      ; 2 uses
  %i.ji = getelementptr nuw i8, ptr %.val170, i64 %i.jh
  %scevgep = getelementptr nuw i8, ptr %i.ji, i64 4
  %i.jj = getelementptr i8, ptr %.val170, i64 %i.jh
  %scevgep311 = getelementptr i8, ptr %i.jj, i64 8
  %i.jk = shl i64 %indvar, 1
  %i.jl = add i64 %i.jk, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.jg)
  %i.jm = shl i64 %indvar, 1
  %2 = xor i64 %i.jm, -1
  %3 = add i64 %umax, %2
  %4 = shl nuw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %scevgep311, i64 %4, i1 false), !tbaa !63
  br label %Vec_IntDrop.exit

Vec_IntDrop.exit:                                 ; preds = %.lr.ph.i236.preheader, %bb.ay
  %i.jn = icmp sgt i32 %i.hx, 2
  br i1 %i.jn, label %.critedge8.lr.ph, label %.preheader, !llvm.loop !306

scalar.ph399:                                     ; preds = %scalar.ph399.preheader, %scalar.ph399
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %scalar.ph399 ], [ %indvars.iv312.ph, %scalar.ph399.preheader ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val168, i64 %indvars.iv312 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !63 ; 2 uses
  %i.jq = and i32 %i.jp, -65536
  %i.jr = add i32 %i.jq, -65536
  %i.js = and i32 %i.jp, 65535
  %i.jt = add nuw nsw i32 %i.js, 1
  %i.ju = or i32 %i.jr, %i.jt
  store i32 %i.ju, ptr %i.jo, align 4, !tbaa !63
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count316
  br i1 %exitcond317.not, label %.lr.ph280, label %scalar.ph399, !llvm.loop !307

.lr.ph280:                                        ; preds = %scalar.ph399, %middle.block407
  %puts147375 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %.val167 = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.jv = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.trip.count322 = zext nneg i32 %i.hy to i64
  br label %bb.az

.critedge12.preheader:                            ; preds = %.preheader
  %puts147 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %.critedge14

.lr.ph284:                                        ; preds = %bb.az
  %.val164 = load ptr, ptr %i.n, align 8, !tbaa !43
  %.val186 = load ptr, ptr %i.j, align 8, !tbaa !109 ; 2 uses
  %wide.trip.count331 = zext nneg i32 %i.hy to i64
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph280, %bb.az
  %indvars.iv318 = phi i64 [ 0, %.lr.ph280 ], [ %indvars.iv.next319, %bb.az ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val167, i64 %indvars.iv318
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !63 ; 2 uses
  %i.jy = ashr i32 %i.jx, 16                      ; 2 uses
  %i.jz = and i32 %i.jx, 65535                    ; 2 uses
  %i.ka = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %i.jy, i32 noundef %i.jz) ; 0 uses
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.kc = getelementptr i8, ptr %i.kb, i64 8
  %.val166 = load ptr, ptr %i.kc, align 8, !tbaa !43
  %i.kd = sext i32 %i.jy to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %.val166, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !63 ; 3 uses
  %i.kg = lshr i32 %i.kf, 1
  %i.kh = and i32 %i.kg, 32767
  %.val.i239 = load ptr, ptr %i.jv, align 8, !tbaa !66
  %i.ki = tail call ptr @Abc_NamStr(ptr noundef %.val.i239, i32 noundef %i.kh) #38
  %i.kj = and i32 %i.kf, 1
  %.not.i240 = icmp eq i32 %i.kj, 0
  %i.kk = select i1 %.not.i240, i32 105, i32 111
  %i.kl = ashr i32 %i.kf, 16
  %i.km = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef %i.ki, i32 noundef %i.kk, i32 noundef %i.kl) ; 0 uses
  %i.kn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143) ; 0 uses
  %i.ko = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %.val165 = load ptr, ptr %i.kp, align 8, !tbaa !43
  %i.kq = zext nneg i32 %i.jz to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.val165, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !63 ; 3 uses
  %i.kt = lshr i32 %i.ks, 1
  %i.ku = and i32 %i.kt, 32767
  %.val.i241 = load ptr, ptr %i.jv, align 8, !tbaa !66
  %i.kv = tail call ptr @Abc_NamStr(ptr noundef %.val.i241, i32 noundef %i.ku) #38
  %i.kw = and i32 %i.ks, 1
  %.not.i242 = icmp eq i32 %i.kw, 0
  %i.kx = select i1 %.not.i242, i32 105, i32 111
  %i.ky = ashr i32 %i.ks, 16
  %i.kz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef %i.kv, i32 noundef %i.kx, i32 noundef %i.ky) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count322
  br i1 %exitcond323.not, label %.lr.ph284, label %bb.az, !llvm.loop !308

bb.ba:                                            ; preds = %.lr.ph284, %.critedge12
  %indvars.iv327 = phi i64 [ 0, %.lr.ph284 ], [ %indvars.iv.next328, %.critedge12 ] ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val164, i64 %indvars.iv327
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !63 ; 2 uses
  %i.lc = ashr i32 %i.lb, 16
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [16 x i8], ptr %.val186, i64 %i.ld ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 4      ; 2 uses
  %.val281 = load i32, ptr %i.lf, align 4, !tbaa !62
  %i.lg = icmp sgt i32 %.val281, 0
  br i1 %i.lg, label %.critedge16.lr.ph, label %.critedge12

.critedge16.lr.ph:                                ; preds = %bb.ba
  %i.lh = and i32 %i.lb, 65535
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %.val186, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.le, i64 8
  %i.ll = getelementptr i8, ptr %i.lj, i64 8
  br label %.critedge16

.critedge16:                                      ; preds = %.critedge16.lr.ph, %.critedge16
  %indvars.iv324 = phi i64 [ 0, %.critedge16.lr.ph ], [ %indvars.iv.next325, %.critedge16 ] ; 3 uses
  %.val163 = load ptr, ptr %i.lk, align 8, !tbaa !43
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv324
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !63 ; 2 uses
  %.val162 = load ptr, ptr %i.ll, align 8, !tbaa !43
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv324
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !63 ; 2 uses
  %.val182 = load ptr, ptr %i.aj, align 8, !tbaa !98 ; 2 uses
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds [12 x i8], ptr %.val182, i64 %i.lq
  %.val194 = load i64, ptr %i.lr, align 4
  %i.ls = trunc i64 %.val194 to i32               ; 2 uses
  %i.lt = lshr i32 %i.ls, 29
  %i.lu = sext i32 %i.lp to i64
  %i.lv = getelementptr inbounds [12 x i8], ptr %.val182, i64 %i.lu ; 2 uses
  %.neg = sub i32 %i.lp, %i.ln
  %i.lw = add i32 %.neg, %i.ls
  %i.lx = load i64, ptr %i.lv, align 4
  %i.ly = and i32 %i.lw, 536870911
  %i.lz = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.ma = shl nuw nsw i64 %i.lz, 32
  %i.mb = and i64 %i.lx, -4611686015206162432
  %i.mc = or disjoint i64 %i.ma, %i.mb
  %i.md = and i32 %i.lt, 1                        ; 2 uses
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = shl nuw nsw i64 %i.me, 61
  %i.mg = or disjoint i64 %i.mc, %i.mf
  %i.mh = shl nuw nsw i32 %i.md, 29
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = or disjoint i64 %i.mg, %i.mi
  %i.mk = or disjoint i64 %i.mj, %i.lz
  store i64 %i.mk, ptr %i.lv, align 4
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %.val = load i32, ptr %i.lf, align 4, !tbaa !62
  %i.ml = sext i32 %.val to i64
  %i.mm = icmp slt i64 %indvars.iv.next325, %i.ml
  br i1 %i.mm, label %.critedge16, label %.critedge12, !llvm.loop !309

.critedge12:                                      ; preds = %.critedge16, %bb.ba
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next328, %wide.trip.count331
  br i1 %exitcond332.not, label %.critedge14, label %bb.ba, !llvm.loop !310

.critedge14:                                      ; preds = %.critedge12, %.critedge12.preheader
  %i.mn = tail call ptr @Gia_ManRehash(ptr noundef %1, i32 noundef 0) #38
  %i.mo = load ptr, ptr %i.n, align 8, !tbaa !43  ; 2 uses
  %.not.i243 = icmp eq ptr %i.mo, null
  br i1 %.not.i243, label %Vec_IntFree.exit, label %bb.bb

bb.bb:                                            ; preds = %.critedge14
  tail call void @free(ptr noundef nonnull %i.mo) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge14, %bb.bb
  tail call void @free(ptr noundef nonnull %i.k) #38
  %.not.i244 = icmp eq ptr %i.ah, null
  br i1 %.not.i244, label %Vec_IntFree.exit245, label %bb.bc

bb.bc:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ah) #38
  br label %Vec_IntFree.exit245

Vec_IntFree.exit245:                              ; preds = %Vec_IntFree.exit, %bb.bc
  %i.mp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !43 ; 2 uses
  %.not.i246 = icmp eq ptr %i.mq, null
  br i1 %.not.i246, label %Vec_IntFree.exit247, label %bb.bd

bb.bd:                                            ; preds = %Vec_IntFree.exit245
  tail call void @free(ptr noundef nonnull %i.mq) #38
  br label %Vec_IntFree.exit247

Vec_IntFree.exit247:                              ; preds = %Vec_IntFree.exit245, %bb.bd
  tail call void @free(ptr noundef nonnull %i.w) #38
  %i.mr = load i32, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  %.pre.i.i248 = load ptr, ptr %i.j, align 8, !tbaa !109 ; 3 uses
  br i1 %i.ms, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit247
  %i.mt = zext nneg i32 %i.mr to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.bf
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i248, i64 %indvars.iv.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !43 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.mw, null
  br i1 %.not15.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.mw) #38
  store ptr null, ptr %i.mv, align 8, !tbaa !43
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next.i.i, %i.mt
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.217, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #37
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !98
  %i.s = load i32, ptr %i.c, align 4, !tbaa !329  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !331  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #37 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !331
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !329 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !329
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !62
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #37
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #37
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !44
  %.pre = load i32, ptr %i.al, align 4, !tbaa !62
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !62
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !63
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !113
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !98
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #28

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #29

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #30

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #30

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { nofree nounwind }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nounwind allocsize(0,1) }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { cold noreturn nounwind }

!llvm.module.flags = !{!32, !33}
!llvm.ident = !{!34}
!llvm.errno.tbaa = !{!39}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{!3, !64}
!4 = distinct !{!4, !64}
!5 = distinct !{!5, !64}
!6 = distinct !{!6, !64}
!7 = distinct !{!7, !64}
!8 = distinct !{!8, !64}
!9 = distinct !{!9, !64}
!10 = distinct !{!10, !64}
!11 = distinct !{!11, !64}
!12 = distinct !{null}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{!15, !64}
!16 = distinct !{!16, !64}
!17 = distinct !{!17, !64}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{!21, !64}
!22 = distinct !{!22, !64}
!23 = distinct !{!23, !64}
!24 = distinct !{!24, !64}
!25 = distinct !{!25, !64}
!26 = distinct !{!26, !64}
!27 = distinct !{!27, !64}
!28 = distinct !{!28, !64}
!29 = distinct !{!29, !64}
!30 = distinct !{!30, !64}
!31 = distinct !{!31, !64}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"omnipotent char", !35, i64 0}
!37 = !{!"int", !36, i64 0}
!38 = !{!"__libc_errno", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"p1 int", !40, i64 0}
!42 = !{!"Vec_Int_t_", !37, i64 0, !37, i64 4, !41, i64 8}
!43 = !{!42, !41, i64 8}
!44 = !{!42, !37, i64 0}
!45 = !{!"p1 omnipotent char", !40, i64 0}
!46 = !{!"p1 _ZTS10Vec_Ptr_t_", !40, i64 0}
!47 = !{!"p1 _ZTS10Abc_Nam_t_", !40, i64 0}
!48 = !{!"p1 _ZTS8_IO_FILE", !40, i64 0}
!49 = !{!"p1 _ZTS10Vec_Int_t_", !40, i64 0}
!50 = !{!"Rtl_Lib_t_", !45, i64 0, !46, i64 8, !47, i64 16, !42, i64 24, !42, i64 40, !42, i64 56, !48, i64 72, !49, i64 80, !36, i64 88, !49, i64 216, !49, i64 224, !49, i64 232, !42, i64 240, !36, i64 256}
!51 = !{!50, !46, i64 8}
!52 = !{!"any p2 pointer", !40, i64 0}
!53 = !{!"Vec_Ptr_t_", !37, i64 0, !37, i64 4, !52, i64 8}
!54 = !{!53, !37, i64 4}
!55 = !{!53, !37, i64 0}
!56 = !{!53, !52, i64 8}
!57 = !{!40, !40, i64 0}
!58 = !{!"p1 _ZTS10Rtl_Lib_t_", !40, i64 0}
!59 = !{!"p1 _ZTS10Gia_Man_t_", !40, i64 0}
!60 = !{!"Rtl_Ntk_t_", !37, i64 0, !37, i64 4, !37, i64 8, !42, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !42, i64 80, !58, i64 96, !42, i64 104, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !59, i64 184, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 204}
!61 = !{!60, !58, i64 96}
!62 = !{!42, !37, i64 4}
!63 = !{!37, !37, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!60, !37, i64 0}
!66 = !{!50, !47, i64 16}
!67 = !{!50, !45, i64 0}
!68 = !{!49, !49, i64 0}
!69 = !{!36, !36, i64 0}
!70 = !{!50, !49, i64 216}
!71 = !{!60, !37, i64 192}
!72 = !{!60, !37, i64 196}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!60, !37, i64 4}
!76 = !{!60, !37, i64 8}
!77 = !{!"branch_weights", i32 8, i32 24}
!78 = !{!50, !48, i64 72}
!79 = !{!48, !48, i64 0}
!80 = !{!50, !49, i64 80}
!81 = !{!60, !37, i64 200}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!"p1 _ZTS10Gia_Obj_t_", !40, i64 0}
!84 = !{!"p1 _ZTS10Gia_Rpr_t_", !40, i64 0}
!85 = !{!"p1 _ZTS10Vec_Wec_t_", !40, i64 0}
!86 = !{!"p1 _ZTS10Vec_Str_t_", !40, i64 0}
!87 = !{!"p1 _ZTS10Abc_Cex_t_", !40, i64 0}
!88 = !{!"p1 _ZTS10Gia_Plc_t_", !40, i64 0}
!89 = !{!"p1 _ZTS10Vec_Flt_t_", !40, i64 0}
!90 = !{!"float", !36, i64 0}
!91 = !{!"p1 _ZTS10Vec_Vec_t_", !40, i64 0}
!92 = !{!"long", !36, i64 0}
!93 = !{!"p1 _ZTS10Vec_Wrd_t_", !40, i64 0}
!94 = !{!"p1 _ZTS10Vec_Bit_t_", !40, i64 0}
!95 = !{!"p1 _ZTS10Gia_Dat_t_", !40, i64 0}
!96 = !{!"Gia_Man_t_", !45, i64 0, !45, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !83, i64 32, !41, i64 40, !37, i64 48, !37, i64 52, !37, i64 56, !49, i64 64, !49, i64 72, !42, i64 80, !42, i64 96, !37, i64 112, !37, i64 116, !37, i64 120, !42, i64 128, !41, i64 144, !41, i64 152, !49, i64 160, !37, i64 168, !37, i64 172, !37, i64 176, !37, i64 180, !41, i64 184, !84, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !37, i64 224, !37, i64 228, !41, i64 232, !37, i64 240, !49, i64 248, !49, i64 256, !49, i64 264, !85, i64 272, !85, i64 280, !49, i64 288, !40, i64 296, !49, i64 304, !49, i64 312, !86, i64 320, !45, i64 328, !49, i64 336, !49, i64 344, !49, i64 352, !49, i64 360, !49, i64 368, !87, i64 376, !87, i64 384, !46, i64 392, !42, i64 400, !42, i64 416, !49, i64 432, !49, i64 440, !49, i64 448, !49, i64 456, !49, i64 464, !49, i64 472, !49, i64 480, !49, i64 488, !49, i64 496, !49, i64 504, !49, i64 512, !45, i64 520, !88, i64 528, !59, i64 536, !89, i64 544, !89, i64 552, !49, i64 560, !49, i64 568, !49, i64 576, !49, i64 584, !49, i64 592, !37, i64 600, !90, i64 604, !90, i64 608, !49, i64 616, !41, i64 624, !37, i64 632, !46, i64 640, !46, i64 648, !46, i64 656, !49, i64 664, !49, i64 672, !49, i64 680, !49, i64 688, !49, i64 696, !49, i64 704, !49, i64 712, !49, i64 720, !49, i64 728, !91, i64 736, !89, i64 744, !40, i64 752, !40, i64 760, !40, i64 768, !92, i64 776, !92, i64 784, !40, i64 792, !41, i64 800, !37, i64 808, !37, i64 812, !37, i64 816, !37, i64 820, !37, i64 824, !37, i64 828, !37, i64 832, !37, i64 836, !37, i64 840, !37, i64 844, !37, i64 848, !37, i64 852, !93, i64 856, !93, i64 864, !93, i64 872, !93, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !94, i64 912, !37, i64 920, !37, i64 924, !37, i64 928, !49, i64 936, !37, i64 944, !37, i64 948, !49, i64 952, !49, i64 960, !46, i64 968, !93, i64 976, !49, i64 984, !49, i64 992, !37, i64 1000, !37, i64 1004, !93, i64 1008, !42, i64 1016, !42, i64 1032, !42, i64 1048, !95, i64 1064, !86, i64 1072, !86, i64 1080, !37, i64 1088, !37, i64 1092, !37, i64 1096, !37, i64 1100, !86, i64 1104, !49, i64 1112, !49, i64 1120, !49, i64 1128, !46, i64 1136}
!97 = !{!96, !49, i64 64}
!98 = !{!96, !83, i64 32}
!99 = !{!96, !49, i64 72}
!100 = !{!96, !41, i64 232}
!101 = !{!50, !49, i64 232}
!102 = !{!96, !37, i64 56}
!103 = !{!96, !49, i64 504}
!104 = !{!60, !37, i64 204}
!105 = !{!60, !59, i64 184}
!106 = !{ptr @Rtl_NtkCollectOrComputeBit}
!107 = !{!"Vec_Wec_t_", !37, i64 0, !37, i64 4, !49, i64 8}
!108 = !{!107, !37, i64 4}
!109 = !{!107, !49, i64 8}
!110 = !{!"timespec", !92, i64 0, !92, i64 8}
!111 = !{!110, !92, i64 0}
!112 = !{!110, !92, i64 8}
!113 = !{!96, !37, i64 24}
!114 = !{!59, !59, i64 0}
!115 = !{!107, !37, i64 0}
!116 = !{!45, !45, i64 0}
!117 = !{!60, !41, i64 24}
!118 = !{!60, !41, i64 40}
!119 = !{!60, !41, i64 56}
!120 = !{!60, !41, i64 72}
!121 = !{!60, !41, i64 88}
!122 = !{!60, !41, i64 112}
!123 = !{!60, !41, i64 128}
!124 = !{!60, !41, i64 144}
!125 = !{!60, !41, i64 160}
!126 = !{!60, !41, i64 176}
!127 = distinct !{!127, !64}
!128 = distinct !{!128, !64}
!129 = distinct !{!129, !64}
!130 = distinct !{!130, !64}
!131 = distinct !{!131, !64}
!132 = distinct !{!132, !64}
!133 = !{!50, !41, i64 32}
!134 = !{!50, !41, i64 48}
!135 = !{!50, !41, i64 64}
!136 = !{!50, !41, i64 248}
!137 = distinct !{!137, !64}
!138 = distinct !{!138, !64}
!139 = distinct !{!139, !64}
!140 = distinct !{!140, !64}
!141 = distinct !{!141, !64}
!142 = distinct !{!142, !64}
!143 = distinct !{!143, !64}
!144 = distinct !{!144, !64}
!145 = !{!41, !41, i64 0}
!146 = !{i64 0, i64 4, !63, i64 4, i64 4, !63, i64 8, i64 8, !145}
!147 = distinct !{!147, !64}
!148 = distinct !{!148, !64}
!149 = distinct !{!149, !64}
!150 = distinct !{!150, !64}
end_hunk_1
