Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvisci?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL10_ISCIIOpenP10UConverterP18UConverterLoadArgsP10UErrorCode:bb.a
bb.e:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.c)
  store ptr null, ptr %i.d, align 8, !tbaa !14
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL11_ISCIICloseP10UConverter(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.d = load i8, ptr %i.c, align 2, !tbaa !49
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL11_ISCIIResetP10UConverter21UConverterResetChoice(ptr nofree noundef captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 13 uses
  %i.c = icmp slt i32 %1, 2
  br i1 %i.c, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre20 = load i16, ptr %.phi.trans.insert19, align 4, !tbaa !25
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 65535, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.e, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.g, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.j, ptr %i.k, align 4, !tbaa !30
  store i16 -2, ptr %i.b, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !34
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.m = phi i16 [ %.pre20, %..thread_crit_edge ], [ %i.g, %bb.b ]
  %i.n = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.o, align 4, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.p, align 2, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.n, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.m, ptr %i.r, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.s, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 0, ptr %i.t, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 86 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4, !tbaa !36
  br label %bb.ed

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !57   ; 67 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 14 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !36     ; 3 uses
  %i.p = icmp slt i32 %i.o, 1
  %i.q = icmp ult ptr %i.k, %i.d
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.lr.ph, label %.loopexit841

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 44 ; 15 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 34 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 25 ; 3 uses
  %i.z = ptrtoint ptr %i.k to i64
  %i.aa = xor i64 %i.z, -1
  %i.ab = ptrtoint ptr %i.k to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.ae = ptrtoint ptr %i.k to i64
  %i.af = xor i64 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.ai = ptrtoint ptr %i.k to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 93
  %i.an = ptrtoint ptr %i.k to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.aq = ptrtoint ptr %i.k to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.av = ptrtoint ptr %i.k to i64
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.az = ptrtoint ptr %i.k to i64
  %i.ba = ptrtoint ptr %i.k to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.bh = ptrtoint ptr %i.k to i64
  %i.bi = xor i64 %i.bh, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.bo = ptrtoint ptr %i.k to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %i.br = phi i32 [ %i.o, %.lr.ph.lr.ph ], [ %i.eu, %.outer.backedge ] ; 8 uses
  %i.bs = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.ev, %.outer.backedge ] ; 22 uses
  %i.bt = phi ptr [ %i.h, %.lr.ph.lr.ph ], [ %i.ew, %.outer.backedge ] ; 22 uses
  %i.bu = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.ex, %.outer.backedge ] ; 20 uses
  %i.bv = phi ptr [ %i.h, %.lr.ph.lr.ph ], [ %i.ey, %.outer.backedge ] ; 24 uses
  %i.bw = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.ez, %.outer.backedge ] ; 21 uses
  %i.bx = phi ptr [ %i.h, %.lr.ph.lr.ph ], [ %i.fa, %.outer.backedge ] ; 24 uses
  %i.by = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.fb, %.outer.backedge ] ; 8 uses
  %i.bz = phi ptr [ %i.h, %.lr.ph.lr.ph ], [ %i.fc, %.outer.backedge ] ; 9 uses
  %.0607.ph961 = phi ptr [ %i.j, %.lr.ph.lr.ph ], [ %.0607.ph.be, %.outer.backedge ] ; 18 uses
  %.0625.ph960 = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.fd, %.outer.backedge ] ; 4 uses
  %i.ca = icmp ult ptr %.0607.ph961, %i.f
  br i1 %i.ca, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph
  %.promoted = load i16, ptr %i.m, align 2, !tbaa !41 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0625.ph960, i64 1 ; 15 uses
  %i.cc = load i8, ptr %.0625.ph960, align 1, !tbaa !33 ; 13 uses
  switch i16 %.promoted, label %.loopexit842.split.us [
    i16 239, label %bb.d
    i16 240, label %.split.us.a
    i16 217, label %.split873.us.a
  ]

bb.d:                                             ; preds = %.lr.ph.split.us.split.preheader
  %i.cd = add i8 %i.cc, -66
  %i.ce = icmp ult i8 %i.cd, 10
  br i1 %i.ce, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = icmp eq i8 %i.cc, 64
  br i1 %i.cf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = add i8 %i.cc, -33
  %or.cond.us.peel = icmp ult i8 %i.cg, 31
  br i1 %or.cond.us.peel, label %bb.i, label %.split877.us

bb.g:                                             ; preds = %bb.e
  %i.ch = load i16, ptr %i.s, align 4, !tbaa !25
  store i16 %i.ch, ptr %i.t, align 4, !tbaa !26
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !29
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.cj = and i8 %i.cc, 15
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZL11lookupTable, i64 %i.ck ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !42
  %i.cn = shl i16 %i.cm, 7
  store i16 %i.cn, ptr %i.t, align 4, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !42
  %i.cq = zext i16 %i.cp to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink = phi i32 [ %i.cq, %bb.h ], [ %i.ci, %bb.g ]
  store i32 %.sink, ptr %i.v, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f
  store i16 -2, ptr %i.m, align 2, !tbaa !41
  %i.cr = icmp ult ptr %i.cb, %i.d
  br i1 %i.cr, label %.loopexit842.split.us.loopexit.loopexit, label %.loopexit841.thread1085

.split.us.a:                                      ; preds = %.lr.ph.split.us.split.preheader
  %2 = add i8 %i.cc, 95
  %3 = icmp ult i8 %2, 78
  br i1 %3, label %bb.j, label %bb.w

.split873.us.a:                                   ; preds = %.lr.ph.split.us.split.preheader
  %.not670 = icmp eq i8 %i.cc, -24
  %4 = load i32, ptr %i.w, align 4, !tbaa !34     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.ac, label %bb.x

.split877.us:                                     ; preds = %bb.f
  store i32 12, ptr %1, align 4, !tbaa !36
  store i16 -2, ptr %i.m, align 2, !tbaa !41
  br label %bb.dr

bb.j:                                             ; preds = %.split.us.a
  switch i8 %i.cc, label %bb.v [
    i8 -65, label %bb.k
    i8 -72, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.cs = icmp eq i8 %i.cc, -65
  %i.ct = select i1 %i.cs, i32 2416, i32 2386     ; 2 uses
  %i.cu = and i32 %i.ct, 114
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !33
  %i.cy = zext i8 %i.cx to i32
  %i.cz = load i32, ptr %i.v, align 4, !tbaa !30
  %i.da = and i32 %i.cz, %i.cy
  %.not735 = icmp eq i32 %i.da, 0
  br i1 %.not735, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 -2, ptr %i.m, align 4, !tbaa !41
  %i.db = load i32, ptr %i.w, align 4, !tbaa !34  ; 2 uses
  %.not736 = icmp eq i32 %i.db, 0
  br i1 %.not736, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = icmp ult ptr %.0607.ph961, %i.f
  %i.dd = trunc i32 %i.db to i16                  ; 2 uses
  br i1 %i.dc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %.0607.ph961, i64 2 ; 2 uses
  store i16 %i.dd, ptr %.0607.ph961, align 2, !tbaa !41
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not741 = icmp eq ptr %i.df, null
  br i1 %.not741, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = ptrtoint ptr %i.cb to i64
  %i.dh = ptrtoint ptr %i.bu to i64
  %i.di = xor i64 %i.dh, -1
  %i.dj = add i64 %i.di, %i.dg
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dl, ptr %i.x, align 8, !tbaa !58
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !43
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bv, i64 93 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !59  ; 2 uses
  %i.dp = add i8 %i.do, 1
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !59
  %i.dq = sext i8 %i.do to i64
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dq
  store i16 %i.dd, ptr %i.dr, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.ds = phi i32 [ %i.br, %bb.o ], [ %i.br, %bb.n ], [ 15, %bb.p ]
  %i.dt = phi ptr [ %i.bu, %bb.o ], [ %i.bw, %bb.n ], [ %i.bw, %bb.p ]
  %i.du = phi ptr [ %i.bx, %bb.o ], [ %i.bx, %bb.n ], [ %i.bv, %bb.p ]
  %i.dv = phi ptr [ %i.bu, %bb.o ], [ %i.by, %bb.n ], [ %i.by, %bb.p ]
  %i.dw = phi ptr [ %i.bz, %bb.o ], [ %i.bz, %bb.n ], [ %i.bv, %bb.p ]
  %.1608 = phi ptr [ %i.de, %bb.o ], [ %i.de, %bb.n ], [ %.0607.ph961, %bb.p ]
  store i32 0, ptr %i.w, align 4, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.dx = phi i32 [ %i.ds, %bb.q ], [ %i.br, %bb.l ] ; 2 uses
  %i.dy = phi ptr [ %i.dt, %bb.q ], [ %i.bw, %bb.l ]
  %i.dz = phi ptr [ %i.du, %bb.q ], [ %i.bx, %bb.l ] ; 2 uses
  %i.ea = phi ptr [ %i.dv, %bb.q ], [ %i.by, %bb.l ]
  %i.eb = phi ptr [ %i.dw, %bb.q ], [ %i.bz, %bb.l ] ; 2 uses
  %.2609 = phi ptr [ %.1608, %bb.q ], [ %.0607.ph961, %bb.l ] ; 4 uses
  %i.ec = load i16, ptr %i.t, align 4, !tbaa !26
  %i.ed = icmp ult ptr %.2609, %i.f
  %i.ee = trunc nuw nsw i32 %i.ct to i16
  %i.ef = add i16 %i.ec, %i.ee                    ; 2 uses
  br i1 %i.ed, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.2609, i64 2 ; 2 uses
  store i16 %i.ef, ptr %.2609, align 2, !tbaa !41
  %i.eh = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not742 = icmp eq ptr %i.eh, null
  br i1 %.not742, label %.outer.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = ptrtoint ptr %i.cb to i64
  %i.ej = ptrtoint ptr %i.bs to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = trunc i64 %i.ek to i32
  %i.em = add i32 %i.el, -2
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store ptr %i.en, ptr %i.x, align 8, !tbaa !58
  store i32 %i.em, ptr %i.eh, align 4, !tbaa !43
  br label %.outer.backedge

bb.u:                                             ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bt, i64 144
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bt, i64 93 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !59  ; 2 uses
  %i.er = add i8 %i.eq, 1
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !59
  %i.es = sext i8 %i.eq to i64
  %i.et = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.es
  store i16 %i.ef, ptr %i.et, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %.loopexit841.thread

.outer.backedge:                                  ; preds = %.thread813.thread, %bb.dp, %bb.ch, %bb.cg, %bb.ah, %bb.au, %bb.t, %bb.s, %bb.cw, %bb.bv
  %i.eu = phi i32 [ %i.gu, %bb.ah ], [ %i.np, %bb.bv ], [ %i.wg, %bb.dp ], [ %i.wg, %.thread813.thread ], [ %i.sk, %bb.cw ], [ %i.dx, %bb.s ], [ %i.dx, %bb.t ], [ %i.je, %bb.au ], [ %i.pf, %bb.cg ], [ %i.pf, %bb.ch ] ; 3 uses
  %i.ev = phi ptr [ %i.bs, %bb.ah ], [ %i.nq, %bb.bv ], [ %i.wh, %bb.dp ], [ %i.wh, %.thread813.thread ], [ %i.k, %bb.cw ], [ %i.bs, %bb.s ], [ %i.bs, %bb.t ], [ %i.jf, %bb.au ], [ %i.pg, %bb.cg ], [ %i.k, %bb.ch ]
  %i.ew = phi ptr [ %i.bt, %bb.ah ], [ %i.nr, %bb.bv ], [ %i.wi, %bb.dp ], [ %i.wi, %.thread813.thread ], [ %i.sl, %bb.cw ], [ %i.bt, %bb.s ], [ %i.bt, %bb.t ], [ %i.jg, %bb.au ], [ %i.ph, %bb.cg ], [ %i.ph, %bb.ch ]
  %i.ex = phi ptr [ %i.bu, %bb.ah ], [ %i.ns, %bb.bv ], [ %i.wj, %bb.dp ], [ %i.wj, %.thread813.thread ], [ %i.k, %bb.cw ], [ %i.bu, %bb.s ], [ %i.bs, %bb.t ], [ %i.jh, %bb.au ], [ %i.pi, %bb.cg ], [ %i.k, %bb.ch ]
  %i.ey = phi ptr [ %i.bv, %bb.ah ], [ %i.nt, %bb.bv ], [ %i.wk, %bb.dp ], [ %i.wk, %.thread813.thread ], [ %i.sm, %bb.cw ], [ %i.bv, %bb.s ], [ %i.bv, %bb.t ], [ %i.ji, %bb.au ], [ %i.pj, %bb.cg ], [ %i.pj, %bb.ch ]
  %i.ez = phi ptr [ %i.bw, %bb.ah ], [ %i.nu, %bb.bv ], [ %i.wl, %bb.dp ], [ %i.wl, %.thread813.thread ], [ %i.k, %bb.cw ], [ %i.dy, %bb.s ], [ %i.bs, %bb.t ], [ %i.jj, %bb.au ], [ %i.pk, %bb.cg ], [ %i.k, %bb.ch ]
  %i.fa = phi ptr [ %i.bx, %bb.ah ], [ %i.nv, %bb.bv ], [ %i.wm, %bb.dp ], [ %i.wm, %.thread813.thread ], [ %i.sn, %bb.cw ], [ %i.dz, %bb.s ], [ %i.dz, %bb.t ], [ %i.jk, %bb.au ], [ %i.pl, %bb.cg ], [ %i.pl, %bb.ch ]
  %i.fb = phi ptr [ %i.gw, %bb.ah ], [ %i.nw, %bb.bv ], [ %i.wn, %bb.dp ], [ %i.wn, %.thread813.thread ], [ %i.k, %bb.cw ], [ %i.ea, %bb.s ], [ %i.bs, %bb.t ], [ %i.jl, %bb.au ], [ %i.pm, %bb.cg ], [ %i.k, %bb.ch ]
  %i.fc = phi ptr [ %i.gx, %bb.ah ], [ %i.nx, %bb.bv ], [ %i.wo, %bb.dp ], [ %i.wo, %.thread813.thread ], [ %i.so, %bb.cw ], [ %i.eb, %bb.s ], [ %i.eb, %bb.t ], [ %i.jm, %bb.au ], [ %i.pn, %bb.cg ], [ %i.pn, %bb.ch ]
  %i.fd = phi ptr [ %i.gy, %bb.ah ], [ %i.gy, %bb.bv ], [ %i.gy, %bb.dp ], [ %i.gy, %.thread813.thread ], [ %i.gy, %bb.cw ], [ %i.cb, %bb.s ], [ %i.cb, %bb.t ], [ %i.gy, %bb.au ], [ %i.gy, %bb.cg ], [ %i.gy, %bb.ch ] ; 3 uses
  %.0607.ph.be = phi ptr [ %.7614, %bb.ah ], [ %.16623, %bb.bv ], [ %.25830, %bb.dp ], [ %.25830, %.thread813.thread ], [ %.21, %bb.cw ], [ %i.eg, %bb.s ], [ %i.eg, %bb.t ], [ %.10617, %bb.au ], [ %i.pq, %bb.cg ], [ %i.pq, %bb.ch ] ; 2 uses
  %i.fe = icmp slt i32 %i.eu, 1
  %i.ff = icmp ult ptr %i.fd, %i.d
  %i.fg = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %i.fg, label %.lr.ph, label %.loopexit841, !llvm.loop !51

bb.v:                                             ; preds = %bb.j, %bb.k
  store i32 10, ptr %1, align 4, !tbaa !36
  br label %bb.dr

bb.w:                                             ; preds = %.split.us.a
  store i16 -2, ptr %i.m, align 2, !tbaa !41
  store i32 12, ptr %1, align 4, !tbaa !36
  br label %bb.dr

bb.x:                                             ; preds = %.split873.us.a
  %i.fh = icmp ult ptr %.0607.ph961, %i.f
  %i.fi = trunc i32 %4 to i16                     ; 2 uses
  br i1 %i.fh, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %.0607.ph961, i64 2 ; 2 uses
  store i16 %i.fi, ptr %.0607.ph961, align 2, !tbaa !41
  %i.fk = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not669 = icmp eq ptr %i.fk, null
  br i1 %.not669, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fl = ptrtoint ptr %i.cb to i64
  %i.fm = ptrtoint ptr %i.by to i64
  %i.fn = xor i64 %i.fm, -1
  %i.fo = add i64 %i.fn, %i.fl
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store ptr %i.fq, ptr %i.x, align 8, !tbaa !58
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !43
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bz, i64 144
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bz, i64 93 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !59  ; 2 uses
  %i.fu = add i8 %i.ft, 1
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !59
  %i.fv = sext i8 %i.ft to i64
  %i.fw = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.fv
  store i16 %i.fi, ptr %i.fw, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.fx = phi i32 [ %i.br, %bb.z ], [ %i.br, %bb.y ], [ 15, %bb.aa ]
  %.4611 = phi ptr [ %i.fj, %bb.z ], [ %i.fj, %bb.y ], [ %.0607.ph961, %bb.aa ]
  store i32 0, ptr %i.w, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.split873.us.a
  %i.fy = phi i32 [ %i.fx, %bb.ab ], [ %i.br, %.split873.us.a ] ; 2 uses
  %.5612 = phi ptr [ %.4611, %bb.ab ], [ %.0607.ph961, %.split873.us.a ] ; 4 uses
  %i.fz = icmp ult ptr %.5612, %i.f
  %i.ga = select i1 %.not670, i16 32, i16 8205    ; 2 uses
  br i1 %i.fz, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %.5612, i64 2 ; 2 uses
  store i16 %i.ga, ptr %.5612, align 2, !tbaa !41
  %i.gc = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not671 = icmp eq ptr %i.gc, null
  br i1 %.not671, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = ptrtoint ptr %i.cb to i64
  %i.ge = ptrtoint ptr %i.bw to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = add i32 %i.gg, -2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store ptr %i.gi, ptr %i.x, align 8, !tbaa !58
  store i32 %i.gh, ptr %i.gc, align 4, !tbaa !43
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bx, i64 93 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !59  ; 2 uses
  %i.gm = add i8 %i.gl, 1
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !59
  %i.gn = sext i8 %i.gl to i64
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %i.gn
  store i16 %i.ga, ptr %i.go, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %i.gp = phi i32 [ %i.fy, %bb.ae ], [ %i.fy, %bb.ad ], [ 15, %bb.af ]
  %i.gq = phi ptr [ %i.bw, %bb.ae ], [ %i.by, %bb.ad ], [ %i.by, %bb.af ]
  %i.gr = phi ptr [ %i.bz, %bb.ae ], [ %i.bz, %bb.ad ], [ %i.bx, %bb.af ]
  %.6613 = phi ptr [ %i.gb, %bb.ae ], [ %i.gb, %bb.ad ], [ %.5612, %bb.af ]
  store i16 -2, ptr %i.m, align 4, !tbaa !41
  br label %.loopexit842.split.us

.loopexit842.split.us.loopexit.loopexit:          ; preds = %bb.i
  %i.gs = load i8, ptr %i.cb, align 1, !tbaa !33
  %i.gt = getelementptr inbounds nuw i8, ptr %.0625.ph960, i64 2
  br label %.loopexit842.split.us

.loopexit842.split.us:                            ; preds = %.lr.ph.split.us.split.preheader, %.loopexit842.split.us.loopexit.loopexit, %bb.ag
  %i.gu = phi i32 [ %i.gp, %bb.ag ], [ %i.br, %.loopexit842.split.us.loopexit.loopexit ], [ %i.br, %.lr.ph.split.us.split.preheader ] ; 18 uses
  %i.gv = phi i16 [ -2, %bb.ag ], [ -2, %.loopexit842.split.us.loopexit.loopexit ], [ %.promoted, %.lr.ph.split.us.split.preheader ] ; 6 uses
  %i.gw = phi ptr [ %i.gq, %bb.ag ], [ %i.by, %.loopexit842.split.us.loopexit.loopexit ], [ %i.by, %.lr.ph.split.us.split.preheader ] ; 16 uses
  %i.gx = phi ptr [ %i.gr, %bb.ag ], [ %i.bz, %.loopexit842.split.us.loopexit.loopexit ], [ %i.bz, %.lr.ph.split.us.split.preheader ] ; 18 uses
  %i.gy = phi ptr [ %i.cb, %bb.ag ], [ %i.gt, %.loopexit842.split.us.loopexit.loopexit ], [ %i.cb, %.lr.ph.split.us.split.preheader ] ; 22 uses
  %i.gz = phi i8 [ %i.cc, %bb.ag ], [ %i.gs, %.loopexit842.split.us.loopexit.loopexit ], [ %i.cc, %.lr.ph.split.us.split.preheader ] ; 10 uses
  %.7614 = phi ptr [ %.6613, %bb.ag ], [ %.0607.ph961, %.loopexit842.split.us.loopexit.loopexit ], [ %.0607.ph961, %.lr.ph.split.us.split.preheader ] ; 28 uses
  switch i8 %i.gz, label %.thread810 [
    i8 -39, label %bb.ah
    i8 -16, label %bb.ah
    i8 -17, label %bb.ah
    i8 -22, label %bb.av
    i8 -24, label %bb.ax
    i8 10, label %bb.az
    i8 13, label %bb.az
    i8 -32, label %.preheader.preheader
    i8 -23, label %bb.ba
  ]

.preheader.preheader:                             ; preds = %.loopexit842.split.us
  %i.ha = and i16 %i.gv, 255
  %i.hb = icmp ne i16 %i.ha, 164
  %i.hc = load i32, ptr %i.v, align 4, !tbaa !30  ; 2 uses
  %i.hd = and i32 %i.hc, 128
  %.not693 = icmp eq i32 %i.hd, 0
  %or.cond1161 = select i1 %i.hb, i1 true, i1 %.not693
  br i1 %or.cond1161, label %.loopexit, label %.thread813.thread.sink.split

bb.ah:                                            ; preds = %.loopexit842.split.us, %.loopexit842.split.us, %.loopexit842.split.us
  %i.he = zext i8 %i.gz to i16
  store i16 %i.he, ptr %i.m, align 2, !tbaa !41
  %i.hf = load i32, ptr %i.n, align 8, !tbaa !43  ; 2 uses
  %.not694 = icmp eq i32 %i.hf, 65535
  br i1 %.not694, label %.outer.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load i32, ptr %i.w, align 4, !tbaa !34  ; 2 uses
  %.not695 = icmp eq i32 %i.hg, 0
  br i1 %.not695, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = icmp ult ptr %.7614, %i.f
  %i.hi = trunc i32 %i.hg to i16                  ; 2 uses
  br i1 %i.hh, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hj = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.hi, ptr %.7614, align 2, !tbaa !41
  %i.hk = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not700 = icmp eq ptr %i.hk, null
  br i1 %.not700, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = ptrtoint ptr %i.gy to i64
  %i.hm = add i64 %i.aw, %i.hl
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store ptr %i.ho, ptr %i.x, align 8, !tbaa !58
  store i32 %i.hn, ptr %i.hk, align 4, !tbaa !43
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.hp = load i8, ptr %i.au, align 1, !tbaa !59  ; 2 uses
  %i.hq = add i8 %i.hp, 1
  store i8 %i.hq, ptr %i.au, align 1, !tbaa !59
  %i.hr = sext i8 %i.hp to i64
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hr
  store i16 %i.hi, ptr %i.hs, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %i.ht = phi i32 [ %i.gu, %bb.al ], [ %i.gu, %bb.ak ], [ 15, %bb.am ]
  %i.hu = phi ptr [ %i.k, %bb.al ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.am ]
  %i.hv = phi ptr [ %i.bt, %bb.al ], [ %i.bt, %bb.ak ], [ %i.h, %bb.am ]
  %i.hw = phi ptr [ %i.k, %bb.al ], [ %i.bu, %bb.ak ], [ %i.bu, %bb.am ]
  %i.hx = phi ptr [ %i.bv, %bb.al ], [ %i.bv, %bb.ak ], [ %i.h, %bb.am ]
  %i.hy = phi ptr [ %i.k, %bb.al ], [ %i.bw, %bb.ak ], [ %i.bw, %bb.am ]
  %i.hz = phi ptr [ %i.bx, %bb.al ], [ %i.bx, %bb.ak ], [ %i.h, %bb.am ]
  %i.ia = phi ptr [ %i.k, %bb.al ], [ %i.gw, %bb.ak ], [ %i.gw, %bb.am ]
  %i.ib = phi ptr [ %i.gx, %bb.al ], [ %i.gx, %bb.ak ], [ %i.h, %bb.am ]
  %.8615 = phi ptr [ %i.hj, %bb.al ], [ %i.hj, %bb.ak ], [ %.7614, %bb.am ]
  store i32 0, ptr %i.w, align 4, !tbaa !34
  %.pre1008 = load i32, ptr %i.n, align 8, !tbaa !43
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ai, %bb.an
  %i.ic = phi i32 [ %i.ht, %bb.an ], [ %i.gu, %bb.ai ] ; 2 uses
  %i.id = phi i32 [ %.pre1008, %bb.an ], [ %i.hf, %bb.ai ]
  %i.ie = phi ptr [ %i.hu, %bb.an ], [ %i.bs, %bb.ai ] ; 2 uses
  %i.if = phi ptr [ %i.hv, %bb.an ], [ %i.bt, %bb.ai ] ; 2 uses
  %i.ig = phi ptr [ %i.hw, %bb.an ], [ %i.bu, %bb.ai ] ; 2 uses
  %i.ih = phi ptr [ %i.hx, %bb.an ], [ %i.bv, %bb.ai ] ; 2 uses
  %i.ii = phi ptr [ %i.hy, %bb.an ], [ %i.bw, %bb.ai ] ; 2 uses
  %i.ij = phi ptr [ %i.hz, %bb.an ], [ %i.bx, %bb.ai ] ; 2 uses
  %i.ik = phi ptr [ %i.ia, %bb.an ], [ %i.gw, %bb.ai ] ; 2 uses
  %i.il = phi ptr [ %i.ib, %bb.an ], [ %i.gx, %bb.ai ] ; 2 uses
  %.9616 = phi ptr [ %.8615, %bb.an ], [ %.7614, %bb.ai ] ; 4 uses
  %.fr = freeze i32 %i.id                         ; 8 uses
  %i.im = icmp slt i32 %.fr, 161
  br i1 %i.im, label %bb.aq, label %switch.early.test799

switch.early.test799:                             ; preds = %bb.ao
  switch i32 %.fr, label %bb.ap [
    i32 8205, label %bb.aq
    i32 8204, label %bb.aq
    i32 2405, label %bb.aq
    i32 2404, label %bb.aq
  ]

bb.ap:                                            ; preds = %switch.early.test799
  %i.in = load i16, ptr %i.t, align 4, !tbaa !26
  %i.io = zext i16 %i.in to i32
  %i.ip = add nuw nsw i32 %.fr, %i.io
  br label %bb.aq

bb.aq:                                            ; preds = %switch.early.test799, %switch.early.test799, %switch.early.test799, %switch.early.test799, %bb.ao, %bb.ap
  %i.iq = phi i32 [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %bb.ao ], [ %i.ip, %bb.ap ]
  %i.ir = icmp ult ptr %.9616, %i.f
  %i.is = trunc i32 %i.iq to i16                  ; 2 uses
  br i1 %i.ir, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.it = getelementptr inbounds nuw i8, ptr %.9616, i64 2 ; 2 uses
  store i16 %i.is, ptr %.9616, align 2, !tbaa !41
  %i.iu = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not705 = icmp eq ptr %i.iu, null
  br i1 %.not705, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iv = ptrtoint ptr %i.gy to i64
  %i.iw = sub i64 %i.iv, %i.az
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = add i32 %i.ix, -2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store ptr %i.iz, ptr %i.x, align 8, !tbaa !58
  store i32 %i.iy, ptr %i.iu, align 4, !tbaa !43
  br label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.ja = load i8, ptr %i.ay, align 1, !tbaa !59  ; 2 uses
  %i.jb = add i8 %i.ja, 1
  store i8 %i.jb, ptr %i.ay, align 1, !tbaa !59
  %i.jc = sext i8 %i.ja to i64
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.jc
  store i16 %i.is, ptr %i.jd, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.at
  %i.je = phi i32 [ %i.ic, %bb.as ], [ %i.ic, %bb.ar ], [ 15, %bb.at ]
  %i.jf = phi ptr [ %i.k, %bb.as ], [ %i.ie, %bb.ar ], [ %i.ie, %bb.at ]
end_hunk_0
begin_hunk_1_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.to = phi ptr [ %i.tf, %bb.da ], [ %i.bv, %_ZL14isPNJConsonanti.exit.thread ] ; 5 uses
  %i.tp = phi ptr [ %i.tg, %bb.da ], [ %i.bw, %_ZL14isPNJConsonanti.exit.thread ] ; 5 uses
  %i.tq = phi ptr [ %i.th, %bb.da ], [ %i.bx, %_ZL14isPNJConsonanti.exit.thread ] ; 5 uses
  %i.tr = phi ptr [ %i.ti, %bb.da ], [ %i.gw, %_ZL14isPNJConsonanti.exit.thread ] ; 5 uses
  %i.ts = phi ptr [ %i.tj, %bb.da ], [ %i.gx, %_ZL14isPNJConsonanti.exit.thread ] ; 5 uses
  %.23 = phi ptr [ %.22, %bb.da ], [ %.7614, %_ZL14isPNJConsonanti.exit.thread ] ; 9 uses
  %i.tt = icmp eq i32 %.15.ph, 2306
  %or.cond784 = select i1 %i.ra, i1 %i.tt, i1 false
  br i1 %or.cond784, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %i.tu = load i32, ptr %i.n, align 8, !tbaa !43
  %.fr837 = freeze i32 %i.tu                      ; 4 uses
  %i.tv = add nsw i32 %.fr837, 256                ; 2 uses
  %i.tw = add i32 %.fr837, -2384
  %or.cond.i803 = icmp ult i32 %i.tw, -80
  br i1 %or.cond.i803, label %_ZL14isPNJConsonanti.exit807.thread, label %_ZL15isPNJBindiTippii.exit

_ZL15isPNJBindiTippii.exit:                       ; preds = %bb.dc
  %i.tx = zext nneg i32 %i.tv to i64
  %i.ty = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.tx
  %i.tz = getelementptr i8, ptr %i.ty, i64 -2560
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !33
  %.not715 = icmp ult i8 %i.ua, 2
  br i1 %.not715, label %_ZL14isPNJConsonanti.exit807.thread, label %switch.early.test800

switch.early.test800:                             ; preds = %_ZL15isPNJBindiTippii.exit
  %i.ub = icmp ult ptr %.23, %i.f
  %i.uc = trunc nuw i32 %i.tv to i16              ; 2 uses
  br i1 %i.ub, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %switch.early.test800
  %i.ud = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i16 %i.uc, ptr %.23, align 2, !tbaa !41
  %i.ue = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not726 = icmp eq ptr %i.ue, null
  br i1 %.not726, label %bb.do, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uf = ptrtoint ptr %i.gy to i64
  %i.ug = sub i64 %i.uf, %i.bl
  %i.uh = trunc i64 %i.ug to i32
  %i.ui = add i32 %i.uh, -2
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  store ptr %i.uj, ptr %i.x, align 8, !tbaa !58
  store i32 %i.ui, ptr %i.ue, align 4, !tbaa !43
  br label %bb.do

bb.df:                                            ; preds = %switch.early.test800
  %i.uk = load i8, ptr %i.bk, align 1, !tbaa !59  ; 2 uses
  %i.ul = add i8 %i.uk, 1
  store i8 %i.ul, ptr %i.bk, align 1, !tbaa !59
  %i.um = sext i8 %i.uk to i64
  %i.un = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.um
  store i16 %i.uc, ptr %i.un, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.do

bb.dg:                                            ; preds = %bb.db
  %i.uo = icmp eq i32 %.15.ph, 2381
  %or.cond789 = select i1 %i.ra, i1 %i.uo, i1 false
  %.pr826.pre = load i32, ptr %i.n, align 8, !tbaa !43 ; 5 uses
  br i1 %or.cond789, label %bb.dh, label %_ZL14isPNJConsonanti.exit807.thread

bb.dh:                                            ; preds = %bb.dg
  %i.up = add nuw nsw i32 %.pr826.pre, 256        ; 2 uses
  %i.uq = add i32 %.pr826.pre, -2384
  %or.cond.i805 = icmp ult i32 %i.uq, -80
  br i1 %or.cond.i805, label %_ZL14isPNJConsonanti.exit807.thread, label %_ZL14isPNJConsonanti.exit807

_ZL14isPNJConsonanti.exit807:                     ; preds = %bb.dh
  %i.ur = zext nneg i32 %i.up to i64
  %i.us = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.ur
  %i.ut = getelementptr i8, ptr %i.us, i64 -2560
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !33
  %i.uv = and i8 %i.uu, 1
  %.not716 = icmp eq i8 %i.uv, 0
  br i1 %.not716, label %_ZL14isPNJConsonanti.exit807.thread, label %bb.di

bb.di:                                            ; preds = %_ZL14isPNJConsonanti.exit807
  store i32 %i.up, ptr %i.w, align 4, !tbaa !34
  br label %bb.do

_ZL14isPNJConsonanti.exit807.thread:              ; preds = %bb.dg, %_ZL14isPNJConsonanti.exit807, %_ZL15isPNJBindiTippii.exit, %bb.dc, %bb.dh
  %i.uw = phi i32 [ %.pr826.pre, %bb.dh ], [ %.fr837, %bb.dc ], [ %.fr837, %_ZL15isPNJBindiTippii.exit ], [ %.pr826.pre, %_ZL14isPNJConsonanti.exit807 ], [ %.pr826.pre, %bb.dg ]
  %.fr838 = freeze i32 %i.uw                      ; 8 uses
  %i.ux = icmp slt i32 %.fr838, 161
  br i1 %i.ux, label %bb.dk, label %switch.early.test801

switch.early.test801:                             ; preds = %_ZL14isPNJConsonanti.exit807.thread
  switch i32 %.fr838, label %bb.dj [
    i32 8205, label %bb.dk
    i32 8204, label %bb.dk
    i32 2405, label %bb.dk
    i32 2404, label %bb.dk
  ]

bb.dj:                                            ; preds = %switch.early.test801
  %i.uy = zext i16 %i.qz to i32
  %i.uz = add nuw nsw i32 %.fr838, %i.uy          ; 2 uses
  store i32 %i.uz, ptr %i.n, align 8, !tbaa !43
  br label %bb.dk

bb.dk:                                            ; preds = %switch.early.test801, %switch.early.test801, %switch.early.test801, %switch.early.test801, %_ZL14isPNJConsonanti.exit807.thread, %bb.dj
  %i.va = phi i32 [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %_ZL14isPNJConsonanti.exit807.thread ], [ %i.uz, %bb.dj ]
  %i.vb = icmp ult ptr %.23, %i.f
  %i.vc = trunc i32 %i.va to i16                  ; 2 uses
  br i1 %i.vb, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.vd = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i16 %i.vc, ptr %.23, align 2, !tbaa !41
  %i.ve = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not721 = icmp eq ptr %i.ve, null
  br i1 %.not721, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.vf = ptrtoint ptr %i.gy to i64
  %i.vg = sub i64 %i.vf, %i.bo
  %i.vh = trunc i64 %i.vg to i32
  %i.vi = add i32 %i.vh, -2
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  store ptr %i.vj, ptr %i.x, align 8, !tbaa !58
  store i32 %i.vi, ptr %i.ve, align 4, !tbaa !43
  br label %bb.do

bb.dn:                                            ; preds = %bb.dk
  %i.vk = load i8, ptr %i.bn, align 1, !tbaa !59  ; 2 uses
  %i.vl = add i8 %i.vk, 1
  store i8 %i.vl, ptr %i.bn, align 1, !tbaa !59
  %i.vm = sext i8 %i.vk to i64
  %i.vn = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.vm
  store i16 %i.vc, ptr %i.vn, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.do

bb.do:                                            ; preds = %bb.dd, %bb.de, %bb.df, %bb.dn, %bb.dm, %bb.dl, %bb.di
  %i.vo = phi i32 [ %i.tk, %bb.de ], [ %i.tk, %bb.dd ], [ 15, %bb.df ], [ %i.tk, %bb.di ], [ %i.tk, %bb.dm ], [ %i.tk, %bb.dl ], [ 15, %bb.dn ]
  %i.vp = phi ptr [ %i.k, %bb.de ], [ %i.tl, %bb.dd ], [ %i.tl, %bb.df ], [ %i.tl, %bb.di ], [ %i.k, %bb.dm ], [ %i.tl, %bb.dl ], [ %i.tl, %bb.dn ]
  %i.vq = phi ptr [ %i.tm, %bb.de ], [ %i.tm, %bb.dd ], [ %i.h, %bb.df ], [ %i.tm, %bb.di ], [ %i.tm, %bb.dm ], [ %i.tm, %bb.dl ], [ %i.h, %bb.dn ]
  %i.vr = phi ptr [ %i.k, %bb.de ], [ %i.tn, %bb.dd ], [ %i.tn, %bb.df ], [ %i.tn, %bb.di ], [ %i.k, %bb.dm ], [ %i.tn, %bb.dl ], [ %i.tn, %bb.dn ]
  %i.vs = phi ptr [ %i.to, %bb.de ], [ %i.to, %bb.dd ], [ %i.h, %bb.df ], [ %i.to, %bb.di ], [ %i.to, %bb.dm ], [ %i.to, %bb.dl ], [ %i.h, %bb.dn ]
  %i.vt = phi ptr [ %i.k, %bb.de ], [ %i.tp, %bb.dd ], [ %i.tp, %bb.df ], [ %i.tp, %bb.di ], [ %i.k, %bb.dm ], [ %i.tp, %bb.dl ], [ %i.tp, %bb.dn ]
  %i.vu = phi ptr [ %i.tq, %bb.de ], [ %i.tq, %bb.dd ], [ %i.h, %bb.df ], [ %i.tq, %bb.di ], [ %i.tq, %bb.dm ], [ %i.tq, %bb.dl ], [ %i.h, %bb.dn ]
  %i.vv = phi ptr [ %i.k, %bb.de ], [ %i.tr, %bb.dd ], [ %i.tr, %bb.df ], [ %i.tr, %bb.di ], [ %i.k, %bb.dm ], [ %i.tr, %bb.dl ], [ %i.tr, %bb.dn ]
  %i.vw = phi ptr [ %i.ts, %bb.de ], [ %i.ts, %bb.dd ], [ %i.h, %bb.df ], [ %i.ts, %bb.di ], [ %i.ts, %bb.dm ], [ %i.ts, %bb.dl ], [ %i.h, %bb.dn ]
  %.24 = phi ptr [ %i.ud, %bb.de ], [ %i.ud, %bb.dd ], [ %.23, %bb.df ], [ %.23, %bb.di ], [ %i.vd, %bb.dm ], [ %i.vd, %bb.dl ], [ %.23, %bb.dn ]
  %.16 = phi i32 [ 2416, %bb.de ], [ 2416, %bb.dd ], [ 2416, %bb.df ], [ 2381, %bb.di ], [ %.15.ph, %bb.dm ], [ %.15.ph, %bb.dl ], [ %.15.ph, %bb.dn ]
  store i32 65535, ptr %i.n, align 8, !tbaa !43
  br label %.thread813

.thread813:                                       ; preds = %bb.bx, %bb.do, %bb.cm
  %i.vx = phi i32 [ %i.vo, %bb.do ], [ %i.gu, %bb.cm ], [ %i.gu, %bb.bx ]
  %i.vy = phi ptr [ %i.vp, %bb.do ], [ %i.bs, %bb.cm ], [ %i.bs, %bb.bx ]
  %i.vz = phi ptr [ %i.vq, %bb.do ], [ %i.bt, %bb.cm ], [ %i.bt, %bb.bx ]
  %i.wa = phi ptr [ %i.vr, %bb.do ], [ %i.bu, %bb.cm ], [ %i.bu, %bb.bx ]
  %i.wb = phi ptr [ %i.vs, %bb.do ], [ %i.bv, %bb.cm ], [ %i.bv, %bb.bx ]
  %i.wc = phi ptr [ %i.vt, %bb.do ], [ %i.bw, %bb.cm ], [ %i.bw, %bb.bx ]
  %i.wd = phi ptr [ %i.vu, %bb.do ], [ %i.bx, %bb.cm ], [ %i.bx, %bb.bx ]
  %i.we = phi ptr [ %i.vv, %bb.do ], [ %i.gw, %bb.cm ], [ %i.gw, %bb.bx ]
  %i.wf = phi ptr [ %i.vw, %bb.do ], [ %i.gx, %bb.cm ], [ %i.gx, %bb.bx ]
  %.25 = phi ptr [ %.24, %bb.do ], [ %.7614, %bb.cm ], [ %.7614, %bb.bx ] ; 2 uses
  %.17 = phi i32 [ %.16, %bb.do ], [ %.15.ph, %bb.cm ], [ %i.ob, %bb.bx ] ; 2 uses
  %.not727 = icmp eq i32 %.17, 65535
  br i1 %.not727, label %bb.dq, label %.thread813.thread

.thread813.thread.sink.split:                     ; preds = %.preheader.preheader, %bb.av
  %.17831.ph = phi i32 [ 2405, %bb.av ], [ 2308, %.preheader.preheader ]
  store i16 -2, ptr %i.m, align 2, !tbaa !41
  br label %.thread813.thread

.thread813.thread:                                ; preds = %.thread813.thread.sink.split, %.thread813
  %i.wg = phi i32 [ %i.vx, %.thread813 ], [ %i.gu, %.thread813.thread.sink.split ] ; 2 uses
  %i.wh = phi ptr [ %i.vy, %.thread813 ], [ %i.bs, %.thread813.thread.sink.split ] ; 2 uses
  %i.wi = phi ptr [ %i.vz, %.thread813 ], [ %i.bt, %.thread813.thread.sink.split ] ; 2 uses
  %i.wj = phi ptr [ %i.wa, %.thread813 ], [ %i.bu, %.thread813.thread.sink.split ] ; 2 uses
  %i.wk = phi ptr [ %i.wb, %.thread813 ], [ %i.bv, %.thread813.thread.sink.split ] ; 2 uses
  %i.wl = phi ptr [ %i.wc, %.thread813 ], [ %i.bw, %.thread813.thread.sink.split ] ; 2 uses
  %i.wm = phi ptr [ %i.wd, %.thread813 ], [ %i.bx, %.thread813.thread.sink.split ] ; 2 uses
  %i.wn = phi ptr [ %i.we, %.thread813 ], [ %i.gw, %.thread813.thread.sink.split ] ; 2 uses
  %i.wo = phi ptr [ %i.wf, %.thread813 ], [ %i.gx, %.thread813.thread.sink.split ] ; 2 uses
  %.17831 = phi i32 [ %.17, %.thread813 ], [ %.17831.ph, %.thread813.thread.sink.split ]
  %.25830 = phi ptr [ %.25, %.thread813 ], [ %.7614, %.thread813.thread.sink.split ] ; 2 uses
  store i32 %.17831, ptr %i.n, align 8, !tbaa !43
  %i.wp = load i8, ptr %i.y, align 1, !tbaa !21
  %.not728 = icmp eq i8 %i.wp, 0
  br i1 %.not728, label %.outer.backedge, label %bb.dp

bb.dp:                                            ; preds = %.thread813.thread
  %i.wq = load i16, ptr %i.s, align 4, !tbaa !25
  store i16 %i.wq, ptr %i.t, align 4, !tbaa !26
  %i.wr = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.wr, ptr %i.v, align 4, !tbaa !30
  store i8 0, ptr %i.y, align 1, !tbaa !21
  br label %.outer.backedge

bb.dq:                                            ; preds = %.thread813
  store i32 10, ptr %1, align 4, !tbaa !36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.v, %bb.w, %bb.dq, %.split877.us
  %i.ws = phi ptr [ %i.cb, %.split877.us ], [ %i.cb, %bb.v ], [ %i.cb, %bb.w ], [ %i.gy, %bb.dq ]
  %i.wt = phi i8 [ %i.cc, %.split877.us ], [ %i.cc, %bb.v ], [ %i.cc, %bb.w ], [ %i.gz, %bb.dq ]
  %.26 = phi ptr [ %.0607.ph961, %.split877.us ], [ %.0607.ph961, %bb.v ], [ %.0607.ph961, %bb.w ], [ %.25, %bb.dq ]
  %i.wu = getelementptr inbounds nuw i8, ptr %i.h, i64 65
  store i8 %i.wt, ptr %i.wu, align 1, !tbaa !33
  %i.wv = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 64
  store i8 1, ptr %i.ww, align 8, !tbaa !60
  %.pre1012 = load i32, ptr %1, align 4, !tbaa !36
  br label %.loopexit841

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %.loopexit841.thread

.loopexit841:                                     ; preds = %.outer.backedge, %bb.c, %bb.dr
  %i.wx = phi i32 [ %.pre1012, %bb.dr ], [ %i.o, %bb.c ], [ %i.eu, %.outer.backedge ]
  %.1626 = phi ptr [ %i.ws, %bb.dr ], [ %i.k, %bb.c ], [ %i.fd, %.outer.backedge ] ; 2 uses
  %.27 = phi ptr [ %.26, %bb.dr ], [ %i.j, %bb.c ], [ %.0607.ph.be, %.outer.backedge ] ; 2 uses
  %i.wy = icmp sgt i32 %i.wx, 0
  br i1 %i.wy, label %.loopexit841.thread, label %.loopexit841.thread1085

.loopexit841.thread1085:                          ; preds = %bb.i, %.loopexit841
  %.271089 = phi ptr [ %.27, %.loopexit841 ], [ %.0607.ph961, %bb.i ] ; 6 uses
  %.16261088 = phi ptr [ %.1626, %.loopexit841 ], [ %i.cb, %bb.i ] ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.xa = load i8, ptr %i.wz, align 2, !tbaa !61
  %.not744 = icmp ne i8 %i.xa, 0
  %i.xb = icmp eq ptr %.16261088, %i.d
  %or.cond794 = select i1 %.not744, i1 %i.xb, i1 false
  br i1 %or.cond794, label %bb.ds, label %.loopexit841.thread

bb.ds:                                            ; preds = %.loopexit841.thread1085
  %i.xc = load ptr, ptr %i.g, align 8, !tbaa !55  ; 3 uses
  %i.xd = load i16, ptr %i.m, align 2, !tbaa !41  ; 2 uses
  switch i16 %i.xd, label %bb.du [
    i16 239, label %bb.dt
    i16 240, label %bb.dt
    i16 217, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds, %bb.ds
  %i.xe = trunc nuw i16 %i.xd to i8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 65
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !33
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xc, i64 64
  store i8 1, ptr %i.xg, align 8, !tbaa !60
  store i16 -2, ptr %i.m, align 2, !tbaa !41
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xc, i64 64
  store i8 0, ptr %i.xh, align 8, !tbaa !60
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.xi = load i32, ptr %i.n, align 8, !tbaa !43
  %.fr839 = freeze i32 %i.xi                      ; 9 uses
  %.not745 = icmp eq i32 %.fr839, 65535
  br i1 %.not745, label %.loopexit841.thread, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xj = icmp slt i32 %.fr839, 161
  br i1 %i.xj, label %bb.dy, label %switch.early.test802

switch.early.test802:                             ; preds = %bb.dw
  switch i32 %.fr839, label %bb.dx [
    i32 8205, label %bb.dy
    i32 8204, label %bb.dy
    i32 2405, label %bb.dy
    i32 2404, label %bb.dy
  ]

bb.dx:                                            ; preds = %switch.early.test802
  %i.xk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.xl = load i16, ptr %i.xk, align 4, !tbaa !26
  %i.xm = zext i16 %i.xl to i32
  %i.xn = add nuw nsw i32 %.fr839, %i.xm
  br label %bb.dy

bb.dy:                                            ; preds = %switch.early.test802, %switch.early.test802, %switch.early.test802, %switch.early.test802, %bb.dw, %bb.dx
  %i.xo = phi i32 [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %bb.dw ], [ %i.xn, %bb.dx ]
  %i.xp = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.xq = icmp ult ptr %.271089, %i.xp
  %i.xr = trunc i32 %i.xo to i16                  ; 2 uses
  br i1 %i.xq, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.xs = getelementptr inbounds nuw i8, ptr %.271089, i64 2 ; 2 uses
  store i16 %i.xr, ptr %.271089, align 2, !tbaa !41
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !58 ; 3 uses
  %.not750 = icmp eq ptr %i.xu, null
  br i1 %.not750, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xv = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.xw = ptrtoint ptr %i.d to i64
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = xor i64 %i.xx, -1
  %i.xz = add i64 %i.xy, %i.xw
  %i.ya = trunc i64 %i.xz to i32
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  store ptr %i.yb, ptr %i.xt, align 8, !tbaa !58
  store i32 %i.ya, ptr %i.xu, align 4, !tbaa !43
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dy
  %i.yc = load ptr, ptr %i.g, align 8, !tbaa !55  ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 144
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 93 ; 2 uses
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !59  ; 2 uses
  %i.yg = add i8 %i.yf, 1
  store i8 %i.yg, ptr %i.ye, align 1, !tbaa !59
  %i.yh = sext i8 %i.yf to i64
  %i.yi = getelementptr inbounds [2 x i8], ptr %i.yd, i64 %i.yh
  store i16 %i.xr, ptr %i.yi, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dz, %bb.ea, %bb.eb
  %.28 = phi ptr [ %i.xs, %bb.ea ], [ %i.xs, %bb.dz ], [ %.271089, %bb.eb ]
  store i32 65535, ptr %i.n, align 8, !tbaa !43
  br label %.loopexit841.thread

.loopexit841.thread:                              ; preds = %bb.ci, %bb.u, %.lr.ph.split, %bb.dv, %bb.ec, %.loopexit841.thread1085, %.loopexit841
  %.16261084 = phi ptr [ %.16261088, %.loopexit841.thread1085 ], [ %.1626, %.loopexit841 ], [ %.16261088, %bb.ec ], [ %.16261088, %bb.dv ], [ %.0625.ph960, %.lr.ph.split ], [ %i.gy, %bb.ci ], [ %i.cb, %bb.u ]
  %.30 = phi ptr [ %.271089, %.loopexit841.thread1085 ], [ %.27, %.loopexit841 ], [ %.28, %bb.ec ], [ %.271089, %bb.dv ], [ %.0607.ph961, %.lr.ph.split ], [ %.18, %bb.ci ], [ %.2609, %bb.u ]
  store ptr %.30, ptr %i.b, align 8, !tbaa !56
  store ptr %.16261084, ptr %i.a, align 8, !tbaa !57
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit841.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL42UConverter_fromUnicode_ISCII_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ult ptr %i.h, %i.f
  %or.cond472 = select i1 %i.k, i1 true, i1 %i.l
  %i.m = icmp ult ptr %i.d, %i.b
  %or.cond473 = select i1 %or.cond472, i1 true, i1 %i.m
  br i1 %or.cond473, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4, !tbaa !36
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = lshr i16 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.br

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ult ptr %i.b, %i.d
  br i1 %i.w, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %.0378.ph558 = phi i16 [ %i.t, %.lr.ph.lr.ph ], [ %.0378.ph.be, %.outer.backedge ] ; 5 uses
  %.0392.ph557 = phi ptr [ %i.o, %.lr.ph.lr.ph ], [ %.0392.ph.be, %.outer.backedge ]
  %.0399.ph556 = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %.0399.ph.be, %.outer.backedge ]
  %.0418.ph555 = phi ptr [ %i.b, %.lr.ph.lr.ph ], [ %i.bu, %.outer.backedge ]
  %i.aa = zext nneg i16 %.0378.ph558 to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.0392545 = phi ptr [ %.0392.ph557, %.lr.ph ], [ %.0392.be, %.backedge ] ; 5 uses
  %.0399544 = phi ptr [ %.0399.ph556, %.lr.ph ], [ %.0399.be, %.backedge ] ; 6 uses
  %.0418543 = phi ptr [ %.0418.ph555, %.lr.ph ], [ %i.bu, %.backedge ] ; 6 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !68  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !70
  %i.ag = icmp eq i32 %i.af, 10
  br i1 %i.ag, label %bb.e, label %bb.l

end_hunk_1
