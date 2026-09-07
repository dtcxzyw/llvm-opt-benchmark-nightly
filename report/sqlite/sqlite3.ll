Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 369
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3EndTable:bb.a
.critedge274:                                     ; preds = %sqlite3DeleteTable.exit, %bb.bk, %sqlite3VdbeChangeP5.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %.critedge278

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pr332 = load i8, ptr %i.an, align 1, !tbaa !908
  %.not266 = icmp eq i8 %.pr332, 0
  br i1 %.not266, label %bb.ck, label %.thread333

.thread333:                                       ; preds = %._crit_edge359, %bb.cb
  %i.ql = load ptr, ptr %i.cf, align 8, !tbaa !1147
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.e, align 8, !tbaa !1171
  %i.qo = call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.qm, ptr noundef %i.qn, ptr noundef %i.e)
  %.not267 = icmp eq ptr %i.qo, null
  br i1 %.not267, label %bb.ch, label %.thread335

.thread335:                                       ; preds = %.thread333
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 103 ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !918
  %i.qr = icmp eq i8 %i.qq, 0
  br i1 %i.qr, label %bb.cc, label %.critedge278

bb.cc:                                            ; preds = %.thread335
  %i.qs = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !919
  %i.qu = icmp eq i8 %i.qt, 0
  br i1 %i.qu, label %bb.cd, label %.critedge278

bb.cd:                                            ; preds = %bb.cc
  store i8 1, ptr %i.qp, align 1, !tbaa !918
  %i.qv = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !920
  %i.qx = icmp sgt i32 %i.qw, 0
  br i1 %i.qx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store atomic volatile i32 1, ptr %i.qy monotonic, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.qz = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !921
  %i.rb = add i32 %i.ra, 1
  store i32 %i.rb, ptr %i.qz, align 8, !tbaa !921
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  store i16 0, ptr %i.rc, align 4, !tbaa !922
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !768 ; 2 uses
  %.not.i = icmp eq ptr %i.re, null
  br i1 %.not.i, label %.critedge278, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.re, ptr noundef nonnull @.str.125), !inline_history !48
  %i.rf = load ptr, ptr %i.rd, align 8, !tbaa !768 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  store i32 7, ptr %i.rg, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %.critedge278, label %.lr.ph.i424

.lr.ph.i424:                                      ; preds = %bb.cg, %.lr.ph.i424
  %.020.i425 = phi ptr [ %.0.i, %.lr.ph.i424 ], [ %.018.i, %bb.cg ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.020.i425, i64 52 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !780
  %i.rj = add nsw i32 %i.ri, 1
  store i32 %i.rj, ptr %i.rh, align 4, !tbaa !780
  %i.rk = getelementptr inbounds nuw i8, ptr %.020.i425, i64 24
  store i32 7, ptr %i.rk, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i425, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %.critedge278, label %.lr.ph.i424, !llvm.loop !36

bb.ch:                                            ; preds = %.thread333
  store ptr null, ptr %i.d, align 8, !tbaa !1250
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !1013
  %i.rn = or i32 %i.rm, 1
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !1013
  %i.ro = load ptr, ptr %i.e, align 8, !tbaa !1171
  %i.rp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ro, ptr noundef nonnull dereferenceable(16) @.str.738) #59
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.rr = load ptr, ptr %i.cf, align 8, !tbaa !1147
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 104
  store ptr %i.e, ptr %i.rs, align 8, !tbaa !1804
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  br i1 %i.c, label %bb.cl, label %.critedge278

bb.ck:                                            ; preds = %bb.cb
  br i1 %i.c, label %bb.cl, label %.critedge278

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.rt = getelementptr inbounds nuw i8, ptr %i.e, i64 63
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !1146
  %i.rv = icmp eq i8 %i.ru, 0
  br i1 %i.rv, label %bb.cm, label %.critedge278

bb.cm:                                            ; preds = %bb.cl
  %i.rw = load ptr, ptr %1, align 8, !tbaa !801
  %i.rx = icmp eq ptr %i.rw, null
  %spec.select = select i1 %i.rx, ptr %2, ptr %1
  %i.ry = load ptr, ptr %spec.select, align 8, !tbaa !801
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !2071
  %i.sb = ptrtoint ptr %i.ry to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %i.se = trunc i64 %i.sd to i32
  %i.sf = add nsw i32 %i.se, 13
  %i.sg = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 %i.sf, ptr %i.sg, align 8, !tbaa !733
  br label %.critedge278

.critedge278:                                     ; preds = %.lr.ph.i424, %bb.cg, %bb.cf, %bb.cc, %.thread335, %sqlite3ColumnType.exit, %bb.p, %._crit_edge.thread, %.critedge274, %sqlite3GetVdbe.exit, %bb.ck, %bb.cl, %bb.cm, %bb.b, %bb.a, %bb.cj, %bb.y, %bb.w, %.thread325
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3AddColumn(ptr nofree noundef captures(none) %0, ptr %1, i32 %2, ptr nofree readonly captures(address_is_null) %3, i32 %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !980    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1250 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.cq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 54 ; 5 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !1150
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.i = load i32, ptr %i.h, align 8, !tbaa !570
  %.not = icmp sgt i32 %i.i, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !1171
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.649, ptr noundef %i.j)
  br label %bb.cq

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1248
  %i.m = icmp ugt i8 %i.l, 1
  %i.n = icmp ult i32 %2, 2
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %sqlite3DequoteToken.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !733
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !733
  %.not.i = icmp sgt i8 %i.r, -1
  br i1 %.not.i, label %sqlite3DequoteToken.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.s = add i32 %2, -1                           ; 2 uses
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.s to i64
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4581

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %.not8.i = icmp sgt i8 %i.y, -1
  br i1 %.not8.i, label %bb.f, label %sqlite3DequoteToken.exit

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.z = add i32 %2, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %sqlite3DequoteToken.exit

sqlite3DequoteToken.exit:                         ; preds = %.lr.ph.i, %._crit_edge.i, %bb.e, %bb.d
  %.sroa.5.0 = phi i32 [ %2, %bb.d ], [ %i.z, %._crit_edge.i ], [ %2, %bb.e ], [ %2, %.lr.ph.i ] ; 2 uses
  %.sroa.0163.0 = phi ptr [ %1, %bb.d ], [ %i.aa, %._crit_edge.i ], [ %1, %bb.e ], [ %1, %.lr.ph.i ] ; 2 uses
  %i.ab = icmp ugt i32 %4, 15
  br i1 %i.ab, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %sqlite3DequoteToken.exit
  %i.ac = add i32 %4, -6                          ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad ; 6 uses
  %i.af = icmp eq ptr %3, null
  br i1 %i.af, label %.critedge2.thread, label %.lr.ph.i86.preheader

.lr.ph.i86.preheader:                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !733 ; 3 uses
  %.not.i87 = icmp eq i8 %i.ag, 0
  br i1 %.not.i87, label %sqlite3_strnicmp.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i86.preheader
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ah
  %i.aj = and i8 %i.ag, -33
  %i.ak = icmp eq i8 %i.aj, 65
  br i1 %i.ak, label %.lr.ph.i86.1, label %split.i

.lr.ph.i86.1:                                     ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733 ; 3 uses
  %.not.i87.1 = icmp eq i8 %i.am, 0
  br i1 %.not.i87.1, label %sqlite3_strnicmp.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i86.1
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.an
  %i.ap = and i8 %i.am, -33
  %i.aq = icmp eq i8 %i.ap, 76
  br i1 %i.aq, label %.lr.ph.i86.2, label %split.i

.lr.ph.i86.2:                                     ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !733 ; 3 uses
  %.not.i87.2 = icmp eq i8 %i.as, 0
  br i1 %.not.i87.2, label %sqlite3_strnicmp.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i86.2
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.at
  %i.av = and i8 %i.as, -33
  %i.aw = icmp eq i8 %i.av, 87
  br i1 %i.aw, label %.lr.ph.i86.3, label %split.i

.lr.ph.i86.3:                                     ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !733 ; 3 uses
  %.not.i87.3 = icmp eq i8 %i.ay, 0
  br i1 %.not.i87.3, label %sqlite3_strnicmp.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i86.3
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.az
  %i.bb = and i8 %i.ay, -33
  %i.bc = icmp eq i8 %i.bb, 65
  br i1 %i.bc, label %.lr.ph.i86.4, label %split.i

.lr.ph.i86.4:                                     ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733 ; 3 uses
  %.not.i87.4 = icmp eq i8 %i.be, 0
  br i1 %.not.i87.4, label %sqlite3_strnicmp.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i86.4
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bf
  %i.bh = and i8 %i.be, -33
  %i.bi = icmp eq i8 %i.bh, 89
  br i1 %i.bi, label %.lr.ph.i86.5, label %split.i

.lr.ph.i86.5:                                     ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !733 ; 3 uses
  %.not.i87.5 = icmp eq i8 %i.bk, 0
  br i1 %.not.i87.5, label %sqlite3_strnicmp.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i86.5
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = and i8 %i.bk, -33
  %i.bo = icmp eq i8 %i.bn, 83
  br i1 %i.bo, label %sqlite3_strnicmp.exit.thread, label %split.i

split.i:                                          ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa244.in = phi ptr [ %i.ai, %bb.h ], [ %i.ao, %bb.i ], [ %i.au, %bb.j ], [ %i.ba, %bb.k ], [ %i.bg, %bb.l ], [ %i.bm, %bb.m ]
  %.023.i.lcssa241 = phi ptr [ @.str.830, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 1), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 2), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 3), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 4), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 5), %bb.m ]
  %.lcssa244 = load i8, ptr %.lcssa244.in, align 1, !tbaa !733
  %i.bp = zext i8 %.lcssa244 to i32
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i86.preheader, %.lr.ph.i86.1, %.lr.ph.i86.2, %.lr.ph.i86.3, %.lr.ph.i86.4, %.lr.ph.i86.5, %split.i
  %.023.i243 = phi ptr [ %.023.i.lcssa241, %split.i ], [ @.str.830, %.lr.ph.i86.preheader ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 1), %.lr.ph.i86.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 2), %.lr.ph.i86.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 3), %.lr.ph.i86.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 4), %.lr.ph.i86.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.830, i64 5), %.lr.ph.i86.5 ]
  %i.bq = phi i32 [ %i.bp, %split.i ], [ 0, %.lr.ph.i86.preheader ], [ 0, %.lr.ph.i86.1 ], [ 0, %.lr.ph.i86.2 ], [ 0, %.lr.ph.i86.3 ], [ 0, %.lr.ph.i86.4 ], [ 0, %.lr.ph.i86.5 ]
  %i.br = load i8, ptr %.023.i243, align 1, !tbaa !733
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !733
  %i.bv = zext i8 %i.bu to i32
  %i.bw = icmp eq i32 %i.bq, %i.bv
  br i1 %i.bw, label %sqlite3_strnicmp.exit.thread, label %.critedge2.thread

sqlite3_strnicmp.exit.thread:                     ; preds = %bb.m, %sqlite3_strnicmp.exit
  %.not79482 = icmp eq i32 %i.ac, 0
  br i1 %.not79482, label %.critedge2.thread178, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3_strnicmp.exit.thread
  %i.bx = add i32 %4, -15
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next248 = add i32 %indvars.iv247483, -1
  %.not79 = icmp eq i64 %i.by, 0
  br i1 %.not79, label %.critedge2.thread178, label %bb.o, !llvm.loop !4582

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv484 = phi i64 [ %i.ad, %.lr.ph ], [ %i.by, %bb.n ] ; 4 uses
  %indvars.iv247483 = phi i32 [ %i.bx, %.lr.ph ], [ %indvars.iv.next248, %bb.n ] ; 3 uses
  %i.by = add nsw i64 %indvars.iv484, -1          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.ce = and i8 %i.cd, 1
  %.not80 = icmp eq i8 %i.ce, 0
  br i1 %.not80, label %.critedge, label %bb.n, !llvm.loop !4582

.critedge:                                        ; preds = %bb.o
  %i.cf = trunc nuw i64 %indvars.iv484 to i32     ; 2 uses
  %i.cg = icmp ugt i64 %indvars.iv484, 8
  br i1 %i.cg, label %.lr.ph.i89, label %.critedge2

.lr.ph.i89:                                       ; preds = %.critedge
  %i.ch = add i64 %indvars.iv484, 4294967287
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ci ; 9 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733 ; 3 uses
  %.not.i93 = icmp eq i8 %i.ck, 0
  br i1 %.not.i93, label %sqlite3_strnicmp.exit97, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i89
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cl
  %i.cn = and i8 %i.ck, -33
  %i.co = icmp eq i8 %i.cn, 71
  br i1 %i.co, label %.lr.ph.i89.1, label %split.i94

.lr.ph.i89.1:                                     ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !733 ; 3 uses
  %.not.i93.1 = icmp eq i8 %i.cq, 0
  br i1 %.not.i93.1, label %sqlite3_strnicmp.exit97, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i89.1
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cr
  %i.ct = and i8 %i.cq, -33
  %i.cu = icmp eq i8 %i.ct, 69
  br i1 %i.cu, label %.lr.ph.i89.2, label %split.i94

.lr.ph.i89.2:                                     ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !733 ; 3 uses
  %.not.i93.2 = icmp eq i8 %i.cw, 0
  br i1 %.not.i93.2, label %sqlite3_strnicmp.exit97, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i89.2
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cx
  %i.cz = and i8 %i.cw, -33
  %i.da = icmp eq i8 %i.cz, 78
  br i1 %i.da, label %.lr.ph.i89.3, label %split.i94

.lr.ph.i89.3:                                     ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !733 ; 3 uses
  %.not.i93.3 = icmp eq i8 %i.dc, 0
  br i1 %.not.i93.3, label %sqlite3_strnicmp.exit97, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i89.3
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dd
  %i.df = and i8 %i.dc, -33
  %i.dg = icmp eq i8 %i.df, 69
  br i1 %i.dg, label %.lr.ph.i89.4, label %split.i94

.lr.ph.i89.4:                                     ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !733 ; 3 uses
  %.not.i93.4 = icmp eq i8 %i.di, 0
  br i1 %.not.i93.4, label %sqlite3_strnicmp.exit97, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i89.4
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dj
  %i.dl = and i8 %i.di, -33
  %i.dm = icmp eq i8 %i.dl, 82
  br i1 %i.dm, label %.lr.ph.i89.5, label %split.i94

.lr.ph.i89.5:                                     ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !733 ; 3 uses
  %.not.i93.5 = icmp eq i8 %i.do, 0
  br i1 %.not.i93.5, label %sqlite3_strnicmp.exit97, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i89.5
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dp
  %i.dr = and i8 %i.do, -33
  %i.ds = icmp eq i8 %i.dr, 65
  br i1 %i.ds, label %.lr.ph.i89.6, label %split.i94

.lr.ph.i89.6:                                     ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !733 ; 3 uses
  %.not.i93.6 = icmp eq i8 %i.du, 0
  br i1 %.not.i93.6, label %sqlite3_strnicmp.exit97, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i89.6
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dv
  %i.dx = and i8 %i.du, -33
  %i.dy = icmp eq i8 %i.dx, 84
  br i1 %i.dy, label %.lr.ph.i89.7, label %split.i94

.lr.ph.i89.7:                                     ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !733 ; 3 uses
  %.not.i93.7 = icmp eq i8 %i.ea, 0
  br i1 %.not.i93.7, label %sqlite3_strnicmp.exit97, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i89.7
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.eb
  %i.ed = and i8 %i.ea, -33
  %i.ee = icmp eq i8 %i.ed, 69
  br i1 %i.ee, label %.lr.ph.i89.8, label %split.i94

.lr.ph.i89.8:                                     ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !733 ; 3 uses
  %.not.i93.8 = icmp eq i8 %i.eg, 0
  br i1 %.not.i93.8, label %sqlite3_strnicmp.exit97, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i89.8
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.eh
  %i.ej = and i8 %i.eg, -33
  %i.ek = icmp eq i8 %i.ej, 68
  br i1 %i.ek, label %sqlite3_strnicmp.exit97.thread, label %split.i94

split.i94:                                        ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.lcssa238.in = phi ptr [ %i.cm, %bb.p ], [ %i.cs, %bb.q ], [ %i.cy, %bb.r ], [ %i.de, %bb.s ], [ %i.dk, %bb.t ], [ %i.dq, %bb.u ], [ %i.dw, %bb.v ], [ %i.ec, %bb.w ], [ %i.ei, %bb.x ]
  %.023.i91.lcssa235 = phi ptr [ @.str.831, %bb.p ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 1), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 2), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 3), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 4), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 5), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 6), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 7), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 8), %bb.x ]
  %.lcssa238 = load i8, ptr %.lcssa238.in, align 1, !tbaa !733
  %i.el = zext i8 %.lcssa238 to i32
  br label %sqlite3_strnicmp.exit97

sqlite3_strnicmp.exit97:                          ; preds = %.lr.ph.i89, %.lr.ph.i89.1, %.lr.ph.i89.2, %.lr.ph.i89.3, %.lr.ph.i89.4, %.lr.ph.i89.5, %.lr.ph.i89.6, %.lr.ph.i89.7, %.lr.ph.i89.8, %split.i94
  %.023.i91237 = phi ptr [ %.023.i91.lcssa235, %split.i94 ], [ @.str.831, %.lr.ph.i89 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 1), %.lr.ph.i89.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 2), %.lr.ph.i89.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 3), %.lr.ph.i89.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 4), %.lr.ph.i89.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 5), %.lr.ph.i89.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 6), %.lr.ph.i89.6 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 7), %.lr.ph.i89.7 ], [ getelementptr inbounds nuw (i8, ptr @.str.831, i64 8), %.lr.ph.i89.8 ]
  %i.em = phi i32 [ %i.el, %split.i94 ], [ 0, %.lr.ph.i89 ], [ 0, %.lr.ph.i89.1 ], [ 0, %.lr.ph.i89.2 ], [ 0, %.lr.ph.i89.3 ], [ 0, %.lr.ph.i89.4 ], [ 0, %.lr.ph.i89.5 ], [ 0, %.lr.ph.i89.6 ], [ 0, %.lr.ph.i89.7 ], [ 0, %.lr.ph.i89.8 ]
  %i.en = load i8, ptr %.023.i91237, align 1, !tbaa !733
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !733
  %i.er = zext i8 %i.eq to i32
  %i.es = icmp eq i32 %i.em, %i.er
  br i1 %i.es, label %sqlite3_strnicmp.exit97.thread, label %.critedge2.thread

sqlite3_strnicmp.exit97.thread:                   ; preds = %bb.x, %sqlite3_strnicmp.exit97
  %.not82485 = icmp eq i32 %indvars.iv247483, 0
  br i1 %.not82485, label %.critedge2.thread178, label %.lr.ph487

.lr.ph487:                                        ; preds = %sqlite3_strnicmp.exit97.thread
  %i.et = zext i32 %indvars.iv247483 to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %.not82 = icmp eq i64 %i.eu, 0
  br i1 %.not82, label %.critedge2.thread178, label %bb.z, !llvm.loop !4583

bb.z:                                             ; preds = %.lr.ph487, %bb.y
  %indvars.iv250486 = phi i64 [ %i.et, %.lr.ph487 ], [ %i.eu, %bb.y ] ; 2 uses
  %i.eu = add nsw i64 %indvars.iv250486, -1       ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !733
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !733
  %i.fa = and i8 %i.ez, 1
  %.not83 = icmp eq i8 %i.fa, 0
  br i1 %.not83, label %.critedge2.loopexit, label %bb.y, !llvm.loop !4583

.critedge2.loopexit:                              ; preds = %bb.z
  %i.fb = trunc nuw i64 %indvars.iv250486 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge, %sqlite3DequoteToken.exit
  %.sroa.9.0 = phi i32 [ %4, %sqlite3DequoteToken.exit ], [ %i.cf, %.critedge ], [ %i.fb, %.critedge2.loopexit ] ; 3 uses
  %i.fc = icmp ugt i32 %.sroa.9.0, 2
  br i1 %i.fc, label %.critedge2.thread, label %.critedge2.thread178

.critedge2.thread:                                ; preds = %sqlite3_strnicmp.exit97, %sqlite3_strnicmp.exit, %bb.g, %.critedge2
  %.sroa.9.0175 = phi i32 [ %.sroa.9.0, %.critedge2 ], [ %4, %bb.g ], [ %i.cf, %sqlite3_strnicmp.exit97 ], [ %4, %sqlite3_strnicmp.exit ] ; 4 uses
  %i.fd = load i8, ptr %3, align 1, !tbaa !733
  %i.fe = zext i8 %i.fd to i64
end_hunk_0
begin_hunk_1_@sqlite3AddColumn:bb.a
  %i.nz = phi i32 [ %i.lj, %split.i116.3 ], [ 0, %.lr.ph._crit_edge.i117.loopexit.3 ]
  %i.oa = zext i8 %i.ny to i32
  %i.ob = icmp eq i32 %i.nz, %i.oa
  br i1 %i.ob, label %sqlite3_strnicmp.exit118.thread, label %sqlite3_strnicmp.exit118.thread181.3

sqlite3_strnicmp.exit118.thread181.3:             ; preds = %.lr.ph._crit_edge.i117.3, %sqlite3_strnicmp.exit118.thread181.2
  br i1 %i.kw, label %sqlite3_strnicmp.exit118.thread181.2.thread.thread, label %.critedge2.thread178

sqlite3_strnicmp.exit118.thread181.2.thread.thread: ; preds = %bb.af, %sqlite3_strnicmp.exit118.thread181.2.thread, %sqlite3_strnicmp.exit118.thread181.3
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3StdType, i64 32), align 16, !tbaa !741 ; 6 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %sqlite3_strnicmp.exit118.thread181.4.thread384, label %.lr.ph.i111.4

.lr.ph.i111.4:                                    ; preds = %sqlite3_strnicmp.exit118.thread181.2.thread.thread
  %i.oe = load i8, ptr %.sroa.0.1, align 1, !tbaa !733 ; 2 uses
  %.not.i115.4 = icmp eq i8 %i.oe, 0
  br i1 %.not.i115.4, label %.lr.ph._crit_edge.i117.loopexit.4, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i111.4
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !733 ; 2 uses
  %i.oi = load i8, ptr %i.oc, align 1, !tbaa !733
  %i.oj = zext i8 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !733 ; 2 uses
  %i.om = icmp eq i8 %i.oh, %i.ol
  br i1 %i.om, label %.lr.ph.i111.4.1, label %split.i116.4

split.i116.4:                                     ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.lcssa501 = phi i8 [ %i.oh, %bb.au ], [ %i.ot, %bb.av ], [ %i.pe, %bb.aw ], [ %i.pp, %bb.ax ]
  %.lcssa499 = phi i8 [ %i.ol, %bb.au ], [ %i.ox, %bb.av ], [ %i.pi, %bb.aw ], [ %i.pt, %bb.ax ]
  %i.on = zext i8 %.lcssa501 to i32
  br label %.lr.ph._crit_edge.i117.4

.lr.ph.i111.4.1:                                  ; preds = %bb.au
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.oc, i64 1 ; 2 uses
  %i.oq = load i8, ptr %i.oo, align 1, !tbaa !733 ; 2 uses
  %.not.i115.4.1 = icmp eq i8 %i.oq, 0
  br i1 %.not.i115.4.1, label %.lr.ph._crit_edge.i117.loopexit.4, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i111.4.1
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !733 ; 2 uses
  %i.ou = load i8, ptr %i.op, align 1, !tbaa !733
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !733 ; 2 uses
  %i.oy = icmp eq i8 %i.ot, %i.ox
  br i1 %i.oy, label %.lr.ph.i111.4.2, label %split.i116.4

.lr.ph.i111.4.2:                                  ; preds = %bb.av
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oc, i64 2 ; 2 uses
  %i.pb = load i8, ptr %i.oz, align 1, !tbaa !733 ; 2 uses
  %.not.i115.4.2 = icmp eq i8 %i.pb, 0
  br i1 %.not.i115.4.2, label %.lr.ph._crit_edge.i117.loopexit.4, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i111.4.2
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !733 ; 2 uses
  %i.pf = load i8, ptr %i.pa, align 1, !tbaa !733
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !733 ; 2 uses
  %i.pj = icmp eq i8 %i.pe, %i.pi
  br i1 %i.pj, label %.lr.ph.i111.4.3, label %split.i116.4

.lr.ph.i111.4.3:                                  ; preds = %bb.aw
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oc, i64 3 ; 2 uses
  %i.pm = load i8, ptr %i.pk, align 1, !tbaa !733 ; 2 uses
  %.not.i115.4.3 = icmp eq i8 %i.pm, 0
  br i1 %.not.i115.4.3, label %.lr.ph._crit_edge.i117.loopexit.4, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i111.4.3
  %i.pn = zext i8 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !733 ; 2 uses
  %i.pq = load i8, ptr %i.pl, align 1, !tbaa !733
  %i.pr = zext i8 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !733 ; 2 uses
  %i.pu = icmp eq i8 %i.pp, %i.pt
  br i1 %i.pu, label %sqlite3_strnicmp.exit118.thread.loopexit, label %split.i116.4

.lr.ph._crit_edge.i117.loopexit.4:                ; preds = %.lr.ph.i111.4.3, %.lr.ph.i111.4.2, %.lr.ph.i111.4.1, %.lr.ph.i111.4
  %.023.i113.4.lcssa = phi ptr [ %i.oc, %.lr.ph.i111.4 ], [ %i.op, %.lr.ph.i111.4.1 ], [ %i.pa, %.lr.ph.i111.4.2 ], [ %i.pl, %.lr.ph.i111.4.3 ]
  %.pre285 = load i8, ptr %.023.i113.4.lcssa, align 1, !tbaa !733
  %.phi.trans.insert286 = zext i8 %.pre285 to i64
  %.phi.trans.insert287 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert286
  %.pre288 = load i8, ptr %.phi.trans.insert287, align 1, !tbaa !733
  br label %.lr.ph._crit_edge.i117.4

.lr.ph._crit_edge.i117.4:                         ; preds = %.lr.ph._crit_edge.i117.loopexit.4, %split.i116.4
  %i.pv = phi i8 [ %.lcssa499, %split.i116.4 ], [ %.pre288, %.lr.ph._crit_edge.i117.loopexit.4 ]
  %i.pw = phi i32 [ %i.on, %split.i116.4 ], [ 0, %.lr.ph._crit_edge.i117.loopexit.4 ]
  %i.px = zext i8 %i.pv to i32
  %i.py = icmp eq i32 %i.pw, %i.px
  br i1 %i.py, label %sqlite3_strnicmp.exit118.thread, label %sqlite3_strnicmp.exit118.thread181.4.thread384

sqlite3_strnicmp.exit118.thread181.4.thread384:   ; preds = %.lr.ph._crit_edge.i117.4, %sqlite3_strnicmp.exit118.thread181.2.thread.thread
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3StdType, i64 40), align 8, !tbaa !741 ; 6 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %.critedge2.thread178, label %.lr.ph.i111.5

.lr.ph.i111.5:                                    ; preds = %sqlite3_strnicmp.exit118.thread181.4.thread384
  %i.qb = load i8, ptr %.sroa.0.1, align 1, !tbaa !733 ; 2 uses
  %.not.i115.5 = icmp eq i8 %i.qb, 0
  br i1 %.not.i115.5, label %.lr.ph._crit_edge.i117.loopexit.5, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i111.5
  %i.qc = zext i8 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !733 ; 2 uses
  %i.qf = load i8, ptr %i.pz, align 1, !tbaa !733
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !733 ; 2 uses
  %i.qj = icmp eq i8 %i.qe, %i.qi
  br i1 %i.qj, label %.lr.ph.i111.5.1, label %split.i116.5

split.i116.5:                                     ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.lcssa494 = phi i8 [ %i.qe, %bb.ay ], [ %i.qq, %bb.az ], [ %i.rb, %bb.ba ], [ %i.rm, %bb.bb ]
  %.lcssa492 = phi i8 [ %i.qi, %bb.ay ], [ %i.qu, %bb.az ], [ %i.rf, %bb.ba ], [ %i.rq, %bb.bb ]
  %i.qk = zext i8 %.lcssa494 to i32
  br label %.lr.ph._crit_edge.i117.5

.lr.ph.i111.5.1:                                  ; preds = %bb.ay
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pz, i64 1 ; 2 uses
  %i.qn = load i8, ptr %i.ql, align 1, !tbaa !733 ; 2 uses
  %.not.i115.5.1 = icmp eq i8 %i.qn, 0
  br i1 %.not.i115.5.1, label %.lr.ph._crit_edge.i117.loopexit.5, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i111.5.1
  %i.qo = zext i8 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !733 ; 2 uses
  %i.qr = load i8, ptr %i.qm, align 1, !tbaa !733
  %i.qs = zext i8 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !733 ; 2 uses
  %i.qv = icmp eq i8 %i.qq, %i.qu
  br i1 %i.qv, label %.lr.ph.i111.5.2, label %split.i116.5

.lr.ph.i111.5.2:                                  ; preds = %bb.az
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pz, i64 2 ; 2 uses
  %i.qy = load i8, ptr %i.qw, align 1, !tbaa !733 ; 2 uses
  %.not.i115.5.2 = icmp eq i8 %i.qy, 0
  br i1 %.not.i115.5.2, label %.lr.ph._crit_edge.i117.loopexit.5, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i111.5.2
  %i.qz = zext i8 %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !733 ; 2 uses
  %i.rc = load i8, ptr %i.qx, align 1, !tbaa !733
  %i.rd = zext i8 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !733 ; 2 uses
  %i.rg = icmp eq i8 %i.rb, %i.rf
  br i1 %i.rg, label %.lr.ph.i111.5.3, label %split.i116.5

.lr.ph.i111.5.3:                                  ; preds = %bb.ba
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pz, i64 3 ; 2 uses
  %i.rj = load i8, ptr %i.rh, align 1, !tbaa !733 ; 2 uses
  %.not.i115.5.3 = icmp eq i8 %i.rj, 0
  br i1 %.not.i115.5.3, label %.lr.ph._crit_edge.i117.loopexit.5, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i111.5.3
  %i.rk = zext i8 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !733 ; 2 uses
  %i.rn = load i8, ptr %i.ri, align 1, !tbaa !733
  %i.ro = zext i8 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ro
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !733 ; 2 uses
  %i.rr = icmp eq i8 %i.rm, %i.rq
  br i1 %i.rr, label %sqlite3_strnicmp.exit118.thread.loopexit, label %split.i116.5

.lr.ph._crit_edge.i117.loopexit.5:                ; preds = %.lr.ph.i111.5.3, %.lr.ph.i111.5.2, %.lr.ph.i111.5.1, %.lr.ph.i111.5
  %.023.i113.5.lcssa = phi ptr [ %i.pz, %.lr.ph.i111.5 ], [ %i.qm, %.lr.ph.i111.5.1 ], [ %i.qx, %.lr.ph.i111.5.2 ], [ %i.ri, %.lr.ph.i111.5.3 ]
  %.pre289 = load i8, ptr %.023.i113.5.lcssa, align 1, !tbaa !733
  %.phi.trans.insert290 = zext i8 %.pre289 to i64
  %.phi.trans.insert291 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert290
  %.pre292 = load i8, ptr %.phi.trans.insert291, align 1, !tbaa !733
  br label %.lr.ph._crit_edge.i117.5

.lr.ph._crit_edge.i117.5:                         ; preds = %.lr.ph._crit_edge.i117.loopexit.5, %split.i116.5
  %i.rs = phi i8 [ %.lcssa492, %split.i116.5 ], [ %.pre292, %.lr.ph._crit_edge.i117.loopexit.5 ]
  %i.rt = phi i32 [ %i.qk, %split.i116.5 ], [ 0, %.lr.ph._crit_edge.i117.loopexit.5 ]
  %i.ru = zext i8 %i.rs to i32
  %i.rv = icmp eq i32 %i.rt, %i.ru
  br i1 %i.rv, label %sqlite3_strnicmp.exit118.thread, label %.critedge2.thread178

.critedge2.thread178:                             ; preds = %bb.n, %bb.y, %sqlite3_strnicmp.exit.thread, %sqlite3_strnicmp.exit97.thread, %sqlite3_strnicmp.exit118.thread181.3, %sqlite3_strnicmp.exit118.thread181.2.thread, %sqlite3_strnicmp.exit118.thread181.4.thread384, %.lr.ph._crit_edge.i117.5, %sqlite3_strnicmp.exit118.thread, %.critedge2
  %.sroa.9.1 = phi i32 [ 0, %sqlite3_strnicmp.exit118.thread ], [ 0, %sqlite3_strnicmp.exit97.thread ], [ %.sroa.9.0, %.critedge2 ], [ %.sroa.9.2, %sqlite3_strnicmp.exit118.thread181.3 ], [ 3, %sqlite3_strnicmp.exit118.thread181.2.thread ], [ %.sroa.9.2, %.lr.ph._crit_edge.i117.5 ], [ %.sroa.9.2, %sqlite3_strnicmp.exit118.thread181.4.thread384 ], [ 0, %sqlite3_strnicmp.exit.thread ], [ 0, %bb.y ], [ 0, %bb.n ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %sqlite3_strnicmp.exit118.thread ], [ %3, %sqlite3_strnicmp.exit97.thread ], [ %3, %.critedge2 ], [ %.sroa.0.1, %sqlite3_strnicmp.exit118.thread181.3 ], [ %.sroa.0.1, %sqlite3_strnicmp.exit118.thread181.2.thread ], [ %.sroa.0.1, %.lr.ph._crit_edge.i117.5 ], [ %.sroa.0.1, %sqlite3_strnicmp.exit118.thread181.4.thread384 ], [ %3, %sqlite3_strnicmp.exit.thread ], [ %3, %bb.y ], [ %3, %bb.n ]
  %.069 = phi i8 [ %i.hk, %sqlite3_strnicmp.exit118.thread ], [ 0, %sqlite3_strnicmp.exit97.thread ], [ 0, %.critedge2 ], [ 0, %sqlite3_strnicmp.exit118.thread181.3 ], [ 0, %sqlite3_strnicmp.exit118.thread181.2.thread ], [ 0, %.lr.ph._crit_edge.i117.5 ], [ 0, %sqlite3_strnicmp.exit118.thread181.4.thread384 ], [ 0, %sqlite3_strnicmp.exit.thread ], [ 0, %bb.y ], [ 0, %bb.n ]
  %.068 = phi i8 [ %spec.select, %sqlite3_strnicmp.exit118.thread ], [ 1, %sqlite3_strnicmp.exit97.thread ], [ 1, %.critedge2 ], [ 1, %sqlite3_strnicmp.exit118.thread181.3 ], [ 1, %sqlite3_strnicmp.exit118.thread181.2.thread ], [ 1, %.lr.ph._crit_edge.i117.5 ], [ 1, %sqlite3_strnicmp.exit118.thread181.4.thread384 ], [ 1, %sqlite3_strnicmp.exit.thread ], [ 1, %bb.y ], [ 1, %bb.n ]
  %.0 = phi i8 [ %i.hg, %sqlite3_strnicmp.exit118.thread ], [ 65, %sqlite3_strnicmp.exit97.thread ], [ 65, %.critedge2 ], [ 65, %sqlite3_strnicmp.exit118.thread181.3 ], [ 65, %sqlite3_strnicmp.exit118.thread181.2.thread ], [ 65, %.lr.ph._crit_edge.i117.5 ], [ 65, %sqlite3_strnicmp.exit118.thread181.4.thread384 ], [ 65, %sqlite3_strnicmp.exit.thread ], [ 65, %bb.y ], [ 65, %bb.n ]
  %i.rw = zext i32 %.sroa.5.0 to i64              ; 3 uses
  %i.rx = add nuw nsw i64 %i.rw, 1
  %i.ry = zext i32 %.sroa.9.1 to i64              ; 3 uses
  %i.rz = add nuw nsw i64 %i.rx, %i.ry
  %i.sa = icmp ne i32 %.sroa.9.1, 0
  %i.sb = zext i1 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.rz, %i.sb            ; 2 uses
  %.not.i119 = icmp eq ptr %i.a, null
  br i1 %.not.i119, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.critedge2.thread178
  %i.sd = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.sc), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

bb.bd:                                            ; preds = %.critedge2.thread178
  %i.se = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.sc), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.bc, %bb.bd
  %.0.i = phi ptr [ %i.sd, %bb.bc ], [ %i.se, %bb.bd ] ; 21 uses
  %i.sf = icmp eq ptr %.0.i, null
  br i1 %i.sf, label %bb.cq, label %bb.be

bb.be:                                            ; preds = %sqlite3DbMallocRaw.exit
  %i.sg = load i8, ptr %i.k, align 4, !tbaa !1248
  switch i8 %i.sg, label %bb.bf [
    i8 3, label %bb.bj
    i8 1, label %bb.bj
    i8 0, label %bb.bj
  ]

bb.bf:                                            ; preds = %bb.be
  %i.sh = load ptr, ptr %0, align 8, !tbaa !980   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.si = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.sh, i64 noundef 32), !inline_history !292
  br label %sqlite3DbMallocRaw.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.sj = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !292
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.bh, %bb.bg
  %.0.i.i.i = phi ptr [ %i.si, %bb.bg ], [ %i.sj, %bb.bh ] ; 7 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.sl, i8 0, i64 12, i1 false)
  store ptr %.0.i, ptr %.0.i.i.i, align 8, !tbaa !2014
  store ptr %.sroa.0163.0, ptr %i.sk, align 8, !tbaa !741
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !570
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !2054
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.sn, ptr %i.so, align 8, !tbaa !2055
  store ptr %.0.i.i.i, ptr %i.sm, align 8, !tbaa !2054
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.be, %bb.be, %sqlite3DbMallocRaw.exit.i.i, %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %.sroa.0163.0, i64 %i.rw, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.rw
  store i8 0, ptr %i.sp, align 1, !tbaa !733
  %i.sq = load i8, ptr %.0.i, align 1, !tbaa !733 ; 3 uses
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !733
  %.not.i121 = icmp sgt i8 %i.st, -1
  br i1 %.not.i121, label %sqlite3Dequote.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.su = icmp eq i8 %i.sq, 91
  %spec.store.select.i = select i1 %i.su, i8 93, i8 %i.sq ; 3 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i123, %bb.bn ], [ 0, %bb.bk ] ; 3 uses
  %.020.i = phi i32 [ %i.tf, %bb.bn ], [ 1, %bb.bk ] ; 3 uses
  %i.sv = sext i32 %.020.i to i64
  %i.sw = getelementptr inbounds i8, ptr %.0.i, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !733 ; 2 uses
  %i.sy = icmp eq i8 %i.sx, %spec.store.select.i
  br i1 %i.sy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sz = add nsw i32 %.020.i, 1                  ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %.0.i, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !733
  %i.td = icmp eq i8 %i.tc, %spec.store.select.i
  br i1 %i.td, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %spec.store.select.sink.i = phi i8 [ %spec.store.select.i, %bb.bm ], [ %i.sx, %bb.bl ]
  %.121.i = phi i32 [ %i.sz, %bb.bm ], [ %.020.i, %bb.bl ]
  %i.te = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i122
  store i8 %spec.store.select.sink.i, ptr %i.te, align 1, !tbaa !733
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 1
  %i.tf = add nsw i32 %.121.i, 1
  br label %bb.bl

bb.bo:                                            ; preds = %bb.bm
  %i.tg = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i122
  store i8 0, ptr %i.tg, align 1, !tbaa !733
  br label %sqlite3Dequote.exit

sqlite3Dequote.exit:                              ; preds = %bb.bj, %bb.bo
  %i.th = load i16, ptr %i.e, align 2, !tbaa !1150 ; 3 uses
  %.not84 = icmp eq i16 %i.th, 0
  br i1 %.not84, label %sqlite3Dequote.exit.sqlite3ColumnIndex.exit.thread184_crit_edge, label %.preheader.i.i

sqlite3Dequote.exit.sqlite3ColumnIndex.exit.thread184_crit_edge: ; preds = %sqlite3Dequote.exit
  %.phi.trans.insert294 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre295 = load ptr, ptr %.phi.trans.insert294, align 8, !tbaa !1149
  br label %sqlite3ColumnIndex.exit.thread184

.preheader.i.i:                                   ; preds = %sqlite3Dequote.exit
  %i.ti = load i8, ptr %.0.i, align 1, !tbaa !733 ; 3 uses
  %.not10.i.i = icmp eq i8 %i.ti, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.tj = phi i8 [ %i.tp, %.lr.ph.i.i ], [ %i.ti, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.tn, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.to, %.lr.ph.i.i ], [ %.0.i, %.preheader.i.i ]
  %i.tk = zext i8 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !733
  %i.tn = add i8 %i.tm, %.012.i.i                 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !733 ; 2 uses
  %.not.i.i124 = icmp eq i8 %i.tp, 0
  br i1 %.not.i.i124, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !94

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.07.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.tn, %.lr.ph.i.i ] ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !1149 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.tt = and i8 %.07.i.i, 15
  %i.tu = zext nneg i8 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !733
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 11
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !1152
  %i.ub = icmp eq i8 %i.ua, %.07.i.i
  br i1 %i.ub, label %bb.bp, label %sqlite3StrICmp.exit.i

bb.bp:                                            ; preds = %sqlite3StrIHash.exit.i
  %i.uc = load ptr, ptr %i.ty, align 8, !tbaa !1153
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %bb.bp
  %i.ud = phi i8 [ %i.ti, %bb.bp ], [ %.pre293, %bb.bt ] ; 3 uses
  %.013.i.i = phi ptr [ %i.uc, %bb.bp ], [ %i.un, %bb.bt ] ; 2 uses
  %.012.i24.i = phi ptr [ %.0.i, %bb.bp ], [ %i.uo, %bb.bt ]
  %i.ue = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 2 uses
  %i.uf = icmp eq i8 %i.ue, %i.ud
  br i1 %i.uf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ug = icmp eq i8 %i.ud, 0
  br i1 %i.ug, label %sqlite3DbFree.exit, label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.uh = zext i8 %i.ue to i64
  %i.ui = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !733
  %i.uk = zext i8 %i.ud to i64
  %i.ul = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !733
  %.not.i25.i = icmp eq i8 %i.uj, %i.um
  br i1 %.not.i25.i, label %bb.bt, label %sqlite3StrICmp.exit.i

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.un = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.uo = getelementptr inbounds nuw i8, ptr %.012.i24.i, i64 1 ; 2 uses
  %.pre293 = load i8, ptr %i.uo, align 1, !tbaa !733
  br label %bb.bq

sqlite3StrICmp.exit.i:                            ; preds = %bb.bs, %sqlite3StrIHash.exit.i
  %i.up = tail call i16 @llvm.smax.i16(i16 %i.th, i16 1)
  %wide.trip.count.i125 = zext nneg i16 %i.up to i64
  br label %bb.bu

bb.bu:                                            ; preds = %sqlite3StrICmp.exit30.i, %sqlite3StrICmp.exit.i
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i127, %sqlite3StrICmp.exit30.i ], [ 0, %sqlite3StrICmp.exit.i ] ; 2 uses
  %i.uq = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %indvars.iv.i126 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 11
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !1152
  %i.ut = icmp eq i8 %i.us, %.07.i.i
  br i1 %i.ut, label %bb.bv, label %sqlite3StrICmp.exit30.i

end_hunk_1
