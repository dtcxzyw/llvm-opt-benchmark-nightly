Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_libraw?download=true
inline.NumInlined: 431
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN21pana_cs6_page_decoder11read_page12Ev:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !89
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !84
  %i.ca = add i32 %i.f, 7
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !84
  %i.ce = tail call i8 @llvm.fshl.i8(i8 %i.bz, i8 %i.cd, i8 4)
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !89
  %i.ch = load i8, ptr %i.cc, align 1, !tbaa !84
  %i.ci = add i32 %i.f, 6
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj ; 3 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !84
  %i.cm = tail call i8 @llvm.fshl.i8(i8 %i.ch, i8 %i.cl, i8 4)
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !89
  %i.cp = load i8, ptr %i.ck, align 1, !tbaa !84
  %i.cq = lshr i8 %i.cp, 2
  %i.cr = and i8 %i.cq, 3
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !89
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !84
  %i.cv = add i32 %i.f, 5
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !84
  %i.cz = tail call i8 @llvm.fshl.i8(i8 %i.cu, i8 %i.cy, i8 6)
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.da, ptr %i.db, align 4, !tbaa !89
  %i.dc = load i8, ptr %i.cx, align 1, !tbaa !84
  %i.dd = add i32 %i.f, 4
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !84
  %i.dh = tail call i8 @llvm.fshl.i8(i8 %i.dc, i8 %i.dg, i8 6)
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !89
  %i.dk = load i8, ptr %i.df, align 1, !tbaa !84
  %i.dl = add i32 %i.f, 3
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !84
  %i.dp = tail call i8 @llvm.fshl.i8(i8 %i.dk, i8 %i.do, i8 6)
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !89
  %i.ds = load i8, ptr %i.dn, align 1, !tbaa !84
  %i.dt = and i8 %i.ds, 3
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !89
  %i.dw = add i32 %i.f, 2
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !84
  %i.ea = zext i8 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !89
  %i.ec = add i32 %i.f, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !84
  %i.eg = zext i8 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !89
  %i.ei = zext i32 %i.f to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !84
  %i.el = zext i8 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.el, ptr %i.em, align 4, !tbaa !89
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.en, align 8, !tbaa !99
  %i.eo = add i32 %i.f, 16
  store i32 %i.eo, ptr %i.e, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20panasonicC6_load_rawEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::vector", align 8  ; 14 uses
  %2 = alloca %struct.pana_cs6_page_decoder, align 8 ; 30 uses
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100
  %i.f = icmp eq i32 %i.e, 12                     ; 8 uses
  %i.g = select i1 %i.f, i32 14, i32 11           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !74   ; 2 uses
  %.rhs.trunc = trunc nuw nsw i32 %i.g to i16     ; 2 uses
  %i.k = udiv i16 %i.j, %.rhs.trunc
  %.zext = zext nneg i16 %i.k to i32              ; 4 uses
  %i.l = shl nuw nsw i32 %.zext, 4                ; 2 uses
  %i.m = select i1 %i.f, i32 128, i32 512
  %i.n = select i1 %i.f, i32 2048, i32 8192
  %i.o = select i1 %i.f, i32 16383, i32 65535     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not107.not = icmp ult i16 %i.j, %.rhs.trunc
  br i1 %.not107.not, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = shl nuw nsw i32 %.zext, 8
  %i.r = zext nneg i32 %i.q to i64
  invoke void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.r)
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread unwind label %bb.z

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.a
  %i.s = load i16, ptr %i.h, align 8, !tbaa !75
  %i.t = icmp ugt i16 %i.s, 15
  br i1 %i.t, label %.lr.ph124.split.preheader, label %._crit_edge125

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread: ; preds = %bb.b
  %i.u = load i16, ptr %i.h, align 8, !tbaa !75
  %i.v = icmp ugt i16 %i.u, 15
  br i1 %i.v, label %.lr.ph124.split.us.preheader, label %._crit_edge125

.lr.ph124.split.preheader:                        ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.w = zext nneg i32 %i.l to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !104
  br label %.lr.ph124.split

.lr.ph124.split.us.preheader:                     ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread
  %i.x = zext nneg i32 %i.l to i64
  %i.y = shl nuw nsw i32 %.zext, 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.aw = select i1 %i.f, i16 4095, i16 16383
  %umax = call i32 @llvm.umax.i32(i32 %.zext, i32 1)
  br label %.lr.ph124.split.us

.lr.ph124.split.us:                               ; preds = %.lr.ph124.split.us.preheader, %.split122.us
  %.079123.us = phi i32 [ %i.hj, %.split122.us ], [ 0, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !104
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ay, i64 noundef %i.x, i64 noundef 16)
          to label %bb.c unwind label %.loopexit109.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph124.split.us
  %.not.us = icmp eq i32 %i.bc, 16
  br i1 %.not.us, label %.split.us, label %.split127.us

.split.us:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bd = load ptr, ptr %1, align 8, !tbaa !104
  store i32 0, ptr %i.z, align 8, !tbaa !98
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !97
  store i8 0, ptr %i.ab, align 8, !tbaa !99
  store ptr %i.bd, ptr %i.ac, align 8, !tbaa !96
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split.us, %._crit_edge.us
  %.078121.us = phi i32 [ 0, %.split.us ], [ %i.ho, %._crit_edge.us ] ; 2 uses
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.bf = add nuw nsw i32 %.078121.us, %.079123.us
  %i.bg = load i32, ptr %i.ae, align 8, !tbaa !90
  %i.bh = mul i32 %i.bg, %i.bf
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bj
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %.lr.ph.us
  %.075120.us = phi i32 [ 0, %.lr.ph.us ], [ %i.hi, %bb.y ]
  %.177119.us = phi i32 [ 0, %.lr.ph.us ], [ %.3.us, %bb.y ]
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN21pana_cs6_page_decoder9read_pageEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %._crit_edge unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.e
  %.promoted.us.pre = load i8, ptr %i.ab, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 17 uses
  %.not.i.us = icmp eq ptr %i.bl, null
  br i1 %.not.i.us, label %.split130.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = load i32, ptr %i.aa, align 4, !tbaa !97
  %i.bn = load i32, ptr %i.z, align 8, !tbaa !98  ; 18 uses
  %i.bo = sub i32 %i.bm, %i.bn
  %i.bp = icmp ult i32 %i.bo, 16
  br i1 %i.bp, label %.split130.us, label %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us

_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us: ; preds = %bb.g
  %i.bq = add i32 %i.bn, 15
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !84
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 4
  %i.bw = add i32 %i.bn, 14
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !84  ; 2 uses
  %i.ca = lshr i8 %i.bz, 4
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bv, %i.cb
  store i32 %i.cc, ptr %2, align 8, !tbaa !89
  %i.cd = and i8 %i.bz, 15
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = add i32 %i.bn, 13
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !84
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.cf, %i.ck
  store i32 %i.cl, ptr %i.af, align 4, !tbaa !89
  %i.cm = add i32 %i.bn, 12
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !84  ; 2 uses
  %i.cq = lshr i8 %i.cp, 6
  %i.cr = zext nneg i8 %i.cq to i32
  store i32 %i.cr, ptr %i.ag, align 8, !tbaa !89
  %i.cs = add i32 %i.bn, 11
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !84  ; 2 uses
  %i.cw = call i8 @llvm.fshl.i8(i8 %i.cp, i8 %i.cv, i8 2)
  %i.cx = zext i8 %i.cw to i32
  store i32 %i.cx, ptr %i.ah, align 4, !tbaa !89
  %i.cy = add i32 %i.bn, 10
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !84  ; 2 uses
  %i.dc = call i8 @llvm.fshl.i8(i8 %i.cv, i8 %i.db, i8 2)
  %i.dd = zext i8 %i.dc to i32
  store i32 %i.dd, ptr %i.ai, align 8, !tbaa !89
  %i.de = add i32 %i.bn, 9
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !84  ; 3 uses
  %i.di = call i8 @llvm.fshl.i8(i8 %i.db, i8 %i.dh, i8 2)
  %i.dj = zext i8 %i.di to i32
  store i32 %i.dj, ptr %i.aj, align 4, !tbaa !89
  %i.dk = lshr i8 %i.dh, 4
  %i.dl = and i8 %i.dk, 3
  %i.dm = zext nneg i8 %i.dl to i32
  store i32 %i.dm, ptr %i.ak, align 8, !tbaa !89
  %i.dn = add i32 %i.bn, 8
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !84  ; 2 uses
  %i.dr = call i8 @llvm.fshl.i8(i8 %i.dh, i8 %i.dq, i8 4)
  %i.ds = zext i8 %i.dr to i32
  store i32 %i.ds, ptr %i.al, align 4, !tbaa !89
  %i.dt = add i32 %i.bn, 7
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !84  ; 2 uses
  %i.dx = call i8 @llvm.fshl.i8(i8 %i.dq, i8 %i.dw, i8 4)
  %i.dy = zext i8 %i.dx to i32
  store i32 %i.dy, ptr %i.am, align 8, !tbaa !89
  %i.dz = add i32 %i.bn, 6
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !84  ; 3 uses
  %i.ed = call i8 @llvm.fshl.i8(i8 %i.dw, i8 %i.ec, i8 4)
  %i.ee = zext i8 %i.ed to i32
  store i32 %i.ee, ptr %i.an, align 4, !tbaa !89
  %i.ef = lshr i8 %i.ec, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i32
  store i32 %i.eh, ptr %i.ao, align 8, !tbaa !89
  %i.ei = add i32 %i.bn, 5
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !84  ; 2 uses
  %i.em = call i8 @llvm.fshl.i8(i8 %i.ec, i8 %i.el, i8 6)
  %i.en = zext i8 %i.em to i32
  store i32 %i.en, ptr %i.ap, align 4, !tbaa !89
  %i.eo = add i32 %i.bn, 4
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !84  ; 2 uses
  %i.es = call i8 @llvm.fshl.i8(i8 %i.el, i8 %i.er, i8 6)
  %i.et = zext i8 %i.es to i32
  store i32 %i.et, ptr %i.aq, align 8, !tbaa !89
  %i.eu = add i32 %i.bn, 3
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !84  ; 2 uses
  %i.ey = call i8 @llvm.fshl.i8(i8 %i.er, i8 %i.ex, i8 6)
  %i.ez = zext i8 %i.ey to i32
  store i32 %i.ez, ptr %i.ar, align 4, !tbaa !89
  %i.fa = and i8 %i.ex, 3
  %i.fb = zext nneg i8 %i.fa to i32
  store i32 %i.fb, ptr %i.as, align 8, !tbaa !89
  %i.fc = add i32 %i.bn, 2
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !84
  %i.fg = zext i8 %i.ff to i32
  store i32 %i.fg, ptr %i.at, align 4, !tbaa !89
  %i.fh = add i32 %i.bn, 1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !84
  %i.fl = zext i8 %i.fk to i32
  store i32 %i.fl, ptr %i.au, align 8, !tbaa !89
  %i.fm = zext i32 %i.bn to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !84
  %i.fp = zext i8 %i.fo to i32
  store i32 %i.fp, ptr %i.av, align 4, !tbaa !89
  store i8 0, ptr %i.ab, align 8, !tbaa !99
  %i.fq = add i32 %i.bn, 16
  store i32 %i.fq, ptr %i.z, align 8, !tbaa !98
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us
  %.promoted.us = phi i8 [ %.promoted.us.pre, %._crit_edge ], [ 0, %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.x, %bb.h
  %.070118.us = phi i32 [ 0, %bb.h ], [ %i.hh, %bb.x ] ; 3 uses
  %.070118.us.a = phi i32 [ 0, %bb.h ], [ %.172.us, %bb.x ]
  %.071117.us = phi i32 [ 0, %bb.h ], [ %.174.us, %bb.x ]
  %.073116.us = phi i32 [ %.177119.us, %bb.h ], [ %.3.us, %bb.x ] ; 2 uses
  %i.fr = phi i8 [ %.promoted.us, %bb.h ], [ %i.gl, %bb.x ] ; 7 uses
  %i.fs = urem i32 %.070118.us, 3
  %i.ft = icmp eq i32 %i.fs, 2
  br i1 %i.ft, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.f, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fu = icmp ult i8 %i.fr, 14
  br i1 %i.fu, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us, label %.thread.us

bb.l:                                             ; preds = %bb.j
  %i.fv = icmp ult i8 %i.fr, 18
  br i1 %i.fv, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us, label %.thread.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us: ; preds = %bb.l, %bb.k
  %i.fw = add nuw nsw i8 %i.fr, 1                 ; 2 uses
  store i8 %i.fw, ptr %i.ab, align 8, !tbaa !99
  %.pn108.us = zext nneg i8 %i.fr to i64
  %.in.us = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.pn108.us
  %i.fx = load i32, ptr %.in.us, align 4, !tbaa !89
  %.fr.us = freeze i32 %i.fx                      ; 3 uses
  %i.fy = icmp ugt i32 %.fr.us, 3
  br i1 %i.fy, label %.split132.us, label %bb.m

bb.m:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us
  %i.fz = icmp eq i32 %.fr.us, 3
  %spec.select106.us = select i1 %i.fz, i32 4, i32 %.fr.us
  br label %.thread.us

.thread.us:                                       ; preds = %bb.m, %bb.l, %bb.k
  %i.ga = phi i8 [ %i.fr, %bb.l ], [ %i.fw, %bb.m ], [ %i.fr, %bb.k ]
  %i.gb = phi i32 [ 0, %bb.l ], [ %spec.select106.us, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %i.gc = shl nuw nsw i32 %i.m, %i.gb
  %i.gd = shl nuw nsw i32 1, %i.gb
  br label %bb.n

bb.n:                                             ; preds = %.thread.us, %bb.i
  %i.ge = phi i8 [ %i.ga, %.thread.us ], [ %i.fr, %bb.i ] ; 6 uses
  %.174.us = phi i32 [ %i.gd, %.thread.us ], [ %.071117.us, %bb.i ] ; 2 uses
  %.172.us = phi i32 [ %i.gc, %.thread.us ], [ %.070118.us.a, %bb.i ] ; 4 uses
  br i1 %i.f, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gf = icmp ult i8 %i.ge, 14
  br i1 %i.gf, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

bb.p:                                             ; preds = %bb.n
  %i.gg = icmp ult i8 %i.ge, 18
  br i1 %i.gg, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split: ; preds = %bb.p, %bb.o
  %i.gh = add nuw nsw i8 %i.ge, 1                 ; 2 uses
  store i8 %i.gh, ptr %i.ab, align 8, !tbaa !99
  %i.gi = zext nneg i8 %i.ge to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !89
  br label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us: ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, %bb.p, %bb.o
  %i.gl = phi i8 [ %i.ge, %bb.p ], [ %i.ge, %bb.o ], [ %i.gh, %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split ]
  %i.gm = phi i32 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.gk, %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split ] ; 5 uses
  %i.gn = and i32 %.070118.us, 1
  %i.go = zext nneg i32 %i.gn to i64              ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !89
  %.not93.us = icmp eq i32 %i.gq, 0
  br i1 %.not93.us, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us
  %i.gr = mul i32 %i.gm, %.174.us                 ; 3 uses
  %i.gs = icmp ult i32 %.172.us, %i.n
  br i1 %i.gs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.go
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !89 ; 2 uses
  %i.gv = icmp ugt i32 %i.gu, %.172.us
  br i1 %i.gv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gw = sub i32 %i.gr, %.172.us
  %i.gx = add i32 %i.gw, %i.gu
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0.us = phi i32 [ %i.gx, %bb.s ], [ %i.gr, %bb.r ], [ %i.gr, %bb.q ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.go
  store i32 %.0.us, ptr %i.gy, align 4, !tbaa !89
  br label %bb.x

bb.u:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us
  store i32 %i.gm, ptr %i.gp, align 4, !tbaa !89
  %.not94.us = icmp eq i32 %i.gm, 0
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.go ; 2 uses
  br i1 %.not94.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.gm, ptr %i.gz, align 4, !tbaa !89
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !89
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.1.us = phi i32 [ %.0.us, %bb.t ], [ %i.gm, %bb.v ], [ %i.ha, %bb.w ] ; 2 uses
  %i.hb = add i32 %.1.us, -15                     ; 2 uses
  %.not95.us = icmp ugt i32 %i.hb, %i.o
  %i.hc = add i32 %.1.us, 2147483633
  %isneg.us = icmp slt i32 %i.hc, 0
  %i.hd = select i1 %isneg.us, i16 %i.aw, i16 0
  %i.he = and i32 %i.hb, %i.o
  %i.hf = trunc nuw i32 %i.he to i16
  %.sink = select i1 %.not95.us, i16 %i.hd, i16 %i.hf
  %3 = sext i32 %.073116.us to i64
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %3
  store i16 %.sink, ptr %i.hg, align 2, !tbaa !79
  %.3.us = add nsw i32 %.073116.us, 1             ; 2 uses
  %i.hh = add nuw nsw i32 %.070118.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.hh, %i.g
  br i1 %exitcond.not, label %bb.y, label %bb.i, !llvm.loop !155

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.hi = add nuw nsw i32 %.075120.us, 1          ; 2 uses
  %exitcond142.not = icmp eq i32 %i.hi, %umax
  br i1 %exitcond142.not, label %._crit_edge.us, label %bb.d, !llvm.loop !156

.split122.us:                                     ; preds = %._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.hj = add nuw nsw i32 %.079123.us, 16         ; 2 uses
  %i.hk = load i16, ptr %i.h, align 8, !tbaa !75
  %i.hl = zext i16 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -15
  %i.hn = icmp slt i32 %i.hj, %i.hm
  br i1 %i.hn, label %.lr.ph124.split.us, label %._crit_edge125, !llvm.loop !157

._crit_edge.us:                                   ; preds = %bb.y
  %i.ho = add nuw nsw i32 %.078121.us, 1          ; 2 uses
  %exitcond143.not = icmp eq i32 %i.ho, 16
  br i1 %exitcond143.not, label %.split122.us, label %.lr.ph.us, !llvm.loop !158

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.split130.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us

bb.z:                                             ; preds = %bb.b
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  %i.hr = call ptr @__cxa_begin_catch(ptr %i.hq) #15 ; 0 uses
  %i.hs = call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 1, ptr %i.hs, align 16, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
          to label %bb.ag unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.loopexit109.split unwind label %bb.af

._crit_edge125:                                   ; preds = %.split122.us, %.split122, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.hu = load ptr, ptr %1, align 8, !tbaa !104   ; 4 uses
  %.not.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge125
  store ptr %i.hu, ptr %i.p, align 8, !tbaa !105
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !106
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #17
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %._crit_edge125, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124.split.preheader, %.split122
  %i.ia = phi ptr [ %i.ih, %.split122 ], [ %.pre, %.lr.ph124.split.preheader ]
  %.079123 = phi i32 [ %i.ii, %.split122 ], [ 0, %.lr.ph124.split.preheader ]
  %i.ib = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !78
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = invoke noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.ia, i64 noundef %i.w, i64 noundef 16)
          to label %bb.ac unwind label %.loopexit109.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %.lr.ph124.split
  %.not = icmp eq i32 %i.if, 16
  br i1 %.not, label %.split122, label %.split127.us

.split127.us:                                     ; preds = %bb.c, %bb.ac
  %i.ig = call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 4, ptr %i.ig, align 16, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.ig, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
          to label %bb.ag unwind label %.loopexit109.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit109.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph124.split, %.lr.ph124.split.us, %.split127.us
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit109.split

.split122:                                        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ih = load ptr, ptr %1, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.ii = add nuw nsw i32 %.079123, 16            ; 2 uses
  %i.ij = load i16, ptr %i.h, align 8, !tbaa !75
  %i.ik = zext i16 %i.ij to i32
  %i.il = add nsw i32 %i.ik, -15
  %i.im = icmp slt i32 %i.ii, %i.il
  br i1 %i.im, label %.lr.ph124.split, label %._crit_edge125, !llvm.loop !157

.split130.us:                                     ; preds = %bb.f, %bb.g
  %i.in = call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 4, ptr %i.in, align 16, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
          to label %.noexc100 unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %.split130.us
  unreachable

.split132.us:                                     ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us
  %i.io = call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.io, align 16, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
          to label %bb.ag unwind label %bb.ad

bb.ad:                                            ; preds = %.split132.us
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ip, %bb.ad ], [ %lpad.loopexit.split-lp, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.loopexit109.split

.loopexit109.split:                               ; preds = %.loopexit109.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split.us, %bb.aa
  %.pn97.pn = phi { ptr, i32 } [ %i.ht, %bb.aa ], [ %.pn, %.loopexit.split.us ], [ %lpad.loopexit.split-lp177, %.loopexit109.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.iq = load ptr, ptr %1, align 8, !tbaa !104   ; 4 uses
  %.not.i.i103 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i103, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit104, label %bb.ae

bb.ae:                                            ; preds = %.loopexit109.split
  store ptr %i.iq, ptr %i.p, align 8, !tbaa !105
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !106
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #17
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit104

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit104: ; preds = %.loopexit109.split, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn97.pn

bb.af:                                            ; preds = %bb.aa
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #18
  unreachable

bb.ag:                                            ; preds = %.split132.us, %.split127.us, %bb.z
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100
  %i.d = icmp eq i32 %i.c, 14
  %i.e = select i1 %i.d, i32 9, i32 10            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !74
  %.rhs.trunc = trunc nuw nsw i32 %i.e to i16
  %i.i = udiv i16 %i.h, %.rhs.trunc
  %.zext = zext nneg i16 %i.i to i32              ; 2 uses
  %i.j = shl nuw nsw i32 %.zext, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.k, i64 noundef 1) ; 3 uses
  %i.m = load i16, ptr %i.f, align 8, !tbaa !75
  %i.n = icmp ugt i16 %i.m, 15
  br i1 %i.n, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %bb.a
end_hunk_0
