inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@processXmlDecl:bb.a
  br label %accountingOnAbort.exit

accountingOnAbort.exit:                           ; preds = %poolAppend.exit.thread.i91, %bb.ag, %poolAppend.exit.i93, %poolAppend.exit.thread.i, %bb.x, %poolAppend.exit.i, %accountingGetCurrentAmplification.exit.i.i, %getRootParserOf.exit.i.i, %poolClear.exit108, %bb.ba, %bb.av, %bb.az, %poolClear.exit, %poolStoreString.exit99, %poolStoreString.exit, %bb.l, %bb.ar
  %.1 = phi i32 [ 19, %bb.ar ], [ %i.gc, %poolClear.exit ], [ 1, %poolStoreString.exit99 ], [ 1, %poolStoreString.exit ], [ 0, %poolClear.exit108 ], [ %., %bb.l ], [ 1, %bb.av ], [ 18, %bb.az ], [ 0, %bb.ba ], [ 43, %getRootParserOf.exit.i.i ], [ 43, %accountingGetCurrentAmplification.exit.i.i ], [ 1, %poolAppend.exit.thread.i ], [ 1, %poolAppend.exit.i ], [ 1, %bb.x ], [ 1, %poolAppend.exit.i93 ], [ 1, %bb.ag ], [ 1, %poolAppend.exit.thread.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @poolStoreString(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %0)
  %.not14.i = icmp eq i8 %i.d, 0
  br i1 %.not14.i, label %poolAppend.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %1, i64 112
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.i = call i32 %i.g(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef %i.h) #22, !inline_history !262
  %or.cond.i = icmp ult i32 %i.i, 2
  br i1 %or.cond.i, label %poolAppend.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %0)
  %.not15.i = icmp eq i8 %i.j, 0
  br i1 %.not15.i, label %poolAppend.exit.thread, label %bb.d

poolAppend.exit.thread:                           ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

poolAppend.exit:                                  ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %poolAppend.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %0)
  %.not10 = icmp eq i8 %i.p, 0
  br i1 %.not10, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !149
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.f ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.b, align 8, !tbaa !149
  store i8 0, ptr %i.q, align 1, !tbaa !10
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !152
  br label %bb.i

bb.i:                                             ; preds = %poolAppend.exit.thread, %bb.g, %poolAppend.exit, %bb.h
  %.0 = phi ptr [ %i.s, %bb.h ], [ null, %poolAppend.exit ], [ null, %bb.g ], [ null, %poolAppend.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lookup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 0, 65) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not167 = icmp eq i64 %3, 0
  br i1 %.not167, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8
  store i8 6, ptr %i.d, align 8, !tbaa !60
  store i64 64, ptr %i.a, align 8, !tbaa !105
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = tail call fastcc ptr @expat_malloc(ptr noundef %i.f, i64 noundef 512, i32 noundef 7845) ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !62
  %.not168 = icmp eq ptr %i.g, null
  br i1 %.not168, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.a, align 8, !tbaa !105
  br label %.thread

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.g, i8 0, i64 512, i1 false)
  %i.h = tail call fastcc i64 @hash(ptr noundef %0, ptr noundef %2)
  %i.i = load i64, ptr %i.a, align 8, !tbaa !105
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, %i.h
  br label %keyeq.exit

bb.f:                                             ; preds = %bb.a
  %i.l = tail call fastcc i64 @hash(ptr noundef %0, ptr noundef %2) ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %i.o = and i64 %i.n, %i.l                       ; 3 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not184 = icmp eq ptr %i.r, null
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = load i8, ptr %2, align 1, !tbaa !10      ; 2 uses
  %i.t = sub i64 0, %i.m
  %i.u = and i64 %i.l, %i.t
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = lshr i64 %i.n, 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.at, %bb.j ] ; 2 uses
  %.1128186 = phi i64 [ %i.o, %.lr.ph ], [ %.2129, %bb.j ] ; 2 uses
  %.0139185 = phi i8 [ 0, %.lr.ph ], [ %.1140, %bb.j ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = icmp eq i8 %i.s, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ab = phi i8 [ %i.af, %bb.h ], [ %i.s, %bb.g ]
  %.09.i = phi ptr [ %i.ae, %bb.h ], [ %i.y, %bb.g ]
  %.058.i = phi ptr [ %i.ad, %bb.h ], [ %2, %bb.g ]
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr i8, ptr %.058.i, i64 1    ; 2 uses
  %i.ae = getelementptr i8, ptr %.09.i, i64 1     ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !10  ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ah = icmp eq i8 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !llvm.loop !162

.loopexit:                                        ; preds = %bb.h, %bb.g
  %.not166 = icmp eq i8 %.0139185, 0
  br i1 %.not166, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.ai = load i8, ptr %i.v, align 8, !tbaa !60
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 4294967295
  %i.al = and i64 %i.ak, 4294967295
  %i.am = lshr i64 %i.u, %i.al
  %i.an = and i64 %i.am, %i.w
  %i.ao = trunc i64 %i.an to i8
  %i.ap = or i8 %i.ao, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.1140 = phi i8 [ %.0139185, %.loopexit ], [ %i.ap, %bb.i ] ; 2 uses
  %i.aq = zext i8 %.1140 to i64                   ; 2 uses
  %i.ar = icmp ult i64 %.1128186, %i.aq
  %.2129.p.v = select i1 %i.ar, i64 %i.m, i64 0
  %.2129.p = sub i64 %.1128186, %i.aq
  %.2129 = add i64 %.2129.p, %.2129.p.v           ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.p, i64 %.2129
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.j, %bb.f
  %.1128.lcssa = phi i64 [ %i.o, %bb.f ], [ %.2129, %bb.j ]
  %.not157 = icmp eq i64 %3, 0
  br i1 %.not157, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.au = getelementptr i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !112
  %i.aw = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !60  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 4294967295
  %4 = and i64 %i.az, 4294967295
  %i.ba = lshr i64 %i.av, %4
  %.not158 = icmp eq i64 %i.ba, 0
  br i1 %.not158, label %keyeq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add i8 %i.ax, 1                         ; 5 uses
  %i.bc = icmp ugt i8 %i.bb, 63
  br i1 %i.bc, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.be = zext nneg i8 %i.bb to i64               ; 2 uses
  %i.bf = shl nuw i64 1, %i.be                    ; 6 uses
  %i.bg = add i64 %i.bf, -1                       ; 4 uses
  %i.bh = icmp samesign ugt i8 %i.bb, 60
  br i1 %i.bh, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = shl nuw i64 8, %i.be                    ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !63
  %i.bl = tail call fastcc ptr @expat_malloc(ptr noundef %i.bk, i64 noundef %i.bi, i32 noundef 7885) ; 8 uses
  %.not159.not = icmp eq ptr %i.bl, null
  br i1 %.not159.not, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i8 0, i64 %i.bi, i1 false)
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %.not205 = icmp eq i64 %i.bm, 0
  br i1 %.not205, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.o
  %i.bn = sub i64 0, %i.bf
  %i.bo = add nsw i32 %i.bd, -1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 %i.bg, 2
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph196, %bb.s
  %i.br = phi i64 [ %i.bm, %.lr.ph196 ], [ %i.cn, %bb.s ]
  %.3130194 = phi i64 [ 0, %.lr.ph196 ], [ %i.co, %bb.s ] ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !62
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.3130194
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %.not162 = icmp eq ptr %i.bu, null
  br i1 %.not162, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !160
  %i.bw = tail call fastcc i64 @hash(ptr noundef %0, ptr noundef %i.bv) ; 2 uses
  %i.bx = and i64 %i.bw, %i.bg                    ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.bl, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46
  %.not163187 = icmp eq ptr %i.bz, null
  br i1 %.not163187, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.q
  %i.ca = and i64 %i.bw, %i.bn
  %i.cb = lshr i64 %i.ca, %i.bp
  %i.cc = and i64 %i.cb, %i.bq
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = or i8 %i.cd, 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph191, %bb.r
  %.0189 = phi i64 [ %i.bx, %.lr.ph191 ], [ %.1, %bb.r ] ; 2 uses
  %.2141188 = phi i8 [ 0, %.lr.ph191 ], [ %spec.select, %bb.r ] ; 2 uses
  %.not164 = icmp eq i8 %.2141188, 0
  %spec.select = select i1 %.not164, i8 %i.ce, i8 %.2141188 ; 2 uses
  %i.cf = zext i8 %spec.select to i64             ; 2 uses
  %i.cg = icmp ult i64 %.0189, %i.cf
  %.1.p.v = select i1 %i.cg, i64 %i.bf, i64 0
  %.1.p = sub i64 %.0189, %i.cf
  %.1 = add i64 %.1.p, %.1.p.v                    ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.bl, i64 %.1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46
  %.not163 = icmp eq ptr %i.ci, null
  br i1 %.not163, label %._crit_edge192, label %bb.r, !llvm.loop !304

._crit_edge192:                                   ; preds = %bb.r, %bb.q
  %.0.lcssa = phi i64 [ %i.bx, %bb.q ], [ %.1, %bb.r ]
  %i.cj = getelementptr [8 x i8], ptr %i.bl, i64 %.0.lcssa
  %i.ck = load ptr, ptr %1, align 8, !tbaa !62
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %.3130194
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !46
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !46
  %.pre = load i64, ptr %i.a, align 8, !tbaa !105
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %._crit_edge192
  %i.cn = phi i64 [ %i.br, %bb.p ], [ %.pre, %._crit_edge192 ] ; 2 uses
  %i.co = add nuw i64 %.3130194, 1                ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  br i1 %i.cp, label %bb.p, label %._crit_edge197, !llvm.loop !305

._crit_edge197:                                   ; preds = %bb.s, %bb.o
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !63
  %i.cr = load ptr, ptr %1, align 8, !tbaa !62
  tail call fastcc void @expat_free(ptr noundef %i.cq, ptr noundef %i.cr, i32 noundef 7901)
  store ptr %i.bl, ptr %1, align 8, !tbaa !62
  store i8 %i.bb, ptr %i.aw, align 8, !tbaa !60
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !105
  %i.cs = and i64 %i.bg, %i.l                     ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.bl, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46
  %.not160198 = icmp eq ptr %i.cu, null
  br i1 %.not160198, label %keyeq.exit, label %.lr.ph202

.lr.ph202:                                        ; preds = %._crit_edge197
  %i.cv = sub i64 0, %i.bf
  %i.cw = and i64 %i.l, %i.cv
  %i.cx = add nsw i32 %i.bd, -1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 %i.cw, %i.cy
  %i.da = lshr i64 %i.bg, 2
  %i.db = and i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i8
  %i.dd = or i8 %i.dc, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph202, %bb.t
  %.4131200 = phi i64 [ %i.cs, %.lr.ph202 ], [ %.5132, %bb.t ] ; 2 uses
  %.4143199 = phi i8 [ 0, %.lr.ph202 ], [ %spec.select204, %bb.t ] ; 2 uses
  %.not161 = icmp eq i8 %.4143199, 0
  %spec.select204 = select i1 %.not161, i8 %i.dd, i8 %.4143199 ; 2 uses
  %i.de = zext i8 %spec.select204 to i64          ; 2 uses
  %i.df = icmp ult i64 %.4131200, %i.de
  %.5132.p.v = select i1 %i.df, i64 %i.bf, i64 0
  %.5132.p = sub i64 %.4131200, %i.de
  %.5132 = add i64 %.5132.p, %.5132.p.v           ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.bl, i64 %.5132
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !46
  %.not160 = icmp eq ptr %i.dh, null
  br i1 %.not160, label %keyeq.exit, label %bb.t, !llvm.loop !306

keyeq.exit:                                       ; preds = %bb.t, %._crit_edge197, %bb.k, %bb.e
  %.11 = phi i64 [ %i.k, %bb.e ], [ %.1128.lcssa, %bb.k ], [ %i.cs, %._crit_edge197 ], [ %.5132, %bb.t ] ; 3 uses
  %i.di = getelementptr i8, ptr %1, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.dk = tail call fastcc ptr @expat_malloc(ptr noundef %i.dj, i64 noundef %3, i32 noundef 7914)
  %i.dl = load ptr, ptr %1, align 8, !tbaa !62
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %.11
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !46
  %i.dn = load ptr, ptr %1, align 8, !tbaa !62
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %.11
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46 ; 2 uses
  %.not169 = icmp eq ptr %i.dp, null
  br i1 %.not169, label %.thread, label %bb.u

bb.u:                                             ; preds = %keyeq.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 0, i64 %3, i1 false)
  %i.dq = load ptr, ptr %1, align 8, !tbaa !62
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.11 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !46
  store ptr %2, ptr %i.ds, align 8, !tbaa !160
  %i.dt = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !112
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !112
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i, %bb.n, %bb.m, %bb.l, %._crit_edge, %bb.b, %bb.d, %keyeq.exit, %bb.u
  %.6 = phi ptr [ %i.dw, %bb.u ], [ null, %bb.b ], [ null, %keyeq.exit ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.m ], [ null, %._crit_edge ], [ %i.x, %.lr.ph.i ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define internal i32 @contentProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %.not = icmp ne ptr %i.b, null
  %i.c = zext i1 %.not to i32
  %i.d = getelementptr i8, ptr %0, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.f = getelementptr i8, ptr %0, i64 956
  %i.g = load i8, ptr %i.f, align 4, !tbaa !220
  %.not10 = icmp eq i8 %i.g, 0
  %i.h = zext i1 %.not10 to i8
  %i.i = tail call fastcc i32 @doContent(ptr noundef %0, i32 noundef %i.c, ptr noundef %i.e, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %i.h, i32 noundef 0) ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %storeRawNames.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 736
  %.04763.i = load ptr, ptr %i.k, align 8, !tbaa !307 ; 2 uses
  %.not64.i = icmp eq ptr %.04763.i, null
  br i1 %.not64.i, label %storeRawNames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.k
  %.04765.i = phi ptr [ %.047.i, %bb.k ], [ %.04763.i, %bb.b ] ; 8 uses
  %i.l = getelementptr i8, ptr %.04765.i, i64 24  ; 2 uses
  %i.m = getelementptr i8, ptr %.04765.i, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !308
  %i.o = add i32 %i.n, 1
  %i.p = sext i32 %i.o to i64                     ; 4 uses
  %i.q = getelementptr i8, ptr %.04765.i, i64 64  ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10   ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.p     ; 2 uses
  %i.t = getelementptr i8, ptr %.04765.i, i64 8   ; 3 uses
end_hunk_0
