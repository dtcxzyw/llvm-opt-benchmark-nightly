Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_libraw?download=true
inline.NumInlined: 64
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@libraw_strerror:bb.a

bb.c:                                             ; preds = %bb.a
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.20, %bb.r ], [ @.str.19, %bb.q ], [ @.str.4, %bb.b ], [ @.str.5, %bb.c ], [ @.str.6, %bb.d ], [ @.str.7, %bb.e ], [ @.str.8, %bb.f ], [ @.str.9, %bb.g ], [ @.str.10, %bb.h ], [ @.str.11, %bb.i ], [ @.str.12, %bb.j ], [ @.str.13, %bb.k ], [ @.str.14, %bb.l ], [ @.str.15, %bb.m ], [ @.str.16, %bb.n ], [ @.str.17, %bb.o ], [ @.str.18, %bb.p ], [ @.str.3, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6LibRaw20parse_custom_camerasEjP22libraw_custom_camera_tPPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp ne ptr %3, null
  %i.a = icmp ne i32 %1, 0
  %or.cond112 = and i1 %.not, %i.a
  br i1 %or.cond112, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 768232 ; 2 uses
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %.080108 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.as ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not88 = icmp eq ptr %i.e, null
  br i1 %.not88, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28 ; 2 uses
  %i.g = icmp ult i64 %i.f, 10
  br i1 %i.g, label %bb.as, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.f, 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !20
  %i.j = zext i32 %i.i to i64
  %i.k = add i64 %i.h, %i.j
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #29 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN13libraw_memmgr6mallocEm.exit.thread.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !21   ; 9 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.l
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %.not10.i.i.i.1 = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.1, label %_ZN6LibRaw6mallocEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.1
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %.not10.i.i.i.2 = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i.2, label %_ZN6LibRaw6mallocEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.2
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %.not10.i.i.i.3 = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.3, label %_ZN6LibRaw6mallocEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.3
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %.not10.i.i.i.4 = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i.4, label %_ZN6LibRaw6mallocEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.4
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %.not10.i.i.i.5 = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.5, label %_ZN6LibRaw6mallocEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.5
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %.not10.i.i.i.6 = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.6, label %_ZN6LibRaw6mallocEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %exitcond.not.i.i.i.6 = icmp eq i64 %indvars.iv.next.i.i.i.6, 511
  br i1 %exitcond.not.i.i.i.6, label %bb.m, label %bb.l, !llvm.loop !0

bb.l:                                             ; preds = %bb.k, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.6, %bb.k ] ; 9 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  %.not10.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not10.i.i.i, label %_ZN6LibRaw6mallocEm.exit, label %bb.e

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 4088 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %.not11.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not11.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 11, ptr %i.ad, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN13libraw_memmgr6mallocEm.exit.thread.i:        ; preds = %bb.d
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 1, ptr %i.ae, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN6LibRaw6mallocEm.exit:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.l
  %indvars.iv.i.i.i.lcssa = phi i64 [ %indvars.iv.i.i.i, %bb.l ], [ %indvars.iv.next.i.i.i, %bb.e ], [ %indvars.iv.next.i.i.i.1, %bb.f ], [ %indvars.iv.next.i.i.i.2, %bb.g ], [ %indvars.iv.next.i.i.i.3, %bb.h ], [ %indvars.iv.next.i.i.i.4, %bb.i ], [ %indvars.iv.next.i.i.i.5, %bb.j ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.lcssa
  store ptr %i.l, ptr %i.af, align 8, !tbaa !22
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ah = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.ag) #30 ; 0 uses
  %i.ai = zext i32 %.080108 to i64
  %i.aj = getelementptr inbounds nuw [52 x i8], ptr %2, i64 %i.ai ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aj, i8 0, i64 52, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 27
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 17 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br label %bb.z

default.unreachable:                              ; preds = %.critedge
  unreachable

.preheader.i.i.i94:                               ; preds = %bb.ar, %bb.aq
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !21  ; 9 uses
  br label %bb.x

bb.p:                                             ; preds = %bb.x
  %indvars.iv.next.i.i.i96 = or disjoint i64 %indvars.iv.i.i.i95, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.ba = icmp eq ptr %i.az, %i.l
  br i1 %i.ba, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.i96.1 = or disjoint i64 %indvars.iv.i.i.i95, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96.1
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  %i.bd = icmp eq ptr %i.bc, %i.l
  br i1 %i.bd, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.i96.2 = or disjoint i64 %indvars.iv.i.i.i95, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96.2
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = icmp eq ptr %i.bf, %i.l
  br i1 %i.bg, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i.i.i96.3 = or disjoint i64 %indvars.iv.i.i.i95, 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96.3
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = icmp eq ptr %i.bi, %i.l
  br i1 %i.bj, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i.i.i96.4 = or disjoint i64 %indvars.iv.i.i.i95, 5 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96.4
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bm = icmp eq ptr %i.bl, %i.l
  br i1 %i.bm, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i96.5 = or disjoint i64 %indvars.iv.i.i.i95, 6 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96.5
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.bp = icmp eq ptr %i.bo, %i.l
  br i1 %i.bp, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i.i.i96.6 = or disjoint i64 %indvars.iv.i.i.i95, 7 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i96.6
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.bs = icmp eq ptr %i.br, %i.l
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i.i.i96.7 = add nuw nsw i64 %indvars.iv.i.i.i95, 8 ; 2 uses
  %exitcond.not.i.i.i97.7 = icmp eq i64 %indvars.iv.next.i.i.i96.7, 512
  br i1 %exitcond.not.i.i.i97.7, label %_ZN6LibRaw4freeEPv.exit, label %bb.x, !llvm.loop !1

bb.x:                                             ; preds = %bb.w, %.preheader.i.i.i94
  %indvars.iv.i.i.i95 = phi i64 [ 0, %.preheader.i.i.i94 ], [ %indvars.iv.next.i.i.i96.7, %bb.w ] ; 10 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i.i95
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = icmp eq ptr %i.bu, %i.l
  br i1 %i.bv, label %bb.y, label %bb.p

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.x
  %indvars.iv.i.i.i95.lcssa = phi i64 [ %indvars.iv.i.i.i95, %bb.x ], [ %indvars.iv.next.i.i.i96, %bb.p ], [ %indvars.iv.next.i.i.i96.1, %bb.q ], [ %indvars.iv.next.i.i.i96.2, %bb.r ], [ %indvars.iv.next.i.i.i96.3, %bb.s ], [ %indvars.iv.next.i.i.i96.4, %bb.t ], [ %indvars.iv.next.i.i.i96.5, %bb.u ], [ %indvars.iv.next.i.i.i96.6, %bb.v ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i.i95.lcssa
  store ptr null, ptr %i.bw, align 8, !tbaa !22
  br label %_ZN6LibRaw4freeEPv.exit

_ZN6LibRaw4freeEPv.exit:                          ; preds = %bb.w, %bb.y
  tail call void @free(ptr noundef nonnull %i.l) #30
  %i.bx = load i8, ptr %i.am, align 1, !tbaa !26
  %.not89 = icmp ne i8 %i.bx, 0
  %i.by = zext i1 %.not89 to i32
  %spec.select = add i32 %.080108, %i.by
  br label %bb.as

bb.z:                                             ; preds = %_ZN6LibRaw6mallocEm.exit, %bb.ar
  %.077107 = phi i32 [ 0, %_ZN6LibRaw6mallocEm.exit ], [ %i.cu, %bb.ar ] ; 2 uses
  %.078106 = phi ptr [ %i.l, %_ZN6LibRaw6mallocEm.exit ], [ %.0, %bb.ar ] ; 2 uses
  %i.bz = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.078106, i32 noundef 44) #28 ; 3 uses
  %.not90 = icmp eq ptr %i.bz, null
  br i1 %.not90, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.bz, align 1, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi ptr [ %i.ca, %bb.aa ], [ null, %bb.z ] ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.1 = phi ptr [ %.078106, %bb.ab ], [ %i.ce, %bb.ac ] ; 5 uses
  %i.cb = load i8, ptr %.1, align 1, !tbaa !26    ; 2 uses
  %i.cc = sext i8 %i.cb to i32
  %i.cd = tail call i32 @isspace(i32 noundef %i.cc) #28
  %.not91 = icmp eq i32 %i.cd, 0
  %.not92 = icmp eq i8 %i.cb, 0
  %or.cond = or i1 %.not92, %.not91
  %i.ce = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br i1 %or.cond, label %.critedge, label %bb.ac, !llvm.loop !106

.critedge:                                        ; preds = %bb.ac
  %i.cf = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.1, ptr noundef null, i32 noundef 10) #30 ; 12 uses
  switch i32 %.077107, label %default.unreachable [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
    i32 7, label %bb.ak
    i32 8, label %bb.al
    i32 9, label %bb.am
    i32 10, label %bb.an
    i32 11, label %bb.ao
    i32 12, label %bb.ap
    i32 13, label %bb.aq
  ]

bb.ad:                                            ; preds = %.critedge
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %i.aj, align 4, !tbaa !110
  br label %bb.ar

bb.ae:                                            ; preds = %.critedge
  %i.ch = trunc i64 %i.cf to i16
  store i16 %i.ch, ptr %i.aw, align 4, !tbaa !111
  br label %bb.ar

bb.af:                                            ; preds = %.critedge
  %i.ci = trunc i64 %i.cf to i16
  store i16 %i.ci, ptr %i.av, align 2, !tbaa !112
  br label %bb.ar

bb.ag:                                            ; preds = %.critedge
  %i.cj = trunc i64 %i.cf to i8
  store i8 %i.cj, ptr %i.au, align 4, !tbaa !113
  br label %bb.ar

bb.ah:                                            ; preds = %.critedge
  %i.ck = trunc i64 %i.cf to i8
  store i8 %i.ck, ptr %i.at, align 1, !tbaa !114
  br label %bb.ar

bb.ai:                                            ; preds = %.critedge
  %i.cl = trunc i64 %i.cf to i8
  store i8 %i.cl, ptr %i.as, align 2, !tbaa !115
  br label %bb.ar

bb.aj:                                            ; preds = %.critedge
  %i.cm = trunc i64 %i.cf to i8
  store i8 %i.cm, ptr %i.ar, align 1, !tbaa !116
  br label %bb.ar

bb.ak:                                            ; preds = %.critedge
  %i.cn = trunc i64 %i.cf to i16
  store i16 %i.cn, ptr %i.aq, align 4, !tbaa !117
  br label %bb.ar

bb.al:                                            ; preds = %.critedge
  %i.co = trunc i64 %i.cf to i8
  store i8 %i.co, ptr %i.ap, align 2, !tbaa !118
  br label %bb.ar

bb.am:                                            ; preds = %.critedge
  %i.cp = trunc i64 %i.cf to i8
  store i8 %i.cp, ptr %i.ao, align 1, !tbaa !119
  br label %bb.ar

bb.an:                                            ; preds = %.critedge
  %i.cq = trunc i64 %i.cf to i8
  store i8 %i.cq, ptr %i.an, align 4, !tbaa !120
  br label %bb.ar

bb.ao:                                            ; preds = %.critedge
  %i.cr = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) %.1, i64 noundef 9) #30 ; 0 uses
  br label %bb.ar

bb.ap:                                            ; preds = %.critedge
  %i.cs = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %.1, i64 noundef 19) #30 ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %.critedge
  %i.ct = trunc i64 %i.cf to i16
  store i16 %i.ct, ptr %i.ak, align 4, !tbaa !121
  br label %.preheader.i.i.i94

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.cu = add nuw nsw i32 %.077107, 1
  %.not132 = icmp eq ptr %.0, null
  br i1 %.not132, label %.preheader.i.i.i94, label %bb.z, !llvm.loop !107

bb.as:                                            ; preds = %bb.c, %_ZN6LibRaw4freeEPv.exit
  %.2 = phi i32 [ %.080108, %bb.c ], [ %spec.select, %_ZN6LibRaw4freeEPv.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !108

.loopexit:                                        ; preds = %bb.b, %bb.as, %bb.a
  %.082 = phi i32 [ 0, %bb.a ], [ %.2, %bb.as ], [ %.080108, %bb.b ]
  ret i32 %.082
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN6LibRaw6mallocEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = zext i32 %i.b to i64
  %i.d = add i64 %1, %i.c
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #29 ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN13libraw_memmgr6mallocEm.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 9 uses
  br label %bb.i

bb.b:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %.not10.i.i.1 = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.1, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.1
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %.not10.i.i.2 = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.2, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.2
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %.not10.i.i.3 = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.3, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.3
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %.not10.i.i.4 = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.4, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.4
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %.not10.i.i.5 = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.5, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.5
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %.not10.i.i.6 = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.6, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %exitcond.not.i.i.6 = icmp eq i64 %indvars.iv.next.i.i.6, 511
  br i1 %exitcond.not.i.i.6, label %bb.j, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.6, %bb.h ] ; 9 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %.not10.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 4088 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %.not11.i.i = icmp eq ptr %i.w, null
  br i1 %.not11.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.e, ptr %i.v, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 11, ptr %i.x, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN13libraw_memmgr6mallocEm.exit:                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.i
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.i ], [ %indvars.iv.next.i.i, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.c ], [ %indvars.iv.next.i.i.2, %bb.d ], [ %indvars.iv.next.i.i.3, %bb.e ], [ %indvars.iv.next.i.i.4, %bb.f ], [ %indvars.iv.next.i.i.5, %bb.g ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.lcssa
  store ptr %i.e, ptr %i.y, align 8, !tbaa !22
  ret ptr %i.e

_ZN13libraw_memmgr6mallocEm.exit.thread:          ; preds = %bb.a
  %i.z = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 1, ptr %i.z, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable
end_hunk_0
begin_hunk_1_@_ZN6LibRaw9adjust_blEv:bb.a
  %i.o = load i32, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1000000
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.o, ptr %i.q, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.268.2 = phi i32 [ 1, %bb.h ], [ %.268.1, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5476
  %i.s = load i32, ptr %i.r, align 4, !tbaa !95   ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1000000
  br i1 %i.t, label %.thread134, label %bb.j

.thread134:                                       ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.s, ptr %i.u, align 4, !tbaa !95
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %.268.2, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread134, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.v, align 4, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.w, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.y = load i32, ptr %i.x, align 8, !tbaa !165  ; 2 uses
  %i.z = icmp ugt i32 %i.y, 1000
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !95 ; 5 uses
  br i1 %i.z, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ac = add i32 %i.ab, 1
  %.mask = and i32 %i.ac, -2
  %i.ad = icmp eq i32 %.mask, 2
  br i1 %i.ad, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !95
  %i.ag = add i32 %i.af, 1
  %.mask73 = and i32 %i.ag, -2
  %i.ah = icmp eq i32 %.mask73, 2
  br i1 %i.ah, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ai = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.aj = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ak = lshr <4 x i32> %i.aj, <i32 0, i32 2, i32 4, i32 6>
  %i.al = and <4 x i32> %i.ak, splat (i32 3)      ; 6 uses
  store <4 x i32> %i.al, ptr %i.a, align 16, !tbaa !95
  %i.am = icmp eq <4 x i32> %i.al, splat (i32 1)  ; 5 uses
  %i.an = extractelement <4 x i1> %i.am, i64 0
  %not. = xor i1 %i.an, true
  %spec.select = sext i1 %not. to i32
  %i.ao = extractelement <4 x i1> %i.am, i64 1
  %spec.select.1 = select i1 %i.ao, i32 1, i32 %spec.select
  %i.ap = extractelement <4 x i1> %i.am, i64 2
  %spec.select.2 = select i1 %i.ap, i32 2, i32 %spec.select.1
  %i.aq = extractelement <4 x i1> %i.am, i64 3
  %spec.select.3 = select i1 %i.aq, i32 3, i32 %spec.select.2 ; 2 uses
  %i.ar = bitcast <4 x i1> %i.am to i4
  %i.as = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.ar)
  %i.at = icmp samesign ugt i4 %i.as, 1
  %i.au = icmp sgt i32 %spec.select.3, -1
  %or.cond = and i1 %i.at, %i.au
  %i.av = extractelement <4 x i32> %i.al, i64 0
  %i.aw = extractelement <4 x i32> %i.al, i64 1
  %i.ax = extractelement <4 x i32> %i.al, i64 2
  %i.ay = extractelement <4 x i32> %i.al, i64 3
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bc = zext nneg i32 %spec.select.3 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store i32 3, ptr %i.bd, align 4, !tbaa !95
  %.pre = load i32, ptr %i.a, align 16, !tbaa !95
  %.pre118 = load i32, ptr %i.bb, align 4, !tbaa !95
  %.pre119 = load i32, ptr %i.ba, align 8, !tbaa !95
  %.pre120 = load i32, ptr %i.az, align 4, !tbaa !95
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.be = phi i32 [ %.pre120, %bb.p ], [ %i.ay, %bb.o ]
  %i.bf = phi i32 [ %.pre119, %bb.p ], [ %i.ax, %bb.o ]
  %i.bg = phi i32 [ %.pre118, %bb.p ], [ %i.aw, %bb.o ]
  %i.bh = phi i32 [ %.pre, %bb.p ], [ %i.av, %bb.o ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !95
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !95
  %i.bn = add i32 %i.bm, %i.bj
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !95
  %i.bo = load i32, ptr %i.ae, align 4, !tbaa !95
  %.not131 = icmp eq i32 %i.bo, 1
  %i.bp = select i1 %.not131, i64 6, i64 7
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !95
  %i.bs = sext i32 %i.bg to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !95
  %i.bv = add i32 %i.bu, %i.br
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !95
  %i.bw = load i32, ptr %i.aa, align 8, !tbaa !95
  %.not132 = icmp eq i32 %i.bw, 1
  %i.bx = load i32, ptr %i.ae, align 4, !tbaa !95
  %i.by = add i32 %i.bx, 6
  %i.bz = select i1 %.not132, i32 6, i32 %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !95
  %i.cd = sext i32 %i.bf to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !95
  %i.cg = add i32 %i.cf, %i.cc
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !95
  %i.ch = load i32, ptr %i.aa, align 8, !tbaa !95
  %.not133 = icmp eq i32 %i.ch, 1
  %i.ci = load i32, ptr %i.ae, align 4, !tbaa !95 ; 2 uses
  %i.cj = add i32 %i.ci, 6
  %i.ck = select i1 %.not133, i32 6, i32 %i.cj
  %i.cl = icmp ne i32 %i.ci, 1
  %i.cm = zext i1 %i.cl to i32
  %i.cn = add i32 %i.ck, %i.cm
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !95
  %i.cr = sext i32 %i.be to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !95
  %i.cu = add i32 %i.ct, %i.cq
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !95
  store i32 0, ptr %i.ae, align 4, !tbaa !95
  store i32 0, ptr %i.aa, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.thread

bb.r:                                             ; preds = %bb.l
  %i.cv = icmp eq i32 %i.ab, 1
  br i1 %i.cv, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !95
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %.preheader83, label %.thread

.preheader83:                                     ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.da = load <1 x i32>, ptr %i.cz, align 8
  %i.db = load <4 x i32>, ptr %i.g, align 8, !tbaa !95
  %i.dc = shufflevector <1 x i32> %i.da, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = add <4 x i32> %i.db, %i.dc
  store <4 x i32> %i.dd, ptr %i.g, align 8, !tbaa !95
  store i32 0, ptr %i.cw, align 4, !tbaa !95
  store i32 0, ptr %i.aa, align 8, !tbaa !95
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader83, %bb.q
  %i.de = phi i32 [ %i.ab, %bb.m ], [ %i.ab, %bb.n ], [ %i.ab, %bb.r ], [ 1, %bb.s ], [ 0, %.preheader83 ], [ 0, %bb.q ] ; 2 uses
  %i.df = load <4 x i32>, ptr %i.g, align 8, !tbaa !95 ; 2 uses
  %i.dg = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.df) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !164
  %i.dj = add i32 %i.di, %i.dg                    ; 4 uses
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !164
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %.not74 = icmp eq i32 %i.de, 0
  br i1 %.not74, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !95 ; 2 uses
  %.not75 = icmp eq i32 %i.dm, 0
  br i1 %.not75, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !95 ; 5 uses
  %i.dp = mul i32 %i.dm, %i.de                    ; 8 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %iter.check, label %.preheader

iter.check:                                       ; preds = %bb.u
  %wide.trip.count = zext nneg i32 %i.dp to i64   ; 2 uses
  %i.dr = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp samesign ult i32 %i.dp, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp samesign ult i32 %i.dp, 33
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ds = and i64 %i.dr, 24
  %n.vec = and i64 %i.dr, -32                     ; 4 uses
  %i.dt = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dz, %vector.body ]
  %vec.phi143 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ea, %vector.body ]
  %vec.phi144 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi145 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ec, %vector.body ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 92
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 124
  %wide.load = load <8 x i32>, ptr %i.dv, align 4, !tbaa !95
  %wide.load146 = load <8 x i32>, ptr %i.dw, align 4, !tbaa !95
  %wide.load147 = load <8 x i32>, ptr %i.dx, align 4, !tbaa !95
  %wide.load148 = load <8 x i32>, ptr %i.dy, align 4, !tbaa !95
  %i.dz = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi, <8 x i32> %wide.load) ; 2 uses
  %i.ea = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi143, <8 x i32> %wide.load146) ; 2 uses
  %i.eb = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi144, <8 x i32> %wide.load147) ; 2 uses
  %i.ec = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi145, <8 x i32> %wide.load148) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dz, <8 x i32> %i.ea)
  %rdx.minmax149 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.eb)
  %rdx.minmax150 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax149, <8 x i32> %i.ec)
  %i.ee = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax150) ; 3 uses
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %iter.check182, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ee, %vec.epilog.iter.check ], [ %i.do, %vector.main.loop.iter.check ]
  %broadcast.splatinsert153 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec151 = and i64 %i.dr, -8                   ; 3 uses
  %i.ef = or disjoint i64 %n.vec151, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi155 = phi <8 x i32> [ %broadcast.splat154, %vec.epilog.ph ], [ %i.ei, %vec.epilog.vector.body ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index152
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %wide.load156 = load <8 x i32>, ptr %i.eh, align 4, !tbaa !95
  %i.ei = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi155, <8 x i32> %wide.load156) ; 2 uses
  %index.next157 = add nuw i64 %index152, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next157, %n.vec151
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !158

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ek = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.ei) ; 2 uses
  %cmp.n158 = icmp eq i64 %i.dr, %n.vec151
  br i1 %cmp.n158, label %iter.check182, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  %.25694.ph = phi i32 [ %i.do, %iter.check ], [ %i.ee, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %bb.u
  %i.el = icmp eq i32 %i.dp, 1
  br i1 %i.el, label %iter.check182, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.em = add i32 %i.dj, %i.do                    ; 2 uses
  store i32 %i.em, ptr %i.dh, align 8, !tbaa !164
  br label %bb.v

iter.check182:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %.256.lcssa138 = phi i32 [ %i.do, %.preheader ], [ %i.ek, %vec.epilog.middle.block ], [ %i.ee, %middle.block ], [ %spec.select80, %.lr.ph ] ; 5 uses
  %wide.trip.count112 = zext nneg i32 %i.dp to i64 ; 6 uses
  %min.iters.check160 = icmp samesign ult i32 %i.dp, 8
  br i1 %min.iters.check160, label %.lr.ph99.preheader, label %vector.main.loop.iter.check161

vector.main.loop.iter.check161:                   ; preds = %iter.check182
  %min.iters.check162 = icmp samesign ult i32 %i.dp, 32
  br i1 %min.iters.check162, label %vec.epilog.ph186, label %vector.ph163

vector.ph163:                                     ; preds = %vector.main.loop.iter.check161
  %i.en = and i64 %wide.trip.count112, 24
  %n.vec164 = and i64 %wide.trip.count112, 2147483616 ; 4 uses
  %broadcast.splatinsert165 = insertelement <8 x i32> poison, i32 %.256.lcssa138, i64 0
  %broadcast.splat166 = shufflevector <8 x i32> %broadcast.splatinsert165, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.ph163, %vector.body167
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next177, %vector.body167 ] ; 2 uses
  %vec.phi169 = phi <8 x i32> [ zeroinitializer, %vector.ph163 ], [ %i.ff, %vector.body167 ]
  %vec.phi170 = phi <8 x i32> [ zeroinitializer, %vector.ph163 ], [ %i.fg, %vector.body167 ]
  %vec.phi171 = phi <8 x i32> [ zeroinitializer, %vector.ph163 ], [ %i.fh, %vector.body167 ]
  %vec.phi172 = phi <8 x i32> [ zeroinitializer, %vector.ph163 ], [ %i.fi, %vector.body167 ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index168 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 56 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 88 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 120 ; 2 uses
  %wide.load173 = load <8 x i32>, ptr %i.ep, align 8, !tbaa !95 ; 2 uses
  %wide.load174 = load <8 x i32>, ptr %i.eq, align 8, !tbaa !95 ; 2 uses
  %wide.load175 = load <8 x i32>, ptr %i.er, align 8, !tbaa !95 ; 2 uses
  %wide.load176 = load <8 x i32>, ptr %i.es, align 8, !tbaa !95 ; 2 uses
  %i.et = sub <8 x i32> %wide.load173, %broadcast.splat166
  %i.eu = sub <8 x i32> %wide.load174, %broadcast.splat166
  %i.ev = sub <8 x i32> %wide.load175, %broadcast.splat166
  %i.ew = sub <8 x i32> %wide.load176, %broadcast.splat166
  store <8 x i32> %i.et, ptr %i.ep, align 8, !tbaa !95
  store <8 x i32> %i.eu, ptr %i.eq, align 8, !tbaa !95
  store <8 x i32> %i.ev, ptr %i.er, align 8, !tbaa !95
  store <8 x i32> %i.ew, ptr %i.es, align 8, !tbaa !95
  %i.ex = icmp ne <8 x i32> %wide.load173, %broadcast.splat166
  %i.ey = icmp ne <8 x i32> %wide.load174, %broadcast.splat166
  %i.ez = icmp ne <8 x i32> %wide.load175, %broadcast.splat166
  %i.fa = icmp ne <8 x i32> %wide.load176, %broadcast.splat166
  %i.fb = zext <8 x i1> %i.ex to <8 x i32>
  %i.fc = zext <8 x i1> %i.ey to <8 x i32>
  %i.fd = zext <8 x i1> %i.ez to <8 x i32>
  %i.fe = zext <8 x i1> %i.fa to <8 x i32>
  %i.ff = add <8 x i32> %vec.phi169, %i.fb        ; 2 uses
  %i.fg = add <8 x i32> %vec.phi170, %i.fc        ; 2 uses
  %i.fh = add <8 x i32> %vec.phi171, %i.fd        ; 2 uses
  %i.fi = add <8 x i32> %vec.phi172, %i.fe        ; 2 uses
  %index.next177 = add nuw i64 %index168, 32      ; 2 uses
  %i.fj = icmp eq i64 %index.next177, %n.vec164
  br i1 %i.fj, label %middle.block178, label %vector.body167, !llvm.loop !159

middle.block178:                                  ; preds = %vector.body167
  %bin.rdx = add <8 x i32> %i.fg, %i.ff
  %bin.rdx179 = add <8 x i32> %i.fh, %bin.rdx
  %bin.rdx180 = add <8 x i32> %i.fi, %bin.rdx179
  %i.fk = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx180) ; 3 uses
  %cmp.n181 = icmp eq i64 %n.vec164, %wide.trip.count112
  br i1 %cmp.n181, label %._crit_edge, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block178
  %min.epilog.iters.check185 = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check185, label %.lr.ph99.preheader, label %vec.epilog.ph186, !prof !166

vec.epilog.ph186:                                 ; preds = %vector.main.loop.iter.check161, %vec.epilog.iter.check183
  %vec.epilog.resume.val187 = phi i64 [ %n.vec164, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check161 ]
  %bc.merge.rdx188 = phi i32 [ %i.fk, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check161 ]
  %n.vec189 = and i64 %wide.trip.count112, 2147483640 ; 3 uses
  %i.fl = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx188, i64 0
  %broadcast.splatinsert190 = insertelement <8 x i32> poison, i32 %.256.lcssa138, i64 0
  %broadcast.splat191 = shufflevector <8 x i32> %broadcast.splatinsert190, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body192

vec.epilog.vector.body192:                        ; preds = %vec.epilog.vector.body192, %vec.epilog.ph186
  %index193 = phi i64 [ %vec.epilog.resume.val187, %vec.epilog.ph186 ], [ %index.next196, %vec.epilog.vector.body192 ] ; 2 uses
  %vec.phi194 = phi <8 x i32> [ %i.fl, %vec.epilog.ph186 ], [ %i.fr, %vec.epilog.vector.body192 ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index193
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 2 uses
  %wide.load195 = load <8 x i32>, ptr %i.fn, align 8, !tbaa !95 ; 2 uses
  %i.fo = sub <8 x i32> %wide.load195, %broadcast.splat191
  store <8 x i32> %i.fo, ptr %i.fn, align 8, !tbaa !95
  %i.fp = icmp ne <8 x i32> %wide.load195, %broadcast.splat191
  %i.fq = zext <8 x i1> %i.fp to <8 x i32>
  %i.fr = add <8 x i32> %vec.phi194, %i.fq        ; 2 uses
  %index.next196 = add nuw i64 %index193, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.fs, label %vec.epilog.middle.block197, label %vec.epilog.vector.body192, !llvm.loop !160

vec.epilog.middle.block197:                       ; preds = %vec.epilog.vector.body192
  %i.ft = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fr) ; 2 uses
  %cmp.n198 = icmp eq i64 %n.vec189, %wide.trip.count112
  br i1 %cmp.n198, label %._crit_edge, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %iter.check182, %vec.epilog.iter.check183, %vec.epilog.middle.block197
  %indvars.iv109.ph = phi i64 [ 0, %iter.check182 ], [ %n.vec164, %vec.epilog.iter.check183 ], [ %n.vec189, %vec.epilog.middle.block197 ]
  %.098.ph = phi i32 [ 0, %iter.check182 ], [ %i.fk, %vec.epilog.iter.check183 ], [ %i.ft, %vec.epilog.middle.block197 ]
  br label %.lr.ph99

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.25694 = phi i32 [ %spec.select80, %.lr.ph ], [ %.25694.ph, %.lr.ph.preheader ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !95
  %spec.select80 = tail call i32 @llvm.smin.i32(i32 %.25694, i32 %i.fw) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check182, label %.lr.ph, !llvm.loop !161

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %.lr.ph99
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph99 ], [ %indvars.iv109.ph, %.lr.ph99.preheader ] ; 2 uses
  %.098 = phi i32 [ %spec.select81, %.lr.ph99 ], [ %.098.ph, %.lr.ph99.preheader ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv109
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !95 ; 2 uses
  %i.ga = sub i32 %i.fz, %.256.lcssa138
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !95
  %.not77 = icmp ne i32 %i.fz, %.256.lcssa138
  %i.gb = zext i1 %.not77 to i32
  %spec.select81 = add nuw nsw i32 %.098, %i.gb   ; 2 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge, label %.lr.ph99, !llvm.loop !162

._crit_edge:                                      ; preds = %.lr.ph99, %vec.epilog.middle.block197, %middle.block178
  %spec.select81.lcssa = phi i32 [ %i.ft, %vec.epilog.middle.block197 ], [ %i.fk, %middle.block178 ], [ %spec.select81, %.lr.ph99 ]
  %.pre121 = load i32, ptr %i.dh, align 8, !tbaa !164
  %i.gc = icmp eq i32 %spec.select81.lcssa, 0
  %i.gd = add i32 %.pre121, %.256.lcssa138        ; 3 uses
  store i32 %i.gd, ptr %i.dh, align 8, !tbaa !164
  br i1 %i.gc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ge = phi i32 [ %i.em, %._crit_edge.thread ], [ %i.gd, %._crit_edge ]
  store i32 0, ptr %i.dl, align 4, !tbaa !95
  store i32 0, ptr %i.dk, align 8, !tbaa !95
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.v, %bb.t, %.thread
  %i.gf = phi i32 [ %i.gd, %._crit_edge ], [ %i.ge, %bb.v ], [ %i.dj, %bb.t ], [ %i.dj, %.thread ]
  %i.gg = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gi = sub <4 x i32> %i.df, %i.gh
  %i.gj = insertelement <4 x i32> poison, i32 %i.gf, i64 0
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gl = add <4 x i32> %i.gi, %i.gk
  store <4 x i32> %i.gl, ptr %i.g, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define noundef i32 @_ZN6LibRaw8getwordsEPcPS0_ii(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  store i8 0, ptr %i.c, align 1, !tbaa !26
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 3 uses
  %.019 = phi ptr [ %i.m, %bb.g ], [ %0, %bb.a ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %.019, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.d = load i8, ptr %.1, align 1, !tbaa !26     ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i32 @isspace(i32 noundef %i.e) #28
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !167

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i8 %i.d, 0
  br i1 %i.h, label %.split.loop.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %.1, ptr %i.i, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.m, %bb.f ]   ; 3 uses
  %i.j = load i8, ptr %.2, align 1, !tbaa !26     ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #28
  %.not23 = icmp ne i32 %i.l, 0
  %.not24 = icmp eq i8 %i.j, 0                    ; 2 uses
  %or.cond = or i1 %.not24, %.not23
  %i.m = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  br i1 %or.cond, label %.critedge, label %bb.f, !llvm.loop !168

.critedge:                                        ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  br i1 %.not24, label %.split.loop.exit28, label %bb.g

bb.g:                                             ; preds = %.critedge
  store i8 0, ptr %.2, align 1, !tbaa !26
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit, label %bb.b, !llvm.loop !169

end_hunk_1
