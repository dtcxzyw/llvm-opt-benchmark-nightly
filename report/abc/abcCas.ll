Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_NtkUpdateTiming:bb.a

bb.cr:                                            ; preds = %bb.cq
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !82 ; 2 uses
  %.not9.i10.i.i312 = icmp eq ptr %i.rq, null
  %i.rr = zext nneg i32 %spec.select.i.i310 to i64
  %i.rs = shl nuw nsw i64 %i.rr, 2                ; 2 uses
  br i1 %.not9.i10.i.i312, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rt = tail call ptr @realloc(ptr noundef nonnull %i.rq, i64 noundef %i.rs) #32
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.ru = tail call noalias ptr @malloc(i64 noundef %i.rs) #31
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.rv = phi ptr [ %i.rt, %bb.cs ], [ %i.ru, %bb.ct ]
  store ptr %i.rv, ptr %i.rp, align 8, !tbaa !82
  br label %Vec_IntGrow.exit11.sink.split.i.i313

Vec_IntGrow.exit11.sink.split.i.i313:             ; preds = %bb.cu, %Vec_IntGrow.exit.i.i317
  %spec.select.sink.i.i314 = phi i32 [ %spec.select.i.i310, %bb.cu ], [ 16, %Vec_IntGrow.exit.i.i317 ]
  store i32 %spec.select.sink.i.i314, ptr %i.rc, align 8, !tbaa !81
  %.pre.i315 = load i32, ptr %i.rd, align 4, !tbaa !80
  br label %Vec_WecPush.exit320

Vec_WecPush.exit320:                              ; preds = %bb.cl, %bb.cq, %Vec_IntGrow.exit11.sink.split.i.i313
  %i.rw = phi i32 [ %i.re, %bb.cl ], [ %i.re, %bb.cq ], [ %.pre.i315, %Vec_IntGrow.exit11.sink.split.i.i313 ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !82
  %i.rz = add nsw i32 %i.rw, 1
  store i32 %i.rz, ptr %i.rd, align 4, !tbaa !80
  %i.sa = sext i32 %i.rw to i64
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.sa
  store i32 %i.qg, ptr %i.sb, align 4, !tbaa !60
  br label %bb.cv

bb.cv:                                            ; preds = %Abc_NodeIsTravIdCurrent.exit288, %Vec_WecPush.exit320
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %.val209 = load i32, ptr %i.na, align 4, !tbaa !117
  %i.sc = sext i32 %.val209 to i64
  %i.sd = icmp slt i64 %indvars.iv.next378, %i.sc
  br i1 %i.sd, label %bb.bg, label %.critedge12, !llvm.loop !320

.critedge12:                                      ; preds = %bb.cv, %.preheader324, %bb.bb, %Abc_NtkUpdateNodeR.exit
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %.val203 = load i32, ptr %i.kw, align 4, !tbaa !80
  %i.se = sext i32 %.val203 to i64
  %i.sf = icmp slt i64 %indvars.iv.next381, %i.se
  br i1 %i.sf, label %bb.bb, label %.critedge10, !llvm.loop !321

.critedge10:                                      ; preds = %.critedge12, %bb.ba
  %indvars.iv.next384 = add nsw i64 %indvars.iv383, -1
  %i.sg = icmp sgt i64 %indvars.iv383, 0
  br i1 %i.sg, label %bb.ba, label %.critedge8.preheader, !llvm.loop !322

bb.cw:                                            ; preds = %.lr.ph352, %.critedge8
  %.val202394 = phi i32 [ %.val202349, %.lr.ph352 ], [ %.val202, %.critedge8 ] ; 2 uses
  %indvars.iv385 = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next386, %.critedge8 ] ; 2 uses
  %.2351 = phi i32 [ 0, %.lr.ph352 ], [ %.3, %.critedge8 ] ; 4 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.val193, i64 %indvars.iv385
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !60
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %.val218.val, i64 %i.sj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !49 ; 3 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %.critedge8, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sn = load ptr, ptr %i.kq, align 8, !tbaa !111
  %i.so = getelementptr i8, ptr %i.sl, i64 32
  %.val212 = load ptr, ptr %i.so, align 8, !tbaa !118
  %.val212.val = load i32, ptr %.val212, align 4, !tbaa !60
  %i.sp = getelementptr i8, ptr %i.sn, i64 8
  %.val192 = load ptr, ptr %i.sp, align 8, !tbaa !82
  %i.sq = sext i32 %.val212.val to i64
  %i.sr = getelementptr inbounds [4 x i8], ptr %.val192, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !60
  %i.st = load i32, ptr %i.kr, align 8, !tbaa !108
  %i.su = add nsw i32 %i.st, %i.ss
  %i.sv = load i32, ptr %i.ks, align 4, !tbaa !121
  %i.sw = icmp eq i32 %i.su, %i.sv
  br i1 %i.sw, label %bb.cy, label %.critedge8

bb.cy:                                            ; preds = %bb.cx
  %i.sx = add nsw i32 %.2351, 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !55
  %i.ta = sext i32 %.2351 to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %.val193, i64 %i.ta
  store i32 %i.sz, ptr %i.tb, align 4, !tbaa !60
  %.val202.pre = load i32, ptr %i.kk, align 4, !tbaa !80
  br label %.critedge8

.critedge8:                                       ; preds = %bb.cw, %bb.cy, %bb.cx
  %.val202 = phi i32 [ %.val202394, %bb.cw ], [ %.val202.pre, %bb.cy ], [ %.val202394, %bb.cx ] ; 2 uses
  %.3 = phi i32 [ %.2351, %bb.cw ], [ %i.sx, %bb.cy ], [ %.2351, %bb.cx ] ; 2 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %i.tc = sext i32 %.val202 to i64
  %i.td = icmp slt i64 %indvars.iv.next386, %i.tc
  br i1 %i.td, label %bb.cw, label %.critedge14, !llvm.loop !323

.critedge14:                                      ; preds = %.critedge8, %.critedge8.preheader
  %.2.lcssa = phi i32 [ 0, %.critedge8.preheader ], [ %.3, %.critedge8 ]
  store i32 %.2.lcssa, ptr %i.kk, align 4, !tbaa !80
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !111 ; 2 uses
  %i.tg = getelementptr i8, ptr %i.tf, i64 4      ; 4 uses
  %.val201355 = load i32, ptr %i.tg, align 4, !tbaa !80 ; 2 uses
  %i.th = icmp sgt i32 %.val201355, 0
  br i1 %i.th, label %.lr.ph358, label %.critedge16.thread

.critedge16.thread:                               ; preds = %.critedge14
  store i32 0, ptr %i.tg, align 4, !tbaa !80
  br label %bb.di

.lr.ph358:                                        ; preds = %.critedge14
  %i.ti = load ptr, ptr %0, align 8, !tbaa !106
  %i.tj = getelementptr i8, ptr %i.tf, i64 8
  %.val191 = load ptr, ptr %i.tj, align 8, !tbaa !82 ; 2 uses
  %i.tk = getelementptr i8, ptr %i.ti, i64 32
  %.val217 = load ptr, ptr %i.tk, align 8, !tbaa !110
  %i.tl = getelementptr i8, ptr %.val217, i64 8
  %.val217.val = load ptr, ptr %i.tl, align 8, !tbaa !48
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph358, %bb.dc
  %.val201396 = phi i32 [ %.val201355, %.lr.ph358 ], [ %.val201, %bb.dc ] ; 2 uses
  %indvars.iv388 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next389, %bb.dc ] ; 2 uses
  %.4357 = phi i32 [ 0, %.lr.ph358 ], [ %.5, %bb.dc ] ; 4 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.val191, i64 %indvars.iv388
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !60
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [8 x i8], ptr %.val217.val, i64 %i.tp
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !49 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tt = load ptr, ptr %.phi.trans.insert.i252, align 8, !tbaa !111
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !55 ; 2 uses
  %i.tw = getelementptr i8, ptr %i.tt, i64 8
  %.val190 = load ptr, ptr %i.tw, align 8, !tbaa !82
  %i.tx = sext i32 %i.tv to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %.val190, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !60
  %i.ua = load i32, ptr %i.tm, align 4, !tbaa !121
  %i.ub = icmp eq i32 %i.tz, %i.ua
  br i1 %i.ub, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uc = add nsw i32 %.4357, 1
  %i.ud = sext i32 %.4357 to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %.val191, i64 %i.ud
  store i32 %i.tv, ptr %i.ue, align 4, !tbaa !60
  %.val201.pre = load i32, ptr %i.tg, align 4, !tbaa !80
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db, %bb.da
  %.val201 = phi i32 [ %.val201396, %bb.cz ], [ %.val201.pre, %bb.db ], [ %.val201396, %bb.da ] ; 2 uses
  %.5 = phi i32 [ %.4357, %bb.cz ], [ %i.uc, %bb.db ], [ %.4357, %bb.da ] ; 3 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %i.uf = sext i32 %.val201 to i64
  %i.ug = icmp slt i64 %indvars.iv.next389, %i.uf
  br i1 %i.ug, label %bb.cz, label %.critedge16, !llvm.loop !324

.critedge16:                                      ; preds = %bb.dc
  store i32 %.5, ptr %i.tg, align 4, !tbaa !80
  %.val200 = load i32, ptr %i.kk, align 4, !tbaa !80
  %.not = icmp eq i32 %.val200, 0
  %.not172 = icmp eq i32 %.5, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not172
  br i1 %or.cond, label %bb.di, label %.preheader

.preheader:                                       ; preds = %.critedge16
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !114 ; 2 uses
  %i.uj = getelementptr i8, ptr %i.ui, i64 4      ; 3 uses
  %.val198362 = load i32, ptr %i.uj, align 4, !tbaa !80 ; 2 uses
  %i.uk = icmp sgt i32 %.val198362, 1
  br i1 %i.uk, label %.critedge18.lr.ph, label %._crit_edge

.critedge18.lr.ph:                                ; preds = %.preheader
  %i.ul = getelementptr i8, ptr %i.ui, i64 8
  %.val189 = load ptr, ptr %i.ul, align 8, !tbaa !82 ; 2 uses
  %i.um = load ptr, ptr %i.kf, align 8, !tbaa !111
  %i.un = getelementptr i8, ptr %i.um, i64 8
  %.val187 = load ptr, ptr %i.un, align 8, !tbaa !82
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.critedge18

.critedge18:                                      ; preds = %.critedge18.lr.ph, %bb.dh
  %.val198398 = phi i32 [ %.val198362, %.critedge18.lr.ph ], [ %.val198, %bb.dh ] ; 4 uses
  %indvars.iv391 = phi i64 [ 0, %.critedge18.lr.ph ], [ %indvars.iv.next392, %bb.dh ] ; 2 uses
  %.0156364 = phi i32 [ 0, %.critedge18.lr.ph ], [ %.1, %bb.dh ] ; 6 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.val189, i64 %indvars.iv391 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !60 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !60 ; 2 uses
  %i.uw = sext i32 %i.ut to i64                   ; 3 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %.val187, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !60
  %.not173 = icmp eq i32 %i.uy, 0
  br i1 %.not173, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %.critedge18
  %i.uz = load ptr, ptr %i.uo, align 8, !tbaa !111
  %i.va = getelementptr i8, ptr %i.uz, i64 8
  %.val186 = load ptr, ptr %i.va, align 8, !tbaa !82
  %i.vb = sext i32 %i.uv to i64                   ; 2 uses
  %i.vc = getelementptr inbounds [4 x i8], ptr %.val186, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !60
  %.not174 = icmp eq i32 %i.vd, 0
  br i1 %.not174, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.ve = load ptr, ptr %i.up, align 8, !tbaa !111
  %i.vf = getelementptr i8, ptr %i.ve, i64 8
  %.val185 = load ptr, ptr %i.vf, align 8, !tbaa !82 ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %.val185, i64 %i.uw
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !60 ; 2 uses
  %i.vi = load ptr, ptr %.phi.trans.insert.i252, align 8, !tbaa !111
  %i.vj = getelementptr i8, ptr %i.vi, i64 8
  %.val184 = load ptr, ptr %i.vj, align 8, !tbaa !82
  %i.vk = getelementptr inbounds [4 x i8], ptr %.val184, i64 %i.uw
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !60
  %i.vm = add nsw i32 %i.vl, %i.vh
  %i.vn = load i32, ptr %i.uq, align 4, !tbaa !121
  %i.vo = icmp eq i32 %i.vm, %i.vn
  br i1 %i.vo, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.vp = getelementptr inbounds [4 x i8], ptr %.val185, i64 %i.vb
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !60
  %i.vr = load i32, ptr %i.ur, align 8, !tbaa !108
  %i.vs = add nsw i32 %i.vr, %i.vq
  %i.vt = load i32, ptr %i.ke, align 4, !tbaa !107
  %i.vu = add nsw i32 %i.vs, %i.vt
  %i.vv = icmp eq i32 %i.vu, %i.vh
  br i1 %i.vv, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.vw = sext i32 %.0156364 to i64
  %i.vx = getelementptr [4 x i8], ptr %.val189, i64 %i.vw ; 2 uses
  store i32 %i.ut, ptr %i.vx, align 4, !tbaa !60
  %i.vy = add nsw i32 %.0156364, 2
  %i.vz = getelementptr i8, ptr %i.vx, i64 4
  store i32 %i.uv, ptr %i.vz, align 4, !tbaa !60
  %.val198.pre = load i32, ptr %i.uj, align 4, !tbaa !80
  br label %bb.dh

bb.dh:                                            ; preds = %.critedge18, %bb.dd, %bb.de, %bb.df, %bb.dg
  %.val198 = phi i32 [ %.val198398, %.critedge18 ], [ %.val198398, %bb.dd ], [ %.val198.pre, %bb.dg ], [ %.val198398, %bb.df ], [ %.val198398, %bb.de ] ; 2 uses
  %.1 = phi i32 [ %.0156364, %.critedge18 ], [ %.0156364, %bb.dd ], [ %i.vy, %bb.dg ], [ %.0156364, %bb.df ], [ %.0156364, %bb.de ] ; 2 uses
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 2 ; 2 uses
  %3 = or disjoint i64 %indvars.iv.next392, 1
  %4 = sext i32 %.val198 to i64
  %i.wa = icmp slt i64 %3, %4
  br i1 %i.wa, label %.critedge18, label %._crit_edge, !llvm.loop !325

._crit_edge:                                      ; preds = %bb.dh, %.preheader
  %.0156.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.dh ]
  store i32 %.0156.lcssa, ptr %i.uj, align 4, !tbaa !80
  br label %bb.dj

bb.di:                                            ; preds = %.critedge16.thread, %.critedge16
  %i.wb = tail call i32 @Abc_NtkFindPathTimeD(ptr noundef nonnull %0)
  %i.wc = tail call i32 @Abc_NtkFindPathTimeR(ptr noundef nonnull %0) ; 0 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.wb, ptr %i.wd, align 4, !tbaa !121
  tail call void @Abc_NtkFindCriticalEdges(ptr noundef nonnull %0)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !121
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Abc_NodeSetTravIdCurrentId(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  %i.d = add nsw i32 %1, 1                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !80   ; 4 uses
  %.not.i.not.i = icmp slt i32 %1, %i.f
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.h = shl nsw i32 %i.g, 1                      ; 2 uses
  %.not.i = icmp slt i32 %1, %i.h
  %.not.i.i.not.i = icmp sgt i32 %i.g, %1         ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.j, null
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.l) #32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  store ptr %i.o, ptr %i.i, align 8, !tbaa !82
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %i.g, 1073741823
  %spec.select.i.i = select i1 %i.p, i32 %i.h, i32 2147483647 ; 3 uses
  %.not.i22.i.i = icmp slt i32 %i.g, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82   ; 2 uses
  %.not9.i23.i.i = icmp eq ptr %i.r, null
  %i.s = sext i32 %spec.select.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = phi ptr [ %i.u, %bb.k ], [ %i.v, %bb.l ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !82
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !81
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !80
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.i, %bb.h, %bb.c
  %i.x = phi i32 [ %.pre.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.f, %bb.i ], [ %i.f, %bb.h ], [ %i.f, %bb.c ] ; 3 uses
  %.not4.i = icmp sgt i32 %i.x, %1
  br i1 %.not4.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep.i.i = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ac = sub i32 %1, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.af, i1 false), !tbaa !60
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !80
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.a, %._crit_edge.i.i
  %i.ag = getelementptr i8, ptr %0, i64 232
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.ah = sext i32 %1 to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ah
  store i32 %i.c, ptr %i.ai, align 4, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkAddEdges(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 2 uses
  %.val49 = load i32, ptr %i.f, align 4, !tbaa !80 ; 6 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !81
  %.not.i.i = icmp slt i32 %i.g, %.val49
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  %i.j = sext i32 %.val49 to i64
  %i.k = shl nsw i64 %i.j, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.k) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.k) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  store ptr %i.n, ptr %i.h, align 8, !tbaa !82
  store i32 %.val49, ptr %i.e, align 8, !tbaa !81
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.o = icmp sgt i32 %.val49, 0
  br i1 %i.o, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.r = zext nneg i32 %.val49 to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.s, i1 false), !tbaa !60
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  store i32 %.val49, ptr %i.f, align 4, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111  ; 5 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4        ; 2 uses
  %.val48 = load i32, ptr %i.v, align 4, !tbaa !80 ; 6 uses
  %i.w = load i32, ptr %i.u, align 8, !tbaa !81
  %.not.i.i52 = icmp slt i32 %i.w, %.val48
  br i1 %.not.i.i52, label %bb.f, label %Vec_IntGrow.exit.i53

bb.f:                                             ; preds = %Vec_IntFill.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !82   ; 2 uses
  %.not9.i.i55 = icmp eq ptr %i.y, null
  %i.z = sext i32 %.val48 to i64
  %i.aa = shl nsw i64 %i.z, 2                     ; 2 uses
  br i1 %.not9.i.i55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #32
end_hunk_0
begin_hunk_1_@Abc_NtkAddEdges:bb.a
  tail call void @Abc_NtkFindCriticalEdges(ptr noundef nonnull %0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !109
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Vec_IntFill.exit56
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !121
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.ao) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %Vec_IntFill.exit56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.o
  %.04261 = phi i32 [ 0, %bb.k ], [ %spec.select, %bb.o ] ; 2 uses
  %.04360 = phi i32 [ 0, %bb.k ], [ %i.bu, %bb.o ] ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !114
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %.val47 = load i32, ptr %i.as, align 4, !tbaa !80
  %i.at = icmp eq i32 %.val47, 0
  %.pre62 = load i32, ptr %i.al, align 4, !tbaa !121 ; 2 uses
  br i1 %i.at, label %split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = sitofp i32 %.pre62 to float
  %i.av = tail call i32 @rand() #30
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !114 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val46 = load i32, ptr %i.ax, align 4, !tbaa !80
  %i.ay = srem i32 %i.av, %.val46
  %i.az = sdiv i32 %i.ay, 2
  %i.ba = shl nsw i32 %i.az, 1
  %i.bb = getelementptr i8, ptr %i.aw, i64 8
  %.val45 = load ptr, ptr %i.bb, align 8, !tbaa !82
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr [4 x i8], ptr %.val45, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !60 ; 5 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !60 ; 5 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val51 = load ptr, ptr %i.bi, align 8, !tbaa !82
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val51, i64 %i.bj
  store i32 %i.bg, ptr %i.bk, align 4, !tbaa !60
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val50 = load ptr, ptr %i.bm, align 8, !tbaa !82
  %i.bn = sext i32 %i.bg to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.bn
  store i32 %i.be, ptr %i.bo, align 4, !tbaa !60
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !115
  tail call fastcc void @Vec_IntPushTwo(ptr noundef %i.bp, i32 noundef %i.be, i32 noundef %i.bg)
  %i.bq = tail call i32 @Abc_NtkUpdateTiming(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef %i.bg) ; 0 uses
  %i.br = load i32, ptr %i.al, align 4, !tbaa !121 ; 2 uses
  %i.bs = sitofp i32 %i.br to float
  %i.bt = fcmp ogt float %i.au, %i.bs
  %i.bu = add nuw nsw i32 %.04360, 1              ; 3 uses
  %spec.select = select i1 %i.bt, i32 %i.bu, i32 %.04261 ; 2 uses
  %i.bv = load i32, ptr %i.am, align 8, !tbaa !109
  %.not44 = icmp eq i32 %i.bv, 0
  br i1 %.not44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %.04360, i32 noundef %i.br, i32 noundef %i.bg, i32 noundef %i.be) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %exitcond.not = icmp eq i32 %i.bu, 10000
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !327

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i32, ptr %i.al, align 4, !tbaa !121
  br label %split, !llvm.loop !327

split:                                            ; preds = %bb.l, %._crit_edge
  %i.bx = phi i32 [ %.pre, %._crit_edge ], [ %.pre62, %bb.l ]
  %.042.lcssa = phi i32 [ %spec.select, %._crit_edge ], [ %.04261, %bb.l ]
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.bz = shl nsw i32 %.042.lcssa, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !80
  ret i32 %i.bx
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkProfileCascades(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !79
  store i32 100, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val76 = load ptr, ptr %i.e, align 8, !tbaa !110 ; 2 uses
  %i.f = getelementptr i8, ptr %.val76, i64 4
  %.val76.val = load i32, ptr %i.f, align 4, !tbaa !51 ; 12 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.h = add i32 %.val76.val, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val76.val ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !81
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i92, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.j = sext i32 %spec.store.select.i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #31 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !82
  store i32 %.val76.val, ptr %i.i, align 4, !tbaa !80
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i83, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.n = sext i32 %.val76.val to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %i.o, i1 false)
  br label %Vec_IntAlloc.exit.i83

Vec_IntAlloc.exit.i83:                            ; preds = %Vec_IntAlloc.exit.i, %bb.b
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %spec.store.select.i.i, ptr %i.p, align 8, !tbaa !81
  %i.r = sext i32 %spec.store.select.i.i to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #31 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !82
  store i32 %.val76.val, ptr %i.q, align 4, !tbaa !80
  %.not.i84 = icmp eq ptr %i.t, null
  br i1 %.not.i84, label %Vec_IntAlloc.exit.i90, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i83
  %i.v = sext i32 %.val76.val to i64
  %i.w = shl nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.w, i1 false)
  br label %Vec_IntAlloc.exit.i90

Vec_IntAlloc.exit.thread.i92:                     ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !82
  store i32 %.val76.val, ptr %i.i, align 4, !tbaa !80
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %spec.store.select.i.i, ptr %i.y, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !82
  store i32 %.val76.val, ptr %i.z, align 4, !tbaa !80
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4      ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.ab, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !82
  store i32 %.val76.val, ptr %i.ac, align 4, !tbaa !80
  br label %Vec_IntStart.exit93

Vec_IntAlloc.exit.i90:                            ; preds = %Vec_IntAlloc.exit.i83, %bb.c
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4      ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.ae, align 8, !tbaa !81
  %i.ag = sext i32 %spec.store.select.i.i to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #31 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !82
  store i32 %.val76.val, ptr %i.af, align 4, !tbaa !80
  %.not.i91 = icmp eq ptr %i.ai, null
  br i1 %.not.i91, label %Vec_IntStart.exit93, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i90
  %i.ak = sext i32 %.val76.val to i64
  %i.al = shl nsw i64 %i.ak, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.al, i1 false)
  br label %Vec_IntStart.exit93

Vec_IntStart.exit93:                              ; preds = %Vec_IntAlloc.exit.thread.i92, %Vec_IntAlloc.exit.i90, %bb.d
  %i.am = phi ptr [ %i.ac, %Vec_IntAlloc.exit.thread.i92 ], [ %i.af, %Vec_IntAlloc.exit.i90 ], [ %i.af, %bb.d ]
  %i.an = phi ptr [ %i.ab, %Vec_IntAlloc.exit.thread.i92 ], [ %i.ae, %Vec_IntAlloc.exit.i90 ], [ %i.ae, %bb.d ] ; 3 uses
  %.val73169 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i92 ], [ %i.t, %Vec_IntAlloc.exit.i90 ], [ %i.t, %bb.d ] ; 5 uses
  %.val72163167 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i92 ], [ %i.l, %Vec_IntAlloc.exit.i90 ], [ %i.l, %bb.d ] ; 3 uses
  %i.ao = phi ptr [ %i.y, %Vec_IntAlloc.exit.thread.i92 ], [ %i.p, %Vec_IntAlloc.exit.i90 ], [ %i.p, %bb.d ] ; 2 uses
  %.val63140 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i92 ], [ null, %Vec_IntAlloc.exit.i90 ], [ %i.ai, %bb.d ] ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 4
  %.val71108 = load i32, ptr %i.ap, align 4, !tbaa !80 ; 2 uses
  %i.aq = icmp sgt i32 %.val71108, 1
  br i1 %i.aq, label %.critedge.lr.ph, label %.preheader

.critedge.lr.ph:                                  ; preds = %Vec_IntStart.exit93
  %i.ar = getelementptr i8, ptr %1, i64 8
  %.val68 = load ptr, ptr %i.ar, align 8, !tbaa !82 ; 3 uses
  %2 = zext nneg i32 %.val71108 to i64
  %3 = add nsw i64 %2, -2                         ; 2 uses
  %4 = lshr i64 %3, 1                             ; 2 uses
  %5 = add nuw i64 %4, 1                          ; 2 uses
  %i.as = icmp eq i64 %4, 0
  br i1 %i.as, label %.critedge.epil.preheader, label %.critedge.lr.ph.new

.critedge.lr.ph.new:                              ; preds = %.critedge.lr.ph
  %unroll_iter = and i64 %5, -2
  br label %.critedge

.preheader.loopexit.unr-lcssa:                    ; preds = %.critedge
  %6 = and i64 %3, 2
  %lcmp.mod.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod.not.not, label %.critedge.epil.preheader, label %.preheader

.critedge.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.critedge.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod176 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %indvars.iv.epil.init ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !60 ; 2 uses
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val73169, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !60
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val72163167, i64 %i.az
  store i32 1, ptr %i.ba, align 4, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.critedge.epil.preheader, %.preheader.loopexit.unr-lcssa, %Vec_IntStart.exit93
  %i.bb = icmp sgt i32 %.val76.val, 0
  br i1 %i.bb, label %.lr.ph114, label %.critedge2

.lr.ph114:                                        ; preds = %.preheader
  %i.bc = getelementptr i8, ptr %i.g, i64 8
  %i.bd = getelementptr i8, ptr %i.ao, i64 8      ; 2 uses
  %i.be = getelementptr i8, ptr %i.an, i64 8
  br label %bb.e

.critedge:                                        ; preds = %.critedge, %.critedge.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph.new ], [ %indvars.iv.next.1, %.critedge ] ; 3 uses
  %niter = phi i64 [ 0, %.critedge.lr.ph.new ], [ %niter.next.1, %.critedge ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !60 ; 2 uses
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val73169, i64 %i.bj
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !60
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.val72163167, i64 %i.bl
  store i32 1, ptr %i.bm, align 4, !tbaa !60
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !60 ; 2 uses
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %.val73169, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !60
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val72163167, i64 %i.bu
  store i32 1, ptr %i.bv, align 4, !tbaa !60
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.critedge, !llvm.loop !328

bb.e:                                             ; preds = %.lr.ph114, %bb.ad
  %.val63139 = phi ptr [ %.val63140, %.lr.ph114 ], [ %.val63138, %bb.ad ] ; 4 uses
  %i.bw = phi ptr [ %.val76, %.lr.ph114 ], [ %i.fl, %bb.ad ] ; 5 uses
  %i.bx = phi ptr [ %i.c, %.lr.ph114 ], [ %.val8.pre.i131, %bb.ad ] ; 9 uses
  %i.by = phi i32 [ 100, %.lr.ph114 ], [ %i.fm, %bb.ad ] ; 12 uses
  %i.bz = phi i32 [ 0, %.lr.ph114 ], [ %i.fn, %bb.ad ] ; 6 uses
  %.val65 = phi ptr [ %.val73169, %.lr.ph114 ], [ %.val65128, %bb.ad ] ; 5 uses
  %indvars.iv119 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next120, %bb.ad ] ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %.val78.val = load ptr, ptr %i.ca, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val78.val, i64 %indvars.iv119
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr i8, ptr %i.cc, i64 20
  %.val77 = load i32, ptr %i.ce, align 4
  %i.cf = and i32 %.val77, 15
  %.not107 = icmp eq i32 %i.cf, 7
  br i1 %.not107, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !55
  %.val66 = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val66, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !60
  %.not61 = icmp eq i32 %i.ck, 0
  br i1 %.not61, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val65, i64 %i.ci
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !60
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = icmp eq i32 %i.bz, %i.by
  br i1 %i.co, label %bb.j, label %Vec_WecPushLevel.exit

bb.j:                                             ; preds = %bb.i
  %i.cp = icmp slt i32 %i.by, 16
  br i1 %i.cp, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not13.i.i = icmp eq ptr %i.bx, null
  br i1 %.not13.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef 256) #32
  br label %Vec_WecGrow.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cr = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #31
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.m, %bb.l
  %i.cs = phi ptr [ %i.cq, %bb.l ], [ %i.cr, %bb.m ] ; 3 uses
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !78
  %i.ct = sext i32 %i.by to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = sub nsw i32 16, %i.by
  br label %Vec_WecPushLevel.exit.sink.split

bb.n:                                             ; preds = %bb.j
  %i.cw = shl nuw nsw i32 %i.by, 1                ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.bx, null
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 4                ; 2 uses
  br i1 %.not13.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = tail call ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef %i.cy) #32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.da = tail call noalias ptr @malloc(i64 noundef %i.cy) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = phi ptr [ %i.cz, %bb.o ], [ %i.da, %bb.p ] ; 3 uses
  store ptr %i.db, ptr %i.d, align 8, !tbaa !78
  %i.dc = zext nneg i32 %i.by to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dc
  br label %Vec_WecPushLevel.exit.sink.split

Vec_WecPushLevel.exit.sink.split:                 ; preds = %bb.q, %Vec_WecGrow.exit.i
  %.sink174 = phi i32 [ %i.cv, %Vec_WecGrow.exit.i ], [ %i.by, %bb.q ]
  %.sink171 = phi ptr [ %i.cu, %Vec_WecGrow.exit.i ], [ %i.dd, %bb.q ]
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i ], [ %i.cw, %bb.q ] ; 2 uses
  %.val8.pre.i132.ph = phi ptr [ %i.cs, %Vec_WecGrow.exit.i ], [ %i.db, %bb.q ]
  %i.de = zext nneg i32 %.sink174 to i64
  %i.df = shl nuw nsw i64 %i.de, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink171, i8 0, i64 %i.df, i1 false)
  store i32 %.sink, ptr %i.a, align 8, !tbaa !77
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %Vec_WecPushLevel.exit.sink.split, %bb.i
  %.val8.pre.i132 = phi ptr [ %i.bx, %bb.i ], [ %.val8.pre.i132.ph, %Vec_WecPushLevel.exit.sink.split ] ; 2 uses
  %i.dg = phi i32 [ %i.by, %bb.i ], [ %.sink, %Vec_WecPushLevel.exit.sink.split ]
  %i.dh = add nsw i32 %i.bz, 1                    ; 3 uses
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !79
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %.val8.pre.i132, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -16 ; 4 uses
  %i.dl = load i32, ptr %i.cg, align 8, !tbaa !55 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 -12 ; 7 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !80 ; 7 uses
  %i.do = load i32, ptr %i.dk, align 8, !tbaa !81
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %Vec_WecPushLevel.exit
  %i.dq = icmp slt i32 %i.dn, 16
  br i1 %i.dq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ds, i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i

bb.u:                                             ; preds = %bb.s
  %i.du = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.u, %bb.t
  %i.dv = phi ptr [ %i.dt, %bb.t ], [ %i.du, %bb.u ]
  store ptr %i.dv, ptr %i.dr, align 8, !tbaa !82
  br label %Vec_IntGrow.exit11.sink.split.i

bb.v:                                             ; preds = %bb.r
  %i.dw = icmp samesign ult i32 %i.dn, 1073741823
  %i.dx = shl nuw nsw i32 %i.dn, 1
  %spec.select.i = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.dn, %spec.select.i
  br i1 %.not.i9.i, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !82 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.dz, null
  %i.ea = zext nneg i32 %spec.select.i to i64
  %i.eb = shl nuw nsw i64 %i.ea, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = tail call ptr @realloc(ptr noundef nonnull %i.dz, i64 noundef %i.eb) #32
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.eb) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ee = phi ptr [ %i.ec, %bb.x ], [ %i.ed, %bb.y ]
  store ptr %i.ee, ptr %i.dy, align 8, !tbaa !82
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.z, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.z ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.dk, align 8, !tbaa !81
  %.pre = load i32, ptr %i.dm, align 4, !tbaa !80
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_WecPushLevel.exit, %bb.v, %Vec_IntGrow.exit11.sink.split.i
  %i.ef = phi i32 [ %i.dn, %Vec_WecPushLevel.exit ], [ %i.dn, %bb.v ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !82 ; 2 uses
  %i.ei = add nsw i32 %i.ef, 1
  store i32 %i.ei, ptr %i.dm, align 4, !tbaa !80
  %i.ej = sext i32 %i.ef to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store i32 %i.dl, ptr %i.ek, align 4, !tbaa !60
  %.val64110 = load ptr, ptr %i.bd, align 8, !tbaa !82 ; 3 uses
  %i.el = sext i32 %i.dl to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %.val64110, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !60 ; 2 uses
  %.not62111 = icmp eq i32 %i.en, 0
  br i1 %.not62111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit101
  %.val64134 = phi ptr [ %.val64, %Vec_IntPush.exit101 ], [ %.val64110, %Vec_IntPush.exit ] ; 2 uses
  %i.eo = phi ptr [ %i.fa, %Vec_IntPush.exit101 ], [ %i.eh, %Vec_IntPush.exit ] ; 3 uses
  %i.ep = phi i32 [ %i.fg, %Vec_IntPush.exit101 ], [ %i.en, %Vec_IntPush.exit ] ; 2 uses
  %i.eq = load i32, ptr %i.dm, align 4, !tbaa !80 ; 7 uses
  %i.er = load i32, ptr %i.dk, align 8, !tbaa !81
  %i.es = icmp eq i32 %i.eq, %i.er
  br i1 %i.es, label %bb.aa, label %Vec_IntPush.exit101

bb.aa:                                            ; preds = %.lr.ph
  %i.et = icmp slt i32 %i.eq, 16
end_hunk_1
