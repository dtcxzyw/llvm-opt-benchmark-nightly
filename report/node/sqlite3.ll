inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3ExprCollSeq:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !959 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %strHash.exit.i.i.i.i
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !960
  %i.ao = urem i32 %.0.lcssa.i.i.i.i.i, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ap ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %strHash.exit.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 644
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.021.in.i.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  %.pn.i.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.ac, %bb.k ]
  %.021.i.i.i.i = load i32, ptr %.021.in.i.i.i.i, align 4, !tbaa !5 ; 2 uses
  %.not2631.i.i.i.i = icmp eq i32 %.021.i.i.i.i, 0
  br i1 %.not2631.i.i.i.i, label %sqlite3HashFind.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.l
  %.020.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %sqlite3StrICmp.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.133.i.in.i.i.i = phi ptr [ %.133.i.i.i.i, %sqlite3StrICmp.exit.i.i.i.i ], [ %.020.in.i.i.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.12232.i.i.i.i = phi i32 [ %i.bj, %sqlite3StrICmp.exit.i.i.i.i ], [ %.021.i.i.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.133.i.i.i.i = load ptr, ptr %.133.i.in.i.i.i, align 8, !tbaa !114 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !961
  %i.au = icmp eq i32 %.0.lcssa.i.i.i.i.i, %i.at
  br i1 %i.au, label %bb.m, label %sqlite3StrICmp.exit.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !962
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.013.i.i.i.i.i = phi ptr [ %i.z, %bb.m ], [ %i.bi, %bb.q ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.bh, %bb.q ] ; 2 uses
  %i.ax = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.ay = load i8, ptr %.013.i.i.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp eq i8 %i.ax, 0
  br i1 %i.ba, label %sqlite3HashFind.exit.i.i, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bb = zext i8 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !227
  %i.be = zext i8 %i.ay to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !227
  %.not.i27.i.i.i.i = icmp eq i8 %i.bd, %i.bg
  br i1 %.not.i27.i.i.i.i, label %bb.q, label %sqlite3StrICmp.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 1
  br label %bb.n

sqlite3StrICmp.exit.i.i.i.i:                      ; preds = %bb.p, %.lr.ph.i.i.i.i
  %i.bj = add i32 %.12232.i.i.i.i, -1             ; 2 uses
  %.not26.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not26.i.i.i.i, label %sqlite3HashFind.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !963

sqlite3HashFind.exit.i.i:                         ; preds = %sqlite3StrICmp.exit.i.i.i.i, %bb.o, %bb.l
  %.0.i.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.l ], [ %.133.i.i.i.i, %bb.o ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !115 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %sqlite3CheckCollSeq.exit, label %findCollSeqEntry.exit.thread15.i

findCollSeqEntry.exit.thread15.i:                 ; preds = %sqlite3HashFind.exit.i.i
  %i.bn = zext i8 %i.ab to i64
  %i.bo = getelementptr [40 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -40
  br label %sqlite3FindCollSeq.exit.thread

bb.r:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1299
  br label %sqlite3FindCollSeq.exit.thread

bb.s:                                             ; preds = %bb.d, %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %.05589, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !371
  br label %sqlite3FindCollSeq.exit, !llvm.loop !3488

bb.t:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %.05589, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !3489
  %i.bw = icmp eq i8 %i.bv, 88
  br i1 %i.bw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.d, %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %.05589, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !227
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !902
  br label %sqlite3FindCollSeq.exit, !llvm.loop !3488

bb.v:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !844
  %i.cd = getelementptr inbounds nuw i8, ptr %.05589, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !227
  %i.cf = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.cc, ptr noundef null, ptr noundef %i.ce)
  br label %sqlite3FindCollSeq.exit.thread

bb.w:                                             ; preds = %bb.t, %bb.e, %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %.05589, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !367 ; 2 uses
  %i.ci = and i32 %i.ch, 512
  %.not63 = icmp eq i32 %i.ci, 0
  br i1 %.not63, label %sqlite3CheckCollSeq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %.05589, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !371 ; 3 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !367
  %i.cn = and i32 %i.cm, 512
  %.not65 = icmp eq i32 %i.cn, 0
  br i1 %.not65, label %bb.z, label %sqlite3FindCollSeq.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.05589, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1157 ; 5 uses
  %i.cq = and i32 %i.ch, 4096
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.aa, label %sqlite3FindCollSeq.exit

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %.05589, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !227 ; 3 uses
  %.not66 = icmp eq ptr %i.ct, null
  br i1 %.not66, label %sqlite3FindCollSeq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load i8, ptr %i.b, align 1, !tbaa !550
  %.not67 = icmp eq i8 %i.cu, 0
  br i1 %.not67, label %.preheader, label %sqlite3FindCollSeq.exit

.preheader:                                       ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.ct, align 8, !tbaa !5  ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.preheader, label %sqlite3FindCollSeq.exit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.cw to i64
  br label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sqlite3FindCollSeq.exit, label %.lr.ph, !llvm.loop !3490

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !902 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !367
  %i.dc = and i32 %i.db, 512
  %.not68 = icmp eq i32 %i.dc, 0
  br i1 %.not68, label %bb.ac, label %sqlite3FindCollSeq.exit

sqlite3FindCollSeq.exit:                          ; preds = %.lr.ph, %bb.ac, %.preheader, %bb.y, %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.s
  %.257 = phi ptr [ %i.cp, %bb.z ], [ %i.bt, %bb.s ], [ %i.ca, %bb.u ], [ %i.cp, %bb.aa ], [ %i.ck, %bb.y ], [ %i.cp, %bb.ab ], [ %i.cp, %.preheader ], [ %i.cz, %.lr.ph ], [ %i.cp, %bb.ac ] ; 2 uses
  %.not = icmp eq ptr %.257, null
  br i1 %.not, label %sqlite3CheckCollSeq.exit, label %bb.b

sqlite3FindCollSeq.exit.thread:                   ; preds = %bb.r, %findCollSeqEntry.exit.thread15.i, %bb.v
  %.3 = phi ptr [ %i.cf, %bb.v ], [ %i.br, %bb.r ], [ %i.bp, %findCollSeqEntry.exit.thread15.i ] ; 6 uses
  %.not.i70 = icmp eq ptr %.3, null
  br i1 %.not.i70, label %sqlite3CheckCollSeq.exit, label %bb.ad

bb.ad:                                            ; preds = %sqlite3FindCollSeq.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %.3, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1300
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ae, label %sqlite3CheckCollSeq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load ptr, ptr %.3, align 8, !tbaa !569
  %i.dh = load ptr, ptr %0, align 8, !tbaa !651
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 100
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !844
  %i.dk = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.dj, ptr noundef nonnull %.3, ptr noundef %i.dg)
  %.not12.not.i = icmp eq ptr %i.dk, null
  %spec.select = select i1 %.not12.not.i, ptr null, ptr %.3
  br label %sqlite3CheckCollSeq.exit

sqlite3CheckCollSeq.exit:                         ; preds = %sqlite3FindCollSeq.exit, %bb.w, %bb.a, %bb.f, %bb.ae, %sqlite3HashFind.exit.i.i, %bb.ad, %sqlite3FindCollSeq.exit.thread
  %i.dl = phi ptr [ %spec.select, %bb.ae ], [ null, %sqlite3HashFind.exit.i.i ], [ null, %sqlite3FindCollSeq.exit.thread ], [ %.3, %bb.ad ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.w ], [ null, %sqlite3FindCollSeq.exit ]
  ret ptr %i.dl
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3GetCollSeq(ptr noundef captures(none) %0, i8 noundef zeroext %1, ptr noundef readonly captures(address_is_null, ret: address, provenance) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !651    ; 30 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %sqlite3FindCollSeq.exit.thread68

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 640 ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !227     ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not6.i.i.i.i.i, label %strHash.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.d = phi i8 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ %i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.c ]
  %.047.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %3, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 1 ; 2 uses
  %i.f = and i8 %i.d, -33
  %i.g = zext i8 %i.f to i32
  %i.h = add i32 %.08.i.i.i.i.i, %i.g
  %i.i = mul i32 %i.h, -1640531535                ; 2 uses
  %i.j = load i8, ptr %i.e, align 1, !tbaa !227   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %strHash.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !958

strHash.exit.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !959  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %strHash.exit.i.i.i.i
  %i.m = load i32, ptr %i.b, align 8, !tbaa !960
  %i.n = urem i32 %.0.lcssa.i.i.i.i.i, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.o ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %strHash.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 644
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021.in.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.e ]
  %.pn.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.b, %bb.e ]
  %.021.i.i.i.i = load i32, ptr %.021.in.i.i.i.i, align 4, !tbaa !5 ; 2 uses
  %.not2631.i.i.i.i = icmp eq i32 %.021.i.i.i.i, 0
  br i1 %.not2631.i.i.i.i, label %sqlite3HashFind.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.f
  %.020.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %sqlite3StrICmp.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.133.i.in.i.i.i = phi ptr [ %.133.i.i.i.i, %sqlite3StrICmp.exit.i.i.i.i ], [ %.020.in.i.i.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.12232.i.i.i.i = phi i32 [ %i.ai, %sqlite3StrICmp.exit.i.i.i.i ], [ %.021.i.i.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.133.i.i.i.i = load ptr, ptr %.133.i.in.i.i.i, align 8, !tbaa !114 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !961
  %i.t = icmp eq i32 %.0.lcssa.i.i.i.i.i, %i.s
  br i1 %i.t, label %bb.g, label %sqlite3StrICmp.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !962
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.013.i.i.i.i.i = phi ptr [ %3, %bb.g ], [ %i.ah, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.ag, %bb.k ] ; 2 uses
  %i.w = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.x = load i8, ptr %.013.i.i.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.y = icmp eq i8 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %i.w, 0
  br i1 %i.z, label %sqlite3HashFind.exit.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = zext i8 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !227
  %i.ad = zext i8 %i.x to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !227
  %.not.i27.i.i.i.i = icmp eq i8 %i.ac, %i.af
  br i1 %.not.i27.i.i.i.i, label %bb.k, label %sqlite3StrICmp.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 1
  br label %bb.h

sqlite3StrICmp.exit.i.i.i.i:                      ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = add i32 %.12232.i.i.i.i, -1             ; 2 uses
  %.not26.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not26.i.i.i.i, label %sqlite3HashFind.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !963

sqlite3HashFind.exit.i.i:                         ; preds = %sqlite3StrICmp.exit.i.i.i.i, %bb.i, %bb.f
  %.0.i.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.f ], [ %.133.i.i.i.i, %bb.i ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3FindCollSeq.exit.thread, label %findCollSeqEntry.exit.thread15.i

findCollSeqEntry.exit.thread15.i:                 ; preds = %sqlite3HashFind.exit.i.i
  %i.am = zext i8 %1 to i64
  %i.an = getelementptr [40 x i8], ptr %i.ak, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -40
  br label %sqlite3FindCollSeq.exit

bb.l:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1299
  br label %sqlite3FindCollSeq.exit

sqlite3FindCollSeq.exit:                          ; preds = %bb.l, %findCollSeqEntry.exit.thread15.i
  %.0 = phi ptr [ %i.aq, %bb.l ], [ %i.ao, %findCollSeqEntry.exit.thread15.i ] ; 2 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %sqlite3FindCollSeq.exit.thread, label %sqlite3FindCollSeq.exit.thread68

sqlite3FindCollSeq.exit.thread68:                 ; preds = %bb.a, %sqlite3FindCollSeq.exit
  %.071 = phi ptr [ %.0, %sqlite3FindCollSeq.exit ], [ %2, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.071, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1300
  %.not24 = icmp eq ptr %i.as, null
  br i1 %.not24, label %sqlite3FindCollSeq.exit.thread, label %sqlite3FindCollSeq.exit58.thread77.thread

sqlite3FindCollSeq.exit.thread:                   ; preds = %sqlite3HashFind.exit.i.i, %sqlite3FindCollSeq.exit.thread68, %sqlite3FindCollSeq.exit
  %i.at = zext i8 %1 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 392 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1301
  %.not.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i28, label %sqlite3DbFreeNN.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3FindCollSeq.exit.thread
  %i.aw = icmp eq ptr %3, null
  br i1 %i.aw, label %callCollNeeded.exit.thread, label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.m
  %i.ax = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #60
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.ay), !inline_history !608 ; 14 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %callCollNeeded.exit.thread73, label %bb.n

bb.n:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %3, i64 %i.ay, i1 false)
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !1301
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1303
  tail call void %i.ba(ptr noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 256) %i.at, ptr noundef nonnull %i.az) #59, !inline_history !3491
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100
  %i.bf = icmp ult ptr %i.az, %i.be
  br i1 %i.bf, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !174
  %.not22.i = icmp ult ptr %i.az, %i.bh
  br i1 %.not22.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 488 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !49
  store ptr %i.az, ptr %i.bi, align 8, !tbaa !55
  br label %sqlite3DbFreeNN.exit

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !99
  %.not23.i = icmp ult ptr %i.az, %i.bl
  br i1 %.not23.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  store ptr %i.bn, ptr %i.az, align 8, !tbaa !49
  store ptr %i.az, ptr %i.bm, align 8, !tbaa !53
  br label %sqlite3DbFreeNN.exit

bb.s:                                             ; preds = %bb.q, %bb.n
end_hunk_0
