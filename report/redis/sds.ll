inline.NumInlined: 136
inline.NumDeleted: 12
begin_hunk_0_@sdsupdatelen:bb.a
bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %i.a to i8
  %i.d = shl i8 %.tr.i, 3
  store i8 %i.d, ptr %i.b, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i8
  %i.f = getelementptr inbounds i8, ptr %0, i64 -3
  store i8 %i.e, ptr %i.f, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.d:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.a to i16
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  store i16 %i.g, ptr %i.h, align 1, !tbaa !18
  br label %sdssetlen.exit

bb.e:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.a to i32
  %i.j = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 %i.i, ptr %i.j, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 %i.a, ptr %i.k, align 1, !tbaa !14
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sdsclear(ptr noundef captures(none) initializes((0, 1)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdssetlen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -3
  store i8 0, ptr %i.c, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -5
  store i16 0, ptr %i.d, align 1, !tbaa !18
  br label %sdssetlen.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 0, ptr %i.e, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 0, ptr %i.f, align 1, !tbaa !14
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  store i8 0, ptr %0, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !17 ; 2 uses
  %i.c = and i8 %.val.i, 7                        ; 5 uses
  switch i8 %i.c, label %sdsavail.exit [
    i8 4, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -3
  %i.e = getelementptr inbounds i8, ptr %0, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  %i.h = load i8, ptr %i.d, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i64
  %i.j = sub nsw i64 %i.g, %i.i
  br label %sdsavail.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -5
  %i.l = getelementptr inbounds i8, ptr %0, i64 -3
  %i.m = load i16, ptr %i.l, align 1, !tbaa !18
  %i.n = zext i16 %i.m to i64
  %i.o = load i16, ptr %i.k, align 1, !tbaa !18
  %i.p = zext i16 %i.o to i64
  %i.q = sub nsw i64 %i.n, %i.p
  br label %sdsavail.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9
  %i.s = getelementptr inbounds i8, ptr %0, i64 -5
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = load i32, ptr %i.r, align 1, !tbaa !9
  %i.v = sub i32 %i.t, %i.u
  %i.w = zext i32 %i.v to i64
  br label %sdsavail.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -17
  %i.y = getelementptr inbounds i8, ptr %0, i64 -9
  %i.z = load i64, ptr %i.y, align 1, !tbaa !14
  %i.aa = load i64, ptr %i.x, align 1, !tbaa !14
  %i.ab = sub i64 %i.z, %i.aa
  br label %sdsavail.exit

sdsavail.exit:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.d ], [ %i.ab, %bb.e ], [ %i.j, %bb.b ], [ %i.q, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp ult i64 %.0.i, %1
  br i1 %.not, label %bb.f, label %sdssetalloc.exit

bb.f:                                             ; preds = %sdsavail.exit
  switch i8 %i.c, label %sdsHdrSize.exit [
    i8 0, label %sdslen.exit.thread
    i8 1, label %sdslen.exit.thread98
    i8 2, label %sdslen.exit.thread101
    i8 3, label %sdslen.exit.thread104
    i8 4, label %sdslen.exit.thread107
  ]

sdslen.exit.thread:                               ; preds = %bb.f
  %i.ac = lshr i8 %.val.i, 3
  %i.ad = zext nneg i8 %i.ac to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread98:                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread101:                            ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -5
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !18
  %i.aj = zext i16 %i.ai to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread104:                            ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %0, i64 -9
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !9
  %i.am = zext i32 %i.al to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread107:                            ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %0, i64 -17
  %i.ao = load i64, ptr %i.an, align 1, !tbaa !14
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %bb.f, %sdslen.exit.thread107, %sdslen.exit.thread104, %sdslen.exit.thread101, %sdslen.exit.thread98, %sdslen.exit.thread
  %.0.i5697 = phi i64 [ %i.ag, %sdslen.exit.thread98 ], [ %i.aj, %sdslen.exit.thread101 ], [ %i.ad, %sdslen.exit.thread ], [ %i.ao, %sdslen.exit.thread107 ], [ %i.am, %sdslen.exit.thread104 ], [ 0, %bb.f ] ; 15 uses
  %.0.i57.neg = phi i64 [ -3, %sdslen.exit.thread98 ], [ -5, %sdslen.exit.thread101 ], [ -1, %sdslen.exit.thread ], [ -17, %sdslen.exit.thread107 ], [ -9, %sdslen.exit.thread104 ], [ 0, %bb.f ]
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.0.i57.neg ; 5 uses
  %i.aq = add i64 %.0.i5697, %1                   ; 6 uses
  %i.ar = icmp ugt i64 %i.aq, %.0.i5697
  br i1 %i.ar, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %sdsHdrSize.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 284) #21
  tail call void @abort() #22
  unreachable

bb.h:                                             ; preds = %sdsHdrSize.exit
  %i.as = icmp eq i32 %2, 1
  br i1 %i.as, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = icmp ult i64 %i.aq, 1048576
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = shl nuw nsw i64 %i.aq, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.av = add i64 %i.aq, 1048576
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.047 = phi i64 [ %i.au, %bb.j ], [ %i.av, %bb.k ], [ %i.aq, %bb.h ] ; 4 uses
  %i.aw = icmp ult i64 %.047, 253
  br i1 %i.aw, label %sdsHdrSize.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ult i64 %.047, 65531
  br i1 %i.ax, label %sdsHdrSize.exit60, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ult i64 %.047, 4294967287          ; 2 uses
  %spec.select = select i1 %i.ay, i8 3, i8 4
  %spec.select189 = select i1 %i.ay, i32 9, i32 17
  br label %sdsHdrSize.exit60

default.unreachable151:                           ; preds = %adjustTypeIfNeeded.exit73
  unreachable

sdsHdrSize.exit60:                                ; preds = %bb.n, %bb.l, %bb.m
  %.0.i58153 = phi i8 [ 2, %bb.m ], [ 1, %bb.l ], [ %spec.select, %bb.n ] ; 6 uses
  %.0.i59 = phi i32 [ 5, %bb.m ], [ 3, %bb.l ], [ %spec.select189, %bb.n ] ; 8 uses
  %i.az = zext nneg i32 %.0.i59 to i64            ; 4 uses
  %i.ba = add i64 %.047, 1
  %i.bb = add i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.aq
  br i1 %i.bc, label %bb.p, label %bb.o, !prof !13

bb.o:                                             ; preds = %sdsHdrSize.exit60
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 300) #21
  tail call void @abort() #22
  unreachable

bb.p:                                             ; preds = %sdsHdrSize.exit60
  %i.bd = icmp eq i8 %i.c, %.0.i58153
  br i1 %i.bd, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.be = call ptr @zrealloc_usable(ptr noundef %i.ap, i64 noundef %i.bb, ptr noundef nonnull %i.a, ptr noundef null) #21 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %sdssetalloc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az ; 4 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bi = xor i32 %.0.i59, -1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add i64 %i.bh, %i.bj                    ; 4 uses
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
  %i.bl = icmp ult i8 %switch.tableidx, 3
  br i1 %i.bl, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.r
  %i.bm = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.bm
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bn = icmp ugt i64 %i.bk, %switch.load
  br i1 %i.bn, label %bb.s, label %adjustTypeIfNeeded.exit.thread

bb.s:                                             ; preds = %switch.lookup
  %i.bo = icmp ult i64 %i.bk, 65531
  br i1 %i.bo, label %adjustTypeIfNeeded.exit.thread114, label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit.thread114:                ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 5 ; 2 uses
  %i.bq = add nuw i64 %.0.i5697, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 2, ptr %i.br, align 1, !tbaa !17
  %i.bs = trunc i64 %.0.i5697 to i16
  store i16 %i.bs, ptr %i.be, align 1, !tbaa !18
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit:                          ; preds = %bb.s
  %i.bt = icmp ult i64 %i.bk, 4294967287          ; 3 uses
  %..i.i = select i1 %i.bt, i8 3, i8 4
  %i.bu = select i1 %i.bt, i64 9, i64 17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bu ; 6 uses
  %i.bw = add nuw i64 %.0.i5697, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bv, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -1
  store i8 %..i.i, ptr %i.bx, align 1, !tbaa !17
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.by = trunc i64 %.0.i5697 to i32
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -9
  store i32 %i.by, ptr %i.bz, align 1, !tbaa !9
  br label %adjustTypeIfNeeded.exit.thread

bb.u:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 -17
  store i64 %.0.i5697, ptr %i.ca, align 1, !tbaa !14
  br label %adjustTypeIfNeeded.exit.thread

bb.v:                                             ; preds = %bb.p
  %i.cb = call ptr @zmalloc_usable(i64 noundef %i.bb, ptr noundef nonnull %i.a) #21 ; 6 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %sdssetalloc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ce = xor i32 %.0.i59, -1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = icmp samesign ult i8 %.0.i58153, 4
  br i1 %i.ch, label %switch.lookup191, label %adjustTypeIfNeeded.exit73.thread128

adjustTypeIfNeeded.exit73.thread128:              ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.az ; 3 uses
  %i.cj = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cj, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -1
  store i8 %.0.i58153, ptr %i.ck, align 1, !tbaa !17
  %3 = xor i32 %.0.i59, -1
  %4 = sext i32 %3 to i64
  br label %adjustTypeIfNeeded.exit.thread.thread176

switch.lookup191:                                 ; preds = %bb.w
  %i.cl = zext nneg i8 %.0.i58153 to i64
  %i.cm = getelementptr [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.cl
  %switch.gep192 = getelementptr i8, ptr %i.cm, i64 -8
  %switch.load193 = load i64, ptr %switch.gep192, align 8
  %i.cn = icmp ugt i64 %i.cg, %switch.load193
  br i1 %i.cn, label %bb.x, label %adjustTypeIfNeeded.exit73

bb.x:                                             ; preds = %switch.lookup191
  %i.co = icmp ult i64 %i.cg, 65531
  br i1 %i.co, label %adjustTypeIfNeeded.exit73.thread, label %sdsReqType.exit.i67

adjustTypeIfNeeded.exit73.thread:                 ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 5 ; 2 uses
  %i.cq = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cq, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i8 2, ptr %i.cr, align 1, !tbaa !17
  br label %bb.y

sdsReqType.exit.i67:                              ; preds = %bb.x
  %i.cs = icmp ult i64 %i.cg, 4294967287          ; 2 uses
  %.pre = select i1 %i.cs, i64 9, i64 17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.pre ; 4 uses
  %i.cu = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ct, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cu, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -1 ; 2 uses
  br i1 %i.cs, label %adjustTypeIfNeeded.exit73.thread165, label %adjustTypeIfNeeded.exit73.thread161

adjustTypeIfNeeded.exit73.thread161:              ; preds = %sdsReqType.exit.i67
  store i8 4, ptr %i.cv, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread176

adjustTypeIfNeeded.exit73.thread165:              ; preds = %sdsReqType.exit.i67
  store i8 3, ptr %i.cv, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread180

adjustTypeIfNeeded.exit73:                        ; preds = %switch.lookup191
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.az ; 6 uses
  %i.cx = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cw, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cx, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -1
  store i8 %.0.i58153, ptr %i.cy, align 1, !tbaa !17
  switch i8 %.0.i58153, label %default.unreachable151 [
    i8 3, label %adjustTypeIfNeeded.exit.thread.thread180
    i8 1, label %adjustTypeIfNeeded.exit.thread.thread185
    i8 2, label %bb.y
  ]

adjustTypeIfNeeded.exit.thread.thread185:         ; preds = %adjustTypeIfNeeded.exit73
  %i.cz = trunc i64 %.0.i5697 to i8
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !17
  %i.db = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dc = xor i32 %.0.i59, -1
  %i.dd = sext i32 %i.dc to i64
  %i.de = add i64 %i.db, %i.dd
  br label %sdsTypeMaxSize.exit

bb.y:                                             ; preds = %adjustTypeIfNeeded.exit73.thread, %adjustTypeIfNeeded.exit73
  %i.df = phi ptr [ %i.cp, %adjustTypeIfNeeded.exit73.thread ], [ %i.cw, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2126 = phi i32 [ 5, %adjustTypeIfNeeded.exit73.thread ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.dg = trunc i64 %.0.i5697 to i16
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -5
  store i16 %i.dg, ptr %i.dh, align 1, !tbaa !18
  %i.di = xor i32 %.2126, -1
  %i.dj = sext i32 %i.di to i64
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit.thread.thread180:         ; preds = %adjustTypeIfNeeded.exit73, %adjustTypeIfNeeded.exit73.thread165
  %i.dk = phi ptr [ %i.ct, %adjustTypeIfNeeded.exit73.thread165 ], [ %i.cw, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2169 = phi i32 [ 9, %adjustTypeIfNeeded.exit73.thread165 ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.dl = trunc i64 %.0.i5697 to i32
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -9
  store i32 %i.dl, ptr %i.dm, align 1, !tbaa !9
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !14
  %i.do = xor i32 %.2169, -1
  %i.dp = sext i32 %i.do to i64
  %i.dq = add i64 %i.dn, %i.dp
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread.thread176:         ; preds = %adjustTypeIfNeeded.exit73.thread128, %adjustTypeIfNeeded.exit73.thread161
  %i.dr = phi ptr [ %i.ci, %adjustTypeIfNeeded.exit73.thread128 ], [ %i.ct, %adjustTypeIfNeeded.exit73.thread161 ] ; 2 uses
  %.2132 = phi i64 [ %4, %adjustTypeIfNeeded.exit73.thread128 ], [ -18, %adjustTypeIfNeeded.exit73.thread161 ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -17
  store i64 %.0.i5697, ptr %i.ds, align 1, !tbaa !14
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !14
  %i.du = add i64 %i.dt, %.2132
  br label %.critedge

adjustTypeIfNeeded.exit.thread.thread170:         ; preds = %bb.y, %adjustTypeIfNeeded.exit.thread114
  %.092.ph = phi i64 [ -6, %adjustTypeIfNeeded.exit.thread114 ], [ %i.dj, %bb.y ]
  %.046.ph = phi ptr [ %i.bp, %adjustTypeIfNeeded.exit.thread114 ], [ %i.df, %bb.y ]
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dw = add i64 %i.dv, %.092.ph
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread:                   ; preds = %switch.lookup, %bb.t, %bb.u
  %.093 = phi i8 [ 3, %bb.t ], [ 4, %bb.u ], [ %i.c, %switch.lookup ]
  %.092 = phi i32 [ 9, %bb.t ], [ 17, %bb.u ], [ %.0.i59, %switch.lookup ]
  %.046 = phi ptr [ %i.bv, %bb.t ], [ %i.bv, %bb.u ], [ %i.bg, %switch.lookup ] ; 4 uses
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dy = xor i32 %.092, -1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add i64 %i.dx, %i.dz                    ; 4 uses
  switch i8 %.093, label %.critedge [
    i8 3, label %bb.aa
    i8 1, label %sdsTypeMaxSize.exit
    i8 2, label %bb.z
  ]

bb.z:                                             ; preds = %adjustTypeIfNeeded.exit.thread
  br label %sdsTypeMaxSize.exit

bb.aa:                                            ; preds = %adjustTypeIfNeeded.exit.thread
  br label %sdsTypeMaxSize.exit

sdsTypeMaxSize.exit:                              ; preds = %adjustTypeIfNeeded.exit.thread.thread180, %adjustTypeIfNeeded.exit.thread.thread170, %adjustTypeIfNeeded.exit.thread.thread185, %adjustTypeIfNeeded.exit.thread, %bb.z, %bb.aa
  %i.eb = phi i64 [ %i.ea, %bb.z ], [ %i.de, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %i.ea, %adjustTypeIfNeeded.exit.thread ], [ %i.dw, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.dq, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %i.ea, %bb.aa ] ; 2 uses
  %.046175 = phi ptr [ %.046, %bb.z ], [ %i.cw, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %.046, %adjustTypeIfNeeded.exit.thread ], [ %.046.ph, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.dk, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %.046, %bb.aa ]
  %.0.i77 = phi i64 [ 65535, %bb.z ], [ 255, %adjustTypeIfNeeded.exit.thread.thread185 ], [ 255, %adjustTypeIfNeeded.exit.thread ], [ 65535, %adjustTypeIfNeeded.exit.thread.thread170 ], [ 4294967295, %adjustTypeIfNeeded.exit.thread.thread180 ], [ 4294967295, %bb.aa ]
  %.not141 = icmp ugt i64 %i.eb, %.0.i77
  br i1 %.not141, label %bb.ab, label %.critedge, !prof !23

bb.ab:                                            ; preds = %sdsTypeMaxSize.exit
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 325) #21
  call void @abort() #22
  unreachable

.critedge:                                        ; preds = %bb.r, %adjustTypeIfNeeded.exit.thread.thread176, %adjustTypeIfNeeded.exit.thread, %sdsTypeMaxSize.exit
  %i.ec = phi i64 [ %i.eb, %sdsTypeMaxSize.exit ], [ %i.ea, %adjustTypeIfNeeded.exit.thread ], [ %i.bk, %bb.r ], [ %i.du, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 4 uses
  %.046137 = phi ptr [ %.046175, %sdsTypeMaxSize.exit ], [ %.046, %adjustTypeIfNeeded.exit.thread ], [ %i.bg, %bb.r ], [ %i.dr, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 10 uses
  %i.ed = getelementptr i8, ptr %.046137, i64 -1
  %.val.i78 = load i8, ptr %i.ed, align 1, !tbaa !17
  %i.ee = and i8 %.val.i78, 7
  switch i8 %i.ee, label %sdssetalloc.exit [
    i8 4, label %bb.af
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %.critedge
  %i.ef = trunc i64 %i.ec to i8
  %i.eg = getelementptr inbounds i8, ptr %.046137, i64 -2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !17
  br label %sdssetalloc.exit

bb.ad:                                            ; preds = %.critedge
  %i.eh = trunc i64 %i.ec to i16
  %i.ei = getelementptr inbounds i8, ptr %.046137, i64 -3
  store i16 %i.eh, ptr %i.ei, align 1, !tbaa !18
  br label %sdssetalloc.exit

bb.ae:                                            ; preds = %.critedge
  %i.ej = trunc i64 %i.ec to i32
  %i.ek = getelementptr inbounds i8, ptr %.046137, i64 -5
  store i32 %i.ej, ptr %i.ek, align 1, !tbaa !9
  br label %sdssetalloc.exit

bb.af:                                            ; preds = %.critedge
  %i.el = getelementptr inbounds i8, ptr %.046137, i64 -9
  store i64 %i.ec, ptr %i.el, align 1, !tbaa !14
  br label %sdssetalloc.exit

sdssetalloc.exit:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.critedge, %bb.v, %bb.q, %sdsavail.exit
  %.0 = phi ptr [ null, %bb.q ], [ %0, %sdsavail.exit ], [ null, %bb.v ], [ %.046137, %.critedge ], [ %.046137, %bb.ac ], [ %.046137, %bb.ad ], [ %.046137, %bb.ae ], [ %.046137, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

declare ptr @zrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsMakeRoomFor(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsMakeRoomForNonGreedy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsRemoveFreeSpace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !14
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.p = tail call ptr @sdsResize(ptr noundef nonnull %0, i64 noundef %.0.i, i32 noundef %1)
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsResize(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val = load i8, ptr %i.b, align 1, !tbaa !17   ; 3 uses
  %i.c = and i8 %.val, 7                          ; 5 uses
  switch i8 %i.c, label %sdsalloc.exit [
    i8 0, label %sdslen.exit.thread
    i8 1, label %sdslen.exit.thread133
    i8 2, label %sdslen.exit.thread138
    i8 3, label %sdslen.exit.thread143
    i8 4, label %sdslen.exit.thread148
  ]

sdslen.exit.thread:                               ; preds = %bb.a
  %i.d = lshr i8 %.val, 3
  %i.e = zext nneg i8 %i.d to i64                 ; 2 uses
  br label %sdsalloc.exit

sdslen.exit.thread133:                            ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 -2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = zext i8 %i.j to i64
  br label %sdsalloc.exit

sdslen.exit.thread138:                            ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %0, i64 -5 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !18
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 -3
  %i.p = load i16, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i16 %i.p to i64
  br label %sdsalloc.exit

sdslen.exit.thread143:                            ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9 ; 2 uses
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 -5
  %i.v = load i32, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i32 %i.v to i64
  br label %sdsalloc.exit

sdslen.exit.thread148:                            ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -17 ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !14
end_hunk_0
