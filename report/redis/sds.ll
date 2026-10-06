Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sds?download=true
inline.NumInlined: 136
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_sdsMakeRoomFor:bb.a
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -1
  store i8 %.0.i58153, ptr %i.da, align 1, !tbaa !17
  switch i8 %.0.i58153, label %default.unreachable151 [
    i8 3, label %adjustTypeIfNeeded.exit.thread.thread180
    i8 1, label %adjustTypeIfNeeded.exit.thread.thread185
    i8 2, label %bb.y
  ]

adjustTypeIfNeeded.exit.thread.thread185:         ; preds = %adjustTypeIfNeeded.exit73
  %i.db = trunc i64 %.0.i5697 to i8
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -3
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !17
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !15
  %i.de = xor i32 %.0.i59, -1
  %i.df = sext i32 %i.de to i64
  %i.dg = add i64 %i.dd, %i.df
  br label %sdsTypeMaxSize.exit

bb.y:                                             ; preds = %adjustTypeIfNeeded.exit73.thread, %adjustTypeIfNeeded.exit73
  %i.dh = phi ptr [ %i.cr, %adjustTypeIfNeeded.exit73.thread ], [ %i.cy, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2126 = phi i32 [ 5, %adjustTypeIfNeeded.exit73.thread ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.di = trunc i64 %.0.i5697 to i16
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -5
  store i16 %i.di, ptr %i.dj, align 1, !tbaa !19
  %i.dk = xor i32 %.2126, -1
  %i.dl = sext i32 %i.dk to i64
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit.thread.thread180:         ; preds = %adjustTypeIfNeeded.exit73, %adjustTypeIfNeeded.exit73.thread165
  %i.dm = phi ptr [ %i.cv, %adjustTypeIfNeeded.exit73.thread165 ], [ %i.cy, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2169 = phi i32 [ 9, %adjustTypeIfNeeded.exit73.thread165 ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.dn = trunc i64 %.0.i5697 to i32
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -9
  store i32 %i.dn, ptr %i.do, align 1, !tbaa !12
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !15
  %i.dq = xor i32 %.2169, -1
  %i.dr = sext i32 %i.dq to i64
  %i.ds = add i64 %i.dp, %i.dr
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread.thread176:         ; preds = %adjustTypeIfNeeded.exit73.thread128, %adjustTypeIfNeeded.exit73.thread161
  %i.dt = phi ptr [ %i.ci, %adjustTypeIfNeeded.exit73.thread128 ], [ %i.cv, %adjustTypeIfNeeded.exit73.thread161 ] ; 2 uses
  %.2132 = phi i64 [ %i.cm, %adjustTypeIfNeeded.exit73.thread128 ], [ -18, %adjustTypeIfNeeded.exit73.thread161 ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -17
  store i64 %.0.i5697, ptr %i.du, align 1, !tbaa !15
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, %.2132
  br label %.critedge

adjustTypeIfNeeded.exit.thread.thread170:         ; preds = %bb.y, %adjustTypeIfNeeded.exit.thread114
  %.092.ph = phi i64 [ -6, %adjustTypeIfNeeded.exit.thread114 ], [ %i.dl, %bb.y ]
  %.047.ph = phi ptr [ %i.bp, %adjustTypeIfNeeded.exit.thread114 ], [ %i.dh, %bb.y ]
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !15
  %i.dy = add i64 %i.dx, %.092.ph
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread:                   ; preds = %switch.lookup, %bb.t, %bb.u
  %.093 = phi i8 [ 3, %bb.t ], [ 4, %bb.u ], [ %i.c, %switch.lookup ]
  %.092 = phi i32 [ 9, %bb.t ], [ 17, %bb.u ], [ %.0.i59, %switch.lookup ]
  %.047 = phi ptr [ %i.bv, %bb.t ], [ %i.bv, %bb.u ], [ %i.bg, %switch.lookup ] ; 4 uses
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ea = xor i32 %.092, -1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = add i64 %i.dz, %i.eb                    ; 4 uses
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
  %i.ed = phi i64 [ %i.ec, %bb.z ], [ %i.dg, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %i.ec, %adjustTypeIfNeeded.exit.thread ], [ %i.dy, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.ds, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %i.ec, %bb.aa ] ; 2 uses
  %.047175 = phi ptr [ %.047, %bb.z ], [ %i.cy, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %.047, %adjustTypeIfNeeded.exit.thread ], [ %.047.ph, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.dm, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %.047, %bb.aa ]
  %.0.i77 = phi i64 [ 65535, %bb.z ], [ 255, %adjustTypeIfNeeded.exit.thread.thread185 ], [ 255, %adjustTypeIfNeeded.exit.thread ], [ 65535, %adjustTypeIfNeeded.exit.thread.thread170 ], [ 4294967295, %adjustTypeIfNeeded.exit.thread.thread180 ], [ 4294967295, %bb.aa ]
  %.not141 = icmp ugt i64 %i.ed, %.0.i77
  br i1 %.not141, label %bb.ab, label %.critedge, !prof !30

bb.ab:                                            ; preds = %sdsTypeMaxSize.exit
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 325) #21
  call void @abort() #22
  unreachable

.critedge:                                        ; preds = %bb.r, %adjustTypeIfNeeded.exit.thread.thread176, %adjustTypeIfNeeded.exit.thread, %sdsTypeMaxSize.exit
  %i.ee = phi i64 [ %i.ed, %sdsTypeMaxSize.exit ], [ %i.ec, %adjustTypeIfNeeded.exit.thread ], [ %i.bk, %bb.r ], [ %i.dw, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 4 uses
  %.047137 = phi ptr [ %.047175, %sdsTypeMaxSize.exit ], [ %.047, %adjustTypeIfNeeded.exit.thread ], [ %i.bg, %bb.r ], [ %i.dt, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 10 uses
  %i.ef = getelementptr i8, ptr %.047137, i64 -1
  %.val.i78 = load i8, ptr %i.ef, align 1, !tbaa !17
  %i.eg = and i8 %.val.i78, 7
  switch i8 %i.eg, label %sdssetalloc.exit [
    i8 4, label %bb.af
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %.critedge
  %i.eh = trunc i64 %i.ee to i8
  %i.ei = getelementptr inbounds i8, ptr %.047137, i64 -2
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !17
  br label %sdssetalloc.exit

bb.ad:                                            ; preds = %.critedge
  %i.ej = trunc i64 %i.ee to i16
  %i.ek = getelementptr inbounds i8, ptr %.047137, i64 -3
  store i16 %i.ej, ptr %i.ek, align 1, !tbaa !19
  br label %sdssetalloc.exit

bb.ae:                                            ; preds = %.critedge
  %i.el = trunc i64 %i.ee to i32
  %i.em = getelementptr inbounds i8, ptr %.047137, i64 -5
  store i32 %i.el, ptr %i.em, align 1, !tbaa !12
  br label %sdssetalloc.exit

bb.af:                                            ; preds = %.critedge
  %i.en = getelementptr inbounds i8, ptr %.047137, i64 -9
  store i64 %i.ee, ptr %i.en, align 1, !tbaa !15
  br label %sdssetalloc.exit

sdssetalloc.exit:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.critedge, %bb.v, %bb.q, %sdsavail.exit
  %.046 = phi ptr [ null, %bb.q ], [ %0, %sdsavail.exit ], [ null, %bb.v ], [ %.047137, %.critedge ], [ %.047137, %bb.ac ], [ %.047137, %bb.ad ], [ %.047137, %bb.ae ], [ %.047137, %bb.af ]
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
  %i.a = alloca i64, align 8                      ; 9 uses
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

bb.i:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds i8, ptr %0, i64 -3
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !19
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 6
  br label %sdsAllocSize.exit

bb.j:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -5
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !12
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 10
  br label %sdsAllocSize.exit

bb.k:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds i8, ptr %0, i64 -9
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !15
  %i.bh = add i64 %i.bg, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i67 = phi i64 [ %i.bh, %bb.k ], [ %i.as, %bb.g ], [ %i.aw, %bb.h ], [ %i.ba, %bb.i ], [ %i.be, %bb.j ], [ 0, %bb.f ] ; 2 uses
  store i64 %.0.i67, ptr %i.a, align 8, !tbaa !15
  %i.bi = tail call i64 @je_nallocx(i64 noundef %i.aq, i32 noundef 0) #23
  %i.bj = icmp eq i64 %i.bi, %.0.i67
  br i1 %i.bj, label %bb.t, label %bb.l

bb.l:                                             ; preds = %sdsAllocSize.exit
  %i.bk = call ptr @zrealloc_usable(ptr noundef %i.ab, i64 noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef null) #21 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ac ; 4 uses
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bo = xor i32 %.0.i115131, -1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add i64 %i.bn, %i.bp                    ; 3 uses
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
  %i.br = icmp ult i8 %switch.tableidx, 3
  br i1 %i.br, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %bb.m
  %i.bs = zext nneg i8 %switch.tableidx to i64
  %switch.gep173 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize.6, i64 %i.bs
  %switch.load174 = load i32, ptr %switch.gep173, align 4
  %switch.ext175 = zext i32 %switch.load174 to i64
  %i.bt = icmp ugt i64 %i.bq, %switch.ext175
  br i1 %i.bt, label %bb.n, label %bb.t

bb.n:                                             ; preds = %switch.lookup
  %i.bu = icmp ult i64 %i.bq, 65531
  br i1 %i.bu, label %adjustTypeIfNeeded.exit.thread158, label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit.thread158:                ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 5 ; 2 uses
  %i.bw = add i64 %spec.select, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.bm, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 2, ptr %i.bx, align 1, !tbaa !17
  %i.by = trunc i64 %spec.select to i16
  store i16 %i.by, ptr %i.bk, align 1, !tbaa !19
  br label %bb.t

adjustTypeIfNeeded.exit:                          ; preds = %bb.n
  %i.bz = icmp ult i64 %i.bq, 4294967287          ; 3 uses
  %..i.i = select i1 %i.bz, i8 3, i8 4
  %i.ca = select i1 %i.bz, i64 9, i64 17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ca ; 6 uses
  %i.cc = add i64 %spec.select, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %i.bm, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -1
  store i8 %..i.i, ptr %i.cd, align 1, !tbaa !17
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.ce = trunc i64 %spec.select to i32
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -9
  store i32 %i.ce, ptr %i.cf, align 1, !tbaa !12
  br label %bb.t

bb.p:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -17
  store i64 %spec.select, ptr %i.cg, align 1, !tbaa !15
  br label %bb.t

bb.q:                                             ; preds = %sdsReqType.exit
  %i.ch = call ptr @zmalloc_usable(i64 noundef %i.aq, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ck = xor i32 %switch.ext, -1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add i64 %i.cj, %i.cl                    ; 3 uses
  %switch.tableidx176 = add nsw i8 %spec.store.select, -1 ; 2 uses
  %i.cn = icmp ult i8 %switch.tableidx176, 3
  br i1 %i.cn, label %switch.lookup177, label %adjustTypeIfNeeded.exit80

switch.lookup177:                                 ; preds = %bb.r
  %i.co = zext nneg i8 %switch.tableidx176 to i64
  %switch.gep178 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize.6, i64 %i.co
  %switch.load179 = load i32, ptr %switch.gep178, align 4
  %switch.ext180 = zext i32 %switch.load179 to i64
  %i.cp = icmp ugt i64 %i.cm, %switch.ext180
  br i1 %i.cp, label %bb.s, label %adjustTypeIfNeeded.exit80

bb.s:                                             ; preds = %switch.lookup177
  %i.cq = icmp ult i64 %i.cm, 65531
  br i1 %i.cq, label %adjustTypeIfNeeded.exit80, label %sdsReqType.exit.i74

sdsReqType.exit.i74:                              ; preds = %bb.s
  %i.cr = icmp ult i64 %i.cm, 4294967287          ; 2 uses
  %..i.i75 = select i1 %i.cr, i8 3, i8 4
  %..i76 = select i1 %i.cr, i32 9, i32 17
  br label %adjustTypeIfNeeded.exit80

adjustTypeIfNeeded.exit80:                        ; preds = %bb.r, %sdsReqType.exit.i74, %bb.s, %switch.lookup177
  %.1112 = phi i8 [ %spec.store.select, %bb.r ], [ %spec.store.select, %switch.lookup177 ], [ %..i.i75, %sdsReqType.exit.i74 ], [ 2, %bb.s ]
  %.0108 = phi i32 [ %switch.ext, %bb.r ], [ %switch.ext, %switch.lookup177 ], [ %..i76, %sdsReqType.exit.i74 ], [ 5, %bb.s ] ; 2 uses
  %i.cs = zext nneg i32 %.0108 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cs ; 3 uses
  %i.cu = add i64 %spec.select, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull align 1 %0, i64 %i.cu, i1 false)
  call void @zfree(ptr noundef %i.ab) #21
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -1
  store i8 %.1112, ptr %i.cv, align 1, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %sdsAllocSize.exit, %adjustTypeIfNeeded.exit.thread158, %bb.o, %bb.p, %switch.lookup, %adjustTypeIfNeeded.exit80
  %.0.sink = phi i32 [ %.0108, %adjustTypeIfNeeded.exit80 ], [ %.0.i115131, %sdsAllocSize.exit ], [ 17, %bb.p ], [ %.0.i115131, %switch.lookup ], [ %.0.i115131, %bb.m ], [ 9, %bb.o ], [ 5, %adjustTypeIfNeeded.exit.thread158 ]
  %.253 = phi ptr [ %i.ct, %adjustTypeIfNeeded.exit80 ], [ %0, %sdsAllocSize.exit ], [ %i.cb, %bb.p ], [ %i.bm, %switch.lookup ], [ %i.bm, %bb.m ], [ %i.cb, %bb.o ], [ %i.bv, %adjustTypeIfNeeded.exit.thread158 ] ; 15 uses
  %3 = load i64, ptr %i.a, align 8, !tbaa !15
  %4 = xor i32 %.0.sink, -1
  %5 = sext i32 %4 to i64
  %6 = add i64 %3, %5                             ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.253, i64 %spec.select
  store i8 0, ptr %i.cw, align 1, !tbaa !17
  %7 = getelementptr i8, ptr %.253, i64 -1        ; 2 uses
  %.val.i81 = load i8, ptr %7, align 1, !tbaa !17 ; 6 uses
  %i.cx = and i8 %.val.i81, 7
  switch i8 %i.cx, label %sdssetlen.exit83 [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %.tr.i82 = trunc i64 %spec.select to i8
  %i.cy = shl i8 %.tr.i82, 3                      ; 2 uses
  store i8 %i.cy, ptr %7, align 1, !tbaa !17
  br label %sdssetlen.exit83

bb.v:                                             ; preds = %bb.t
  %i.cz = trunc i64 %spec.select to i8
  %i.da = getelementptr inbounds i8, ptr %.253, i64 -3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !17
  br label %sdssetlen.exit83

bb.w:                                             ; preds = %bb.t
  %i.db = trunc i64 %spec.select to i16
  %i.dc = getelementptr inbounds i8, ptr %.253, i64 -5
  store i16 %i.db, ptr %i.dc, align 1, !tbaa !19
  br label %sdssetlen.exit83

bb.x:                                             ; preds = %bb.t
  %i.dd = trunc i64 %spec.select to i32
  %i.de = getelementptr inbounds i8, ptr %.253, i64 -9
  store i32 %i.dd, ptr %i.de, align 1, !tbaa !12
  br label %sdssetlen.exit83

bb.y:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds i8, ptr %.253, i64 -17
  store i64 %spec.select, ptr %i.df, align 1, !tbaa !15
  br label %sdssetlen.exit83

sdssetlen.exit83:                                 ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.val.i84 = phi i8 [ %.val.i81, %bb.t ], [ %i.cy, %bb.u ], [ %.val.i81, %bb.v ], [ %.val.i81, %bb.w ], [ %.val.i81, %bb.x ], [ %.val.i81, %bb.y ]
  %i.dg = and i8 %.val.i84, 7
  switch i8 %i.dg, label %.critedge [
    i8 4, label %bb.ac
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
  ]

bb.z:                                             ; preds = %sdssetlen.exit83
  %i.dh = trunc i64 %6 to i8
  %i.di = getelementptr inbounds i8, ptr %.253, i64 -2
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !17
  br label %.critedge

bb.aa:                                            ; preds = %sdssetlen.exit83
  %i.dj = trunc i64 %6 to i16
  %i.dk = getelementptr inbounds i8, ptr %.253, i64 -3
  store i16 %i.dj, ptr %i.dk, align 1, !tbaa !19
  br label %.critedge

bb.ab:                                            ; preds = %sdssetlen.exit83
  %i.dl = trunc i64 %6 to i32
  %i.dm = getelementptr inbounds i8, ptr %.253, i64 -5
  store i32 %i.dl, ptr %i.dm, align 1, !tbaa !12
  br label %.critedge

bb.ac:                                            ; preds = %sdssetlen.exit83
  %i.dn = getelementptr inbounds i8, ptr %.253, i64 -9
  store i64 %6, ptr %i.dn, align 1, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %sdssetlen.exit83, %bb.l, %bb.q
  %.150 = phi ptr [ null, %bb.l ], [ null, %bb.q ], [ %.253, %sdssetlen.exit83 ], [ %.253, %bb.z ], [ %.253, %bb.aa ], [ %.253, %bb.ab ], [ %.253, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ad

bb.ad:                                            ; preds = %sdsalloc.exit, %.critedge
  %.2 = phi ptr [ %.150, %.critedge ], [ %0, %sdsalloc.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @je_nallocx(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sdsAllocPtr(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %i.d = icmp samesign ult i8 %i.c, 5
  br i1 %i.d, label %switch.lookup, label %sdsHdrSize.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %bb.a, %switch.lookup
  %.0.i.neg = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.0.i.neg
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local void @sdsIncrLen(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val = load i8, ptr %i.a, align 1, !tbaa !17   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.q [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3                         ; 3 uses
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.c to i64
  %i.f = add nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 32
  br i1 %i.g, label %.critedge, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %1, 0
  %i.i = zext nneg i8 %i.c to i32
  %i.j = trunc i64 %1 to i32
  %i.k = sub i32 0, %i.j
  %i.l = icmp uge i32 %i.i, %i.k
  %i.m = select i1 %i.h, i1 %i.l, i1 false
  br i1 %i.m, label %..critedge_crit_edge, label %.thread, !prof !31

..critedge_crit_edge:                             ; preds = %bb.d
  %.pre = zext nneg i8 %i.c to i64
  %.pre84 = add nsw i64 %1, %.pre
  br label %.critedge

.thread:                                          ; preds = %bb.c, %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 468) #21
  tail call void @abort() #22
  unreachable

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.c
  %.pre-phi85 = phi i64 [ %.pre84, %..critedge_crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %.tr = trunc i64 %.pre-phi85 to i8
  %i.n = shl i8 %.tr, 3
  store i8 %i.n, ptr %i.a, align 1, !tbaa !17
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -3 ; 3 uses
  %i.p = icmp sgt i64 %1, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %0, i64 -2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  %i.t = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = sub nsw i64 %i.s, %i.u
  %.not58 = icmp slt i64 %i.v, %1
  br i1 %.not58, label %.critedge62, label %.critedge60

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = trunc i64 %1 to i32
  %i.z = sub i32 0, %i.y
  %.not82 = icmp ult i32 %i.x, %i.z
  br i1 %.not82, label %.critedge62, label %.critedge60, !prof !16

.critedge62:                                      ; preds = %bb.f, %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 475) #21
  tail call void @abort() #22
  unreachable

.critedge60:                                      ; preds = %bb.f, %bb.g
  %i.aa = phi i8 [ %i.t, %bb.f ], [ %i.w, %bb.g ]
  %i.ab = trunc i64 %1 to i8
  %i.ac = add i8 %i.aa, %i.ab                     ; 2 uses
  store i8 %i.ac, ptr %i.o, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i64
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -5 ; 3 uses
  %i.af = icmp sgt i64 %1, -1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -3
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !19
  %i.ai = zext i16 %i.ah to i64
  %i.aj = load i16, ptr %i.ae, align 1, !tbaa !19 ; 2 uses
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub nsw i64 %i.ai, %i.ak
  %.not57 = icmp slt i64 %i.al, %1
  br i1 %.not57, label %.critedge66, label %.critedge64

bb.j:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.ae, align 1, !tbaa !19 ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = trunc i64 %1 to i32
  %i.ap = sub i32 0, %i.ao
  %.not81 = icmp ult i32 %i.an, %i.ap
  br i1 %.not81, label %.critedge66, label %.critedge64, !prof !16

.critedge66:                                      ; preds = %bb.i, %bb.j
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 481) #21
  tail call void @abort() #22
  unreachable

.critedge64:                                      ; preds = %bb.i, %bb.j
  %i.aq = phi i16 [ %i.aj, %bb.i ], [ %i.am, %bb.j ]
  %i.ar = trunc i64 %1 to i16
  %i.as = add i16 %i.aq, %i.ar                    ; 2 uses
  store i16 %i.as, ptr %i.ae, align 1, !tbaa !19
  %i.at = zext i16 %i.as to i64
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds i8, ptr %0, i64 -9 ; 3 uses
  %i.av = icmp sgt i64 %1, -1
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds i8, ptr %0, i64 -5
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !12
  %i.ay = load i32, ptr %i.au, align 1, !tbaa !12 ; 2 uses
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = trunc i64 %1 to i32                     ; 2 uses
  %.not56 = icmp ult i32 %i.az, %i.ba
  br i1 %.not56, label %.critedge70, label %.critedge68

bb.m:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.au, align 1, !tbaa !12 ; 2 uses
  %i.bc = trunc i64 %1 to i32                     ; 2 uses
  %i.bd = sub i32 0, %i.bc
  %.not80 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not80, label %.critedge70, label %.critedge68, !prof !16

.critedge70:                                      ; preds = %bb.l, %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 487) #21
  tail call void @abort() #22
  unreachable

.critedge68:                                      ; preds = %bb.l, %bb.m
  %.pre-phi = phi i32 [ %i.ba, %bb.l ], [ %i.bc, %bb.m ]
  %i.be = phi i32 [ %i.ay, %bb.l ], [ %i.bb, %bb.m ]
  %i.bf = add i32 %i.be, %.pre-phi                ; 2 uses
  store i32 %i.bf, ptr %i.au, align 1, !tbaa !12
  %i.bg = zext i32 %i.bf to i64
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds i8, ptr %0, i64 -17 ; 3 uses
  %i.bi = icmp sgt i64 %1, -1
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds i8, ptr %0, i64 -9
end_hunk_0
