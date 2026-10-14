Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 107
begin_hunk_0_@substrFunc:bb.a
  %i.an = and i16 %i.am, -19
  %i.ao = or disjoint i16 %i.an, 16
  store i16 %i.ao, ptr %i.q, align 4, !tbaa !197
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !194
  br label %sqlite3_value_blob.exit

bb.h:                                             ; preds = %sqlite3_value_bytes.exit
  %i.ar = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.p, i8 noundef zeroext 1)
  br label %sqlite3_value_blob.exit

sqlite3_value_blob.exit:                          ; preds = %sqlite3VdbeMemExpandBlob.exit.i, %bb.h
  %.0.i = phi ptr [ %i.aq, %sqlite3VdbeMemExpandBlob.exit.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.as = icmp eq ptr %.0.i, null
  br i1 %i.as, label %sqlite3_result_text.exit, label %.loopexit96

bb.i:                                             ; preds = %bb.a
  %i.at = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.a, i8 noundef zeroext 1) ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %sqlite3_result_text.exit, label %.preheader95

.preheader95:                                     ; preds = %bb.i
  %i.av = load i8, ptr %i.at, align 1, !tbaa !139 ; 2 uses
  %.not97 = icmp eq i8 %i.av, 0
  br i1 %.not97, label %.loopexit96, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader95, %.loopexit94
  %i.aw = phi i8 [ %i.bc, %.loopexit94 ], [ %i.av, %.preheader95 ]
  %.05399 = phi i32 [ %i.bd, %.loopexit94 ], [ 0, %.preheader95 ]
  %.05598 = phi ptr [ %.257, %.loopexit94 ], [ %i.at, %.preheader95 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.05598, i64 1 ; 3 uses
  %i.ay = icmp ugt i8 %i.aw, -65
  br i1 %i.ay, label %.preheader93, label %.lr.ph..loopexit94_crit_edge

.lr.ph..loopexit94_crit_edge:                     ; preds = %.lr.ph
  %.pre = load i8, ptr %i.ax, align 1, !tbaa !139
  br label %.loopexit94

.preheader93:                                     ; preds = %.lr.ph, %.preheader93
  %.156 = phi ptr [ %i.bb, %.preheader93 ], [ %i.ax, %.lr.ph ] ; 3 uses
  %i.az = load i8, ptr %.156, align 1, !tbaa !139 ; 2 uses
  %i.ba = icmp slt i8 %i.az, -64
  %i.bb = getelementptr inbounds nuw i8, ptr %.156, i64 1
  br i1 %i.ba, label %.preheader93, label %.loopexit94, !llvm.loop !1947

.loopexit94:                                      ; preds = %.preheader93, %.lr.ph..loopexit94_crit_edge
  %i.bc = phi i8 [ %.pre, %.lr.ph..loopexit94_crit_edge ], [ %i.az, %.preheader93 ] ; 2 uses
  %.257 = phi ptr [ %i.ax, %.lr.ph..loopexit94_crit_edge ], [ %.156, %.preheader93 ]
  %i.bd = add nuw nsw i32 %.05399, 1              ; 2 uses
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %.loopexit96, label %.lr.ph, !llvm.loop !1948

.loopexit96:                                      ; preds = %.loopexit94, %.preheader95, %sqlite3_value_blob.exit
  %.059 = phi ptr [ %.0.i, %sqlite3_value_blob.exit ], [ %i.at, %.preheader95 ], [ %i.at, %.loopexit94 ] ; 4 uses
  %.154 = phi i32 [ %.0.i.i, %sqlite3_value_blob.exit ], [ 0, %.preheader95 ], [ %i.bd, %.loopexit94 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !266
  %i.bg = tail call fastcc i64 @sqlite3VdbeIntValue(ptr noundef %i.bf) ; 2 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %sext = shl i64 %i.bg, 32
  %i.bi = ashr exact i64 %sext, 32                ; 2 uses
  %i.bj = icmp eq i32 %1, 3
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit96
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !266
  %i.bm = tail call fastcc i64 @sqlite3VdbeIntValue(ptr noundef %i.bl)
  %i.bn = shl i64 %i.bm, 32
  %i.bo = ashr exact i64 %i.bn, 32
  br label %bb.k

bb.k:                                             ; preds = %.loopexit96, %bb.j
  %.0 = phi i64 [ %i.bo, %bb.j ], [ 1000000000, %.loopexit96 ] ; 2 uses
  %i.bp = icmp slt i32 %i.bh, 0
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = sext i32 %.154 to i64                   ; 2 uses
  %i.br = add nsw i64 %i.bi, %i.bq                ; 2 uses
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0)
  %i.bs = tail call i64 @llvm.smin.i64(i64 %i.br, i64 0)
  %spec.select75 = add nsw i64 %.0, %i.bs
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.not73 = icmp eq i32 %i.bh, 0
  %i.bt = add nsw i64 %i.bi, -1
  %spec.select76 = select i1 %.not73, i64 0, i64 %i.bt
  %.pre113 = sext i32 %.154 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi = phi i64 [ %.pre113, %bb.m ], [ %i.bq, %bb.l ] ; 2 uses
  %.051 = phi i64 [ %spec.select76, %bb.m ], [ %spec.select, %bb.l ] ; 5 uses
  %.1 = phi i64 [ %.0, %bb.m ], [ %spec.select75, %bb.l ] ; 2 uses
  %i.bu = add nsw i64 %.1, %.051
  %i.bv = icmp sgt i64 %i.bu, %.pre-phi
  %i.bw = sub nsw i64 %.pre-phi, %.051
  %spec.select77 = select i1 %i.bv, i64 %i.bw, i64 %.1 ; 3 uses
  br i1 %i.d, label %bb.q, label %.preheader92

.preheader92:                                     ; preds = %bb.n
  %i.bx = load i8, ptr %.059, align 1, !tbaa !139 ; 3 uses
  %i.by = icmp ne i8 %i.bx, 0
  %i.bz = icmp ne i64 %.051, 0
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph102, label %.preheader89

.preheader89:                                     ; preds = %.loopexit91, %.preheader92
  %.160.lcssa = phi ptr [ %.059, %.preheader92 ], [ %.362, %.loopexit91 ] ; 5 uses
  %.lcssa = phi i8 [ %i.bx, %.preheader92 ], [ %i.ck, %.loopexit91 ] ; 2 uses
  %i.cb = icmp ne i8 %.lcssa, 0
  %i.cc = icmp ne i64 %spec.select77, 0
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph107, label %._crit_edge

.lr.ph102:                                        ; preds = %.preheader92, %.loopexit91
  %i.ce = phi i8 [ %i.ck, %.loopexit91 ], [ %i.bx, %.preheader92 ]
  %.152101 = phi i64 [ %i.cl, %.loopexit91 ], [ %.051, %.preheader92 ]
  %.160100 = phi ptr [ %.362, %.loopexit91 ], [ %.059, %.preheader92 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.160100, i64 1 ; 3 uses
  %i.cg = icmp ugt i8 %i.ce, -65
  br i1 %i.cg, label %.preheader90, label %.lr.ph102..loopexit91_crit_edge

.lr.ph102..loopexit91_crit_edge:                  ; preds = %.lr.ph102
  %.pre111 = load i8, ptr %i.cf, align 1, !tbaa !139
  br label %.loopexit91

.preheader90:                                     ; preds = %.lr.ph102, %.preheader90
  %.261 = phi ptr [ %i.cj, %.preheader90 ], [ %i.cf, %.lr.ph102 ] ; 3 uses
  %i.ch = load i8, ptr %.261, align 1, !tbaa !139 ; 2 uses
  %i.ci = icmp slt i8 %i.ch, -64
  %i.cj = getelementptr inbounds nuw i8, ptr %.261, i64 1
  br i1 %i.ci, label %.preheader90, label %.loopexit91, !llvm.loop !1949

.loopexit91:                                      ; preds = %.preheader90, %.lr.ph102..loopexit91_crit_edge
  %i.ck = phi i8 [ %.pre111, %.lr.ph102..loopexit91_crit_edge ], [ %i.ch, %.preheader90 ] ; 3 uses
  %.362 = phi ptr [ %i.cf, %.lr.ph102..loopexit91_crit_edge ], [ %.261, %.preheader90 ] ; 2 uses
  %i.cl = add nsw i64 %.152101, -1                ; 2 uses
  %i.cm = icmp ne i8 %i.ck, 0
  %i.cn = icmp ne i64 %i.cl, 0
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph102, label %.preheader89, !llvm.loop !1950

.lr.ph107:                                        ; preds = %.preheader89, %.loopexit
  %.3106 = phi i64 [ %i.cv, %.loopexit ], [ %spec.select77, %.preheader89 ]
  %.358105 = phi ptr [ %.5, %.loopexit ], [ %.160.lcssa, %.preheader89 ]
  %i.cp = phi i8 [ %.pr, %.loopexit ], [ %.lcssa, %.preheader89 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.358105, i64 1 ; 3 uses
  %i.cr = icmp ugt i8 %i.cp, -65
  br i1 %i.cr, label %.preheader, label %.lr.ph107..loopexit_crit_edge

.lr.ph107..loopexit_crit_edge:                    ; preds = %.lr.ph107
  %.pr.pre = load i8, ptr %i.cq, align 1, !tbaa !139
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph107, %.preheader
  %.4 = phi ptr [ %i.cu, %.preheader ], [ %i.cq, %.lr.ph107 ] ; 3 uses
  %i.cs = load i8, ptr %.4, align 1, !tbaa !139   ; 2 uses
  %i.ct = icmp slt i8 %i.cs, -64
  %i.cu = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br i1 %i.ct, label %.preheader, label %.loopexit, !llvm.loop !1951

.loopexit:                                        ; preds = %.preheader, %.lr.ph107..loopexit_crit_edge
  %.pr = phi i8 [ %.pr.pre, %.lr.ph107..loopexit_crit_edge ], [ %i.cs, %.preheader ] ; 2 uses
  %.5 = phi ptr [ %i.cq, %.lr.ph107..loopexit_crit_edge ], [ %.4, %.preheader ] ; 2 uses
  %i.cv = add nsw i64 %.3106, -1                  ; 2 uses
  %i.cw = icmp ne i8 %.pr, 0
  %i.cx = icmp ne i64 %i.cv, 0
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph107, label %._crit_edge, !llvm.loop !1952

._crit_edge:                                      ; preds = %.loopexit, %.preheader89
  %.358.lcssa = phi ptr [ %.160.lcssa, %.preheader89 ], [ %.5, %.loopexit ]
  %i.cz = ptrtoint ptr %.358.lcssa to i64
  %i.da = ptrtoint ptr %.160.lcssa to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32                  ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = icmp slt i32 %i.dc, 0
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.160.lcssa)
  %.249.i.i = trunc i64 %strlen.i.i to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %.3.i.i = phi i32 [ %.249.i.i, %bb.o ], [ %i.dc, %._crit_edge ] ; 2 uses
  %.046.i.i = phi i16 [ 98, %bb.o ], [ 66, %._crit_edge ]
  %.lobit.i = lshr i32 %i.dc, 31
  %.0.i.i80 = add nsw i32 %.3.i.i, %.lobit.i      ; 2 uses
  %i.df = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.dd, i32 noundef %.0.i.i80, i32 noundef 0)
  %.not58.i.i = icmp eq i32 %i.df, 0
  br i1 %.not58.i.i, label %sqlite3_result_text.exit.sink.split, label %sqlite3_result_text.exit

bb.q:                                             ; preds = %bb.n
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %spec.select77, i64 0)
  %i.dg = getelementptr inbounds nuw i8, ptr %.059, i64 %.051 ; 2 uses
  %i.dh = trunc i64 %spec.store.select to i32     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = icmp sgt i32 %i.dh, -1
  br i1 %i.dj, label %bb.r, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.q, %.preheader63.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader63.i.i ], [ 0, %bb.q ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i.i ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !139
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !139
  %i.do = or i8 %i.dn, %i.dl
  %.not55.i.i = icmp eq i8 %i.do, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2
  br i1 %.not55.i.i, label %.loopexit.i.i, label %.preheader63.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.preheader63.i.i
  %.249.i.i82 = trunc i64 %indvars.iv.i.i to i32
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i, %bb.q
  %i.dp = phi i32 [ 2, %.loopexit.i.i ], [ 0, %bb.q ]
  %.3.i.i83 = phi i32 [ %.249.i.i82, %.loopexit.i.i ], [ %i.dh, %bb.q ] ; 2 uses
  %.046.i.i84 = phi i16 [ 112, %.loopexit.i.i ], [ 80, %bb.q ]
  %.0.i.i85 = add nsw i32 %.3.i.i83, %i.dp        ; 2 uses
  %i.dq = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.di, i32 noundef %.0.i.i85, i32 noundef 0)
  %.not58.i.i86 = icmp eq i32 %i.dq, 0
  br i1 %.not58.i.i86, label %sqlite3_result_text.exit.sink.split, label %sqlite3_result_text.exit

sqlite3_result_text.exit.sink.split:              ; preds = %bb.r, %bb.p
  %.0.i.i85.sink = phi i32 [ %.0.i.i80, %bb.p ], [ %.0.i.i85, %bb.r ]
  %.sink137 = phi ptr [ %.160.lcssa, %bb.p ], [ %i.dg, %bb.r ]
  %.3.i.i83.sink = phi i32 [ %.3.i.i, %bb.p ], [ %.3.i.i83, %bb.r ]
  %.046.i.i84.sink = phi i16 [ %.046.i.i, %bb.p ], [ %.046.i.i84, %bb.r ]
  %.sink = phi i8 [ 3, %bb.p ], [ 4, %bb.r ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !194
  %i.dt = sext i32 %.0.i.i85.sink to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %.sink137, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.3.i.i83.sink, ptr %i.du, align 8, !tbaa !196
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %.046.i.i84.sink, ptr %i.dv, align 4, !tbaa !197
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.dw, align 1, !tbaa !198
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sink, ptr %i.dx, align 2, !tbaa !199
  br label %sqlite3_result_text.exit

sqlite3_result_text.exit:                         ; preds = %sqlite3_result_text.exit.sink.split, %bb.r, %bb.p, %bb.i, %sqlite3_value_blob.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @absFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !266    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.c = load i8, ptr %i.b, align 2, !tbaa !199
  switch i8 %i.c, label %bb.i [
    i8 1, label %bb.b
    i8 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @sqlite3VdbeIntValue(ptr noundef nonnull %i.a) ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.mask = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %.mask, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.g, align 8, !tbaa !238
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.h, i32 noundef 17, i32 noundef 0)
  %.not58.i.i = icmp eq i32 %i.i, 0
  br i1 %.not58.i.i, label %bb.e, label %sqlite3_result_error.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.k, ptr noundef nonnull align 1 dereferenceable(17) @.str.608, i64 17, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 16, ptr %i.l, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 98, ptr %i.m, align 4, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.n, align 1, !tbaa !198
  br label %sqlite3_result_error.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.o = sub nsw i64 0, %i.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.013 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.p)
  store i64 %.013, ptr %i.p, align 8, !tbaa !139
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 4, ptr %i.q, align 4, !tbaa !197
  br label %sqlite3_result_error.exit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !197
  %i.t = and i16 %i.s, -32
  %i.u = or disjoint i16 %i.t, 1
  store i16 %i.u, ptr %i.r, align 4, !tbaa !197
  br label %sqlite3_result_error.exit.sink.split

bb.i:                                             ; preds = %bb.a
  %i.v = tail call fastcc double @sqlite3VdbeRealValue(ptr noundef nonnull %i.a) ; 3 uses
  %i.w = fcmp olt double %i.v, 0.000000e+00
  %i.x = fneg double %i.v
  %.0 = select i1 %i.w, double %i.x, double %i.v  ; 2 uses
  %i.y = fcmp uno double %.0, 0.000000e+00
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !197
  %i.ab = and i16 %i.aa, -32
  %i.ac = or disjoint i16 %i.ab, 1
  store i16 %i.ac, ptr %i.z, align 4, !tbaa !197
  br label %sqlite3_result_error.exit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.0, ptr %i.ae, align 8, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 8, ptr %i.af, align 4, !tbaa !197
  br label %sqlite3_result_error.exit.sink.split

sqlite3_result_error.exit.sink.split:             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.e
  %.sink = phi i8 [ 3, %bb.e ], [ 1, %bb.g ], [ 5, %bb.h ], [ 5, %bb.j ], [ 2, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sink, ptr %i.ag, align 2, !tbaa !199
  br label %sqlite3_result_error.exit

sqlite3_result_error.exit:                        ; preds = %sqlite3_result_error.exit.sink.split, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @roundFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca [500 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.c = icmp eq i32 %1, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !266  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  %i.g = load i8, ptr %i.f, align 2, !tbaa !199
  %i.h = icmp eq i8 %i.g, 5
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i64 @sqlite3VdbeIntValue(ptr noundef nonnull %i.e)
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 30)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.m = load ptr, ptr %2, align 8, !tbaa !266    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 38
  %i.o = load i8, ptr %i.n, align 2, !tbaa !199
  %i.p = icmp eq i8 %i.o, 5
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc double @sqlite3VdbeRealValue(ptr noundef nonnull %i.m) ; 2 uses
  store double %i.q, ptr %i.a, align 8, !tbaa !143
  %i.r = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 500, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.609, i32 noundef %.0, double noundef %i.q) ; 0 uses
  %i.s = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.b, ptr noundef %i.a) ; 0 uses
  %i.t = load double, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.u = fcmp uno double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !197
  %i.x = and i16 %i.w, -32
  %i.y = or disjoint i16 %i.x, 1
  store i16 %i.y, ptr %i.v, align 4, !tbaa !197
  br label %sqlite3_result_double.exit

bb.g:                                             ; preds = %bb.e
end_hunk_0
