inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 129
begin_hunk_0_@Gia_ManRelTfos:bb.a
  %sext = shl i64 %i.ba, 32
  %i.bb = ashr exact i64 %sext, 30
  %i.bc = getelementptr inbounds i8, ptr %.val56, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32 ; 2 uses
  store i32 %i.bd, ptr %i.ax, align 4, !tbaa !32
  %.val.i.1 = load i64, ptr %i.at, align 4
  %i.be = lshr i64 %.val.i.1, 32
  %.pn.i.1 = and i64 %i.be, 536870911
  %i.bf = sub nsw i64 %indvars.iv80, %.pn.i.1
  %sext94 = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext94, 30
  %i.bh = getelementptr inbounds i8, ptr %.val56, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = or i32 %i.bd, %i.bi                     ; 2 uses
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.f, %.preheader.preheader
  %.pre-phi = trunc i64 %indvars.iv80 to i32      ; 2 uses
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.c, i32 noundef %.val49, i32 noundef %.pre-phi)
  %.val70 = load i32, ptr %i.a, align 4, !tbaa !30 ; 3 uses
  %i.bl = icmp sgt i32 %.val70, 0
  br i1 %i.bl, label %.lr.ph72, label %.critedge

.lr.ph72:                                         ; preds = %.thread, %bb.w
  %.val86 = phi i32 [ %.val, %bb.w ], [ %.val70, %.thread ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.w ], [ 0, %.thread ] ; 5 uses
  %i.bm = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.bn = trunc nuw nsw i64 %indvars.iv77 to i32
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bm, %i.bo
  %.not48 = icmp eq i32 %i.bp, 0
  br i1 %.not48, label %bb.w, label %bb.g

bb.g:                                             ; preds = %.lr.ph72
  %i.bq = load i32, ptr %i.g, align 4, !tbaa !143 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %.not.i62 = icmp slt i64 %indvars.iv77, %i.br
  br i1 %.not.i62, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = shl nsw i32 %i.bq, 1
  %i.bt = trunc nsw i64 %indvars.iv77 to i32
  %i.bu = add nsw i32 %i.bt, 1                    ; 2 uses
  %i.bv = tail call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bu) ; 4 uses
  %i.bw = load i32, ptr %i.c, align 8, !tbaa !140 ; 3 uses
  %.not.i.i63 = icmp slt i32 %i.bw, %i.bv
  br i1 %.not.i.i63, label %bb.i, label %Vec_WecGrow.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !142 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.bx, null
  %i.by = zext nneg i32 %i.bv to i64
  %i.bz = shl nuw nsw i64 %i.by, 4                ; 2 uses
  br i1 %.not13.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = tail call ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef %i.bz) #37
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cb = tail call noalias ptr @malloc(i64 noundef %i.bz) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  store ptr %i.cc, ptr %i.h, align 8, !tbaa !142
  %i.cd = sext i32 %i.bw to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = sub nsw i32 %i.bv, %i.bw
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %i.ch, i1 false)
  store i32 %i.bv, ptr %i.c, align 8, !tbaa !140
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.l, %bb.h
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !143
  br label %bb.m

bb.m:                                             ; preds = %Vec_WecGrow.exit.i, %bb.g
  %.val.i64 = load ptr, ptr %i.h, align 8, !tbaa !142
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.val.i64, i64 %indvars.iv77 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !30 ; 7 uses
  %i.cl = load i32, ptr %i.ci, align 8, !tbaa !128
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.n, label %Vec_WecPush.exit

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp slt i32 %i.ck, 16
  br i1 %i.cn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cp, i64 noundef 64) #37
  br label %Vec_IntGrow.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.q, %bb.p
  %i.cs = phi ptr [ %i.cq, %bb.p ], [ %i.cr, %bb.q ]
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.n
  %i.ct = icmp samesign ult i32 %i.ck, 1073741823
  %i.cu = shl nuw nsw i32 %i.ck, 1
  %spec.select.i.i = select i1 %i.ct, i32 %i.cu, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ck, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.s, label %Vec_WecPush.exit

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.cw, null
  %i.cx = zext nneg i32 %spec.select.i.i to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = tail call ptr @realloc(ptr noundef nonnull %i.cw, i64 noundef %i.cy) #37
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.da = tail call noalias ptr @malloc(i64 noundef %i.cy) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = phi ptr [ %i.cz, %bb.t ], [ %i.da, %bb.u ]
  store ptr %i.db, ptr %i.cv, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ci, align 8, !tbaa !128
  %.pre.i = load i32, ptr %i.cj, align 4, !tbaa !30
  br label %Vec_WecPush.exit

Vec_WecPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i.i
  %i.dc = phi i32 [ %i.ck, %bb.m ], [ %i.ck, %bb.r ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31
  %i.df = add nsw i32 %i.dc, 1
  store i32 %i.df, ptr %i.cj, align 4, !tbaa !30
  %i.dg = sext i32 %i.dc to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  store i32 %.pre-phi, ptr %i.dh, align 4, !tbaa !32
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !30
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph72, %Vec_WecPush.exit
  %.val = phi i32 [ %.val86, %.lr.ph72 ], [ %.val.pre, %Vec_WecPush.exit ] ; 3 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.di = sext i32 %.val to i64
  %i.dj = icmp slt i64 %indvars.iv.next78, %i.di
  br i1 %i.dj, label %.lr.ph72, label %.critedge, !llvm.loop !565

.critedge:                                        ; preds = %bb.w, %.thread, %bb.e, %.preheader.preheader
  %.val4985 = phi i32 [ %.val49, %.preheader.preheader ], [ %.val70, %.thread ], [ %.val49, %bb.e ], [ %.val, %bb.w ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dk = load i32, ptr %i.i, align 8, !tbaa !40
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next81, %i.dl
  br i1 %i.dm, label %.lr.ph75, label %.critedge2, !llvm.loop !566

.critedge2:                                       ; preds = %.lr.ph75, %.critedge, %.critedge.preheader
  %.not.i65 = icmp eq ptr %.val56, null
  br i1 %.not.i65, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %.val56) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.x
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManRelDerive(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val157 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val158 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %.val158, i64 4
  %.val158.val = load i32, ptr %i.e, align 4, !tbaa !30
  %i.f = sdiv i32 %.val157, %.val158.val          ; 23 uses
  %i.g = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val137 = load i32, ptr %i.g, align 4, !tbaa !30 ; 3 uses
  %i.h = shl nuw i32 1, %.val137                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %Vec_WrdDup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #34
  br label %Vec_WrdDup.exit

Vec_WrdDup.exit:                                  ; preds = %bb.a, %bb.b
  %.pre-phi12.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.p, i64 %.pre-phi12.i, i1 false)
  %i.q = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val168 = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr i8, ptr %.val168, i64 4
  %.val168.val = load i32, ptr %i.r, align 4, !tbaa !30
  %i.s = mul nsw i32 %.val168.val, %i.f
  %i.t = shl i32 %i.s, %.val137                   ; 4 uses
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.v = add i32 %i.t, -1
  %or.cond.i.i = icmp ult i32 %i.v, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.t ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.u, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_WrdDup.exit
  %i.w = sext i32 %spec.store.select.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_WrdDup.exit, %bb.c
  %i.z = phi ptr [ %i.y, %bb.c ], [ null, %Vec_WrdDup.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !33
  store i32 %i.t, ptr %i.aa, align 4, !tbaa !39
  %i.ac = sext i32 %i.t to i64
  %i.ad = shl nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ad, i1 false)
  %i.ae = tail call ptr @Gia_ManRelTfos(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 5 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val1821.i = load i32, ptr %i.af, align 4, !tbaa !143 ; 2 uses
  %i.ag = icmp sgt i32 %.val1821.i, 0
  br i1 %i.ag, label %.lr.ph23.i, label %.critedge

.lr.ph23.i:                                       ; preds = %Vec_WrdStart.exit
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val17.i = load ptr, ptr %i.ah, align 8, !tbaa !142
  %i.ai = zext nneg i32 %.val1821.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %.lr.ph23.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next26.i, %.critedge2.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.val17.i, i64 %indvars.iv25.i ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.122, i32 noundef %i.ak) ; 0 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 4      ; 2 uses
  %.val19.i = load i32, ptr %i.am, align 4, !tbaa !30
  %i.an = icmp sgt i32 %.val19.i, 0
  br i1 %i.an, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.aj, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.val16.i = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val16.i, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, i32 noundef %i.aq) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.am, align 4, !tbaa !30
  %i.as = sext i32 %.val.i to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %bb.e, label %.critedge2.i, !llvm.loop !545

.critedge2.i:                                     ; preds = %bb.e, %bb.d
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next26.i, %i.ai
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !546

.critedge:                                        ; preds = %.critedge2.i, %Vec_WrdStart.exit
  %i.au = getelementptr i8, ptr %0, i64 32        ; 6 uses
  %.val136218 = load i32, ptr %i.g, align 4, !tbaa !30 ; 3 uses
  %i.av = icmp sgt i32 %.val136218, 0
  br i1 %i.av, label %.lr.ph221, label %.critedge2

.lr.ph221:                                        ; preds = %.critedge
  %i.aw = getelementptr i8, ptr %1, i64 8
  %.val146278 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not125279 = icmp eq ptr %.val146278, null
  br i1 %.not125279, label %.critedge2, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %.val146 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not125 = icmp eq ptr %.val146, null
  br i1 %.not125, label %.critedge2, label %.lr.ph, !llvm.loop !567

.lr.ph:                                           ; preds = %.lr.ph221, %bb.f
  %.val146281 = phi ptr [ %.val146, %bb.f ], [ %.val146278, %.lr.ph221 ]
  %indvars.iv280 = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph221 ] ; 2 uses
  %.val142 = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val142, i64 %indvars.iv280
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [12 x i8], ptr %.val146281, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 4
  %i.bc = or i64 %i.bb, -9223372036854775808
  store i64 %i.bc, ptr %i.ba, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %.val136 = load i32, ptr %i.g, align 4, !tbaa !30 ; 3 uses
  %i.bd = sext i32 %.val136 to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.f, label %..critedge2.loopexit_crit_edge, !llvm.loop !567

..critedge2.loopexit_crit_edge:                   ; preds = %.lr.ph
  br label %.critedge2, !llvm.loop !567

.critedge2:                                       ; preds = %bb.f, %.lr.ph221, %..critedge2.loopexit_crit_edge, %.critedge
  %.val235 = phi i32 [ %.val136218, %.critedge ], [ %.val136218, %.lr.ph221 ], [ %.val136, %..critedge2.loopexit_crit_edge ], [ %.val136, %bb.f ] ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ae, i64 8
  %.val171 = load ptr, ptr %i.bf, align 8, !tbaa !142 ; 5 uses
  %i.bg = sext i32 %.val235 to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %.val171, i64 %i.bg ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %.val134 = load i32, ptr %i.bi, align 4, !tbaa !30 ; 2 uses
  %i.bj = icmp sgt i32 %.val134, 0
  br i1 %i.bj, label %.lr.ph225, label %.critedge4

.lr.ph225:                                        ; preds = %.critedge2
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %.val141 = load ptr, ptr %i.bk, align 8, !tbaa !31
  %.val145 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not126 = icmp eq ptr %.val145, null
  %i.bl = icmp sgt i32 %i.f, 0                    ; 3 uses
  %i.bm = zext i32 %i.f to i64                    ; 11 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  br i1 %.not126, label %.critedge4, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %wide.trip.count = zext nneg i32 %.val134 to i64
  %min.iters.check295 = icmp ult i32 %i.f, 8
  %n.vec297 = and i64 %i.bm, 2147483644           ; 3 uses
  %cmp.n308 = icmp eq i64 %n.vec297, %i.bm
  %xtraiter = and i64 %i.bm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bo = add nsw i64 %i.bm, -1
  %min.iters.check = icmp ult i32 %i.f, 8
  %n.vec = and i64 %i.bm, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bm
  %xtraiter401 = and i64 %i.bm, 1
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  %i.bp = add nsw i64 %i.bm, -1
  br label %.lr.ph225.split

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %Abc_TtClear.exit
  %indvars.iv245 = phi i64 [ 0, %.lr.ph225.split.preheader ], [ %indvars.iv.next246, %Abc_TtClear.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val141, i64 %indvars.iv245
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32 ; 5 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [12 x i8], ptr %.val145, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 4            ; 7 uses
  %.not131 = icmp sgt i64 %i.bu, -1
  br i1 %.not131, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph225.split
  br i1 %i.bl, label %.lr.ph.preheader.i, label %Abc_TtClear.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.bv = mul nsw i32 %i.br, %i.f
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bw
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %i.bn, i1 false), !tbaa !43
  br label %Abc_TtClear.exit

bb.h:                                             ; preds = %.lr.ph225.split
  %i.by = trunc i64 %i.bu to i32
  %i.bz = lshr i64 %i.bu, 29
  %i.ca = and i64 %i.bz, 1
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @__const.Gia_SimRsbSimAndCareSet.pComps, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !43 ; 5 uses
  %i.cd = lshr i64 %i.bu, 61
  %i.ce = and i64 %i.cd, 1
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @__const.Gia_SimRsbSimAndCareSet.pComps, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !43 ; 5 uses
  %i.ch = and i32 %i.by, 536870911                ; 2 uses
  %i.ci = sub i32 %i.br, %i.ch
  %i.cj = mul i32 %i.ci, %i.f
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ck ; 8 uses
  %i.cm = lshr i64 %i.bu, 32
end_hunk_0
begin_hunk_1_@Gia_ManRelDerive:bb.a
  %i.dd = sub nsw i64 %i.cu, %i.cr
  %i.de = shl nsw i64 %i.dd, 3
  %i.df = add nsw i64 %i.de, -1
  %diff.check292 = icmp ult i64 %i.df, 31
  %conflict.rdx293 = or i1 %diff.check291, %diff.check292
  br i1 %conflict.rdx293, label %scalar.ph294.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %vector.memcheck290
  %broadcast.splatinsert298 = insertelement <2 x i64> poison, i64 %invariant.op, i64 0
  %broadcast.splat299 = shufflevector <2 x i64> %broadcast.splatinsert298, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph296
  %index301 = phi i64 [ 0, %vector.ph296 ], [ %index.next306, %vector.body300 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index301 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load302 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !43
  %wide.load303 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index301 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load304 = load <2 x i64>, ptr %i.di, align 8, !tbaa !43
  %wide.load305 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !43
  %i.dk = xor <2 x i64> %wide.load302, %wide.load304
  %i.dl = xor <2 x i64> %wide.load303, %wide.load305
  %i.dm = xor <2 x i64> %i.dk, %broadcast.splat299
  %i.dn = xor <2 x i64> %i.dl, %broadcast.splat299
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index301 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <2 x i64> %i.dm, ptr %i.do, align 8, !tbaa !43
  store <2 x i64> %i.dn, ptr %i.dp, align 8, !tbaa !43
  %index.next306 = add nuw i64 %index301, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next306, %n.vec297
  br i1 %i.dq, label %middle.block307, label %vector.body300, !llvm.loop !568

middle.block307:                                  ; preds = %vector.body300
  br i1 %cmp.n308, label %Abc_TtClear.exit, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %vector.memcheck290, %.lr.ph.i173, %middle.block307
  %indvars.iv.i174.ph = phi i64 [ 0, %vector.memcheck290 ], [ 0, %.lr.ph.i173 ], [ %n.vec297, %middle.block307 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph294.prol.loopexit, label %scalar.ph294.prol

scalar.ph294.prol:                                ; preds = %scalar.ph294.preheader
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i174.ph
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i174.ph
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !43
  %i.dv = xor i64 %i.ds, %i.du
  %.reass.i.reass.prol = xor i64 %i.dv, %invariant.op
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i174.ph
  store i64 %.reass.i.reass.prol, ptr %i.dw, align 8, !tbaa !43
  %indvars.iv.next.i175.prol = or disjoint i64 %indvars.iv.i174.ph, 1
  br label %scalar.ph294.prol.loopexit

scalar.ph294.prol.loopexit:                       ; preds = %scalar.ph294.prol, %scalar.ph294.preheader
  %indvars.iv.i174.unr = phi i64 [ %indvars.iv.i174.ph, %scalar.ph294.preheader ], [ %indvars.iv.next.i175.prol, %scalar.ph294.prol ]
  %i.dx = icmp eq i64 %indvars.iv.i174.ph, %i.bo
  br i1 %i.dx, label %Abc_TtClear.exit, label %scalar.ph294

.preheader.i:                                     ; preds = %bb.h
  br i1 %i.bl, label %.lr.ph8.i.preheader, label %Abc_TtClear.exit

.lr.ph8.i.preheader:                              ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph8.i.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph8.i.preheader
  %i.dy = sub nsw i64 %i.cu, %i.ck
  %i.dz = shl nsw i64 %i.dy, 3
  %i.ea = add nsw i64 %i.dz, -1
  %diff.check = icmp ult i64 %i.ea, 31
  %i.eb = sub nsw i64 %i.cu, %i.cr
  %i.ec = shl nsw i64 %i.eb, 3
  %i.ed = add nsw i64 %i.ec, -1
  %diff.check284 = icmp ult i64 %i.ed, 31
  %conflict.rdx = or i1 %diff.check, %diff.check284
  br i1 %conflict.rdx, label %.lr.ph8.i.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat286 = shufflevector <2 x i64> %broadcast.splatinsert285, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load = load <2 x i64>, ptr %i.ee, align 8, !tbaa !43
  %wide.load287 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !43
  %i.eg = xor <2 x i64> %wide.load, %broadcast.splat
  %i.eh = xor <2 x i64> %wide.load287, %broadcast.splat
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load288 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !43
  %wide.load289 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !43
  %i.ek = xor <2 x i64> %wide.load288, %broadcast.splat286
  %i.el = xor <2 x i64> %wide.load289, %broadcast.splat286
  %i.em = and <2 x i64> %i.ek, %i.eg
  %i.en = and <2 x i64> %i.el, %i.eh
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> %i.em, ptr %i.eo, align 8, !tbaa !43
  store <2 x i64> %i.en, ptr %i.ep, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtClear.exit, label %.lr.ph8.i.preheader398

.lr.ph8.i.preheader398:                           ; preds = %vector.memcheck, %.lr.ph8.i.preheader, %middle.block
  %indvars.iv11.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph8.i.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod402.not, label %.lr.ph8.i.prol.loopexit, label %.lr.ph8.i.prol

.lr.ph8.i.prol:                                   ; preds = %.lr.ph8.i.preheader398
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv11.i.ph
  %i.es = load i64, ptr %i.er, align 8, !tbaa !43
  %i.et = xor i64 %i.es, %i.cc
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv11.i.ph
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.ew = xor i64 %i.ev, %i.cg
  %i.ex = and i64 %i.ew, %i.et
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv11.i.ph
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !43
  %indvars.iv.next12.i.prol = or disjoint i64 %indvars.iv11.i.ph, 1
  br label %.lr.ph8.i.prol.loopexit

.lr.ph8.i.prol.loopexit:                          ; preds = %.lr.ph8.i.prol, %.lr.ph8.i.preheader398
  %indvars.iv11.i.unr = phi i64 [ %indvars.iv11.i.ph, %.lr.ph8.i.preheader398 ], [ %indvars.iv.next12.i.prol, %.lr.ph8.i.prol ]
  %i.ez = icmp eq i64 %indvars.iv11.i.ph, %i.bp
  br i1 %i.ez, label %Abc_TtClear.exit, label %.lr.ph8.i

scalar.ph294:                                     ; preds = %scalar.ph294.prol.loopexit, %scalar.ph294
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i175.1, %scalar.ph294 ], [ %indvars.iv.i174.unr, %scalar.ph294.prol.loopexit ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i174
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !43
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i174
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !43
  %i.fe = xor i64 %i.fb, %i.fd
  %.reass.i.reass = xor i64 %i.fe, %invariant.op
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i174
  store i64 %.reass.i.reass, ptr %i.ff, align 8, !tbaa !43
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i174, 1 ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.i175
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i175
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !43
  %i.fk = xor i64 %i.fh, %i.fj
  %.reass.i.reass.1 = xor i64 %i.fk, %invariant.op
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i175
  store i64 %.reass.i.reass.1, ptr %i.fl, align 8, !tbaa !43
  %indvars.iv.next.i175.1 = add nuw nsw i64 %indvars.iv.i174, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i175.1, %i.bm
  br i1 %exitcond.not.i.1, label %Abc_TtClear.exit, label %scalar.ph294, !llvm.loop !570

.lr.ph8.i:                                        ; preds = %.lr.ph8.i.prol.loopexit, %.lr.ph8.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i.1, %.lr.ph8.i ], [ %indvars.iv11.i.unr, %.lr.ph8.i.prol.loopexit ] ; 5 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv11.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !43
  %i.fo = xor i64 %i.fn, %i.cc
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv11.i
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !43
  %i.fr = xor i64 %i.fq, %i.cg
  %i.fs = and i64 %i.fr, %i.fo
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv11.i
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !43
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next12.i
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !43
  %i.fw = xor i64 %i.fv, %i.cc
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next12.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !43
  %i.fz = xor i64 %i.fy, %i.cg
  %i.ga = and i64 %i.fz, %i.fw
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next12.i
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !43
  %indvars.iv.next12.i.1 = add nuw nsw i64 %indvars.iv11.i, 2 ; 2 uses
  %exitcond15.not.i.1 = icmp eq i64 %indvars.iv.next12.i.1, %i.bm
  br i1 %exitcond15.not.i.1, label %Abc_TtClear.exit, label %.lr.ph8.i, !llvm.loop !571

Abc_TtClear.exit:                                 ; preds = %scalar.ph294.prol.loopexit, %scalar.ph294, %.lr.ph8.i.prol.loopexit, %.lr.ph8.i, %middle.block307, %middle.block, %.preheader.i, %.preheader4.i, %.lr.ph.preheader.i, %bb.g
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count
  br i1 %exitcond248.not, label %.critedge4, label %.lr.ph225.split, !llvm.loop !572

.critedge4:                                       ; preds = %Abc_TtClear.exit, %.lr.ph225, %.critedge2
  %.not240 = icmp eq i32 %.val137, 31
  br i1 %.not240, label %.critedge6._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge4
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !51  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %.val133 = load i32, ptr %i.gd, align 4, !tbaa !30 ; 3 uses
  %i.ge = icmp sgt i32 %.val133, 0
  %i.gf = getelementptr i8, ptr %i.gc, i64 8
  %i.gg = icmp sgt i32 %i.f, 0                    ; 5 uses
  %wide.trip.count.i178 = zext i32 %i.f to i64    ; 19 uses
  %i.gh = add nsw i32 %i.h, -1
  %i.gi = getelementptr i8, ptr %1, i64 8
  %i.gj = sext i32 %i.f to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count252 = zext nneg i32 %.val133 to i64
  %min.iters.check379 = icmp ult i32 %i.f, 4
  %n.vec381 = and i64 %wide.trip.count.i178, 2147483644 ; 3 uses
  %cmp.n390 = icmp eq i64 %n.vec381, %wide.trip.count.i178
  %min.iters.check365 = icmp ult i32 %i.f, 4
  %n.vec367 = and i64 %wide.trip.count.i178, 2147483644 ; 3 uses
  %cmp.n376 = icmp eq i64 %n.vec367, %wide.trip.count.i178
  %min.iters.check353 = icmp ult i32 %i.f, 4
  %n.vec355 = and i64 %wide.trip.count.i178, 2147483644 ; 3 uses
  %cmp.n362 = icmp eq i64 %n.vec355, %wide.trip.count.i178
  %min.iters.check337 = icmp ult i32 %i.f, 8
  %n.vec339 = and i64 %wide.trip.count.i178, 2147483644 ; 3 uses
  %cmp.n350 = icmp eq i64 %n.vec339, %wide.trip.count.i178
  %xtraiter403 = and i64 %wide.trip.count.i178, 1
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  %i.gk = add nsw i64 %wide.trip.count.i178, -1
  %min.iters.check315 = icmp ult i32 %i.f, 8
  %n.vec317 = and i64 %wide.trip.count.i178, 2147483644 ; 3 uses
  %cmp.n330 = icmp eq i64 %n.vec317, %wide.trip.count.i178
  %xtraiter405 = and i64 %wide.trip.count.i178, 1
  %lcmp.mod406.not = icmp eq i64 %xtraiter405, 0
  %i.gl = add nsw i64 %wide.trip.count.i178, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge8
  %.0116234 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.in, %.critedge8 ] ; 4 uses
  %.0117233 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.nv, %.critedge8 ] ; 2 uses
  br i1 %i.ge, label %.lr.ph228, label %.critedge6

.lr.ph228:                                        ; preds = %.preheader
  %.val165 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not127 = icmp eq ptr %.val165, null
  br i1 %.not127, label %.critedge6, label %.lr.ph228.split

.lr.ph228.split:                                  ; preds = %.lr.ph228
  %i.gm = mul nsw i32 %.val133, %.0117233
  %.val166.val = load ptr, ptr %i.gf, align 8, !tbaa !31
  %i.gn = sext i32 %i.gm to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph228.split, %Abc_TtXor.exit
  %indvars.iv249 = phi i64 [ 0, %.lr.ph228.split ], [ %indvars.iv.next250, %Abc_TtXor.exit ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val166.val, i64 %indvars.iv249
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !32 ; 3 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [12 x i8], ptr %.val165, i64 %i.gq
  %i.gs = mul nsw i32 %i.gp, %i.f
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gt ; 4 uses
  %.val3.i = load i64, ptr %i.gr, align 4
  %i.gv = trunc i64 %.val3.i to i32               ; 2 uses
  %i.gw = and i32 %i.gv, 536870911
  %i.gx = sub nsw i32 %i.gp, %i.gw
  %i.gy = mul nsw i32 %i.gx, %i.f
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gz ; 4 uses
  %i.hb = add nsw i64 %indvars.iv249, %i.gn
  %i.hc = mul nsw i64 %i.hb, %i.gj
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.hc ; 4 uses
  %i.he = and i32 %i.gv, 536870912
  %.not.i176 = icmp eq i32 %i.he, 0
  br i1 %.not.i176, label %.preheader.i183, label %.preheader18.i

.preheader18.i:                                   ; preds = %bb.i
  br i1 %i.gg, label %.lr.ph.i179.preheader, label %Abc_TtXor.exit

.lr.ph.i179.preheader:                            ; preds = %.preheader18.i
  br i1 %min.iters.check379, label %.lr.ph.i179.preheader395, label %vector.body382

vector.body382:                                   ; preds = %.lr.ph.i179.preheader, %vector.body382
  %index383 = phi i64 [ %index.next388, %vector.body382 ], [ 0, %.lr.ph.i179.preheader ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index383 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load384 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !43
  %wide.load385 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !43
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index383 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load386 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !43
  %wide.load387 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !43
  %i.hj = xor <2 x i64> %wide.load384, %wide.load386
  %i.hk = xor <2 x i64> %wide.load385, %wide.load387
  %i.hl = xor <2 x i64> %i.hj, splat (i64 -1)
  %i.hm = xor <2 x i64> %i.hk, splat (i64 -1)
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index383 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <2 x i64> %i.hl, ptr %i.hn, align 8, !tbaa !43
  store <2 x i64> %i.hm, ptr %i.ho, align 8, !tbaa !43
  %index.next388 = add nuw i64 %index383, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next388, %n.vec381
  br i1 %i.hp, label %middle.block389, label %vector.body382, !llvm.loop !573

middle.block389:                                  ; preds = %vector.body382
  br i1 %cmp.n390, label %Abc_TtXor.exit, label %.lr.ph.i179.preheader395

.lr.ph.i179.preheader395:                         ; preds = %.lr.ph.i179.preheader, %middle.block389
  %indvars.iv.i180.ph = phi i64 [ 0, %.lr.ph.i179.preheader ], [ %n.vec381, %middle.block389 ]
  br label %.lr.ph.i179

.preheader.i183:                                  ; preds = %bb.i
  br i1 %i.gg, label %.lr.ph22.i.preheader, label %Abc_TtXor.exit

.lr.ph22.i.preheader:                             ; preds = %.preheader.i183
  br i1 %min.iters.check365, label %.lr.ph22.i.preheader394, label %vector.body368

vector.body368:                                   ; preds = %.lr.ph22.i.preheader, %vector.body368
  %index369 = phi i64 [ %index.next374, %vector.body368 ], [ 0, %.lr.ph22.i.preheader ] ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index369 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load370 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !43
  %wide.load371 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !43
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index369 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load372 = load <2 x i64>, ptr %i.hs, align 8, !tbaa !43
  %wide.load373 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !43
  %i.hu = xor <2 x i64> %wide.load372, %wide.load370
  %i.hv = xor <2 x i64> %wide.load373, %wide.load371
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index369 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <2 x i64> %i.hu, ptr %i.hw, align 8, !tbaa !43
  store <2 x i64> %i.hv, ptr %i.hx, align 8, !tbaa !43
  %index.next374 = add nuw i64 %index369, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.hy, label %middle.block375, label %vector.body368, !llvm.loop !574

middle.block375:                                  ; preds = %vector.body368
  br i1 %cmp.n376, label %Abc_TtXor.exit, label %.lr.ph22.i.preheader394

.lr.ph22.i.preheader394:                          ; preds = %.lr.ph22.i.preheader, %middle.block375
  %indvars.iv25.i184.ph = phi i64 [ 0, %.lr.ph22.i.preheader ], [ %n.vec367, %middle.block375 ]
  br label %.lr.ph22.i

.lr.ph.i179:                                      ; preds = %.lr.ph.i179.preheader395, %.lr.ph.i179
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i181, %.lr.ph.i179 ], [ %indvars.iv.i180.ph, %.lr.ph.i179.preheader395 ] ; 4 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.i180
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i180
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !43
  %i.id = xor i64 %i.ia, %i.ic
  %i.ie = xor i64 %i.id, -1
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i180
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !43
  %indvars.iv.next.i181 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %exitcond.not.i182 = icmp eq i64 %indvars.iv.next.i181, %wide.trip.count.i178
  br i1 %exitcond.not.i182, label %Abc_TtXor.exit, label %.lr.ph.i179, !llvm.loop !575

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.preheader394, %.lr.ph22.i
  %indvars.iv25.i184 = phi i64 [ %indvars.iv.next26.i185, %.lr.ph22.i ], [ %indvars.iv25.i184.ph, %.lr.ph22.i.preheader394 ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv25.i184
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv25.i184
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !43
  %i.ik = xor i64 %i.ij, %i.ih
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv25.i184
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !43
  %indvars.iv.next26.i185 = add nuw nsw i64 %indvars.iv25.i184, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i185, %wide.trip.count.i178
  br i1 %exitcond29.not.i, label %Abc_TtXor.exit, label %.lr.ph22.i, !llvm.loop !576

Abc_TtXor.exit:                                   ; preds = %.lr.ph.i179, %.lr.ph22.i, %middle.block389, %middle.block375, %.preheader18.i, %.preheader.i183
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %.critedge6, label %bb.i, !llvm.loop !577

.critedge6:                                       ; preds = %Abc_TtXor.exit, %.lr.ph228, %.preheader
  %i.im = icmp eq i32 %.0116234, %i.gh
  br i1 %i.im, label %.critedge6._crit_edge, label %bb.j

bb.j:                                             ; preds = %.critedge6
  %i.in = add nuw nsw i32 %.0116234, 1            ; 4 uses
  %i.io = xor i32 %i.in, %.0116234
  %i.ip = lshr i32 %i.io, 1
  %i.iq = xor i32 %.0116234, %i.ip
  %i.ir = xor i32 %i.iq, %i.in
  %i.is = tail call fastcc i32 @Abc_TtSuppFindFirst(i32 noundef %i.ir) ; 2 uses
  %i.it = sext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [16 x i8], ptr %.val171, i64 %i.it ; 2 uses
  %.val140 = load ptr, ptr %i.gi, align 8, !tbaa !31
  %i.iv = getelementptr inbounds [4 x i8], ptr %.val140, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !32
  %i.ix = mul nsw i32 %i.iw, %i.f
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.iy ; 2 uses
  br i1 %i.gg, label %.lr.ph.i188.preheader, label %Abc_TtNot.exit

.lr.ph.i188.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check353, label %.lr.ph.i188.preheader397, label %vector.body356

vector.body356:                                   ; preds = %.lr.ph.i188.preheader, %vector.body356
  %index357 = phi i64 [ %index.next360, %vector.body356 ], [ 0, %.lr.ph.i188.preheader ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %index357 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %wide.load358 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !43
  %wide.load359 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !43
  %i.jc = xor <2 x i64> %wide.load358, splat (i64 -1)
  %i.jd = xor <2 x i64> %wide.load359, splat (i64 -1)
  store <2 x i64> %i.jc, ptr %i.ja, align 8, !tbaa !43
  store <2 x i64> %i.jd, ptr %i.jb, align 8, !tbaa !43
  %index.next360 = add nuw i64 %index357, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.je, label %middle.block361, label %vector.body356, !llvm.loop !578
end_hunk_1
begin_hunk_2_@Gia_ManRelDerive:bb.a
.preheader4.i195:                                 ; preds = %bb.k
  br i1 %i.gg, label %.lr.ph.i196, label %Gia_ManSimPatSimAnd.exit210

.lr.ph.i196:                                      ; preds = %.preheader4.i195
  %invariant.op274 = xor i64 %i.ju, %i.jy         ; 4 uses
  br i1 %min.iters.check337, label %scalar.ph336.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph.i196
  %i.ks = sub nsw i64 %i.km, %i.kc
  %i.kt = shl nsw i64 %i.ks, 3
  %i.ku = add nsw i64 %i.kt, -1
  %diff.check333 = icmp ult i64 %i.ku, 31
  %i.kv = sub nsw i64 %i.km, %i.kj
  %i.kw = shl nsw i64 %i.kv, 3
  %i.kx = add nsw i64 %i.kw, -1
  %diff.check334 = icmp ult i64 %i.kx, 31
  %conflict.rdx335 = or i1 %diff.check333, %diff.check334
  br i1 %conflict.rdx335, label %scalar.ph336.preheader, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck332
  %broadcast.splatinsert340 = insertelement <2 x i64> poison, i64 %invariant.op274, i64 0
  %broadcast.splat341 = shufflevector <2 x i64> %broadcast.splatinsert340, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph338
  %index343 = phi i64 [ 0, %vector.ph338 ], [ %index.next348, %vector.body342 ] ; 4 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %index343 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load344 = load <2 x i64>, ptr %i.ky, align 8, !tbaa !43
  %wide.load345 = load <2 x i64>, ptr %i.kz, align 8, !tbaa !43
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %index343 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %wide.load346 = load <2 x i64>, ptr %i.la, align 8, !tbaa !43
  %wide.load347 = load <2 x i64>, ptr %i.lb, align 8, !tbaa !43
  %i.lc = xor <2 x i64> %wide.load344, %wide.load346
  %i.ld = xor <2 x i64> %wide.load345, %wide.load347
  %i.le = xor <2 x i64> %i.lc, %broadcast.splat341
  %i.lf = xor <2 x i64> %i.ld, %broadcast.splat341
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index343 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <2 x i64> %i.le, ptr %i.lg, align 8, !tbaa !43
  store <2 x i64> %i.lf, ptr %i.lh, align 8, !tbaa !43
  %index.next348 = add nuw i64 %index343, 4       ; 2 uses
  %i.li = icmp eq i64 %index.next348, %n.vec339
  br i1 %i.li, label %middle.block349, label %vector.body342, !llvm.loop !580

middle.block349:                                  ; preds = %vector.body342
  br i1 %cmp.n350, label %Gia_ManSimPatSimAnd.exit210, label %scalar.ph336.preheader

scalar.ph336.preheader:                           ; preds = %vector.memcheck332, %.lr.ph.i196, %middle.block349
  %indvars.iv.i199.ph = phi i64 [ 0, %vector.memcheck332 ], [ 0, %.lr.ph.i196 ], [ %n.vec339, %middle.block349 ] ; 6 uses
  br i1 %lcmp.mod404.not, label %scalar.ph336.prol.loopexit, label %scalar.ph336.prol

scalar.ph336.prol:                                ; preds = %scalar.ph336.preheader
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.i199.ph
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !43
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i199.ph
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !43
  %i.ln = xor i64 %i.lk, %i.lm
  %.reass.i200.reass.prol = xor i64 %i.ln, %invariant.op274
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i199.ph
  store i64 %.reass.i200.reass.prol, ptr %i.lo, align 8, !tbaa !43
  %indvars.iv.next.i201.prol = or disjoint i64 %indvars.iv.i199.ph, 1
  br label %scalar.ph336.prol.loopexit

scalar.ph336.prol.loopexit:                       ; preds = %scalar.ph336.prol, %scalar.ph336.preheader
  %indvars.iv.i199.unr = phi i64 [ %indvars.iv.i199.ph, %scalar.ph336.preheader ], [ %indvars.iv.next.i201.prol, %scalar.ph336.prol ]
  %i.lp = icmp eq i64 %indvars.iv.i199.ph, %i.gk
  br i1 %i.lp, label %Gia_ManSimPatSimAnd.exit210, label %scalar.ph336

.preheader.i203:                                  ; preds = %bb.k
  br i1 %i.gg, label %.lr.ph8.i206.preheader, label %Gia_ManSimPatSimAnd.exit210

.lr.ph8.i206.preheader:                           ; preds = %.preheader.i203
  br i1 %min.iters.check315, label %.lr.ph8.i206.preheader392, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph8.i206.preheader
  %i.lq = sub nsw i64 %i.km, %i.kc
  %i.lr = shl nsw i64 %i.lq, 3
  %i.ls = add nsw i64 %i.lr, -1
  %diff.check311 = icmp ult i64 %i.ls, 31
  %i.lt = sub nsw i64 %i.km, %i.kj
  %i.lu = shl nsw i64 %i.lt, 3
  %i.lv = add nsw i64 %i.lu, -1
  %diff.check312 = icmp ult i64 %i.lv, 31
  %conflict.rdx313 = or i1 %diff.check311, %diff.check312
  br i1 %conflict.rdx313, label %.lr.ph8.i206.preheader392, label %vector.ph316

vector.ph316:                                     ; preds = %vector.memcheck310
  %broadcast.splatinsert318 = insertelement <2 x i64> poison, i64 %i.ju, i64 0
  %broadcast.splat319 = shufflevector <2 x i64> %broadcast.splatinsert318, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert320 = insertelement <2 x i64> poison, i64 %i.jy, i64 0
  %broadcast.splat321 = shufflevector <2 x i64> %broadcast.splatinsert320, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph316
  %index323 = phi i64 [ 0, %vector.ph316 ], [ %index.next328, %vector.body322 ] ; 4 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %index323 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load324 = load <2 x i64>, ptr %i.lw, align 8, !tbaa !43
  %wide.load325 = load <2 x i64>, ptr %i.lx, align 8, !tbaa !43
  %i.ly = xor <2 x i64> %wide.load324, %broadcast.splat319
  %i.lz = xor <2 x i64> %wide.load325, %broadcast.splat319
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %index323 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load326 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !43
  %wide.load327 = load <2 x i64>, ptr %i.mb, align 8, !tbaa !43
  %i.mc = xor <2 x i64> %wide.load326, %broadcast.splat321
  %i.md = xor <2 x i64> %wide.load327, %broadcast.splat321
  %i.me = and <2 x i64> %i.mc, %i.ly
  %i.mf = and <2 x i64> %i.md, %i.lz
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index323 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store <2 x i64> %i.me, ptr %i.mg, align 8, !tbaa !43
  store <2 x i64> %i.mf, ptr %i.mh, align 8, !tbaa !43
  %index.next328 = add nuw i64 %index323, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next328, %n.vec317
  br i1 %i.mi, label %middle.block329, label %vector.body322, !llvm.loop !581

middle.block329:                                  ; preds = %vector.body322
  br i1 %cmp.n330, label %Gia_ManSimPatSimAnd.exit210, label %.lr.ph8.i206.preheader392

.lr.ph8.i206.preheader392:                        ; preds = %vector.memcheck310, %.lr.ph8.i206.preheader, %middle.block329
  %indvars.iv11.i207.ph = phi i64 [ 0, %vector.memcheck310 ], [ 0, %.lr.ph8.i206.preheader ], [ %n.vec317, %middle.block329 ] ; 6 uses
  br i1 %lcmp.mod406.not, label %.lr.ph8.i206.prol.loopexit, label %.lr.ph8.i206.prol

.lr.ph8.i206.prol:                                ; preds = %.lr.ph8.i206.preheader392
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv11.i207.ph
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !43
  %i.ml = xor i64 %i.mk, %i.ju
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv11.i207.ph
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !43
  %i.mo = xor i64 %i.mn, %i.jy
  %i.mp = and i64 %i.mo, %i.ml
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv11.i207.ph
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !43
  %indvars.iv.next12.i208.prol = or disjoint i64 %indvars.iv11.i207.ph, 1
  br label %.lr.ph8.i206.prol.loopexit

.lr.ph8.i206.prol.loopexit:                       ; preds = %.lr.ph8.i206.prol, %.lr.ph8.i206.preheader392
  %indvars.iv11.i207.unr = phi i64 [ %indvars.iv11.i207.ph, %.lr.ph8.i206.preheader392 ], [ %indvars.iv.next12.i208.prol, %.lr.ph8.i206.prol ]
  %i.mr = icmp eq i64 %indvars.iv11.i207.ph, %i.gl
  br i1 %i.mr, label %Gia_ManSimPatSimAnd.exit210, label %.lr.ph8.i206

scalar.ph336:                                     ; preds = %scalar.ph336.prol.loopexit, %scalar.ph336
  %indvars.iv.i199 = phi i64 [ %indvars.iv.next.i201.1, %scalar.ph336 ], [ %indvars.iv.i199.unr, %scalar.ph336.prol.loopexit ] ; 5 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.i199
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !43
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i199
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !43
  %i.mw = xor i64 %i.mt, %i.mv
  %.reass.i200.reass = xor i64 %i.mw, %invariant.op274
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i199
  store i64 %.reass.i200.reass, ptr %i.mx, align 8, !tbaa !43
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i199, 1 ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next.i201
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !43
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.next.i201
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !43
  %i.nc = xor i64 %i.mz, %i.nb
  %.reass.i200.reass.1 = xor i64 %i.nc, %invariant.op274
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i201
  store i64 %.reass.i200.reass.1, ptr %i.nd, align 8, !tbaa !43
  %indvars.iv.next.i201.1 = add nuw nsw i64 %indvars.iv.i199, 2 ; 2 uses
  %exitcond.not.i202.1 = icmp eq i64 %indvars.iv.next.i201.1, %wide.trip.count.i178
  br i1 %exitcond.not.i202.1, label %Gia_ManSimPatSimAnd.exit210, label %scalar.ph336, !llvm.loop !582

.lr.ph8.i206:                                     ; preds = %.lr.ph8.i206.prol.loopexit, %.lr.ph8.i206
  %indvars.iv11.i207 = phi i64 [ %indvars.iv.next12.i208.1, %.lr.ph8.i206 ], [ %indvars.iv11.i207.unr, %.lr.ph8.i206.prol.loopexit ] ; 5 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv11.i207
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !43
  %i.ng = xor i64 %i.nf, %i.ju
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv11.i207
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !43
  %i.nj = xor i64 %i.ni, %i.jy
  %i.nk = and i64 %i.nj, %i.ng
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv11.i207
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !43
  %indvars.iv.next12.i208 = add nuw nsw i64 %indvars.iv11.i207, 1 ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next12.i208
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !43
  %i.no = xor i64 %i.nn, %i.ju
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.next12.i208
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !43
  %i.nr = xor i64 %i.nq, %i.jy
  %i.ns = and i64 %i.nr, %i.no
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next12.i208
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !43
  %indvars.iv.next12.i208.1 = add nuw nsw i64 %indvars.iv11.i207, 2 ; 2 uses
  %exitcond15.not.i209.1 = icmp eq i64 %indvars.iv.next12.i208.1, %wide.trip.count.i178
  br i1 %exitcond15.not.i209.1, label %Gia_ManSimPatSimAnd.exit210, label %.lr.ph8.i206, !llvm.loop !583

Gia_ManSimPatSimAnd.exit210:                      ; preds = %scalar.ph336.prol.loopexit, %scalar.ph336, %.lr.ph8.i206.prol.loopexit, %.lr.ph8.i206, %middle.block349, %middle.block329, %.preheader.i203, %.preheader4.i195, %.lr.ph231.split
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %.critedge8, label %.lr.ph231.split, !llvm.loop !584

.critedge8:                                       ; preds = %Gia_ManSimPatSimAnd.exit210, %.lr.ph231, %Abc_TtNot.exit
  %i.nu = shl nuw i32 1, %i.is
  %i.nv = xor i32 %i.nu, %.0117233
  %exitcond259.not = icmp eq i32 %i.in, %smax
  br i1 %exitcond259.not, label %.critedge6._crit_edge, label %.preheader, !llvm.loop !585

.critedge6._crit_edge:                            ; preds = %.critedge8, %.critedge6, %.critedge4
  %i.nw = icmp sgt i32 %.val235, 0
  br i1 %i.nw, label %.lr.ph238, label %.critedge10

.lr.ph238:                                        ; preds = %.critedge6._crit_edge
  %i.nx = getelementptr i8, ptr %1, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph238, %bb.m
  %indvars.iv260 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next261, %bb.m ] ; 2 uses
  %.val143 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not130 = icmp eq ptr %.val143, null
  br i1 %.not130, label %.critedge10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val138 = load ptr, ptr %i.nx, align 8, !tbaa !31
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.val138, i64 %indvars.iv260
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !32
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [12 x i8], ptr %.val143, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 4
  %i.od = and i64 %i.oc, 9223372036854775807
  store i64 %i.od, ptr %i.ob, align 4
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !30
  %i.oe = sext i32 %.val to i64
  %i.of = icmp slt i64 %indvars.iv.next261, %i.oe
  br i1 %i.of, label %bb.l, label %.critedge10, !llvm.loop !586

.critedge10:                                      ; preds = %bb.l, %bb.m, %.critedge6._crit_edge
  %.not.i211 = icmp eq ptr %i.n, null
  br i1 %.not.i211, label %Vec_WrdFree.exit, label %bb.n

bb.n:                                             ; preds = %.critedge10
  tail call void @free(ptr noundef nonnull %i.n) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge10, %bb.n
  %i.og = load i32, ptr %i.ae, align 8, !tbaa !140 ; 2 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_WrdFree.exit
  %i.oi = zext nneg i32 %i.og to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.p
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %.val171, i64 %indvars.iv.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !31 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ol, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.ol) #35
  store ptr null, ptr %i.ok, align 8, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next.i.i, %i.oi
  br i1 %exitcond263.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !177

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit
  %.not.i.i212 = icmp eq ptr %.val171, null
  br i1 %.not.i.i212, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.p, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.val171) #35
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.ae) #35
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManRelDerive2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val69 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val70 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %.val70, i64 4
  %.val70.val = load i32, ptr %i.e, align 4, !tbaa !30
  %i.f = sdiv i32 %.val69, %.val70.val
  %.fr102 = freeze i32 %i.f                       ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val63 = load i32, ptr %i.g, align 4, !tbaa !30 ; 3 uses
  %i.h = shl nuw nsw i32 1, %.val63
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val77 = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.j = getelementptr i8, ptr %.val77, i64 4
  %.val77.val = load i32, ptr %i.j, align 4, !tbaa !30
  %i.k = mul nsw i32 %.val77.val, %.fr102
  %i.l = shl i32 %i.k, %.val63                    ; 4 uses
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.n = add i32 %i.l, -1
  %or.cond.i.i = icmp ult i32 %i.n, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.l ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.m, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %spec.store.select.i.i to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !33
  store i32 %i.l, ptr %i.t, align 4, !tbaa !39
  %i.v = sext i32 %i.l to i64
  %i.w = shl nsw i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.w, i1 false)
  %.not101 = icmp eq i32 %.val63, 31
  br i1 %.not101, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %Vec_WrdStart.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 8
  %i.z = icmp sgt i32 %.fr102, 0
  %wide.trip.count28.i = zext i32 %.fr102 to i64  ; 9 uses
  %i.aa = shl nuw nsw i64 %wide.trip.count28.i, 3
  %i.ab = shl nuw nsw i64 %wide.trip.count28.i, 3
  %min.iters.check = icmp ult i32 %.fr102, 8
  %n.vec = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  %xtraiter = and i64 %wide.trip.count28.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph99, %Vec_WrdFree.exit
  %.05698 = phi i32 [ 0, %.lr.ph99 ], [ %i.ev, %Vec_WrdFree.exit ] ; 4 uses
  %i.ac = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #35 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %Vec_IntFind.exit85.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntFind.exit85.thread ], [ 0, %bb.c ] ; 5 uses
  %indvars106 = trunc i64 %indvars.iv to i32      ; 2 uses
  %.val64 = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val64, i64 %indvars.iv ; 3 uses
  %.not = icmp eq ptr %.val64, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.val71 = load i64, ptr %i.ah, align 4          ; 5 uses
  %i.ai = and i64 %.val71, 2147483648
  %.not.i = icmp ne i64 %i.ai, 0
  %i.aj = and i64 %.val71, 536870911
  %i.ak = icmp eq i64 %i.aj, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ak
  br i1 %narrow.i.not, label %Vec_IntFind.exit85.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = trunc i64 %.val71 to i32                ; 2 uses
  %i.am = and i32 %i.al, 536870911
  %i.an = sub nsw i32 %indvars106, %i.am
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !30  ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i, label %Vec_IntFind.exit85.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !31
  %wide.trip.count.i = zext nneg i32 %i.ao to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %i.at = icmp eq i32 %i.as, %i.an
  br i1 %i.at, label %Vec_IntFind.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit.thread, label %bb.f, !llvm.loop !587

Vec_IntFind.exit:                                 ; preds = %bb.f
  %i.au = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.av = and i64 %indvars.iv, 536870911
  %i.aw = and i64 %.val71, -3221225472
  %i.ax = or disjoint i64 %i.aw, %i.av
  %i.ay = lshr i32 %.05698, %i.au
  %i.az = shl i32 %i.ay, 29
end_hunk_2
begin_hunk_3_@Gia_ManSimPatSimTfo:bb.a

.critedge:                                        ; preds = %Gia_ManSimPatSimAnd.exit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManSimPatSimMiter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !30  ; 2 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !42
  %.not = icmp eq ptr %.val21, null
  %i.f = icmp slt i32 %4, 1
  %wide.trip.count.i = zext i32 %4 to i64         ; 6 uses
  %brmerge = or i1 %.not, %i.f
  br i1 %brmerge, label %.critedge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %2, i64 8
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %.val22.val = load ptr, ptr %i.i, align 8, !tbaa !31
  %.val20 = load ptr, ptr %i.h, align 8, !tbaa !33 ; 2 uses
  %.val19 = load ptr, ptr %i.g, align 8, !tbaa !33 ; 2 uses
  %wide.trip.count = zext nneg i32 %.val to i64
  %i.j = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.j   ; 2 uses
  %scevgep33 = getelementptr i8, ptr %.val20, i64 %i.j
  %scevgep35 = getelementptr i8, ptr %.val19, i64 %i.j
  %min.iters.check = icmp ult i32 %4, 6
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.k = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split.split, %Abc_TtOrXor.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next, %Abc_TtOrXor.exit.loopexit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val22.val, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = mul nsw i32 %i.m, %4
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.val20, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %.val19, i64 %i.o ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.r = shl nsw i64 %i.o, 3                      ; 2 uses
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.r
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.r
  %bound0 = icmp ult ptr %3, %scevgep34
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %3, %scevgep36
  %bound138 = icmp ult ptr %i.q, %scevgep
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !43, !alias.scope !645
  %wide.load40 = load <2 x i64>, ptr %i.t, align 8, !tbaa !43, !alias.scope !645
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load41 = load <2 x i64>, ptr %i.u, align 8, !tbaa !43, !alias.scope !648
  %wide.load42 = load <2 x i64>, ptr %i.v, align 8, !tbaa !43, !alias.scope !648
  %i.w = xor <2 x i64> %wide.load41, %wide.load
  %i.x = xor <2 x i64> %wide.load42, %wide.load40
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load43 = load <2 x i64>, ptr %i.y, align 8, !tbaa !43, !alias.scope !650, !noalias !652
  %wide.load44 = load <2 x i64>, ptr %i.z, align 8, !tbaa !43, !alias.scope !650, !noalias !652
  %i.aa = or <2 x i64> %wide.load43, %i.w
  %i.ab = or <2 x i64> %wide.load44, %i.x
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !43, !alias.scope !650, !noalias !652
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !43, !alias.scope !650, !noalias !652
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !653

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtOrXor.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i.ph
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.ph
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43
  %i.ah = xor i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.ph ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.ak = or i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !43
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.al = icmp eq i64 %indvars.iv.i.ph, %i.k
  br i1 %i.al, label %Abc_TtOrXor.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43
  %i.aq = xor i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !43
  %i.ay = xor i64 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %Abc_TtOrXor.exit.loopexit, label %.lr.ph.i, !llvm.loop !654

Abc_TtOrXor.exit.loopexit:                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.preheader.i, !llvm.loop !655

.critedge:                                        ; preds = %Abc_TtOrXor.exit.loopexit, %.lr.ph, %bb.a
  %i.bc = icmp sgt i32 %4, 0
  br i1 %i.bc, label %.lr.ph.preheader.i23, label %Abc_TtNot.exit

.lr.ph.preheader.i23:                             ; preds = %.critedge
  %wide.trip.count.i24 = zext nneg i32 %4 to i64  ; 3 uses
  %min.iters.check46 = icmp ult i32 %4, 4
  br i1 %min.iters.check46, label %.lr.ph.i25.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.preheader.i23
  %n.vec48 = and i64 %wide.trip.count.i24, 2147483644 ; 3 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index50 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load51 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !43
  %wide.load52 = load <2 x i64>, ptr %i.be, align 8, !tbaa !43
  %i.bf = xor <2 x i64> %wide.load51, splat (i64 -1)
  %i.bg = xor <2 x i64> %wide.load52, splat (i64 -1)
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !43
  store <2 x i64> %i.bg, ptr %i.be, align 8, !tbaa !43
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.bh, label %middle.block54, label %vector.body49, !llvm.loop !656

middle.block54:                                   ; preds = %vector.body49
  %cmp.n55 = icmp eq i64 %n.vec48, %wide.trip.count.i24
  br i1 %cmp.n55, label %Abc_TtNot.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %.lr.ph.preheader.i23, %middle.block54
  %indvars.iv.i26.ph = phi i64 [ 0, %.lr.ph.preheader.i23 ], [ %n.vec48, %middle.block54 ]
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %.lr.ph.i25
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %.lr.ph.i25 ], [ %indvars.iv.i26.ph, %.lr.ph.i25.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i26 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !43
  %i.bk = xor i64 %i.bj, -1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !43
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i24
  br i1 %exitcond.not.i28, label %Abc_TtNot.exit, label %.lr.ph.i25, !llvm.loop !657

Abc_TtNot.exit:                                   ; preds = %.lr.ph.i25, %middle.block54, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManRelDeriveRel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %.val76 = load i32, ptr %i.a, align 4, !tbaa !30 ; 2 uses
  %i.b = shl nuw i32 1, %.val76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val86 = load i32, ptr %i.e, align 4, !tbaa !39
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val87 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %.val87, i64 4
  %.val87.val = load i32, ptr %i.g, align 4, !tbaa !30
  %i.h = sdiv i32 %.val86, %.val87.val
  %.fr108 = freeze i32 %i.h                       ; 29 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !39
  store i32 %i.k, ptr %i.i, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %Vec_WrdDup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 3                      ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #34
  br label %Vec_WrdDup.exit

Vec_WrdDup.exit:                                  ; preds = %bb.a, %bb.b
  %.pre-phi12.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.s, i64 %.pre-phi12.i, i1 false)
  %i.t = shl nsw i32 %.fr108, 6                   ; 5 uses
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %.fr108, 0              ; 2 uses
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_WrdDup.exit
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3                      ; 2 uses
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_WrdDup.exit, %bb.c
  %.pre-phi126 = phi i64 [ %i.w, %bb.c ], [ 0, %Vec_WrdDup.exit ] ; 3 uses
  %.val81.us = phi ptr [ %i.x, %bb.c ], [ null, %Vec_WrdDup.exit ] ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %.val81.us, ptr %i.z, align 8, !tbaa !33
  store i32 %i.t, ptr %i.y, align 4, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 8 %.val81.us, i8 0, i64 %.pre-phi126, i1 false)
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  store i32 %i.t, ptr %i.aa, align 8, !tbaa !41
  br i1 %.not.i.i, label %Vec_WrdStart.exit91, label %bb.d

bb.d:                                             ; preds = %Vec_WrdStart.exit
  %i.ab = tail call noalias ptr @malloc(i64 noundef %.pre-phi126) #34
  br label %Vec_WrdStart.exit91

Vec_WrdStart.exit91:                              ; preds = %Vec_WrdStart.exit, %bb.d
  %i.ac = phi ptr [ %i.ab, %bb.d ], [ null, %Vec_WrdStart.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !33
  store i32 %i.t, ptr %i.ad, align 4, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.pre-phi126, i1 false)
  %i.af = tail call ptr @Gia_ManRelOutsTfo(ptr noundef nonnull %0, ptr noundef nonnull %3) ; 4 uses
  %i.ag = getelementptr i8, ptr %1, i64 4         ; 4 uses
  %.val7598 = load i32, ptr %i.ag, align 4, !tbaa !30 ; 4 uses
  %i.ah = icmp sgt i32 %.val7598, 0
  br i1 %i.ah, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Vec_WrdStart.exit91
  %i.ai = getelementptr i8, ptr %1, i64 8
  %i.aj = sext i32 %.fr108 to i64                 ; 4 uses
  %i.ak = shl nsw i64 %i.aj, 3                    ; 3 uses
  %.val84.pre = load ptr, ptr %i.r, align 8, !tbaa !33 ; 3 uses
  %.val79 = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 3 uses
  %i.al = zext nneg i32 %.val7598 to i64          ; 2 uses
  %xtraiter = and i64 %i.al, 1
  %i.am = icmp eq i32 %.val7598, 1
  br i1 %i.am, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.al, 2147483646
  br label %bb.e

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i32 %.val7598 to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val79, i64 %indvars.iv.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = mul nsw i64 %indvars.iv.epil.init, %i.aj
  %i.aq = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.ap
  %i.ar = mul nsw i32 %i.ao, %.fr108
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.val84.pre, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %i.at, i64 %i.ak, i1 false)
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.epil.preheader, %.critedge.preheader.loopexit.unr-lcssa, %Vec_WrdStart.exit91
  %i.au = getelementptr i8, ptr %2, i64 4         ; 3 uses
  %.val74100 = load i32, ptr %i.au, align 4, !tbaa !30 ; 4 uses
  %i.av = icmp sgt i32 %.val74100, 0
  br i1 %i.av, label %.lr.ph102, label %.critedge2.preheader

.lr.ph102:                                        ; preds = %.critedge.preheader
  %i.aw = getelementptr i8, ptr %2, i64 8
  %i.ax = sext i32 %.fr108 to i64
  %i.ay = shl nsw i64 %i.ax, 3                    ; 3 uses
  %.val82.pre = load ptr, ptr %i.r, align 8, !tbaa !33 ; 3 uses
  %.val78 = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 3 uses
  %.val73 = load i32, ptr %i.ag, align 4, !tbaa !30 ; 3 uses
  %i.az = zext nneg i32 %.val74100 to i64         ; 2 uses
  %xtraiter162 = and i64 %i.az, 1
  %i.ba = icmp eq i32 %.val74100, 1
  br i1 %i.ba, label %.critedge.epil.preheader, label %.lr.ph102.new

.lr.ph102.new:                                    ; preds = %.lr.ph102
  %unroll_iter165 = and i64 %i.az, 2147483646
  br label %.critedge

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val79, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = mul nsw i64 %indvars.iv, %i.aj
  %i.be = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.bd
  %i.bf = mul nsw i32 %i.bc, %.fr108
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val84.pre, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bh, i64 %i.ak, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val79, i64 %indvars.iv.next
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = mul nsw i64 %indvars.iv.next, %i.aj
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.bk
  %i.bm = mul nsw i32 %i.bj, %.fr108
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val84.pre, i64 %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.bo, i64 %i.ak, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !658

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.critedge
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.critedge2.preheader, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph102
  %indvars.iv111.epil.init = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next112.1, %.critedge2.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod164 = trunc i32 %.val74100 to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %indvars.iv111.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  %i.br = trunc nuw nsw i64 %indvars.iv111.epil.init to i32
  %i.bs = add nsw i32 %.val73, %i.br
  %i.bt = mul nsw i32 %i.bs, %.fr108
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.bu
  %i.bw = mul nsw i32 %i.bq, %.fr108
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.val82.pre, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bv, ptr align 8 %i.by, i64 %i.ay, i1 false)
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.critedge.epil.preheader, %.critedge2.preheader.loopexit.unr-lcssa, %.critedge.preheader
  %.not107 = icmp eq i32 %.val76, 31
  br i1 %.not107, label %.critedge2._crit_edge, label %.lr.ph106

.lr.ph106:                                        ; preds = %.critedge2.preheader
  %i.bz = getelementptr i8, ptr %3, i64 8         ; 2 uses
  %i.ca = sext i32 %.fr108 to i64
  %i.cb = shl nsw i64 %i.ca, 3                    ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = getelementptr i8, ptr %0, i64 32
  %i.ce = icmp slt i32 %.fr108, 1
  %wide.trip.count.i.i = zext i32 %.fr108 to i64  ; 9 uses
  %i.cf = icmp sgt i32 %.fr108, 0                 ; 2 uses
  %smax123 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  br i1 %i.ce, label %.lr.ph106.split.us, label %.lr.ph106.split.preheader

.lr.ph106.split.preheader:                        ; preds = %.lr.ph106
  %i.cg = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 3 uses
  %scevgep = getelementptr i8, ptr %.val81.us, i64 %i.cg
  %scevgep138 = getelementptr i8, ptr %i.p, i64 %i.cg
  %min.iters.check144 = icmp ult i32 %.fr108, 6
  %n.vec146 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n157 = icmp eq i64 %n.vec146, %wide.trip.count.i.i
  %xtraiter173 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  %i.ch = add nsw i64 %wide.trip.count.i.i, -1
  %min.iters.check = icmp ult i32 %.fr108, 4
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph106.split

.lr.ph106.split.us:                               ; preds = %.lr.ph106, %Gia_ManSimPatSimMiter.exit.us
  %.2105.us = phi i32 [ %i.dr, %Gia_ManSimPatSimMiter.exit.us ], [ 0, %.lr.ph106 ] ; 5 uses
  %.val72.us = load i32, ptr %i.ag, align 4, !tbaa !30
  %.val71.us = load i32, ptr %i.au, align 4, !tbaa !30
  %i.ci = add i32 %.val72.us, %.2105.us
  %i.cj = add i32 %i.ci, %.val71.us
  %i.ck = mul nsw i32 %i.cj, %.fr108
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.cl ; 2 uses
  %.val.us = load i32, ptr %i.a, align 4, !tbaa !30 ; 4 uses
  %i.cn = icmp sgt i32 %.val.us, 0
  br i1 %i.cn, label %.lr.ph104.us, label %.critedge4.us

bb.f:                                             ; preds = %bb.f, %.lr.ph104.us.new
  %indvars.iv118 = phi i64 [ 0, %.lr.ph104.us.new ], [ %indvars.iv.next119.1, %bb.f ] ; 4 uses
  %niter180 = phi i64 [ 0, %.lr.ph104.us.new ], [ %niter180.next.1, %bb.f ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val77.us, i64 %indvars.iv118
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %i.cq = mul nsw i32 %i.cp, %.fr108
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv118 to i32
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = and i32 %i.cu, %.2105.us
  %.not.us = icmp ne i32 %i.cv, 0
  %i.cw = sext i1 %.not.us to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cs, i8 %i.cw, i64 %i.cb, i1 false)
  %indvars.iv.next119 = or disjoint i64 %indvars.iv118, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val77.us, i64 %indvars.iv.next119
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !32
  %i.cz = mul nsw i32 %i.cy, %.fr108
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.da
  %i.dc = trunc nuw nsw i64 %indvars.iv.next119 to i32
  %i.dd = shl nuw i32 1, %i.dc
  %i.de = and i32 %i.dd, %.2105.us
  %.not.us.1 = icmp ne i32 %i.de, 0
  %i.df = sext i1 %.not.us.1 to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 %i.df, i64 %i.cb, i1 false)
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %.critedge4.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !659

.critedge4.us.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.critedge4.us, label %.epil.preheader175

.epil.preheader175:                               ; preds = %.critedge4.us.loopexit.unr-lcssa, %.lr.ph104.us
  %indvars.iv118.epil.init = phi i64 [ 0, %.lr.ph104.us ], [ %indvars.iv.next119.1, %.critedge4.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %.val.us to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val77.us, i64 %indvars.iv118.epil.init
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = mul nsw i32 %i.dh, %.fr108
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dj
  %i.dl = trunc nuw nsw i64 %indvars.iv118.epil.init to i32
  %i.dm = shl nuw i32 1, %i.dl
  %i.dn = and i32 %i.dm, %.2105.us
  %.not.us.epil = icmp ne i32 %i.dn, 0
  %i.do = sext i1 %.not.us.epil to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 %i.do, i64 %i.cb, i1 false)
  br label %.critedge4.us

.critedge4.us:                                    ; preds = %.epil.preheader175, %.critedge4.us.loopexit.unr-lcssa, %.lr.ph106.split.us
  tail call void @Gia_ManSimPatSimTfo(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef %i.af)
  br i1 %i.cf, label %.lr.ph.i25.i.us.preheader, label %Gia_ManSimPatSimMiter.exit.us

.lr.ph.i25.i.us.preheader:                        ; preds = %.critedge4.us
  %i.dp = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.dq = xor i64 %i.dp, -1
  store i64 %i.dq, ptr %i.cm, align 8, !tbaa !43
  br label %Gia_ManSimPatSimMiter.exit.us

Gia_ManSimPatSimMiter.exit.us:                    ; preds = %.lr.ph.i25.i.us.preheader, %.critedge4.us
  %i.dr = add nuw nsw i32 %.2105.us, 1            ; 2 uses
  %exitcond124.not = icmp eq i32 %i.dr, %smax123
  br i1 %exitcond124.not, label %.critedge2._crit_edge, label %.lr.ph106.split.us, !llvm.loop !660

.lr.ph104.us:                                     ; preds = %.lr.ph106.split.us
  %.val77.us = load ptr, ptr %i.bz, align 8, !tbaa !31 ; 3 uses
  %wide.trip.count121 = zext nneg i32 %.val.us to i64 ; 2 uses
  %xtraiter176 = and i64 %wide.trip.count121, 1
  %i.ds = icmp eq i32 %.val.us, 1
  br i1 %i.ds, label %.epil.preheader175, label %.lr.ph104.us.new

.lr.ph104.us.new:                                 ; preds = %.lr.ph104.us
  %unroll_iter179 = and i64 %wide.trip.count121, 2147483646
  br label %bb.f

.critedge:                                        ; preds = %.critedge, %.lr.ph102.new
  %indvars.iv111 = phi i64 [ 0, %.lr.ph102.new ], [ %indvars.iv.next112.1, %.critedge ] ; 4 uses
  %niter166 = phi i64 [ 0, %.lr.ph102.new ], [ %niter166.next.1, %.critedge ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %indvars.iv111
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !32
  %i.dv = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.dw = add nsw i32 %.val73, %i.dv
  %i.dx = mul nsw i32 %i.dw, %.fr108
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.dy
  %i.ea = mul nsw i32 %i.du, %.fr108
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %.val82.pre, i64 %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dz, ptr align 8 %i.ec, i64 %i.ay, i1 false)
  %indvars.iv.next112 = or disjoint i64 %indvars.iv111, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %indvars.iv.next112
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !32
  %i.ef = trunc nuw nsw i64 %indvars.iv.next112 to i32
  %i.eg = add nsw i32 %.val73, %i.ef
  %i.eh = mul nsw i32 %i.eg, %.fr108
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %.val81.us, i64 %i.ei
  %i.ek = mul nsw i32 %i.ee, %.fr108
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.val82.pre, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ej, ptr align 8 %i.em, i64 %i.ay, i1 false)
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %niter166.next.1 = add i64 %niter166, 2         ; 2 uses
  %niter166.ncmp.1.not = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1.not, label %.critedge2.preheader.loopexit.unr-lcssa, label %.critedge, !llvm.loop !661

.lr.ph106.split:                                  ; preds = %.lr.ph106.split.preheader, %Gia_ManSimPatSimMiter.exit
  %.2105 = phi i32 [ %i.hz, %Gia_ManSimPatSimMiter.exit ], [ 0, %.lr.ph106.split.preheader ] ; 5 uses
  %.val72 = load i32, ptr %i.ag, align 4, !tbaa !30
  %.val71 = load i32, ptr %i.au, align 4, !tbaa !30
  %i.en = add i32 %.val72, %.2105
  %i.eo = add i32 %i.en, %.val71
  %i.ep = mul i32 %i.eo, %.fr108
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %.val81.us, i64 %i.eq ; 8 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !30  ; 4 uses
  %i.es = icmp sgt i32 %.val, 0
  br i1 %i.es, label %.lr.ph104, label %.critedge4

.lr.ph104:                                        ; preds = %.lr.ph106.split
  %.val77 = load ptr, ptr %i.bz, align 8, !tbaa !31 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter168 = and i64 %wide.trip.count, 1
  %i.et = icmp eq i32 %.val, 1
  br i1 %i.et, label %.epil.preheader167, label %.lr.ph104.new

.lr.ph104.new:                                    ; preds = %.lr.ph104
  %unroll_iter171 = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph104.new
  %indvars.iv114 = phi i64 [ 0, %.lr.ph104.new ], [ %indvars.iv.next115.1, %bb.g ] ; 4 uses
  %niter172 = phi i64 [ 0, %.lr.ph104.new ], [ %niter172.next.1, %bb.g ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv114
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !32
  %i.ew = mul nsw i32 %i.ev, %.fr108
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %indvars.iv114 to i32
  %i.fa = shl nuw i32 1, %i.ez
  %i.fb = and i32 %i.fa, %.2105
  %.not = icmp ne i32 %i.fb, 0
  %i.fc = sext i1 %.not to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ey, i8 %i.fc, i64 %i.cb, i1 false)
  %indvars.iv.next115 = or disjoint i64 %indvars.iv114, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv.next115
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !32
  %i.ff = mul nsw i32 %i.fe, %.fr108
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fg
  %i.fi = trunc nuw nsw i64 %indvars.iv.next115 to i32
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = and i32 %i.fj, %.2105
  %.not.1 = icmp ne i32 %i.fk, 0
  %i.fl = sext i1 %.not.1 to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fh, i8 %i.fl, i64 %i.cb, i1 false)
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %niter172.next.1 = add i64 %niter172, 2         ; 2 uses
  %niter172.ncmp.1 = icmp eq i64 %niter172.next.1, %unroll_iter171
  br i1 %niter172.ncmp.1, label %.critedge4.loopexit.unr-lcssa, label %bb.g, !llvm.loop !659

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.g
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.critedge4, label %.epil.preheader167

.epil.preheader167:                               ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph104
  %indvars.iv114.epil.init = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next115.1, %.critedge4.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod170 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv114.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32
  %i.fo = mul nsw i32 %i.fn, %.fr108
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fp
  %i.fr = trunc nuw nsw i64 %indvars.iv114.epil.init to i32
  %i.fs = shl nuw i32 1, %i.fr
  %i.ft = and i32 %i.fs, %.2105
  %.not.epil = icmp ne i32 %i.ft, 0
  %i.fu = sext i1 %.not.epil to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fq, i8 %i.fu, i64 %i.cb, i1 false)
  br label %.critedge4

.critedge4:                                       ; preds = %.epil.preheader167, %.critedge4.loopexit.unr-lcssa, %.lr.ph106.split
  tail call void @Gia_ManSimPatSimTfo(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef %i.af)
  %i.fv = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %.val.i = load i32, ptr %i.fw, align 4, !tbaa !30 ; 2 uses
  %i.fx = icmp sgt i32 %.val.i, 0
  br i1 %i.fx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge4
  %.val21.i = load ptr, ptr %i.cd, align 8, !tbaa !42
  %.not.i92 = icmp eq ptr %.val21.i, null
  br i1 %.not.i92, label %.critedge.i, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i
  %i.fy = getelementptr i8, ptr %i.fv, i64 8
  %.val22.val.i = load ptr, ptr %i.fy, align 8, !tbaa !31
  %.val20.i = load ptr, ptr %i.r, align 8, !tbaa !33 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  %i.fz = shl nsw i64 %i.eq, 3
  %scevgep135 = getelementptr i8, ptr %scevgep, i64 %i.fz ; 2 uses
  %scevgep136 = getelementptr i8, ptr %.val20.i, i64 %i.cg
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Abc_TtOrXor.exit.loopexit.i, %.lr.ph.split.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.i ], [ %indvars.iv.next.i, %Abc_TtOrXor.exit.loopexit.i ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.val22.val.i, i64 %indvars.iv.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !32
  %i.gc = mul nsw i32 %i.gb, %.fr108
  %i.gd = sext i32 %i.gc to i64                   ; 3 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %.val20.i, i64 %i.gd ; 5 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gd ; 5 uses
  br i1 %min.iters.check144, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.gg = shl nsw i64 %i.gd, 3                    ; 2 uses
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.gg
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.gg
  %bound0 = icmp ult ptr %i.er, %scevgep137
  %bound1 = icmp ult ptr %i.ge, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  %bound0140 = icmp ult ptr %i.er, %scevgep139
  %bound1141 = icmp ult ptr %i.gf, %scevgep135
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict, %found.conflict142
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.body147

vector.body147:                                   ; preds = %vector.memcheck, %vector.body147
  %index148 = phi i64 [ %index.next155, %vector.body147 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %index148 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load149 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !43, !alias.scope !662
  %wide.load150 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !43, !alias.scope !662
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %index148 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load151 = load <2 x i64>, ptr %i.gj, align 8, !tbaa !43, !alias.scope !665
  %wide.load152 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !43, !alias.scope !665
  %i.gl = xor <2 x i64> %wide.load151, %wide.load149
  %i.gm = xor <2 x i64> %wide.load152, %wide.load150
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index148 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %wide.load153 = load <2 x i64>, ptr %i.gn, align 8, !tbaa !43, !alias.scope !667, !noalias !669
  %wide.load154 = load <2 x i64>, ptr %i.go, align 8, !tbaa !43, !alias.scope !667, !noalias !669
  %i.gp = or <2 x i64> %wide.load153, %i.gl
  %i.gq = or <2 x i64> %wide.load154, %i.gm
  store <2 x i64> %i.gp, ptr %i.gn, align 8, !tbaa !43, !alias.scope !667, !noalias !669
  store <2 x i64> %i.gq, ptr %i.go, align 8, !tbaa !43, !alias.scope !667, !noalias !669
  %index.next155 = add nuw i64 %index148, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next155, %n.vec146
  br i1 %i.gr, label %middle.block156, label %vector.body147, !llvm.loop !670

middle.block156:                                  ; preds = %vector.body147
  br i1 %cmp.n157, label %Abc_TtOrXor.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block156
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec146, %middle.block156 ] ; 6 uses
  br i1 %lcmp.mod174.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.i.ph
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !43
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i.i.ph
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !43
  %i.gw = xor i64 %i.gv, %i.gt
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !43
  %i.gz = or i64 %i.gy, %i.gw
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !43
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ha = icmp eq i64 %indvars.iv.i.i.ph, %i.ch
  br i1 %i.ha, label %Abc_TtOrXor.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.i
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !43
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i.i
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !43
  %i.hf = xor i64 %i.he, %i.hc
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i.i ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !43
  %i.hi = or i64 %i.hh, %i.hf
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !43
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !43
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next.i.i
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !43
  %i.hn = xor i64 %i.hm, %i.hk
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.next.i.i ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !43
  %i.hq = or i64 %i.hp, %i.hn
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !43
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %Abc_TtOrXor.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !671

Abc_TtOrXor.exit.loopexit.i:                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block156
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.preheader.i.i, !llvm.loop !655

.critedge.i:                                      ; preds = %Abc_TtOrXor.exit.loopexit.i, %.lr.ph.i, %.critedge4
  br i1 %i.cf, label %.lr.ph.i25.i.preheader, label %Gia_ManSimPatSimMiter.exit

.lr.ph.i25.i.preheader:                           ; preds = %.critedge.i
  br i1 %min.iters.check, label %.lr.ph.i25.i.preheader159, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i25.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i25.i.preheader ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.hr, align 8, !tbaa !43
  %wide.load134 = load <2 x i64>, ptr %i.hs, align 8, !tbaa !43
  %i.ht = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.hu = xor <2 x i64> %wide.load134, splat (i64 -1)
  store <2 x i64> %i.ht, ptr %i.hr, align 8, !tbaa !43
  store <2 x i64> %i.hu, ptr %i.hs, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Gia_ManSimPatSimMiter.exit, label %.lr.ph.i25.i.preheader159

.lr.ph.i25.i.preheader159:                        ; preds = %.lr.ph.i25.i.preheader, %middle.block
  %indvars.iv.i26.i.ph = phi i64 [ 0, %.lr.ph.i25.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i.preheader159, %.lr.ph.i25.i
  %indvars.iv.i26.i = phi i64 [ %indvars.iv.next.i27.i, %.lr.ph.i25.i ], [ %indvars.iv.i26.i.ph, %.lr.ph.i25.i.preheader159 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i26.i ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !43
  %i.hy = xor i64 %i.hx, -1
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !43
  %indvars.iv.next.i27.i = add nuw nsw i64 %indvars.iv.i26.i, 1 ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %indvars.iv.next.i27.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i28.i, label %Gia_ManSimPatSimMiter.exit, label %.lr.ph.i25.i, !llvm.loop !673

Gia_ManSimPatSimMiter.exit:                       ; preds = %.lr.ph.i25.i, %middle.block, %.critedge.i
  %i.hz = add nuw nsw i32 %.2105, 1               ; 2 uses
  %exitcond117.not = icmp eq i32 %i.hz, %smax123
  br i1 %exitcond117.not, label %.critedge2._crit_edge, label %.lr.ph106.split, !llvm.loop !660

.critedge2._crit_edge:                            ; preds = %Gia_ManSimPatSimMiter.exit, %Gia_ManSimPatSimMiter.exit.us, %.critedge2.preheader
  tail call void @Extra_BitMatrixTransposeP(ptr noundef nonnull %i.u, i32 noundef %.fr108, ptr noundef nonnull %i.aa, i32 noundef 1) #35
  %i.ia = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !31 ; 2 uses
  %.not.i93 = icmp eq ptr %i.ib, null
  br i1 %.not.i93, label %Vec_IntFree.exit, label %bb.h

bb.h:                                             ; preds = %.critedge2._crit_edge
  tail call void @free(ptr noundef nonnull %i.ib) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2._crit_edge, %bb.h
  tail call void @free(ptr noundef nonnull %i.af) #35
  %.not.i94 = icmp eq ptr %i.p, null
  br i1 %.not.i94, label %Vec_WrdFree.exit, label %bb.i

bb.i:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.p) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_IntFree.exit, %bb.i
  tail call void @free(ptr noundef nonnull %i.i) #35
  %i.ic = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %.not.i95 = icmp eq ptr %i.ic, null
  br i1 %.not.i95, label %Vec_WrdFree.exit96, label %bb.j

bb.j:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.ic) #35
  br label %Vec_WrdFree.exit96

Vec_WrdFree.exit96:                               ; preds = %Vec_WrdFree.exit, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #35
  ret ptr %i.aa
}

declare void @Extra_BitMatrixTransposeP(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManRelDeriveSims(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val53 = load i32, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.b = shl nuw i32 1, %.val53                   ; 6 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.b, i32 16)
  %i.c = sext i32 %spec.store.select.i.i to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #34 ; 4 uses
  %i.f = sext i32 %i.b to i64
  %i.g = shl nsw i64 %i.f, 3                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, i8 -1, i64 %i.g, i1 false)
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.d) #34 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, i8 -1, i64 %i.g, i1 false)
  %i.i = getelementptr i8, ptr %0, i64 64
  %.val56 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr i8, ptr %.val56, i64 4
  %.val56.val = load i32, ptr %i.j, align 4, !tbaa !30 ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 4
  %.val49 = load i32, ptr %i.k, align 4, !tbaa !30
  %i.l = add nsw i32 %.val49, %.val53             ; 2 uses
  %i.m = sub nsw i32 64, %.val53
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 -1, %i.n
  %i.p = sub nsw i32 64, %i.l
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 -1, %i.q
  %.not86 = icmp eq i32 %.val56.val, 31
  br i1 %.not86, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = shl nuw nsw i32 1, %.val56.val
  %i.t = getelementptr i8, ptr %5, i64 8
  %.val61 = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.u = zext nneg i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %.not87 = icmp eq i32 %.val53, 31               ; 2 uses
  br i1 %.not87, label %._crit_edge, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %.preheader
  %min.iters.check = icmp slt i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph83.preheader
  %i.v = and i32 %i.b, 2147483644
  %n.vec = zext nneg i32 %i.v to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi110 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !43
  %wide.load111 = load <2 x i64>, ptr %i.x, align 8, !tbaa !43
  %i.y = icmp ne <2 x i64> %wide.load, splat (i64 -1)
  %i.z = icmp ne <2 x i64> %wide.load111, splat (i64 -1)
  %i.aa = zext <2 x i1> %i.y to <2 x i32>
  %i.ab = zext <2 x i1> %i.z to <2 x i32>
  %i.ac = add <2 x i32> %vec.phi, %i.aa           ; 2 uses
  %i.ad = add <2 x i32> %vec.phi110, %i.ab        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ad, %i.ac
  %i.af = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !43 ; 3 uses
  %i.ai = and i64 %i.ah, %i.r
  %sext = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = and i64 %i.ah, %i.o
  %sext79 = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext79, 32              ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.al
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !43
  %i.an = lshr i64 %i.ah, %i.u
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.al ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43
  %i.aq = and i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !675

.lr.ph83:                                         ; preds = %.lr.ph83.preheader
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !43
  %.not48 = icmp ne i64 %i.ar, -1
  %i.as = zext i1 %.not48 to i32                  ; 2 uses
  %exitcond95.not = icmp slt i32 %i.b, 2
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph83.1

.lr.ph83.1:                                       ; preds = %.lr.ph83
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !43
  %.not48.1 = icmp ne i64 %i.au, -1
  %i.av = zext i1 %.not48.1 to i32
  %spec.select.1 = add nuw nsw i32 %i.as, %i.av   ; 2 uses
  %exitcond95.not.1 = icmp eq i32 %.val53, 1
  br i1 %exitcond95.not.1, label %._crit_edge, label %.lr.ph83.2

.lr.ph83.2:                                       ; preds = %.lr.ph83.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !43
  %.not48.2 = icmp ne i64 %i.ax, -1
  %i.ay = zext i1 %.not48.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.ay
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph83, %.lr.ph83.1, %.lr.ph83.2, %middle.block, %.preheader
  %.045.lcssa = phi i32 [ 0, %.preheader ], [ %i.af, %middle.block ], [ %i.as, %.lr.ph83 ], [ %spec.select.1, %.lr.ph83.1 ], [ %spec.select.2, %.lr.ph83.2 ] ; 2 uses
  %i.az = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.ba = add nsw i32 %.045.lcssa, -1
  %or.cond.i = icmp ult i32 %i.ba, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.045.lcssa ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !39
  store i32 %spec.store.select.i, ptr %i.az, align 8, !tbaa !41
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bc = sext i32 %spec.store.select.i to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #34
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %._crit_edge, %bb.c
  %i.bf = phi ptr [ %i.be, %bb.c ], [ null, %._crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !33
  store ptr %i.az, ptr %6, align 8, !tbaa !259
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !39
  store i32 %spec.store.select.i, ptr %i.bh, align 8, !tbaa !41
  br i1 %.not.i, label %Vec_WrdAlloc.exit67, label %bb.d

bb.d:                                             ; preds = %Vec_WrdAlloc.exit
  %i.bj = sext i32 %spec.store.select.i to i64
  %i.bk = shl nsw i64 %i.bj, 3
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bk) #34
  br label %Vec_WrdAlloc.exit67

Vec_WrdAlloc.exit67:                              ; preds = %Vec_WrdAlloc.exit, %bb.d
  %i.bm = phi ptr [ %i.bl, %bb.d ], [ null, %Vec_WrdAlloc.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !33
  store ptr %i.bh, ptr %7, align 8, !tbaa !259
  br i1 %.not87, label %Vec_WrdFree.exit, label %.lr.ph85.preheader
end_hunk_3
