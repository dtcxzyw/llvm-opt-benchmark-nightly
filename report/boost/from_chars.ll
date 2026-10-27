Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/from_chars?download=true
inline.NumInlined: 530
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost8charconv6detail6parserIolEENS0_19from_chars_result_tIcEEPKcS6_RbRT_RT0_NS0_12chars_formatE:bb.a
  %i.cl = sext i8 %i.bw to i32                    ; 2 uses
  %i.cm = icmp eq i32 %., %i.cl
  %i.cn = icmp eq i32 %.358, %i.cl
  %or.cond362 = or i1 %i.cm, %i.cn
  br i1 %or.cond362, label %bb.al, label %bb.bm

bb.al:                                            ; preds = %bb.ak
  %i.co = icmp eq ptr %.10514, %0
  br i1 %i.co, label %bb.bm, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %.10514, i64 1 ; 5 uses
  %i.cq = icmp eq i32 %5, 2
  br i1 %i.cq, label %bb.bm, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = icmp ugt i64 %.2295496510, 39           ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.ct = load i8, ptr %i.cs, align 2
  %.off = add i8 %i.ct, -53
  %switch = icmp ult i8 %.off, 5
  %.3296 = tail call i64 @llvm.umin.i64(i64 %.2295496510, i64 39) ; 2 uses
  %.0280 = select i1 %i.cr, i64 38, i64 %.2295496510 ; 2 uses
  %.0 = select i1 %i.cr, i1 %switch, i1 false
  %.not342 = icmp eq i64 %.0280, 0
  br i1 %.not342, label %.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0280
  %i.cv = call { ptr, i32 } @_ZN5boost8charconv6detail19from_chars_dispatchEPKcS3_Roi(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cu, ptr noundef nonnull align 16 dereferenceable(16) %3, i32 noundef %i.ad) #13
  %i.cw = extractvalue { ptr, i32 } %i.cv, 1      ; 3 uses
  switch i32 %i.cw, label %bb.aq [
    i32 22, label %bb.bm
    i32 34, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %bb.bm

bb.aq:                                            ; preds = %bb.ao
  br i1 %.0, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cx = load i128, ptr %3, align 16, !tbaa !32
  %i.cy = add i128 %i.cx, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.an, %bb.ar
  %.sink = phi i128 [ %i.cy, %bb.ar ], [ 0, %bb.an ]
  store i128 %.sink, ptr %3, align 16, !tbaa !32
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %.not343 = icmp eq ptr %i.cp, %1
  br i1 %.not343, label %.critedge364, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = load i8, ptr %i.cp, align 1, !tbaa !35  ; 2 uses
  %i.da = icmp eq i8 %i.cz, 45
  %i.db = getelementptr inbounds nuw i8, ptr %.10514, i64 2 ; 2 uses
  br i1 %i.da, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 45, ptr %i.c, align 1, !tbaa !35
  br label %.critedge364

bb.av:                                            ; preds = %bb.at
  %i.dc = icmp eq i8 %i.cz, 43
  %spec.select365 = select i1 %i.dc, ptr %i.db, ptr %i.cp
  br label %.critedge364

.critedge364:                                     ; preds = %bb.av, %bb.as, %bb.au
  %i.dd = phi i1 [ false, %bb.au ], [ true, %bb.as ], [ true, %bb.av ] ; 2 uses
  %.4297.sroa.phi = phi ptr [ %.4297.sroa.gep, %bb.au ], [ %i.c, %bb.as ], [ %i.c, %bb.av ]
  %.4297 = phi i64 [ 1, %bb.au ], [ 0, %bb.as ], [ 0, %bb.av ] ; 8 uses
  %.11 = phi ptr [ %i.db, %bb.au ], [ %i.cp, %bb.as ], [ %spec.select365, %bb.av ] ; 5 uses
  %.not344423 = icmp eq ptr %.11, %1
  br i1 %.not344423, label %.critedge16, label %.lr.ph425.preheader

.lr.ph425.preheader:                              ; preds = %.critedge364
  %.11449 = ptrtoaddr ptr %.11 to i64
  %i.de = sub i64 %i.a, %.11449
  %scevgep450 = getelementptr i8, ptr %.11, i64 %i.de
  br label %.lr.ph425

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %bb.aw
  %.12424 = phi ptr [ %i.dh, %bb.aw ], [ %.11, %.lr.ph425.preheader ] ; 3 uses
  %i.df = load i8, ptr %.12424, align 1, !tbaa !35
  %i.dg = icmp eq i8 %i.df, 48
  br i1 %i.dg, label %bb.aw, label %.critedge16

bb.aw:                                            ; preds = %.lr.ph425
  %i.dh = getelementptr inbounds nuw i8, ptr %.12424, i64 1 ; 2 uses
  %.not344 = icmp eq ptr %i.dh, %1
  br i1 %.not344, label %.critedge16, label %.lr.ph425, !llvm.loop !62

.critedge16:                                      ; preds = %.lr.ph425, %bb.aw, %.critedge364
  %.12.lcssa = phi ptr [ %.11, %.critedge364 ], [ %scevgep450, %bb.aw ], [ %.12424, %.lr.ph425 ] ; 11 uses
  %.not375429 = icmp eq ptr %.12.lcssa, %1
  br i1 %.not375429, label %.critedge18.thread, label %.lr.ph432

.lr.ph432:                                        ; preds = %.critedge16
  %i.di = load i8, ptr %.12.lcssa, align 1, !tbaa !35 ; 2 uses
  %i.dj = add i8 %i.di, -48
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.ax, label %.critedge18

bb.ax:                                            ; preds = %.lr.ph432
  store i8 %i.di, ptr %.4297.sroa.phi, align 1, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 1 ; 4 uses
  %i.dm = add nuw nsw i64 %.4297, 1               ; 3 uses
  %.not375 = icmp eq ptr %i.dl, %1
  br i1 %.not375, label %.critedge18.thread.thread, label %.lr.ph432.1

.lr.ph432.1:                                      ; preds = %bb.ax
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !35  ; 2 uses
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.ay, label %.critedge18

bb.ay:                                            ; preds = %.lr.ph432.1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dm
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 2 ; 4 uses
  %i.ds = or disjoint i64 %.4297, 2               ; 3 uses
  %.not375.1 = icmp eq ptr %i.dr, %1
  br i1 %.not375.1, label %.critedge18.thread.thread, label %.lr.ph432.2

.lr.ph432.2:                                      ; preds = %bb.ay
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !35  ; 2 uses
  %i.du = add i8 %i.dt, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %bb.az, label %.critedge18

bb.az:                                            ; preds = %.lr.ph432.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ds
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 3 ; 4 uses
  %i.dy = add nuw nsw i64 %.4297, 3               ; 3 uses
  %.not375.2 = icmp eq ptr %i.dx, %1
  br i1 %.not375.2, label %.critedge18.thread.thread, label %.lr.ph432.3

.lr.ph432.3:                                      ; preds = %bb.az
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !35  ; 2 uses
  %i.ea = add i8 %i.dz, -48
  %i.eb = icmp ult i8 %i.ea, 10
  br i1 %i.eb, label %bb.ba, label %.critedge18

bb.ba:                                            ; preds = %.lr.ph432.3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  store i8 %i.dz, ptr %i.ec, align 1, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 4 ; 4 uses
  %i.ee = or disjoint i64 %.4297, 4               ; 3 uses
  %.not375.3 = icmp eq ptr %i.ed, %1
  br i1 %.not375.3, label %.critedge18.thread.thread, label %.lr.ph432.4

.lr.ph432.4:                                      ; preds = %bb.ba
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !35  ; 2 uses
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10
  br i1 %i.eh, label %bb.bb, label %.critedge18

bb.bb:                                            ; preds = %.lr.ph432.4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ee
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !35
  %i.ej = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 5 ; 4 uses
  %i.ek = add nuw nsw i64 %.4297, 5               ; 3 uses
  %.not375.4 = icmp eq ptr %i.ej, %1
  br i1 %.not375.4, label %.critedge18.thread.thread, label %.lr.ph432.5

.lr.ph432.5:                                      ; preds = %bb.bb
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !35  ; 2 uses
  %i.em = add i8 %i.el, -48
  %i.en = icmp ult i8 %i.em, 10
  %or.cond30.5 = and i1 %i.en, %i.dd
  br i1 %or.cond30.5, label %bb.bc, label %.critedge18

bb.bc:                                            ; preds = %.lr.ph432.5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ek
  store i8 %i.el, ptr %i.eo, align 1, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 6 ; 3 uses
  %i.eq = or disjoint i64 %.4297, 6               ; 2 uses
  %.not375.5 = icmp eq ptr %i.ep, %1
  br i1 %.not375.5, label %.critedge18.thread.thread, label %.critedge18

.critedge18:                                      ; preds = %bb.bc, %.lr.ph432.5, %.lr.ph432.4, %.lr.ph432.3, %.lr.ph432.2, %.lr.ph432.1, %.lr.ph432
  %.13431.lcssa = phi ptr [ %.12.lcssa, %.lr.ph432 ], [ %i.dl, %.lr.ph432.1 ], [ %i.dr, %.lr.ph432.2 ], [ %i.dx, %.lr.ph432.3 ], [ %i.ed, %.lr.ph432.4 ], [ %i.ej, %.lr.ph432.5 ], [ %i.ep, %bb.bc ] ; 3 uses
  %.5298430.lcssa = phi i64 [ %.4297, %.lr.ph432 ], [ %i.dm, %.lr.ph432.1 ], [ %i.ds, %.lr.ph432.2 ], [ %i.dy, %.lr.ph432.3 ], [ %i.ee, %.lr.ph432.4 ], [ %i.ek, %.lr.ph432.5 ], [ %i.eq, %bb.bc ] ; 2 uses
  switch i64 %.5298430.lcssa, label %.critedge18.thread.thread [
    i64 6, label %bb.bl
    i64 0, label %bb.bd
  ]

.critedge18.thread:                               ; preds = %.critedge16
  br i1 %i.dd, label %bb.bd, label %.critedge18.thread.thread

.critedge18.thread.thread:                        ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %.critedge18, %.critedge18.thread
  %.5298382 = phi i64 [ %.5298430.lcssa, %.critedge18 ], [ %.4297, %.critedge18.thread ], [ %i.dm, %bb.ax ], [ %i.ds, %bb.ay ], [ %i.dy, %bb.az ], [ %i.ee, %bb.ba ], [ %i.ek, %bb.bb ], [ %i.eq, %bb.bc ] ; 2 uses
  %.13379 = phi ptr [ %.13431.lcssa, %.critedge18 ], [ %.12.lcssa, %.critedge18.thread ], [ %i.dl, %bb.ax ], [ %i.dr, %bb.ay ], [ %i.dx, %bb.az ], [ %i.ed, %bb.ba ], [ %i.ej, %bb.bb ], [ %i.ep, %bb.bc ] ; 4 uses
  %i.er = icmp eq i64 %.5298382, 1
  %i.es = load i8, ptr %i.c, align 1
  %i.et = icmp eq i8 %i.es, 45
  %or.cond24 = select i1 %i.er, i1 %i.et, i1 false
  br i1 %or.cond24, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge18, %.critedge18.thread.thread, %.critedge18.thread
  %.13380 = phi ptr [ %.13431.lcssa, %.critedge18 ], [ %.13379, %.critedge18.thread.thread ], [ %.12.lcssa, %.critedge18.thread ]
  %i.eu = sub nsw i64 %.0292497508, %.3296
  %storemerge = select i1 %i.bv, i64 %i.eu, i64 %.2291512
  store i64 %storemerge, ptr %4, align 8, !tbaa !24
  br label %bb.bl

bb.be:                                            ; preds = %.critedge18.thread.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %.5298382
  %i.ew = call { ptr, i32 } @_ZN5boost8charconv6detail23from_chars_integer_implIlmEENS0_19from_chars_result_tIcEEPKcS6_RT_i(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 10) #13
  %i.ex = extractvalue { ptr, i32 } %i.ew, 1      ; 3 uses
  %i.ey = load i64, ptr %4, align 8, !tbaa !24
  %i.ez = add nsw i64 %i.ey, %.2288498506         ; 3 uses
  store i64 %i.ez, ptr %4, align 8, !tbaa !24
  switch i32 %i.ex, label %bb.bg [
    i32 22, label %bb.bl
    i32 34, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  br i1 %i.bv, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not337, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fa = load i128, ptr %3, align 16, !tbaa !32
  %i.fb = call noundef i32 @_ZN5boost8charconv6detail10num_digitsEo(i128 noundef %i.fa) #13
  %i.fc = sext i32 %i.fb to i64
  %.neg345 = sub nsw i64 %.0292497508, %i.fc
  %i.fd = load i64, ptr %4, align 8, !tbaa !24
  %i.fe = add i64 %.neg345, %i.fd
  br label %.sink.split533

bb.bj:                                            ; preds = %bb.bh
  %.neg = sub nsw i64 %.0292497508, %.3296
  %i.ff = add i64 %.neg, %i.ez
  br label %.sink.split533

bb.bk:                                            ; preds = %bb.bg
  %i.fg = add nsw i64 %i.ez, %.2291512
  store i64 %i.fg, ptr %4, align 8, !tbaa !24
  br label %bb.bl

.sink.split533:                                   ; preds = %bb.bi, %bb.bj
  %.sink534 = phi i64 [ %i.ff, %bb.bj ], [ %i.fe, %bb.bi ]
  store i64 %.sink534, ptr %4, align 8, !tbaa !24
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split533, %.critedge18, %bb.bf, %bb.be, %bb.bk, %bb.bd
  %.sroa.0279.6 = phi ptr [ %.13431.lcssa, %.critedge18 ], [ %.13380, %bb.bd ], [ %0, %bb.be ], [ %.13379, %bb.bf ], [ %.13379, %bb.bk ], [ %.13379, %.sink.split533 ]
  %.sroa.29.6 = phi i32 [ 34, %.critedge18 ], [ 0, %bb.bd ], [ %i.ex, %bb.be ], [ %i.ex, %bb.bf ], [ 0, %bb.bk ], [ 0, %.sink.split533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.am, %bb.al, %bb.ai, %bb.aj, %bb.ah, %bb.ag, %bb.z, %bb.aa, %bb.y, %._crit_edge, %bb.bl, %._crit_edge403
  %.sroa.0279.7 = phi ptr [ %0, %bb.am ], [ %0, %._crit_edge ], [ %1, %._crit_edge403 ], [ %0, %bb.y ], [ %0, %bb.ag ], [ %0, %bb.ah ], [ %.10514, %bb.al ], [ %.sroa.0279.6, %bb.bl ], [ %0, %bb.ak ], [ %.4.lcssa, %bb.aa ], [ %.4.lcssa, %bb.z ], [ %.10515, %bb.aj ], [ %.10515, %bb.ai ], [ %i.cp, %bb.ap ], [ %0, %bb.ao ]
  %.sroa.29.7 = phi i32 [ 22, %bb.am ], [ 22, %._crit_edge ], [ 0, %._crit_edge403 ], [ %i.ar, %bb.y ], [ 22, %bb.ag ], [ %i.ck, %bb.ah ], [ 22, %bb.al ], [ %.sroa.29.6, %bb.bl ], [ 22, %bb.ak ], [ 0, %bb.aa ], [ %i.ar, %bb.z ], [ 0, %bb.aj ], [ %i.ck, %bb.ai ], [ %i.cw, %bb.ap ], [ %i.cw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.critedge357

.critedge357:                                     ; preds = %bb.s, %bb.k, %bb.t, %bb.u, %bb.v, %bb.b, %bb.j, %bb.h, %bb.i, %bb.g, %bb.r, %bb.o, %bb.m, %bb.n, %bb.l, %bb.bm, %.critedge.thread, %bb.a
  %.sroa.0279.10 = phi ptr [ %0, %bb.a ], [ %i.j, %bb.k ], [ %0, %bb.b ], [ %i.s, %bb.t ], [ %i.s, %bb.u ], [ %i.h, %bb.g ], [ %i.p, %bb.v ], [ %i.s, %bb.r ], [ %i.j, %bb.j ], [ %i.j, %bb.i ], [ %i.h, %bb.h ], [ %i.s, %bb.s ], [ %.sroa.0279.7, %bb.bm ], [ %i.n, %bb.o ], [ %i.n, %bb.n ], [ %i.l, %bb.m ], [ %i.l, %bb.l ], [ %.3389, %.critedge.thread ]
  %.sroa.29.10 = phi i32 [ 22, %bb.a ], [ 75, %bb.k ], [ 22, %bb.b ], [ 95, %bb.t ], [ 95, %bb.u ], [ 22, %bb.g ], [ 95, %bb.v ], [ 22, %bb.r ], [ 22, %bb.j ], [ 22, %bb.i ], [ 22, %bb.h ], [ 22, %bb.s ], [ %.sroa.29.7, %bb.bm ], [ 22, %bb.o ], [ 22, %bb.n ], [ 22, %bb.m ], [ 22, %bb.l ], [ 0, %.critedge.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0279.10, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.29.10, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail17from_chars_strtodIeEENS0_19from_chars_result_tIcEEPKcS6_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 7 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1024
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !35
  %i.i = tail call ptr @localeconv() #13
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35    ; 2 uses
  %.not.i.i = icmp eq i8 %i.k, 46
  br i1 %.not.i.i, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 46) #14 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.l, null
  br i1 %.not4.i.i, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.k, ptr %i.l, align 1, !tbaa !35
  br label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i

_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.m = call x86_fp80 @strtold(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #13 ; 3 uses
  %i.n = fcmp oeq x86_fp80 %i.m, 0.000000e+00
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, %1
  %or.cond.i = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond.i, label %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i
  %i.q = fcmp une x86_fp80 %i.m, +inf
  br i1 %i.q, label %bb.f, label %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit

bb.f:                                             ; preds = %bb.e
  store x86_fp80 %i.m, ptr %2, align 16, !tbaa !34
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  br label %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit

_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit: ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i, %bb.e, %bb.f
  %.sroa.5.2.i = phi i32 [ 0, %bb.f ], [ 34, %bb.e ], [ 34, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i ]
  %.sroa.0.2.i = phi ptr [ %i.u, %bb.f ], [ %1, %bb.e ], [ %0, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.v = add nuw nsw i64 %i.f, 1
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #15 ; 7 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %0, i64 %i.f, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !35
  %i.z = tail call ptr @localeconv() #13
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35  ; 2 uses
  %.not.i.i15 = icmp eq i8 %i.ab, 46
  br i1 %.not.i.i15, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.w, i32 noundef 46) #14 ; 2 uses
  %.not4.i.i16 = icmp eq ptr %i.ac, null
  br i1 %.not4.i.i16, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  br label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17

_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ad = call x86_fp80 @strtold(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.ae = fcmp oeq x86_fp80 %i.ad, 0.000000e+00
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = icmp eq ptr %i.af, %1
  %or.cond.i18 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i18, label %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23, label %bb.k

bb.k:                                             ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17
  %i.ah = fcmp une x86_fp80 %i.ad, +inf
  br i1 %i.ah, label %bb.l, label %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23

bb.l:                                             ; preds = %bb.k
  store x86_fp80 %i.ad, ptr %2, align 16, !tbaa !34
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.w to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  br label %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23

_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23: ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17, %bb.k, %bb.l
  %.sroa.5.2.i19 = phi i32 [ 0, %bb.l ], [ 34, %bb.k ], [ 34, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17 ]
  %.sroa.0.2.i20 = phi ptr [ %i.al, %bb.l ], [ %1, %bb.k ], [ %0, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  tail call void @free(ptr noundef nonnull %i.w) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23, %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit
  %.sroa.0.2.i.pn = phi ptr [ %.sroa.0.2.i, %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit ], [ %.sroa.0.2.i20, %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23 ], [ %0, %bb.g ]
  %.sroa.5.2.i.pn = phi i32 [ %.sroa.5.2.i, %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit ], [ %.sroa.5.2.i19, %_ZN5boost8charconv6detail22from_chars_strtod_implIeEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23 ], [ 12, %bb.g ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.sroa.0.2.i.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.sroa.5.2.i.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv17from_chars_erangeENS_4core17basic_string_viewIcEERfNS0_12chars_formatE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %.not.i = icmp eq i32 %3, 4
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 197568495616
  %i.b = tail call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %.sroa.0.0.insert.insert.i.i) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i32 } @_ZN5boost8charconv6detail21from_chars_float_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 4) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit

_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret { ptr, i32 } %.pn.i
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv17from_chars_erangeENS_4core17basic_string_viewIcEERdNS0_12chars_formatE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %.not.i = icmp eq i32 %3, 4
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 197568495616
  %i.b = tail call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.0.0.insert.insert.i.i) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i32 } @_ZN5boost8charconv6detail21from_chars_float_implIdEENS0_19from_chars_result_tIcEEPKcS6_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 4) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit

_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret { ptr, i32 } %.pn.i
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv17from_chars_erangeENS_4core17basic_string_viewIcEEReNS0_12chars_formatE(ptr %0, i64 %1, ptr noundef nonnull align 16 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = tail call { ptr, i32 } @_ZN5boost8charconv17from_chars_erangeEPKcS2_ReNS0_12chars_formatE(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull align 16 dereferenceable(16) %2, i32 noundef %3) #13
  ret { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv10from_charsEPKcS2_RfNS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5boost8charconv6detail6parserImlEENS0_19from_chars_result_tIcEEPKcS6_RbRT_RT0_NS0_12chars_formatE:bb.a
  %i.cl = sext i8 %i.bw to i32                    ; 2 uses
  %i.cm = icmp eq i32 %., %i.cl
  %i.cn = icmp eq i32 %.358, %i.cl
  %or.cond362 = or i1 %i.cm, %i.cn
  br i1 %or.cond362, label %bb.al, label %bb.bm

bb.al:                                            ; preds = %bb.ak
  %i.co = icmp eq ptr %.10514, %0
  br i1 %i.co, label %bb.bm, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %.10514, i64 1 ; 5 uses
  %i.cq = icmp eq i32 %5, 2
  br i1 %i.cq, label %bb.bm, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = icmp ugt i64 %.2295496510, 20           ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.ct = load i8, ptr %i.cs, align 1
  %.off = add i8 %i.ct, -53
  %switch = icmp ult i8 %.off, 5
  %.3296 = tail call i64 @llvm.umin.i64(i64 %.2295496510, i64 20) ; 2 uses
  %.0280 = select i1 %i.cr, i64 19, i64 %.2295496510 ; 2 uses
  %.0 = select i1 %i.cr, i1 %switch, i1 false
  %.not342 = icmp eq i64 %.0280, 0
  br i1 %.not342, label %.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0280
  %i.cv = call { ptr, i32 } @_ZN5boost8charconv6detail19from_chars_dispatchEPKcS3_Rmi(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.ad) #13
  %i.cw = extractvalue { ptr, i32 } %i.cv, 1      ; 3 uses
  switch i32 %i.cw, label %bb.aq [
    i32 22, label %bb.bm
    i32 34, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %bb.bm

bb.aq:                                            ; preds = %bb.ao
  br i1 %.0, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cx = load i64, ptr %3, align 8, !tbaa !24
  %i.cy = add i64 %i.cx, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.an, %bb.ar
  %.sink = phi i64 [ %i.cy, %bb.ar ], [ 0, %bb.an ]
  store i64 %.sink, ptr %3, align 8, !tbaa !24
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %.not343 = icmp eq ptr %i.cp, %1
  br i1 %.not343, label %.critedge364, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = load i8, ptr %i.cp, align 1, !tbaa !35  ; 2 uses
  %i.da = icmp eq i8 %i.cz, 45
  %i.db = getelementptr inbounds nuw i8, ptr %.10514, i64 2 ; 2 uses
  br i1 %i.da, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 45, ptr %i.c, align 1, !tbaa !35
  br label %.critedge364

bb.av:                                            ; preds = %bb.at
  %i.dc = icmp eq i8 %i.cz, 43
  %spec.select365 = select i1 %i.dc, ptr %i.db, ptr %i.cp
  br label %.critedge364

.critedge364:                                     ; preds = %bb.av, %bb.as, %bb.au
  %i.dd = phi i1 [ false, %bb.au ], [ true, %bb.as ], [ true, %bb.av ] ; 2 uses
  %.4297.sroa.phi = phi ptr [ %.4297.sroa.gep, %bb.au ], [ %i.c, %bb.as ], [ %i.c, %bb.av ]
  %.4297 = phi i64 [ 1, %bb.au ], [ 0, %bb.as ], [ 0, %bb.av ] ; 8 uses
  %.11 = phi ptr [ %i.db, %bb.au ], [ %i.cp, %bb.as ], [ %spec.select365, %bb.av ] ; 5 uses
  %.not344423 = icmp eq ptr %.11, %1
  br i1 %.not344423, label %.critedge16, label %.lr.ph425.preheader

.lr.ph425.preheader:                              ; preds = %.critedge364
  %.11449 = ptrtoaddr ptr %.11 to i64
  %i.de = sub i64 %i.a, %.11449
  %scevgep450 = getelementptr i8, ptr %.11, i64 %i.de
  br label %.lr.ph425

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %bb.aw
  %.12424 = phi ptr [ %i.dh, %bb.aw ], [ %.11, %.lr.ph425.preheader ] ; 3 uses
  %i.df = load i8, ptr %.12424, align 1, !tbaa !35
  %i.dg = icmp eq i8 %i.df, 48
  br i1 %i.dg, label %bb.aw, label %.critedge16

bb.aw:                                            ; preds = %.lr.ph425
  %i.dh = getelementptr inbounds nuw i8, ptr %.12424, i64 1 ; 2 uses
  %.not344 = icmp eq ptr %i.dh, %1
  br i1 %.not344, label %.critedge16, label %.lr.ph425, !llvm.loop !97

.critedge16:                                      ; preds = %.lr.ph425, %bb.aw, %.critedge364
  %.12.lcssa = phi ptr [ %.11, %.critedge364 ], [ %scevgep450, %bb.aw ], [ %.12424, %.lr.ph425 ] ; 11 uses
  %.not375429 = icmp eq ptr %.12.lcssa, %1
  br i1 %.not375429, label %.critedge18.thread, label %.lr.ph432

.lr.ph432:                                        ; preds = %.critedge16
  %i.di = load i8, ptr %.12.lcssa, align 1, !tbaa !35 ; 2 uses
  %i.dj = add i8 %i.di, -48
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.ax, label %.critedge18

bb.ax:                                            ; preds = %.lr.ph432
  store i8 %i.di, ptr %.4297.sroa.phi, align 1, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 1 ; 4 uses
  %i.dm = add nuw nsw i64 %.4297, 1               ; 3 uses
  %.not375 = icmp eq ptr %i.dl, %1
  br i1 %.not375, label %.critedge18.thread.thread, label %.lr.ph432.1

.lr.ph432.1:                                      ; preds = %bb.ax
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !35  ; 2 uses
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.ay, label %.critedge18

bb.ay:                                            ; preds = %.lr.ph432.1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dm
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 2 ; 4 uses
  %i.ds = or disjoint i64 %.4297, 2               ; 3 uses
  %.not375.1 = icmp eq ptr %i.dr, %1
  br i1 %.not375.1, label %.critedge18.thread.thread, label %.lr.ph432.2

.lr.ph432.2:                                      ; preds = %bb.ay
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !35  ; 2 uses
  %i.du = add i8 %i.dt, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %bb.az, label %.critedge18

bb.az:                                            ; preds = %.lr.ph432.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ds
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 3 ; 4 uses
  %i.dy = add nuw nsw i64 %.4297, 3               ; 3 uses
  %.not375.2 = icmp eq ptr %i.dx, %1
  br i1 %.not375.2, label %.critedge18.thread.thread, label %.lr.ph432.3

.lr.ph432.3:                                      ; preds = %bb.az
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !35  ; 2 uses
  %i.ea = add i8 %i.dz, -48
  %i.eb = icmp ult i8 %i.ea, 10
  br i1 %i.eb, label %bb.ba, label %.critedge18

bb.ba:                                            ; preds = %.lr.ph432.3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  store i8 %i.dz, ptr %i.ec, align 1, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 4 ; 4 uses
  %i.ee = or disjoint i64 %.4297, 4               ; 3 uses
  %.not375.3 = icmp eq ptr %i.ed, %1
  br i1 %.not375.3, label %.critedge18.thread.thread, label %.lr.ph432.4

.lr.ph432.4:                                      ; preds = %bb.ba
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !35  ; 2 uses
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10
  br i1 %i.eh, label %bb.bb, label %.critedge18

bb.bb:                                            ; preds = %.lr.ph432.4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ee
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !35
  %i.ej = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 5 ; 4 uses
  %i.ek = add nuw nsw i64 %.4297, 5               ; 3 uses
  %.not375.4 = icmp eq ptr %i.ej, %1
  br i1 %.not375.4, label %.critedge18.thread.thread, label %.lr.ph432.5

.lr.ph432.5:                                      ; preds = %bb.bb
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !35  ; 2 uses
  %i.em = add i8 %i.el, -48
  %i.en = icmp ult i8 %i.em, 10
  %or.cond30.5 = and i1 %i.en, %i.dd
  br i1 %or.cond30.5, label %bb.bc, label %.critedge18

bb.bc:                                            ; preds = %.lr.ph432.5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ek
  store i8 %i.el, ptr %i.eo, align 1, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %.12.lcssa, i64 6 ; 3 uses
  %i.eq = or disjoint i64 %.4297, 6               ; 2 uses
  %.not375.5 = icmp eq ptr %i.ep, %1
  br i1 %.not375.5, label %.critedge18.thread.thread, label %.critedge18

.critedge18:                                      ; preds = %bb.bc, %.lr.ph432.5, %.lr.ph432.4, %.lr.ph432.3, %.lr.ph432.2, %.lr.ph432.1, %.lr.ph432
  %.13431.lcssa = phi ptr [ %.12.lcssa, %.lr.ph432 ], [ %i.dl, %.lr.ph432.1 ], [ %i.dr, %.lr.ph432.2 ], [ %i.dx, %.lr.ph432.3 ], [ %i.ed, %.lr.ph432.4 ], [ %i.ej, %.lr.ph432.5 ], [ %i.ep, %bb.bc ] ; 3 uses
  %.5298430.lcssa = phi i64 [ %.4297, %.lr.ph432 ], [ %i.dm, %.lr.ph432.1 ], [ %i.ds, %.lr.ph432.2 ], [ %i.dy, %.lr.ph432.3 ], [ %i.ee, %.lr.ph432.4 ], [ %i.ek, %.lr.ph432.5 ], [ %i.eq, %bb.bc ] ; 2 uses
  switch i64 %.5298430.lcssa, label %.critedge18.thread.thread [
    i64 6, label %bb.bl
    i64 0, label %bb.bd
  ]

.critedge18.thread:                               ; preds = %.critedge16
  br i1 %i.dd, label %bb.bd, label %.critedge18.thread.thread

.critedge18.thread.thread:                        ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %.critedge18, %.critedge18.thread
  %.5298382 = phi i64 [ %.5298430.lcssa, %.critedge18 ], [ %.4297, %.critedge18.thread ], [ %i.dm, %bb.ax ], [ %i.ds, %bb.ay ], [ %i.dy, %bb.az ], [ %i.ee, %bb.ba ], [ %i.ek, %bb.bb ], [ %i.eq, %bb.bc ] ; 2 uses
  %.13379 = phi ptr [ %.13431.lcssa, %.critedge18 ], [ %.12.lcssa, %.critedge18.thread ], [ %i.dl, %bb.ax ], [ %i.dr, %bb.ay ], [ %i.dx, %bb.az ], [ %i.ed, %bb.ba ], [ %i.ej, %bb.bb ], [ %i.ep, %bb.bc ] ; 4 uses
  %i.er = icmp eq i64 %.5298382, 1
  %i.es = load i8, ptr %i.c, align 1
  %i.et = icmp eq i8 %i.es, 45
  %or.cond24 = select i1 %i.er, i1 %i.et, i1 false
  br i1 %or.cond24, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge18, %.critedge18.thread.thread, %.critedge18.thread
  %.13380 = phi ptr [ %.13431.lcssa, %.critedge18 ], [ %.13379, %.critedge18.thread.thread ], [ %.12.lcssa, %.critedge18.thread ]
  %i.eu = sub nsw i64 %.0292497508, %.3296
  %storemerge = select i1 %i.bv, i64 %i.eu, i64 %.2291512
  store i64 %storemerge, ptr %4, align 8, !tbaa !24
  br label %bb.bl

bb.be:                                            ; preds = %.critedge18.thread.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %.5298382
  %i.ew = call { ptr, i32 } @_ZN5boost8charconv6detail23from_chars_integer_implIlmEENS0_19from_chars_result_tIcEEPKcS6_RT_i(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 10) #13
  %i.ex = extractvalue { ptr, i32 } %i.ew, 1      ; 3 uses
  %i.ey = load i64, ptr %4, align 8, !tbaa !24
  %i.ez = add nsw i64 %i.ey, %.2288498506         ; 3 uses
  store i64 %i.ez, ptr %4, align 8, !tbaa !24
  switch i32 %i.ex, label %bb.bg [
    i32 22, label %bb.bl
    i32 34, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  br i1 %i.bv, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not337, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fa = load i64, ptr %3, align 8, !tbaa !24
  %i.fb = call noundef i32 @_ZN5boost8charconv6detail10num_digitsImEEiT_(i64 noundef %i.fa) #13
  %i.fc = sext i32 %i.fb to i64
  %.neg345 = sub nsw i64 %.0292497508, %i.fc
  %i.fd = load i64, ptr %4, align 8, !tbaa !24
  %i.fe = add i64 %.neg345, %i.fd
  br label %.sink.split533

bb.bj:                                            ; preds = %bb.bh
  %.neg = sub nsw i64 %.0292497508, %.3296
  %i.ff = add i64 %.neg, %i.ez
  br label %.sink.split533

bb.bk:                                            ; preds = %bb.bg
  %i.fg = add nsw i64 %i.ez, %.2291512
  store i64 %i.fg, ptr %4, align 8, !tbaa !24
  br label %bb.bl

.sink.split533:                                   ; preds = %bb.bi, %bb.bj
  %.sink534 = phi i64 [ %i.ff, %bb.bj ], [ %i.fe, %bb.bi ]
  store i64 %.sink534, ptr %4, align 8, !tbaa !24
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split533, %.critedge18, %bb.bf, %bb.be, %bb.bk, %bb.bd
  %.sroa.0279.6 = phi ptr [ %.13431.lcssa, %.critedge18 ], [ %.13380, %bb.bd ], [ %0, %bb.be ], [ %.13379, %bb.bf ], [ %.13379, %bb.bk ], [ %.13379, %.sink.split533 ]
  %.sroa.29.6 = phi i32 [ 34, %.critedge18 ], [ 0, %bb.bd ], [ %i.ex, %bb.be ], [ %i.ex, %bb.bf ], [ 0, %bb.bk ], [ 0, %.sink.split533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.am, %bb.al, %bb.ai, %bb.aj, %bb.ah, %bb.ag, %bb.z, %bb.aa, %bb.y, %._crit_edge, %bb.bl, %._crit_edge403
  %.sroa.0279.7 = phi ptr [ %0, %bb.am ], [ %0, %._crit_edge ], [ %1, %._crit_edge403 ], [ %0, %bb.y ], [ %0, %bb.ag ], [ %0, %bb.ah ], [ %.10514, %bb.al ], [ %.sroa.0279.6, %bb.bl ], [ %0, %bb.ak ], [ %.4.lcssa, %bb.aa ], [ %.4.lcssa, %bb.z ], [ %.10515, %bb.aj ], [ %.10515, %bb.ai ], [ %i.cp, %bb.ap ], [ %0, %bb.ao ]
  %.sroa.29.7 = phi i32 [ 22, %bb.am ], [ 22, %._crit_edge ], [ 0, %._crit_edge403 ], [ %i.ar, %bb.y ], [ 22, %bb.ag ], [ %i.ck, %bb.ah ], [ 22, %bb.al ], [ %.sroa.29.6, %bb.bl ], [ 22, %bb.ak ], [ 0, %bb.aa ], [ %i.ar, %bb.z ], [ 0, %bb.aj ], [ %i.ck, %bb.ai ], [ %i.cw, %bb.ap ], [ %i.cw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.critedge357

.critedge357:                                     ; preds = %bb.s, %bb.k, %bb.t, %bb.u, %bb.v, %bb.b, %bb.j, %bb.h, %bb.i, %bb.g, %bb.r, %bb.o, %bb.m, %bb.n, %bb.l, %bb.bm, %.critedge.thread, %bb.a
  %.sroa.0279.10 = phi ptr [ %0, %bb.a ], [ %i.j, %bb.k ], [ %0, %bb.b ], [ %i.s, %bb.t ], [ %i.s, %bb.u ], [ %i.h, %bb.g ], [ %i.p, %bb.v ], [ %i.s, %bb.r ], [ %i.j, %bb.j ], [ %i.j, %bb.i ], [ %i.h, %bb.h ], [ %i.s, %bb.s ], [ %.sroa.0279.7, %bb.bm ], [ %i.n, %bb.o ], [ %i.n, %bb.n ], [ %i.l, %bb.m ], [ %i.l, %bb.l ], [ %.3389, %.critedge.thread ]
  %.sroa.29.10 = phi i32 [ 22, %bb.a ], [ 75, %bb.k ], [ 22, %bb.b ], [ 95, %bb.t ], [ 95, %bb.u ], [ 22, %bb.g ], [ 95, %bb.v ], [ 22, %bb.r ], [ 22, %bb.j ], [ 22, %bb.i ], [ 22, %bb.h ], [ 22, %bb.s ], [ %.sroa.29.7, %bb.bm ], [ 22, %bb.o ], [ 22, %bb.n ], [ 22, %bb.m ], [ 22, %bb.l ], [ 0, %.critedge.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0279.10, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.29.10, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail17from_chars_strtodIfEENS0_19from_chars_result_tIcEEPKcS6_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 7 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1024
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !35
  %i.i = tail call ptr @localeconv() #13
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35    ; 2 uses
  %.not.i.i = icmp eq i8 %i.k, 46
  br i1 %.not.i.i, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 46) #14 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.l, null
  br i1 %.not4.i.i, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.k, ptr %i.l, align 1, !tbaa !35
  br label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i

_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.m = call float @strtof(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #13 ; 3 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, %1
  %or.cond.i = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond.i, label %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i
  %i.q = fcmp une float %i.m, +inf
  br i1 %i.q, label %bb.f, label %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit

bb.f:                                             ; preds = %bb.e
  store float %i.m, ptr %2, align 4, !tbaa !28
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  br label %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit

_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit: ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i, %bb.e, %bb.f
  %.sroa.5.2.i = phi i32 [ 0, %bb.f ], [ 34, %bb.e ], [ 34, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i ]
  %.sroa.0.2.i = phi ptr [ %i.u, %bb.f ], [ %1, %bb.e ], [ %0, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.v = add nuw nsw i64 %i.f, 1
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #15 ; 7 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %0, i64 %i.f, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !35
  %i.z = tail call ptr @localeconv() #13
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35  ; 2 uses
  %.not.i.i15 = icmp eq i8 %i.ab, 46
  br i1 %.not.i.i15, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.w, i32 noundef 46) #14 ; 2 uses
  %.not4.i.i16 = icmp eq ptr %i.ac, null
  br i1 %.not4.i.i16, label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  br label %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17

_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ad = call float @strtof(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.ae = fcmp oeq float %i.ad, 0.000000e+00
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = icmp eq ptr %i.af, %1
  %or.cond.i18 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i18, label %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23, label %bb.k

bb.k:                                             ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17
  %i.ah = fcmp une float %i.ad, +inf
  br i1 %i.ah, label %bb.l, label %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23

bb.l:                                             ; preds = %bb.k
  store float %i.ad, ptr %2, align 4, !tbaa !28
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.w to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  br label %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23

_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23: ; preds = %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17, %bb.k, %bb.l
  %.sroa.5.2.i19 = phi i32 [ 0, %bb.l ], [ 34, %bb.k ], [ 34, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17 ]
  %.sroa.0.2.i20 = phi ptr [ %i.al, %bb.l ], [ %1, %bb.k ], [ %0, %_ZN5boost8charconv6detail21convert_string_localeEPc.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  tail call void @free(ptr noundef nonnull %i.w) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23, %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit
  %.sroa.0.2.i.pn = phi ptr [ %.sroa.0.2.i, %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit ], [ %.sroa.0.2.i20, %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23 ], [ %0, %bb.g ]
  %.sroa.5.2.i.pn = phi i32 [ %.sroa.5.2.i, %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit ], [ %.sroa.5.2.i19, %_ZN5boost8charconv6detail22from_chars_strtod_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_Pc.exit23 ], [ 12, %bb.g ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.sroa.0.2.i.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.sroa.5.2.i.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost8charconv6detail15is_integer_charEc(i8 noundef signext %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost8charconv6detail11is_hex_charEc(i8 noundef signext %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  %i.c = and i8 %0, -33
  %i.d = add i8 %i.c, -65
  %i.e = icmp ult i8 %i.d, 6
  %i.f = or i1 %i.b, %i.e
  ret i1 %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail19from_chars_dispatchEPKcS3_Rmi(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ule ptr %0, %1
  %i.b = add i32 %3, -2
  %i.c = icmp ult i32 %i.b, 35
  %or.cond3.i.i = and i1 %i.a, %i.c
  br i1 %or.cond3.i.i, label %bb.b, label %_ZN5boost8charconv6detail10from_charsImEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %3 to i64                  ; 8 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN5boost8charconv6detail10from_charsImEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !35      ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 45, label %_ZN5boost8charconv6detail10from_charsImEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit
    i8 43, label %_ZN5boost8charconv6detail10from_charsImEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit
    i8 32, label %_ZN5boost8charconv6detail10from_charsImEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = udiv i64 -1, %i.d                        ; 2 uses
  %i.g = urem i64 -1, %i.d
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = zext i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i64                      ; 3 uses
  %.not95.i.i = icmp samesign ult i64 %i.n, %i.d
  br i1 %.not95.i.i, label %.preheader.i.i, label %_ZN5boost8charconv6detail10from_charsImEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit

.preheader.i.i:                                   ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detailL11log_2_tableE, i64 %i.d
  %i.p = load double, ptr %i.o, align 8, !tbaa !30
  %i.q = fmul double %i.p, 6.400000e+01
  %i.r = fptosi double %i.q to i64
  %invariant.smin.i.i = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.j) ; 4 uses
  %.071116.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
end_hunk_1
