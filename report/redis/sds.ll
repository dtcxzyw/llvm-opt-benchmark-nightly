Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sds?download=true
inline.NumInlined: 136
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sdsfreegeneric:bb.a
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

sdsHdrSize.exit.i:                                ; preds = %bb.b, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds i8, ptr %0, i64 %.0.i.neg.i
  tail call void @zfree(ptr noundef nonnull %i.g) #21
  br label %sdsfree.exit

sdsfree.exit:                                     ; preds = %bb.a, %sdsHdrSize.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sdsupdatelen(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !17
  %i.c = and i8 %.val.i, 7
  switch i8 %i.c, label %sdssetlen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

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
  store i16 %i.g, ptr %i.h, align 1, !tbaa !19
  br label %sdssetlen.exit

bb.e:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.a to i32
  %i.j = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 %i.i, ptr %i.j, align 1, !tbaa !12
  br label %sdssetlen.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 %i.a, ptr %i.k, align 1, !tbaa !15
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sdsclear(ptr nofree noundef captures(none) initializes((0, 1)) %0) local_unnamed_addr #7 {
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
  store i16 0, ptr %i.d, align 1, !tbaa !19
  br label %sdssetlen.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 0, ptr %i.e, align 1, !tbaa !12
  br label %sdssetlen.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 0, ptr %i.f, align 1, !tbaa !15
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
  %i.m = load i16, ptr %i.l, align 1, !tbaa !19
  %i.n = zext i16 %i.m to i64
  %i.o = load i16, ptr %i.k, align 1, !tbaa !19
  %i.p = zext i16 %i.o to i64
  %i.q = sub nsw i64 %i.n, %i.p
  br label %sdsavail.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9
  %i.s = getelementptr inbounds i8, ptr %0, i64 -5
  %i.t = load i32, ptr %i.s, align 1, !tbaa !12
  %i.u = load i32, ptr %i.r, align 1, !tbaa !12
  %i.v = sub i32 %i.t, %i.u
  %i.w = zext i32 %i.v to i64
  br label %sdsavail.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -17
  %i.y = getelementptr inbounds i8, ptr %0, i64 -9
  %i.z = load i64, ptr %i.y, align 1, !tbaa !15
  %i.aa = load i64, ptr %i.x, align 1, !tbaa !15
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
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !19
  %i.aj = zext i16 %i.ai to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread104:                            ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %0, i64 -9
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !12
  %i.am = zext i32 %i.al to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread107:                            ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %0, i64 -17
  %i.ao = load i64, ptr %i.an, align 1, !tbaa !15
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
  %.0 = phi i64 [ %i.au, %bb.j ], [ %i.av, %bb.k ], [ %i.aq, %bb.h ] ; 4 uses
  %i.aw = icmp ult i64 %.0, 253
  br i1 %i.aw, label %sdsHdrSize.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ult i64 %.0, 65531
  br i1 %i.ax, label %sdsHdrSize.exit60, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ult i64 %.0, 4294967287            ; 2 uses
  %spec.select = select i1 %i.ay, i8 3, i8 4
  %spec.select189 = select i1 %i.ay, i32 9, i32 17
  br label %sdsHdrSize.exit60

default.unreachable151:                           ; preds = %adjustTypeIfNeeded.exit73
  unreachable

sdsHdrSize.exit60:                                ; preds = %bb.n, %bb.l, %bb.m
  %.0.i58153 = phi i8 [ 2, %bb.m ], [ 1, %bb.l ], [ %spec.select, %bb.n ] ; 6 uses
  %.0.i59 = phi i32 [ 5, %bb.m ], [ 3, %bb.l ], [ %spec.select189, %bb.n ] ; 8 uses
  %i.az = zext nneg i32 %.0.i59 to i64            ; 4 uses
  %i.ba = add i64 %.0, 1
  %i.bb = add i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.aq
  br i1 %i.bc, label %bb.p, label %bb.o, !prof !13

bb.o:                                             ; preds = %sdsHdrSize.exit60
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 300) #21
  tail call void @abort() #22
  unreachable

bb.p:                                             ; preds = %sdsHdrSize.exit60
  %i.bd = icmp eq i8 %i.c, %.0.i58153
  br i1 %i.bd, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.be = call ptr @zrealloc_usable(ptr noundef %i.ap, i64 noundef %i.bb, ptr noundef nonnull %i.a, ptr noundef null) #21 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %sdssetalloc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az ; 4 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bi = xor i32 %.0.i59, -1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add i64 %i.bh, %i.bj                    ; 4 uses
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
  %i.bl = icmp ult i8 %switch.tableidx, 3
  br i1 %i.bl, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.r
  %i.bm = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize.6, i64 %i.bm
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.bn = icmp ugt i64 %i.bk, %switch.ext
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
  store i16 %i.bs, ptr %i.be, align 1, !tbaa !19
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
  br i1 %i.bt, label %3, label %6

3:                                                ; preds = %adjustTypeIfNeeded.exit
  %4 = trunc i64 %.0.i5697 to i32
  %5 = getelementptr inbounds i8, ptr %i.bv, i64 -9
  store i32 %4, ptr %5, align 1, !tbaa !12
  br label %adjustTypeIfNeeded.exit.thread

6:                                                ; preds = %adjustTypeIfNeeded.exit
  %7 = getelementptr inbounds i8, ptr %i.bv, i64 -17
  store i64 %.0.i5697, ptr %7, align 1, !tbaa !15
  br label %adjustTypeIfNeeded.exit.thread

bb.t:                                             ; preds = %bb.p
  %i.by = call ptr @zmalloc_usable(i64 noundef %i.bb, ptr noundef nonnull %i.a) #21 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %sdssetalloc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !15
  %i.cb = xor i32 %.0.i59, -1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = add i64 %i.ca, %i.cc                    ; 3 uses
  %i.ce = icmp samesign ult i8 %.0.i58153, 4
  br i1 %i.ce, label %switch.lookup191, label %adjustTypeIfNeeded.exit73.thread128

adjustTypeIfNeeded.exit73.thread128:              ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.az ; 3 uses
  %i.cg = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cg, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -1
  store i8 %.0.i58153, ptr %i.ch, align 1, !tbaa !17
  %i.ci = xor i32 %.0.i59, -1
  %i.cj = sext i32 %i.ci to i64
  br label %adjustTypeIfNeeded.exit.thread.thread176

switch.lookup191:                                 ; preds = %bb.u
  %i.ck = zext nneg i8 %.0.i58153 to i64
  %i.cl = getelementptr [4 x i8], ptr @switch.table.sdsResize.6, i64 %i.ck
  %switch.gep192 = getelementptr i8, ptr %i.cl, i64 -4
  %switch.load193 = load i32, ptr %switch.gep192, align 4
  %switch.ext194 = zext i32 %switch.load193 to i64
  %i.cm = icmp ugt i64 %i.cd, %switch.ext194
  br i1 %i.cm, label %bb.v, label %adjustTypeIfNeeded.exit73

bb.v:                                             ; preds = %switch.lookup191
  %i.cn = icmp ult i64 %i.cd, 65531
  br i1 %i.cn, label %adjustTypeIfNeeded.exit73.thread, label %sdsReqType.exit.i67

adjustTypeIfNeeded.exit73.thread:                 ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 5 ; 2 uses
  %i.cp = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cp, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i8 2, ptr %i.cq, align 1, !tbaa !17
  br label %bb.w

sdsReqType.exit.i67:                              ; preds = %bb.v
  %i.cr = icmp ult i64 %i.cd, 4294967287          ; 2 uses
  %.pre = select i1 %i.cr, i64 9, i64 17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %.pre ; 4 uses
  %i.ct = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.ct, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -1 ; 2 uses
  br i1 %i.cr, label %adjustTypeIfNeeded.exit73.thread165, label %adjustTypeIfNeeded.exit73.thread161

adjustTypeIfNeeded.exit73.thread161:              ; preds = %sdsReqType.exit.i67
  store i8 4, ptr %i.cu, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread176

adjustTypeIfNeeded.exit73.thread165:              ; preds = %sdsReqType.exit.i67
  store i8 3, ptr %i.cu, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread180

adjustTypeIfNeeded.exit73:                        ; preds = %switch.lookup191
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.az ; 6 uses
  %i.cw = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cw, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -1
  store i8 %.0.i58153, ptr %i.cx, align 1, !tbaa !17
  switch i8 %.0.i58153, label %default.unreachable151 [
    i8 3, label %adjustTypeIfNeeded.exit.thread.thread180
    i8 1, label %adjustTypeIfNeeded.exit.thread.thread185
    i8 2, label %bb.w
  ]

adjustTypeIfNeeded.exit.thread.thread185:         ; preds = %adjustTypeIfNeeded.exit73
  %i.cy = trunc i64 %.0.i5697 to i8
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 -3
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !17
  %i.da = load i64, ptr %i.a, align 8, !tbaa !15
  %i.db = xor i32 %.0.i59, -1
  %i.dc = sext i32 %i.db to i64
  %i.dd = add i64 %i.da, %i.dc
  br label %sdsTypeMaxSize.exit

bb.w:                                             ; preds = %adjustTypeIfNeeded.exit73.thread, %adjustTypeIfNeeded.exit73
  %i.de = phi ptr [ %i.co, %adjustTypeIfNeeded.exit73.thread ], [ %i.cv, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2126 = phi i32 [ 5, %adjustTypeIfNeeded.exit73.thread ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.df = trunc i64 %.0.i5697 to i16
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -5
  store i16 %i.df, ptr %i.dg, align 1, !tbaa !19
  %i.dh = xor i32 %.2126, -1
  %i.di = sext i32 %i.dh to i64
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit.thread.thread180:         ; preds = %adjustTypeIfNeeded.exit73, %adjustTypeIfNeeded.exit73.thread165
  %8 = phi ptr [ %i.cs, %adjustTypeIfNeeded.exit73.thread165 ], [ %i.cv, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2169 = phi i32 [ 9, %adjustTypeIfNeeded.exit73.thread165 ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %9 = trunc i64 %.0.i5697 to i32
  %i.dj = getelementptr inbounds i8, ptr %8, i64 -9
  store i32 %9, ptr %i.dj, align 1, !tbaa !12
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !15
  %10 = xor i32 %.2169, -1
  %11 = sext i32 %10 to i64
  %i.dl = add i64 %i.dk, %11
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread.thread176:         ; preds = %adjustTypeIfNeeded.exit73.thread128, %adjustTypeIfNeeded.exit73.thread161
  %12 = phi ptr [ %i.cf, %adjustTypeIfNeeded.exit73.thread128 ], [ %i.cs, %adjustTypeIfNeeded.exit73.thread161 ] ; 2 uses
  %.2132 = phi i64 [ %i.cj, %adjustTypeIfNeeded.exit73.thread128 ], [ -18, %adjustTypeIfNeeded.exit73.thread161 ]
  %i.dm = getelementptr inbounds i8, ptr %12, i64 -17
  store i64 %.0.i5697, ptr %i.dm, align 1, !tbaa !15
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !15
  %i.do = add i64 %i.dn, %.2132
  br label %.critedge

adjustTypeIfNeeded.exit.thread.thread170:         ; preds = %bb.w, %adjustTypeIfNeeded.exit.thread114
  %.092.ph.a = phi i64 [ -6, %adjustTypeIfNeeded.exit.thread114 ], [ %i.di, %bb.w ]
  %.047.ph = phi ptr [ %i.bp, %adjustTypeIfNeeded.exit.thread114 ], [ %i.de, %bb.w ]
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !15
  %i.dq = add i64 %i.dp, %.092.ph.a
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread:                   ; preds = %switch.lookup, %3, %6
  %.093 = phi i8 [ 3, %3 ], [ 4, %6 ], [ %i.c, %switch.lookup ]
  %.092 = phi i32 [ 9, %3 ], [ 17, %6 ], [ %.0.i59, %switch.lookup ]
  %.047 = phi ptr [ %i.bv, %3 ], [ %i.bv, %6 ], [ %i.bg, %switch.lookup ] ; 4 uses
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ds = xor i32 %.092, -1
  %i.dt = sext i32 %i.ds to i64
  %i.du = add i64 %i.dr, %i.dt                    ; 4 uses
  switch i8 %.093, label %.critedge [
    i8 3, label %bb.y
    i8 1, label %sdsTypeMaxSize.exit
    i8 2, label %bb.x
  ]

bb.x:                                             ; preds = %adjustTypeIfNeeded.exit.thread
  br label %sdsTypeMaxSize.exit

bb.y:                                             ; preds = %adjustTypeIfNeeded.exit.thread
  br label %sdsTypeMaxSize.exit

sdsTypeMaxSize.exit:                              ; preds = %adjustTypeIfNeeded.exit.thread.thread180, %adjustTypeIfNeeded.exit.thread.thread170, %adjustTypeIfNeeded.exit.thread.thread185, %adjustTypeIfNeeded.exit.thread, %bb.x, %bb.y
  %i.dv = phi i64 [ %i.du, %bb.x ], [ %i.dd, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %i.du, %adjustTypeIfNeeded.exit.thread ], [ %i.dq, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.dl, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %i.du, %bb.y ] ; 2 uses
  %.047175 = phi ptr [ %.047, %bb.x ], [ %i.cv, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %.047, %adjustTypeIfNeeded.exit.thread ], [ %.047.ph, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %8, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %.047, %bb.y ]
  %.0.i77 = phi i64 [ 65535, %bb.x ], [ 255, %adjustTypeIfNeeded.exit.thread.thread185 ], [ 255, %adjustTypeIfNeeded.exit.thread ], [ 65535, %adjustTypeIfNeeded.exit.thread.thread170 ], [ 4294967295, %adjustTypeIfNeeded.exit.thread.thread180 ], [ 4294967295, %bb.y ]
  %.not141 = icmp ugt i64 %i.dv, %.0.i77
  br i1 %.not141, label %bb.z, label %.critedge, !prof !30

bb.z:                                             ; preds = %sdsTypeMaxSize.exit
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 325) #21
  call void @abort() #22
  unreachable

.critedge:                                        ; preds = %bb.r, %adjustTypeIfNeeded.exit.thread.thread176, %adjustTypeIfNeeded.exit.thread, %sdsTypeMaxSize.exit
  %13 = phi i64 [ %i.dv, %sdsTypeMaxSize.exit ], [ %i.du, %adjustTypeIfNeeded.exit.thread ], [ %i.bk, %bb.r ], [ %i.do, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 4 uses
  %.047137 = phi ptr [ %.047175, %sdsTypeMaxSize.exit ], [ %.047, %adjustTypeIfNeeded.exit.thread ], [ %i.bg, %bb.r ], [ %12, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 10 uses
  %i.dw = getelementptr i8, ptr %.047137, i64 -1
  %.val.i78 = load i8, ptr %i.dw, align 1, !tbaa !17
  %i.dx = and i8 %.val.i78, 7
  switch i8 %i.dx, label %sdssetalloc.exit [
    i8 4, label %bb.ad
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
  ]

bb.aa:                                            ; preds = %.critedge
  %i.dy = trunc i64 %13 to i8
  %i.dz = getelementptr inbounds i8, ptr %.047137, i64 -2
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !17
  br label %sdssetalloc.exit

bb.ab:                                            ; preds = %.critedge
  %i.ea = trunc i64 %13 to i16
  %i.eb = getelementptr inbounds i8, ptr %.047137, i64 -3
  store i16 %i.ea, ptr %i.eb, align 1, !tbaa !19
  br label %sdssetalloc.exit

bb.ac:                                            ; preds = %.critedge
  %i.ec = trunc i64 %13 to i32
  %i.ed = getelementptr inbounds i8, ptr %.047137, i64 -5
  store i32 %i.ec, ptr %i.ed, align 1, !tbaa !12
  br label %sdssetalloc.exit

bb.ad:                                            ; preds = %.critedge
  %i.ee = getelementptr inbounds i8, ptr %.047137, i64 -9
  store i64 %13, ptr %i.ee, align 1, !tbaa !15
  br label %sdssetalloc.exit

sdssetalloc.exit:                                 ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.critedge, %bb.t, %bb.q, %sdsavail.exit
  %.046 = phi ptr [ null, %bb.q ], [ %0, %sdsavail.exit ], [ null, %bb.t ], [ %.047137, %.critedge ], [ %.047137, %bb.aa ], [ %.047137, %bb.ab ], [ %.047137, %bb.ac ], [ %.047137, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.046
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
  %i.i = load i16, ptr %i.h, align 1, !tbaa !19
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !12
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !15
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
    i8 1, label %sdslen.exit.thread134
    i8 2, label %sdslen.exit.thread139
    i8 3, label %sdslen.exit.thread144
    i8 4, label %sdslen.exit.thread149
  ]

sdslen.exit.thread:                               ; preds = %bb.a
  %i.d = lshr i8 %.val, 3
  %i.e = zext nneg i8 %i.d to i64                 ; 2 uses
  br label %sdsalloc.exit

sdslen.exit.thread134:                            ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 -2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = zext i8 %i.j to i64
  br label %sdsalloc.exit

sdslen.exit.thread139:                            ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %0, i64 -5 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !19
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 -3
  %i.p = load i16, ptr %i.o, align 1, !tbaa !19
  %i.q = zext i16 %i.p to i64
  br label %sdsalloc.exit

sdslen.exit.thread144:                            ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9 ; 2 uses
  %i.s = load i32, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 -5
  %i.v = load i32, ptr %i.u, align 1, !tbaa !12
  %i.w = zext i32 %i.v to i64
  br label %sdsalloc.exit

sdslen.exit.thread149:                            ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -17 ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !15
  %i.z = getelementptr inbounds i8, ptr %0, i64 -9
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !15
  br label %sdsalloc.exit

sdsalloc.exit:                                    ; preds = %bb.a, %sdslen.exit.thread, %sdslen.exit.thread134, %sdslen.exit.thread139, %sdslen.exit.thread144, %sdslen.exit.thread149
  %i.ab = phi ptr [ %i.x, %sdslen.exit.thread149 ], [ %i.b, %sdslen.exit.thread ], [ %i.f, %sdslen.exit.thread134 ], [ %i.l, %sdslen.exit.thread139 ], [ %i.r, %sdslen.exit.thread144 ], [ %0, %bb.a ] ; 2 uses
  %i.ac = phi i64 [ 17, %sdslen.exit.thread149 ], [ 1, %sdslen.exit.thread ], [ 3, %sdslen.exit.thread134 ], [ 5, %sdslen.exit.thread139 ], [ 9, %sdslen.exit.thread144 ], [ 0, %bb.a ]
  %.0.i60133 = phi i64 [ %i.y, %sdslen.exit.thread149 ], [ %i.e, %sdslen.exit.thread ], [ %i.h, %sdslen.exit.thread134 ], [ %i.n, %sdslen.exit.thread139 ], [ %i.t, %sdslen.exit.thread144 ], [ 0, %bb.a ]
  %.0.i115131 = phi i32 [ 17, %sdslen.exit.thread149 ], [ 1, %sdslen.exit.thread ], [ 3, %sdslen.exit.thread134 ], [ 5, %sdslen.exit.thread139 ], [ 9, %sdslen.exit.thread144 ], [ 0, %bb.a ] ; 5 uses
  %.0.i62 = phi i64 [ %i.aa, %sdslen.exit.thread149 ], [ %i.e, %sdslen.exit.thread ], [ %i.k, %sdslen.exit.thread134 ], [ %i.q, %sdslen.exit.thread139 ], [ %i.w, %sdslen.exit.thread144 ], [ 0, %bb.a ]
  %i.ad = icmp eq i64 %.0.i62, %1
  br i1 %i.ad, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %sdsalloc.exit
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i60133) ; 12 uses
  %i.ae = icmp ult i64 %1, 32
  br i1 %i.ae, label %sdsReqType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i64 %1, 253
  br i1 %i.af, label %sdsReqType.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %1, 65531
  br i1 %i.ag, label %sdsReqType.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ult i64 %1, 4294967287
  %..i = select i1 %i.ah, i8 3, i8 4
  br label %sdsReqType.exit

sdsReqType.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i63 = phi i8 [ 2, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ], [ %..i, %bb.e ] ; 2 uses
  %i.ai = icmp ne i32 %2, 0
  %i.aj = icmp eq i8 %.0.i63, 0
  %or.cond = and i1 %i.ai, %i.aj
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i63 ; 7 uses
  %i.ak = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.sdsResize, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 4 uses
  %i.al = icmp eq i8 %i.c, %spec.store.select
  %i.am = icmp samesign ult i8 %spec.store.select, %i.c
  %i.an = icmp samesign ugt i8 %spec.store.select, 1
  %i.ao = and i1 %i.am, %i.an
  %i.ap = select i1 %i.al, i1 true, i1 %i.ao      ; 2 uses
  %.pn.in.sroa.speculated = select i1 %i.ap, i32 %.0.i115131, i32 %switch.ext
  %.pn = zext nneg i32 %.pn.in.sroa.speculated to i64
  %.in = add i64 %1, 1
  %i.aq = add i64 %.in, %.pn                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !15
  br i1 %i.ap, label %bb.f, label %bb.q

bb.f:                                             ; preds = %sdsReqType.exit
  switch i8 %i.c, label %sdsAllocSize.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ar = lshr i8 %.val, 3
  %narrow.i = add nuw nsw i8 %i.ar, 2
  %i.as = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds i8, ptr %0, i64 -2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 4
  br label %sdsAllocSize.exit
end_hunk_0
