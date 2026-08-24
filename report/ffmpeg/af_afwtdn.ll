Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afwtdn?download=true
inline.NumInlined: 37
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@config_output:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  %i.dq = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dr = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ds = add nsw <2 x i32> %i.dr, <i32 -2, i32 -1> ; 2 uses
  %i.dt = insertelement <2 x i32> poison, i32 %i.do, i64 0
  %i.du = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dv = shl <2 x i32> %i.ds, %i.du
  %i.dw = sub <2 x i32> %i.dv, %i.ds
  store <2 x i32> %i.dw, ptr %i.dp, align 4, !tbaa !71
  %i.dx = load ptr, ptr %i.bt, align 8, !tbaa !28
  %.not132 = icmp eq ptr %i.dx, null
  br i1 %.not132, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.dy = load ptr, ptr %i.by, align 8, !tbaa !74
  %.not133 = icmp eq ptr %i.dy, null
  br i1 %.not133, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dz = load ptr, ptr %i.bp, align 8, !tbaa !75
  %.not134 = icmp eq ptr %i.dz, null
  br i1 %.not134, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ea = load ptr, ptr %i.ch, align 8, !tbaa !76
  %.not135 = icmp eq ptr %i.ea, null
  br i1 %.not135, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = load ptr, ptr %i.de, align 8, !tbaa !35
  %.not136 = icmp eq ptr %i.eb, null
  br i1 %.not136, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = load ptr, ptr %i.di, align 8, !tbaa !82
  %.not137 = icmp eq ptr %i.ec, null
  %.not138 = icmp eq ptr %i.dl, null
  %or.cond144 = select i1 %.not137, i1 true, i1 %.not138
  br i1 %or.cond144, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load ptr, ptr %i.cv, align 8, !tbaa !79
  %.not139 = icmp eq ptr %i.ed, null
  br i1 %.not139, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.m
  %i.ee = load ptr, ptr %i.cz, align 8, !tbaa !80
  %.not140 = icmp eq ptr %i.ee, null
  br i1 %.not140, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %.critedge, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph, %bb.g, %.preheader, %bb.f, %switch.lookup, %bb.c, %bb.d, %bb.e
  %.3 = phi i32 [ -12, %bb.f ], [ -12, %bb.c ], [ -12, %switch.lookup ], [ -12, %bb.e ], [ -12, %bb.d ], [ 0, %.preheader ], [ -12, %.lr.ph ], [ -12, %bb.h ], [ -12, %bb.i ], [ -12, %bb.j ], [ -12, %bb.k ], [ -12, %bb.l ], [ -12, %bb.m ], [ -12, %.critedge ], [ 0, %bb.g ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #5

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 31 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !85     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = sext i32 %2 to i64                       ; 10 uses
  %i.i = getelementptr inbounds [128 x i8], ptr %i.g, i64 %i.h ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.h
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93   ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.h
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93 ; 7 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !94 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 8 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !75  ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !32 ; 14 uses
  %.not.i = icmp eq i64 %i.bc, 0                  ; 4 uses
  br i1 %.not.i, label %.split179.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !59
  %i.bh = add nsw i32 %i.bg, -1
  br label %.split179.i

.split179.i:                                      ; preds = %.split.i, %bb.a
  %i.bi = phi i32 [ %i.bh, %.split.i ], [ 1, %bb.a ] ; 6 uses
  %i.bj = shl nuw i32 1, %i.be
  %i.bk = sext i32 %i.ax to i64                   ; 5 uses
  %i.bl = add i64 %i.bc, %i.bk                    ; 3 uses
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %i.bn = udiv i64 %i.bl, %i.bm
  %i.bo = udiv i64 %i.bc, %i.bm
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = trunc i64 %i.bp to i32                  ; 8 uses
  %.not6570.i = icmp sgt i32 %i.be, 0             ; 2 uses
  br i1 %.not6570.i, label %.lr.ph.preheader.i251, label %.critedge68.i

.lr.ph.preheader.i251:                            ; preds = %.split179.i
  %wide.trip.count.i252 = zext nneg i32 %i.be to i64
  br label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %.critedge.i257, %.lr.ph.preheader.i251
  %indvars.iv.i254 = phi i64 [ 0, %.lr.ph.preheader.i251 ], [ %indvars.iv.next.i255, %.critedge.i257 ] ; 4 uses
  %indvars.iv.next.i255 = add nuw nsw i64 %indvars.iv.i254, 1 ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.i254 to i32
  %i.bs = shl nuw i32 2, %i.br
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = udiv i64 %i.bl, %i.bt
  %i.bv = udiv i64 %i.bc, %i.bt
  %i.bw = sub nsw i64 %i.bu, %i.bv                ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i254 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !71 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i254 ; 3 uses
  br i1 %i.ca, label %bb.b, label %.lr.ph..critedge_crit_edge.i

.lr.ph..critedge_crit_edge.i:                     ; preds = %.lr.ph.i253
  %.pre.i256 = load ptr, ptr %i.cb, align 8, !tbaa !95
  br label %.critedge.i257

bb.b:                                             ; preds = %.lr.ph.i253
  tail call void @av_freep(ptr noundef %i.cb) #11
  store i32 0, ptr %i.by, align 4, !tbaa !71
  %i.cc = add nsw i32 %i.bx, 1                    ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call noalias ptr @av_calloc(i64 noundef %i.cd, i64 noundef 8) #11 ; 3 uses
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !95
  %.not.i259 = icmp eq ptr %i.ce, null
  br i1 %.not.i259, label %inverse.exit, label %.critedge.i257

.critedge.i257:                                   ; preds = %bb.b, %.lr.ph..critedge_crit_edge.i
  %i.cf = phi i32 [ %i.bz, %.lr.ph..critedge_crit_edge.i ], [ %i.cc, %bb.b ]
  %i.cg = phi ptr [ %.pre.i256, %.lr.ph..critedge_crit_edge.i ], [ %i.ce, %bb.b ]
  %sext69.i = shl i64 %i.bw, 32
  %i.ch = ashr exact i64 %sext69.i, 29
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  %i.cj = sub nsw i32 %i.cf, %i.bx
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.cl, i1 false)
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !71
  %exitcond.not.i258 = icmp eq i64 %indvars.iv.next.i255, %wide.trip.count.i252
  br i1 %exitcond.not.i258, label %.critedge68.i, label %.lr.ph.i253, !llvm.loop !96

.critedge68.i:                                    ; preds = %.critedge.i257, %.split179.i
  %i.cm = sext i32 %i.be to i64                   ; 3 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.cm ; 4 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !71 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.bq
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.cm ; 4 uses
  br i1 %i.cp, label %bb.c, label %.critedge68._crit_edge.i

.critedge68._crit_edge.i:                         ; preds = %.critedge68.i
  %.pre74.i = load ptr, ptr %i.cq, align 8, !tbaa !95
  br label %bb.d

bb.c:                                             ; preds = %.critedge68.i
  tail call void @av_freep(ptr noundef %i.cq) #11
  store i32 0, ptr %i.cn, align 4, !tbaa !71
  %i.cr = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = tail call noalias ptr @av_calloc(i64 noundef %i.cs, i64 noundef 8) #11 ; 3 uses
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !95
  %.not66.i = icmp eq ptr %i.ct, null
  br i1 %.not66.i, label %inverse.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge68._crit_edge.i
  %i.cu = phi i32 [ %i.co, %.critedge68._crit_edge.i ], [ %i.cr, %bb.c ]
  %i.cv = phi ptr [ %.pre74.i, %.critedge68._crit_edge.i ], [ %i.ct, %bb.c ]
  %sext.i = shl i64 %i.bp, 32
  %i.cw = ashr exact i64 %sext.i, 29              ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  %i.cy = sub nsw i32 %i.cu, %i.bq
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.da, i1 false)
  store i32 %i.bq, ptr %i.cn, align 4, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !74 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !76 ; 2 uses
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.dg = getelementptr inbounds [128 x i8], ptr %i.df, i64 %i.h ; 2 uses
  br i1 %.not6570.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.dj = zext nneg i32 %i.be to i64              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 7 uses
  %.08092.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dl = shl nuw i32 2, %i.dk
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = udiv i64 %i.bl, %i.dm
  %i.do = udiv i64 %i.bc, %i.dm
  %i.dp = sub nsw i64 %i.dn, %i.do                ; 2 uses
  %i.dq = trunc i64 %i.dp to i32                  ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !71 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.dq
  br i1 %i.dt, label %bb.f, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !95
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !35
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i
  tail call void @av_freep(ptr noundef %i.dv) #11
  store i32 0, ptr %i.dr, align 4, !tbaa !71
  %i.dw = load i32, ptr %i.di, align 4, !tbaa !59
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  %i.dy = trunc i64 %indvars.iv.next.i.i to i32
  %i.dz = sub i32 %i.be, %i.dy
  %mulshl.i.i.i = shl i32 %i.dx, %i.dz
  %i.ea = sub i32 %mulshl.i.i.i, %i.dx            ; 3 uses
  %i.eb = add i32 %i.dq, 1
  %i.ec = add i32 %i.eb, %i.ea                    ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = tail call noalias ptr @av_calloc(i64 noundef %i.ed, i64 noundef 8) #11 ; 3 uses
  %i.ef = load ptr, ptr %i.dh, align 8, !tbaa !35
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %inverse.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.i
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ek = phi i32 [ %i.ec, %bb.g ], [ %i.ds, %._crit_edge.i.i ]
  %i.el = phi ptr [ %i.ei, %bb.g ], [ %.pre.i.i, %._crit_edge.i.i ]
  %.1.i.i = phi i32 [ %i.ea, %bb.g ], [ %.08092.i.i, %._crit_edge.i.i ] ; 2 uses
  %sext89.i.i = shl i64 %i.dp, 32
  %i.em = ashr exact i64 %sext89.i.i, 29
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = add i32 %.1.i.i, %i.dq
  %i.ep = sub i32 %i.ek, %i.eo                    ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = select i1 %i.eq, i64 %i.es, i64 0
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.en, i8 0, i64 %i.et, i1 false)
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !71
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.dj
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.e, !llvm.loop !97

.critedge.i.i:                                    ; preds = %bb.h, %bb.d
  %.pre-phi101.i.i = phi i64 [ %i.cm, %bb.d ], [ %i.dj, %bb.h ] ; 5 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.de, i64 %.pre-phi101.i.i ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !71 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.bq
  br i1 %i.ew, label %bb.i, label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge.i.i
  %.phi.trans.insert95.i.i = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.pre-phi101.i.i
  %.pre96.i.i = load ptr, ptr %.phi.trans.insert95.i.i, align 8, !tbaa !95
  br label %bb.k

bb.i:                                             ; preds = %.critedge.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !35
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.pre-phi101.i.i
  tail call void @av_freep(ptr noundef %i.ez) #11
  store i32 0, ptr %i.eu, align 4, !tbaa !71
  %i.fa = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = tail call noalias ptr @av_calloc(i64 noundef %i.fb, i64 noundef 8) #11 ; 4 uses
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !35
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.pre-phi101.i.i
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !95
  %.not88.i.i = icmp eq ptr %i.fc, null
  br i1 %.not88.i.i, label %inverse.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.pre-phi101.i.i
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !95
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge._crit_edge.i.i
  %i.fg = phi i32 [ %i.ev, %.critedge._crit_edge.i.i ], [ %i.fa, %bb.j ]
  %i.fh = phi ptr [ %.pre96.i.i, %.critedge._crit_edge.i.i ], [ %i.fc, %bb.j ]
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.cw
  %i.fj = sub nsw i32 %i.fg, %i.bq
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fl, i1 false)
  store i32 %i.bq, ptr %i.eu, align 4, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 17 uses
  br i1 %.not.i, label %left_ext.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !59
  %notmask.i.i = shl nsw i32 -1, %i.be
  %i.fo = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.fp = add nsw i32 %i.fn, -2
  %i.fq = mul i32 %i.fp, %i.fo
  %i.fr = trunc i64 %i.bc to i32
  %i.fs = and i32 %i.fo, %i.fr
  %i.ft = add i32 %i.fq, %i.fs
  br label %left_ext.exit.i

left_ext.exit.i:                                  ; preds = %bb.l, %bb.k
  %.0.i.i = phi i32 [ %i.ft, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 52 ; 4 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !98 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !99
  %i.fy = add i32 %i.bi, %i.ax                    ; 2 uses
  %i.fz = add i32 %i.fx, %i.fy
  %i.ga = icmp slt i32 %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 7 uses
  br i1 %i.ga, label %bb.m, label %left_ext.exit._crit_edge.i

left_ext.exit._crit_edge.i:                       ; preds = %left_ext.exit.i
  %.pre.i = load ptr, ptr %i.gb, align 8, !tbaa !100
  br label %bb.o

bb.m:                                             ; preds = %left_ext.exit.i
  tail call void @av_freep(ptr noundef nonnull %i.gb) #11
  %i.gc = load i32, ptr %i.fw, align 8, !tbaa !99
  %i.gd = add i32 %i.gc, %i.fy                    ; 2 uses
  store i32 %i.gd, ptr %i.fu, align 4, !tbaa !98
  %i.ge = sext i32 %i.gd to i64
  %i.gf = tail call noalias ptr @av_calloc(i64 noundef %i.ge, i64 noundef 8) #11 ; 3 uses
  store ptr %i.gf, ptr %i.gb, align 8, !tbaa !100
  %.not187.i = icmp eq ptr %i.gf, null
  br i1 %.not187.i, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre226.i = load i32, ptr %i.fu, align 4, !tbaa !98
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.fu, align 4, !tbaa !98
  br label %inverse.exit

bb.o:                                             ; preds = %._crit_edge.i, %left_ext.exit._crit_edge.i
  %i.gg = phi i32 [ %i.fv, %left_ext.exit._crit_edge.i ], [ %.pre226.i, %._crit_edge.i ]
  %i.gh = phi ptr [ %.pre.i, %left_ext.exit._crit_edge.i ], [ %i.gf, %._crit_edge.i ]
  %i.gi = sext i32 %i.gg to i64
  %i.gj = shl nsw i64 %i.gi, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gh, i8 0, i64 %i.gj, i1 false)
  %i.gk = add nsw i32 %.0.i.i, %i.ax
  %i.gl = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 %i.gk, ptr %i.gl, align 8, !tbaa !101
  %.not188.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not188.i, label %._crit_edge231.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gm = load ptr, ptr %i.gb, align 8, !tbaa !100
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !82
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !81
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gr
  %i.gt = sext i32 %.0.i.i to i64                 ; 3 uses
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = shl nsw i64 %i.gt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gm, ptr nonnull align 8 %i.gv, i64 %i.gw, i1 false)
  br label %._crit_edge231.i

._crit_edge231.i:                                 ; preds = %bb.p, %bb.o
  %.pre-phi.i = phi i64 [ %i.gt, %bb.p ], [ 0, %bb.o ]
  %i.gx = load ptr, ptr %i.gb, align 8, !tbaa !100
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %.pre-phi.i
  %i.gz = shl nsw i64 %i.bk, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gy, ptr readonly align 8 %i.m, i64 %i.gz, i1 false)
  %i.ha = icmp eq i32 %i.be, 1
  br i1 %i.ha, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge231.i
  %i.hb = load ptr, ptr %i.gb, align 8, !tbaa !100
  %i.hc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !95
  %i.he = load ptr, ptr %i.az, align 8, !tbaa !95
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !71
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !61
  %i.hl = load i32, ptr %i.fm, align 4, !tbaa !59
  %i.hm = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !79
  %i.ho = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !78
  tail call fastcc void @conv_down(ptr noundef %i.hb, ptr noundef %i.hd, ptr noundef %i.he, i32 noundef %i.hg, ptr noundef %i.hi, ptr noundef %i.hk, i32 noundef %i.hl, i32 noundef %i.bi, ptr noundef %i.hn, i32 noundef %i.hp)
  br label %bb.x

bb.r:                                             ; preds = %._crit_edge231.i
  %i.hq = load i32, ptr %i.fm, align 4, !tbaa !59 ; 3 uses
  br i1 %.not.i, label %discard_left_ext.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hr = add nsw i32 %i.be, -1
  %i.hs = add nsw i32 %i.hq, -2
  %mulshl.i.i = shl i32 %i.hs, %i.hr
  %notmask.i193.i = shl nsw i32 -1, %i.be
  %i.ht = xor i32 %notmask.i193.i, -1
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = and i64 %i.bc, %i.hu
  %i.hw = lshr i64 %i.hv, 1
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %reass.sub.i.i = add nuw nsw i32 %i.hx, 2
  %i.hy = sub i32 %reass.sub.i.i, %i.hq
  %i.hz = add i32 %i.hy, %mulshl.i.i
  br label %discard_left_ext.exit.i

discard_left_ext.exit.i:                          ; preds = %bb.s, %bb.r
  %.0.i194.i = phi i32 [ %i.hz, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 6 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !102 ; 2 uses
  %i.ic = load i32, ptr %i.fw, align 8, !tbaa !99
  %i.id = add i32 %i.ax, -1                       ; 2 uses
  %i.ie = add i32 %i.hq, %i.id
  %i.if = add i32 %i.ie, %i.ic
  %i.ig = sdiv i32 %i.if, 2
  %i.ih = icmp slt i32 %i.ib, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 8 uses
  br i1 %i.ih, label %bb.t, label %discard_left_ext.exit._crit_edge.i

discard_left_ext.exit._crit_edge.i:               ; preds = %discard_left_ext.exit.i
  %.pre228.i = load ptr, ptr %i.ii, align 8, !tbaa !103
  br label %bb.v

bb.t:                                             ; preds = %discard_left_ext.exit.i
  tail call void @av_freep(ptr noundef nonnull %i.ii) #11
  %i.ij = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.ij) #11
  %i.ik = load i32, ptr %i.fw, align 8, !tbaa !99
  %i.il = load i32, ptr %i.fm, align 4, !tbaa !59
  %i.im = add i32 %i.ik, %i.id
  %i.in = add i32 %i.im, %i.il
  %i.io = sdiv i32 %i.in, 2                       ; 2 uses
  store i32 %i.io, ptr %i.ia, align 4, !tbaa !102
  %i.ip = sext i32 %i.io to i64
  %i.iq = tail call noalias ptr @av_calloc(i64 noundef %i.ip, i64 noundef 8) #11
  store ptr %i.iq, ptr %i.ii, align 8, !tbaa !103
  %i.ir = load i32, ptr %i.ia, align 4, !tbaa !102
  %i.is = sext i32 %i.ir to i64
  %i.it = tail call noalias ptr @av_calloc(i64 noundef %i.is, i64 noundef 8) #11 ; 2 uses
  store ptr %i.it, ptr %i.ij, align 8, !tbaa !104
  %i.iu = load ptr, ptr %i.ii, align 8, !tbaa !103 ; 2 uses
  %.not189.i = icmp eq ptr %i.iu, null
  %.not190.i = icmp eq ptr %i.it, null
  %or.cond.i = select i1 %.not189.i, i1 true, i1 %.not190.i
  br i1 %or.cond.i, label %bb.u, label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %bb.t
  %.pre230.i = load i32, ptr %i.ia, align 4, !tbaa !102
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ia, align 4, !tbaa !102
  br label %inverse.exit

bb.v:                                             ; preds = %._crit_edge229.i, %discard_left_ext.exit._crit_edge.i
  %i.iv = phi i32 [ %i.ib, %discard_left_ext.exit._crit_edge.i ], [ %.pre230.i, %._crit_edge229.i ]
  %i.iw = phi ptr [ %.pre228.i, %discard_left_ext.exit._crit_edge.i ], [ %i.iu, %._crit_edge229.i ]
  %i.ix = sext i32 %i.iv to i64
  %i.iy = shl nsw i64 %i.ix, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.iw, i8 0, i64 %i.iy, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 7 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !104
  %i.jb = load i32, ptr %i.ia, align 4, !tbaa !102
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ja, i8 0, i64 %i.jd, i1 false)
  %i.je = load i32, ptr %i.ba, align 4, !tbaa !71
  %i.jf = add nsw i32 %i.je, %.0.i194.i           ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store i32 %i.jf, ptr %i.jg, align 8, !tbaa !105
  %i.jh = load ptr, ptr %i.gb, align 8, !tbaa !100
end_hunk_0
