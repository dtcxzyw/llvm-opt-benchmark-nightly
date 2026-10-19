Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFrames?download=true
inline.NumInlined: 424
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_ManFrames:bb.a
  %i.tr = tail call ptr @realloc(ptr noundef nonnull %i.to, i64 noundef %i.tq) #24
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ts = tail call noalias ptr @malloc(i64 noundef %i.tq) #25
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.tt = phi ptr [ %i.tr, %bb.bu ], [ %i.ts, %bb.bv ]
  store ptr %i.tt, ptr %i.tn, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i.i315

Vec_IntGrow.exit11.sink.split.i.i315:             ; preds = %bb.bw, %Vec_IntGrow.exit.i.i319
  %spec.select.sink.i.i316 = phi i32 [ %spec.select.i.i312, %bb.bw ], [ 16, %Vec_IntGrow.exit.i.i319 ]
  store i32 %spec.select.sink.i.i316, ptr %i.sw, align 8, !tbaa !34
  %.pre.i317 = load i32, ptr %i.tb, align 4, !tbaa !33
  br label %Vec_IntPush.exit.i309

Vec_IntPush.exit.i309:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i315, %bb.bs, %bb.bn
  %i.tu = phi i32 [ %i.tc, %bb.bn ], [ %i.tc, %bb.bs ], [ %.pre.i317, %Vec_IntGrow.exit11.sink.split.i.i315 ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !35
  %i.tx = add nsw i32 %i.tu, 1
  store i32 %i.tx, ptr %i.tb, align 4, !tbaa !33
  %i.ty = sext i32 %i.tu to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.ty
  store i32 %i.ta, ptr %i.tz, align 4, !tbaa !36
  %i.ua = load ptr, ptr %i.bl, align 8, !tbaa !38
  %.not.i310 = icmp eq ptr %i.ua, null
  br i1 %.not.i310, label %Gia_ManAppendCo.exit320, label %bb.bx

bb.bx:                                            ; preds = %Vec_IntPush.exit.i309
  %i.ub = load i64, ptr %i.rw, align 4
  %i.uc = and i64 %i.ub, 536870911
  %i.ud = sub nsw i64 0, %i.uc
  %i.ue = getelementptr inbounds [12 x i8], ptr %i.rw, i64 %i.ud
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ue, ptr noundef nonnull %i.rw) #26
  br label %Gia_ManAppendCo.exit320

Gia_ManAppendCo.exit320:                          ; preds = %Vec_IntPush.exit.i309, %bb.bx
  %.val18.i311 = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.uf = ptrtoint ptr %.val18.i311 to i64
  %i.ug = sub i64 %i.rz, %i.uf
  %i.uh = sdiv exact i64 %i.ug, 12
  %i.ui = trunc i64 %i.uh to i32
  %i.uj = shl i32 %i.ui, 1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !9
  %i.ul = add nuw nsw i32 %.10413, 1              ; 2 uses
  %.val256 = load i32, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %i.um = icmp slt i32 %i.ul, %.val256
  br i1 %i.um, label %.lr.ph415, label %.critedge20, !llvm.loop !129

bb.by:                                            ; preds = %.lr.ph401.split, %bb.by
  %indvars.iv448 = phi i64 [ 0, %.lr.ph401.split ], [ %indvars.iv.next449, %bb.by ] ; 2 uses
  %i.un = trunc nuw nsw i64 %indvars.iv448 to i32
  %.reass404 = add i32 %invariant.op403, %i.un
  %i.uo = sext i32 %.reass404 to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %.val230.val, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !36
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [12 x i8], ptr %.val229, i64 %i.ur ; 3 uses
  %i.ut = load i64, ptr %i.us, align 4            ; 2 uses
  %i.uu = and i64 %i.ut, 536870911
  %i.uv = sub nsw i64 0, %i.uu
  %i.uw = getelementptr inbounds [12 x i8], ptr %i.us, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !9
  %i.uz = trunc i64 %i.ut to i32
  %i.va = lshr i32 %i.uz, 29
  %i.vb = and i32 %i.va, 1
  %i.vc = xor i32 %i.vb, %i.uy
  %i.vd = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store i32 %i.vc, ptr %i.vd, align 4, !tbaa !9
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  br i1 %exitcond452.not, label %.critedge20, label %bb.by, !llvm.loop !130

.critedge20:                                      ; preds = %bb.by, %.lr.ph415, %Gia_ManAppendCo.exit320, %.preheader340, %.lr.ph401, %.critedge18
  %i.ve = add nuw nsw i32 %.1417, 1               ; 2 uses
  %i.vf = load i32, ptr %1, align 4, !tbaa !67
  %i.vg = icmp slt i32 %i.ve, %i.vf
  br i1 %i.vg, label %bb.t, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.critedge20, %bb.i, %.preheader353
  %i.vh = icmp eq ptr %.0337, null
  br i1 %i.vh, label %Vec_IntFreeP.exit, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge
  %i.vi = getelementptr inbounds nuw i8, ptr %.0337, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !35 ; 2 uses
  %.not.i321 = icmp eq ptr %i.vj, null
  br i1 %.not.i321, label %bb.ca, label %.thread.i

.thread.i:                                        ; preds = %bb.bz
  tail call void @free(ptr noundef nonnull %i.vj) #26
  br label %bb.ca

bb.ca:                                            ; preds = %.thread.i, %bb.bz
  tail call void @free(ptr noundef nonnull %.0337) #26
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %._crit_edge, %bb.ca
  %i.vk = load i32, ptr %i.al, align 4, !tbaa !133
  %.not186 = icmp eq i32 %i.vk, 0
  br i1 %.not186, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %Vec_IntFreeP.exit
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.w) #26
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %Vec_IntFreeP.exit
  %i.vl = getelementptr i8, ptr %0, i64 16
  %.val254 = load i32, ptr %i.vl, align 8, !tbaa !42
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.w, i32 noundef %.val254) #26
  %i.vm = tail call i32 @Gia_ManCombMarkUsed(ptr noundef nonnull %i.w) #26
  %i.vn = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !39
  %i.vp = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !32
  %i.vr = getelementptr i8, ptr %i.vq, i64 4
  %.val3.i = load i32, ptr %i.vr, align 4, !tbaa !33
  %i.vs = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !37
  %i.vu = getelementptr i8, ptr %i.vt, i64 4
  %.val.i322 = load i32, ptr %i.vu, align 4, !tbaa !33
  %i.vv = add i32 %.val.i322, %.val3.i
  %i.vw = xor i32 %i.vv, -1
  %i.vx = add i32 %i.vo, %i.vw                    ; 3 uses
  %i.vy = icmp slt i32 %i.vm, %i.vx
  br i1 %i.vy, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.vz = tail call ptr @Gia_ManDupMarked(ptr noundef nonnull %i.w) #26 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !64
  %.not188 = icmp eq i32 %i.wb, 0
  br i1 %.not188, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wc = load i32, ptr %i.vn, align 8, !tbaa !39
  %i.wd = load ptr, ptr %i.vp, align 8, !tbaa !32
  %i.we = getelementptr i8, ptr %i.wd, i64 4
  %.val3.i323 = load i32, ptr %i.we, align 4, !tbaa !33
  %i.wf = load ptr, ptr %i.vs, align 8, !tbaa !37
  %i.wg = getelementptr i8, ptr %i.wf, i64 4
  %.val.i324 = load i32, ptr %i.wg, align 4, !tbaa !33
  %i.wh = add i32 %.val.i324, %.val3.i323
  %i.wi = xor i32 %i.wh, -1
  %i.wj = add i32 %i.wc, %i.wi
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !39
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vz, i64 64
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !32
  %i.wo = getelementptr i8, ptr %i.wn, i64 4
  %.val3.i325 = load i32, ptr %i.wo, align 4, !tbaa !33
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vz, i64 72
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !37
  %i.wr = getelementptr i8, ptr %i.wq, i64 4
  %.val.i326 = load i32, ptr %i.wr, align 4, !tbaa !33
  %i.ws = add i32 %.val.i326, %.val3.i325
  %i.wt = xor i32 %i.ws, -1
  %i.wu = add i32 %i.wl, %i.wt
  %i.wv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.wj, i32 noundef %i.wu) ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  tail call void @Gia_ManStop(ptr noundef nonnull %i.w) #26
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cc
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !64
  %.not187 = icmp eq i32 %i.wx, 0
  br i1 %.not187, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.wy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.vx, i32 noundef %i.vx) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cf, %bb.ch, %bb.cg, %bb.b
  %.0171 = phi ptr [ %i.c, %bb.b ], [ %i.vz, %bb.cf ], [ %i.w, %bb.ch ], [ %i.w, %bb.cg ]
  ret ptr %.0171
}

declare i32 @Gia_ManHashOr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_ManFramesInitSpecial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val106 = load i32, ptr %i.c, align 8, !tbaa !39
  %i.d = tail call ptr @Gia_ManStart(i32 noundef %.val106) #26 ; 14 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #27
  %i.g = add i64 %i.f, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #25 ; 2 uses
  %i.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %i.e) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 3 uses
  %.not.i134 = icmp eq ptr %i.l, null
  br i1 %.not.i134, label %Abc_UtilStrsav.exit135, label %bb.e

bb.e:                                             ; preds = %Abc_UtilStrsav.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.l) #27
  %i.n = add i64 %i.m, 1
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #25 ; 2 uses
  %i.p = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull readonly dereferenceable(1) %i.l) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit135

Abc_UtilStrsav.exit135:                           ; preds = %Abc_UtilStrsav.exit, %bb.e
  %i.q = phi ptr [ %i.o, %bb.e ], [ null, %Abc_UtilStrsav.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !41
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.d) #26
  %i.s = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %.val107 = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %.val107, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !9
  %i.u = icmp eq i32 %1, 0
  %.not = icmp ne i32 %2, 0                       ; 3 uses
  %3 = getelementptr i8, ptr %0, i64 64           ; 2 uses
  %4 = getelementptr i8, ptr %0, i64 16           ; 5 uses
  %5 = getelementptr i8, ptr %0, i64 72           ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %7 = getelementptr i8, ptr %i.d, i64 32         ; 2 uses
  %i.v = icmp sgt i32 %1, -1
  br i1 %i.v, label %.lr.ph228, label %.critedge6.thread

.lr.ph228:                                        ; preds = %Abc_UtilStrsav.exit135, %.critedge8
  %.0227 = phi i32 [ %i.ik, %.critedge8 ], [ 0, %Abc_UtilStrsav.exit135 ] ; 6 uses
  %i.w = urem i32 %.0227, 100
  %i.x = icmp eq i32 %i.w, 0
  %or.cond = select i1 %.not, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph228
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.0227) ; 0 uses
  tail call void @Gia_ManPrintStats(ptr noundef nonnull %i.d, ptr noundef null) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph228
  %.val129 = load i32, ptr %4, align 8, !tbaa !42 ; 8 uses
  %i.z = icmp sgt i32 %.val129, 0
  %.val123152.pre = load ptr, ptr %3, align 8, !tbaa !32 ; 3 uses
  %i.aa = getelementptr i8, ptr %.val123152.pre, i64 4
  %.val125.val = load i32, ptr %i.aa, align 4, !tbaa !33 ; 3 uses
  br i1 %i.z, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.g
  %invariant.op = sub i32 %.val125.val, %.val129  ; 6 uses
  %.val132 = load ptr, ptr %i.s, align 8, !tbaa !31 ; 8 uses
  %i.ab = getelementptr i8, ptr %.val123152.pre, i64 8
  %.val133.val = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 6 uses
  %.not94 = icmp eq ptr %.val132, null
  br i1 %.not94, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not103 = icmp eq i32 %.0227, 0
  br i1 %.not103, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count180 = zext nneg i32 %.val129 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count180, 3      ; 3 uses
  %i.ac = icmp ult i32 %.val129, 4
  br i1 %i.ac, label %.lr.ph.split.split.us.epil.preheader, label %.lr.ph.split.split.us.preheader.new

.lr.ph.split.split.us.preheader.new:              ; preds = %.lr.ph.split.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count180, 2147483644
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.us.preheader.new
  %indvars.iv177 = phi i64 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %indvars.iv.next178.3, %.lr.ph.split.split.us ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.split.us ]
  %i.ad = trunc nuw nsw i64 %indvars.iv177 to i32
  %.reass.us = add i32 %invariant.op, %i.ad
  %i.ae = sext i32 %.reass.us to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 0, ptr %i.aj, align 4, !tbaa !9
  %i.ak = trunc i64 %indvars.iv177 to i32
  %i.al = or disjoint i32 %i.ak, 1
  %.reass.us.1 = add i32 %invariant.op, %i.al
  %i.am = sext i32 %.reass.us.1 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 0, ptr %i.ar, align 4, !tbaa !9
  %i.as = trunc i64 %indvars.iv177 to i32
  %i.at = or disjoint i32 %i.as, 2
  %.reass.us.2 = add i32 %invariant.op, %i.at
  %i.au = sext i32 %.reass.us.2 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 0, ptr %i.az, align 4, !tbaa !9
  %i.ba = trunc i64 %indvars.iv177 to i32
  %i.bb = or disjoint i32 %i.ba, 3
  %.reass.us.3 = add i32 %invariant.op, %i.bb
  %i.bc = sext i32 %.reass.us.3 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !36
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4, !tbaa !9
  %indvars.iv.next178.3 = add nuw nsw i64 %indvars.iv177, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph.split.split.us, !llvm.loop !135

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.val6.i = load ptr, ptr %5, align 8, !tbaa !37 ; 2 uses
  %i.bi = getelementptr i8, ptr %.val6.i, i64 4
  %.val6.val.i = load i32, ptr %i.bi, align 4, !tbaa !33
  %i.bj = sub i32 %.val6.val.i, %.val125.val
  %i.bk = getelementptr i8, ptr %.val6.i, i64 8
  %.val4.val.i = load ptr, ptr %i.bk, align 8, !tbaa !35
  %wide.trip.count = zext nneg i32 %.val129 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.bl
  %i.bm = sext i32 %.reass to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.bp ; 2 uses
  %.val126 = load i64, ptr %i.bq, align 4
  %i.br = lshr i64 %.val126, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = add i32 %i.bj, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val4.val.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !135

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.split.split.us.epil.preheader

.lr.ph.split.split.us.epil.preheader:             ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split.split.us.preheader
  %indvars.iv177.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next178.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod235.a = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod235.a)
  br label %.lr.ph.split.split.us.epil

.lr.ph.split.split.us.epil:                       ; preds = %.lr.ph.split.split.us.epil, %.lr.ph.split.split.us.epil.preheader
  %indvars.iv177.epil = phi i64 [ %indvars.iv177.epil.init, %.lr.ph.split.split.us.epil.preheader ], [ %indvars.iv.next178.epil, %.lr.ph.split.split.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.split.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.split.us.epil ]
  %i.cd = trunc nuw nsw i64 %indvars.iv177.epil to i32
  %.reass.us.epil = add i32 %invariant.op, %i.cd
  %i.ce = sext i32 %.reass.us.epil to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 0, ptr %i.cj, align 4, !tbaa !9
  %indvars.iv.next178.epil = add nuw nsw i64 %indvars.iv177.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %.lr.ph.split.split.us.epil, !llvm.loop !136

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.unr-lcssa, %.lr.ph.split.split.us.epil, %bb.g, %.lr.ph
  %i.ck = icmp sgt i32 %.val125.val, %.val129
  br i1 %i.ck, label %.lr.ph156.preheader, label %.critedge2

.lr.ph156.preheader:                              ; preds = %.critedge
  %.val130221 = load ptr, ptr %i.s, align 8, !tbaa !31 ; 2 uses
  %.not95223 = icmp eq ptr %.val130221, null
  br i1 %.not95223, label %.critedge2, label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph156.preheader
  %i.cl = getelementptr i8, ptr %.val123152.pre, i64 8
  %.val131.val222 = load ptr, ptr %i.cl, align 8, !tbaa !35
  %i.cm = load i32, ptr %.val131.val222, align 4, !tbaa !36
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [12 x i8], ptr %.val130221, i64 %i.cn
  br label %bb.i

.lr.ph156:                                        ; preds = %Gia_ManAppendCi.exit
  %.val130 = load ptr, ptr %i.s, align 8, !tbaa !31 ; 2 uses
  %i.cp = getelementptr i8, ptr %.val123, i64 8
  %.val131.val = load ptr, ptr %i.cp, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val131.val, i64 %indvars.iv.next183
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !36
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [12 x i8], ptr %.val130, i64 %i.cs
  %.not95 = icmp eq ptr %.val130, null
  br i1 %.not95, label %.critedge2, label %bb.i, !llvm.loop !137

bb.i:                                             ; preds = %.lr.ph225, %.lr.ph156
  %i.cu = phi ptr [ %i.co, %.lr.ph225 ], [ %i.ct, %.lr.ph156 ]
  %indvars.iv182224 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next183, %.lr.ph156 ]
  %i.cv = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.d) ; 4 uses
  %i.cw = load i64, ptr %i.cv, align 4
  %i.cx = or i64 %i.cw, 2684354559                ; 2 uses
  store i64 %i.cx, ptr %i.cv, align 4
  %i.cy = load ptr, ptr %6, align 8, !tbaa !32
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %.val.i136 = load i32, ptr %i.cz, align 4, !tbaa !33
  %i.da = and i32 %.val.i136, 536870911
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 32
  %i.dd = and i64 %i.cx, -2305843004918726657
  %i.de = or disjoint i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.cv, align 4
  %i.df = load ptr, ptr %6, align 8, !tbaa !32    ; 6 uses
  %.val11.i = load ptr, ptr %7, align 8, !tbaa !31 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !33 ; 7 uses
  %i.di = load i32, ptr %i.df, align 8, !tbaa !34
end_hunk_0
begin_hunk_1_@Gia_ManFramesInitSpecial:bb.a
  br label %.critedge2, !llvm.loop !137

.critedge2:                                       ; preds = %.lr.ph156, %.lr.ph156.preheader, %Gia_ManAppendCi.exit..critedge2.loopexit_crit_edge, %.critedge
  %.val114200 = phi i32 [ %.val129, %.critedge ], [ %.val122, %Gia_ManAppendCi.exit..critedge2.loopexit_crit_edge ], [ %.val129, %.lr.ph156.preheader ], [ %.val122, %.lr.ph156 ]
  %i.eu = load i32, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph159, label %.critedge4

.lr.ph159:                                        ; preds = %.critedge2, %bb.u
  %i.ew = phi i32 [ %i.fv, %bb.u ], [ %i.eu, %.critedge2 ]
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %bb.u ], [ 0, %.critedge2 ] ; 2 uses
  %.val = load ptr, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv185 ; 4 uses
  %.not96 = icmp eq ptr %.val, null
  br i1 %.not96, label %.critedge4.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph159
  %.val105 = load i64, ptr %i.ex, align 4         ; 5 uses
  %i.ey = and i64 %.val105, 2147483648
  %.not.i137 = icmp ne i64 %i.ey, 0
  %i.ez = and i64 %.val105, 536870911             ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 536870911
  %narrow.i.not = or i1 %.not.i137, %i.fa
  br i1 %narrow.i.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fb = sub nsw i64 0, %i.ez
  %i.fc = getelementptr inbounds [12 x i8], ptr %i.ex, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !9
  %i.ff = trunc i64 %.val105 to i32
  %i.fg = lshr i32 %i.ff, 29
  %i.fh = and i32 %i.fg, 1
  %i.fi = xor i32 %i.fe, %i.fh
  %i.fj = lshr i64 %.val105, 32
  %i.fk = and i64 %i.fj, 536870911
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [12 x i8], ptr %i.ex, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !9
  %i.fp = lshr i64 %.val105, 61
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = and i32 %i.fq, 1
  %i.fs = xor i32 %i.fo, %i.fr
  %i.ft = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.d, i32 noundef %i.fi, i32 noundef %i.fs) #26
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !9
  %.pre = load i32, ptr %i.c, align 8, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fv = phi i32 [ %.pre, %bb.t ], [ %i.ew, %bb.s ] ; 2 uses
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next186, %i.fw
  br i1 %i.fx, label %.lr.ph159, label %.critedge4.loopexit, !llvm.loop !138

.critedge4.loopexit:                              ; preds = %bb.u, %.lr.ph159
  %.val114.pre = load i32, ptr %4, align 8, !tbaa !42
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.val114 = phi i32 [ %.val114.pre, %.critedge4.loopexit ], [ %.val114200, %.critedge2 ] ; 5 uses
  %.val115 = load ptr, ptr %5, align 8, !tbaa !37 ; 3 uses
  %i.fy = getelementptr i8, ptr %.val115, i64 4
  %.val115.val = load i32, ptr %i.fy, align 4, !tbaa !33
  %i.fz = sub nsw i32 %.val115.val, %.val114      ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph162, label %.critedge6.preheader

.lr.ph162:                                        ; preds = %.critedge4
  %.val120 = load ptr, ptr %i.s, align 8, !tbaa !31 ; 2 uses
  %.not97 = icmp eq ptr %.val120, null
  br i1 %.not97, label %.critedge6.thread, label %.lr.ph162.split

.lr.ph162.split:                                  ; preds = %.lr.ph162
  %i.gb = getelementptr i8, ptr %.val115, i64 8
  %.val121.val = load ptr, ptr %i.gb, align 8, !tbaa !35
  %wide.trip.count191 = zext nneg i32 %i.fz to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %.critedge6.preheader, label %bb.w, !llvm.loop !139

.critedge6.preheader:                             ; preds = %bb.v, %.critedge4
  %i.gc = icmp sgt i32 %.val114, 0
  br i1 %i.gc, label %.lr.ph166, label %.critedge8

.lr.ph166:                                        ; preds = %.critedge6.preheader
  %.val118 = load ptr, ptr %i.s, align 8, !tbaa !31 ; 4 uses
  %.not99 = icmp eq ptr %.val118, null
  br i1 %.not99, label %.critedge8, label %.lr.ph166.split

.lr.ph166.split:                                  ; preds = %.lr.ph166
  %i.gd = getelementptr i8, ptr %.val115, i64 8
  %.val119.val = load ptr, ptr %i.gd, align 8, !tbaa !35
  %i.ge = sext i32 %i.fz to i64
  %wide.trip.count196 = zext nneg i32 %.val114 to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val119.val, i64 %i.ge ; 3 uses
  %xtraiter236 = and i64 %wide.trip.count196, 1
  %i.gf = icmp eq i32 %.val114, 1
  br i1 %i.gf, label %.critedge6.epil.preheader, label %.lr.ph166.split.new

.lr.ph166.split.new:                              ; preds = %.lr.ph166.split
  %unroll_iter240 = and i64 %wide.trip.count196, 2147483646
  br label %.critedge6

bb.w:                                             ; preds = %.lr.ph162.split, %bb.v
  %indvars.iv188 = phi i64 [ 0, %.lr.ph162.split ], [ %indvars.iv.next189, %bb.v ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.val121.val, i64 %indvars.iv188
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !36
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [12 x i8], ptr %.val120, i64 %i.gi ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 4            ; 2 uses
  %i.gl = and i64 %i.gk, 536870911
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [12 x i8], ptr %i.gj, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !9
  %i.gq = trunc i64 %i.gk to i32
  %i.gr = lshr i32 %i.gq, 29
  %i.gs = and i32 %i.gr, 1
  %.not98 = icmp eq i32 %i.gs, %i.gp
  br i1 %.not98, label %bb.v, label %.critedge6.thread

.critedge6:                                       ; preds = %.critedge6, %.lr.ph166.split.new
  %indvars.iv193 = phi i64 [ 0, %.lr.ph166.split.new ], [ %indvars.iv.next194.1, %.critedge6 ] ; 3 uses
  %niter241 = phi i64 [ 0, %.lr.ph166.split.new ], [ %niter241.next.1, %.critedge6 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv193
  %i.gt = load i32, ptr %gep, align 4, !tbaa !36
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [12 x i8], ptr %.val118, i64 %i.gu ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 4            ; 2 uses
  %i.gx = and i64 %i.gw, 536870911
  %i.gy = sub nsw i64 0, %i.gx
  %i.gz = getelementptr inbounds [12 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !9
  %i.hc = trunc i64 %i.gw to i32
  %i.hd = lshr i32 %i.hc, 29
  %i.he = and i32 %i.hd, 1
  %i.hf = xor i32 %i.he, %i.hb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !9
  %i.hh = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv193
  %gep.1 = getelementptr i8, ptr %i.hh, i64 4
  %i.hi = load i32, ptr %gep.1, align 4, !tbaa !36
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [12 x i8], ptr %.val118, i64 %i.hj ; 3 uses
  %i.hl = load i64, ptr %i.hk, align 4            ; 2 uses
  %i.hm = and i64 %i.hl, 536870911
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = getelementptr inbounds [12 x i8], ptr %i.hk, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !9
  %i.hr = trunc i64 %i.hl to i32
  %i.hs = lshr i32 %i.hr, 29
  %i.ht = and i32 %i.hs, 1
  %i.hu = xor i32 %i.ht, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !9
  %indvars.iv.next194.1 = add nuw nsw i64 %indvars.iv193, 2 ; 2 uses
  %niter241.next.1 = add i64 %niter241, 2         ; 2 uses
  %niter241.ncmp.1 = icmp eq i64 %niter241.next.1, %unroll_iter240
  br i1 %niter241.ncmp.1, label %.critedge8.loopexit.unr-lcssa, label %.critedge6, !llvm.loop !140

.critedge8.loopexit.unr-lcssa:                    ; preds = %.critedge6
  %lcmp.mod238.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod238.not, label %.critedge8, label %.critedge6.epil.preheader

.critedge6.epil.preheader:                        ; preds = %.critedge8.loopexit.unr-lcssa, %.lr.ph166.split
  %indvars.iv193.epil.init = phi i64 [ 0, %.lr.ph166.split ], [ %indvars.iv.next194.1, %.critedge8.loopexit.unr-lcssa ]
  %lcmp.mod239 = trunc i32 %.val114 to i1
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv193.epil.init
  %i.hw = load i32, ptr %gep.epil, align 4, !tbaa !36
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [12 x i8], ptr %.val118, i64 %i.hx ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 4            ; 2 uses
  %i.ia = and i64 %i.hz, 536870911
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [12 x i8], ptr %i.hy, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9
  %i.if = trunc i64 %i.hz to i32
  %i.ig = lshr i32 %i.if, 29
  %i.ih = and i32 %i.ig, 1
  %i.ii = xor i32 %i.ih, %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !9
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge6.epil.preheader, %.critedge8.loopexit.unr-lcssa, %.lr.ph166, %.critedge6.preheader
  %i.ik = add nuw nsw i32 %.0227, 1               ; 3 uses
  %i.il = icmp slt i32 %i.ik, %1
  %i.im = select i1 %i.u, i1 true, i1 %i.il
  br i1 %i.im, label %.lr.ph228, label %.critedge6.thread, !llvm.loop !141

.critedge6.thread:                                ; preds = %.lr.ph162, %.critedge8, %bb.w, %Abc_UtilStrsav.exit135
  %.0220 = phi i32 [ %.0227, %bb.w ], [ 0, %Abc_UtilStrsav.exit135 ], [ %.0227, %.lr.ph162 ], [ %i.ik, %.critedge8 ]
  br i1 %.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge6.thread
  %i.in = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.0220) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge6.thread
  %.val127167 = load i32, ptr %4, align 8, !tbaa !42 ; 2 uses
  %i.io = icmp sgt i32 %.val127167, 0
  br i1 %i.io, label %.lr.ph170, label %.critedge10

.lr.ph170:                                        ; preds = %bb.y, %bb.z
  %.val127169 = phi i32 [ %.val127, %bb.z ], [ %.val127167, %bb.y ]
  %.5168 = phi i32 [ %i.jb, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.val116 = load ptr, ptr %i.s, align 8, !tbaa !31 ; 2 uses
  %.not101 = icmp eq ptr %.val116, null
  br i1 %.not101, label %.critedge10, label %bb.z

bb.z:                                             ; preds = %.lr.ph170
  %.val109 = load ptr, ptr %5, align 8, !tbaa !37 ; 2 uses
  %i.ip = getelementptr i8, ptr %.val109, i64 8
  %.val117.val = load ptr, ptr %i.ip, align 8, !tbaa !35
  %i.iq = getelementptr i8, ptr %.val109, i64 4
  %.val109.val = load i32, ptr %i.iq, align 4, !tbaa !33
  %i.ir = sub i32 %.5168, %.val127169
  %i.is = add i32 %i.ir, %.val109.val
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %.val117.val, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !36
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [12 x i8], ptr %.val116, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !9
  %i.ja = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.d, i32 noundef %i.iz) ; 0 uses
  %i.jb = add nuw nsw i32 %.5168, 1               ; 2 uses
  %.val127 = load i32, ptr %4, align 8, !tbaa !42 ; 2 uses
  %i.jc = icmp slt i32 %i.jb, %.val127
  br i1 %i.jc, label %.lr.ph170, label %.critedge10, !llvm.loop !142

.critedge10:                                      ; preds = %.lr.ph170, %bb.z, %bb.y
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.d) #26
  %i.jd = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.d) #26 ; 4 uses
  br i1 %.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge10
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !39
  %i.jg = load ptr, ptr %6, align 8, !tbaa !32
  %i.jh = getelementptr i8, ptr %i.jg, i64 4
  %.val3.i = load i32, ptr %i.jh, align 4, !tbaa !33
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !37
  %i.jk = getelementptr i8, ptr %i.jj, i64 4
  %.val.i138 = load i32, ptr %i.jk, align 4, !tbaa !33
  %i.jl = add i32 %.val.i138, %.val3.i
  %i.jm = xor i32 %i.jl, -1
  %i.jn = add i32 %i.jf, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !39
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !32
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  %.val3.i139 = load i32, ptr %i.js, align 4, !tbaa !33
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !37
  %i.jv = getelementptr i8, ptr %i.ju, i64 4
  %.val.i140 = load i32, ptr %i.jv, align 4, !tbaa !33
  %i.jw = add i32 %.val.i140, %.val3.i139
  %i.jx = xor i32 %i.jw, -1
  %i.jy = add i32 %i.jp, %i.jx
  %i.jz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.jn, i32 noundef %i.jy) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge10
  tail call void @Gia_ManStop(ptr noundef nonnull %i.d) #26
  ret ptr %i.jd
}

declare void @Gia_ManPrintStats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !143
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !144
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !31
  %i.s = load i32, ptr %i.c, align 4, !tbaa !143  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #24 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !145
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !143 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !143
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !33
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !34
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #24
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !34
  %.pre = load i32, ptr %i.al, align 4, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !33
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !39
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !31
end_hunk_1
