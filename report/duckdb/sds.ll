inline.NumInlined: 91
inline.NumDeleted: 9
begin_hunk_0_@_ZN10duckdb_hll12sdsupdatelenEPc:bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %i.a to i8
  %i.e = shl i8 %.tr.i, 3
  store i8 %i.e, ptr %i.b, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.d:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.a to i16
  %i.i = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 %i.h, ptr %i.i, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.e:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.a to i32
  %i.k = getelementptr inbounds i8, ptr %0, i64 -10
  store i32 %i.j, ptr %i.k, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %0, i64 -18
  store i64 %i.a, ptr %i.l, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10duckdb_hll8sdsclearEPc(ptr noundef captures(none) initializes((0, 1)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = and i8 %i.b, 7
  switch i8 %i.c, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -4
  store i8 0, ptr %i.d, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 0, ptr %i.e, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -10
  store i32 0, ptr %i.f, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -18
  store i64 0, ptr %i.g, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  store i8 0, ptr %0, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = and i8 %i.b, 7                           ; 4 uses
  switch i8 %i.c, label %_ZN10duckdb_hllL8sdsavailEPc.exit [
    i8 4, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -4
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = load i8, ptr %i.d, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  %i.j = sub nsw i64 %i.g, %i.i
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -6
  %i.l = getelementptr inbounds i8, ptr %0, i64 -4
  %i.m = load i16, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i16 %i.m to i64
  %i.o = load i16, ptr %i.k, align 1, !tbaa !10
  %i.p = zext i16 %i.o to i64
  %i.q = sub nsw i64 %i.n, %i.p
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -10
  %i.s = getelementptr inbounds i8, ptr %0, i64 -6
  %i.t = load i32, ptr %i.s, align 1, !tbaa !16
  %i.u = load i32, ptr %i.r, align 1, !tbaa !14
  %i.v = sub i32 %i.t, %i.u
  %i.w = zext i32 %i.v to i64
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -18
  %i.y = getelementptr inbounds i8, ptr %0, i64 -10
  %i.z = load i64, ptr %i.y, align 1, !tbaa !20
  %i.aa = load i64, ptr %i.x, align 1, !tbaa !17
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit

_ZN10duckdb_hllL8sdsavailEPc.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.d ], [ %i.ab, %bb.e ], [ %i.j, %bb.b ], [ %i.q, %bb.c ], [ 0, %bb.a ]
  %.not = icmp ult i64 %.0.i, %1
  br i1 %.not, label %bb.f, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.f:                                             ; preds = %_ZN10duckdb_hllL8sdsavailEPc.exit
  %i.ac = zext i8 %i.b to i32                     ; 2 uses
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %_ZN10duckdb_hllL6sdslenEPc.exit [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = lshr i32 %i.ac, 3
  %i.af = zext nneg i32 %i.ae to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.i:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %0, i64 -6
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !10
  %i.al = zext i16 %i.ak to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.j:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %0, i64 -10
  %i.an = load i32, ptr %i.am, align 1, !tbaa !14
  %i.ao = zext i32 %i.an to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.k:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -18
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i47 = phi i64 [ %i.aq, %bb.k ], [ %i.af, %bb.g ], [ %i.ai, %bb.h ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ 0, %bb.f ] ; 6 uses
  %i.ar = icmp samesign ult i8 %i.c, 5
  br i1 %i.ar, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.as = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.as
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %switch.lookup
  %.0.i48.neg = phi i64 [ %switch.load, %switch.lookup ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ]
  %i.at = getelementptr inbounds i8, ptr %0, i64 %.0.i48.neg ; 2 uses
  %i.au = add i64 %.0.i47, %1                     ; 3 uses
  %i.av = icmp ult i64 %i.au, 1048576
  %i.aw = shl nuw nsw i64 %i.au, 1
  %i.ax = add i64 %i.au, 1048576
  %.042 = select i1 %i.av, i64 %i.aw, i64 %i.ax
  %.042.fr = freeze i64 %.042                     ; 8 uses
  %i.ay = icmp ult i64 %.042.fr, 256
  br i1 %i.ay, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51, label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.az = icmp ult i64 %.042.fr, 65536
  br i1 %i.az, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp ult i64 %.042.fr, 4294967296       ; 2 uses
  %spec.select = select i1 %i.ba, i8 3, i8 4
  %spec.select76 = select i1 %i.ba, i64 10, i64 18
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51

default.unreachable56:                            ; preds = %bb.p
  unreachable

_ZN10duckdb_hllL10sdsHdrSizeEc.exit51:            ; preds = %bb.m, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit, %bb.l
  %.0.i4958 = phi i8 [ 2, %bb.l ], [ 1, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit ], [ %spec.select, %bb.m ] ; 3 uses
  %.0.i50 = phi i64 [ 6, %bb.l ], [ 4, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit ], [ %spec.select76, %bb.m ] ; 3 uses
  %i.bb = icmp eq i8 %i.c, %.0.i4958
  %i.bc = add i64 %.042.fr, 1
  %i.bd = add i64 %i.bc, %.0.i50                  ; 2 uses
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51
  %i.be = tail call ptr @realloc(ptr noundef %i.at, i64 noundef %i.bd) #30 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.o:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bd) #27 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0.i50 ; 10 uses
  %i.bj = add i64 %.0.i47, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %0, i64 %i.bj, i1 false)
  tail call void @free(ptr noundef %i.at) #29
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -1
  store i8 %.0.i4958, ptr %i.bk, align 1, !tbaa !21
  switch i8 %.0.i4958, label %default.unreachable56 [
    i8 4, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread
    i8 1, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67
    i8 2, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70
    i8 3, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73
  ]

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67:     ; preds = %bb.p
  %i.bl = trunc i64 %.0.i47 to i8
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -4
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !7
  br label %bb.q

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70:     ; preds = %bb.p
  %i.bn = trunc i64 %.0.i47 to i16
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 -6
  store i16 %i.bn, ptr %i.bo, align 1, !tbaa !10
  br label %bb.r

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73:     ; preds = %bb.p
  %i.bp = trunc i64 %.0.i47 to i32
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -10
  store i32 %i.bp, ptr %i.bq, align 1, !tbaa !14
  br label %bb.s

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread:       ; preds = %bb.p
  %i.br = getelementptr inbounds i8, ptr %i.bi, i64 -18
  store i64 %.0.i47, ptr %i.br, align 1, !tbaa !17
  br label %bb.t

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i50 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.bs, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  %i.bt = and i8 %.pre, 7
  switch i8 %i.bt, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit [
    i8 4, label %bb.t
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
  ]

bb.q:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04169 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67 ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.bu = trunc i64 %.042.fr to i8
  %i.bv = getelementptr inbounds i8, ptr %.04169, i64 -3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !9
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.r:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04172 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70 ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.bw = trunc i64 %.042.fr to i16
  %i.bx = getelementptr inbounds i8, ptr %.04172, i64 -4
  store i16 %i.bw, ptr %i.bx, align 1, !tbaa !13
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.s:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04175 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73 ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.by = trunc i64 %.042.fr to i32
  %i.bz = getelementptr inbounds i8, ptr %.04175, i64 -6
  store i32 %i.by, ptr %i.bz, align 1, !tbaa !16
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.t:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04166 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.04166, i64 -10
  store i64 %.042.fr, ptr %i.ca, align 1, !tbaa !20
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

_ZN10duckdb_hllL11sdssetallocEPcm.exit:           ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_ZN10duckdb_hllL9sdssetlenEPcm.exit, %bb.o, %bb.n, %_ZN10duckdb_hllL8sdsavailEPc.exit
  %.0 = phi ptr [ null, %bb.n ], [ %0, %_ZN10duckdb_hllL8sdsavailEPc.exit ], [ null, %bb.o ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ], [ %.04169, %bb.q ], [ %.04172, %bb.r ], [ %.04175, %bb.s ], [ %.04166, %bb.t ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @_ZN10duckdb_hll18sdsRemoveFreeSpaceEPc(ptr noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = and i8 %i.b, 7                           ; 3 uses
  %i.d = icmp samesign ult i8 %i.c, 5
  br i1 %i.d, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.a ] ; 4 uses
  %i.f = zext i8 %i.b to i32                      ; 2 uses
  %i.g = and i32 %i.f, 7
  switch i32 %i.g, label %_ZN10duckdb_hllL6sdslenEPc.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.h = lshr i32 %i.f, 3
  %i.i = zext nneg i32 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.thread

bb.c:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.j = getelementptr inbounds i8, ptr %0, i64 -4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.m = getelementptr inbounds i8, ptr %0, i64 -6
  %i.n = load i16, ptr %i.m, align 1, !tbaa !10
  %i.o = zext i16 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.p = getelementptr inbounds i8, ptr %0, i64 -10
  %i.q = load i32, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i32 %i.q to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.s = getelementptr inbounds i8, ptr %0, i64 -18
  %i.t = load i64, ptr %i.s, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit.thread:           ; preds = %bb.b, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %.0.i38.ph = phi i64 [ 0, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit ], [ %i.i, %bb.b ]
  %i.u = sub nsw i64 0, %.0.i
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i38 = phi i64 [ %i.t, %bb.f ], [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 5 uses
  %i.w = sub nsw i64 0, %.0.i
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 3 uses
  %i.y = icmp ult i64 %.0.i38, 32
  br i1 %i.y, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41, label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.z = icmp ult i64 %.0.i38, 256
  br i1 %i.z, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread

_ZN10duckdb_hllL10sdsHdrSizeEc.exit41:            ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.thread, %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.g
  %i.aa = phi i1 [ false, %bb.g ], [ true, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ true, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ]
  %i.ab = phi i8 [ 1, %bb.g ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 3 uses
  %.0.i384348 = phi i64 [ %.0.i38, %bb.g ], [ %.0.i38, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %.0.i38.ph, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 5 uses
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.x, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %i.v, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 2 uses
  %.0.i40 = phi i64 [ 4, %bb.g ], [ 2, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ 2, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 2 uses
  %i.ad = icmp eq i8 %i.c, %i.ab
  br i1 %i.ad, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread, label %bb.i

_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread:     ; preds = %bb.g, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41
  %i.ae = phi ptr [ %i.ac, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41 ], [ %i.x, %bb.g ]
  %.0.i38434865 = phi i64 [ %.0.i384348, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41 ], [ %.0.i38, %bb.g ] ; 2 uses
  %i.af = or disjoint i64 %.0.i, 1
  %i.ag = add i64 %i.af, %.0.i38434865
  %i.ah = tail call ptr @realloc(ptr noundef %i.ae, i64 noundef %i.ag) #30 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.i:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41
  %i.ak = add nuw nsw i64 %.0.i384348, 1          ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, %.0.i40
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #27 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.0.i40 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.ak, i1 false)
  tail call void @free(ptr noundef %i.ac) #29
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ap, align 1, !tbaa !21
  %.tr.i = trunc nuw i64 %.0.i384348 to i8        ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = shl i8 %.tr.i, 3                        ; 2 uses
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -4
  store i8 %.tr.i, ptr %i.ar, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.l, %bb.k, %bb.h
  %i.as = phi i8 [ %.pre, %bb.h ], [ %i.ab, %bb.l ], [ %i.aq, %bb.k ]
  %.0.i3844 = phi i64 [ %.0.i38434865, %bb.h ], [ %.0.i384348, %bb.l ], [ %.0.i384348, %bb.k ] ; 4 uses
  %.035 = phi ptr [ %i.aj, %bb.h ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ] ; 9 uses
  %i.at = and i8 %i.as, 7
  switch i8 %i.at, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit [
    i8 4, label %bb.p
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.m:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.au = trunc i64 %.0.i3844 to i8
  %i.av = getelementptr inbounds i8, ptr %.035, i64 -3
  store i8 %i.au, ptr %i.av, align 1, !tbaa !9
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.n:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.aw = trunc i64 %.0.i3844 to i16
  %i.ax = getelementptr inbounds i8, ptr %.035, i64 -4
  store i16 %i.aw, ptr %i.ax, align 1, !tbaa !13
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.o:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.ay = trunc i64 %.0.i3844 to i32
  %i.az = getelementptr inbounds i8, ptr %.035, i64 -6
  store i32 %i.ay, ptr %i.az, align 1, !tbaa !16
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.p:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.ba = getelementptr inbounds i8, ptr %.035, i64 -10
  store i64 %.0.i3844, ptr %i.ba, align 1, !tbaa !20
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

_ZN10duckdb_hllL11sdssetallocEPcm.exit:           ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZN10duckdb_hllL9sdssetlenEPcm.exit, %bb.i, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread
  %.0 = phi ptr [ null, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread ], [ null, %bb.i ], [ %.035, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ], [ %.035, %bb.m ], [ %.035, %bb.n ], [ %.035, %bb.o ], [ %.035, %bb.p ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN10duckdb_hll12sdsAllocSizeEPc(ptr noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL8sdsallocEPc.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -4
end_hunk_0
