Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_libraw?download=true
inline.NumInlined: 308
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN21pana_cs6_page_decoder9read_pageEv:bb.a
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !118
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.fi, align 8, !tbaa !168
  %i.fj = add i32 %i.f, 16
  store i32 %i.fj, ptr %i.e, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN21pana_cs6_page_decoder11read_page12Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 17 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !167  ; 18 uses
  %i.g = sub i32 %i.d, %i.f
  %i.h = icmp ult i32 %i.g, 16
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.i, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = add i32 %i.f, 15
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !103
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 4
  %i.p = add i32 %i.f, 14
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !103
  %i.t = lshr i8 %i.s, 4
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.o, %i.u
  store i32 %i.v, ptr %0, align 8, !tbaa !118
  %i.w = load i8, ptr %i.r, align 1, !tbaa !103
  %i.x = and i8 %i.w, 15
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = add i32 %i.f, 13
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !103
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !118
  %i.ah = add i32 %i.f, 12
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !103
  %i.al = lshr i8 %i.ak, 6
  %i.am = zext nneg i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !118
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !103
  %i.ap = add i32 %i.f, 11
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !103
  %i.at = tail call i8 @llvm.fshl.i8(i8 %i.ao, i8 %i.as, i8 2)
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !118
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !103
  %i.ax = add i32 %i.f, 10
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !103
  %i.bb = tail call i8 @llvm.fshl.i8(i8 %i.aw, i8 %i.ba, i8 2)
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !118
  %i.be = load i8, ptr %i.az, align 1, !tbaa !103
  %i.bf = add i32 %i.f, 9
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bg ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !103
  %i.bj = tail call i8 @llvm.fshl.i8(i8 %i.be, i8 %i.bi, i8 2)
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !118
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !103
  %i.bn = lshr i8 %i.bm, 4
  %i.bo = and i8 %i.bn, 3
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !118
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !103
  %i.bs = add i32 %i.f, 8
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !103
  %i.bw = tail call i8 @llvm.fshl.i8(i8 %i.br, i8 %i.bv, i8 4)
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !118
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !103
  %i.ca = add i32 %i.f, 7
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !103
  %i.ce = tail call i8 @llvm.fshl.i8(i8 %i.bz, i8 %i.cd, i8 4)
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !118
  %i.ch = load i8, ptr %i.cc, align 1, !tbaa !103
  %i.ci = add i32 %i.f, 6
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj ; 3 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !103
  %i.cm = tail call i8 @llvm.fshl.i8(i8 %i.ch, i8 %i.cl, i8 4)
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !118
  %i.cp = load i8, ptr %i.ck, align 1, !tbaa !103
  %i.cq = lshr i8 %i.cp, 2
  %i.cr = and i8 %i.cq, 3
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !118
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !103
  %i.cv = add i32 %i.f, 5
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !103
  %i.cz = tail call i8 @llvm.fshl.i8(i8 %i.cu, i8 %i.cy, i8 6)
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.da, ptr %i.db, align 4, !tbaa !118
  %i.dc = load i8, ptr %i.cx, align 1, !tbaa !103
  %i.dd = add i32 %i.f, 4
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !103
  %i.dh = tail call i8 @llvm.fshl.i8(i8 %i.dc, i8 %i.dg, i8 6)
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !118
  %i.dk = load i8, ptr %i.df, align 1, !tbaa !103
  %i.dl = add i32 %i.f, 3
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !103
  %i.dp = tail call i8 @llvm.fshl.i8(i8 %i.dk, i8 %i.do, i8 6)
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !118
  %i.ds = load i8, ptr %i.dn, align 1, !tbaa !103
  %i.dt = and i8 %i.ds, 3
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !118
  %i.dw = add i32 %i.f, 2
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !103
  %i.ea = zext i8 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !118
  %i.ec = add i32 %i.f, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !103
  %i.eg = zext i8 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !118
  %i.ei = zext i32 %i.f to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !103
  %i.el = zext i8 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.el, ptr %i.em, align 4, !tbaa !118
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.en, align 8, !tbaa !168
  %i.eo = add i32 %i.f, 16
  store i32 %i.eo, ptr %i.e, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20panasonicC6_load_rawEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.pana_cs6_page_decoder, align 8 ; 14 uses
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.e = load i32, ptr %i.d, align 8, !tbaa !169
  %i.f = icmp eq i32 %i.e, 12                     ; 9 uses
  %i.g = select i1 %i.f, i32 14, i32 11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !77   ; 2 uses
  %2 = udiv i16 %i.j, 14
  %i.k = udiv i16 %i.j, 11
  %.v = select i1 %i.f, i16 %2, i16 %i.k
  %.v.fr = freeze i16 %.v                         ; 2 uses
  %.zext = zext i16 %.v.fr to i32                 ; 3 uses
  %i.l = shl nuw nsw i32 %.zext, 4                ; 2 uses
  %i.m = select i1 %i.f, i32 128, i32 512
  %i.n = select i1 %i.f, i32 2048, i32 8192
  %i.o = select i1 %i.f, i32 16383, i32 65535     ; 2 uses
  %i.p = shl nuw nsw i32 %.zext, 8                ; 2 uses
  %i.q = zext nneg i32 %i.p to i64                ; 4 uses
  %.not127 = icmp eq i16 %.v.fr, 0
  br i1 %.not127, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.a
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #16
          to label %.noexc unwind label %bb.y     ; 9 uses

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.a
  %3 = load i16, ptr %i.h, align 8, !tbaa !78
  %4 = icmp ugt i16 %3, 15
  br i1 %4, label %.lr.ph142.split.us.preheader, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.noexc:                                           ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  store i8 0, ptr %i.r, align 1, !tbaa !103
  %i.s = add nsw i64 %i.q, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i8 0, i64 %i.s, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %5 = load i16, ptr %i.h, align 8, !tbaa !78
  %6 = icmp ugt i16 %5, 15
  br i1 %6, label %.lr.ph142, label %bb.aa

.lr.ph142:                                        ; preds = %.noexc
  %i.w = zext nneg i32 %i.l to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = select i1 %i.f, i16 4095, i16 16383
  br label %.lr.ph142.split.us

.lr.ph142.split.us.preheader:                     ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %7 = zext nneg i32 %i.l to i64
  br label %.lr.ph142.split

.lr.ph142.split.us:                               ; preds = %.lr.ph142, %.split140.us
  %.085141.us = phi i32 [ %i.gt, %.split140.us ], [ 0, %.lr.ph142 ] ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !79  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.r, i64 noundef %i.w, i64 noundef 16)
          to label %bb.b unwind label %.loopexit127.split.us, !call_target !130

bb.b:                                             ; preds = %.lr.ph142.split.us
  %.not.us = icmp eq i32 %i.al, 16
  br i1 %.not.us, label %.split.us, label %.split145.us

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i32 0, ptr %i.x, align 8, !tbaa !167
  store i32 %i.p, ptr %i.y, align 4, !tbaa !166
  store i8 0, ptr %i.z, align 8, !tbaa !168
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !164
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split.us, %._crit_edge.us
  %.084139.us = phi i32 [ 0, %.split.us ], [ %i.gy, %._crit_edge.us ] ; 2 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.an = add nuw nsw i32 %.084139.us, %.085141.us
  %i.ao = load i32, ptr %i.ac, align 8, !tbaa !124
  %i.ap = mul i32 %i.ao, %i.an
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ar
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %.lr.ph.us
  %.077138.us = phi i32 [ 0, %.lr.ph.us ], [ %i.gs, %bb.x ]
  %.182137.us = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.x ]
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN21pana_cs6_page_decoder9read_pageEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %._crit_edge unwind label %.loopexit.split.us

._crit_edge:                                      ; preds = %bb.d
  %.promoted.us.pre = load i8, ptr %i.z, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !164 ; 17 uses
  %.not.i.us = icmp eq ptr %i.at, null
  br i1 %.not.i.us, label %.split148.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.y, align 4, !tbaa !166
  %i.av = load i32, ptr %i.x, align 8, !tbaa !167 ; 18 uses
  %i.aw = sub i32 %i.au, %i.av
  %i.ax = icmp ult i32 %i.aw, 16
  br i1 %i.ax, label %.split148.us, label %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us

_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us: ; preds = %bb.f
  %i.ay = add i32 %i.av, 15
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !103
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 4
  %i.be = add i32 %i.av, 14
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !103 ; 2 uses
  %i.bi = lshr i8 %i.bh, 4
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bd, %i.bj
  store i32 %i.bk, ptr %1, align 8, !tbaa !118
  %i.bl = and i8 %i.bh, 15
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = add i32 %i.av, 13
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !103
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bn, %i.bs
  store i32 %i.bt, ptr %i.ad, align 4, !tbaa !118
  %i.bu = add i32 %i.av, 12
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !103 ; 2 uses
  %i.by = lshr i8 %i.bx, 6
  %i.bz = add i32 %i.av, 11
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !103 ; 2 uses
  %i.cd = tail call i8 @llvm.fshl.i8(i8 %i.bx, i8 %i.cc, i8 2)
  %i.ce = add i32 %i.av, 10
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !103 ; 2 uses
  %i.ci = tail call i8 @llvm.fshl.i8(i8 %i.cc, i8 %i.ch, i8 2)
  %i.cj = add i32 %i.av, 9
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !103 ; 3 uses
  %i.cn = tail call i8 @llvm.fshl.i8(i8 %i.ch, i8 %i.cm, i8 2)
  %i.co = lshr i8 %i.cm, 4
  %i.cp = and i8 %i.co, 3
  %i.cq = add i32 %i.av, 8
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !103 ; 2 uses
  %i.cu = tail call i8 @llvm.fshl.i8(i8 %i.cm, i8 %i.ct, i8 4)
  %i.cv = add i32 %i.av, 7
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !103 ; 2 uses
  %i.cz = tail call i8 @llvm.fshl.i8(i8 %i.ct, i8 %i.cy, i8 4)
  %i.da = add i32 %i.av, 6
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !103 ; 3 uses
  %i.de = tail call i8 @llvm.fshl.i8(i8 %i.cy, i8 %i.dd, i8 4)
  %i.df = insertelement <8 x i8> poison, i8 %i.by, i64 0
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cd, i64 1
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.ci, i64 2
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.cn, i64 3
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.cp, i64 4
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.cu, i64 5
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.cz, i64 6
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 7
  %i.dn = zext <8 x i8> %i.dm to <8 x i32>
  store <8 x i32> %i.dn, ptr %i.ae, align 8, !tbaa !118
  %i.do = lshr i8 %i.dd, 2
  %i.dp = and i8 %i.do, 3
  %i.dq = add i32 %i.av, 5
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !103 ; 2 uses
  %i.du = tail call i8 @llvm.fshl.i8(i8 %i.dd, i8 %i.dt, i8 6)
  %i.dv = add i32 %i.av, 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !103 ; 2 uses
  %i.dz = tail call i8 @llvm.fshl.i8(i8 %i.dt, i8 %i.dy, i8 6)
  %i.ea = add i32 %i.av, 3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !103 ; 2 uses
  %i.ee = tail call i8 @llvm.fshl.i8(i8 %i.dy, i8 %i.ed, i8 6)
  %i.ef = and i8 %i.ed, 3
  %i.eg = add i32 %i.av, 2
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !103
  %i.ek = add i32 %i.av, 1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !103
  %i.eo = zext i32 %i.av to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !103
  %i.er = insertelement <8 x i8> poison, i8 %i.dp, i64 0
  %i.es = insertelement <8 x i8> %i.er, i8 %i.du, i64 1
  %i.et = insertelement <8 x i8> %i.es, i8 %i.dz, i64 2
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.ee, i64 3
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.ef, i64 4
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.ej, i64 5
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.en, i64 6
  %i.ey = insertelement <8 x i8> %i.ex, i8 %i.eq, i64 7
  %i.ez = zext <8 x i8> %i.ey to <8 x i32>
  store <8 x i32> %i.ez, ptr %i.af, align 8, !tbaa !118
  store i8 0, ptr %i.z, align 8, !tbaa !168
  %i.fa = add i32 %i.av, 16
  store i32 %i.fa, ptr %i.x, align 8, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us
  %.promoted.us = phi i8 [ %.promoted.us.pre, %._crit_edge ], [ 0, %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.w, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ %.182137.us, %bb.g ] ; 2 uses
  %.072136.us = phi i32 [ %i.gr, %bb.w ], [ 0, %bb.g ] ; 3 uses
  %.073135.us = phi i32 [ %.174.us, %bb.w ], [ 0, %bb.g ]
  %.075134.us = phi i32 [ %.176.us, %bb.w ], [ 0, %bb.g ]
  %i.fb = phi i8 [ %i.fv, %bb.w ], [ %.promoted.us, %bb.g ] ; 7 uses
  %i.fc = urem i32 %.072136.us, 3
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.f, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fe = icmp ult i8 %i.fb, 14
  br i1 %i.fe, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us, label %.thread.us

bb.k:                                             ; preds = %bb.i
  %i.ff = icmp ult i8 %i.fb, 18
  br i1 %i.ff, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us, label %.thread.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us: ; preds = %bb.k, %bb.j
  %i.fg = add nuw nsw i8 %i.fb, 1                 ; 2 uses
  store i8 %i.fg, ptr %i.z, align 8, !tbaa !168
  %.pn126.us = zext nneg i8 %i.fb to i64
  %.in.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn126.us
  %i.fh = load i32, ptr %.in.us, align 4, !tbaa !118
  %.fr.us = freeze i32 %i.fh                      ; 3 uses
  %i.fi = icmp ugt i32 %.fr.us, 3
  br i1 %i.fi, label %.split150.us, label %bb.l

bb.l:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us
  %i.fj = icmp eq i32 %.fr.us, 3
  %spec.select124.us = select i1 %i.fj, i32 4, i32 %.fr.us
  br label %.thread.us

.thread.us:                                       ; preds = %bb.l, %bb.k, %bb.j
  %i.fk = phi i8 [ %i.fb, %bb.k ], [ %i.fg, %bb.l ], [ %i.fb, %bb.j ]
  %i.fl = phi i32 [ 0, %bb.k ], [ %spec.select124.us, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.fm = shl nuw nsw i32 %i.m, %i.fl
  %i.fn = shl nuw nsw i32 1, %i.fl
  br label %bb.m

bb.m:                                             ; preds = %.thread.us, %bb.h
  %i.fo = phi i8 [ %i.fk, %.thread.us ], [ %i.fb, %bb.h ] ; 6 uses
  %.176.us = phi i32 [ %i.fn, %.thread.us ], [ %.075134.us, %bb.h ] ; 2 uses
  %.174.us = phi i32 [ %i.fm, %.thread.us ], [ %.073135.us, %bb.h ] ; 4 uses
  br i1 %i.f, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fp = icmp ult i8 %i.fo, 14
  br i1 %i.fp, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

bb.o:                                             ; preds = %bb.m
  %i.fq = icmp ult i8 %i.fo, 18
  br i1 %i.fq, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split: ; preds = %bb.o, %bb.n
  %i.fr = add nuw nsw i8 %i.fo, 1                 ; 2 uses
  store i8 %i.fr, ptr %i.z, align 8, !tbaa !168
  %i.fs = zext nneg i8 %i.fo to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !118
  br label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us: ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, %bb.o, %bb.n
  %i.fv = phi i8 [ %i.fo, %bb.o ], [ %i.fo, %bb.n ], [ %i.fr, %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split ]
  %i.fw = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.fu, %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split ] ; 5 uses
  %i.fx = and i32 %.072136.us, 1
  %i.fy = zext nneg i32 %i.fx to i64              ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !118
  %.not93.us = icmp eq i32 %i.ga, 0
  br i1 %.not93.us, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us
  %i.gb = mul i32 %i.fw, %.176.us                 ; 3 uses
  %i.gc = icmp ult i32 %.174.us, %i.n
  br i1 %i.gc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fy
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !118 ; 2 uses
  %i.gf = icmp ugt i32 %i.ge, %.174.us
  br i1 %i.gf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gg = sub i32 %i.gb, %.174.us
  %i.gh = add i32 %i.gg, %i.ge
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.070.us = phi i32 [ %i.gh, %bb.r ], [ %i.gb, %bb.q ], [ %i.gb, %bb.p ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fy
  store i32 %.070.us, ptr %i.gi, align 4, !tbaa !118
  br label %bb.w

bb.t:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !118
  %.not94.us = icmp eq i32 %i.fw, 0
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fy ; 2 uses
  br i1 %.not94.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.fw, ptr %i.gj, align 4, !tbaa !118
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !118
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.171.us = phi i32 [ %.070.us, %bb.s ], [ %i.fw, %bb.u ], [ %i.gk, %bb.v ] ; 2 uses
  %i.gl = add i32 %.171.us, -15                   ; 2 uses
  %.not95.us = icmp ugt i32 %i.gl, %i.o
  %i.gm = add i32 %.171.us, 2147483633
  %isneg.us = icmp slt i32 %i.gm, 0
  %i.gn = select i1 %isneg.us, i16 %i.ag, i16 0
  %i.go = and i32 %i.gl, %i.o
  %i.gp = trunc nuw i32 %i.go to i16
  %.sink = select i1 %.not95.us, i16 %i.gn, i16 %i.gp
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %.sink, ptr %i.gq, align 2, !tbaa !93
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gr = add nuw nsw i32 %.072136.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, %i.g
  br i1 %exitcond.not, label %bb.x, label %bb.h, !llvm.loop !170

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.gs = add nuw nsw i32 %.077138.us, 1          ; 2 uses
  %exitcond154.not = icmp eq i32 %i.gs, %.zext
  br i1 %exitcond154.not, label %._crit_edge.us, label %bb.c, !llvm.loop !171

.split140.us:                                     ; preds = %._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.gt = add nuw nsw i32 %.085141.us, 16         ; 2 uses
  %i.gu = load i16, ptr %i.h, align 8, !tbaa !78
  %i.gv = zext i16 %i.gu to i32
  %i.gw = add nsw i32 %i.gv, -15
  %i.gx = icmp slt i32 %i.gt, %i.gw
  br i1 %i.gx, label %.lr.ph142.split.us, label %bb.aa, !llvm.loop !172

._crit_edge.us:                                   ; preds = %bb.x
  %i.gy = add nuw nsw i32 %.084139.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.gy, 16
  br i1 %exitcond155.not, label %.split140.us, label %.lr.ph.us, !llvm.loop !173

.loopexit127.split.us:                            ; preds = %.lr.ph142.split.us
  %lpad.loopexit129.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split.us:                               ; preds = %bb.d
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = tail call ptr @__cxa_begin_catch(ptr %i.ha) #14 ; 0 uses
  %i.hc = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 1, ptr %i.hc, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.hc, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.af unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit104 unwind label %bb.ae

bb.aa:                                            ; preds = %.split140.us, %.noexc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.split140, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.aa
  ret void

.lr.ph142.split:                                  ; preds = %.lr.ph142.split.us.preheader, %.split140
  %.085141 = phi i32 [ %i.hj, %.split140 ], [ 0, %.lr.ph142.split.us.preheader ]
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !79  ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !80
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  %8 = tail call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef null, i64 noundef %7, i64 noundef 16), !call_target !130
  %.not = icmp eq i32 %8, 16
  br i1 %.not, label %.split140, label %.split145.us

.split145.us:                                     ; preds = %bb.b, %.lr.ph142.split
  %.sroa.0.1174186 = phi ptr [ null, %.lr.ph142.split ], [ %i.r, %bb.b ] ; 2 uses
  %.sroa.16.1178183 = phi i64 [ 0, %.lr.ph142.split ], [ %i.v, %bb.b ]
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.hi, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.af unwind label %.loopexit127

.split140:                                        ; preds = %.lr.ph142.split
  %i.hj = add nuw nsw i32 %.085141, 16            ; 2 uses
  %i.hk = load i16, ptr %i.h, align 8, !tbaa !78
  %i.hl = zext i16 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -15
  %i.hn = icmp slt i32 %i.hj, %i.hm
  br i1 %i.hn, label %.lr.ph142.split, label %_ZNSt6vectorIhSaIhEED2Ev.exit, !llvm.loop !172

.split148.us:                                     ; preds = %bb.e, %bb.f
  %i.ho = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.ho, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.ho, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %.noexc100 unwind label %.loopexit.split-lp

.noexc100:                                        ; preds = %.split148.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split148.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.split150.us:                                     ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us
  %i.hp = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.hp, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.hp, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.af unwind label %bb.ab

bb.ab:                                            ; preds = %.split150.us
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split.us, %.loopexit.split-lp, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.hq, %bb.ab ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.ad

.loopexit127:                                     ; preds = %.split145.us
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %.sroa.0.1174186, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIhSaIhEED2Ev.exit104, label %bb.ad

bb.ad:                                            ; preds = %.loopexit127.split.us, %bb.ac, %.loopexit127
  %.pn97.pn196 = phi { ptr, i32 } [ %lpad.loopexit.split-lp132, %.loopexit127 ], [ %lpad.loopexit129.us, %.loopexit127.split.us ], [ %.pn, %bb.ac ]
  %.sroa.0.1176195 = phi ptr [ %.sroa.0.1174186, %.loopexit127 ], [ %i.r, %.loopexit127.split.us ], [ %i.r, %bb.ac ] ; 2 uses
  %.sroa.16.1178182194 = phi i64 [ %.sroa.16.1178183, %.loopexit127 ], [ %i.v, %.loopexit127.split.us ], [ %i.v, %bb.ac ]
  %i.hr = ptrtoint ptr %.sroa.0.1176195 to i64
  %i.hs = sub i64 %.sroa.16.1178182194, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1176195, i64 noundef %i.hs) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit104

_ZNSt6vectorIhSaIhEED2Ev.exit104:                 ; preds = %bb.z, %.loopexit127, %bb.ad
  %.pn97.pn123 = phi { ptr, i32 } [ %.pn97.pn196, %bb.ad ], [ %lpad.loopexit.split-lp132, %.loopexit127 ], [ %i.hd, %bb.z ]
  resume { ptr, i32 } %.pn97.pn123

bb.ae:                                            ; preds = %bb.z
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  tail call void @__clang_call_terminate(ptr %i.hu) #18
  unreachable

bb.af:                                            ; preds = %.split150.us, %.split145.us, %bb.y
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20panasonicC7_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381912 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !169
  %i.d = icmp eq i32 %i.c, 14                     ; 3 uses
  %i.e = select i1 %i.d, i32 9, i32 10            ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !77   ; 2 uses
  %1 = udiv i16 %i.h, 9
  %i.i = udiv i16 %i.h, 10
  %.v = select i1 %i.d, i16 %1, i16 %i.i
  %.zext = zext nneg i16 %.v to i32               ; 2 uses
  %i.j = shl nuw nsw i32 %.zext, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.k, i64 noundef 1) ; 3 uses
  %i.m = load i16, ptr %i.f, align 8, !tbaa !78
  %i.n = icmp ugt i16 %i.m, 15
  br i1 %i.n, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %bb.a
  %i.o = shl nuw nsw i32 %.zext, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = zext nneg i32 %i.e to i64                ; 2 uses
  %invariant.op = sub i32 1, %i.e
  br label %bb.b

._crit_edge123:                                   ; preds = %bb.d, %bb.a
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  ret void

bb.b:                                             ; preds = %.lr.ph122, %bb.d
  %.0102120 = phi i32 [ 0, %.lr.ph122 ], [ %i.ab, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.l, i64 noundef %i.p, i64 noundef 16), !call_target !130
  %.not = icmp eq i32 %i.x, 16
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.z = load i32, ptr %i.r, align 8, !tbaa !124
  %.pre = load i16, ptr %i.g, align 2, !tbaa !77  ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.aa, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.ab = add nuw nsw i32 %.0102120, 16           ; 2 uses
  %i.ac = load i16, ptr %i.f, align 8, !tbaa !78
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -15
  %i.af = icmp slt i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge123, !llvm.loop !174

bb.e:                                             ; preds = %.preheader, %._crit_edge
  %i.ag = phi i16 [ %.pre, %.preheader ], [ %i.ix, %._crit_edge ] ; 4 uses
  %i.ah = phi i16 [ %.pre, %.preheader ], [ %i.iy, %._crit_edge ] ; 2 uses
  %.0103119 = phi i32 [ 0, %.preheader ], [ %i.iz, %._crit_edge ] ; 2 uses
  %.0104118 = phi ptr [ %i.l, %.preheader ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.ai = add nuw nsw i32 %.0103119, %.0102120
  %i.aj = mul i32 %i.z, %i.ai
  %i.ak = lshr i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.al ; 2 uses
  %i.an = zext i16 %i.ah to i32
  %.not108109 = icmp samesign ugt i32 %i.e, %i.an
  br i1 %.not108109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !169
  switch i32 %i.ao, label %.lr.ph.split [
    i32 14, label %.lr.ph.split.us
    i32 12, label %.lr.ph.split.us112
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.1110.us = phi ptr [ %i.es, %.lr.ph.split.us ], [ %.0104118, %.lr.ph ] ; 17 uses
  %i.ap = load i8, ptr %.1110.us, align 1, !tbaa !103
  %i.aq = zext i8 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %.1110.us, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !103
  %i.at = and i8 %i.as, 63
  %i.au = zext nneg i8 %i.at to i16
  %i.av = shl nuw nsw i16 %i.au, 8
  %i.aw = or disjoint i16 %i.av, %i.aq
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv129 ; 9 uses
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !93
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !103
  %i.az = lshr i8 %i.ay, 6
  %i.ba = zext nneg i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %.1110.us, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !103
  %i.bd = zext i8 %i.bc to i16
  %i.be = shl nuw nsw i16 %i.bd, 2
  %i.bf = or disjoint i16 %i.be, %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %.1110.us, i64 3 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !103
  %i.bi = and i8 %i.bh, 15
  %i.bj = zext nneg i8 %i.bi to i16
  %i.bk = shl nuw nsw i16 %i.bj, 10
  %i.bl = or disjoint i16 %i.bk, %i.bf
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !93
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !103
  %i.bo = lshr i8 %i.bn, 4
  %i.bp = zext nneg i8 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %.1110.us, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !103
  %i.bs = zext i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 4
  %i.bu = or disjoint i16 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %.1110.us, i64 5 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !103
  %i.bx = and i8 %i.bw, 3
  %i.by = zext nneg i8 %i.bx to i16
  %i.bz = shl nuw nsw i16 %i.by, 12
  %i.ca = or disjoint i16 %i.bz, %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !93
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !103
  %i.cd = lshr i8 %i.cc, 2
  %i.ce = zext nneg i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %.1110.us, i64 6
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !103
  %i.ch = zext i8 %i.cg to i16
  %i.ci = shl nuw nsw i16 %i.ch, 6
  %i.cj = or disjoint i16 %i.ci, %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %.1110.us, i64 7
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !103
  %i.cn = zext i8 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %.1110.us, i64 8 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !103
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i16
  %i.cs = shl nuw nsw i16 %i.cr, 8
  %i.ct = or disjoint i16 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !93
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !103
  %i.cw = lshr i8 %i.cv, 6
  %i.cx = zext nneg i8 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %.1110.us, i64 9
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !103
  %i.da = zext i8 %i.cz to i16
  %i.db = shl nuw nsw i16 %i.da, 2
  %i.dc = or disjoint i16 %i.db, %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %.1110.us, i64 10 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !103
  %i.df = and i8 %i.de, 15
  %i.dg = zext nneg i8 %i.df to i16
  %i.dh = shl nuw nsw i16 %i.dg, 10
  %i.di = or disjoint i16 %i.dh, %i.dc
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !93
  %i.dk = load i8, ptr %i.dd, align 1, !tbaa !103
  %i.dl = lshr i8 %i.dk, 4
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %.1110.us, i64 11
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !103
  %i.dp = zext i8 %i.do to i16
  %i.dq = shl nuw nsw i16 %i.dp, 4
  %i.dr = or disjoint i16 %i.dq, %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %.1110.us, i64 12 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !103
  %i.du = and i8 %i.dt, 3
  %i.dv = zext nneg i8 %i.du to i16
  %i.dw = shl nuw nsw i16 %i.dv, 12
  %i.dx = or disjoint i16 %i.dw, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !93
  %i.dz = load i8, ptr %i.ds, align 1, !tbaa !103
  %i.ea = lshr i8 %i.dz, 2
  %i.eb = zext nneg i8 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %.1110.us, i64 13
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !103
  %i.ee = zext i8 %i.ed to i16
  %i.ef = shl nuw nsw i16 %i.ee, 6
  %i.eg = or disjoint i16 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ax, i64 14
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !93
  %i.ei = getelementptr inbounds nuw i8, ptr %.1110.us, i64 14
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !103
  %i.ek = zext i8 %i.ej to i16
  %i.el = getelementptr inbounds nuw i8, ptr %.1110.us, i64 15
  %i.em = load i8, ptr %i.el, align 1, !tbaa !103
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i16
  %i.ep = shl nuw nsw i16 %i.eo, 8
  %i.eq = or disjoint i16 %i.ep, %i.ek
  %i.er = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !93
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, %i.s ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1110.us, i64 16 ; 2 uses
  %i.et = load i16, ptr %i.g, align 2, !tbaa !77  ; 3 uses
  %i.eu = zext i16 %i.et to i32
  %i.ev = sub nsw i32 %i.eu, %i.e
  %i.ew = sext i32 %i.ev to i64
  %.not108.us = icmp sgt i64 %indvars.iv.next130, %i.ew
  br i1 %.not108.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !175

.lr.ph.split.us112:                               ; preds = %.lr.ph, %.lr.ph.split.us112
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us112 ], [ 0, %.lr.ph ] ; 2 uses
  %.1110.us114 = phi ptr [ %i.in, %.lr.ph.split.us112 ], [ %.0104118, %.lr.ph ] ; 16 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 1 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !103
  %i.ez = and i8 %i.ey, 15
  %i.fa = zext nneg i8 %i.ez to i16
  %i.fb = shl nuw nsw i16 %i.fa, 8
  %i.fc = load i8, ptr %.1110.us114, align 1, !tbaa !103
  %i.fd = zext i8 %i.fc to i16
  %i.fe = or disjoint i16 %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv ; 10 uses
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !93
  %i.fg = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !103
  %i.fi = zext i8 %i.fh to i16
  %i.fj = shl nuw nsw i16 %i.fi, 4
  %i.fk = load i8, ptr %i.ex, align 1, !tbaa !103
  %i.fl = lshr i8 %i.fk, 4
  %i.fm = zext nneg i8 %i.fl to i16
  %i.fn = or disjoint i16 %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !93
  %i.fp = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 4 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !103
  %i.fr = and i8 %i.fq, 15
  %i.fs = zext nneg i8 %i.fr to i16
  %i.ft = shl nuw nsw i16 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !103
  %i.fw = zext i8 %i.fv to i16
  %i.fx = or disjoint i16 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !93
  %i.fz = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 5
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !103
  %i.gb = zext i8 %i.ga to i16
  %i.gc = shl nuw nsw i16 %i.gb, 4
  %i.gd = load i8, ptr %i.fp, align 1, !tbaa !103
  %i.ge = lshr i8 %i.gd, 4
  %i.gf = zext nneg i8 %i.ge to i16
  %i.gg = or disjoint i16 %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !93
  %i.gi = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 7 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !103
  %i.gk = and i8 %i.gj, 15
  %i.gl = zext nneg i8 %i.gk to i16
  %i.gm = shl nuw nsw i16 %i.gl, 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 6
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !103
  %i.gp = zext i8 %i.go to i16
  %i.gq = or disjoint i16 %i.gm, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !93
  %i.gs = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 8
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !103
  %i.gu = zext i8 %i.gt to i16
  %i.gv = shl nuw nsw i16 %i.gu, 4
  %i.gw = load i8, ptr %i.gi, align 1, !tbaa !103
  %i.gx = lshr i8 %i.gw, 4
  %i.gy = zext nneg i8 %i.gx to i16
  %i.gz = or disjoint i16 %i.gv, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !93
  %i.hb = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 10 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !103
  %i.hd = and i8 %i.hc, 15
  %i.he = zext nneg i8 %i.hd to i16
  %i.hf = shl nuw nsw i16 %i.he, 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 9
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !103
  %i.hi = zext i8 %i.hh to i16
  %i.hj = or disjoint i16 %i.hf, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !93
  %i.hl = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 11
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !103
  %i.hn = zext i8 %i.hm to i16
  %i.ho = shl nuw nsw i16 %i.hn, 4
  %i.hp = load i8, ptr %i.hb, align 1, !tbaa !103
  %i.hq = lshr i8 %i.hp, 4
  %i.hr = zext nneg i8 %i.hq to i16
  %i.hs = or disjoint i16 %i.ho, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ff, i64 14
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !93
  %i.hu = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 13 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !103
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i16
  %i.hy = shl nuw nsw i16 %i.hx, 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 12
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !103
  %i.ib = zext i8 %i.ia to i16
  %i.ic = or disjoint i16 %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !93
  %i.ie = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 14
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !103
  %i.ig = zext i8 %i.if to i16
  %i.ih = shl nuw nsw i16 %i.ig, 4
  %i.ii = load i8, ptr %i.hu, align 1, !tbaa !103
  %i.ij = lshr i8 %i.ii, 4
  %i.ik = zext nneg i8 %i.ij to i16
  %i.il = or disjoint i16 %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ff, i64 18
  store i16 %i.il, ptr %i.im, align 2, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.s ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.1110.us114, i64 16 ; 2 uses
  %i.io = load i16, ptr %i.g, align 2, !tbaa !77  ; 3 uses
  %i.ip = zext i16 %i.io to i32
  %i.iq = sub nsw i32 %i.ip, %i.e
  %i.ir = sext i32 %i.iq to i64
  %.not108.us115 = icmp sgt i64 %indvars.iv.next, %i.ir
  br i1 %.not108.us115, label %._crit_edge, label %.lr.ph.split.us112, !llvm.loop !175

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.is = zext i16 %i.ag to i32
  %scevgep = getelementptr i8, ptr %.0104118, i64 16
  %.reass.reass = add i32 %i.is, %invariant.op
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.reass.reass)
  %i.it = add nsw i32 %smax, -1                   ; 2 uses
  %2 = udiv i32 %i.it, 9
  %i.iu = udiv i32 %i.it, 10
  %3 = select i1 %i.d, i32 %2, i32 %i.iu
  %i.iv = zext nneg i32 %3 to i64
  %i.iw = shl nuw nsw i64 %i.iv, 4
  %scevgep132 = getelementptr i8, ptr %scevgep, i64 %i.iw
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.us112, %.lr.ph.split.us, %.lr.ph.split, %bb.e
  %i.ix = phi i16 [ %i.ag, %bb.e ], [ %i.ag, %.lr.ph.split ], [ %i.et, %.lr.ph.split.us ], [ %i.io, %.lr.ph.split.us112 ]
  %i.iy = phi i16 [ %i.ah, %bb.e ], [ %i.ag, %.lr.ph.split ], [ %i.et, %.lr.ph.split.us ], [ %i.io, %.lr.ph.split.us112 ]
  %.1.lcssa = phi ptr [ %.0104118, %bb.e ], [ %scevgep132, %.lr.ph.split ], [ %i.es, %.lr.ph.split.us ], [ %i.in, %.lr.ph.split.us112 ]
  %i.iz = add nuw nsw i32 %.0103119, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.iz, 16
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !176
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !77
  %i.d = zext i16 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.g = load i32, ptr %i.f, align 8, !tbaa !177
  %i.h = icmp ne i32 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.j = load i32, ptr %i.i, align 4
  %.not = icmp eq i32 %i.j, 0
  %or.cond = select i1 %i.h, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge15, label %bb.b

._crit_edge15:                                    ; preds = %bb.a
  %.pre = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 2 uses
  %i.m = sub nsw i32 0, %i.e
  %i.n = sext i32 %i.m to i64
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.n, i32 noundef 1), !call_target !82 ; 0 uses
  %i.s = zext nneg i32 %i.e to i64                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge15, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge15 ], [ %i.s, %bb.b ] ; 2 uses
  %.011 = phi i64 [ 0, %._crit_edge15 ], [ %i.s, %bb.b ]
  %i.t = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.pre-phi, i64 noundef 2) ; 3 uses
  %i.u = load i16, ptr %i.a, align 8, !tbaa !78
  %.not14 = icmp eq i16 %i.u, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.011
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.t)
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  %i.y = load i16, ptr %i.b, align 2, !tbaa !77
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 1
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.t, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !124
  %i.ad = mul i32 %i.ac, %.013
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ag, ptr align 1 %i.x, i64 %.pre-phi, i1 false)
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %i.ai = load i16, ptr %i.a, align 8, !tbaa !78
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp samesign ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.d, label %._crit_edge, !llvm.loop !178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15nikon_load_srawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 16 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !77
  %i.e = zext i16 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 6
  %i.h = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.g, i64 noundef 1) ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %.preheader123

.preheader123:                                    ; preds = %bb.a
  %i.i = load i16, ptr %i.b, align 8, !tbaa !78
  %.not142 = icmp eq i16 %i.i, 0
  br i1 %.not142, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader123
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 381592
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 1, ptr %i.k, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.c:                                             ; preds = %.lr.ph126, %._crit_edge
  %.0104125 = phi i32 [ 0, %.lr.ph126 ], [ %i.ck, %._crit_edge ] ; 7 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %i.m = load i16, ptr %i.c, align 2, !tbaa !77
  %i.n = zext i16 %i.m to i64
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.h, i64 noundef 3, i64 noundef %i.n)
          to label %.preheader122 unwind label %bb.f, !call_target !130 ; 0 uses

.preheader122:                                    ; preds = %bb.d
  %i.s = load i16, ptr %i.c, align 2, !tbaa !77   ; 2 uses
  %i.t = icmp ugt i16 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader122
  %i.u = zext i16 %i.s to i32
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !127  ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 8 uses
  %i.w = phi i32 [ %i.u, %.lr.ph ], [ %i.cd, %bb.e ]
  %i.x = mul nuw nsw i64 %indvars.iv, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load <4 x i8>, ptr %i.y, align 1, !tbaa !103
  %i.ab = tail call <5 x i8> @llvm.masked.load.v5i8.p0(ptr nonnull align 1 %i.z, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i8> poison), !tbaa !103 ; 2 uses
  %i.ac = shufflevector <5 x i8> %i.ab, <5 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.ad = shufflevector <4 x i8> %i.aa, <4 x i8> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 3, i32 poison>
  %i.ae = shufflevector <5 x i8> %i.ad, <5 x i8> %i.ab, <4 x i32> <i32 0, i32 1, i32 3, i32 8>
  %i.af = zext <4 x i8> %i.ae to <4 x i16>
  %i.ag = zext <4 x i8> %i.ac to <4 x i16>
  %i.ah = shl <4 x i16> %i.ag, <i16 8, i16 4, i16 8, i16 4>
  %i.ai = and <4 x i16> %i.ah, <i16 3840, i16 -1, i16 3840, i16 -1>
  %i.aj = lshr <4 x i16> %i.af, <i16 0, i16 4, i16 0, i16 4>
  %i.ak = or disjoint <4 x i16> %i.ai, %i.aj      ; 4 uses
  %i.al = mul nuw nsw i32 %i.w, %.0104125
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = extractelement <4 x i16> %i.ak, i64 0
  store i16 %i.ap, ptr %i.ao, align 2, !tbaa !93
  %i.aq = load i16, ptr %i.c, align 2, !tbaa !77
  %i.ar = zext i16 %i.aq to i32
  %i.as = mul nuw nsw i32 %.0104125, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ax = extractelement <4 x i16> %i.ak, i64 2
  store i16 %i.ax, ptr %i.aw, align 2, !tbaa !93
  %i.ay = load i16, ptr %i.c, align 2, !tbaa !77
  %i.az = zext i16 %i.ay to i32
  %i.ba = mul nuw nsw i32 %.0104125, %i.az
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = extractelement <4 x i16> %i.ak, i64 3
  store i16 %i.bf, ptr %i.be, align 2, !tbaa !93
  %i.bg = load i16, ptr %i.c, align 2, !tbaa !77
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %.0104125, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = extractelement <4 x i16> %i.ak, i64 1
  store i16 %i.bn, ptr %i.bm, align 2, !tbaa !93
  %i.bo = load i16, ptr %i.c, align 2, !tbaa !77
  %i.bp = zext i16 %i.bo to i32
  %i.bq = mul nuw nsw i32 %.0104125, %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  store i16 2048, ptr %i.bu, align 2, !tbaa !93
  %i.bv = load i16, ptr %i.c, align 2, !tbaa !77
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_:bb.a
  store i64 %i.dj, ptr %i.dq, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !215

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2148, i64 noundef %i.cl)
  %i.ds = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dt = sub i64 %i.ds, %i.a
  %.fr.i = freeze i64 %i.dt                       ; 2 uses
  %i.du = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 16
  br i1 %i.dv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, !llvm.loop !207

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.09.021.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.09.021.i.add, %bb.d ] ; 3 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.09.021.i.ptr, %bb.d ] ; 2 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !191  ; 5 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !191
  %i.i = icmp slt i64 %i.g, %i.h
  %i.j = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !189 ; 2 uses
  br i1 %i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i, label %bb.c

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.09.021.i.idx, i1 false)
  store i32 %i.j, ptr %0, align 8, !tbaa !118
  store i64 %i.g, ptr %i.e, align 8, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !191
  %i.m = icmp slt i64 %i.g, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !208
  %i.n = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = icmp slt i64 %i.g, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.j, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !118
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !157
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.b, !llvm.loop !217

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i = icmp eq ptr %i.q, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7
  %.sroa.0.05.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ], [ %i.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit ] ; 6 uses
  %i.r = load i32, ptr %.sroa.0.05.i, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !191  ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !191
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i11
  %.sroa.05.08.i.i12 = phi ptr [ %.sroa.0.0.i.i13, %.lr.ph.i.i11 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i13 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i12, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i13, i64 16, i1 false), !tbaa.struct !208
  %i.x = getelementptr inbounds i8, ptr %.sroa.05.08.i.i12, i64 -24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !191
  %i.z = icmp slt i64 %i.t, %i.y
  br i1 %i.z, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7: ; preds = %.lr.ph.i.i11, %.lr.ph.i6
  %.sroa.05.0.lcssa.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i11 ] ; 2 uses
  store i32 %i.r, ptr %.sroa.05.0.lcssa.i.i8, align 8, !tbaa !118
  %.sroa.44.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i8, i64 8
  store i64 %i.t, ptr %.sroa.44.0..sroa_idx.i.i9, align 8, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i10 = icmp eq ptr %i.aa, %1
  br i1 %.not.i10, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6, !llvm.loop !218

bb.e:                                             ; preds = %bb.a
  %i.ab = icmp eq ptr %0, %1
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.e
  %.sroa.09.018.i15 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i16 = icmp eq ptr %.sroa.09.018.i15, %1
  br i1 %.not19.i16, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i17
  %.sroa.09.021.i18 = phi ptr [ %.sroa.09.018.i15, %.lr.ph.i17 ], [ %.sroa.09.0.i23, %bb.i ] ; 7 uses
  %.pn20.i19 = phi ptr [ %0, %.lr.ph.i17 ], [ %.sroa.09.021.i18, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i19, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !191 ; 5 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !191
  %i.ag = icmp slt i64 %i.ae, %i.af
  %i.ah = load i32, ptr %.sroa.09.021.i18, align 8, !tbaa !189 ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %.sroa.09.021.i18 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.preheader.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28

.lr.ph.i.i.i.i.i.preheader.i29:                   ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.pn20.i19, i64 32
  %i.an = mul nsw i64 %i.ak, -16                  ; 2 uses
  %scevgep.i30 = getelementptr i8, ptr %i.am, i64 %i.an
  %scevgep23.i31 = getelementptr i8, ptr %.sroa.09.021.i18, i64 %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i30, ptr align 8 %scevgep23.i31, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.preheader.i29, %bb.g
  store i32 %i.ah, ptr %0, align 8, !tbaa !118
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !157
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn20.i19, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !191
  %i.aq = icmp slt i64 %i.ae, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i25, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20

.lr.ph.i.i25:                                     ; preds = %bb.h, %.lr.ph.i.i25
  %.sroa.05.08.i.i26 = phi ptr [ %.sroa.0.0.i.i27, %.lr.ph.i.i25 ], [ %.sroa.09.021.i18, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i26, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i27, i64 16, i1 false), !tbaa.struct !208
  %i.ar = getelementptr inbounds i8, ptr %.sroa.05.08.i.i26, i64 -24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !191
  %i.at = icmp slt i64 %i.ae, %i.as
  br i1 %i.at, label %.lr.ph.i.i25, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20: ; preds = %.lr.ph.i.i25, %bb.h
  %.sroa.05.0.lcssa.i.i21 = phi ptr [ %.sroa.09.021.i18, %bb.h ], [ %.sroa.0.0.i.i27, %.lr.ph.i.i25 ] ; 2 uses
  store i32 %i.ah, ptr %.sroa.05.0.lcssa.i.i21, align 8, !tbaa !118
  %.sroa.44.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i21, i64 8
  store i64 %i.ae, ptr %.sroa.44.0..sroa_idx.i.i22, align 8, !tbaa !157
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28
  %.sroa.09.0.i23 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i18, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %.sroa.09.0.i23, %1
  br i1 %.not.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.f, !llvm.loop !217

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, %.preheader.i14, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i8> @llvm.masked.load.v5i8.p0(ptr captures(none), <5 x i1>, <5 x i8>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i32.v4p0(<4 x i32>, <4 x ptr>, <4 x i1>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i64.v4p0(<4 x i64>, <4 x ptr>, <4 x i1>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 544}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !17, i64 0, !9, i64 4, !9, i64 12, !17, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !18, i64 88, !8, i64 96, !9, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !17, i64 64, !9, i64 66, !22, i64 196, !9, i64 200, !8, i64 296}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !9, i64 14, !9, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !9, i64 32, !46, i64 40}
!46 = !{!"p2 omnipotent char", !47, i64 0}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !22, i64 147516, !22, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !15, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !50, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !22, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !22, i64 32920, !22, i64 32924, !9, i64 32928}
!51 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !9, i64 28, !53, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!52 = !{!"long", !9, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !22, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!54 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!57 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !16, i64 512, !59, i64 696, !48, i64 712}
!58 = !{!"p1 float", !15, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 12, !17, i64 14}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !59, i64 64, !65, i64 80, !67, i64 96, !68, i64 136}
!62 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !9, i64 48}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"_ZTS15identify_data_t", !8, i64 0, !26, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!68 = !{!"_ZTS15unpacker_data_t", !17, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !26, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !17, i64 2496, !17, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !17, i64 2608}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !17, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !17, i64 148, !17, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!75, !75, i64 0}
!75 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!76 = !{!12, !14, i64 193784}
!77 = !{!12, !17, i64 18}
!78 = !{!12, !17, i64 16}
!79 = !{!12, !63, i64 381592}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !10, i64 0}
!82 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !84, file: !83, line: 102, type: !85, scopeLine: 102, containingType: !84, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!83 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!84 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !83, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !88, !89, !87}
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !90, line: 109, baseType: !91)
!90 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!91 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!92 = !{!12, !8, i64 5552}
!93 = !{!17, !17, i64 0}
!94 = !{!12, !17, i64 24}
!95 = !{!12, !17, i64 20}
!96 = !{!12, !17, i64 26}
!97 = !{!12, !17, i64 22}
!98 = !{!12, !8, i64 153096}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = distinct !{!101, !100}
!102 = !{!12, !8, i64 5564}
!103 = !{!9, !9, i64 0}
!104 = !{!105, !8, i64 0}
!105 = !{!"_ZTSZN6LibRaw21pentax_4shot_load_rawEvE10movement_t", !8, i64 0, !8, i64 4}
!106 = !{!105, !8, i64 4}
!107 = !{!108, !8, i64 0}
!108 = !{!"_ZTS10tiff_ifd_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !26, i64 32, !26, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !109, i64 72, !8, i64 80, !109, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !22, i64 124, !26, i64 128, !26, i64 136, !8, i64 144, !9, i64 148, !50, i64 488, !8, i64 33464}
!109 = !{!"p1 long long", !15, i64 0}
!110 = !{!108, !8, i64 4}
!111 = !{!108, !8, i64 8}
!112 = !{!108, !8, i64 24}
!113 = distinct !{!113, !100}
!114 = !{!108, !26, i64 32}
!115 = !{!12, !26, i64 381760}
!116 = !{!12, !9, i64 768432}
!117 = !{}
!118 = !{!8, !8, i64 0}
!119 = !{!12, !17, i64 381670}
!120 = !{!12, !8, i64 381828}
!121 = distinct !{!121, !100}
!122 = distinct !{!122, !100}
!123 = distinct !{!123, !100}
!124 = !{!12, !8, i64 32}
!125 = !{!12, !14, i64 193792}
!126 = !{!12, !15, i64 193776}
!127 = !{!12, !14, i64 8}
!128 = distinct !{!128, !100}
!129 = distinct !{!129, !100}
!130 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !84, file: !83, line: 101, type: !131, scopeLine: 101, containingType: !84, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!87, !88, !133, !134, !134}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 18, baseType: !136)
!135 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = distinct !{!137, !100}
!138 = distinct !{!138, !100}
!139 = distinct !{!139, !100}
!140 = distinct !{!140, !100, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = !{!"branch_weights", i32 4, i32 28}
!144 = distinct !{!144, !100, !141, !142}
!145 = distinct !{!145, !100, !142, !141}
!146 = distinct !{!146, !100}
!147 = distinct !{!147, !100}
!148 = distinct !{!148, !100}
!149 = distinct !{!149, !100}
!150 = distinct !{!150, !100}
!151 = !{!12, !8, i64 381836}
!152 = !{!12, !8, i64 381712}
!153 = distinct !{!153, !100}
!154 = !{!108, !8, i64 64}
!155 = !{!108, !8, i64 80}
!156 = !{!108, !109, i64 72}
!157 = !{!26, !26, i64 0}
!158 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !84, file: !83, line: 105, type: !159, scopeLine: 105, containingType: !84, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
end_hunk_1
