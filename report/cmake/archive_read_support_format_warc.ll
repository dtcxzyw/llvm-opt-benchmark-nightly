inline.NumInlined: 30
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_warc_rdhdr:bb.a
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.5) #12
  br label %_warc_skip.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.bu = add nsw i32 %i.bs, -10001
  %or.cond = icmp ult i32 %i.bu, -8801
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = udiv i32 %i.bs, 10000
  %i.bw = urem i32 %i.bs, 10000
  %.lhs.trunc = trunc nuw nsw i32 %i.bw to i16
  %i.bx = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.bx to i32
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.6, i32 noundef %i.bv, i32 noundef %.zext) #12
  br label %_warc_skip.exit.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.by = call ptr @memchr(ptr noundef nonnull readonly %i.p, i32 noundef 13, i64 noundef %i.br) #14 ; 9 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_warc_rdlen.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.04855.i.i95 = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 5 uses
  %i.ca = icmp ult ptr %.04855.i.i95, %spec.select.i294
  br i1 %i.ca, label %.lr.ph.preheader.i.i96, label %_warc_rdlen.exit.thread

.lr.ph.preheader.i.i96:                           ; preds = %bb.l
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !31
  %i.cc = sext i8 %i.cb to i32                    ; 3 uses
  %i.cd = ptrtoaddr ptr %i.by to i64
  %i.ce = add i64 %i.bp, -2
  %i.cf = sub i64 %i.ce, %i.cd                    ; 2 uses
  %i.cg = call i64 @llvm.umin.i64(i64 %i.cf, i64 15)
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check999 = icmp ult i64 %i.cf, 7
  br i1 %min.iters.check999, label %.lr.ph.i.i97.preheader, label %vector.ph1000

vector.ph1000:                                    ; preds = %.lr.ph.preheader.i.i96
  %n.vec1001 = and i64 %i.ch, 24                  ; 4 uses
  %i.ci = getelementptr i8, ptr %.04855.i.i95, i64 %n.vec1001 ; 2 uses
  %i.cj = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_warc_rdlen._key, i64 1), i64 %n.vec1001
  %i.ck = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cc, i64 0 ; 3 uses
  %i.cl = getelementptr i8, ptr %i.by, i64 5
  %wide.load1022 = load <4 x i8>, ptr %.04855.i.i95, align 1, !tbaa !31 ; 2 uses
  %wide.load1023 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !31 ; 3 uses
  %i.cm = sext <4 x i8> %wide.load1022 to <4 x i32>
  %i.cn = xor <4 x i32> %i.ck, %i.cm              ; 2 uses
  %i.co = xor <4 x i32> %i.ck, <i32 10, i32 67, i32 111, i32 110>
  %i.cp = icmp ne <4 x i8> %wide.load1022, <i8 10, i8 67, i8 111, i8 110> ; 2 uses
  %i.cq = icmp ne <4 x i8> %wide.load1023, <i8 116, i8 101, i8 110, i8 116> ; 2 uses
  %i.cr = icmp eq i64 %n.vec1001, 8
  br i1 %i.cr, label %middle.block1027, label %vector.body1004.1

vector.body1004.1:                                ; preds = %vector.ph1000
  %next.gep1012.1 = getelementptr i8, ptr %i.by, i64 9
  %i.cs = getelementptr i8, ptr %i.by, i64 13
  %wide.load1022.1 = load <4 x i8>, ptr %next.gep1012.1, align 1, !tbaa !31 ; 2 uses
  %wide.load1023.1 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !31 ; 2 uses
  %i.ct = sext <4 x i8> %wide.load1022.1 to <4 x i32>
  %i.cu = xor <4 x i32> %i.cn, %i.ct
  %i.cv = xor <4 x i8> %wide.load1023, %wide.load1023.1
  %i.cw = xor <4 x i32> %i.ck, <i32 39, i32 15, i32 10, i32 0>
  %i.cx = icmp ne <4 x i8> %wide.load1022.1, <i8 45, i8 76, i8 101, i8 110>
  %i.cy = icmp ne <4 x i8> %wide.load1023.1, <i8 103, i8 116, i8 104, i8 58>
  %i.cz = or <4 x i1> %i.cp, %i.cx
  %i.da = or <4 x i1> %i.cq, %i.cy
  br label %middle.block1027

middle.block1027:                                 ; preds = %vector.body1004.1, %vector.ph1000
  %index1005.lcssa = phi i64 [ 7, %vector.ph1000 ], [ 15, %vector.body1004.1 ] ; 2 uses
  %.lcssa1071 = phi <4 x i32> [ %i.cn, %vector.ph1000 ], [ %i.cu, %vector.body1004.1 ]
  %.lcssa1070.in = phi <4 x i8> [ %wide.load1023, %vector.ph1000 ], [ %i.cv, %vector.body1004.1 ]
  %.lcssa1069 = phi <4 x i32> [ %i.co, %vector.ph1000 ], [ %i.cw, %vector.body1004.1 ]
  %.lcssa1068 = phi <4 x i32> [ <i32 116, i32 101, i32 110, i32 116>, %vector.ph1000 ], [ <i32 19, i32 17, i32 6, i32 78>, %vector.body1004.1 ]
  %.lcssa1067.a = phi <4 x i1> [ %i.cp, %vector.ph1000 ], [ %i.cz, %vector.body1004.1 ]
  %.lcssa1066 = phi <4 x i1> [ %i.cq, %vector.ph1000 ], [ %i.da, %vector.body1004.1 ]
  %.lcssa1070 = sext <4 x i8> %.lcssa1070.in to <4 x i32>
  %next.gep1016 = getelementptr i8, ptr %.04855.i.i95, i64 %index1005.lcssa
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep1016, i64 1
  %next.gep1021 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_warc_rdlen._key, i64 1), i64 %index1005.lcssa
  %i.dc = getelementptr inbounds nuw i8, ptr %next.gep1021, i64 1
  %bin.rdx1028.a = or <4 x i1> %.lcssa1066, %.lcssa1067.a
  %bin.rdx1028.fr = freeze <4 x i1> %bin.rdx1028.a
  %i.dd = bitcast <4 x i1> %bin.rdx1028.fr to i4
  %.not1039 = icmp eq i4 %i.dd, 0                 ; 2 uses
  %rdx.select1029 = zext i1 %.not1039 to i32
  %bin.rdx1030 = xor <4 x i32> %.lcssa1068, %.lcssa1069
  %i.de = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx1030) ; 2 uses
  %bin.rdx1031 = xor <4 x i32> %.lcssa1071, %.lcssa1070
  %i.df = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx1031) ; 2 uses
  %i.dg = icmp ult ptr %i.db, %spec.select.i294
  %i.dh = icmp ult ptr %i.dc, getelementptr inbounds nuw (i8, ptr @_warc_rdlen._key, i64 17)
  %cmp.n1032 = icmp eq i64 %i.ch, %n.vec1001
  br i1 %cmp.n1032, label %._crit_edge.i.i105, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %.lr.ph.preheader.i.i96, %middle.block1027
  %.04860.i.i98.ph = phi ptr [ %.04855.i.i95, %.lr.ph.preheader.i.i96 ], [ %i.ci, %middle.block1027 ]
  %.04759.i.i99.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_warc_rdlen._key, i64 1), %.lr.ph.preheader.i.i96 ], [ %i.cj, %middle.block1027 ]
  %.058.i.i100.ph = phi i32 [ 1, %.lr.ph.preheader.i.i96 ], [ %rdx.select1029, %middle.block1027 ]
  %.04457.i.i101.ph = phi i32 [ %i.cc, %.lr.ph.preheader.i.i96 ], [ %i.de, %middle.block1027 ]
  %.04556.i.i102.ph = phi i32 [ %i.cc, %.lr.ph.preheader.i.i96 ], [ %i.df, %middle.block1027 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader, %.lr.ph.i.i97
  %.04860.i.i98 = phi ptr [ %.048.i.i104, %.lr.ph.i.i97 ], [ %.04860.i.i98.ph, %.lr.ph.i.i97.preheader ] ; 2 uses
  %.04759.i.i99 = phi ptr [ %.047.i.i103, %.lr.ph.i.i97 ], [ %.04759.i.i99.ph, %.lr.ph.i.i97.preheader ] ; 2 uses
  %.058.i.i100 = phi i32 [ %i.dp, %.lr.ph.i.i97 ], [ %.058.i.i100.ph, %.lr.ph.i.i97.preheader ]
  %.04457.i.i101 = phi i32 [ %i.dn, %.lr.ph.i.i97 ], [ %.04457.i.i101.ph, %.lr.ph.i.i97.preheader ]
  %.04556.i.i102 = phi i32 [ %i.dk, %.lr.ph.i.i97 ], [ %.04556.i.i102.ph, %.lr.ph.i.i97.preheader ]
  %i.di = load i8, ptr %.04860.i.i98, align 1, !tbaa !31 ; 2 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = xor i32 %.04556.i.i102, %i.dj           ; 2 uses
  %i.dl = load i8, ptr %.04759.i.i99, align 1, !tbaa !31 ; 2 uses
  %i.dm = sext i8 %i.dl to i32
  %i.dn = xor i32 %.04457.i.i101, %i.dm           ; 2 uses
  %i.do = icmp eq i8 %i.di, %i.dl
  %i.dp = select i1 %i.do, i32 %.058.i.i100, i32 0 ; 2 uses
  %.047.i.i103 = getelementptr inbounds nuw i8, ptr %.04759.i.i99, i64 1 ; 2 uses
  %.048.i.i104 = getelementptr inbounds nuw i8, ptr %.04860.i.i98, i64 1 ; 3 uses
  %i.dq = icmp ult ptr %.048.i.i104, %spec.select.i294 ; 2 uses
  %i.dr = icmp ult ptr %.047.i.i103, getelementptr inbounds nuw (i8, ptr @_warc_rdlen._key, i64 17) ; 2 uses
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %.lr.ph.i.i97, label %._crit_edge.i.i105.loopexit, !llvm.loop !35

._crit_edge.i.i105.loopexit:                      ; preds = %.lr.ph.i.i97
  %i.dt = icmp ne i32 %i.dp, 0
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %._crit_edge.i.i105.loopexit, %middle.block1027
  %.lcssa845 = phi i32 [ %i.df, %middle.block1027 ], [ %i.dk, %._crit_edge.i.i105.loopexit ]
  %.lcssa844 = phi i32 [ %i.de, %middle.block1027 ], [ %i.dn, %._crit_edge.i.i105.loopexit ]
  %.lcssa843 = phi i1 [ %.not1039, %middle.block1027 ], [ %i.dt, %._crit_edge.i.i105.loopexit ]
  %.048.i.i104.lcssa = phi ptr [ %i.ci, %middle.block1027 ], [ %.048.i.i104, %._crit_edge.i.i105.loopexit ] ; 3 uses
  %.lcssa842 = phi i1 [ %i.dg, %middle.block1027 ], [ %i.dq, %._crit_edge.i.i105.loopexit ]
  %.lcssa841 = phi i1 [ %i.dh, %middle.block1027 ], [ %i.dr, %._crit_edge.i.i105.loopexit ] ; 2 uses
  %.048.lcssa77.i.i106 = ptrtoaddr ptr %.048.i.i104.lcssa to i64
  %brmerge.i.i107 = select i1 %.lcssa841, i1 true, i1 %.lcssa843
  br i1 %brmerge.i.i107, label %xmemmem.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i105
  br i1 %.lcssa842, label %.lr.ph68.preheader.i.i108, label %_warc_rdlen.exit.thread

.lr.ph68.preheader.i.i108:                        ; preds = %.preheader.i.i
  %i.du = add i64 %i.br, %i.r
  %i.dv = sub i64 %i.du, %.048.lcssa77.i.i106
  %scevgep.i.i109 = getelementptr i8, ptr %.048.i.i104.lcssa, i64 %i.dv
  br label %.lr.ph68.i.i110

.lr.ph68.i.i110:                                  ; preds = %bb.n, %.lr.ph68.preheader.i.i108
  %.167.i.i111 = phi i32 [ %i.ec, %bb.n ], [ %.lcssa845, %.lr.ph68.preheader.i.i108 ]
  %.04666.i.i112 = phi ptr [ %i.dw, %bb.n ], [ %i.by, %.lr.ph68.preheader.i.i108 ] ; 2 uses
  %.14965.i.i113 = phi ptr [ %i.ei, %bb.n ], [ %.048.i.i104.lcssa, %.lr.ph68.preheader.i.i108 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.04666.i.i112, i64 1 ; 3 uses
  %i.dx = load i8, ptr %.04666.i.i112, align 1, !tbaa !31
  %i.dy = sext i8 %i.dx to i32
  %i.dz = xor i32 %.167.i.i111, %i.dy
  %i.ea = load i8, ptr %.14965.i.i113, align 1, !tbaa !31
  %i.eb = sext i8 %i.ea to i32
  %i.ec = xor i32 %i.dz, %i.eb                    ; 2 uses
  %i.ed = icmp eq i32 %i.ec, %.lcssa844
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph68.i.i110
  %i.ee = load i128, ptr %i.dw, align 1
  %i.ef = icmp ne i128 %i.ee, 138844115831858422486551771477367261709
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %xmemmem.exit.thread25.i.a, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph68.i.i110
  %i.ei = getelementptr inbounds nuw i8, ptr %.14965.i.i113, i64 1 ; 2 uses
  %exitcond.not.i.i114 = icmp eq ptr %i.ei, %scevgep.i.i109
  br i1 %exitcond.not.i.i114, label %_warc_rdlen.exit.thread, label %.lr.ph68.i.i110, !llvm.loop !32

xmemmem.exit.i:                                   ; preds = %._crit_edge.i.i105
  br i1 %.lcssa841, label %_warc_rdlen.exit.thread, label %xmemmem.exit.thread25.i.a

xmemmem.exit.thread25.i.a:                        ; preds = %bb.m, %xmemmem.exit.i
  %.050.i27.i.a = phi ptr [ %i.by, %xmemmem.exit.i ], [ %i.dw, %bb.m ] ; 3 uses
  %.050.i2751.i.a = ptrtoaddr ptr %.050.i27.i.a to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.050.i27.i.a, i64 17 ; 5 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.bp, %i.ek
  %i.em = call ptr @memchr(ptr noundef nonnull readonly %i.ej, i32 noundef 13, i64 noundef %i.el) #14 ; 6 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_warc_rdlen.exit.thread, label %bb.o

bb.o:                                             ; preds = %xmemmem.exit.thread25.i.a
  %.04855.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  %i.eo = icmp ult ptr %.04855.i.i.i, %spec.select.i294
  br i1 %i.eo, label %.lr.ph.preheader.i.i.i, label %_warc_rdlen.exit.thread

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.ep = load i8, ptr %i.em, align 1, !tbaa !31  ; 2 uses
  %i.eq = load i8, ptr %.04855.i.i.i, align 1, !tbaa !31 ; 2 uses
  %i.er = xor i8 %i.ep, 10
  %i.es = sext i8 %i.er to i32
  %i.et = icmp eq i8 %i.eq, 10                    ; 2 uses
  %.048.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 2 ; 2 uses
  %i.eu = icmp uge ptr %.048.i.i.i, %spec.select.i294
  %brmerge.i23.i.a = or i1 %i.eu, %i.et
  br i1 %brmerge.i23.i.a, label %_warc_find_eol.exit.i, label %.lr.ph68.preheader.i.i.i

.lr.ph68.preheader.i.i.i:                         ; preds = %.lr.ph.preheader.i.i.i
  %i.ev = xor i8 %i.eq, %i.ep
  %i.ew = sext i8 %i.ev to i32
  br label %.lr.ph68.i.i.i

.lr.ph68.i.i.i:                                   ; preds = %bb.q, %.lr.ph68.preheader.i.i.i
  %.167.i.i.i = phi i32 [ %i.fd, %bb.q ], [ %i.ew, %.lr.ph68.preheader.i.i.i ]
  %.04666.i.i.i = phi ptr [ %i.ex, %bb.q ], [ %i.em, %.lr.ph68.preheader.i.i.i ] ; 2 uses
  %.14965.i.i.i = phi ptr [ %i.fg, %bb.q ], [ %.048.i.i.i, %.lr.ph68.preheader.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04666.i.i.i, i64 1 ; 3 uses
  %i.ey = load i8, ptr %.04666.i.i.i, align 1, !tbaa !31
  %i.ez = sext i8 %i.ey to i32
  %i.fa = xor i32 %.167.i.i.i, %i.ez
  %i.fb = load i8, ptr %.14965.i.i.i, align 1, !tbaa !31
  %i.fc = sext i8 %i.fb to i32
  %i.fd = xor i32 %i.fa, %i.fc                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, %i.es
  br i1 %i.fe, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph68.i.i.i
  %lhsc.i.i = load i8, ptr %i.ex, align 1
  %i.ff = icmp eq i8 %lhsc.i.i, 13
  br i1 %i.ff, label %.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph68.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.fg, %spec.select.i294
  br i1 %exitcond.not.i.i.i, label %_warc_rdlen.exit.thread, label %.lr.ph68.i.i.i, !llvm.loop !32

_warc_find_eol.exit.i:                            ; preds = %.lr.ph.preheader.i.i.i
  br i1 %i.et, label %.preheader.i, label %_warc_rdlen.exit.thread

.preheader.i:                                     ; preds = %bb.p, %_warc_find_eol.exit.i
  %.050.i.i5063.in.i.a = phi ptr [ %i.em, %_warc_find_eol.exit.i ], [ %i.ex, %bb.p ] ; 4 uses
  %i.fh = icmp ult ptr %i.ej, %.050.i.i5063.in.i.a
  br i1 %i.fh, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.050.i.i5063.i.a = ptrtoaddr ptr %.050.i.i5063.in.i.a to i64
  %i.fi = sub i64 %.050.i.i5063.i.a, %.050.i2751.i.a
  %scevgep.i = getelementptr i8, ptr %.050.i27.i.a, i64 %i.fi
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.01838.i.a = phi ptr [ %i.fk, %.critedge2.i ], [ %i.ej, %.lr.ph.preheader.i ] ; 3 uses
  %i.fj = load i8, ptr %.01838.i.a, align 1, !tbaa !31
  switch i8 %i.fj, label %.critedge.i [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.01838.i.a, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.fk, %.050.i.i5063.in.i.a
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !38

.critedge.i:                                      ; preds = %.critedge2.i, %.lr.ph.i, %.preheader.i
  %.018.lcssa.i = phi ptr [ %i.ej, %.preheader.i ], [ %scevgep.i, %.critedge2.i ], [ %.01838.i.a, %.lr.ph.i ] ; 2 uses
  %i.fl = tail call ptr @__ctype_b_loc() #15      ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !39
  %i.fn = load i8, ptr %.018.lcssa.i, align 1, !tbaa !31
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !41
  %i.fr = and i16 %i.fq, 2048
  %.not.i116 = icmp eq i16 %i.fr, 0
  br i1 %.not.i116, label %_warc_rdlen.exit.thread, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.fs = tail call ptr @__errno_location() #15   ; 2 uses
  store i32 0, ptr %i.fs, align 4, !tbaa !43
  %i.ft = call i64 @__isoc23_strtol(ptr noundef nonnull %.018.lcssa.i, ptr noundef nonnull %i.c, i32 noundef 10) #12 ; 4 uses
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !43
  %.not21.i = icmp eq i32 %i.fu, 0
  %i.fv = load ptr, ptr %i.c, align 8
  %.not22.i = icmp eq ptr %i.fv, %.050.i.i5063.in.i.a
  %or.cond.i = select i1 %.not21.i, i1 %.not22.i, i1 false
  br i1 %or.cond.i, label %_warc_rdlen.exit, label %_warc_rdlen.exit.thread

_warc_rdlen.exit.thread:                          ; preds = %_warc_find_eol.exit.i, %xmemmem.exit.i, %.critedge.i, %bb.r, %bb.l, %bb.k, %.preheader.i.i, %bb.o, %xmemmem.exit.thread25.i.a, %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit

_warc_rdlen.exit:                                 ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.fw = icmp slt i64 %i.ft, 0
  br i1 %i.fw, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %_warc_rdlen.exit, %_warc_rdlen.exit.thread
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.7) #12
  br label %_warc_skip.exit.thread

bb.s:                                             ; preds = %_warc_rdlen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !34
  %i.fx = call ptr @memchr(ptr noundef nonnull readonly %i.p, i32 noundef 13, i64 noundef %i.br) #14 ; 5 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_warc_rdrtm.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.04855.i.i118 = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %i.fz = icmp ult ptr %.04855.i.i118, %spec.select.i294
  br i1 %i.fz, label %.lr.ph.preheader.i.i120, label %_warc_rdrtm.exit.thread

.lr.ph.preheader.i.i120:                          ; preds = %bb.t
  %i.ga = load i8, ptr %i.fx, align 1, !tbaa !31
  %i.gb = sext i8 %i.ga to i32                    ; 2 uses
  br label %.lr.ph.i.i121

.lr.ph.i.i121:                                    ; preds = %.lr.ph.i.i121, %.lr.ph.preheader.i.i120
  %.04860.i.i122 = phi ptr [ %.048.i.i128, %.lr.ph.i.i121 ], [ %.04855.i.i118, %.lr.ph.preheader.i.i120 ] ; 2 uses
  %.04759.i.i123 = phi ptr [ %.047.i.i127, %.lr.ph.i.i121 ], [ getelementptr inbounds nuw (i8, ptr @_warc_rdrtm._key, i64 1), %.lr.ph.preheader.i.i120 ] ; 2 uses
  %.058.i.i124 = phi i32 [ %i.gj, %.lr.ph.i.i121 ], [ 1, %.lr.ph.preheader.i.i120 ]
  %.04457.i.i125 = phi i32 [ %i.gh, %.lr.ph.i.i121 ], [ %i.gb, %.lr.ph.preheader.i.i120 ]
  %.04556.i.i126 = phi i32 [ %i.ge, %.lr.ph.i.i121 ], [ %i.gb, %.lr.ph.preheader.i.i120 ]
  %i.gc = load i8, ptr %.04860.i.i122, align 1, !tbaa !31 ; 2 uses
  %i.gd = sext i8 %i.gc to i32
  %i.ge = xor i32 %.04556.i.i126, %i.gd           ; 2 uses
  %i.gf = load i8, ptr %.04759.i.i123, align 1, !tbaa !31 ; 2 uses
  %i.gg = sext i8 %i.gf to i32
  %i.gh = xor i32 %.04457.i.i125, %i.gg           ; 2 uses
  %i.gi = icmp eq i8 %i.gc, %i.gf
  %i.gj = select i1 %i.gi, i32 %.058.i.i124, i32 0 ; 2 uses
  %.047.i.i127 = getelementptr inbounds nuw i8, ptr %.04759.i.i123, i64 1 ; 2 uses
  %.048.i.i128 = getelementptr inbounds nuw i8, ptr %.04860.i.i122, i64 1 ; 5 uses
  %i.gk = icmp ult ptr %.048.i.i128, %spec.select.i294 ; 2 uses
  %i.gl = icmp ult ptr %.047.i.i127, getelementptr inbounds nuw (i8, ptr @_warc_rdrtm._key, i64 12) ; 3 uses
  %i.gm = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %i.gm, label %.lr.ph.i.i121, label %._crit_edge.i.i129, !llvm.loop !44

._crit_edge.i.i129:                               ; preds = %.lr.ph.i.i121
  %i.gn = icmp ne i32 %i.gj, 0
  %.048.lcssa77.i.i130 = ptrtoaddr ptr %.048.i.i128 to i64
  %brmerge.i.i131 = select i1 %i.gl, i1 true, i1 %i.gn
  br i1 %brmerge.i.i131, label %xmemmem.exit.i153, label %.preheader.i.i132

.preheader.i.i132:                                ; preds = %._crit_edge.i.i129
  br i1 %i.gk, label %.lr.ph68.preheader.i.i133, label %_warc_rdrtm.exit.thread

.lr.ph68.preheader.i.i133:                        ; preds = %.preheader.i.i132
  %i.go = add i64 %i.br, %i.r
  %i.gp = sub i64 %i.go, %.048.lcssa77.i.i130
  %scevgep.i.i134 = getelementptr i8, ptr %.048.i.i128, i64 %i.gp
  br label %.lr.ph68.i.i135

.lr.ph68.i.i135:                                  ; preds = %bb.v, %.lr.ph68.preheader.i.i133
  %.167.i.i136 = phi i32 [ %i.gw, %bb.v ], [ %i.ge, %.lr.ph68.preheader.i.i133 ]
  %.04666.i.i137 = phi ptr [ %i.gq, %bb.v ], [ %i.fx, %.lr.ph68.preheader.i.i133 ] ; 2 uses
  %.14965.i.i138 = phi ptr [ %i.hh, %bb.v ], [ %.048.i.i128, %.lr.ph68.preheader.i.i133 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.04666.i.i137, i64 1 ; 4 uses
  %i.gr = load i8, ptr %.04666.i.i137, align 1, !tbaa !31
  %i.gs = sext i8 %i.gr to i32
  %i.gt = xor i32 %.167.i.i136, %i.gs
  %i.gu = load i8, ptr %.14965.i.i138, align 1, !tbaa !31
  %i.gv = sext i8 %i.gu to i32
  %i.gw = xor i32 %i.gt, %i.gv                    ; 2 uses
  %i.gx = icmp eq i32 %i.gw, %i.gh
  br i1 %i.gx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph68.i.i135
  %i.gy = load i64, ptr %i.gq, align 1
  %i.gz = xor i64 %i.gy, 4912656789093681677
  %i.ha = getelementptr i8, ptr %i.gq, i64 3
  %i.hb = load i64, ptr %i.ha, align 1
  %i.hc = xor i64 %i.hb, 7310575040574214721
  %i.hd = or i64 %i.gz, %i.hc
  %i.he = icmp ne i64 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %xmemmem.exit.thread14.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph68.i.i135
  %i.hh = getelementptr inbounds nuw i8, ptr %.14965.i.i138, i64 1 ; 2 uses
  %exitcond.not.i.i139 = icmp eq ptr %i.hh, %scevgep.i.i134
  br i1 %exitcond.not.i.i139, label %_warc_rdrtm.exit.thread, label %.lr.ph68.i.i135, !llvm.loop !32

xmemmem.exit.i153:                                ; preds = %._crit_edge.i.i129
  br i1 %i.gl, label %_warc_rdrtm.exit.thread, label %xmemmem.exit.thread14.i

xmemmem.exit.thread14.i:                          ; preds = %bb.u, %xmemmem.exit.i153
  %.050.i16.i = phi ptr [ %i.fx, %xmemmem.exit.i153 ], [ %i.gq, %bb.u ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.050.i16.i, i64 12 ; 3 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.bp, %i.hj
  %i.hl = call ptr @memchr(ptr noundef nonnull readonly %i.hi, i32 noundef 13, i64 noundef %i.hk) #14 ; 6 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_warc_rdrtm.exit.thread, label %bb.w

bb.w:                                             ; preds = %xmemmem.exit.thread14.i
  %.04855.i.i.i141 = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 2 uses
  %i.hn = icmp ult ptr %.04855.i.i.i141, %spec.select.i294
  br i1 %i.hn, label %.lr.ph.preheader.i.i.i142, label %_warc_rdrtm.exit.thread

.lr.ph.preheader.i.i.i142:                        ; preds = %bb.w
  %i.ho = load i8, ptr %i.hl, align 1, !tbaa !31  ; 2 uses
  %i.hp = load i8, ptr %.04855.i.i.i141, align 1, !tbaa !31 ; 2 uses
  %i.hq = xor i8 %i.ho, 10
  %i.hr = sext i8 %i.hq to i32
  %i.hs = icmp eq i8 %i.hp, 10                    ; 2 uses
  %.048.i.i.i143 = getelementptr inbounds nuw i8, ptr %i.hl, i64 2 ; 2 uses
  %i.ht = icmp uge ptr %.048.i.i.i143, %spec.select.i294
  %brmerge.i12.i = or i1 %i.ht, %i.hs
  br i1 %brmerge.i12.i, label %_warc_find_eol.exit.i152, label %.lr.ph68.preheader.i.i.i144

.lr.ph68.preheader.i.i.i144:                      ; preds = %.lr.ph.preheader.i.i.i142
  %i.hu = xor i8 %i.hp, %i.ho
  %i.hv = sext i8 %i.hu to i32
  br label %.lr.ph68.i.i.i145

.lr.ph68.i.i.i145:                                ; preds = %bb.y, %.lr.ph68.preheader.i.i.i144
  %.167.i.i.i146 = phi i32 [ %i.ic, %bb.y ], [ %i.hv, %.lr.ph68.preheader.i.i.i144 ]
  %.04666.i.i.i147 = phi ptr [ %i.hw, %bb.y ], [ %i.hl, %.lr.ph68.preheader.i.i.i144 ] ; 2 uses
  %.14965.i.i.i148 = phi ptr [ %i.if, %bb.y ], [ %.048.i.i.i143, %.lr.ph68.preheader.i.i.i144 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04666.i.i.i147, i64 1 ; 3 uses
  %i.hx = load i8, ptr %.04666.i.i.i147, align 1, !tbaa !31
  %i.hy = sext i8 %i.hx to i32
  %i.hz = xor i32 %.167.i.i.i146, %i.hy
  %i.ia = load i8, ptr %.14965.i.i.i148, align 1, !tbaa !31
  %i.ib = sext i8 %i.ia to i32
  %i.ic = xor i32 %i.hz, %i.ib                    ; 2 uses
  %i.id = icmp eq i32 %i.ic, %i.hr
  br i1 %i.id, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph68.i.i.i145
  %lhsc.i.i150 = load i8, ptr %i.hw, align 1
  %i.ie = icmp eq i8 %lhsc.i.i150, 13
  br i1 %i.ie, label %_warc_find_eol.exit.thread18.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph68.i.i.i145
  %i.if = getelementptr inbounds nuw i8, ptr %.14965.i.i.i148, i64 1 ; 2 uses
  %exitcond.not.i.i.i149 = icmp eq ptr %i.if, %spec.select.i294
  br i1 %exitcond.not.i.i.i149, label %_warc_rdrtm.exit.thread, label %.lr.ph68.i.i.i145, !llvm.loop !32

_warc_find_eol.exit.i152:                         ; preds = %.lr.ph.preheader.i.i.i142
  br i1 %i.hs, label %_warc_find_eol.exit.thread18.i, label %_warc_rdrtm.exit.thread

_warc_find_eol.exit.thread18.i:                   ; preds = %bb.x, %_warc_find_eol.exit.i152
  %.050.i.i20.i = phi ptr [ %i.hl, %_warc_find_eol.exit.i152 ], [ %i.hw, %bb.x ]
  %i.ig = call fastcc i64 @xstrpisotime(ptr noundef %i.hi, ptr noundef %i.b) ; 4 uses
  %i.ih = load ptr, ptr %i.b, align 8, !tbaa !34
  %.not.i151 = icmp eq ptr %i.ih, %.050.i.i20.i
  br i1 %.not.i151, label %_warc_rdrtm.exit, label %_warc_rdrtm.exit.thread

_warc_rdrtm.exit.thread:                          ; preds = %_warc_find_eol.exit.i152, %xmemmem.exit.i153, %_warc_find_eol.exit.thread18.i, %bb.t, %bb.s, %.preheader.i.i132, %bb.w, %xmemmem.exit.thread14.i, %bb.v, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit324

_warc_rdrtm.exit:                                 ; preds = %_warc_find_eol.exit.thread18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ii = icmp eq i64 %i.ig, -1
  br i1 %i.ii, label %.loopexit324, label %bb.z

.loopexit324:                                     ; preds = %_warc_rdrtm.exit, %_warc_rdrtm.exit.thread
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.8) #12
  br label %_warc_skip.exit.thread

bb.z:                                             ; preds = %_warc_rdrtm.exit
  store i32 983040, ptr %i.k, align 8, !tbaa !45
  %i.ij = load i32, ptr %i.l, align 8, !tbaa !46
  %.not = icmp eq i32 %i.bs, %i.ij
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = udiv i32 %i.bs, 10000
  %i.il = urem i32 %i.bs, 10000
  %.lhs.trunc312 = trunc nuw nsw i32 %i.il to i16
  %i.im = udiv i16 %.lhs.trunc312, 100
  %.zext313 = zext nneg i16 %i.im to i32
  call void (ptr, ptr, ...) @archive_string_sprintf(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.9, i32 noundef %i.ik, i32 noundef %.zext313) #12
  store i32 %i.bs, ptr %i.l, align 8, !tbaa !46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.in = call ptr @memchr(ptr noundef nonnull readonly %i.p, i32 noundef 13, i64 noundef %i.br) #14 ; 5 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.04855.i.i154 = getelementptr inbounds nuw i8, ptr %i.in, i64 1 ; 2 uses
  %i.ip = icmp ult ptr %.04855.i.i154, %spec.select.i294
  br i1 %i.ip, label %.lr.ph.preheader.i.i156, label %.thread

.lr.ph.preheader.i.i156:                          ; preds = %bb.ac
  %i.iq = load i8, ptr %i.in, align 1, !tbaa !31
  %i.ir = sext i8 %i.iq to i32                    ; 2 uses
  br label %.lr.ph.i.i157

.lr.ph.i.i157:                                    ; preds = %.lr.ph.i.i157, %.lr.ph.preheader.i.i156
  %.04860.i.i158 = phi ptr [ %.048.i.i164, %.lr.ph.i.i157 ], [ %.04855.i.i154, %.lr.ph.preheader.i.i156 ] ; 2 uses
  %.04759.i.i159 = phi ptr [ %.047.i.i163, %.lr.ph.i.i157 ], [ getelementptr inbounds nuw (i8, ptr @_warc_rdtyp._key, i64 1), %.lr.ph.preheader.i.i156 ] ; 2 uses
  %.058.i.i160 = phi i32 [ %i.iz, %.lr.ph.i.i157 ], [ 1, %.lr.ph.preheader.i.i156 ]
  %.04457.i.i161 = phi i32 [ %i.ix, %.lr.ph.i.i157 ], [ %i.ir, %.lr.ph.preheader.i.i156 ]
  %.04556.i.i162 = phi i32 [ %i.iu, %.lr.ph.i.i157 ], [ %i.ir, %.lr.ph.preheader.i.i156 ]
  %i.is = load i8, ptr %.04860.i.i158, align 1, !tbaa !31 ; 2 uses
  %i.it = sext i8 %i.is to i32
  %i.iu = xor i32 %.04556.i.i162, %i.it           ; 2 uses
  %i.iv = load i8, ptr %.04759.i.i159, align 1, !tbaa !31 ; 2 uses
  %i.iw = sext i8 %i.iv to i32
  %i.ix = xor i32 %.04457.i.i161, %i.iw           ; 2 uses
  %i.iy = icmp eq i8 %i.is, %i.iv
  %i.iz = select i1 %i.iy, i32 %.058.i.i160, i32 0 ; 2 uses
  %.047.i.i163 = getelementptr inbounds nuw i8, ptr %.04759.i.i159, i64 1 ; 2 uses
  %.048.i.i164 = getelementptr inbounds nuw i8, ptr %.04860.i.i158, i64 1 ; 5 uses
  %i.ja = icmp ult ptr %.048.i.i164, %spec.select.i294 ; 2 uses
  %i.jb = icmp ult ptr %.047.i.i163, getelementptr inbounds nuw (i8, ptr @_warc_rdtyp._key, i64 12) ; 3 uses
  %i.jc = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %i.jc, label %.lr.ph.i.i157, label %._crit_edge.i.i165, !llvm.loop !44

._crit_edge.i.i165:                               ; preds = %.lr.ph.i.i157
  %i.jd = icmp ne i32 %i.iz, 0
  %.048.lcssa77.i.i166 = ptrtoaddr ptr %.048.i.i164 to i64
  %brmerge.i.i167 = select i1 %i.jb, i1 true, i1 %i.jd
  br i1 %brmerge.i.i167, label %xmemmem.exit.i198, label %.preheader.i.i168

.preheader.i.i168:                                ; preds = %._crit_edge.i.i165
  br i1 %i.ja, label %.lr.ph68.preheader.i.i169, label %.thread

.lr.ph68.preheader.i.i169:                        ; preds = %.preheader.i.i168
  %i.je = add i64 %i.br, %i.r
  %i.jf = sub i64 %i.je, %.048.lcssa77.i.i166
  %scevgep.i.i170 = getelementptr i8, ptr %.048.i.i164, i64 %i.jf
  br label %.lr.ph68.i.i171

.lr.ph68.i.i171:                                  ; preds = %bb.ae, %.lr.ph68.preheader.i.i169
  %.167.i.i172 = phi i32 [ %i.jm, %bb.ae ], [ %i.iu, %.lr.ph68.preheader.i.i169 ]
  %.04666.i.i173 = phi ptr [ %i.jg, %bb.ae ], [ %i.in, %.lr.ph68.preheader.i.i169 ] ; 2 uses
  %.14965.i.i174 = phi ptr [ %i.jx, %bb.ae ], [ %.048.i.i164, %.lr.ph68.preheader.i.i169 ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.04666.i.i173, i64 1 ; 4 uses
  %i.jh = load i8, ptr %.04666.i.i173, align 1, !tbaa !31
  %i.ji = sext i8 %i.jh to i32
  %i.jj = xor i32 %.167.i.i172, %i.ji
  %i.jk = load i8, ptr %.14965.i.i174, align 1, !tbaa !31
  %i.jl = sext i8 %i.jk to i32
  %i.jm = xor i32 %i.jj, %i.jl                    ; 2 uses
  %i.jn = icmp eq i32 %i.jm, %i.ix
  br i1 %i.jn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph68.i.i171
  %i.jo = load i64, ptr %i.jg, align 1
  %i.jp = xor i64 %i.jo, 6065578293700528653
  %i.jq = getelementptr i8, ptr %i.jg, i64 3
  %i.jr = load i64, ptr %i.jq, align 1
  %i.js = xor i64 %i.jr, 7309475597665915457
  %i.jt = or i64 %i.jp, %i.js
  %i.ju = icmp ne i64 %i.jt, 0
  %i.jv = zext i1 %i.ju to i32
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %xmemmem.exit.thread24.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph68.i.i171
  %i.jx = getelementptr inbounds nuw i8, ptr %.14965.i.i174, i64 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq ptr %i.jx, %scevgep.i.i170
  br i1 %exitcond.not.i.i175, label %.thread, label %.lr.ph68.i.i171, !llvm.loop !32

xmemmem.exit.i198:                                ; preds = %._crit_edge.i.i165
  br i1 %i.jb, label %.thread, label %xmemmem.exit.thread24.i

xmemmem.exit.thread24.i:                          ; preds = %bb.ad, %xmemmem.exit.i198
  %.050.i26.i = phi ptr [ %i.in, %xmemmem.exit.i198 ], [ %i.jg, %bb.ad ] ; 3 uses
  %.050.i2650.i = ptrtoaddr ptr %.050.i26.i to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %.050.i26.i, i64 12 ; 5 uses
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.bp, %i.jz
  %i.kb = call ptr @memchr(ptr noundef nonnull readonly %i.jy, i32 noundef 13, i64 noundef %i.ka) #14 ; 6 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %.thread, label %bb.af

bb.af:                                            ; preds = %xmemmem.exit.thread24.i
  %.04855.i.i.i177 = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 2 uses
  %i.kd = icmp ult ptr %.04855.i.i.i177, %spec.select.i294
  br i1 %i.kd, label %.lr.ph.preheader.i.i.i178, label %.thread

.lr.ph.preheader.i.i.i178:                        ; preds = %bb.af
  %i.ke = load i8, ptr %i.kb, align 1, !tbaa !31  ; 2 uses
  %i.kf = load i8, ptr %.04855.i.i.i177, align 1, !tbaa !31 ; 2 uses
  %i.kg = xor i8 %i.ke, 10
  %i.kh = sext i8 %i.kg to i32
  %i.ki = icmp eq i8 %i.kf, 10                    ; 2 uses
  %.048.i.i.i179 = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 2 uses
  %i.kj = icmp uge ptr %.048.i.i.i179, %spec.select.i294
  %brmerge.i22.i = or i1 %i.kj, %i.ki
  br i1 %brmerge.i22.i, label %_warc_find_eol.exit.i196, label %.lr.ph68.preheader.i.i.i180

.lr.ph68.preheader.i.i.i180:                      ; preds = %.lr.ph.preheader.i.i.i178
  %i.kk = xor i8 %i.kf, %i.ke
  %i.kl = sext i8 %i.kk to i32
  br label %.lr.ph68.i.i.i181

.lr.ph68.i.i.i181:                                ; preds = %bb.ah, %.lr.ph68.preheader.i.i.i180
  %.167.i.i.i182 = phi i32 [ %i.ks, %bb.ah ], [ %i.kl, %.lr.ph68.preheader.i.i.i180 ]
  %.04666.i.i.i183 = phi ptr [ %i.km, %bb.ah ], [ %i.kb, %.lr.ph68.preheader.i.i.i180 ] ; 2 uses
  %.14965.i.i.i184 = phi ptr [ %i.kv, %bb.ah ], [ %.048.i.i.i179, %.lr.ph68.preheader.i.i.i180 ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.04666.i.i.i183, i64 1 ; 3 uses
  %i.kn = load i8, ptr %.04666.i.i.i183, align 1, !tbaa !31
  %i.ko = sext i8 %i.kn to i32
  %i.kp = xor i32 %.167.i.i.i182, %i.ko
  %i.kq = load i8, ptr %.14965.i.i.i184, align 1, !tbaa !31
  %i.kr = sext i8 %i.kq to i32
  %i.ks = xor i32 %i.kp, %i.kr                    ; 2 uses
  %i.kt = icmp eq i32 %i.ks, %i.kh
  br i1 %i.kt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph68.i.i.i181
  %lhsc.i.i186 = load i8, ptr %i.km, align 1
  %i.ku = icmp eq i8 %lhsc.i.i186, 13
  br i1 %i.ku, label %.preheader.i188, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph68.i.i.i181
  %i.kv = getelementptr inbounds nuw i8, ptr %.14965.i.i.i184, i64 1 ; 2 uses
  %exitcond.not.i.i.i185 = icmp eq ptr %i.kv, %spec.select.i294
  br i1 %exitcond.not.i.i.i185, label %.thread, label %.lr.ph68.i.i.i181, !llvm.loop !32

_warc_find_eol.exit.i196:                         ; preds = %.lr.ph.preheader.i.i.i178
  br i1 %i.ki, label %.preheader.i188, label %.thread

.preheader.i188:                                  ; preds = %bb.ag, %_warc_find_eol.exit.i196
  %.050.i.i4962.in.i = phi ptr [ %i.kb, %_warc_find_eol.exit.i196 ], [ %i.km, %bb.ag ] ; 4 uses
  %i.kw = icmp ult ptr %i.jy, %.050.i.i4962.in.i
  br i1 %i.kw, label %.lr.ph.preheader.i191, label %.critedge.i189

.lr.ph.preheader.i191:                            ; preds = %.preheader.i188
  %.050.i.i4962.i = ptrtoaddr ptr %.050.i.i4962.in.i to i64
  %i.kx = sub i64 %.050.i.i4962.i, %.050.i2650.i
  %scevgep.i192 = getelementptr i8, ptr %.050.i26.i, i64 %i.kx
  br label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.critedge2.i194, %.lr.ph.preheader.i191
  %.01837.i = phi ptr [ %i.kz, %.critedge2.i194 ], [ %i.jy, %.lr.ph.preheader.i191 ] ; 3 uses
  %i.ky = load i8, ptr %.01837.i, align 1, !tbaa !31
  switch i8 %i.ky, label %.critedge.i189 [
    i8 32, label %.critedge2.i194
    i8 9, label %.critedge2.i194
  ]

.critedge2.i194:                                  ; preds = %.lr.ph.i193, %.lr.ph.i193
  %i.kz = getelementptr inbounds nuw i8, ptr %.01837.i, i64 1 ; 2 uses
  %exitcond.not.i195 = icmp eq ptr %i.kz, %.050.i.i4962.in.i
  br i1 %exitcond.not.i195, label %.critedge.i189, label %.lr.ph.i193, !llvm.loop !49

.critedge.i189:                                   ; preds = %.critedge2.i194, %.lr.ph.i193, %.preheader.i188
  %.018.lcssa.i190 = phi ptr [ %i.jy, %.preheader.i188 ], [ %scevgep.i192, %.critedge2.i194 ], [ %.01837.i, %.lr.ph.i193 ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.018.lcssa.i190, i64 8
  %i.lb = icmp eq ptr %i.la, %.050.i.i4962.in.i
  br i1 %i.lb, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %.critedge.i189
  %i.lc = load i64, ptr %.018.lcssa.i190, align 1
  %i.ld = icmp ne i64 %i.lc, 7305808869231650162
  %i.le = zext i1 %i.ld to i32
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lg = load i64, ptr %.018.lcssa.i190, align 1
  %i.lh = icmp ne i64 %i.lg, 7310308045059482994
  %i.li = zext i1 %i.lh to i32
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ah, %.critedge.i189, %bb.aj, %xmemmem.exit.thread24.i, %bb.af, %.preheader.i.i168, %bb.ab, %bb.ac, %_warc_find_eol.exit.i196, %xmemmem.exit.i198
  store i64 %i.ft, ptr %i.g, align 8, !tbaa !50
  store i64 0, ptr %i.n, align 8, !tbaa !51
  br label %.critedge

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i64 %i.ft, ptr %i.g, align 8, !tbaa !50
  store i64 0, ptr %i.n, align 8, !tbaa !51
  %i.lk = call ptr @memchr(ptr noundef nonnull readonly %i.p, i32 noundef 13, i64 noundef %i.br) #14 ; 9 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.04855.i.i199 = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 5 uses
  %i.lm = icmp ult ptr %.04855.i.i199, %spec.select.i294
  br i1 %i.lm, label %.lr.ph.preheader.i.i200, label %.critedge

.lr.ph.preheader.i.i200:                          ; preds = %bb.al
  %i.ln = load i8, ptr %i.lk, align 1, !tbaa !31
  %i.lo = sext i8 %i.ln to i32                    ; 3 uses
  %i.lp = ptrtoaddr ptr %i.lk to i64
  %i.lq = add i64 %i.bp, -2
  %i.lr = sub i64 %i.lq, %i.lp                    ; 2 uses
  %i.ls = call i64 @llvm.umin.i64(i64 %i.lr, i64 16)
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lr, 7
  br i1 %min.iters.check, label %.lr.ph.i.i201.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i200
  %n.vec = and i64 %i.lt, 56                      ; 4 uses
  %i.lu = getelementptr i8, ptr %.04855.i.i199, i64 %n.vec ; 2 uses
  %i.lv = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_warc_rduri._key, i64 1), i64 %n.vec
  %i.lw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.lo, i64 0 ; 3 uses
  %i.lx = getelementptr i8, ptr %i.lk, i64 5
  %wide.load = load <4 x i8>, ptr %.04855.i.i199, align 1, !tbaa !31 ; 2 uses
  %wide.load990 = load <4 x i8>, ptr %i.lx, align 1, !tbaa !31 ; 3 uses
  %i.ly = sext <4 x i8> %wide.load to <4 x i32>
  %i.lz = xor <4 x i32> %i.lw, %i.ly              ; 2 uses
  %i.ma = xor <4 x i32> %i.lw, <i32 10, i32 87, i32 65, i32 82>
  %i.mb = icmp ne <4 x i8> %wide.load, <i8 10, i8 87, i8 65, i8 82> ; 2 uses
  %i.mc = icmp ne <4 x i8> %wide.load990, <i8 67, i8 45, i8 84, i8 97> ; 2 uses
  %i.md = icmp eq i64 %n.vec, 8
  br i1 %i.md, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.lk, i64 9
  %i.me = getelementptr i8, ptr %i.lk, i64 13
  %wide.load.1 = load <4 x i8>, ptr %next.gep.1, align 1, !tbaa !31 ; 2 uses
  %wide.load990.1 = load <4 x i8>, ptr %i.me, align 1, !tbaa !31 ; 2 uses
  %i.mf = sext <4 x i8> %wide.load.1 to <4 x i32>
  %i.mg = xor <4 x i32> %i.lz, %i.mf
  %i.mh = xor <4 x i8> %wide.load990, %wide.load990.1
  %i.mi = xor <4 x i32> %i.lw, <i32 120, i32 48, i32 36, i32 38>
  %i.mj = icmp ne <4 x i8> %wide.load.1, <i8 114, i8 103, i8 101, i8 116>
  %i.mk = icmp ne <4 x i8> %wide.load990.1, <i8 45, i8 85, i8 82, i8 73>
  %i.ml = or <4 x i1> %i.mb, %i.mj
  %i.mm = or <4 x i1> %i.mc, %i.mk
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %index.lcssa = phi i64 [ 7, %vector.ph ], [ 15, %vector.body.1 ] ; 2 uses
  %.lcssa1105 = phi <4 x i32> [ %i.lz, %vector.ph ], [ %i.mg, %vector.body.1 ]
  %.lcssa1104.in = phi <4 x i8> [ %wide.load990, %vector.ph ], [ %i.mh, %vector.body.1 ]
  %.lcssa1103 = phi <4 x i32> [ %i.ma, %vector.ph ], [ %i.mi, %vector.body.1 ]
  %.lcssa1102 = phi <4 x i32> [ <i32 67, i32 45, i32 84, i32 97>, %vector.ph ], [ <i32 110, i32 120, i32 6, i32 40>, %vector.body.1 ]
  %.lcssa1101.a = phi <4 x i1> [ %i.mb, %vector.ph ], [ %i.ml, %vector.body.1 ]
  %.lcssa1100 = phi <4 x i1> [ %i.mc, %vector.ph ], [ %i.mm, %vector.body.1 ]
  %.lcssa1104 = sext <4 x i8> %.lcssa1104.in to <4 x i32>
  %next.gep984 = getelementptr i8, ptr %.04855.i.i199, i64 %index.lcssa
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep984, i64 1
  %next.gep989 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_warc_rduri._key, i64 1), i64 %index.lcssa
  %i.mo = getelementptr inbounds nuw i8, ptr %next.gep989, i64 1
  %bin.rdx = or <4 x i1> %.lcssa1100, %.lcssa1101.a
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.mp = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1041 = icmp eq i4 %i.mp, 0                 ; 2 uses
  %rdx.select = zext i1 %.not1041 to i32
  %bin.rdx993 = xor <4 x i32> %.lcssa1102, %.lcssa1103
  %i.mq = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx993) ; 2 uses
  %bin.rdx994 = xor <4 x i32> %.lcssa1105, %.lcssa1104
  %i.mr = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx994) ; 2 uses
  %i.ms = icmp ult ptr %i.mn, %spec.select.i294
  %i.mt = icmp ult ptr %i.mo, getelementptr inbounds nuw (i8, ptr @_warc_rduri._key, i64 18)
  %cmp.n = icmp eq i64 %i.lt, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i209, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %.lr.ph.preheader.i.i200, %middle.block
  %.04860.i.i202.ph = phi ptr [ %.04855.i.i199, %.lr.ph.preheader.i.i200 ], [ %i.lu, %middle.block ]
  %.04759.i.i203.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_warc_rduri._key, i64 1), %.lr.ph.preheader.i.i200 ], [ %i.lv, %middle.block ]
  %.058.i.i204.ph = phi i32 [ 1, %.lr.ph.preheader.i.i200 ], [ %rdx.select, %middle.block ]
  %.04457.i.i205.ph = phi i32 [ %i.lo, %.lr.ph.preheader.i.i200 ], [ %i.mq, %middle.block ]
  %.04556.i.i206.ph = phi i32 [ %i.lo, %.lr.ph.preheader.i.i200 ], [ %i.mr, %middle.block ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader, %.lr.ph.i.i201
  %.04860.i.i202 = phi ptr [ %.048.i.i208, %.lr.ph.i.i201 ], [ %.04860.i.i202.ph, %.lr.ph.i.i201.preheader ] ; 2 uses
  %.04759.i.i203 = phi ptr [ %.047.i.i207, %.lr.ph.i.i201 ], [ %.04759.i.i203.ph, %.lr.ph.i.i201.preheader ] ; 2 uses
  %.058.i.i204 = phi i32 [ %i.nb, %.lr.ph.i.i201 ], [ %.058.i.i204.ph, %.lr.ph.i.i201.preheader ]
  %.04457.i.i205 = phi i32 [ %i.mz, %.lr.ph.i.i201 ], [ %.04457.i.i205.ph, %.lr.ph.i.i201.preheader ]
  %.04556.i.i206 = phi i32 [ %i.mw, %.lr.ph.i.i201 ], [ %.04556.i.i206.ph, %.lr.ph.i.i201.preheader ]
  %i.mu = load i8, ptr %.04860.i.i202, align 1, !tbaa !31 ; 2 uses
  %i.mv = sext i8 %i.mu to i32
  %i.mw = xor i32 %.04556.i.i206, %i.mv           ; 2 uses
  %i.mx = load i8, ptr %.04759.i.i203, align 1, !tbaa !31 ; 2 uses
  %i.my = sext i8 %i.mx to i32
  %i.mz = xor i32 %.04457.i.i205, %i.my           ; 2 uses
  %i.na = icmp eq i8 %i.mu, %i.mx
  %i.nb = select i1 %i.na, i32 %.058.i.i204, i32 0 ; 2 uses
  %.047.i.i207 = getelementptr inbounds nuw i8, ptr %.04759.i.i203, i64 1 ; 2 uses
  %.048.i.i208 = getelementptr inbounds nuw i8, ptr %.04860.i.i202, i64 1 ; 3 uses
  %i.nc = icmp ult ptr %.048.i.i208, %spec.select.i294 ; 2 uses
  %i.nd = icmp ult ptr %.047.i.i207, getelementptr inbounds nuw (i8, ptr @_warc_rduri._key, i64 18) ; 2 uses
  %i.ne = select i1 %i.nc, i1 %i.nd, i1 false
  br i1 %i.ne, label %.lr.ph.i.i201, label %._crit_edge.i.i209.loopexit, !llvm.loop !52

._crit_edge.i.i209.loopexit:                      ; preds = %.lr.ph.i.i201
  %i.nf = icmp ne i32 %i.nb, 0
  br label %._crit_edge.i.i209

._crit_edge.i.i209:                               ; preds = %._crit_edge.i.i209.loopexit, %middle.block
  %.lcssa872 = phi i32 [ %i.mr, %middle.block ], [ %i.mw, %._crit_edge.i.i209.loopexit ]
  %.lcssa871 = phi i32 [ %i.mq, %middle.block ], [ %i.mz, %._crit_edge.i.i209.loopexit ]
  %.lcssa870 = phi i1 [ %.not1041, %middle.block ], [ %i.nf, %._crit_edge.i.i209.loopexit ]
  %.048.i.i208.lcssa = phi ptr [ %i.lu, %middle.block ], [ %.048.i.i208, %._crit_edge.i.i209.loopexit ] ; 3 uses
  %.lcssa869 = phi i1 [ %i.ms, %middle.block ], [ %i.nc, %._crit_edge.i.i209.loopexit ]
  %.lcssa868 = phi i1 [ %i.mt, %middle.block ], [ %i.nd, %._crit_edge.i.i209.loopexit ] ; 2 uses
  %.048.lcssa77.i.i210 = ptrtoaddr ptr %.048.i.i208.lcssa to i64
  %brmerge.i.i211 = select i1 %.lcssa868, i1 true, i1 %.lcssa870
  br i1 %brmerge.i.i211, label %xmemmem.exit.i243, label %.preheader.i.i212

.preheader.i.i212:                                ; preds = %._crit_edge.i.i209
  br i1 %.lcssa869, label %.lr.ph68.preheader.i.i213, label %.critedge

.lr.ph68.preheader.i.i213:                        ; preds = %.preheader.i.i212
  %i.ng = add i64 %i.br, %i.r
  %i.nh = sub i64 %i.ng, %.048.lcssa77.i.i210
  %scevgep.i.i214 = getelementptr i8, ptr %.048.i.i208.lcssa, i64 %i.nh
  br label %.lr.ph68.i.i215

.lr.ph68.i.i215:                                  ; preds = %bb.an, %.lr.ph68.preheader.i.i213
  %.167.i.i216 = phi i32 [ %i.no, %bb.an ], [ %.lcssa872, %.lr.ph68.preheader.i.i213 ]
  %.04666.i.i217 = phi ptr [ %i.ni, %bb.an ], [ %i.lk, %.lr.ph68.preheader.i.i213 ] ; 2 uses
  %.14965.i.i218 = phi ptr [ %i.oa, %bb.an ], [ %.048.i.i208.lcssa, %.lr.ph68.preheader.i.i213 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.04666.i.i217, i64 1 ; 4 uses
  %i.nj = load i8, ptr %.04666.i.i217, align 1, !tbaa !31
  %i.nk = sext i8 %i.nj to i32
  %i.nl = xor i32 %.167.i.i216, %i.nk
  %i.nm = load i8, ptr %.14965.i.i218, align 1, !tbaa !31
  %i.nn = sext i8 %i.nm to i32
  %i.no = xor i32 %i.nl, %i.nn                    ; 2 uses
  %i.np = icmp eq i32 %i.no, %.lcssa871
  br i1 %i.np, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph68.i.i215
  %i.nq = load i128, ptr %i.ni, align 1
  %i.nr = xor i128 %i.nq, 109438962817620623402924468937657092621
  %i.ns = getelementptr i8, ptr %i.ni, i64 16
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = zext i8 %i.nt to i128
  %i.nv = xor i128 %i.nu, 73
  %i.nw = or i128 %i.nr, %i.nv
  %i.nx = icmp ne i128 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %xmemmem.exit.thread71.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph68.i.i215
  %i.oa = getelementptr inbounds nuw i8, ptr %.14965.i.i218, i64 1 ; 2 uses
  %exitcond.not.i.i219 = icmp eq ptr %i.oa, %scevgep.i.i214
  br i1 %exitcond.not.i.i219, label %.critedge, label %.lr.ph68.i.i215, !llvm.loop !32

xmemmem.exit.i243:                                ; preds = %._crit_edge.i.i209
  br i1 %.lcssa868, label %.critedge, label %xmemmem.exit.thread71.i

xmemmem.exit.thread71.i:                          ; preds = %bb.am, %xmemmem.exit.i243
  %.050.i73.i = phi ptr [ %i.lk, %xmemmem.exit.i243 ], [ %i.ni, %bb.am ] ; 3 uses
  %.050.i73119.i = ptrtoaddr ptr %.050.i73.i to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %.050.i73.i, i64 18 ; 5 uses
  %i.oc = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.od = sub i64 %i.bp, %i.oc
  %i.oe = call ptr @memchr(ptr noundef nonnull readonly %i.ob, i32 noundef 13, i64 noundef %i.od) #14 ; 6 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %xmemmem.exit.thread71.i
  %.04855.i.i.i221 = getelementptr inbounds nuw i8, ptr %i.oe, i64 1 ; 2 uses
  %i.og = icmp ult ptr %.04855.i.i.i221, %spec.select.i294
  br i1 %i.og, label %.lr.ph.preheader.i.i.i222, label %.critedge

.lr.ph.preheader.i.i.i222:                        ; preds = %bb.ao
  %i.oh = load i8, ptr %i.oe, align 1, !tbaa !31  ; 2 uses
  %i.oi = load i8, ptr %.04855.i.i.i221, align 1, !tbaa !31 ; 2 uses
  %i.oj = xor i8 %i.oh, 10
  %i.ok = sext i8 %i.oj to i32
  %i.ol = icmp eq i8 %i.oi, 10                    ; 2 uses
  %.048.i.i.i223 = getelementptr inbounds nuw i8, ptr %i.oe, i64 2 ; 2 uses
  %i.om = icmp uge ptr %.048.i.i.i223, %spec.select.i294
  %brmerge.i44.i = or i1 %i.om, %i.ol
  br i1 %brmerge.i44.i, label %_warc_find_eol.exit.i241, label %.lr.ph68.preheader.i.i.i224

.lr.ph68.preheader.i.i.i224:                      ; preds = %.lr.ph.preheader.i.i.i222
  %i.on = xor i8 %i.oi, %i.oh
  %i.oo = sext i8 %i.on to i32
  br label %.lr.ph68.i.i.i225

.lr.ph68.i.i.i225:                                ; preds = %bb.aq, %.lr.ph68.preheader.i.i.i224
  %.167.i.i.i226 = phi i32 [ %i.ov, %bb.aq ], [ %i.oo, %.lr.ph68.preheader.i.i.i224 ]
  %.04666.i.i.i227 = phi ptr [ %i.op, %bb.aq ], [ %i.oe, %.lr.ph68.preheader.i.i.i224 ] ; 2 uses
  %.14965.i.i.i228 = phi ptr [ %i.oy, %bb.aq ], [ %.048.i.i.i223, %.lr.ph68.preheader.i.i.i224 ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.04666.i.i.i227, i64 1 ; 3 uses
  %i.oq = load i8, ptr %.04666.i.i.i227, align 1, !tbaa !31
  %i.or = sext i8 %i.oq to i32
  %i.os = xor i32 %.167.i.i.i226, %i.or
  %i.ot = load i8, ptr %.14965.i.i.i228, align 1, !tbaa !31
  %i.ou = sext i8 %i.ot to i32
  %i.ov = xor i32 %i.os, %i.ou                    ; 2 uses
  %i.ow = icmp eq i32 %i.ov, %i.ok
  br i1 %i.ow, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph68.i.i.i225
  %lhsc.i.i230 = load i8, ptr %i.op, align 1
  %i.ox = icmp eq i8 %lhsc.i.i230, 13
  br i1 %i.ox, label %.preheader77.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph68.i.i.i225
  %i.oy = getelementptr inbounds nuw i8, ptr %.14965.i.i.i228, i64 1 ; 2 uses
  %exitcond.not.i.i.i229 = icmp eq ptr %i.oy, %spec.select.i294
  br i1 %exitcond.not.i.i.i229, label %.critedge, label %.lr.ph68.i.i.i225, !llvm.loop !32

_warc_find_eol.exit.i241:                         ; preds = %.lr.ph.preheader.i.i.i222
  br i1 %i.ol, label %.preheader77.i, label %.critedge

.preheader77.i:                                   ; preds = %bb.ap, %_warc_find_eol.exit.i241
  %.050.i.i118136.in.i = phi ptr [ %i.oe, %_warc_find_eol.exit.i241 ], [ %i.op, %bb.ap ] ; 12 uses
  %.050.i.i118136.i = ptrtoaddr ptr %.050.i.i118136.in.i to i64 ; 2 uses
  %i.oz = icmp ult ptr %i.ob, %.050.i.i118136.in.i
  br i1 %i.oz, label %.lr.ph.preheader.i236, label %.critedge.i232

.lr.ph.preheader.i236:                            ; preds = %.preheader77.i
  %i.pa = sub i64 %.050.i.i118136.i, %.050.i73119.i
  %scevgep.i237 = getelementptr i8, ptr %.050.i73.i, i64 %i.pa
  br label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.critedge2.i239, %.lr.ph.preheader.i236
  %.03695.i = phi ptr [ %i.pc, %.critedge2.i239 ], [ %i.ob, %.lr.ph.preheader.i236 ] ; 3 uses
  %i.pb = load i8, ptr %.03695.i, align 1, !tbaa !31
  switch i8 %i.pb, label %.critedge.loopexit.i [
    i8 32, label %.critedge2.i239
    i8 9, label %.critedge2.i239
  ]

.critedge2.i239:                                  ; preds = %.lr.ph.i238, %.lr.ph.i238
  %i.pc = getelementptr inbounds nuw i8, ptr %.03695.i, i64 1 ; 2 uses
  %exitcond.not.i240 = icmp eq ptr %i.pc, %.050.i.i118136.in.i
  br i1 %exitcond.not.i240, label %.critedge.loopexit.i, label %.lr.ph.i238, !llvm.loop !53

.critedge.loopexit.i:                             ; preds = %.critedge2.i239, %.lr.ph.i238
  %.036.lcssa.ph.i = phi ptr [ %scevgep.i237, %.critedge2.i239 ], [ %.03695.i, %.lr.ph.i238 ] ; 2 uses
  %.pre.i = ptrtoint ptr %.036.lcssa.ph.i to i64
  br label %.critedge.i232

.critedge.i232:                                   ; preds = %.critedge.loopexit.i, %.preheader77.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %i.oc, %.preheader77.i ] ; 2 uses
  %.036.lcssa.i = phi ptr [ %.036.lcssa.ph.i, %.critedge.loopexit.i ], [ %i.ob, %.preheader77.i ] ; 9 uses
  %i.pd = ptrtoint ptr %.050.i.i118136.in.i to i64 ; 2 uses
  %i.pe = sub i64 %i.pd, %.pre-phi.i
  %i.pf = call ptr @memchr(ptr noundef nonnull readonly %.036.lcssa.i, i32 noundef 58, i64 noundef %i.pe) #14 ; 7 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i232
  %.04855.i45.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 1 ; 2 uses
  %i.ph = icmp ult ptr %.04855.i45.i, %.050.i.i118136.in.i
  br i1 %i.ph, label %.lr.ph.preheader.i47.i, label %.critedge

.lr.ph.preheader.i47.i:                           ; preds = %bb.ar
  %i.pi = load i8, ptr %i.pf, align 1, !tbaa !31  ; 2 uses
  %i.pj = sext i8 %i.pi to i32                    ; 2 uses
  %i.pk = load i8, ptr %.04855.i45.i, align 1, !tbaa !31 ; 2 uses
  %i.pl = xor i8 %i.pi, %i.pk                     ; 2 uses
  %i.pm = xor i32 %i.pj, 47                       ; 0 uses
  %.048.i55.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 2 ; 2 uses
  %.not1212 = icmp ult ptr %.048.i55.i, %.050.i.i118136.in.i ; 2 uses
  br i1 %.not1212, label %.lr.ph.i48.i.1, label %xmemmem.exit69.i.critedge

.lr.ph.i48.i.1:                                   ; preds = %.lr.ph.preheader.i47.i
  %i.pn = icmp eq i8 %i.pk, 47
  %i.po = load i8, ptr %.048.i55.i, align 1, !tbaa !31 ; 2 uses
  %i.pp = xor i8 %i.pl, %i.po
  %i.pq = icmp eq i8 %i.po, 47
  %.048.i55.i.1 = getelementptr inbounds nuw i8, ptr %i.pf, i64 3 ; 2 uses
  %i.pr = icmp ult ptr %.048.i55.i.1, %.050.i.i118136.in.i
  %i.ps = select i1 %i.pq, i1 %i.pn, i1 false
  %.lcssa1120 = sext i8 %i.pp to i32
  br i1 %i.ps, label %xmemmem.exit69.i, label %.preheader.i60.i

.preheader.i60.i:                                 ; preds = %.lr.ph.i48.i.1
  br i1 %i.pr, label %.lr.ph68.i63.i, label %.critedge

.lr.ph68.i63.i:                                   ; preds = %.preheader.i60.i, %bb.at
  %.167.i64.i = phi i32 [ %i.pz, %bb.at ], [ %.lcssa1120, %.preheader.i60.i ]
  %.04666.i65.i = phi ptr [ %i.pt, %bb.at ], [ %i.pf, %.preheader.i60.i ] ; 2 uses
  %.14965.i66.i = phi ptr [ %i.qf, %bb.at ], [ %.048.i55.i.1, %.preheader.i60.i ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.04666.i65.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.04666.i65.i, align 1, !tbaa !31
  %i.pv = sext i8 %i.pu to i32
  %i.pw = xor i32 %.167.i64.i, %i.pv
  %i.px = load i8, ptr %.14965.i66.i, align 1, !tbaa !31
  %i.py = sext i8 %i.px to i32
  %i.pz = xor i32 %i.pw, %i.py                    ; 2 uses
  %i.qa = icmp eq i32 %i.pz, %i.pj
  br i1 %i.qa, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph68.i63.i
  %i.qb = load i16, ptr %i.pt, align 1
  %i.qc = icmp ne i16 %i.qb, 12090
  %i.qd = zext i1 %i.qc to i32
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %.preheader.i233, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph68.i63.i
  %i.qf = getelementptr inbounds nuw i8, ptr %.14965.i66.i, i64 1 ; 2 uses
  %exitcond.not.i67.i = icmp eq ptr %i.qf, %.050.i.i118136.in.i
  br i1 %exitcond.not.i67.i, label %.critedge, label %.lr.ph68.i63.i, !llvm.loop !32

xmemmem.exit69.i.critedge:                        ; preds = %.lr.ph.preheader.i47.i
  %.lcssa1120.c = sext i8 %i.pl to i32            ; 0 uses
  br label %xmemmem.exit69.i

xmemmem.exit69.i:                                 ; preds = %xmemmem.exit69.i.critedge, %.lr.ph.i48.i.1
  br i1 %.not1212, label %.preheader.i233, label %.critedge

.preheader.i233:                                  ; preds = %bb.as, %xmemmem.exit69.i
  %.050.i46138.i = phi ptr [ %i.pf, %xmemmem.exit69.i ], [ %i.pt, %bb.as ] ; 2 uses
  %i.qg = icmp ult ptr %.036.lcssa.i, %.050.i.i118136.in.i
  br i1 %i.qg, label %.lr.ph99.i, label %._crit_edge.i

.lr.ph99.i:                                       ; preds = %.preheader.i233
  %i.qh = load ptr, ptr %i.fl, align 8, !tbaa !39
  %i.qi = sub i64 %.050.i.i118136.i, %.pre-phi.i
  %scevgep120.i = getelementptr i8, ptr %.036.lcssa.i, i64 %i.qi
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %i.qj = getelementptr inbounds nuw i8, ptr %.098.i, i64 1 ; 2 uses
  %exitcond121.not.i = icmp eq ptr %i.qj, %scevgep120.i
  br i1 %exitcond121.not.i, label %._crit_edge.i, label %bb.av, !llvm.loop !54

bb.av:                                            ; preds = %bb.au, %.lr.ph99.i
  %.098.i = phi ptr [ %.036.lcssa.i, %.lr.ph99.i ], [ %i.qj, %bb.au ] ; 2 uses
  %i.qk = load i8, ptr %.098.i, align 1, !tbaa !31
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qh, i64 %i.ql
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !41
  %i.qo = and i16 %i.qn, 8192
  %.not43.i = icmp eq i16 %i.qo, 0
  br i1 %.not43.i, label %bb.au, label %.critedge

._crit_edge.i:                                    ; preds = %bb.au, %.preheader.i233
  %i.qp = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 3
  %i.qq = icmp ult ptr %.050.i46138.i, %i.qp
  br i1 %i.qq, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.050.i46138.i, i64 3 ; 4 uses
  %i.qs = load i32, ptr %.036.lcssa.i, align 1
  %i.qt = icmp ne i32 %i.qs, 1701603686
  %i.qu = zext i1 %i.qt to i32
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %_warc_rduri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qw = load i32, ptr %.036.lcssa.i, align 1
  %i.qx = icmp ne i32 %i.qw, 1886680168
  %i.qy = zext i1 %i.qx to i32
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ra = load i16, ptr %.036.lcssa.i, align 1
  %i.rb = xor i16 %i.ra, 29798
  %i.rc = getelementptr i8, ptr %.036.lcssa.i, i64 2
  %i.rd = load i8, ptr %i.rc, align 1
  %i.re = zext i8 %i.rd to i16
  %i.rf = xor i16 %i.re, 112
  %i.rg = or i16 %i.rb, %i.rf
  %i.rh = icmp ne i16 %i.rg, 0
  %i.ri = zext i1 %i.rh to i32
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.rk = icmp ult ptr %i.qr, %.050.i.i118136.in.i
  br i1 %i.rk, label %.lr.ph973, label %_warc_rduri.exit

bb.ba:                                            ; preds = %.lr.ph973
  %i.rl = icmp ult ptr %i.rm, %.050.i.i118136.in.i
  br i1 %i.rl, label %.lr.ph973, label %_warc_rduri.exit, !llvm.loop !55

.lr.ph973:                                        ; preds = %bb.az, %bb.ba
  %.035.i971 = phi ptr [ %i.rm, %bb.ba ], [ %i.qr, %bb.az ] ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.035.i971, i64 1 ; 4 uses
  %i.rn = load i8, ptr %.035.i971, align 1, !tbaa !31
  %.not.i235 = icmp eq i8 %i.rn, 47
  br i1 %.not.i235, label %._warc_rduri.exit.loopexit_crit_edge, label %bb.ba, !llvm.loop !55

._warc_rduri.exit.loopexit_crit_edge:             ; preds = %.lr.ph973
  br label %_warc_rduri.exit, !llvm.loop !55

_warc_rduri.exit:                                 ; preds = %bb.ba, %bb.az, %._warc_rduri.exit.loopexit_crit_edge, %bb.aw
  %.1.i = phi ptr [ %i.qr, %bb.aw ], [ %i.qr, %bb.az ], [ %i.rm, %._warc_rduri.exit.loopexit_crit_edge ], [ %i.rm, %bb.ba ] ; 4 uses
  %i.ro = icmp eq ptr %.050.i.i118136.in.i, %.1.i
  br i1 %i.ro, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %_warc_rduri.exit
  %i.rp = ptrtoint ptr %.1.i to i64
  %i.rq = sub i64 %i.pd, %i.rp                    ; 5 uses
  %i.rr = getelementptr i8, ptr %.1.i, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.rr, i64 -1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !31
  %i.ru = icmp eq i8 %i.rt, 47
  br i1 %i.ru, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.rv = add i64 %i.rq, 1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !56
  %i.ry = icmp ugt i64 %i.rv, %i.rx
  br i1 %i.ry, label %bb.bd, label %._crit_edge616

._crit_edge616:                                   ; preds = %bb.bc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.rz = and i64 %i.rq, -64
  %i.sa = add i64 %i.rz, 64                       ; 2 uses
  store i64 %i.sa, ptr %i.rw, align 8, !tbaa !56
  %i.sb = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !57
  %i.sd = call ptr @realloc(ptr noundef %i.sc, i64 noundef %i.sa) #16 ; 3 uses
  %i.se = icmp eq ptr %i.sd, null
  br i1 %i.se, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.10) #12
  br label %_warc_skip.exit.thread

bb.bf:                                            ; preds = %bb.bd
  store ptr %i.sd, ptr %i.sb, align 8, !tbaa !57
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge616, %bb.bf
  %i.sf = phi ptr [ %.pre, %._crit_edge616 ], [ %i.sd, %bb.bf ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sf, ptr nonnull align 1 %.1.i, i64 %i.rq, i1 false)
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !57
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.rq
  store i8 0, ptr %i.si, align 1, !tbaa !31
  %i.sj = load ptr, ptr %i.sg, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.sk = call ptr @memchr(ptr noundef nonnull readonly %i.p, i32 noundef 13, i64 noundef %i.br) #14 ; 5 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %_warc_rdmtm.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.04855.i.i244 = getelementptr inbounds nuw i8, ptr %i.sk, i64 1 ; 2 uses
  %i.sm = icmp ult ptr %.04855.i.i244, %spec.select.i294
  br i1 %i.sm, label %.lr.ph.preheader.i.i246, label %_warc_rdmtm.exit.thread

.lr.ph.preheader.i.i246:                          ; preds = %bb.bh
  %i.sn = load i8, ptr %i.sk, align 1, !tbaa !31
  %i.so = sext i8 %i.sn to i32                    ; 2 uses
  br label %.lr.ph.i.i247

.lr.ph.i.i247:                                    ; preds = %.lr.ph.i.i247, %.lr.ph.preheader.i.i246
  %.04860.i.i248 = phi ptr [ %.048.i.i254, %.lr.ph.i.i247 ], [ %.04855.i.i244, %.lr.ph.preheader.i.i246 ] ; 2 uses
  %.04759.i.i249 = phi ptr [ %.047.i.i253, %.lr.ph.i.i247 ], [ getelementptr inbounds nuw (i8, ptr @_warc_rdmtm._key, i64 1), %.lr.ph.preheader.i.i246 ] ; 2 uses
  %.058.i.i250 = phi i32 [ %i.sw, %.lr.ph.i.i247 ], [ 1, %.lr.ph.preheader.i.i246 ]
  %.04457.i.i251 = phi i32 [ %i.su, %.lr.ph.i.i247 ], [ %i.so, %.lr.ph.preheader.i.i246 ]
  %.04556.i.i252 = phi i32 [ %i.sr, %.lr.ph.i.i247 ], [ %i.so, %.lr.ph.preheader.i.i246 ]
  %i.sp = load i8, ptr %.04860.i.i248, align 1, !tbaa !31 ; 2 uses
  %i.sq = sext i8 %i.sp to i32
  %i.sr = xor i32 %.04556.i.i252, %i.sq           ; 2 uses
  %i.ss = load i8, ptr %.04759.i.i249, align 1, !tbaa !31 ; 2 uses
  %i.st = sext i8 %i.ss to i32
  %i.su = xor i32 %.04457.i.i251, %i.st           ; 2 uses
  %i.sv = icmp eq i8 %i.sp, %i.ss
  %i.sw = select i1 %i.sv, i32 %.058.i.i250, i32 0 ; 2 uses
  %.047.i.i253 = getelementptr inbounds nuw i8, ptr %.04759.i.i249, i64 1 ; 2 uses
  %.048.i.i254 = getelementptr inbounds nuw i8, ptr %.04860.i.i248, i64 1 ; 5 uses
  %i.sx = icmp ult ptr %.048.i.i254, %spec.select.i294 ; 2 uses
  %i.sy = icmp ult ptr %.047.i.i253, getelementptr inbounds nuw (i8, ptr @_warc_rdmtm._key, i64 16) ; 3 uses
  %i.sz = select i1 %i.sx, i1 %i.sy, i1 false
  br i1 %i.sz, label %.lr.ph.i.i247, label %._crit_edge.i.i255, !llvm.loop !44

._crit_edge.i.i255:                               ; preds = %.lr.ph.i.i247
  %i.ta = icmp ne i32 %i.sw, 0
  %.048.lcssa77.i.i256 = ptrtoaddr ptr %.048.i.i254 to i64
  %brmerge.i.i257 = select i1 %i.sy, i1 true, i1 %i.ta
  br i1 %brmerge.i.i257, label %xmemmem.exit.i285, label %.preheader.i.i258

.preheader.i.i258:                                ; preds = %._crit_edge.i.i255
  br i1 %i.sx, label %.lr.ph68.preheader.i.i259, label %_warc_rdmtm.exit.thread

.lr.ph68.preheader.i.i259:                        ; preds = %.preheader.i.i258
  %i.tb = add i64 %i.br, %i.r
  %i.tc = sub i64 %i.tb, %.048.lcssa77.i.i256
  %scevgep.i.i260 = getelementptr i8, ptr %.048.i.i254, i64 %i.tc
  br label %.lr.ph68.i.i261

.lr.ph68.i.i261:                                  ; preds = %bb.bj, %.lr.ph68.preheader.i.i259
  %.167.i.i262 = phi i32 [ %i.tj, %bb.bj ], [ %i.sr, %.lr.ph68.preheader.i.i259 ]
  %.04666.i.i263 = phi ptr [ %i.td, %bb.bj ], [ %i.sk, %.lr.ph68.preheader.i.i259 ] ; 2 uses
  %.14965.i.i264 = phi ptr [ %i.tu, %bb.bj ], [ %.048.i.i254, %.lr.ph68.preheader.i.i259 ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.04666.i.i263, i64 1 ; 4 uses
  %i.te = load i8, ptr %.04666.i.i263, align 1, !tbaa !31
  %i.tf = sext i8 %i.te to i32
  %i.tg = xor i32 %.167.i.i262, %i.tf
  %i.th = load i8, ptr %.14965.i.i264, align 1, !tbaa !31
  %i.ti = sext i8 %i.th to i32
  %i.tj = xor i32 %i.tg, %i.ti                    ; 2 uses
  %i.tk = icmp eq i32 %i.tj, %i.su
  br i1 %i.tk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph68.i.i261
  %i.tl = load i64, ptr %i.td, align 1
  %i.tm = xor i64 %i.tl, 5561229153774864909
  %i.tn = getelementptr i8, ptr %i.td, i64 7
  %i.to = load i64, ptr %i.tn, align 1
  %i.tp = xor i64 %i.to, 7234304265016340301
  %i.tq = or i64 %i.tm, %i.tp
  %i.tr = icmp ne i64 %i.tq, 0
  %i.ts = zext i1 %i.tr to i32
  %i.tt = icmp eq i32 %i.ts, 0
  br i1 %i.tt, label %xmemmem.exit.thread14.i267, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph68.i.i261
  %i.tu = getelementptr inbounds nuw i8, ptr %.14965.i.i264, i64 1 ; 2 uses
  %exitcond.not.i.i265 = icmp eq ptr %i.tu, %scevgep.i.i260
  br i1 %exitcond.not.i.i265, label %_warc_rdmtm.exit.thread, label %.lr.ph68.i.i261, !llvm.loop !32

xmemmem.exit.i285:                                ; preds = %._crit_edge.i.i255
  br i1 %i.sy, label %_warc_rdmtm.exit.thread, label %xmemmem.exit.thread14.i267

xmemmem.exit.thread14.i267:                       ; preds = %bb.bi, %xmemmem.exit.i285
  %.050.i16.i268 = phi ptr [ %i.sk, %xmemmem.exit.i285 ], [ %i.td, %bb.bi ]
  %i.tv = getelementptr inbounds nuw i8, ptr %.050.i16.i268, i64 16 ; 3 uses
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = sub i64 %i.bp, %i.tw
  %i.ty = call ptr @memchr(ptr noundef nonnull readonly %i.tv, i32 noundef 13, i64 noundef %i.tx) #14 ; 6 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %_warc_rdmtm.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %xmemmem.exit.thread14.i267
  %.04855.i.i.i269 = getelementptr inbounds nuw i8, ptr %i.ty, i64 1 ; 2 uses
  %i.ua = icmp ult ptr %.04855.i.i.i269, %spec.select.i294
  br i1 %i.ua, label %.lr.ph.preheader.i.i.i270, label %_warc_rdmtm.exit.thread

.lr.ph.preheader.i.i.i270:                        ; preds = %bb.bk
  %i.ub = load i8, ptr %i.ty, align 1, !tbaa !31  ; 2 uses
  %i.uc = load i8, ptr %.04855.i.i.i269, align 1, !tbaa !31 ; 2 uses
  %i.ud = xor i8 %i.ub, 10
  %i.ue = sext i8 %i.ud to i32
  %i.uf = icmp eq i8 %i.uc, 10                    ; 2 uses
  %.048.i.i.i271 = getelementptr inbounds nuw i8, ptr %i.ty, i64 2 ; 2 uses
  %i.ug = icmp uge ptr %.048.i.i.i271, %spec.select.i294
  %brmerge.i12.i272 = or i1 %i.ug, %i.uf
  br i1 %brmerge.i12.i272, label %_warc_find_eol.exit.i284, label %.lr.ph68.preheader.i.i.i273

.lr.ph68.preheader.i.i.i273:                      ; preds = %.lr.ph.preheader.i.i.i270
  %i.uh = xor i8 %i.uc, %i.ub
  %i.ui = sext i8 %i.uh to i32
  br label %.lr.ph68.i.i.i274

.lr.ph68.i.i.i274:                                ; preds = %bb.bm, %.lr.ph68.preheader.i.i.i273
  %.167.i.i.i275 = phi i32 [ %i.up, %bb.bm ], [ %i.ui, %.lr.ph68.preheader.i.i.i273 ]
  %.04666.i.i.i276 = phi ptr [ %i.uj, %bb.bm ], [ %i.ty, %.lr.ph68.preheader.i.i.i273 ] ; 2 uses
  %.14965.i.i.i277 = phi ptr [ %i.us, %bb.bm ], [ %.048.i.i.i271, %.lr.ph68.preheader.i.i.i273 ] ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.04666.i.i.i276, i64 1 ; 3 uses
  %i.uk = load i8, ptr %.04666.i.i.i276, align 1, !tbaa !31
  %i.ul = sext i8 %i.uk to i32
  %i.um = xor i32 %.167.i.i.i275, %i.ul
  %i.un = load i8, ptr %.14965.i.i.i277, align 1, !tbaa !31
  %i.uo = sext i8 %i.un to i32
  %i.up = xor i32 %i.um, %i.uo                    ; 2 uses
  %i.uq = icmp eq i32 %i.up, %i.ue
  br i1 %i.uq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph68.i.i.i274
  %lhsc.i.i279 = load i8, ptr %i.uj, align 1
  %i.ur = icmp eq i8 %lhsc.i.i279, 13
  br i1 %i.ur, label %_warc_find_eol.exit.thread18.i280, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph68.i.i.i274
  %i.us = getelementptr inbounds nuw i8, ptr %.14965.i.i.i277, i64 1 ; 2 uses
  %exitcond.not.i.i.i278 = icmp eq ptr %i.us, %spec.select.i294
  br i1 %exitcond.not.i.i.i278, label %_warc_rdmtm.exit.thread, label %.lr.ph68.i.i.i274, !llvm.loop !32

_warc_find_eol.exit.i284:                         ; preds = %.lr.ph.preheader.i.i.i270
  br i1 %i.uf, label %_warc_find_eol.exit.thread18.i280, label %_warc_rdmtm.exit.thread

_warc_find_eol.exit.thread18.i280:                ; preds = %bb.bl, %_warc_find_eol.exit.i284
  %.050.i.i20.i281 = phi ptr [ %i.ty, %_warc_find_eol.exit.i284 ], [ %i.uj, %bb.bl ]
  %i.ut = call fastcc i64 @xstrpisotime(ptr noundef %i.tv, ptr noundef %i.a)
  %i.uu = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not.i282 = icmp eq ptr %i.uu, %.050.i.i20.i281
  br i1 %.not.i282, label %_warc_rdmtm.exit, label %_warc_rdmtm.exit.thread

_warc_rdmtm.exit.thread:                          ; preds = %bb.bj, %bb.bm, %_warc_find_eol.exit.i284, %xmemmem.exit.i285, %_warc_find_eol.exit.thread18.i280, %bb.bh, %bb.bg, %.preheader.i.i258, %bb.bk, %xmemmem.exit.thread14.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_warc_rduri.exit.thread

_warc_rdmtm.exit:                                 ; preds = %_warc_find_eol.exit.thread18.i280
  %.fr = freeze i64 %i.ut                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.uv = icmp eq i64 %.fr, -1
  %spec.select = select i1 %i.uv, i64 %i.ig, i64 %.fr
  br label %_warc_rduri.exit.thread

_warc_rduri.exit.thread:                          ; preds = %_warc_rdmtm.exit, %_warc_rdmtm.exit.thread
  %.084 = phi i64 [ %spec.select, %_warc_rdmtm.exit ], [ %i.ig, %_warc_rdmtm.exit.thread ]
  %i.uw = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.br) #12 ; 0 uses
  call void @archive_entry_set_filetype(ptr noundef %1, i32 noundef 32768) #12
  call void @archive_entry_copy_pathname(ptr noundef %1, ptr noundef %i.sj) #12
  call void @archive_entry_set_size(ptr noundef %1, i64 noundef %i.ft) #12
  call void @archive_entry_set_perm(ptr noundef %1, i32 noundef 420) #12
  call void @archive_entry_set_ctime(ptr noundef %1, i64 noundef %i.ig, i64 noundef 0) #12
  call void @archive_entry_set_mtime(ptr noundef %1, i64 noundef %.084, i64 noundef 0) #12
  br label %_warc_skip.exit.thread

.critedge:                                        ; preds = %bb.an, %bb.aq, %bb.at, %bb.av, %_warc_rduri.exit, %bb.bb, %._crit_edge.i, %xmemmem.exit.i243, %_warc_find_eol.exit.i241, %xmemmem.exit69.i, %bb.ay, %bb.al, %bb.ak, %.preheader.i.i212, %bb.ao, %xmemmem.exit.thread71.i, %bb.ar, %.critedge.i232, %.preheader.i60.i, %.thread
  %i.ux = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.br) #12 ; 0 uses
  %i.uy = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !29 ; 2 uses
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !50
  %i.vb = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.va) #12
  %i.vc = icmp slt i64 %i.vb, 0
  br i1 %i.vc, label %_warc_skip.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %.critedge
  %i.vd = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef 4) #12
  %i.ve = icmp slt i64 %i.vd, 0
  br i1 %i.ve, label %_warc_skip.exit.thread, label %_warc_skip.exit

_warc_skip.exit:                                  ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, i8 0, i64 16, i1 false)
  %i.vf = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 12, ptr noundef nonnull %i.d) #12
  %i.vg = load i64, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  %i.vh = icmp slt i64 %i.vg, 0
  br i1 %i.vh, label %._crit_edge, label %bb.b

_warc_skip.exit.thread:                           ; preds = %.critedge, %bb.bn, %bb.b, %_warc_rduri.exit.thread, %bb.be, %.loopexit324, %.loopexit, %bb.j, %bb.h, %_warc_find_eoh.exit.thread, %._crit_edge
  %.0 = phi i32 [ -30, %._crit_edge ], [ -30, %bb.be ], [ -30, %_warc_find_eoh.exit.thread ], [ -30, %bb.h ], [ -30, %bb.j ], [ -30, %.loopexit ], [ -30, %.loopexit324 ], [ 0, %_warc_rduri.exit.thread ], [ -30, %.critedge ], [ -30, %bb.bn ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_warc_read(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %i.g = load i64, ptr %i.d, align 8, !tbaa !50
  %.not = icmp ult i64 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  store ptr null, ptr %1, align 8, !tbaa !58
  store i64 0, ptr %2, align 8, !tbaa !9
  %i.h = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.h, ptr %3, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !59
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %.not28 = icmp eq i64 %i.k, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.k) #12 ; 0 uses
  store i64 0, ptr %i.j, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %i.a) #12
  %i.n = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %2, align 8, !tbaa !9
  %i.p = trunc i64 %i.n to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.d, align 8, !tbaa !50
  %i.s = load i64, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %spec.select = call i64 @llvm.umin.i64(i64 %i.n, i64 %i.t) ; 3 uses
  store i64 %i.s, ptr %3, align 8, !tbaa !9
  store i64 %spec.select, ptr %2, align 8, !tbaa !9
  store ptr %i.m, ptr %1, align 8, !tbaa !58
  %i.u = load i64, ptr %i.e, align 8, !tbaa !51
  %i.v = add i64 %i.u, %spec.select
  store i64 %i.v, ptr %i.e, align 8, !tbaa !51
  store i64 %spec.select, ptr %i.j, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.p, %bb.f ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @_warc_skip(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %i.e = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.d) #12
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef 4) #12
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -30, %bb.b ], [ -30, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_warc_cleanup(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.g) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @archive_string_free(ptr noundef nonnull %i.h) #12
  tail call void @free(ptr noundef nonnull %i.c) #12
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !11
  store ptr null, ptr %i.i, align 8, !tbaa !29
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_0
