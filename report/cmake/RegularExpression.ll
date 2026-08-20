inline.NumInlined: 73
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5cmsys13RegExpCompile7regatomEPi:bb.a
  store ptr %i.cr, ptr %i.bl, align 8, !tbaa !35
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !16
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.cs = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.ct = add nsw i64 %i.cs, 1
  store i64 %i.ct, ptr %i.bm, align 8, !tbaa !36
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge:  ; preds = %bb.ae, %bb.ad, %bb.x, %bb.w, %._crit_edge
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66, !llvm.loop !47

.critedge:                                        ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66, %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.cu = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 3 uses
  %.not.i71 = icmp eq ptr %i.cu, @_ZN5cmsysL8regdummyE
  br i1 %.not.i71, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cv, ptr %i.bl, align 8, !tbaa !35
  store i8 0, ptr %i.cu, align 1, !tbaa !16
  %.pre106 = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit72

bb.ag:                                            ; preds = %.critedge
  %i.cw = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.bm, align 8, !tbaa !36
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit72

_ZN5cmsys13RegExpCompile4regcEc.exit72:           ; preds = %bb.af, %bb.ag
  %i.cy = phi ptr [ %.pre106, %bb.af ], [ %i.bn, %bb.ag ] ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %.not52 = icmp eq i8 %i.cz, 93
  br i1 %.not52, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit72
  %puts53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %.critedge59

bb.ai:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.da, ptr %0, align 8, !tbaa !32
  %i.db = load i32, ptr %1, align 4, !tbaa !38
  %i.dc = or i32 %i.db, 3
  store i32 %i.dc, ptr %1, align 4, !tbaa !38
  br label %.critedge59

bb.aj:                                            ; preds = %bb.a
  %i.dd = call noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %.critedge59, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.de = load i32, ptr %i.a, align 4, !tbaa !38
  %i.df = and i32 %i.de, 5
  %i.dg = load i32, ptr %1, align 4, !tbaa !38
  %i.dh = or i32 %i.dg, %i.df
  store i32 %i.dh, ptr %1, align 4, !tbaa !38
  br label %.critedge59

bb.al:                                            ; preds = %bb.a, %bb.a, %bb.a
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.critedge59

bb.am:                                            ; preds = %bb.a, %bb.a, %bb.a
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %.critedge59

bb.an:                                            ; preds = %bb.a
  %i.di = load i8, ptr %i.c, align 1, !tbaa !16
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %.critedge59

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !35 ; 7 uses
  %i.dm = icmp eq ptr %i.dl, @_ZN5cmsysL8regdummyE
  br i1 %i.dm, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit73

_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread: ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !36
  %i.dp = add nsw i64 %i.do, 3
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.dq, ptr %0, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread

_ZN5cmsys13RegExpCompile7regnodeEc.exit73:        ; preds = %bb.ap
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 8, ptr %i.dl, align 1, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 0, ptr %i.dr, align 1, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 3 ; 3 uses
  store i8 0, ptr %i.ds, align 1, !tbaa !16
  store ptr %i.dt, ptr %i.dk, align 8, !tbaa !35
  %.pre = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  store ptr %i.du, ptr %0, align 8, !tbaa !32
  %.not.i74 = icmp eq ptr %i.dt, @_ZN5cmsysL8regdummyE
  br i1 %.not.i74, label %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread, label %_ZN5cmsys13RegExpCompile4regcEc.exit75

_ZN5cmsys13RegExpCompile4regcEc.exit75.thread:    ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit73, %_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !36
  br label %bb.ar

_ZN5cmsys13RegExpCompile4regcEc.exit75:           ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit73
  %i.dy = load i8, ptr %.pre, align 1, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dz, ptr %i.dk, align 8, !tbaa !35
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !16
  %.pre102 = load ptr, ptr %i.dk, align 8, !tbaa !35 ; 3 uses
  %.not.i76 = icmp eq ptr %.pre102, @_ZN5cmsysL8regdummyE
  br i1 %.not.i76, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit75
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre102, i64 1
  store ptr %i.ea, ptr %i.dk, align 8, !tbaa !35
  store i8 0, ptr %.pre102, align 1, !tbaa !16
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit77

bb.ar:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread, %_ZN5cmsys13RegExpCompile4regcEc.exit75
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !36
  %i.ed = add nsw i64 %i.ec, 1
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !36
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit77

_ZN5cmsys13RegExpCompile4regcEc.exit77:           ; preds = %bb.aq, %bb.ar
  %i.ee = load i32, ptr %1, align 4, !tbaa !38
  %i.ef = or i32 %i.ee, 3
  store i32 %i.ef, ptr %1, align 4, !tbaa !38
  br label %.critedge59

bb.as:                                            ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !32
  %i.eg = tail call i64 @strcspn(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) #17
  %.fr = freeze i64 %i.eg                         ; 2 uses
  %i.eh = trunc i64 %.fr to i32                   ; 4 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.critedge59

bb.au:                                            ; preds = %bb.as
  %.not56 = icmp eq i32 %i.eh, 1
  br i1 %.not56, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = and i64 %.fr, 2147483647
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16
  switch i8 %i.el, label %.thread [
    i8 63, label %bb.aw
    i8 43, label %bb.aw
    i8 42, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av, %bb.av
  %i.em = add nsw i32 %i.eh, -1                   ; 2 uses
  %i.en = icmp eq i32 %i.em, 1
  %spec.select = select i1 %i.en, i32 3, i32 1
  br label %.thread

.thread:                                          ; preds = %bb.aw, %bb.av, %bb.au
  %.085 = phi i32 [ 1, %bb.au ], [ %i.em, %bb.aw ], [ %i.eh, %bb.av ] ; 2 uses
  %i.eo = phi i32 [ 3, %bb.au ], [ %spec.select, %bb.aw ], [ 1, %bb.av ]
  store i32 %i.eo, ptr %1, align 4, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35 ; 7 uses
  %i.er = icmp eq ptr %i.eq, @_ZN5cmsysL8regdummyE
  br i1 %i.er, label %.lr.ph94.thread, label %.lr.ph94

.lr.ph94.thread:                                  ; preds = %.thread
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !36
  %i.eu = add nsw i64 %i.et, 3
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %._crit_edge95.thread

.lr.ph94:                                         ; preds = %.thread
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store i8 8, ptr %i.eq, align 1, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i8 0, ptr %i.ew, align 1, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 3 ; 3 uses
  store i8 0, ptr %i.ex, align 1, !tbaa !16
  store ptr %i.ey, ptr %i.ep, align 8, !tbaa !35
  %2 = icmp eq ptr %i.ey, @_ZN5cmsysL8regdummyE
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %2, label %._crit_edge95.thread, label %.lr.ph94.split.preheader

.lr.ph94.split.preheader:                         ; preds = %.lr.ph94
  %.pre109 = load ptr, ptr %0, align 8, !tbaa !32
  br label %.lr.ph94.split

._crit_edge95.thread:                             ; preds = %.lr.ph94, %.lr.ph94.thread
  %i.ez = phi ptr [ %i.ev, %.lr.ph94.thread ], [ %3, %.lr.ph94 ] ; 2 uses
  %.promoted96 = load ptr, ptr %0, align 8, !tbaa !32
  %.promoted98 = load i64, ptr %i.ez, align 8, !tbaa !36
  %i.fa = add nsw i32 %.085, -1
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  %i.fc = getelementptr i8, ptr %.promoted96, i64 %i.fb
  %scevgep = getelementptr i8, ptr %i.fc, i64 1
  %i.fd = add i64 %.promoted98, %i.fb
  %i.fe = add i64 %i.fd, 1
  store ptr %scevgep, ptr %0, align 8, !tbaa !32
  store i64 %i.fe, ptr %i.ez, align 8, !tbaa !36
  br label %bb.ba

.lr.ph94.split:                                   ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit80, %.lr.ph94.split.preheader
  %i.ff = phi ptr [ %i.ey, %.lr.ph94.split.preheader ], [ %.pr132, %_ZN5cmsys13RegExpCompile4regcEc.exit80 ] ; 3 uses
  %i.fg = phi ptr [ %.pre109, %.lr.ph94.split.preheader ], [ %i.fm, %_ZN5cmsys13RegExpCompile4regcEc.exit80 ] ; 2 uses
  %.193 = phi i32 [ %.085, %.lr.ph94.split.preheader ], [ %i.fn, %_ZN5cmsys13RegExpCompile4regcEc.exit80 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 2 uses
  store ptr %i.fh, ptr %0, align 8, !tbaa !32
  %.not.i79 = icmp eq ptr %i.ff, @_ZN5cmsysL8regdummyE
  br i1 %.not.i79, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph94.split
  %i.fi = load i8, ptr %i.fg, align 1, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fj, ptr %i.ep, align 8, !tbaa !35
  store i8 %i.fi, ptr %i.ff, align 1, !tbaa !16
  %.pre108 = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit80

bb.ay:                                            ; preds = %.lr.ph94.split
  %i.fk = load i64, ptr %3, align 8, !tbaa !36
  %i.fl = add nsw i64 %i.fk, 1
  store i64 %i.fl, ptr %3, align 8, !tbaa !36
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit80

_ZN5cmsys13RegExpCompile4regcEc.exit80:           ; preds = %bb.ax, %bb.ay
  %i.fm = phi ptr [ %.pre108, %bb.ax ], [ %i.fh, %bb.ay ]
  %i.fn = add nsw i32 %.193, -1
  %i.fo = icmp sgt i32 %.193, 1
  %.pr132 = load ptr, ptr %i.ep, align 8, !tbaa !35 ; 4 uses
  br i1 %i.fo, label %.lr.ph94.split, label %._crit_edge95, !llvm.loop !48

._crit_edge95:                                    ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit80
  %.not.i81 = icmp eq ptr %.pr132, @_ZN5cmsysL8regdummyE
  br i1 %.not.i81, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge95
  %i.fp = getelementptr inbounds nuw i8, ptr %.pr132, i64 1
  store ptr %i.fp, ptr %i.ep, align 8, !tbaa !35
  store i8 0, ptr %.pr132, align 1, !tbaa !16
  br label %.critedge59

bb.ba:                                            ; preds = %._crit_edge95.thread, %._crit_edge95
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !36
  %i.fs = add nsw i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !36
  br label %.critedge59

.critedge59:                                      ; preds = %bb.at, %bb.az, %bb.ba, %bb.g, %bb.f, %bb.d, %bb.c, %bb.z, %bb.ah, %_ZN5cmsys13RegExpCompile7regnodeEc.exit62, %bb.ak, %_ZN5cmsys13RegExpCompile4regcEc.exit77, %bb.ai, %bb.aj, %bb.ao, %bb.am, %bb.al
  %.241 = phi ptr [ null, %bb.aj ], [ %i.o, %bb.g ], [ null, %bb.z ], [ null, %bb.ao ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.ah ], [ %i.f, %bb.d ], [ %i.x, %_ZN5cmsys13RegExpCompile7regnodeEc.exit62 ], [ %.037, %bb.ai ], [ %i.dd, %bb.ak ], [ %i.dl, %_ZN5cmsys13RegExpCompile4regcEc.exit77 ], [ @_ZN5cmsysL8regdummyE, %bb.c ], [ @_ZN5cmsysL8regdummyE, %bb.f ], [ null, %bb.at ], [ %i.eq, %bb.az ], [ %i.eq, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.241
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile9reginsertEcPc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1, ptr nofree noundef writeonly captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 6 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = icmp eq ptr %i.c, @_ZN5cmsysL8regdummyE
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = add nsw i64 %i.g, 3
  store i64 %i.h, ptr %i.f, align 8, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.i, ptr %i.b, align 8, !tbaa !35
  %i.j = icmp ugt ptr %i.c, %2
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = add i64 %i.a, 3
  %i.l = sub i64 %i.k, %i.d
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l
  %i.m = sub i64 %i.a, %i.d
  %scevgep14 = getelementptr i8, ptr %i.c, i64 %i.m
  %i.n = sub i64 %i.d, %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %scevgep14, i64 %i.n, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %2, align 1, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.o, align 1, !tbaa !16
  store i8 0, ptr %i.p, align 1, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(520) initializes((0, 8), (256, 264), (512, 520)) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"class.cmsys::RegExpFind", align 8 ; 7 uses
  store ptr null, ptr %2, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 512
  store ptr %1, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %.not34 = icmp eq i8 %i.e, -100
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %.loopexit48, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.i = load i8, ptr %i.g, align 1, !tbaa !16
  %i.j = sext i8 %i.i to i32                      ; 2 uses
  %i.k = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef %i.j) #17 ; 2 uses
  %.not3649 = icmp eq ptr %i.k, null
  br i1 %.not3649, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.o = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef %i.j) #17 ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %.critedge, label %bb.g, !llvm.loop !49

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.p = phi ptr [ %i.k, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, i64 noundef %i.m) #17
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit48, label %bb.f

.loopexit48:                                      ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 5 uses
  %i.t = and i32 %4, 1
  %.not37 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not37, ptr %1, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !50
  %i.w = and i32 %4, 2
  %.not38 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not38, ptr null, ptr %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.x, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 521
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25
  %.not39 = icmp eq i8 %i.aa, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit48
  %i.ab = call noundef i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.s, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.ac = icmp ne i32 %i.ab, 0
  br label %.loopexit

bb.i:                                             ; preds = %.loopexit48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !24  ; 2 uses
  %.not40 = icmp eq i8 %i.ae, 0
  br i1 %.not40, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.i
  %i.af = sext i8 %i.ae to i32
  %i.ag = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.s, i32 noundef %i.af) #17 ; 2 uses
  %.not4350 = icmp eq ptr %i.ag, null
  br i1 %.not4350, label %.loopexit, label %.lr.ph51

bb.j:                                             ; preds = %.lr.ph51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ai = load i8, ptr %i.ad, align 8, !tbaa !24
  %i.aj = sext i8 %i.ai to i32
  %i.ak = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ah, i32 noundef %i.aj) #17 ; 2 uses
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %.loopexit, label %.lr.ph51, !llvm.loop !55

.lr.ph51:                                         ; preds = %.preheader45, %bb.j
  %i.al = phi ptr [ %i.ak, %bb.j ], [ %i.ag, %.preheader45 ] ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.an = call noundef i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %i.al, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.am)
  %.not44.not.not = icmp ne i32 %i.an, 0          ; 3 uses
  br i1 %.not44.not.not, label %.loopexit, label %bb.j

.preheader:                                       ; preds = %bb.i, %bb.k
  %.2 = phi ptr [ %i.aq, %bb.k ], [ %i.s, %bb.i ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ap = call noundef i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %.2, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.ao)
  %.not41.not.not = icmp ne i32 %i.ap, 0          ; 3 uses
  br i1 %.not41.not.not, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ar = load i8, ptr %.2, align 1, !tbaa !16
  %.not42 = icmp eq i8 %i.ar, 0
  br i1 %.not42, label %.loopexit, label %.preheader, !llvm.loop !56

.loopexit:                                        ; preds = %.lr.ph51, %bb.j, %bb.k, %.preheader, %.preheader45, %bb.h
  %.029 = phi i1 [ %i.ac, %bb.h ], [ false, %.preheader45 ], [ %.not41.not.not, %bb.k ], [ %.not41.not.not, %.preheader ], [ %.not44.not.not, %bb.j ], [ %.not44.not.not, %.lr.ph51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
end_hunk_0
