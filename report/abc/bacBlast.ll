inline.NumInlined: 467
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Bac_ManAddBarbuf:bb.a
.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !31
  %i.gi = sext i32 %i.gf to i64                   ; 2 uses
  %i.gj = shl nsw i64 %i.gi, 2
  %scevgep.i = getelementptr i8, ptr %i.gh, i64 %i.gj
  %i.gk = sext i32 %i.fl to i64
  %i.gl = sub nsw i64 %i.gk, %i.gi
  %i.gm = shl nuw nsw i64 %i.gl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 -1, i64 %i.gm, i1 false), !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !30
  %.pre81 = load ptr, ptr %i.fg, align 8, !tbaa !33
  br label %Vec_IntSetEntryFull.exit

Vec_IntSetEntryFull.exit:                         ; preds = %bb.as, %._crit_edge.i.i
  %i.gn = phi ptr [ %i.fh, %bb.as ], [ %.pre81, %._crit_edge.i.i ] ; 6 uses
  %i.go = getelementptr i8, ptr %7, i64 8
  %.val.i69 = load ptr, ptr %i.go, align 8, !tbaa !31
  %i.gp = sext i32 %i.ff to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i69, i64 %i.gp
  store i32 %i.fk, ptr %i.gq, align 4, !tbaa !32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !30 ; 7 uses
  %i.gt = load i32, ptr %i.gn, align 8, !tbaa !50
  %i.gu = icmp eq i32 %i.gs, %i.gt
  br i1 %i.gu, label %bb.bf, label %Vec_IntPush.exit77

bb.bf:                                            ; preds = %Vec_IntSetEntryFull.exit
  %i.gv = icmp slt i32 %i.gs, 16
  br i1 %i.gv, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i75 = icmp eq ptr %i.gx, null
  br i1 %.not9.i.i75, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i76

bb.bi:                                            ; preds = %bb.bg
  %i.gz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i76

Vec_IntGrow.exit.i76:                             ; preds = %bb.bi, %bb.bh
  %i.ha = phi ptr [ %i.gy, %bb.bh ], [ %i.gz, %bb.bi ]
  store ptr %i.ha, ptr %i.gw, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i73

bb.bj:                                            ; preds = %bb.bf
  %i.hb = icmp samesign ult i32 %i.gs, 1073741823
  %i.hc = shl nuw nsw i32 %i.gs, 1
  %spec.select.i70 = select i1 %i.hb, i32 %i.hc, i32 2147483647 ; 3 uses
  %.not.i9.i71 = icmp samesign ult i32 %i.gs, %spec.select.i70
  br i1 %.not.i9.i71, label %bb.bk, label %Vec_IntPush.exit77

bb.bk:                                            ; preds = %bb.bj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i72 = icmp eq ptr %i.he, null
  %i.hf = zext nneg i32 %spec.select.i70 to i64
  %i.hg = shl nuw nsw i64 %i.hf, 2                ; 2 uses
  br i1 %.not9.i10.i72, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hh = tail call ptr @realloc(ptr noundef nonnull %i.he, i64 noundef %i.hg) #23
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.hi = tail call noalias ptr @malloc(i64 noundef %i.hg) #24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hj = phi ptr [ %i.hh, %bb.bl ], [ %i.hi, %bb.bm ]
  store ptr %i.hj, ptr %i.hd, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i73

Vec_IntGrow.exit11.sink.split.i73:                ; preds = %bb.bn, %Vec_IntGrow.exit.i76
  %spec.select.sink.i74 = phi i32 [ %spec.select.i70, %bb.bn ], [ 16, %Vec_IntGrow.exit.i76 ]
  store i32 %spec.select.sink.i74, ptr %i.gn, align 8, !tbaa !50
  %.pre82 = load i32, ptr %i.gr, align 4, !tbaa !30
  br label %Vec_IntPush.exit77

Vec_IntPush.exit77:                               ; preds = %Vec_IntSetEntryFull.exit, %bb.bj, %Vec_IntGrow.exit11.sink.split.i73
  %i.hk = phi i32 [ %i.gs, %Vec_IntSetEntryFull.exit ], [ %i.gs, %bb.bj ], [ %.pre82, %Vec_IntGrow.exit11.sink.split.i73 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !31
  %i.hn = add nsw i32 %i.hk, 1
  store i32 %i.hn, ptr %i.gr, align 4, !tbaa !30
  %i.ho = sext i32 %i.hk to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  store i32 %i.fe, ptr %i.hp, align 4, !tbaa !32
  br label %bb.bo

bb.bo:                                            ; preds = %Vec_IntPush.exit68, %Vec_IntPush.exit77, %bb.a, %bb.g
  %.0 = phi i32 [ %1, %bb.a ], [ %i.z, %bb.g ], [ %i.fe, %Vec_IntPush.exit77 ], [ %i.fe, %Vec_IntPush.exit68 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @Bac_ManExtract_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 33 uses
  %5 = alloca %struct.Vec_Int_t_, align 8         ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 168        ; 6 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = sext i32 %2 to i64                       ; 6 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 9 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 88         ; 3 uses
  %.val159 = load ptr, ptr %i.g, align 8, !tbaa !53 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.val159, i64 %i.c
  %i.i = load i8, ptr %i.h, align 1, !tbaa !55    ; 2 uses
  %i.j = and i8 %i.i, -4
  %narrow.i.not = icmp eq i8 %i.j, 4
  br i1 %narrow.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %1, i64 104
  %.val160 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds [4 x i8], ptr %.val160, i64 %i.c
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = tail call i32 @Bac_ManExtract_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %3, ptr noundef %4)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %.mask.i = and i8 %i.i, -2
  switch i8 %.mask.i, label %.thread [
    i8 2, label %bb.e
    i8 8, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !56   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %Bac_ManNtkIsOk.exit.i.i, label %Bac_NtkHostNtk.exit

Bac_ManNtkIsOk.exit.i.i:                          ; preds = %bb.e
  %i.r = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 36
  %.val.i.i.i = load i32, ptr %i.s, align 4, !tbaa !60
  %.not4.i.i = icmp sgt i32 %i.p, %.val.i.i.i
  br i1 %.not4.i.i, label %Bac_NtkHostNtk.exit, label %bb.f

bb.f:                                             ; preds = %Bac_ManNtkIsOk.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [208 x i8], ptr %i.u, i64 %i.v
  br label %Bac_NtkHostNtk.exit

Bac_NtkHostNtk.exit:                              ; preds = %bb.e, %Bac_ManNtkIsOk.exit.i.i, %bb.f
  %i.x = phi ptr [ null, %bb.e ], [ %i.w, %bb.f ], [ null, %Bac_ManNtkIsOk.exit.i.i ] ; 3 uses
  %i.y = getelementptr i8, ptr %1, i64 20
  %.val162 = load i32, ptr %i.y, align 4, !tbaa !62
  %i.z = getelementptr i8, ptr %1, i64 120
  %.val164 = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds [4 x i8], ptr %.val164, i64 %i.c
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add i32 %.val162, %i.ac                 ; 2 uses
  %i.ae = tail call i32 @Bac_ManExtract_rec(ptr noundef %0, ptr noundef %i.x, i32 noundef %i.ad, i32 noundef %3, ptr noundef %4) ; 2 uses
  %.not156 = icmp eq i32 %3, 0
  br i1 %.not156, label %.thread, label %bb.g

bb.g:                                             ; preds = %Bac_NtkHostNtk.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 208
  %i.am = trunc i64 %i.al to i32
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = ptrtoint ptr %i.x to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 208
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call i32 @Bac_ManAddBarbuf(ptr noundef %0, i32 noundef %i.ae, ptr noundef %i.af, i32 noundef %i.am, i32 noundef %2, i32 noundef %i.au, i32 noundef %i.ad, ptr noundef %4)
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %1, i64 120
  %.val166 = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds [4 x i8], ptr %.val166, i64 %i.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32 ; 3 uses
  %i.az = xor i32 %i.ay, -1
  %i.ba = add i32 %2, %i.az                       ; 5 uses
  %i.bb = sext i32 %i.ba to i64                   ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.val159, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !55
  %.mask.i172 = and i8 %i.bd, -2
  %.not186 = icmp eq i8 %.mask.i172, 10
  br i1 %.not186, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 104
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bb
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %Bac_ManNtkIsOk.exit.i.i173, label %Bac_BoxBoNtk.exit

Bac_ManNtkIsOk.exit.i.i173:                       ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %i.be, i64 36
  %.val.i.i.i174 = load i32, ptr %i.bj, align 4, !tbaa !60
  %.not4.i.i175 = icmp sgt i32 %i.bh, %.val.i.i.i174
  br i1 %.not4.i.i175, label %Bac_BoxBoNtk.exit, label %bb.j

bb.j:                                             ; preds = %Bac_ManNtkIsOk.exit.i.i173
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !61
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw [208 x i8], ptr %i.bl, i64 %i.bm
  br label %Bac_BoxBoNtk.exit

Bac_BoxBoNtk.exit:                                ; preds = %bb.i, %Bac_ManNtkIsOk.exit.i.i173, %bb.j
  %i.bo = phi ptr [ %i.bn, %bb.j ], [ null, %Bac_ManNtkIsOk.exit.i.i173 ], [ null, %bb.i ] ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %.val169 = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.bq = sext i32 %i.ay to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val169, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32 ; 2 uses
  %i.bt = tail call i32 @Bac_ManExtract_rec(ptr noundef %0, ptr noundef %i.bo, i32 noundef %i.bs, i32 noundef %3, ptr noundef %4) ; 2 uses
  %.not155 = icmp eq i32 %3, 0
  br i1 %.not155, label %.thread, label %bb.k

bb.k:                                             ; preds = %Bac_BoxBoNtk.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61
  %i.bx = ptrtoint ptr %1 to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 208
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !61
  %i.cf = ptrtoint ptr %i.bo to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 208
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = tail call i32 @Bac_ManAddBarbuf(ptr noundef %0, i32 noundef %i.bt, ptr noundef %i.bu, i32 noundef %i.cb, i32 noundef %2, i32 noundef %i.cj, i32 noundef %i.bs, ptr noundef %4)
  br label %.thread

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cl = add i32 %i.ba, -1                       ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.cn = getelementptr i8, ptr %1, i64 104
  %i.co = zext i32 %i.ba to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.a, %bb.n ] ; 4 uses
  %6 = phi i32 [ %i.cl, %.lr.ph ], [ %10, %bb.n ]
  %.val158 = load ptr, ptr %i.g, align 8, !tbaa !53
  %7 = zext nneg i32 %6 to i64                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val158, i64 %7
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !55
  %.mask.i176 = and i8 %i.cq, -2
  %.not187 = icmp eq i8 %.mask.i176, 6
  br i1 %.not187, label %bb.n, label %.critedge.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %.val170 = load ptr, ptr %i.cn, align 8, !tbaa !31
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val170, i64 %7
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = tail call i32 @Bac_ManExtract_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.cs, i32 noundef %3, ptr noundef %4)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.a
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !32
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %8 = trunc i64 %indvars.iv.a to i32
  %9 = sub i32 %i.ba, %8
  %10 = add i32 %9, -2
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.co
  br i1 %exitcond.not, label %.critedge, label %bb.m, !llvm.loop !63

.critedge.loopexit.split.loop.exit:               ; preds = %bb.m
  %i.cv = trunc nuw nsw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.loopexit.split.loop.exit, %bb.l
  %.0135.lcssa = phi i32 [ 0, %bb.l ], [ %i.cv, %.critedge.loopexit.split.loop.exit ], [ %i.ba, %bb.n ] ; 3 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !59
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 136
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !23 ; 2 uses
  %.not154 = icmp eq ptr %i.cy, null
  br i1 %.not154, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %.critedge
  %.val157 = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.cz = getelementptr inbounds i8, ptr %.val157, i64 %i.bb
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !55
  %i.db = lshr i8 %i.da, 1                        ; 4 uses
  switch i32 %.0135.lcssa, label %.thread182 [
    i32 0, label %bb.p
    i32 1, label %bb.r
    i32 2, label %bb.u
    i32 3, label %bb.ad
  ]

bb.p:                                             ; preds = %bb.o
  switch i8 %i.db, label %.fold.split [
    i8 6, label %.thread182
    i8 7, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %.thread182

bb.r:                                             ; preds = %bb.o
  switch i8 %i.db, label %.thread182 [
    i8 10, label %bb.s
    i8 11, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.dc = load i32, ptr %i.a, align 16, !tbaa !32
  br label %.thread182

bb.t:                                             ; preds = %bb.r
  %i.dd = load i32, ptr %i.a, align 16, !tbaa !32
  %i.de = xor i32 %i.dd, 1
  br label %.thread182

bb.u:                                             ; preds = %bb.o
  switch i8 %i.db, label %.thread182 [
    i8 12, label %bb.v
    i8 13, label %bb.w
    i8 14, label %bb.x
    i8 15, label %bb.y
    i8 16, label %bb.z
    i8 17, label %bb.aa
    i8 18, label %bb.ab
    i8 19, label %bb.ac
  ]

bb.v:                                             ; preds = %bb.u
  %i.df = load i32, ptr %i.a, align 16, !tbaa !32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.df, i32 noundef %i.dh) #21
  br label %.thread182

bb.w:                                             ; preds = %bb.u
  %i.dj = load i32, ptr %i.a, align 16, !tbaa !32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32
  %i.dm = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.dj, i32 noundef %i.dl) #21
  %i.dn = xor i32 %i.dm, 1
  br label %.thread182

bb.x:                                             ; preds = %bb.u
  %i.do = load i32, ptr %i.a, align 16, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.dr = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.do, i32 noundef %i.dq) #21
  br label %.thread182

bb.y:                                             ; preds = %bb.u
  %i.ds = load i32, ptr %i.a, align 16, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !32
  %i.dv = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.ds, i32 noundef %i.du) #21
  %i.dw = xor i32 %i.dv, 1
  br label %.thread182

bb.z:                                             ; preds = %bb.u
  %i.dx = load i32, ptr %i.a, align 16, !tbaa !32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !32
  %i.ea = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.dx, i32 noundef %i.dz) #21
  br label %.thread182

bb.aa:                                            ; preds = %bb.u
  %i.eb = load i32, ptr %i.a, align 16, !tbaa !32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !32
  %i.ee = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.eb, i32 noundef %i.ed) #21
  %i.ef = xor i32 %i.ee, 1
  br label %.thread182

bb.ab:                                            ; preds = %bb.u
  %i.eg = load i32, ptr %i.a, align 16, !tbaa !32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32
  %i.ej = xor i32 %i.ei, 1
  %i.ek = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.ej) #21
  br label %.thread182

bb.ac:                                            ; preds = %bb.u
  %i.el = load i32, ptr %i.a, align 16, !tbaa !32
  %i.em = xor i32 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32
  %i.ep = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.em, i32 noundef %i.eo) #21
  br label %.thread182

bb.ad:                                            ; preds = %bb.o
  switch i8 %i.db, label %.thread182 [
    i8 20, label %bb.ae
    i8 21, label %bb.af
    i8 41, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load i32, ptr %i.a, align 16, !tbaa !32
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !32
  %i.ev = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.eq, i32 noundef %i.es, i32 noundef %i.eu) #21
  br label %.thread182

bb.af:                                            ; preds = %bb.ad
  %i.ew = load i32, ptr %i.a, align 16, !tbaa !32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !32
  %i.fb = tail call i32 @Gia_ManHashMaj(ptr noundef %0, i32 noundef %i.ew, i32 noundef %i.ey, i32 noundef %i.fa) #21
  br label %.thread182

bb.ag:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !32 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !32 ; 2 uses
  %i.fg = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.fd, i32 noundef %i.ff) #21 ; 2 uses
  %i.fh = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.fd, i32 noundef %i.ff) #21 ; 2 uses
  switch i32 %i.ay, label %.thread182 [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fi = load i32, ptr %i.a, align 16, !tbaa !32
  %i.fj = xor i32 %i.fg, 1
  %i.fk = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.fj, i32 noundef %i.fh) #21
  %i.fl = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.fi, i32 noundef %i.fk) #21
  br label %.thread182

bb.ai:                                            ; preds = %bb.ag
  %i.fm = load i32, ptr %i.a, align 16, !tbaa !32
  %i.fn = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.fm, i32 noundef %i.fh) #21
  %i.fo = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.fg, i32 noundef %i.fn) #21
  br label %.thread182

.fold.split:                                      ; preds = %bb.p
  br label %.thread182

.thread182:                                       ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.ad, %bb.o, %bb.u, %bb.r, %bb.p, %.fold.split, %bb.t, %bb.s, %bb.af, %bb.ae, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.q
  %.4.ph = phi i32 [ %i.e, %bb.ag ], [ %i.fo, %bb.ai ], [ %i.fl, %bb.ah ], [ %i.e, %bb.ad ], [ %i.e, %.fold.split ], [ %i.fb, %bb.af ], [ %i.ev, %bb.ae ], [ %i.e, %bb.u ], [ %i.ep, %bb.ac ], [ %i.ek, %bb.ab ], [ %i.ef, %bb.aa ], [ %i.ea, %bb.z ], [ %i.dw, %bb.y ], [ %i.dr, %bb.x ], [ %i.dn, %bb.w ], [ %i.di, %bb.v ], [ %i.e, %bb.r ], [ %i.de, %bb.t ], [ %i.dc, %bb.s ], [ 0, %bb.p ], [ 1, %bb.q ], [ %i.e, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread

bb.aj:                                            ; preds = %.critedge
  %i.fp = getelementptr i8, ptr %1, i64 104
  %.val168 = load ptr, ptr %i.fp, align 8, !tbaa !31
  %i.fq = getelementptr inbounds [4 x i8], ptr %.val168, i64 %i.bb
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !32
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 %.0135.lcssa, ptr %5, align 8, !tbaa !50
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.0135.lcssa, ptr %i.fv, align 4, !tbaa !30
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.fw, align 8, !tbaa !31
  %i.fx = call i32 @Gia_ManFactorGraph(ptr noundef %0, ptr noundef %i.fu, ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.au
end_hunk_0
