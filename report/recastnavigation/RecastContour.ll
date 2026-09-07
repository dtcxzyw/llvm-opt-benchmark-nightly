Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastContour?download=true
inline.NumInlined: 300
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti:bb.a

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !117
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !118
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bi, i32 noundef 1) #9 ; 5 uses
  %.not321 = icmp eq ptr %i.bj, null
  br i1 %.not321, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !118
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %i.bk) #9
  br label %bb.fi

bb.g:                                             ; preds = %bb.e
  %i.bl = load i8, ptr %i.f, align 1, !tbaa !68, !range !69, !noundef !70
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.h, label %_ZN9rcContext10startTimerE12rcTimerLabel.exit

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %0, align 8, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 5) #9, !call_target !78, !inline_history !20
  br label %_ZN9rcContext10startTimerE12rcTimerLabel.exit

_ZN9rcContext10startTimerE12rcTimerLabel.exit:    ; preds = %bb.g, %bb.h
  %i.bq = icmp sgt i32 %i.c, 0                    ; 2 uses
  br i1 %i.bq, label %.preheader766.lr.ph, label %._crit_edge811.split

.preheader766.lr.ph:                              ; preds = %_ZN9rcContext10startTimerE12rcTimerLabel.exit
  %i.br = icmp sgt i32 %i.a, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  br i1 %i.br, label %.preheader766.preheader, label %._crit_edge811.split

.preheader766.preheader:                          ; preds = %.preheader766.lr.ph
  %i.bu = zext nneg i32 %i.a to i64               ; 3 uses
  %wide.trip.count904 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader766

.preheader766:                                    ; preds = %.preheader766.preheader, %._crit_edge809
  %indvars.iv901 = phi i64 [ 0, %.preheader766.preheader ], [ %indvars.iv.next902, %._crit_edge809 ] ; 4 uses
  %i.bv = mul nuw nsw i64 %indvars.iv901, %i.bu   ; 3 uses
  %i.bw = add nuw nsw i64 %indvars.iv901, 1
  %i.bx = mul nuw nsw i64 %i.bw, %i.bu
  %i.by = add nsw i64 %indvars.iv901, -1
  %i.bz = mul nsw i64 %i.by, %i.bu
  br label %bb.de

._crit_edge811.split:                             ; preds = %._crit_edge809, %.preheader766.lr.ph, %_ZN9rcContext10startTimerE12rcTimerLabel.exit
  %i.ca = load i8, ptr %i.f, align 1, !tbaa !68, !range !69, !noundef !70
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.i, label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit

bb.i:                                             ; preds = %._crit_edge811.split
  %i.cc = load ptr, ptr %0, align 8, !tbaa !72
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 5) #9, !call_target !119, !inline_history !21
  br label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit

_ZN9rcContext9stopTimerE12rcTimerLabel.exit:      ; preds = %._crit_edge811.split, %bb.i
  %i.cf = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 1024, i32 noundef 1) #9 ; 3 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #9
  %i.cg = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 256, i32 noundef 1) #9 ; 3 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #9
  br i1 %i.bq, label %.preheader764.lr.ph, label %._crit_edge853

.preheader764.lr.ph:                              ; preds = %_ZN9rcContext9stopTimerE12rcTimerLabel.exit
  %i.ch = icmp sgt i32 %i.a, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cl = fmul float %2, %2
  %i.cm = icmp slt i32 %3, 1
  %i.cn = and i32 %5, 3
  %.not299.i = icmp eq i32 %i.cn, 0
  %or.cond314.i = or i1 %i.cm, %.not299.i
  %i.co = and i32 %5, 1
  %.not300.i = icmp eq i32 %i.co, 0
  %i.cp = and i32 %5, 2
  %.not301.i = icmp eq i32 %i.cp, 0               ; 2 uses
  %i.cq = mul nuw nsw i32 %3, %3
  br i1 %i.ch, label %.preheader764.us.preheader, label %._crit_edge853

.preheader764.us.preheader:                       ; preds = %.preheader764.lr.ph
  %i.cr = zext nneg i32 %i.a to i64               ; 2 uses
  %wide.trip.count926 = zext nneg i32 %i.c to i64
  br label %.preheader764.us

.preheader764.us:                                 ; preds = %.preheader764.us.preheader, %._crit_edge841.us
  %indvars.iv923 = phi i64 [ 0, %.preheader764.us.preheader ], [ %indvars.iv.next924, %._crit_edge841.us ] ; 3 uses
  %.0283851.us = phi i32 [ %i.bb, %.preheader764.us.preheader ], [ %.2285.lcssa.us, %._crit_edge841.us ]
  %.sroa.104.0850.us = phi ptr [ %i.cg, %.preheader764.us.preheader ], [ %.sroa.104.2.lcssa.us, %._crit_edge841.us ]
  %.sroa.75.0849.us = phi i64 [ 64, %.preheader764.us.preheader ], [ %.sroa.75.2.lcssa.us, %._crit_edge841.us ]
  %.sroa.39.0848.us = phi ptr [ %i.cf, %.preheader764.us.preheader ], [ %.sroa.39.2.lcssa.us, %._crit_edge841.us ]
  %.sroa.30.0847.us = phi i64 [ 256, %.preheader764.us.preheader ], [ %.sroa.30.2.lcssa.us, %._crit_edge841.us ]
  %i.cs = mul nuw nsw i64 %indvars.iv923, %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv923 to i32
  br label %bb.j

bb.j:                                             ; preds = %.preheader764.us, %._crit_edge829.us
  %indvars.iv918 = phi i64 [ 0, %.preheader764.us ], [ %indvars.iv.next919, %._crit_edge829.us ] ; 3 uses
  %.1284838.us = phi i32 [ %.0283851.us, %.preheader764.us ], [ %.2285.lcssa.us, %._crit_edge829.us ] ; 2 uses
  %.sroa.104.1837.us = phi ptr [ %.sroa.104.0850.us, %.preheader764.us ], [ %.sroa.104.2.lcssa.us, %._crit_edge829.us ] ; 2 uses
  %.sroa.75.1836.us = phi i64 [ %.sroa.75.0849.us, %.preheader764.us ], [ %.sroa.75.2.lcssa.us, %._crit_edge829.us ] ; 2 uses
  %.sroa.39.1835.us = phi ptr [ %.sroa.39.0848.us, %.preheader764.us ], [ %.sroa.39.2.lcssa.us, %._crit_edge829.us ] ; 2 uses
  %.sroa.30.1834.us = phi i64 [ %.sroa.30.0847.us, %.preheader764.us ], [ %.sroa.30.2.lcssa.us, %._crit_edge829.us ] ; 2 uses
  %i.cu = load ptr, ptr %i.ci, align 8, !tbaa !120
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv918
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cs
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = lshr i32 %i.cx, 24                      ; 2 uses
  %.not879 = icmp eq i32 %i.cy, 0
  br i1 %.not879, label %._crit_edge829.us, label %.lr.ph828.us.preheader

.lr.ph828.us.preheader:                           ; preds = %bb.j
  %i.cz = and i32 %i.cx, 16777215
  %i.da = add nuw nsw i32 %i.cz, %i.cy
  %i.db = and i32 %i.cx, 16777215
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = trunc nuw nsw i64 %indvars.iv918 to i32
  br label %.lr.ph828.us

.lr.ph828.us:                                     ; preds = %.lr.ph828.us.preheader, %.thread.us
  %indvars.iv915 = phi i64 [ %i.dc, %.lr.ph828.us.preheader ], [ %indvars.iv.next916, %.thread.us ] ; 7 uses
  %.2285824.us = phi i32 [ %.1284838.us, %.lr.ph828.us.preheader ], [ %.7290.us, %.thread.us ] ; 7 uses
  %.sroa.104.2823.us = phi ptr [ %.sroa.104.1837.us, %.lr.ph828.us.preheader ], [ %.sroa.104.4.us, %.thread.us ] ; 6 uses
  %.sroa.75.2822.us = phi i64 [ %.sroa.75.1836.us, %.lr.ph828.us.preheader ], [ %.sroa.75.4.us, %.thread.us ] ; 6 uses
  %.sroa.39.2821.us = phi ptr [ %.sroa.39.1835.us, %.lr.ph828.us.preheader ], [ %.sroa.39.4.us, %.thread.us ] ; 3 uses
  %.sroa.30.2820.us = phi i64 [ %.sroa.30.1834.us, %.lr.ph828.us.preheader ], [ %.sroa.30.4.us, %.thread.us ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv915 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !121 ; 2 uses
  switch i8 %i.dg, label %bb.l [
    i8 0, label %bb.k
    i8 15, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph828.us, %.lr.ph828.us
  store i8 0, ptr %i.df, align 1, !tbaa !121
  br label %.thread.us

bb.l:                                             ; preds = %.lr.ph828.us
  %i.dh = load ptr, ptr %i.cj, align 8, !tbaa !122
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv915
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !124 ; 2 uses
  %or.cond338.us = icmp sgt i16 %i.dk, 0
  br i1 %or.cond338.us, label %bb.m, label %.thread.us

bb.m:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.ck, align 8, !tbaa !125
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv915
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !121
  %i.do = load i8, ptr %i.f, align 1, !tbaa !68, !range !69, !noundef !70
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.n, label %_ZN9rcContext10startTimerE12rcTimerLabel.exit349.us

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %0, align 8, !tbaa !72
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 5) #9, !call_target !78, !inline_history !20
  %.pre = load i8, ptr %i.df, align 1, !tbaa !121
  br label %_ZN9rcContext10startTimerE12rcTimerLabel.exit349.us

_ZN9rcContext10startTimerE12rcTimerLabel.exit349.us: ; preds = %bb.n, %bb.m
  %i.dt = phi i8 [ %.pre, %bb.n ], [ %i.dg, %bb.m ]
  %i.du = zext i8 %i.dt to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN9rcContext10startTimerE12rcTimerLabel.exit349.us
  %.077.i.us = phi i8 [ 0, %_ZN9rcContext10startTimerE12rcTimerLabel.exit349.us ], [ %i.dz, %bb.o ] ; 4 uses
  %i.dv = zext nneg i8 %.077.i.us to i32
  %i.dw = shl nuw i32 1, %i.dv
  %i.dx = and i32 %i.dw, %i.du
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = add i8 %.077.i.us, 1
  br i1 %i.dy, label %bb.o, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ea = load ptr, ptr %i.ck, align 8, !tbaa !125
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv915
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !121
  %i.ed = trunc nuw nsw i64 %indvars.iv915 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.au, %bb.p
  %i.ee = phi i32 [ 1, %bb.p ], [ %i.tq, %bb.au ] ; 2 uses
  %.072.i.us1100 = phi i32 [ %i.de, %bb.p ], [ %.2.i.us, %bb.au ] ; 9 uses
  %.178.i.us1099 = phi i8 [ %.077.i.us, %bb.p ], [ %.3.i.us, %bb.au ] ; 3 uses
  %.080.i.us1098 = phi i32 [ %i.ct, %bb.p ], [ %.282.i.us, %bb.au ] ; 9 uses
  %.083.i.us1097 = phi i32 [ %i.ed, %bb.p ], [ %.285.i.us, %bb.au ] ; 2 uses
  %.sroa.39.8.us1096 = phi ptr [ %.sroa.39.2821.us, %bb.p ], [ %.sroa.39.13.us, %bb.au ] ; 12 uses
  %.sroa.30.7.us1095 = phi i64 [ %.sroa.30.2820.us, %bb.p ], [ %.sroa.30.12.us, %bb.au ] ; 7 uses
  %.sroa.0614.0.us1093 = phi i64 [ 0, %bb.p ], [ %.sroa.0614.5.us, %bb.au ] ; 21 uses
  %.sroa.39.8.us10961224 = ptrtoaddr ptr %.sroa.39.8.us1096 to i64
  %i.ef = sext i32 %.083.i.us1097 to i64          ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.bj, i64 %i.ef ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !121
  %i.ei = zext i8 %i.eh to i32
  %i.ej = zext i8 %.178.i.us1099 to i32           ; 8 uses
  %i.ek = shl nuw i32 1, %i.ej                    ; 2 uses
  %i.el = and i32 %i.ek, %i.ei
  %.not.i.us = icmp eq i32 %i.el, 0
  %i.em = load ptr, ptr %i.cj, align 8, !tbaa !122 ; 6 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ef ; 4 uses
  br i1 %.not.i.us, label %bb.as, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !126 ; 2 uses
  %i.ep = add nuw nsw i32 %i.ej, 1
  %i.eq = and i32 %i.ep, 3                        ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !124
  %i.et = zext i16 %i.es to i32                   ; 4 uses
  %i.eu = load ptr, ptr %i.ck, align 8, !tbaa !125 ; 6 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.ef
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !121
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 16               ; 3 uses
  %i.ez = or disjoint i32 %i.ey, %i.et            ; 4 uses
  %i.fa = mul nuw nsw i32 %i.ej, 6                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = and i32 %i.fc, 16777215                 ; 2 uses
  %i.fe = lshr i32 %i.fd, %i.fa
  %i.ff = and i32 %i.fe, 63                       ; 3 uses
  %.not.i.i.us = icmp eq i32 %i.ff, 63            ; 2 uses
  br i1 %.not.i.i.us, label %._crit_edge.i.i.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fg = and i32 %i.ej, 3
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fk = add nsw i32 %i.fj, %.072.i.us1100       ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %i.fh
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !12
  %i.fn = add nsw i32 %i.fm, %.080.i.us1098       ; 2 uses
  %i.fo = load ptr, ptr %i.ci, align 8, !tbaa !120 ; 2 uses
  %i.fp = load i32, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.fq = mul nsw i32 %i.fp, %i.fn
  %i.fr = add nsw i32 %i.fq, %i.fk
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = and i32 %i.fu, 16777215
  %i.fw = add nuw nsw i32 %i.fv, %i.ff
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fx ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 4, !tbaa !126
  %i.ga = tail call i16 @llvm.umax.i16(i16 %i.eo, i16 %i.fz) ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !124
  %i.gd = zext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fx
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !121
  %i.gg = zext i8 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 16
  %i.gi = or disjoint i32 %i.gh, %i.gd            ; 2 uses
  %i.gj = mul nuw nsw i32 %i.eq, 6                ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, 16777215
  %i.gn = lshr i32 %i.gm, %i.gj
  %i.go = and i32 %i.gn, 63                       ; 2 uses
  %.not119.i.i.us = icmp eq i32 %i.go, 63
  br i1 %.not119.i.i.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gp = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !12
  %i.gs = add nsw i32 %i.gr, %i.fk
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %i.gp
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !12
  %i.gv = add nsw i32 %i.gu, %i.fn
  %i.gw = mul nsw i32 %i.gv, %i.fp
  %i.gx = add nsw i32 %i.gs, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = and i32 %i.ha, 16777215
  %i.hc = add nuw nsw i32 %i.hb, %i.go
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.hd ; 2 uses
  %i.hf = load i16, ptr %i.he, align 4, !tbaa !126
  %i.hg = tail call i16 @llvm.umax.i16(i16 %i.ga, i16 %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !124
  %i.hj = zext i16 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.hd
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !121
  %i.hm = zext i8 %i.hl to i32
  %i.hn = shl nuw nsw i32 %i.hm, 16
  %i.ho = or disjoint i32 %i.hn, %i.hj
  br label %bb.u

._crit_edge.i.i.us:                               ; preds = %bb.r
  %.pre.i.i.us = mul nuw nsw i32 %i.eq, 6
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.us, %bb.t, %bb.s
  %.pre-phi.i.i.us = phi i32 [ %.pre.i.i.us, %._crit_edge.i.i.us ], [ %i.gj, %bb.s ], [ %i.gj, %bb.t ]
  %.sroa.8.0.i.i.us = phi i32 [ 0, %._crit_edge.i.i.us ], [ %i.gi, %bb.s ], [ %i.gi, %bb.t ] ; 11 uses
  %.sroa.14.0.i.i.us = phi i32 [ 0, %._crit_edge.i.i.us ], [ 0, %bb.s ], [ %i.ho, %bb.t ] ; 2 uses
  %.1.in.i.i.us = phi i16 [ %i.eo, %._crit_edge.i.i.us ], [ %i.ga, %bb.s ], [ %i.hg, %bb.t ] ; 2 uses
  %i.hp = lshr i32 %i.fd, %.pre-phi.i.i.us
  %i.hq = and i32 %i.hp, 63                       ; 2 uses
  %.not120.i.i.us = icmp eq i32 %i.hq, 63
  br i1 %.not120.i.i.us, label %.critedge.i.i.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hr = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !12
  %i.hu = add nsw i32 %i.ht, %.072.i.us1100       ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %i.hr
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !12
  %i.hx = add nsw i32 %i.hw, %.080.i.us1098       ; 2 uses
  %i.hy = load ptr, ptr %i.ci, align 8, !tbaa !120 ; 2 uses
  %i.hz = load i32, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.ia = mul nsw i32 %i.hz, %i.hx
  %i.ib = add nsw i32 %i.ia, %i.hu
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = and i32 %i.ie, 16777215
  %i.ig = add nuw nsw i32 %i.if, %i.hq
  %i.ih = zext nneg i32 %i.ig to i64              ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ih ; 3 uses
  %i.ij = load i16, ptr %i.ii, align 4, !tbaa !126
  %i.ik = tail call i16 @llvm.umax.i16(i16 %.1.in.i.i.us, i16 %i.ij) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !124
  %i.in = zext i16 %i.im to i32
  %i.io = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ih
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !121
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 16
  %i.is = or disjoint i32 %i.ir, %i.in            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = and i32 %i.iu, 16777215
  %i.iw = lshr i32 %i.iv, %i.fa
  %i.ix = and i32 %i.iw, 63                       ; 2 uses
  %.not121.i.i.us = icmp eq i32 %i.ix, 63
  br i1 %.not121.i.i.us, label %.critedge.i.i.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iy = and i32 %i.ej, 3
  %i.iz = zext nneg i32 %i.iy to i64              ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !12
  %i.jc = add nsw i32 %i.jb, %i.hu
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %i.iz
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !12
  %i.jf = add nsw i32 %i.je, %i.hx
  %i.jg = mul nsw i32 %i.jf, %i.hz
  %i.jh = add nsw i32 %i.jc, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = and i32 %i.jk, 16777215
  %i.jm = add nuw nsw i32 %i.jl, %i.ix
  %i.jn = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.jn ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 4, !tbaa !126
  %i.jq = tail call i16 @llvm.umax.i16(i16 %i.ik, i16 %i.jp)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !124
  %i.jt = zext i16 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.jn
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !121
  %i.jw = zext i8 %i.jv to i32
  %i.jx = shl nuw nsw i32 %i.jw, 16
  %i.jy = or disjoint i32 %i.jx, %i.jt
  br label %.critedge.i.i.us

.critedge.i.i.us:                                 ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.14.1.i.i.us = phi i32 [ %.sroa.14.0.i.i.us, %bb.u ], [ %.sroa.14.0.i.i.us, %bb.v ], [ %i.jy, %bb.w ] ; 12 uses
  %.sroa.20.0.i.i.us = phi i32 [ 0, %bb.u ], [ %i.is, %bb.v ], [ %i.is, %bb.w ] ; 11 uses
  %.3.in.i.i.us = phi i16 [ %.1.in.i.i.us, %bb.u ], [ %i.ik, %bb.v ], [ %i.jq, %bb.w ]
  %i.jz = and i32 %i.et, 32768                    ; 2 uses
  %i.ka = and i32 %.sroa.8.0.i.i.us, %i.jz
  %.not122.i.i.us = icmp ne i32 %i.ka, 0
  %i.kb = icmp eq i32 %i.ez, %.sroa.8.0.i.i.us
  %spec.select.i.i.us = and i1 %i.kb, %.not122.i.i.us
  %i.kc = or i32 %.sroa.20.0.i.i.us, %.sroa.14.1.i.i.us
  %i.kd = and i32 %i.kc, 32768
  %i.ke = icmp eq i32 %i.kd, 0
  %.unshifted.i.i.us = xor i32 %.sroa.20.0.i.i.us, %.sroa.14.1.i.i.us
  %i.kf = icmp samesign ult i32 %.unshifted.i.i.us, 65536
  %.not123.i.i.us = icmp eq i32 %i.ez, 0          ; 3 uses
  br i1 %.not123.i.i.us, label %.critedge.1.i.i.us, label %bb.x
end_hunk_0
begin_hunk_1_@_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti:bb.a
.critedge.3.i.i.us:                               ; preds = %bb.ab, %.critedge.2.i.i.us
  %i.la = or i1 %.not123.1.i.i.us, %.not124.2.i.i.us
  %or.cond169.i.i.us = or i1 %.not123.i.i.us, %i.la
  br i1 %or.cond169.i.i.us, label %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us, label %bb.ac

bb.ac:                                            ; preds = %.critedge.3.i.i.us
  %.unshifted.3.i.i.us = xor i32 %.sroa.14.1.i.i.us, %.sroa.8.0.i.i.us
  %i.lb = icmp samesign ult i32 %.unshifted.3.i.i.us, 65536
  %i.lc = or i32 %.sroa.14.1.i.i.us, %.sroa.8.0.i.i.us
  %i.ld = and i32 %i.lc, 32768
  %i.le = icmp eq i32 %i.ld, 0
  %i.lf = and i32 %.sroa.20.0.i.i.us, %i.jz
  %.not122.3.i.i.us = icmp ne i32 %i.lf, 0
  %i.lg = icmp eq i32 %.sroa.20.0.i.i.us, %i.ez
  %spec.select.3.i.i.us = and i1 %i.lg, %.not122.3.i.i.us
  %i.lh = icmp ne i32 %.sroa.14.1.i.i.us, 0
  %i.li = and i1 %i.lh, %i.lb
  %or.cond.3.i.i.us = select i1 %spec.select.3.i.i.us, i1 %i.le, i1 false
  %or.cond5.3.i.i.us = select i1 %or.cond.3.i.i.us, i1 %i.li, i1 false
  br i1 %or.cond5.3.i.i.us, label %bb.ad, label %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  br label %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us

_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us: ; preds = %bb.ad, %bb.ac, %.critedge.3.i.i.us
  %.0116.i.us = phi i1 [ false, %.critedge.3.i.i.us ], [ true, %bb.ad ], [ false, %bb.ac ] ; 2 uses
  %.3.i.i.us = zext i16 %.3.in.i.i.us to i32      ; 2 uses
  switch i8 %.178.i.us1099, label %bb.ah [
    i8 0, label %bb.ag
    i8 1, label %bb.af
    i8 2, label %bb.ae
  ]

bb.ae:                                            ; preds = %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us
  %i.lj = add nsw i32 %.072.i.us1100, 1
  br label %bb.ah

bb.af:                                            ; preds = %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us
  %i.lk = add nsw i32 %.072.i.us1100, 1
  %i.ll = add nsw i32 %.080.i.us1098, 1
  br label %bb.ah

bb.ag:                                            ; preds = %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us
  %i.lm = add nsw i32 %.080.i.us1098, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us
  %.0115.i.us = phi i32 [ %.072.i.us1100, %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us ], [ %.072.i.us1100, %bb.ag ], [ %i.lk, %bb.af ], [ %i.lj, %bb.ae ] ; 2 uses
  %.0114.i.us = phi i32 [ %.080.i.us1098, %_ZL15getCornerHeightiiiiRK20rcCompactHeightfieldRb.exit.i.us ], [ %i.lm, %bb.ag ], [ %i.ll, %bb.af ], [ %.080.i.us1098, %bb.ae ] ; 2 uses
  br i1 %.not.i.i.us, label %.thread.i.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ln = and i32 %i.ej, 3
  %i.lo = zext nneg i32 %i.ln to i64              ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !12
  %i.lr = add nsw i32 %i.lq, %.072.i.us1100
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %i.lo
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !12
  %i.lu = add nsw i32 %i.lt, %.080.i.us1098
  %i.lv = load ptr, ptr %i.ci, align 8, !tbaa !120
  %i.lw = load i32, ptr %1, align 8, !tbaa !63
  %i.lx = mul nsw i32 %i.lw, %i.lu
  %i.ly = add nsw i32 %i.lr, %i.lx
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = and i32 %i.mb, 16777215
  %i.md = add nuw nsw i32 %i.mc, %i.ff
  %i.me = zext nneg i32 %i.md to i64              ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !124
  %i.mi = zext i16 %i.mh to i32                   ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.me
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !121
  %.not90.i.us = icmp ne i8 %i.ec, %i.mk
  %i.ml = or disjoint i32 %i.mi, 65536
  %spec.select.i.us = select i1 %.0116.i.us, i32 %i.ml, i32 %i.mi ; 2 uses
  %i.mm = or disjoint i32 %spec.select.i.us, 131072
  %cond.fr.i.us = freeze i1 %.not90.i.us
  %spec.select145.i.us = select i1 %cond.fr.i.us, i32 %i.mm, i32 %spec.select.i.us
  br label %bb.aj

.thread.i.us:                                     ; preds = %bb.ah
  %spec.select143.i.us = select i1 %.0116.i.us, i32 65536, i32 0
  br label %bb.aj

bb.aj:                                            ; preds = %.thread.i.us, %bb.ai
  %i.mn = phi i32 [ %spec.select143.i.us, %.thread.i.us ], [ %spec.select145.i.us, %bb.ai ] ; 2 uses
  %i.mo = icmp slt i64 %.sroa.0614.0.us1093, %.sroa.30.7.us1095
  br i1 %i.mo, label %bb.al, label %bb.ak, !prof !127

bb.ak:                                            ; preds = %bb.aj
  %i.mp = add nsw i64 %.sroa.30.7.us1095, 1
  %i.mq = icmp sgt i64 %.sroa.30.7.us1095, 4611686018427387902
  %i.mr = shl nsw i64 %.sroa.30.7.us1095, 1
  %..i.i.i.us = tail call i64 @llvm.smax.i64(i64 %i.mr, i64 %i.mp)
  %.0.i.i.i.us = select i1 %i.mq, i64 9223372036854775807, i64 %..i.i.i.us, !prof !128 ; 2 uses
  %i.ms = shl i64 %.0.i.i.i.us, 2
  %i.mt = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ms, i32 noundef 1) #9 ; 10 uses
  %.not.i407.us = icmp ne ptr %i.mt, null
  %i.mu = icmp sgt i64 %.sroa.0614.0.us1093, 0
  %or.cond741.us = select i1 %.not.i407.us, i1 %i.mu, i1 false
  br i1 %or.cond741.us, label %.lr.ph.i.i408.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us

.lr.ph.i.i408.us.preheader:                       ; preds = %bb.ak
  %i.mv = ptrtoaddr ptr %i.mt to i64
  %min.iters.check1227 = icmp ult i64 %.sroa.0614.0.us1093, 8
  %i.mw = sub i64 %.sroa.39.8.us10961224, %i.mv
  %diff.check1225 = icmp ugt i64 %i.mw, -32
  %or.cond1239 = select i1 %min.iters.check1227, i1 true, i1 %diff.check1225
  br i1 %or.cond1239, label %.lr.ph.i.i408.us.preheader1265, label %vector.ph1228

vector.ph1228:                                    ; preds = %.lr.ph.i.i408.us.preheader
  %n.vec1229 = and i64 %.sroa.0614.0.us1093, 9223372036854775800 ; 3 uses
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1234, %vector.body1230 ] ; 3 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %index1231 ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.8.us1096, i64 %index1231 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load1232 = load <4 x i32>, ptr %i.my, align 4, !tbaa !12
  %wide.load1233 = load <4 x i32>, ptr %i.mz, align 4, !tbaa !12
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <4 x i32> %wide.load1232, ptr %i.mx, align 4, !tbaa !12
  store <4 x i32> %wide.load1233, ptr %i.na, align 4, !tbaa !12
  %index.next1234 = add nuw i64 %index1231, 8     ; 2 uses
  %i.nb = icmp eq i64 %index.next1234, %n.vec1229
  br i1 %i.nb, label %middle.block1235, label %vector.body1230, !llvm.loop !22

middle.block1235:                                 ; preds = %vector.body1230
  %cmp.n1236 = icmp eq i64 %.sroa.0614.0.us1093, %n.vec1229
  br i1 %cmp.n1236, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us, label %.lr.ph.i.i408.us.preheader1265

.lr.ph.i.i408.us.preheader1265:                   ; preds = %.lr.ph.i.i408.us.preheader, %middle.block1235
  %.07.i.i409.us.ph = phi i64 [ 0, %.lr.ph.i.i408.us.preheader ], [ %n.vec1229, %middle.block1235 ] ; 3 uses
  %xtraiter = and i64 %.sroa.0614.0.us1093, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i408.us.prol.loopexit, label %.lr.ph.i.i408.us.prol

.lr.ph.i.i408.us.prol:                            ; preds = %.lr.ph.i.i408.us.preheader1265, %.lr.ph.i.i408.us.prol
  %.07.i.i409.us.prol = phi i64 [ %i.nf, %.lr.ph.i.i408.us.prol ], [ %.07.i.i409.us.ph, %.lr.ph.i.i408.us.preheader1265 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i408.us.prol ], [ 0, %.lr.ph.i.i408.us.preheader1265 ]
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %.07.i.i409.us.prol
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.8.us1096, i64 %.07.i.i409.us.prol
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !12
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !12
  %i.nf = add nuw nsw i64 %.07.i.i409.us.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i408.us.prol.loopexit, label %.lr.ph.i.i408.us.prol, !llvm.loop !23

.lr.ph.i.i408.us.prol.loopexit:                   ; preds = %.lr.ph.i.i408.us.prol, %.lr.ph.i.i408.us.preheader1265
  %.07.i.i409.us.unr = phi i64 [ %.07.i.i409.us.ph, %.lr.ph.i.i408.us.preheader1265 ], [ %i.nf, %.lr.ph.i.i408.us.prol ]
  %i.ng = sub nsw i64 %.07.i.i409.us.ph, %.sroa.0614.0.us1093
  %i.nh = icmp ugt i64 %i.ng, -4
  br i1 %i.nh, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us, label %.lr.ph.i.i408.us

.lr.ph.i.i408.us:                                 ; preds = %.lr.ph.i.i408.us.prol.loopexit, %.lr.ph.i.i408.us
  %.07.i.i409.us = phi i64 [ %i.nx, %.lr.ph.i.i408.us ], [ %.07.i.i409.us.unr, %.lr.ph.i.i408.us.prol.loopexit ] ; 6 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %.07.i.i409.us
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.8.us1096, i64 %.07.i.i409.us
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !12
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !12
  %i.nl = add nuw nsw i64 %.07.i.i409.us, 1       ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.8.us1096, i64 %i.nl
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !12
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !12
  %i.np = add nuw nsw i64 %.07.i.i409.us, 2       ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.8.us1096, i64 %i.np
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !12
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !12
  %i.nt = add nuw nsw i64 %.07.i.i409.us, 3       ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.nt
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.8.us1096, i64 %i.nt
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !12
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !12
  %i.nx = add nuw nsw i64 %.07.i.i409.us, 4       ; 2 uses
  %exitcond.not.i.i410.us.3 = icmp eq i64 %i.nx, %.sroa.0614.0.us1093
  br i1 %exitcond.not.i.i410.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us, label %.lr.ph.i.i408.us, !llvm.loop !24

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us: ; preds = %.lr.ph.i.i408.us.prol.loopexit, %.lr.ph.i.i408.us, %middle.block1235, %bb.ak
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.mt, i64 %.sroa.0614.0.us1093
  store i32 %.0115.i.us, ptr %i.ny, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef %.sroa.39.8.us1096) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i.us

bb.al:                                            ; preds = %bb.aj
  %i.nz = getelementptr inbounds [4 x i8], ptr %.sroa.39.8.us1096, i64 %.sroa.0614.0.us1093
  store i32 %.0115.i.us, ptr %i.nz, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i.us: ; preds = %bb.al, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us
  %.sroa.30.8.us = phi i64 [ %.sroa.30.7.us1095, %bb.al ], [ %.0.i.i.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us ] ; 5 uses
  %.sroa.39.9.us = phi ptr [ %.sroa.39.8.us1096, %bb.al ], [ %i.mt, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit411.us ] ; 10 uses
  %.sroa.39.9.us1209 = ptrtoaddr ptr %.sroa.39.9.us to i64
  %.sroa.0614.1.us = add nsw i64 %.sroa.0614.0.us1093, 1 ; 8 uses
  %i.oa = icmp slt i64 %.sroa.0614.1.us, %.sroa.30.8.us
  br i1 %i.oa, label %bb.an, label %bb.am, !prof !127

bb.am:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i.us
  %i.ob = add nsw i64 %.sroa.30.8.us, 1
  %i.oc = icmp sgt i64 %.sroa.30.8.us, 4611686018427387902
  %i.od = shl nsw i64 %.sroa.30.8.us, 1
  %..i.i91.i.us = tail call i64 @llvm.smax.i64(i64 %i.od, i64 %i.ob)
  %.0.i.i92.i.us = select i1 %i.oc, i64 9223372036854775807, i64 %..i.i91.i.us, !prof !128 ; 2 uses
  %i.oe = shl i64 %.0.i.i92.i.us, 2
  %i.of = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.oe, i32 noundef 1) #9 ; 10 uses
  %.not.i402.us = icmp ne ptr %i.of, null
  %i.og = icmp sgt i64 %.sroa.0614.0.us1093, -1
  %or.cond742.us = and i1 %i.og, %.not.i402.us
  br i1 %or.cond742.us, label %.lr.ph.i.i403.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us

.lr.ph.i.i403.us.preheader:                       ; preds = %bb.am
  %i.oh = ptrtoaddr ptr %i.of to i64
  %min.iters.check1212 = icmp ult i64 %.sroa.0614.1.us, 8
  %i.oi = sub i64 %.sroa.39.9.us1209, %i.oh
  %diff.check1210 = icmp ugt i64 %i.oi, -32
  %or.cond1240 = select i1 %min.iters.check1212, i1 true, i1 %diff.check1210
  br i1 %or.cond1240, label %.lr.ph.i.i403.us.preheader1264, label %vector.ph1213

vector.ph1213:                                    ; preds = %.lr.ph.i.i403.us.preheader
  %n.vec1214 = and i64 %.sroa.0614.1.us, 9223372036854775800 ; 3 uses
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1219, %vector.body1215 ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index1216 ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.9.us, i64 %index1216 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %wide.load1217 = load <4 x i32>, ptr %i.ok, align 4, !tbaa !12
  %wide.load1218 = load <4 x i32>, ptr %i.ol, align 4, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <4 x i32> %wide.load1217, ptr %i.oj, align 4, !tbaa !12
  store <4 x i32> %wide.load1218, ptr %i.om, align 4, !tbaa !12
  %index.next1219 = add nuw i64 %index1216, 8     ; 2 uses
  %i.on = icmp eq i64 %index.next1219, %n.vec1214
  br i1 %i.on, label %middle.block1220, label %vector.body1215, !llvm.loop !25

middle.block1220:                                 ; preds = %vector.body1215
  %cmp.n1221 = icmp eq i64 %.sroa.0614.1.us, %n.vec1214
  br i1 %cmp.n1221, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us, label %.lr.ph.i.i403.us.preheader1264

.lr.ph.i.i403.us.preheader1264:                   ; preds = %.lr.ph.i.i403.us.preheader, %middle.block1220
  %.07.i.i404.us.ph = phi i64 [ 0, %.lr.ph.i.i403.us.preheader ], [ %n.vec1214, %middle.block1220 ] ; 3 uses
  %i.oo = sub nsw i64 %.sroa.0614.0.us1093, %.07.i.i404.us.ph
  %xtraiter1275 = and i64 %.sroa.0614.1.us, 3     ; 2 uses
  %lcmp.mod1276.not = icmp eq i64 %xtraiter1275, 0
  br i1 %lcmp.mod1276.not, label %.lr.ph.i.i403.us.prol.loopexit, label %.lr.ph.i.i403.us.prol

.lr.ph.i.i403.us.prol:                            ; preds = %.lr.ph.i.i403.us.preheader1264, %.lr.ph.i.i403.us.prol
  %.07.i.i404.us.prol = phi i64 [ %i.os, %.lr.ph.i.i403.us.prol ], [ %.07.i.i404.us.ph, %.lr.ph.i.i403.us.preheader1264 ] ; 3 uses
  %prol.iter1277 = phi i64 [ %prol.iter1277.next, %.lr.ph.i.i403.us.prol ], [ 0, %.lr.ph.i.i403.us.preheader1264 ]
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.07.i.i404.us.prol
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.9.us, i64 %.07.i.i404.us.prol
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !12
  store i32 %i.or, ptr %i.op, align 4, !tbaa !12
  %i.os = add nuw nsw i64 %.07.i.i404.us.prol, 1  ; 2 uses
  %prol.iter1277.next = add i64 %prol.iter1277, 1 ; 2 uses
  %prol.iter1277.cmp.not = icmp eq i64 %prol.iter1277.next, %xtraiter1275
  br i1 %prol.iter1277.cmp.not, label %.lr.ph.i.i403.us.prol.loopexit, label %.lr.ph.i.i403.us.prol, !llvm.loop !26

.lr.ph.i.i403.us.prol.loopexit:                   ; preds = %.lr.ph.i.i403.us.prol, %.lr.ph.i.i403.us.preheader1264
  %.07.i.i404.us.unr = phi i64 [ %.07.i.i404.us.ph, %.lr.ph.i.i403.us.preheader1264 ], [ %i.os, %.lr.ph.i.i403.us.prol ]
  %i.ot = icmp ult i64 %i.oo, 3
  br i1 %i.ot, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us, label %.lr.ph.i.i403.us

.lr.ph.i.i403.us:                                 ; preds = %.lr.ph.i.i403.us.prol.loopexit, %.lr.ph.i.i403.us
  %.07.i.i404.us = phi i64 [ %i.pj, %.lr.ph.i.i403.us ], [ %.07.i.i404.us.unr, %.lr.ph.i.i403.us.prol.loopexit ] ; 6 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.07.i.i404.us
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.9.us, i64 %.07.i.i404.us
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !12
  store i32 %i.ow, ptr %i.ou, align 4, !tbaa !12
  %i.ox = add nuw nsw i64 %.07.i.i404.us, 1       ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ox
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.9.us, i64 %i.ox
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !12
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !12
  %i.pb = add nuw nsw i64 %.07.i.i404.us, 2       ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pb
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.9.us, i64 %i.pb
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !12
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !12
  %i.pf = add nuw nsw i64 %.07.i.i404.us, 3       ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.9.us, i64 %i.pf
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !12
  store i32 %i.pi, ptr %i.pg, align 4, !tbaa !12
  %i.pj = add nuw nsw i64 %.07.i.i404.us, 4
  %exitcond.not.i.i405.us.3 = icmp eq i64 %i.pf, %.sroa.0614.0.us1093
  br i1 %exitcond.not.i.i405.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us, label %.lr.ph.i.i403.us, !llvm.loop !27

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us: ; preds = %.lr.ph.i.i403.us.prol.loopexit, %.lr.ph.i.i403.us, %middle.block1220, %bb.am
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.of, i64 %.sroa.0614.1.us
  store i32 %.3.i.i.us, ptr %i.pk, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.39.9.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit93.i.us

bb.an:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i.us
  %i.pl = getelementptr inbounds [4 x i8], ptr %.sroa.39.9.us, i64 %.sroa.0614.1.us
  store i32 %.3.i.i.us, ptr %i.pl, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit93.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit93.i.us: ; preds = %bb.an, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us
  %.sroa.30.9.us = phi i64 [ %.sroa.30.8.us, %bb.an ], [ %.0.i.i92.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us ] ; 5 uses
  %.sroa.39.10.us = phi ptr [ %.sroa.39.9.us, %bb.an ], [ %i.of, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit406.us ] ; 10 uses
  %.sroa.39.10.us1194 = ptrtoaddr ptr %.sroa.39.10.us to i64
  %.sroa.0614.2.us = add nsw i64 %.sroa.0614.0.us1093, 2 ; 9 uses
  %i.pm = icmp slt i64 %.sroa.0614.2.us, %.sroa.30.9.us
  br i1 %i.pm, label %bb.ap, label %bb.ao, !prof !127

bb.ao:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit93.i.us
  %i.pn = add nsw i64 %.sroa.30.9.us, 1
  %i.po = icmp sgt i64 %.sroa.30.9.us, 4611686018427387902
  %i.pp = shl nsw i64 %.sroa.30.9.us, 1
  %..i.i94.i.us = tail call i64 @llvm.smax.i64(i64 %i.pp, i64 %i.pn)
  %.0.i.i95.i.us = select i1 %i.po, i64 9223372036854775807, i64 %..i.i94.i.us, !prof !128 ; 2 uses
  %i.pq = shl i64 %.0.i.i95.i.us, 2
  %i.pr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.pq, i32 noundef 1) #9 ; 10 uses
  %.not.i397.us = icmp ne ptr %i.pr, null
  %i.ps = icmp sgt i64 %.sroa.0614.0.us1093, -2
  %or.cond743.us = and i1 %i.ps, %.not.i397.us
  br i1 %or.cond743.us, label %.lr.ph.i.i398.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us

.lr.ph.i.i398.us.preheader:                       ; preds = %bb.ao
  %i.pt = ptrtoaddr ptr %i.pr to i64
  %min.iters.check1197 = icmp ult i64 %.sroa.0614.2.us, 8
  %i.pu = sub i64 %.sroa.39.10.us1194, %i.pt
  %diff.check1195 = icmp ugt i64 %i.pu, -32
  %or.cond1241 = select i1 %min.iters.check1197, i1 true, i1 %diff.check1195
  br i1 %or.cond1241, label %.lr.ph.i.i398.us.preheader1263, label %vector.ph1198

vector.ph1198:                                    ; preds = %.lr.ph.i.i398.us.preheader
  %n.vec1199 = and i64 %.sroa.0614.2.us, -8       ; 3 uses
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1204, %vector.body1200 ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %index1201 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.10.us, i64 %index1201 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load1202 = load <4 x i32>, ptr %i.pw, align 4, !tbaa !12
  %wide.load1203 = load <4 x i32>, ptr %i.px, align 4, !tbaa !12
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <4 x i32> %wide.load1202, ptr %i.pv, align 4, !tbaa !12
  store <4 x i32> %wide.load1203, ptr %i.py, align 4, !tbaa !12
  %index.next1204 = add nuw i64 %index1201, 8     ; 2 uses
  %i.pz = icmp eq i64 %index.next1204, %n.vec1199
  br i1 %i.pz, label %middle.block1205, label %vector.body1200, !llvm.loop !28

middle.block1205:                                 ; preds = %vector.body1200
  %cmp.n1206 = icmp eq i64 %.sroa.0614.2.us, %n.vec1199
  br i1 %cmp.n1206, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us, label %.lr.ph.i.i398.us.preheader1263

.lr.ph.i.i398.us.preheader1263:                   ; preds = %.lr.ph.i.i398.us.preheader, %middle.block1205
  %.07.i.i399.us.ph = phi i64 [ 0, %.lr.ph.i.i398.us.preheader ], [ %n.vec1199, %middle.block1205 ] ; 3 uses
  %i.qa = sub i64 %.sroa.0614.1.us, %.07.i.i399.us.ph
  %i.qb = and i64 %.sroa.0614.2.us, 3             ; 2 uses
  %lcmp.mod1279.not = icmp eq i64 %i.qb, 0
  br i1 %lcmp.mod1279.not, label %.lr.ph.i.i398.us.prol.loopexit, label %.lr.ph.i.i398.us.prol

.lr.ph.i.i398.us.prol:                            ; preds = %.lr.ph.i.i398.us.preheader1263, %.lr.ph.i.i398.us.prol
  %.07.i.i399.us.prol = phi i64 [ %i.qf, %.lr.ph.i.i398.us.prol ], [ %.07.i.i399.us.ph, %.lr.ph.i.i398.us.preheader1263 ] ; 3 uses
  %prol.iter1280 = phi i64 [ %prol.iter1280.next, %.lr.ph.i.i398.us.prol ], [ 0, %.lr.ph.i.i398.us.preheader1263 ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.07.i.i399.us.prol
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.10.us, i64 %.07.i.i399.us.prol
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !12
  store i32 %i.qe, ptr %i.qc, align 4, !tbaa !12
  %i.qf = add nuw nsw i64 %.07.i.i399.us.prol, 1  ; 2 uses
  %prol.iter1280.next = add i64 %prol.iter1280, 1 ; 2 uses
  %prol.iter1280.cmp.not = icmp eq i64 %prol.iter1280.next, %i.qb
  br i1 %prol.iter1280.cmp.not, label %.lr.ph.i.i398.us.prol.loopexit, label %.lr.ph.i.i398.us.prol, !llvm.loop !29

.lr.ph.i.i398.us.prol.loopexit:                   ; preds = %.lr.ph.i.i398.us.prol, %.lr.ph.i.i398.us.preheader1263
  %.07.i.i399.us.unr = phi i64 [ %.07.i.i399.us.ph, %.lr.ph.i.i398.us.preheader1263 ], [ %i.qf, %.lr.ph.i.i398.us.prol ]
  %i.qg = icmp ult i64 %i.qa, 3
  br i1 %i.qg, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us, label %.lr.ph.i.i398.us

.lr.ph.i.i398.us:                                 ; preds = %.lr.ph.i.i398.us.prol.loopexit, %.lr.ph.i.i398.us
  %.07.i.i399.us = phi i64 [ %i.qw, %.lr.ph.i.i398.us ], [ %.07.i.i399.us.unr, %.lr.ph.i.i398.us.prol.loopexit ] ; 6 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.07.i.i399.us
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.10.us, i64 %.07.i.i399.us
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !12
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !12
  %i.qk = add nuw nsw i64 %.07.i.i399.us, 1       ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.10.us, i64 %i.qk
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !12
  store i32 %i.qn, ptr %i.ql, align 4, !tbaa !12
  %i.qo = add nuw nsw i64 %.07.i.i399.us, 2       ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qo
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.10.us, i64 %i.qo
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !12
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !12
  %i.qs = add nuw nsw i64 %.07.i.i399.us, 3       ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qs
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.10.us, i64 %i.qs
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !12
  store i32 %i.qv, ptr %i.qt, align 4, !tbaa !12
  %i.qw = add nuw nsw i64 %.07.i.i399.us, 4       ; 2 uses
  %exitcond.not.i.i400.us.3 = icmp eq i64 %i.qw, %.sroa.0614.2.us
  br i1 %exitcond.not.i.i400.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us, label %.lr.ph.i.i398.us, !llvm.loop !30

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us: ; preds = %.lr.ph.i.i398.us.prol.loopexit, %.lr.ph.i.i398.us, %middle.block1205, %bb.ao
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.pr, i64 %.sroa.0614.2.us
  store i32 %.0114.i.us, ptr %i.qx, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.39.10.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit96.i.us

bb.ap:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit93.i.us
  %i.qy = getelementptr inbounds [4 x i8], ptr %.sroa.39.10.us, i64 %.sroa.0614.2.us
  store i32 %.0114.i.us, ptr %i.qy, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit96.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit96.i.us: ; preds = %bb.ap, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us
  %.sroa.30.10.us = phi i64 [ %.sroa.30.9.us, %bb.ap ], [ %.0.i.i95.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us ] ; 5 uses
  %.sroa.39.11.us = phi ptr [ %.sroa.39.10.us, %bb.ap ], [ %i.pr, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit401.us ] ; 10 uses
  %.sroa.39.11.us1179 = ptrtoaddr ptr %.sroa.39.11.us to i64
  %.sroa.0614.3.us = add nsw i64 %.sroa.0614.0.us1093, 3 ; 8 uses
  %i.qz = icmp slt i64 %.sroa.0614.3.us, %.sroa.30.10.us
  br i1 %i.qz, label %bb.ar, label %bb.aq, !prof !127

bb.aq:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit96.i.us
  %i.ra = add nsw i64 %.sroa.30.10.us, 1
  %i.rb = icmp sgt i64 %.sroa.30.10.us, 4611686018427387902
  %i.rc = shl nsw i64 %.sroa.30.10.us, 1
  %..i.i97.i.us = tail call i64 @llvm.smax.i64(i64 %i.rc, i64 %i.ra)
  %.0.i.i98.i.us = select i1 %i.rb, i64 9223372036854775807, i64 %..i.i97.i.us, !prof !128 ; 2 uses
  %i.rd = shl i64 %.0.i.i98.i.us, 2
  %i.re = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.rd, i32 noundef 1) #9 ; 10 uses
  %.not.i395.us = icmp ne ptr %i.re, null
  %i.rf = icmp sgt i64 %.sroa.0614.0.us1093, -3
  %or.cond744.us = and i1 %i.rf, %.not.i395.us
  br i1 %or.cond744.us, label %.lr.ph.i.i396.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us

.lr.ph.i.i396.us.preheader:                       ; preds = %bb.aq
  %i.rg = ptrtoaddr ptr %i.re to i64
  %min.iters.check1182 = icmp ult i64 %.sroa.0614.3.us, 8
  %i.rh = sub i64 %.sroa.39.11.us1179, %i.rg
  %diff.check1180 = icmp ugt i64 %i.rh, -32
  %or.cond1242 = select i1 %min.iters.check1182, i1 true, i1 %diff.check1180
  br i1 %or.cond1242, label %.lr.ph.i.i396.us.preheader1262, label %vector.ph1183

vector.ph1183:                                    ; preds = %.lr.ph.i.i396.us.preheader
  %n.vec1184 = and i64 %.sroa.0614.3.us, -8       ; 3 uses
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %vector.ph1183
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1189, %vector.body1185 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %index1186 ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.11.us, i64 %index1186 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %wide.load1187 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !12
  %wide.load1188 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !12
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store <4 x i32> %wide.load1187, ptr %i.ri, align 4, !tbaa !12
  store <4 x i32> %wide.load1188, ptr %i.rl, align 4, !tbaa !12
  %index.next1189 = add nuw i64 %index1186, 8     ; 2 uses
  %i.rm = icmp eq i64 %index.next1189, %n.vec1184
  br i1 %i.rm, label %middle.block1190, label %vector.body1185, !llvm.loop !31

middle.block1190:                                 ; preds = %vector.body1185
  %cmp.n1191 = icmp eq i64 %.sroa.0614.3.us, %n.vec1184
  br i1 %cmp.n1191, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us, label %.lr.ph.i.i396.us.preheader1262

.lr.ph.i.i396.us.preheader1262:                   ; preds = %.lr.ph.i.i396.us.preheader, %middle.block1190
  %.07.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i396.us.preheader ], [ %n.vec1184, %middle.block1190 ] ; 3 uses
  %i.rn = sub i64 %.sroa.0614.2.us, %.07.i.i.us.ph
  %xtraiter1281 = and i64 %.sroa.0614.3.us, 3     ; 2 uses
  %lcmp.mod1282.not = icmp eq i64 %xtraiter1281, 0
  br i1 %lcmp.mod1282.not, label %.lr.ph.i.i396.us.prol.loopexit, label %.lr.ph.i.i396.us.prol

.lr.ph.i.i396.us.prol:                            ; preds = %.lr.ph.i.i396.us.preheader1262, %.lr.ph.i.i396.us.prol
  %.07.i.i.us.prol = phi i64 [ %i.rr, %.lr.ph.i.i396.us.prol ], [ %.07.i.i.us.ph, %.lr.ph.i.i396.us.preheader1262 ] ; 3 uses
  %prol.iter1283 = phi i64 [ %prol.iter1283.next, %.lr.ph.i.i396.us.prol ], [ 0, %.lr.ph.i.i396.us.preheader1262 ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %.07.i.i.us.prol
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.11.us, i64 %.07.i.i.us.prol
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !12
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !12
  %i.rr = add nuw nsw i64 %.07.i.i.us.prol, 1     ; 2 uses
  %prol.iter1283.next = add i64 %prol.iter1283, 1 ; 2 uses
  %prol.iter1283.cmp.not = icmp eq i64 %prol.iter1283.next, %xtraiter1281
  br i1 %prol.iter1283.cmp.not, label %.lr.ph.i.i396.us.prol.loopexit, label %.lr.ph.i.i396.us.prol, !llvm.loop !32

.lr.ph.i.i396.us.prol.loopexit:                   ; preds = %.lr.ph.i.i396.us.prol, %.lr.ph.i.i396.us.preheader1262
  %.07.i.i.us.unr = phi i64 [ %.07.i.i.us.ph, %.lr.ph.i.i396.us.preheader1262 ], [ %i.rr, %.lr.ph.i.i396.us.prol ]
  %i.rs = icmp ult i64 %i.rn, 3
  br i1 %i.rs, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us, label %.lr.ph.i.i396.us

.lr.ph.i.i396.us:                                 ; preds = %.lr.ph.i.i396.us.prol.loopexit, %.lr.ph.i.i396.us
  %.07.i.i.us = phi i64 [ %i.si, %.lr.ph.i.i396.us ], [ %.07.i.i.us.unr, %.lr.ph.i.i396.us.prol.loopexit ] ; 6 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %.07.i.i.us
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.11.us, i64 %.07.i.i.us
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !12
  store i32 %i.rv, ptr %i.rt, align 4, !tbaa !12
  %i.rw = add nuw nsw i64 %.07.i.i.us, 1          ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.rw
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.11.us, i64 %i.rw
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !12
  store i32 %i.rz, ptr %i.rx, align 4, !tbaa !12
  %i.sa = add nuw nsw i64 %.07.i.i.us, 2          ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.sa
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.11.us, i64 %i.sa
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !12
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !12
  %i.se = add nuw nsw i64 %.07.i.i.us, 3          ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.se
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.11.us, i64 %i.se
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !12
  store i32 %i.sh, ptr %i.sf, align 4, !tbaa !12
  %i.si = add nuw nsw i64 %.07.i.i.us, 4          ; 2 uses
  %exitcond.not.i.i.us.3 = icmp eq i64 %i.si, %.sroa.0614.3.us
  br i1 %exitcond.not.i.i.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us, label %.lr.ph.i.i396.us, !llvm.loop !33

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us: ; preds = %.lr.ph.i.i396.us.prol.loopexit, %.lr.ph.i.i396.us, %middle.block1190, %bb.aq
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.re, i64 %.sroa.0614.3.us
  store i32 %i.mn, ptr %i.sj, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.39.11.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us

bb.ar:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit96.i.us
  %i.sk = getelementptr inbounds [4 x i8], ptr %.sroa.39.11.us, i64 %.sroa.0614.3.us
  store i32 %i.mn, ptr %i.sk, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us: ; preds = %bb.ar, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us
  %.sroa.30.11.us = phi i64 [ %.sroa.30.10.us, %bb.ar ], [ %.0.i.i98.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us ]
  %.sroa.39.12.us = phi ptr [ %.sroa.39.11.us, %bb.ar ], [ %i.re, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us ]
  %.sroa.0614.4.us = add nsw i64 %.sroa.0614.0.us1093, 4
  %i.sl = load i8, ptr %i.eg, align 1, !tbaa !121
  %i.sm = trunc i32 %i.ek to i8
  %i.sn = xor i8 %i.sm, -1
  %i.so = and i8 %i.sl, %i.sn
  store i8 %i.so, ptr %i.eg, align 1, !tbaa !121
  br label %bb.au

bb.as:                                            ; preds = %bb.q
  %i.sp = mul nuw nsw i32 %i.ej, 6
  %i.sq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.sr = load i32, ptr %i.sq, align 4
  %i.ss = and i32 %i.sr, 16777215
  %i.st = lshr i32 %i.ss, %i.sp
  %i.su = and i32 %i.st, 63                       ; 2 uses
  %.not87.i.us = icmp eq i32 %i.su, 63
  br i1 %.not87.i.us, label %_ZL11walkContouriiiRK20rcCompactHeightfieldPhR12rcTempVectorIiE.exit.us, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.sv = and i32 %i.ej, 3
  %i.sw = zext nneg i32 %i.sv to i64              ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !12
  %i.sz = add nsw i32 %i.sy, %.080.i.us1098       ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %i.sw
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !12
  %i.tc = add nsw i32 %i.tb, %.072.i.us1100       ; 2 uses
  %i.td = load ptr, ptr %i.ci, align 8, !tbaa !120
  %i.te = load i32, ptr %1, align 8, !tbaa !63
  %i.tf = mul nsw i32 %i.te, %i.sz
  %i.tg = add nsw i32 %i.tf, %i.tc
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.th
  %i.tj = load i32, ptr %i.ti, align 4
  %i.tk = and i32 %i.tj, 16777215
  %i.tl = add nuw nsw i32 %i.tk, %i.su
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us
  %.sroa.0614.5.us = phi i64 [ %.sroa.0614.0.us1093, %bb.at ], [ %.sroa.0614.4.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ] ; 2 uses
  %.sroa.30.12.us = phi i64 [ %.sroa.30.7.us1095, %bb.at ], [ %.sroa.30.11.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ] ; 2 uses
  %.sroa.39.13.us = phi ptr [ %.sroa.39.8.us1096, %bb.at ], [ %.sroa.39.12.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ] ; 2 uses
  %.sink.i.us = phi i8 [ 3, %bb.at ], [ 1, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ]
  %.285.i.us = phi i32 [ %i.tl, %bb.at ], [ %.083.i.us1097, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ] ; 2 uses
  %.282.i.us = phi i32 [ %i.sz, %bb.at ], [ %.080.i.us1098, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ]
  %.2.i.us = phi i32 [ %i.tc, %bb.at ], [ %.072.i.us1100, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit99.i.us ]
  %i.tm = add i8 %.sink.i.us, %.178.i.us1099
  %.3.i.us = and i8 %i.tm, 3                      ; 2 uses
  %i.tn = zext i32 %.285.i.us to i64
  %i.to = icmp eq i64 %indvars.iv915, %i.tn
  %i.tp = icmp eq i8 %.077.i.us, %.3.i.us
  %or.cond.i.us = and i1 %i.to, %i.tp
  %i.tq = add nuw nsw i32 %i.ee, 1
  %exitcond.not.i.us = icmp eq i32 %i.ee, 39999
  %or.cond1238 = select i1 %or.cond.i.us, i1 true, i1 %exitcond.not.i.us
  br i1 %or.cond1238, label %_ZL11walkContouriiiRK20rcCompactHeightfieldPhR12rcTempVectorIiE.exit.us, label %bb.q

_ZL11walkContouriiiRK20rcCompactHeightfieldPhR12rcTempVectorIiE.exit.us: ; preds = %bb.au, %bb.as
  %.sroa.0614.6.us = phi i64 [ %.sroa.0614.5.us, %bb.au ], [ %.sroa.0614.0.us1093, %bb.as ] ; 6 uses
  %.sroa.30.13.us = phi i64 [ %.sroa.30.12.us, %bb.au ], [ %.sroa.30.7.us1095, %bb.as ] ; 2 uses
  %.sroa.39.14.us = phi ptr [ %.sroa.39.13.us, %bb.au ], [ %.sroa.39.8.us1096, %bb.as ] ; 23 uses
  %i.tr = load i8, ptr %i.f, align 1, !tbaa !68, !range !69, !noundef !70
  %i.ts = trunc nuw i8 %i.tr to i1
  br i1 %i.ts, label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit350.us, label %_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us

_ZN9rcContext9stopTimerE12rcTimerLabel.exit350.us: ; preds = %_ZL11walkContouriiiRK20rcCompactHeightfieldPhR12rcTempVectorIiE.exit.us
  %i.tt = load ptr, ptr %0, align 8, !tbaa !72
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 48
  %i.tv = load ptr, ptr %i.tu, align 8
  tail call void %i.tv(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 5) #9, !call_target !119, !inline_history !21
  %.pre949 = load i8, ptr %i.f, align 1, !tbaa !68, !range !69
  %i.tw = trunc nuw i8 %.pre949 to i1
  br i1 %i.tw, label %bb.av, label %_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us

bb.av:                                            ; preds = %_ZN9rcContext9stopTimerE12rcTimerLabel.exit350.us
  %i.tx = load ptr, ptr %0, align 8, !tbaa !72
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8
  tail call void %i.tz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 6) #9, !call_target !78, !inline_history !20
  br label %_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us

_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us: ; preds = %_ZL11walkContouriiiRK20rcCompactHeightfieldPhR12rcTempVectorIiE.exit.us, %bb.av, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit350.us
  %i.ua = icmp sgt i64 %.sroa.0614.6.us, 0
  br i1 %i.ua, label %.lr.ph.i.us, label %.critedge.i.thread.thread.us

.critedge.i.thread.thread.us:                     ; preds = %_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us
  %i.ub = load i32, ptr %.sroa.39.14.us, align 4, !tbaa !12 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !12 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 8
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !12 ; 2 uses
  br label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us, %bb.aw
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.aw ], [ 0, %_ZN9rcContext10startTimerE12rcTimerLabel.exit351.us ] ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.14.us, i64 %indvars.iv.i.us
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !12
  %i.uj = and i32 %i.ui, 65535
  %.not.i357.us = icmp eq i32 %i.uj, 0
  br i1 %.not.i357.us, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.uk = icmp sgt i64 %.sroa.0614.6.us, %indvars.iv.next.i.us
  br i1 %i.uk, label %.lr.ph.i.us, label %.critedge.i.thread.us

bb.ax:                                            ; preds = %.lr.ph.i.us
  %i.ul = trunc i64 %.sroa.0614.6.us to i32       ; 2 uses
  %i.um = sdiv i32 %i.ul, 4                       ; 2 uses
  %i.un = icmp sgt i32 %i.ul, 3
  br i1 %i.un, label %.lr.ph438.i.us, label %.critedge.i.thread.us

.lr.ph438.i.us:                                   ; preds = %bb.ax
  %wide.trip.count.i.us = zext nneg i32 %i.um to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us, %.lr.ph438.i.us
  %.sroa.0495.15.us = phi i64 [ 0, %.lr.ph438.i.us ], [ %.sroa.0495.19.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us ] ; 21 uses
  %.sroa.75.24.us = phi i64 [ %.sroa.75.2822.us, %.lr.ph438.i.us ], [ %.sroa.75.28.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us ] ; 6 uses
  %.sroa.104.25.us = phi ptr [ %.sroa.104.2823.us, %.lr.ph438.i.us ], [ %.sroa.104.29.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us ] ; 11 uses
  %indvars.iv487.i.us = phi i64 [ 0, %.lr.ph438.i.us ], [ %indvars.iv.next488.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us ] ; 4 uses
  %.sroa.104.25.us1164 = ptrtoaddr ptr %.sroa.104.25.us to i64
  %indvars.iv.next488.i.us = add nuw nsw i64 %indvars.iv487.i.us, 1 ; 3 uses
  %i.uo = trunc nuw nsw i64 %indvars.iv.next488.i.us to i32
  %i.up = urem i32 %i.uo, %i.um
  %.idx.us = shl nuw nsw i64 %indvars.iv487.i.us, 4
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 %.idx.us ; 5 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !12
  %i.ut = shl nuw nsw i32 %i.up, 2
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.14.us, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !12
  %i.uy = xor i32 %i.ux, %i.us
  %i.uz = and i32 %i.uy, 196607
  %or.cond.not.i.us = icmp eq i32 %i.uz, 0
  br i1 %or.cond.not.i.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.va = icmp slt i64 %.sroa.0495.15.us, %.sroa.75.24.us
  br i1 %i.va, label %bb.bb, label %bb.ba, !prof !127

bb.ba:                                            ; preds = %bb.az
  %i.vb = add nsw i64 %.sroa.75.24.us, 1
  %i.vc = icmp sgt i64 %.sroa.75.24.us, 4611686018427387902
  %i.vd = shl nsw i64 %.sroa.75.24.us, 1
  %..i.i.i358.us = tail call i64 @llvm.smax.i64(i64 %i.vd, i64 %i.vb)
  %.0.i.i.i359.us = select i1 %i.vc, i64 9223372036854775807, i64 %..i.i.i358.us, !prof !128 ; 2 uses
  %i.ve = shl i64 %.0.i.i.i359.us, 2
  %i.vf = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ve, i32 noundef 1) #9 ; 10 uses
  %.not.i467.us = icmp ne ptr %i.vf, null
  %i.vg = icmp sgt i64 %.sroa.0495.15.us, 0
  %or.cond745.us = select i1 %.not.i467.us, i1 %i.vg, i1 false
  br i1 %or.cond745.us, label %.lr.ph.i.i468.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us

.lr.ph.i.i468.us.preheader:                       ; preds = %bb.ba
  %i.vh = ptrtoaddr ptr %i.vf to i64
  %min.iters.check1167 = icmp ult i64 %.sroa.0495.15.us, 8
  %i.vi = sub i64 %.sroa.104.25.us1164, %i.vh
  %diff.check1165 = icmp ugt i64 %i.vi, -32
  %or.cond1243 = select i1 %min.iters.check1167, i1 true, i1 %diff.check1165
  br i1 %or.cond1243, label %.lr.ph.i.i468.us.preheader1261, label %vector.ph1168

vector.ph1168:                                    ; preds = %.lr.ph.i.i468.us.preheader
  %n.vec1169 = and i64 %.sroa.0495.15.us, 9223372036854775800 ; 3 uses
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1168
  %index1171 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1174, %vector.body1170 ] ; 3 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %index1171 ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.25.us, i64 %index1171 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %wide.load1172 = load <4 x i32>, ptr %i.vk, align 4, !tbaa !12
  %wide.load1173 = load <4 x i32>, ptr %i.vl, align 4, !tbaa !12
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store <4 x i32> %wide.load1172, ptr %i.vj, align 4, !tbaa !12
  store <4 x i32> %wide.load1173, ptr %i.vm, align 4, !tbaa !12
  %index.next1174 = add nuw i64 %index1171, 8     ; 2 uses
  %i.vn = icmp eq i64 %index.next1174, %n.vec1169
  br i1 %i.vn, label %middle.block1175, label %vector.body1170, !llvm.loop !34

middle.block1175:                                 ; preds = %vector.body1170
  %cmp.n1176 = icmp eq i64 %.sroa.0495.15.us, %n.vec1169
  br i1 %cmp.n1176, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us, label %.lr.ph.i.i468.us.preheader1261

.lr.ph.i.i468.us.preheader1261:                   ; preds = %.lr.ph.i.i468.us.preheader, %middle.block1175
  %.07.i.i469.us.ph = phi i64 [ 0, %.lr.ph.i.i468.us.preheader ], [ %n.vec1169, %middle.block1175 ] ; 3 uses
  %xtraiter1284 = and i64 %.sroa.0495.15.us, 3    ; 2 uses
  %lcmp.mod1285.not = icmp eq i64 %xtraiter1284, 0
  br i1 %lcmp.mod1285.not, label %.lr.ph.i.i468.us.prol.loopexit, label %.lr.ph.i.i468.us.prol

.lr.ph.i.i468.us.prol:                            ; preds = %.lr.ph.i.i468.us.preheader1261, %.lr.ph.i.i468.us.prol
  %.07.i.i469.us.prol = phi i64 [ %i.vr, %.lr.ph.i.i468.us.prol ], [ %.07.i.i469.us.ph, %.lr.ph.i.i468.us.preheader1261 ] ; 3 uses
  %prol.iter1286 = phi i64 [ %prol.iter1286.next, %.lr.ph.i.i468.us.prol ], [ 0, %.lr.ph.i.i468.us.preheader1261 ]
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %.07.i.i469.us.prol
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.25.us, i64 %.07.i.i469.us.prol
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !12
  store i32 %i.vq, ptr %i.vo, align 4, !tbaa !12
  %i.vr = add nuw nsw i64 %.07.i.i469.us.prol, 1  ; 2 uses
  %prol.iter1286.next = add i64 %prol.iter1286, 1 ; 2 uses
  %prol.iter1286.cmp.not = icmp eq i64 %prol.iter1286.next, %xtraiter1284
  br i1 %prol.iter1286.cmp.not, label %.lr.ph.i.i468.us.prol.loopexit, label %.lr.ph.i.i468.us.prol, !llvm.loop !35

.lr.ph.i.i468.us.prol.loopexit:                   ; preds = %.lr.ph.i.i468.us.prol, %.lr.ph.i.i468.us.preheader1261
  %.07.i.i469.us.unr = phi i64 [ %.07.i.i469.us.ph, %.lr.ph.i.i468.us.preheader1261 ], [ %i.vr, %.lr.ph.i.i468.us.prol ]
  %i.vs = sub nsw i64 %.07.i.i469.us.ph, %.sroa.0495.15.us
  %i.vt = icmp ugt i64 %i.vs, -4
  br i1 %i.vt, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us, label %.lr.ph.i.i468.us

.lr.ph.i.i468.us:                                 ; preds = %.lr.ph.i.i468.us.prol.loopexit, %.lr.ph.i.i468.us
  %.07.i.i469.us = phi i64 [ %i.wj, %.lr.ph.i.i468.us ], [ %.07.i.i469.us.unr, %.lr.ph.i.i468.us.prol.loopexit ] ; 6 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %.07.i.i469.us
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.25.us, i64 %.07.i.i469.us
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !12
  store i32 %i.vw, ptr %i.vu, align 4, !tbaa !12
  %i.vx = add nuw nsw i64 %.07.i.i469.us, 1       ; 2 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.vx
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.25.us, i64 %i.vx
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !12
  store i32 %i.wa, ptr %i.vy, align 4, !tbaa !12
  %i.wb = add nuw nsw i64 %.07.i.i469.us, 2       ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.wb
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.25.us, i64 %i.wb
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !12
  store i32 %i.we, ptr %i.wc, align 4, !tbaa !12
  %i.wf = add nuw nsw i64 %.07.i.i469.us, 3       ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.wf
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.25.us, i64 %i.wf
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !12
  store i32 %i.wi, ptr %i.wg, align 4, !tbaa !12
  %i.wj = add nuw nsw i64 %.07.i.i469.us, 4       ; 2 uses
  %exitcond.not.i.i470.us.3 = icmp eq i64 %i.wj, %.sroa.0495.15.us
  br i1 %exitcond.not.i.i470.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us, label %.lr.ph.i.i468.us, !llvm.loop !36

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us: ; preds = %.lr.ph.i.i468.us.prol.loopexit, %.lr.ph.i.i468.us, %middle.block1175, %bb.ba
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %.sroa.0495.15.us
  %i.wl = load i32, ptr %i.uq, align 4, !tbaa !12
  store i32 %i.wl, ptr %i.wk, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef %.sroa.104.25.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i361.us

bb.bb:                                            ; preds = %bb.az
  %i.wm = getelementptr inbounds [4 x i8], ptr %.sroa.104.25.us, i64 %.sroa.0495.15.us
  %i.wn = load i32, ptr %i.uq, align 4, !tbaa !12
  store i32 %i.wn, ptr %i.wm, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i361.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i361.us: ; preds = %bb.bb, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us
  %.sroa.75.25.us = phi i64 [ %.sroa.75.24.us, %bb.bb ], [ %.0.i.i.i359.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us ] ; 5 uses
  %.sroa.104.26.us = phi ptr [ %.sroa.104.25.us, %bb.bb ], [ %i.vf, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit471.us ] ; 10 uses
  %.sroa.104.26.us1149 = ptrtoaddr ptr %.sroa.104.26.us to i64
  %.sroa.0495.16.us = add nsw i64 %.sroa.0495.15.us, 1 ; 8 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uq, i64 4 ; 2 uses
  %i.wp = icmp slt i64 %.sroa.0495.16.us, %.sroa.75.25.us
  br i1 %i.wp, label %bb.bd, label %bb.bc, !prof !127

bb.bc:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i361.us
  %i.wq = add nsw i64 %.sroa.75.25.us, 1
  %i.wr = icmp sgt i64 %.sroa.75.25.us, 4611686018427387902
  %i.ws = shl nsw i64 %.sroa.75.25.us, 1
  %..i.i317.i.us = tail call i64 @llvm.smax.i64(i64 %i.ws, i64 %i.wq)
  %.0.i.i318.i.us = select i1 %i.wr, i64 9223372036854775807, i64 %..i.i317.i.us, !prof !128 ; 2 uses
  %i.wt = shl i64 %.0.i.i318.i.us, 2
  %i.wu = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.wt, i32 noundef 1) #9 ; 10 uses
  %.not.i462.us = icmp ne ptr %i.wu, null
  %i.wv = icmp sgt i64 %.sroa.0495.15.us, -1
  %or.cond746.us = and i1 %i.wv, %.not.i462.us
  br i1 %or.cond746.us, label %.lr.ph.i.i463.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us

.lr.ph.i.i463.us.preheader:                       ; preds = %bb.bc
  %i.ww = ptrtoaddr ptr %i.wu to i64
  %min.iters.check1152 = icmp ult i64 %.sroa.0495.16.us, 8
  %i.wx = sub i64 %.sroa.104.26.us1149, %i.ww
  %diff.check1150 = icmp ugt i64 %i.wx, -32
  %or.cond1244 = select i1 %min.iters.check1152, i1 true, i1 %diff.check1150
  br i1 %or.cond1244, label %.lr.ph.i.i463.us.preheader1260, label %vector.ph1153

vector.ph1153:                                    ; preds = %.lr.ph.i.i463.us.preheader
  %n.vec1154 = and i64 %.sroa.0495.16.us, 9223372036854775800 ; 3 uses
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1159, %vector.body1155 ] ; 3 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %index1156 ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.26.us, i64 %index1156 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %wide.load1157 = load <4 x i32>, ptr %i.wz, align 4, !tbaa !12
  %wide.load1158 = load <4 x i32>, ptr %i.xa, align 4, !tbaa !12
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  store <4 x i32> %wide.load1157, ptr %i.wy, align 4, !tbaa !12
  store <4 x i32> %wide.load1158, ptr %i.xb, align 4, !tbaa !12
  %index.next1159 = add nuw i64 %index1156, 8     ; 2 uses
  %i.xc = icmp eq i64 %index.next1159, %n.vec1154
  br i1 %i.xc, label %middle.block1160, label %vector.body1155, !llvm.loop !37

middle.block1160:                                 ; preds = %vector.body1155
  %cmp.n1161 = icmp eq i64 %.sroa.0495.16.us, %n.vec1154
  br i1 %cmp.n1161, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us, label %.lr.ph.i.i463.us.preheader1260

.lr.ph.i.i463.us.preheader1260:                   ; preds = %.lr.ph.i.i463.us.preheader, %middle.block1160
  %.07.i.i464.us.ph = phi i64 [ 0, %.lr.ph.i.i463.us.preheader ], [ %n.vec1154, %middle.block1160 ] ; 3 uses
  %i.xd = sub nsw i64 %.sroa.0495.15.us, %.07.i.i464.us.ph
  %xtraiter1287 = and i64 %.sroa.0495.16.us, 3    ; 2 uses
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1287, 0
  br i1 %lcmp.mod1288.not, label %.lr.ph.i.i463.us.prol.loopexit, label %.lr.ph.i.i463.us.prol

.lr.ph.i.i463.us.prol:                            ; preds = %.lr.ph.i.i463.us.preheader1260, %.lr.ph.i.i463.us.prol
  %.07.i.i464.us.prol = phi i64 [ %i.xh, %.lr.ph.i.i463.us.prol ], [ %.07.i.i464.us.ph, %.lr.ph.i.i463.us.preheader1260 ] ; 3 uses
  %prol.iter1289 = phi i64 [ %prol.iter1289.next, %.lr.ph.i.i463.us.prol ], [ 0, %.lr.ph.i.i463.us.preheader1260 ]
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.07.i.i464.us.prol
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.26.us, i64 %.07.i.i464.us.prol
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !12
  store i32 %i.xg, ptr %i.xe, align 4, !tbaa !12
  %i.xh = add nuw nsw i64 %.07.i.i464.us.prol, 1  ; 2 uses
  %prol.iter1289.next = add i64 %prol.iter1289, 1 ; 2 uses
  %prol.iter1289.cmp.not = icmp eq i64 %prol.iter1289.next, %xtraiter1287
  br i1 %prol.iter1289.cmp.not, label %.lr.ph.i.i463.us.prol.loopexit, label %.lr.ph.i.i463.us.prol, !llvm.loop !38

.lr.ph.i.i463.us.prol.loopexit:                   ; preds = %.lr.ph.i.i463.us.prol, %.lr.ph.i.i463.us.preheader1260
  %.07.i.i464.us.unr = phi i64 [ %.07.i.i464.us.ph, %.lr.ph.i.i463.us.preheader1260 ], [ %i.xh, %.lr.ph.i.i463.us.prol ]
  %i.xi = icmp ult i64 %i.xd, 3
  br i1 %i.xi, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us, label %.lr.ph.i.i463.us

.lr.ph.i.i463.us:                                 ; preds = %.lr.ph.i.i463.us.prol.loopexit, %.lr.ph.i.i463.us
  %.07.i.i464.us = phi i64 [ %i.xy, %.lr.ph.i.i463.us ], [ %.07.i.i464.us.unr, %.lr.ph.i.i463.us.prol.loopexit ] ; 6 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.07.i.i464.us
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.26.us, i64 %.07.i.i464.us
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !12
  store i32 %i.xl, ptr %i.xj, align 4, !tbaa !12
  %i.xm = add nuw nsw i64 %.07.i.i464.us, 1       ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.xm
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.26.us, i64 %i.xm
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !12
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !12
  %i.xq = add nuw nsw i64 %.07.i.i464.us, 2       ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.xq
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.26.us, i64 %i.xq
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !12
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !12
  %i.xu = add nuw nsw i64 %.07.i.i464.us, 3       ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.26.us, i64 %i.xu
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !12
  store i32 %i.xx, ptr %i.xv, align 4, !tbaa !12
  %i.xy = add nuw nsw i64 %.07.i.i464.us, 4
  %exitcond.not.i.i465.us.3 = icmp eq i64 %i.xu, %.sroa.0495.15.us
  br i1 %exitcond.not.i.i465.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us, label %.lr.ph.i.i463.us, !llvm.loop !39

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us: ; preds = %.lr.ph.i.i463.us.prol.loopexit, %.lr.ph.i.i463.us, %middle.block1160, %bb.bc
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.sroa.0495.16.us
  %i.ya = load i32, ptr %i.wo, align 4, !tbaa !12
  store i32 %i.ya, ptr %i.xz, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.26.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit319.i.us

bb.bd:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i361.us
  %i.yb = getelementptr inbounds [4 x i8], ptr %.sroa.104.26.us, i64 %.sroa.0495.16.us
  %i.yc = load i32, ptr %i.wo, align 4, !tbaa !12
  store i32 %i.yc, ptr %i.yb, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit319.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit319.i.us: ; preds = %bb.bd, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us
  %.sroa.75.26.us = phi i64 [ %.sroa.75.25.us, %bb.bd ], [ %.0.i.i318.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us ] ; 5 uses
  %.sroa.104.27.us = phi ptr [ %.sroa.104.26.us, %bb.bd ], [ %i.wu, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit466.us ] ; 10 uses
  %.sroa.104.27.us1134 = ptrtoaddr ptr %.sroa.104.27.us to i64
  %.sroa.0495.17.us = add nsw i64 %.sroa.0495.15.us, 2 ; 9 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.uq, i64 8 ; 2 uses
  %i.ye = icmp slt i64 %.sroa.0495.17.us, %.sroa.75.26.us
  br i1 %i.ye, label %bb.bf, label %bb.be, !prof !127

bb.be:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit319.i.us
  %i.yf = add nsw i64 %.sroa.75.26.us, 1
  %i.yg = icmp sgt i64 %.sroa.75.26.us, 4611686018427387902
  %i.yh = shl nsw i64 %.sroa.75.26.us, 1
  %..i.i320.i.us = tail call i64 @llvm.smax.i64(i64 %i.yh, i64 %i.yf)
  %.0.i.i321.i.us = select i1 %i.yg, i64 9223372036854775807, i64 %..i.i320.i.us, !prof !128 ; 2 uses
  %i.yi = shl i64 %.0.i.i321.i.us, 2
  %i.yj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.yi, i32 noundef 1) #9 ; 10 uses
  %.not.i457.us = icmp ne ptr %i.yj, null
  %i.yk = icmp sgt i64 %.sroa.0495.15.us, -2
  %or.cond747.us = and i1 %i.yk, %.not.i457.us
  br i1 %or.cond747.us, label %.lr.ph.i.i458.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us

.lr.ph.i.i458.us.preheader:                       ; preds = %bb.be
  %i.yl = ptrtoaddr ptr %i.yj to i64
  %min.iters.check1137 = icmp ult i64 %.sroa.0495.17.us, 8
  %i.ym = sub i64 %.sroa.104.27.us1134, %i.yl
  %diff.check1135 = icmp ugt i64 %i.ym, -32
  %or.cond1245 = select i1 %min.iters.check1137, i1 true, i1 %diff.check1135
  br i1 %or.cond1245, label %.lr.ph.i.i458.us.preheader1259, label %vector.ph1138

vector.ph1138:                                    ; preds = %.lr.ph.i.i458.us.preheader
  %n.vec1139 = and i64 %.sroa.0495.17.us, -8      ; 3 uses
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1138
  %index1141 = phi i64 [ 0, %vector.ph1138 ], [ %index.next1144, %vector.body1140 ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %index1141 ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.27.us, i64 %index1141 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %wide.load1142 = load <4 x i32>, ptr %i.yo, align 4, !tbaa !12
  %wide.load1143 = load <4 x i32>, ptr %i.yp, align 4, !tbaa !12
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  store <4 x i32> %wide.load1142, ptr %i.yn, align 4, !tbaa !12
  store <4 x i32> %wide.load1143, ptr %i.yq, align 4, !tbaa !12
  %index.next1144 = add nuw i64 %index1141, 8     ; 2 uses
  %i.yr = icmp eq i64 %index.next1144, %n.vec1139
  br i1 %i.yr, label %middle.block1145, label %vector.body1140, !llvm.loop !40

middle.block1145:                                 ; preds = %vector.body1140
  %cmp.n1146 = icmp eq i64 %.sroa.0495.17.us, %n.vec1139
  br i1 %cmp.n1146, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us, label %.lr.ph.i.i458.us.preheader1259

.lr.ph.i.i458.us.preheader1259:                   ; preds = %.lr.ph.i.i458.us.preheader, %middle.block1145
  %.07.i.i459.us.ph = phi i64 [ 0, %.lr.ph.i.i458.us.preheader ], [ %n.vec1139, %middle.block1145 ] ; 3 uses
  %i.ys = sub i64 %.sroa.0495.16.us, %.07.i.i459.us.ph
  %i.yt = and i64 %.sroa.0495.17.us, 3            ; 2 uses
  %lcmp.mod1291.not = icmp eq i64 %i.yt, 0
  br i1 %lcmp.mod1291.not, label %.lr.ph.i.i458.us.prol.loopexit, label %.lr.ph.i.i458.us.prol

.lr.ph.i.i458.us.prol:                            ; preds = %.lr.ph.i.i458.us.preheader1259, %.lr.ph.i.i458.us.prol
  %.07.i.i459.us.prol = phi i64 [ %i.yx, %.lr.ph.i.i458.us.prol ], [ %.07.i.i459.us.ph, %.lr.ph.i.i458.us.preheader1259 ] ; 3 uses
  %prol.iter1292 = phi i64 [ %prol.iter1292.next, %.lr.ph.i.i458.us.prol ], [ 0, %.lr.ph.i.i458.us.preheader1259 ]
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.07.i.i459.us.prol
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.27.us, i64 %.07.i.i459.us.prol
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !12
  store i32 %i.yw, ptr %i.yu, align 4, !tbaa !12
  %i.yx = add nuw nsw i64 %.07.i.i459.us.prol, 1  ; 2 uses
  %prol.iter1292.next = add i64 %prol.iter1292, 1 ; 2 uses
  %prol.iter1292.cmp.not = icmp eq i64 %prol.iter1292.next, %i.yt
  br i1 %prol.iter1292.cmp.not, label %.lr.ph.i.i458.us.prol.loopexit, label %.lr.ph.i.i458.us.prol, !llvm.loop !41

.lr.ph.i.i458.us.prol.loopexit:                   ; preds = %.lr.ph.i.i458.us.prol, %.lr.ph.i.i458.us.preheader1259
  %.07.i.i459.us.unr = phi i64 [ %.07.i.i459.us.ph, %.lr.ph.i.i458.us.preheader1259 ], [ %i.yx, %.lr.ph.i.i458.us.prol ]
  %i.yy = icmp ult i64 %i.ys, 3
  br i1 %i.yy, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us, label %.lr.ph.i.i458.us

.lr.ph.i.i458.us:                                 ; preds = %.lr.ph.i.i458.us.prol.loopexit, %.lr.ph.i.i458.us
  %.07.i.i459.us = phi i64 [ %i.zo, %.lr.ph.i.i458.us ], [ %.07.i.i459.us.unr, %.lr.ph.i.i458.us.prol.loopexit ] ; 6 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.07.i.i459.us
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.27.us, i64 %.07.i.i459.us
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !12
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !12
  %i.zc = add nuw nsw i64 %.07.i.i459.us, 1       ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.zc
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.27.us, i64 %i.zc
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !12
  store i32 %i.zf, ptr %i.zd, align 4, !tbaa !12
  %i.zg = add nuw nsw i64 %.07.i.i459.us, 2       ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.zg
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.27.us, i64 %i.zg
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !12
  store i32 %i.zj, ptr %i.zh, align 4, !tbaa !12
  %i.zk = add nuw nsw i64 %.07.i.i459.us, 3       ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.zk
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.27.us, i64 %i.zk
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !12
  store i32 %i.zn, ptr %i.zl, align 4, !tbaa !12
  %i.zo = add nuw nsw i64 %.07.i.i459.us, 4       ; 2 uses
  %exitcond.not.i.i460.us.3 = icmp eq i64 %i.zo, %.sroa.0495.17.us
  br i1 %exitcond.not.i.i460.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us, label %.lr.ph.i.i458.us, !llvm.loop !42

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us: ; preds = %.lr.ph.i.i458.us.prol.loopexit, %.lr.ph.i.i458.us, %middle.block1145, %bb.be
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.yj, i64 %.sroa.0495.17.us
  %i.zq = load i32, ptr %i.yd, align 4, !tbaa !12
  store i32 %i.zq, ptr %i.zp, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.27.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit322.i.us

bb.bf:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit319.i.us
  %i.zr = getelementptr inbounds [4 x i8], ptr %.sroa.104.27.us, i64 %.sroa.0495.17.us
  %i.zs = load i32, ptr %i.yd, align 4, !tbaa !12
  store i32 %i.zs, ptr %i.zr, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit322.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit322.i.us: ; preds = %bb.bf, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us
  %.sroa.75.27.us = phi i64 [ %.sroa.75.26.us, %bb.bf ], [ %.0.i.i321.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us ] ; 5 uses
  %.sroa.104.28.us = phi ptr [ %.sroa.104.27.us, %bb.bf ], [ %i.yj, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit461.us ] ; 10 uses
  %.sroa.104.28.us1119 = ptrtoaddr ptr %.sroa.104.28.us to i64
  %.sroa.0495.18.us = add nsw i64 %.sroa.0495.15.us, 3 ; 8 uses
  %i.zt = icmp slt i64 %.sroa.0495.18.us, %.sroa.75.27.us
  br i1 %i.zt, label %bb.bh, label %bb.bg, !prof !127

bb.bg:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit322.i.us
  %i.zu = add nsw i64 %.sroa.75.27.us, 1
  %i.zv = icmp sgt i64 %.sroa.75.27.us, 4611686018427387902
  %i.zw = shl nsw i64 %.sroa.75.27.us, 1
  %..i.i323.i.us = tail call i64 @llvm.smax.i64(i64 %i.zw, i64 %i.zu)
  %.0.i.i324.i.us = select i1 %i.zv, i64 9223372036854775807, i64 %..i.i323.i.us, !prof !128 ; 2 uses
  %i.zx = shl i64 %.0.i.i324.i.us, 2
  %i.zy = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.zx, i32 noundef 1) #9 ; 10 uses
  %.not.i452.us = icmp ne ptr %i.zy, null
  %i.zz = icmp sgt i64 %.sroa.0495.15.us, -3
  %or.cond748.us = and i1 %i.zz, %.not.i452.us
  br i1 %or.cond748.us, label %.lr.ph.i.i453.us.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us

.lr.ph.i.i453.us.preheader:                       ; preds = %bb.bg
  %i.aaa = ptrtoaddr ptr %i.zy to i64
  %min.iters.check1122 = icmp ult i64 %.sroa.0495.18.us, 8
  %i.aab = sub i64 %.sroa.104.28.us1119, %i.aaa
  %diff.check1120 = icmp ugt i64 %i.aab, -32
  %or.cond1246 = select i1 %min.iters.check1122, i1 true, i1 %diff.check1120
  br i1 %or.cond1246, label %.lr.ph.i.i453.us.preheader1258, label %vector.ph1123

vector.ph1123:                                    ; preds = %.lr.ph.i.i453.us.preheader
  %n.vec1124 = and i64 %.sroa.0495.18.us, -8      ; 3 uses
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1123
  %index1126 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1129, %vector.body1125 ] ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %index1126 ; 2 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %index1126 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %wide.load1127 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !12
  %wide.load1128 = load <4 x i32>, ptr %i.aae, align 4, !tbaa !12
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  store <4 x i32> %wide.load1127, ptr %i.aac, align 4, !tbaa !12
  store <4 x i32> %wide.load1128, ptr %i.aaf, align 4, !tbaa !12
  %index.next1129 = add nuw i64 %index1126, 8     ; 2 uses
  %i.aag = icmp eq i64 %index.next1129, %n.vec1124
  br i1 %i.aag, label %middle.block1130, label %vector.body1125, !llvm.loop !43

middle.block1130:                                 ; preds = %vector.body1125
  %cmp.n1131 = icmp eq i64 %.sroa.0495.18.us, %n.vec1124
  br i1 %cmp.n1131, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, label %.lr.ph.i.i453.us.preheader1258

.lr.ph.i.i453.us.preheader1258:                   ; preds = %.lr.ph.i.i453.us.preheader, %middle.block1130
  %.07.i.i454.us.ph = phi i64 [ 0, %.lr.ph.i.i453.us.preheader ], [ %n.vec1124, %middle.block1130 ] ; 3 uses
  %i.aah = sub i64 %.sroa.0495.17.us, %.07.i.i454.us.ph
  %xtraiter1293 = and i64 %.sroa.0495.18.us, 3    ; 2 uses
  %lcmp.mod1294.not = icmp eq i64 %xtraiter1293, 0
  br i1 %lcmp.mod1294.not, label %.lr.ph.i.i453.us.prol.loopexit, label %.lr.ph.i.i453.us.prol

.lr.ph.i.i453.us.prol:                            ; preds = %.lr.ph.i.i453.us.preheader1258, %.lr.ph.i.i453.us.prol
  %.07.i.i454.us.prol = phi i64 [ %i.aal, %.lr.ph.i.i453.us.prol ], [ %.07.i.i454.us.ph, %.lr.ph.i.i453.us.preheader1258 ] ; 3 uses
  %prol.iter1295 = phi i64 [ %prol.iter1295.next, %.lr.ph.i.i453.us.prol ], [ 0, %.lr.ph.i.i453.us.preheader1258 ]
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.07.i.i454.us.prol
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %.07.i.i454.us.prol
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !12
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !12
  %i.aal = add nuw nsw i64 %.07.i.i454.us.prol, 1 ; 2 uses
  %prol.iter1295.next = add i64 %prol.iter1295, 1 ; 2 uses
  %prol.iter1295.cmp.not = icmp eq i64 %prol.iter1295.next, %xtraiter1293
  br i1 %prol.iter1295.cmp.not, label %.lr.ph.i.i453.us.prol.loopexit, label %.lr.ph.i.i453.us.prol, !llvm.loop !44

.lr.ph.i.i453.us.prol.loopexit:                   ; preds = %.lr.ph.i.i453.us.prol, %.lr.ph.i.i453.us.preheader1258
  %.07.i.i454.us.unr = phi i64 [ %.07.i.i454.us.ph, %.lr.ph.i.i453.us.preheader1258 ], [ %i.aal, %.lr.ph.i.i453.us.prol ]
  %i.aam = icmp ult i64 %i.aah, 3
  br i1 %i.aam, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, label %.lr.ph.i.i453.us

.lr.ph.i.i453.us:                                 ; preds = %.lr.ph.i.i453.us.prol.loopexit, %.lr.ph.i.i453.us
  %.07.i.i454.us = phi i64 [ %i.abc, %.lr.ph.i.i453.us ], [ %.07.i.i454.us.unr, %.lr.ph.i.i453.us.prol.loopexit ] ; 6 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.07.i.i454.us
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %.07.i.i454.us
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !12
  store i32 %i.aap, ptr %i.aan, align 4, !tbaa !12
  %i.aaq = add nuw nsw i64 %.07.i.i454.us, 1      ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aaq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %i.aaq
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !12
  store i32 %i.aat, ptr %i.aar, align 4, !tbaa !12
  %i.aau = add nuw nsw i64 %.07.i.i454.us, 2      ; 2 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aau
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %i.aau
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !12
  store i32 %i.aax, ptr %i.aav, align 4, !tbaa !12
  %i.aay = add nuw nsw i64 %.07.i.i454.us, 3      ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aay
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %i.aay
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !12
  store i32 %i.abb, ptr %i.aaz, align 4, !tbaa !12
  %i.abc = add nuw nsw i64 %.07.i.i454.us, 4      ; 2 uses
  %exitcond.not.i.i455.us.3 = icmp eq i64 %i.abc, %.sroa.0495.18.us
  br i1 %exitcond.not.i.i455.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, label %.lr.ph.i.i453.us, !llvm.loop !45

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us: ; preds = %.lr.ph.i.i453.us.prol.loopexit, %.lr.ph.i.i453.us, %middle.block1130, %bb.bg
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %.sroa.0495.18.us
  %i.abe = trunc nuw nsw i64 %indvars.iv487.i.us to i32
  store i32 %i.abe, ptr %i.abd, align 4, !tbaa !12
  %i.abf = add nsw i64 %.sroa.0495.15.us, 4
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.28.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us

bb.bh:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit322.i.us
  %i.abg = add nsw i64 %.sroa.0495.15.us, 4
  %i.abh = getelementptr inbounds [4 x i8], ptr %.sroa.104.28.us, i64 %.sroa.0495.18.us
  %i.abi = trunc nuw nsw i64 %indvars.iv487.i.us to i32
  store i32 %i.abi, ptr %i.abh, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us: ; preds = %bb.bh, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, %bb.ay
  %.sroa.0495.19.us = phi i64 [ %.sroa.0495.15.us, %bb.ay ], [ %i.abg, %bb.bh ], [ %i.abf, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us ] ; 6 uses
  %.sroa.75.28.us = phi i64 [ %.sroa.75.24.us, %bb.ay ], [ %.sroa.75.27.us, %bb.bh ], [ %.0.i.i324.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us ] ; 4 uses
  %.sroa.104.29.us = phi ptr [ %.sroa.104.25.us, %bb.ay ], [ %.sroa.104.28.us, %bb.bh ], [ %i.zy, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us ] ; 4 uses
  %exitcond.not.i362.us = icmp eq i64 %indvars.iv.next488.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i362.us, label %.critedge.i.us, label %bb.ay

.critedge.i.us:                                   ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us
  %i.abj = icmp eq i64 %.sroa.0495.19.us, 0
  br i1 %i.abj, label %.critedge.i.thread.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit349.i.us

.critedge.i.thread.us:                            ; preds = %bb.aw, %.critedge.i.us, %bb.ax
  %.sroa.104.8680.us = phi ptr [ %.sroa.104.29.us, %.critedge.i.us ], [ %.sroa.104.2823.us, %bb.ax ], [ %.sroa.104.2823.us, %bb.aw ]
  %.sroa.75.7679.us = phi i64 [ %.sroa.75.28.us, %.critedge.i.us ], [ %.sroa.75.2822.us, %bb.ax ], [ %.sroa.75.2822.us, %bb.aw ]
  %i.abk = load i32, ptr %.sroa.39.14.us, align 4, !tbaa !12 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 4
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !12 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 8
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !12 ; 2 uses
  br label %.lr.ph448.i.us

.lr.ph448.i.us:                                   ; preds = %bb.bn, %.critedge.i.thread.us
  %indvars.iv490.i.us = phi i64 [ %indvars.iv.next491.i.us, %bb.bn ], [ 0, %.critedge.i.thread.us ] ; 4 uses
  %.0404446.i.us = phi i32 [ %.1405.i.us, %bb.bn ], [ 0, %.critedge.i.thread.us ]
  %.0406445.i.us = phi i32 [ %.1407.i.us, %bb.bn ], [ %i.abo, %.critedge.i.thread.us ] ; 2 uses
  %.0408444.i.us = phi i32 [ %.1409.i.us, %bb.bn ], [ %i.abm, %.critedge.i.thread.us ]
  %.0410443.i.us = phi i32 [ %.1411.i.us, %bb.bn ], [ %i.abk, %.critedge.i.thread.us ] ; 3 uses
  %.0412442.i.us = phi i32 [ %.1413.i.us, %bb.bn ], [ 0, %.critedge.i.thread.us ]
  %.0414441.i.us = phi i32 [ %.1415.i.us, %bb.bn ], [ %i.abo, %.critedge.i.thread.us ] ; 2 uses
  %.0416440.i.us = phi i32 [ %.1417.i.us, %bb.bn ], [ %i.abm, %.critedge.i.thread.us ]
  %.0418439.i.us = phi i32 [ %.1419.i.us, %bb.bn ], [ %i.abk, %.critedge.i.thread.us ] ; 3 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.14.us, i64 %indvars.iv490.i.us ; 3 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !12 ; 6 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 4
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !12 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !12 ; 4 uses
  %i.abv = icmp slt i32 %i.abq, %.0418439.i.us
  br i1 %i.abv, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph448.i.us
  %i.abw = icmp eq i32 %i.abq, %.0418439.i.us
  %i.abx = icmp slt i32 %i.abu, %.0414441.i.us
  %or.cond309.i.us = select i1 %i.abw, i1 %i.abx, i1 false
  br i1 %or.cond309.i.us, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %.lr.ph448.i.us
  %i.aby = lshr exact i64 %indvars.iv490.i.us, 2
  %i.abz = trunc nuw i64 %i.aby to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1419.i.us = phi i32 [ %i.abq, %bb.bj ], [ %.0418439.i.us, %bb.bi ] ; 2 uses
  %.1417.i.us = phi i32 [ %i.abs, %bb.bj ], [ %.0416440.i.us, %bb.bi ] ; 2 uses
  %.1415.i.us = phi i32 [ %i.abu, %bb.bj ], [ %.0414441.i.us, %bb.bi ] ; 2 uses
  %.1413.i.us = phi i32 [ %i.abz, %bb.bj ], [ %.0412442.i.us, %bb.bi ] ; 2 uses
  %i.aca = icmp sgt i32 %i.abq, %.0410443.i.us
  br i1 %i.aca, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.acb = icmp eq i32 %i.abq, %.0410443.i.us
  %i.acc = icmp sgt i32 %i.abu, %.0406445.i.us
  %or.cond311.i.us = select i1 %i.acb, i1 %i.acc, i1 false
  br i1 %or.cond311.i.us, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.acd = lshr exact i64 %indvars.iv490.i.us, 2
  %i.ace = trunc nuw i64 %i.acd to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1411.i.us = phi i32 [ %i.abq, %bb.bm ], [ %.0410443.i.us, %bb.bl ] ; 2 uses
  %.1409.i.us = phi i32 [ %i.abs, %bb.bm ], [ %.0408444.i.us, %bb.bl ] ; 2 uses
  %.1407.i.us = phi i32 [ %i.abu, %bb.bm ], [ %.0406445.i.us, %bb.bl ] ; 2 uses
  %.1405.i.us = phi i32 [ %i.ace, %bb.bm ], [ %.0404446.i.us, %bb.bl ] ; 2 uses
  %indvars.iv.next491.i.us = add nuw nsw i64 %indvars.iv490.i.us, 4 ; 2 uses
  %i.acf = icmp sgt i64 %.sroa.0614.6.us, %indvars.iv.next491.i.us
  br i1 %i.acf, label %.lr.ph448.i.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.bn, %.critedge.i.thread.thread.us
  %.sroa.75.7679739.us = phi i64 [ %.sroa.75.2822.us, %.critedge.i.thread.thread.us ], [ %.sroa.75.7679.us, %bb.bn ] ; 6 uses
  %.sroa.104.8680738.us = phi ptr [ %.sroa.104.2823.us, %.critedge.i.thread.thread.us ], [ %.sroa.104.8680.us, %bb.bn ] ; 7 uses
  %.0418.lcssa.i.us = phi i32 [ %i.ub, %.critedge.i.thread.thread.us ], [ %.1419.i.us, %bb.bn ] ; 2 uses
  %.0416.lcssa.i.us = phi i32 [ %i.ud, %.critedge.i.thread.thread.us ], [ %.1417.i.us, %bb.bn ] ; 2 uses
  %.0414.lcssa.i.us = phi i32 [ %i.uf, %.critedge.i.thread.thread.us ], [ %.1415.i.us, %bb.bn ] ; 2 uses
  %.0412.lcssa.i.us = phi i32 [ 0, %.critedge.i.thread.thread.us ], [ %.1413.i.us, %bb.bn ] ; 2 uses
  %.0410.lcssa.i.us = phi i32 [ %i.ub, %.critedge.i.thread.thread.us ], [ %.1411.i.us, %bb.bn ] ; 2 uses
  %.0408.lcssa.i.us = phi i32 [ %i.ud, %.critedge.i.thread.thread.us ], [ %.1409.i.us, %bb.bn ] ; 2 uses
  %.0406.lcssa.i.us = phi i32 [ %i.uf, %.critedge.i.thread.thread.us ], [ %.1407.i.us, %bb.bn ] ; 2 uses
  %.0404.lcssa.i.us = phi i32 [ 0, %.critedge.i.thread.thread.us ], [ %.1405.i.us, %bb.bn ] ; 2 uses
  %i.acg = icmp sgt i64 %.sroa.75.7679739.us, 0
  br i1 %i.acg, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread, !prof !127

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread: ; preds = %._crit_edge.i.us
  %i.ach = shl i64 %.sroa.75.7679739.us, 2
  %i.aci = add i64 %i.ach, 4
  %i.acj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.aci, i32 noundef 1) #9 ; 2 uses
  store i32 %.0418.lcssa.i.us, ptr %i.acj, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef %.sroa.104.8680738.us) #9
  %i.ack = add nsw i64 %.sroa.75.7679739.us, 2
  br label %bb.bo

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us: ; preds = %._crit_edge.i.us
  store i32 %.0418.lcssa.i.us, ptr %.sroa.104.8680738.us, align 4, !tbaa !12
  %.not1076 = icmp eq i64 %.sroa.75.7679739.us, 1
  br i1 %.not1076, label %bb.bo, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us, !prof !132

bb.bo:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us
  %.sroa.104.18.us1047 = phi ptr [ %i.acj, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread ], [ %.sroa.104.8680738.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us ] ; 2 uses
  %.sroa.75.17.us1046 = phi i64 [ %i.ack, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread ], [ 2, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us ] ; 2 uses
  %i.acl = shl i64 %.sroa.75.17.us1046, 2
  %i.acm = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.acl, i32 noundef 1) #9 ; 4 uses
  %.not.i442.not.us = icmp eq ptr %i.acm, null
  br i1 %.not.i442.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread, label %.lr.ph.i.i443.us.preheader

.lr.ph.i.i443.us.preheader:                       ; preds = %bb.bo
  %i.acn = load i32, ptr %.sroa.104.18.us1047, align 4, !tbaa !12
  store i32 %i.acn, ptr %i.acm, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread: ; preds = %bb.bo, %.lr.ph.i.i443.us.preheader
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  store i32 %.0416.lcssa.i.us, ptr %i.aco, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.18.us1047) #9
  br label %bb.bp

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.104.8680738.us, i64 4
  store i32 %.0416.lcssa.i.us, ptr %i.acp, align 4, !tbaa !12
  %i.acq = icmp samesign ugt i64 %.sroa.75.7679739.us, 2
  br i1 %i.acq, label %bb.bq, label %bb.bp, !prof !133

bb.bp:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us
  %.sroa.104.19.us1051 = phi ptr [ %i.acm, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread ], [ %.sroa.104.8680738.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us ] ; 3 uses
  %.sroa.75.18.us1050 = phi i64 [ %.sroa.75.17.us1046, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread ], [ 2, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us ] ; 2 uses
  %i.acr = add nsw i64 %.sroa.75.18.us1050, 1
  %i.acs = shl nsw i64 %.sroa.75.18.us1050, 1
  %..i.i332.i.us = tail call i64 @llvm.smax.i64(i64 %i.acs, i64 %i.acr) ; 2 uses
  %i.act = shl i64 %..i.i332.i.us, 2
  %i.acu = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.act, i32 noundef 1) #9 ; 5 uses
end_hunk_1
