Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@saveCursorKey:bb.a

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ae(ptr noundef nonnull %i.ad) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.j:                                             ; preds = %bb.f
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.af(ptr noundef nonnull %i.k) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.j, %bb.i, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 7, %bb.c ], [ %i.n, %sqlite3_mutex_enter.exit.i ], [ %i.n, %bb.i ], [ %i.n, %bb.j ]
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @getCellInfo(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1990
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !756
  %i.g = or i8 %i.f, 2
  store i8 %i.g, ptr %i.e, align 1, !tbaa !756
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !857  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.k = load i16, ptr %i.j, align 2, !tbaa !861
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1608
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 26
  %i.r = load i16, ptr %i.q, align 2, !tbaa !859
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !860
  %i.v = shl nuw nsw i64 %i.l, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !231
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.z, %i.ac
  %i.ae = and i64 %i.ad, %i.s
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ae
  tail call void %i.n(ptr noundef %i.i, ptr noundef %i.af, ptr noundef nonnull %i.d) #58, !inline_history !1991
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @accessPayload(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !857  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1013 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.i = load i16, ptr %i.h, align 2, !tbaa !861
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1613
  %.not = icmp ult i16 %i.i, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78370, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @getCellInfo(ptr noundef nonnull %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !868  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !667
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !761
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.v = load i16, ptr %i.u, align 4, !tbaa !866
  %i.w = zext i16 %i.v to i32                     ; 5 uses
  %i.x = sub i32 %i.t, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.r, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78385, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %bb.bm

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp ult i32 %1, %i.w
  br i1 %i.aa, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %2, %1
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = sub nuw nsw i32 %i.w, %1
  %spec.select = select i1 %i.ac, i32 %i.ad, i32 %2 ; 4 uses
  %i.ae = zext nneg i32 %1 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !698 ; 6 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !531 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !530
  %i.am = and i16 %i.al, 4
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !684
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !536
  %.not13.i.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not13.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !671
  %.not15.i.i = icmp eq i32 %i.as, 0
  br i1 %.not15.i.i, label %sqlite3PagerWrite.exit.thread17.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ah), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !686 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.av, 0
  br i1 %.not14.i.i, label %bb.l, label %copyPayload.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !687
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !83
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp ugt i32 %i.ax, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ah), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bd = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.ah), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i

sqlite3PagerWrite.exit.i:                         ; preds = %bb.n, %bb.m, %bb.j
  %.0.i.i = phi i32 [ %i.at, %bb.j ], [ %i.bd, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %.not12.not.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not12.not.i, label %sqlite3PagerWrite.exit.thread17.i, label %copyPayload.exit

sqlite3PagerWrite.exit.thread17.i:                ; preds = %sqlite3PagerWrite.exit.i, %bb.i
  %i.be = sext i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %3, i64 %i.be, i1 false)
  br label %copyPayload.exit

bb.o:                                             ; preds = %bb.f
  %i.bf = sext i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.af, i64 %i.bf, i1 false)
  br label %copyPayload.exit

copyPayload.exit:                                 ; preds = %bb.k, %sqlite3PagerWrite.exit.i, %sqlite3PagerWrite.exit.thread17.i, %bb.o
  %.1.i = phi i32 [ 0, %bb.o ], [ 0, %sqlite3PagerWrite.exit.thread17.i ], [ %.0.i.i, %sqlite3PagerWrite.exit.i ], [ %i.av, %bb.k ]
  %i.bg = sext i32 %spec.select to i64
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  %i.bi = sub i32 %2, %spec.select
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.bj = sub nuw i32 %1, %i.w
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %copyPayload.exit
  %.0166 = phi ptr [ %i.bh, %copyPayload.exit ], [ %3, %bb.p ]
  %.0155 = phi i32 [ %.1.i, %copyPayload.exit ], [ 0, %bb.p ] ; 2 uses
  %.0138 = phi i32 [ %i.bi, %copyPayload.exit ], [ %2, %bb.p ] ; 4 uses
  %.0130 = phi i32 [ 0, %copyPayload.exit ], [ %i.bj, %bb.p ] ; 4 uses
  %i.bk = icmp eq i32 %.0155, 0
  %i.bl = icmp ne i32 %.0138, 0
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.r, label %bb.bk

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %i.s, align 8, !tbaa !761
  %i.bn = add i32 %i.bm, -4                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.bo = load i16, ptr %i.u, align 4, !tbaa !866
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bp ; 4 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !231
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !231
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = or disjoint i32 %i.bx, %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !231
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %i.cd = or disjoint i32 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !231
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg            ; 3 uses
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !756
  %i.ck = and i8 %i.cj, 4
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !865
  %i.co = zext i32 %i.cn to i64
  %i.cp = zext i32 %i.bn to i64                   ; 2 uses
  %i.cq = xor i64 %i.bp, -1
  %i.cr = add nsw i64 %i.cq, %i.cp
  %i.cs = add nsw i64 %i.cr, %i.co
  %i.ct = sdiv i64 %i.cs, %i.cp                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1993 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = shl nsw i64 %i.ct, 2                    ; 2 uses
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.cz = tail call i32 %i.cy(ptr noundef nonnull %i.cv) #58, !inline_history !275
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp sgt i64 %i.cx, %i.da
  br i1 %i.db, label %bb.u, label %..critedge193_crit_edge

..critedge193_crit_edge:                          ; preds = %bb.t
  %.pre = load ptr, ptr %i.cu, align 8, !tbaa !1993
  br label %.critedge193

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i198 = icmp eq ptr %i.dc, null
  br i1 %.not.i198, label %sqlite3FaultSim.exit.thread, label %sqlite3FaultSim.exit

sqlite3FaultSim.exit:                             ; preds = %bb.u
  %i.dd = tail call i32 %i.dc(i32 noundef 413) #58, !inline_history !731
  %.not182.a = icmp eq i32 %i.dd, 0
  br i1 %.not182.a, label %sqlite3FaultSim.exit.thread, label %.critedge.thread

sqlite3FaultSim.exit.thread:                      ; preds = %bb.u, %sqlite3FaultSim.exit
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !1993
  %i.df = shl nsw i64 %i.ct, 3
  %i.dg = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.de, i64 noundef %i.df) ; 3 uses
  %.not183.a = icmp eq ptr %i.dg, null
  br i1 %.not183.a, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %sqlite3FaultSim.exit.thread
  store ptr %i.dg, ptr %i.cu, align 8, !tbaa !1993
  %.pre249 = shl nsw i64 %i.ct, 2
  br label %.critedge193

.critedge193:                                     ; preds = %..critedge193_crit_edge, %bb.v
  %.pre-phi = phi i64 [ %i.cx, %..critedge193_crit_edge ], [ %.pre249, %bb.v ]
  %i.dh = phi ptr [ %.pre, %..critedge193_crit_edge ], [ %i.dg, %bb.v ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.pre-phi, i1 false)
  %i.di = load i8, ptr %i.ci, align 1, !tbaa !756
  %i.dj = or i8 %i.di, 4
  store i8 %i.dj, ptr %i.ci, align 1, !tbaa !756
  br label %bb.y

bb.w:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1993 ; 2 uses
  %i.dm = udiv i32 %.0130, %i.bn                  ; 3 uses
  %i.dn = urem i32 %.0130, %i.bn
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !27
  %.not181 = icmp eq i32 %i.dq, 0
  br i1 %.not181, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = sext i32 %i.dm to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !27 ; 2 uses
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !27
  %i.du = sext i32 %i.dm to i64
  br label %bb.y

bb.y:                                             ; preds = %.critedge193, %bb.w, %bb.x
  %i.dv = phi i32 [ %i.ch, %.critedge193 ], [ %i.dt, %bb.x ], [ %i.ch, %bb.w ] ; 2 uses
  %.0153 = phi i64 [ 0, %.critedge193 ], [ %i.du, %bb.x ], [ 0, %bb.w ]
  %.1131 = phi i32 [ %.0130, %.critedge193 ], [ %i.dn, %bb.x ], [ %.0130, %bb.w ]
  %.not184236 = icmp eq i32 %i.dv, 0
  br i1 %.not184236, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = icmp eq i32 %4, 0                       ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ea = select i1 %i.dy, i32 2, i32 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.bj
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %.not184.a = icmp eq i32 %i.eb, 0
  br i1 %.not184.a, label %.critedge, label %bb.aa, !llvm.loop !1994

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %.0153, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.ec = phi i32 [ %i.dv, %.lr.ph ], [ %i.eb, %bb.z ] ; 6 uses
  %.2132242 = phi i32 [ %.1131, %.lr.ph ], [ %.7137, %bb.z ] ; 7 uses
  %.1139241 = phi i32 [ %.0138, %.lr.ph ], [ %.3141, %bb.z ] ; 4 uses
  %.1167237 = phi ptr [ %.0166, %.lr.ph ], [ %.3169, %bb.z ] ; 5 uses
  %i.ed = load i32, ptr %i.dw, align 8, !tbaa !676
  %i.ee = icmp ugt i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78458, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.critedge.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !1993
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv ; 2 uses
  store i32 %i.ec, ptr %i.eg, align 4, !tbaa !27
  %.not185.a = icmp ult i32 %.2132242, %i.bn
  br i1 %.not185.a, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !27 ; 2 uses
  %.not191.a = icmp eq i32 %i.ei, 0
  br i1 %.not191.a, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ei, ptr %i.b, align 4, !tbaa !27
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ej = call fastcc i32 @getOverflowPage(ptr noundef nonnull %i.g, i32 noundef %i.ec, ptr noundef null, ptr noundef %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2157 = phi i32 [ 0, %bb.ae ], [ %i.ej, %bb.af ]
  %i.ek = sub nuw i32 %.2132242, %i.bn
  br label %bb.bj

bb.ah:                                            ; preds = %bb.ac
  %i.el = add i32 %.2132242, %.1139241
  %i.em = icmp ugt i32 %i.el, %i.bn
  %i.en = sub nuw i32 %i.bn, %.2132242
  %spec.select194 = select i1 %i.em, i32 %i.en, i32 %.1139241 ; 5 uses
  %i.eo = icmp eq i32 %.2132242, 0
  %or.cond7 = select i1 %i.dy, i1 %i.eo, i1 false
  br i1 %or.cond7, label %bb.ai, label %sqlite3PagerDirectReadOk.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !77  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !535 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !483 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %sqlite3PagerDirectReadOk.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 288
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !92
  %.val.i = load ptr, ptr %i.ev, align 8, !tbaa !1530
  %.not11.i = icmp eq ptr %.val.i, null
  br i1 %.not11.i, label %bb.ak, label %sqlite3PagerDirectReadOk.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 296
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !585 ; 2 uses
  %.not9.i = icmp eq ptr %i.ex, null
  br i1 %.not9.i, label %sqlite3PagerDirectReadOk.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.ey = call fastcc i32 @walFindFrame(ptr noundef nonnull %i.ex, i32 noundef %i.ec, ptr noundef nonnull %i.a), !inline_history !1995 ; 0 uses
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !27
  %.not10.not.i = icmp eq i32 %i.ez, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br i1 %.not10.not.i, label %._crit_edge.i, label %sqlite3PagerDirectReadOk.exit.thread

._crit_edge.i:                                    ; preds = %bb.al
  %.pre.i = load ptr, ptr %i.eq, align 8, !tbaa !535 ; 2 uses
  %.pre12.i = load ptr, ptr %.pre.i, align 8, !tbaa !483
  br label %sqlite3PagerDirectReadOk.exit

sqlite3PagerDirectReadOk.exit:                    ; preds = %bb.ak, %._crit_edge.i
  %i.fa = phi ptr [ %.pre12.i, %._crit_edge.i ], [ %i.es, %bb.ak ]
  %i.fb = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.er, %bb.ak ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1692
  %i.fe = call i32 %i.fd(ptr noundef nonnull %i.fb) #58, !inline_history !1996
  %i.ff = and i32 %i.fe, 32768
  %.not186.a = icmp eq i32 %i.ff, 0
  br i1 %.not186.a, label %sqlite3PagerDirectReadOk.exit.thread, label %bb.am

bb.am:                                            ; preds = %sqlite3PagerDirectReadOk.exit
  %i.fg = getelementptr inbounds i8, ptr %.1167237, i64 -4 ; 5 uses
  %.not187 = icmp ult ptr %i.fg, %3
  br i1 %.not187, label %sqlite3PagerDirectReadOk.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.fi = getelementptr i8, ptr %i.fh, i64 72
  %.val196.a = load ptr, ptr %i.fi, align 8, !tbaa !535 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.fg, align 1
  %i.fj = add nsw i32 %spec.select194, 4
  %i.fk = load i32, ptr %i.dz, align 4, !tbaa !135
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add i32 %i.ec, -1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = mul nuw nsw i64 %i.fl, %i.fn
  %i.fp = load ptr, ptr %.val196.a, align 8, !tbaa !483
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1634
  %i.fs = call i32 %i.fr(ptr noundef nonnull %.val196.a, ptr noundef nonnull %i.fg, i32 noundef %i.fj, i64 noundef %i.fo) #58, !inline_history !1642
  %i.ft = load i32, ptr %i.fg, align 1
  %i.fu = call i32 @llvm.bswap.i32(i32 %i.ft)
  store i32 %i.fu, ptr %i.b, align 4, !tbaa !27
  store i32 %.sroa.0.0.copyload, ptr %i.fg, align 1
  br label %bb.bh

sqlite3PagerDirectReadOk.exit.thread:             ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %sqlite3PagerDirectReadOk.exit, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !77  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 272
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !525
  %i.fy = call i32 %i.fx(ptr noundef %i.fv, i32 noundef %i.ec, ptr noundef nonnull %i.c, i32 noundef range(i32 0, 256) %i.ea) #58, !inline_history !526 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ao, label %sqlite3PagerUnref.exit215.thread

bb.ao:                                            ; preds = %sqlite3PagerDirectReadOk.exit.thread
  %.pre248 = load ptr, ptr %i.c, align 8, !tbaa !524 ; 16 uses
  br i1 %i.dy, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ga = getelementptr i8, ptr %.pre248, i64 56
  %.val197 = load i64, ptr %i.ga, align 8, !tbaa !1230
  %i.gb = and i64 %.val197, 4294967295
  %.not189.a = icmp eq i64 %i.gb, 1
  br i1 %.not189.a, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gc = getelementptr i8, ptr %.pre248, i64 16
  %.val195 = load ptr, ptr %i.gc, align 8, !tbaa !696
  %i.gd = load i8, ptr %.val195, align 8, !tbaa !1614
  %.not190 = icmp eq i8 %i.gd, 0
  br i1 %.not190, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %.pre248, i64 52
  %i.gf = load i16, ptr %i.ge, align 4, !tbaa !530
  %i.gg = and i16 %i.gf, 32
  %.not.i.i201 = icmp eq i16 %i.gg, 0
  br i1 %.not.i.i201, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %.pre248, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !531 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 152 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !532
  %i.gl = add nsw i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !532
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 168 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !533
  %i.go = getelementptr inbounds nuw i8, ptr %.pre248, i64 32
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !534
  store ptr %.pre248, ptr %i.gm, align 8, !tbaa !533
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !535 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre248, i64 48
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !536
  %i.gt = add i32 %i.gs, -1
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 200
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !83
  %i.gx = mul nsw i64 %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre248, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !527
  %i.ha = load ptr, ptr %i.gq, align 8, !tbaa !483
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 144
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !537
  %i.hd = call i32 %i.hc(ptr noundef nonnull %i.gq, i64 noundef %i.gx, ptr noundef %i.gz) #58, !inline_history !539 ; 0 uses
  br label %sqlite3PagerUnref.exit215

bb.at:                                            ; preds = %bb.ar
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.pre248)
  br label %sqlite3PagerUnref.exit215

bb.au:                                            ; preds = %bb.aq, %bb.ao
  %i.he = getelementptr i8, ptr %.pre248, i64 8
  %.val = load ptr, ptr %i.he, align 8, !tbaa !527 ; 2 uses
  %i.hf = load i32, ptr %.val, align 1
  %i.hg = call i32 @llvm.bswap.i32(i32 %i.hf)
  store i32 %i.hg, ptr %i.b, align 4, !tbaa !27
  %i.hh = add i32 %.2132242, 4
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hi ; 2 uses
  br i1 %i.dy, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre248, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !531 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre248, i64 52
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !530
  %i.ho = and i16 %i.hn, 4
  %.not.i.i203 = icmp eq i16 %i.ho, 0
  br i1 %.not.i.i203, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !684
  %i.hr = getelementptr inbounds nuw i8, ptr %.pre248, i64 48
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !536
  %.not13.i.i204 = icmp ult i32 %i.hq, %i.hs
  br i1 %.not13.i.i204, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !671
  %.not15.i.i205 = icmp eq i32 %i.hu, 0
  br i1 %.not15.i.i205, label %sqlite3PagerWrite.exit.thread17.i210, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hv = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %.pre248), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i206

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !686 ; 2 uses
  %.not14.i.i211 = icmp eq i32 %i.hx, 0
  br i1 %.not14.i.i211, label %bb.ba, label %copyPayload.exit212

bb.ba:                                            ; preds = %bb.az
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 184
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !687
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 200
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !83
  %i.ic = trunc i64 %i.ib to i32
  %i.id = icmp ugt i32 %i.hz, %i.ic
  br i1 %i.id, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ie = call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %.pre248), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i206

bb.bc:                                            ; preds = %bb.ba
  %i.if = call fastcc i32 @pager_write(ptr noundef nonnull %.pre248), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i206

sqlite3PagerWrite.exit.i206:                      ; preds = %bb.bc, %bb.bb, %bb.ay
  %.0.i.i207 = phi i32 [ %i.hv, %bb.ay ], [ %i.if, %bb.bc ], [ %i.ie, %bb.bb ] ; 2 uses
  %.not12.not.i208 = icmp eq i32 %.0.i.i207, 0
  br i1 %.not12.not.i208, label %sqlite3PagerWrite.exit.thread17.i210, label %copyPayload.exit212

sqlite3PagerWrite.exit.thread17.i210:             ; preds = %sqlite3PagerWrite.exit.i206, %bb.ax
  %i.ig = sext i32 %spec.select194 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr align 1 %.1167237, i64 %i.ig, i1 false)
  br label %copyPayload.exit212

bb.bd:                                            ; preds = %bb.au
  %i.ih = sext i32 %spec.select194 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1167237, ptr nonnull align 1 %i.hj, i64 %i.ih, i1 false)
  br label %copyPayload.exit212

copyPayload.exit212:                              ; preds = %bb.az, %sqlite3PagerWrite.exit.i206, %sqlite3PagerWrite.exit.thread17.i210, %bb.bd
  %.1.i209 = phi i32 [ 0, %bb.bd ], [ 0, %sqlite3PagerWrite.exit.thread17.i210 ], [ %.0.i.i207, %sqlite3PagerWrite.exit.i206 ], [ %i.hx, %bb.az ] ; 3 uses
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !524 ; 8 uses
  %.not.i213 = icmp eq ptr %i.ii, null
  br i1 %.not.i213, label %sqlite3PagerUnref.exit215.thread, label %bb.be

bb.be:                                            ; preds = %copyPayload.exit212
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 52
  %i.ik = load i16, ptr %i.ij, align 4, !tbaa !530
  %i.il = and i16 %i.ik, 32
  %.not.i.i214 = icmp eq i16 %i.il, 0
  br i1 %.not.i.i214, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !531 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 152 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !532
  %i.iq = add nsw i32 %i.ip, -1
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !532
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 168 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !533
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store ptr %i.is, ptr %i.it, align 8, !tbaa !534
  store ptr %i.ii, ptr %i.ir, align 8, !tbaa !533
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 72
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !535 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !536
  %i.iy = add i32 %i.ix, -1
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !83
  %i.jc = mul nsw i64 %i.jb, %i.iz
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !527
  %i.jf = load ptr, ptr %i.iv, align 8, !tbaa !483
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 144
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !537
  %i.ji = call i32 %i.jh(ptr noundef nonnull %i.iv, i64 noundef %i.jc, ptr noundef %i.je) #58, !inline_history !539 ; 0 uses
  br label %sqlite3PagerUnref.exit215.thread

bb.bg:                                            ; preds = %bb.be
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %i.ii)
  br label %sqlite3PagerUnref.exit215.thread

sqlite3PagerUnref.exit215.thread:                 ; preds = %sqlite3PagerDirectReadOk.exit.thread, %copyPayload.exit212, %bb.bf, %bb.bg
  %.4159.ph = phi i32 [ %.1.i209, %bb.bg ], [ %.1.i209, %bb.bf ], [ %.1.i209, %copyPayload.exit212 ], [ %i.fy, %sqlite3PagerDirectReadOk.exit.thread ]
  %.4134.ph = phi i32 [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %copyPayload.exit212 ], [ %.2132242, %sqlite3PagerDirectReadOk.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.bh

sqlite3PagerUnref.exit215:                        ; preds = %bb.at, %bb.as
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78528, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.critedge.thread

bb.bh:                                            ; preds = %sqlite3PagerUnref.exit215.thread, %bb.an
  %.5160 = phi i32 [ %i.fs, %bb.an ], [ %.4159.ph, %sqlite3PagerUnref.exit215.thread ] ; 2 uses
  %.5135 = phi i32 [ 0, %bb.an ], [ %.4134.ph, %sqlite3PagerUnref.exit215.thread ]
  %i.jj = sub i32 %.1139241, %spec.select194      ; 2 uses
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %.critedge.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jl = sext i32 %spec.select194 to i64
  %i.jm = getelementptr inbounds i8, ptr %.1167237, i64 %i.jl
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ag
  %.3169 = phi ptr [ %.1167237, %bb.ag ], [ %i.jm, %bb.bi ]
  %.7162 = phi i32 [ %.2157, %bb.ag ], [ %.5160, %bb.bi ] ; 2 uses
  %.3141 = phi i32 [ %.1139241, %bb.ag ], [ %i.jj, %bb.bi ] ; 3 uses
  %.7137 = phi i32 [ %i.ek, %bb.ag ], [ %.5135, %bb.bi ]
  %.not192 = icmp eq i32 %.7162, 0
  br i1 %.not192, label %bb.z, label %.critedge

.critedge.thread:                                 ; preds = %bb.bh, %bb.ab, %sqlite3FaultSim.exit.thread, %sqlite3FaultSim.exit, %sqlite3PagerUnref.exit215
  %.10.ph = phi i32 [ 11, %bb.ab ], [ 7, %sqlite3FaultSim.exit.thread ], [ 7, %sqlite3FaultSim.exit ], [ 11, %sqlite3PagerUnref.exit215 ], [ %.5160, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.bm

.critedge:                                        ; preds = %bb.bj, %bb.z, %bb.y
  %.9164 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ %.7162, %bb.bj ]
  %.5143 = phi i32 [ %.0138, %bb.y ], [ %.3141, %bb.z ], [ %.3141, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.bk

bb.bk:                                            ; preds = %.critedge, %bb.q
  %.10165 = phi i32 [ %.9164, %.critedge ], [ %.0155, %bb.q ] ; 2 uses
  %.6144 = phi i32 [ %.5143, %.critedge ], [ %.0138, %bb.q ]
  %i.jn = icmp eq i32 %.10165, 0
  %i.jo = icmp ne i32 %.6144, 0
  %or.cond9 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond9, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78548, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge.thread, %bb.bk, %bb.bl, %bb.d, %bb.b
  %.11 = phi i32 [ 11, %bb.b ], [ 11, %bb.d ], [ 11, %bb.bl ], [ %.10.ph, %.critedge.thread ], [ %.10165, %bb.bk ]
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getOverflowPage(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.e = load i8, ptr %i.d, align 1, !tbaa !754
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr @sqlite3PendingByte, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.b
  %.0.in = phi i32 [ %1, %bb.b ], [ %.0, %.critedge.backedge ] ; 3 uses
  %.0 = add i32 %.0.in, 1                         ; 6 uses
  %i.i = icmp ult i32 %.0, 2
  br i1 %i.i, label %ptrmapPageno.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = load i32, ptr %i.f, align 8, !tbaa !761
  %i.k = udiv i32 %i.j, 5
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = add i32 %.0.in, -1                       ; 2 uses
  %i.n = urem i32 %i.m, %i.l
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !135
  %i.q = udiv i32 %i.g, %i.p
  %i.r = add nuw i32 %i.o, 1
  %i.s = icmp eq i32 %i.r, %i.q
  %spec.select.v.i = select i1 %i.s, i32 3, i32 2
  %spec.select.i = add i32 %spec.select.v.i, %i.o
  br label %ptrmapPageno.exit

ptrmapPageno.exit:                                ; preds = %.critedge, %bb.c
  %.010.i = phi i32 [ %spec.select.i, %bb.c ], [ 0, %.critedge ]
  %i.t = icmp eq i32 %.010.i, %.0
  br i1 %i.t, label %.critedge.backedge, label %bb.d

.critedge.backedge:                               ; preds = %ptrmapPageno.exit, %bb.d
  br label %.critedge, !llvm.loop !1997

bb.d:                                             ; preds = %ptrmapPageno.exit
  %i.u = load i32, ptr %i.h, align 4, !tbaa !135
  %i.v = udiv i32 %i.g, %i.u
  %i.w = icmp eq i32 %.0.in, %i.v
  br i1 %i.w, label %.critedge.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %0, i64 64
  %.val = load i32, ptr %i.x, align 8, !tbaa !676
  %.not35 = icmp ugt i32 %.0, %.val
  br i1 %.not35, label %.thread46, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %.0, ptr noundef %i.c, ptr noundef nonnull %i.b) ; 2 uses
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  %i.aa = load i8, ptr %i.c, align 1
  %i.ab = icmp eq i8 %i.aa, 4
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !27
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %.thread49, label %.thread46

.thread49:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.l

.thread46:                                        ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %i.z, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.a, %.thread46, %bb.h
  %i.ae = icmp eq ptr %2, null
  %i.af = select i1 %i.ae, i32 2, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ag = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !525
  %i.aj = call i32 %i.ai(ptr noundef %i.ag, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 3) %i.af) #58, !inline_history !773 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.i, label %btreeGetPage.exit

bb.i:                                             ; preds = %.thread
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !524 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %.val13.i.i = load ptr, ptr %i.al, align 8, !tbaa !696 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !774
  %.not.i.i = icmp eq i32 %1, %i.an
  br i1 %.not.i.i, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !667
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 8
  %.val.i.i = load ptr, ptr %i.ao, align 8, !tbaa !527 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  store ptr %.val.i.i, ptr %i.ap, align 8, !tbaa !667
  %i.aq = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 112
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !698
  %i.ar = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 72
  store ptr %0, ptr %i.ar, align 8, !tbaa !775
  store i32 %1, ptr %i.am, align 4, !tbaa !774
  %i.as = icmp eq i32 %1, 1
  %i.at = select i1 %i.as, i8 100, i8 0
  %i.au = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 9
  store i8 %i.at, ptr %i.au, align 1, !tbaa !776
  br label %bb.k

btreeGetPage.exit:                                ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.av = phi ptr [ %.pre, %._crit_edge ], [ %.val.i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)
  br label %bb.l

bb.l:                                             ; preds = %btreeGetPage.exit, %.thread49, %bb.k, %bb.h
  %.041 = phi ptr [ %.val13.i.i, %bb.k ], [ null, %btreeGetPage.exit ], [ null, %bb.h ], [ null, %.thread49 ] ; 3 uses
  %.230 = phi i32 [ %i.ax, %bb.k ], [ 0, %btreeGetPage.exit ], [ 0, %bb.h ], [ %.0, %.thread49 ]
  %.2 = phi i32 [ 0, %bb.k ], [ %i.aj, %btreeGetPage.exit ], [ %i.y, %bb.h ], [ 101, %.thread49 ] ; 2 uses
  store i32 %.230, ptr %3, align 4, !tbaa !27
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.041, ptr %2, align 8, !tbaa !1653
  br label %releasePage.exit

bb.n:                                             ; preds = %bb.l
  %.not.i38 = icmp eq ptr %.041, null
  br i1 %.not.i38, label %releasePage.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %.041, i64 112
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !698 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !530
  %i.bb = and i16 %i.ba, 32
  %.not.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !531 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 152 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !532
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !532
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 168 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !533
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !534
  store ptr %.val.i, ptr %i.bh, align 8, !tbaa !533
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !535 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !536
  %i.bo = add i32 %i.bn, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !83
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !527
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !483
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !537
  %i.by = call i32 %i.bx(ptr noundef nonnull %i.bl, i64 noundef %i.bs, ptr noundef %i.bu) #58, !inline_history !1975 ; 0 uses
  br label %releasePage.exit

bb.q:                                             ; preds = %bb.o
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit
end_hunk_0
