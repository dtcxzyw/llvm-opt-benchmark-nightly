Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_libraw?download=true
inline.NumInlined: 308
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN21pana_cs6_page_decoder11read_page12Ev:bb.a
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
  %i.f = icmp eq i32 %i.e, 12                     ; 8 uses
  %i.g = select i1 %i.f, i32 14, i32 11           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !77   ; 3 uses
  %.rhs.trunc = trunc nuw nsw i32 %i.g to i16     ; 3 uses
  %i.k = udiv i16 %i.j, %.rhs.trunc
  %.zext = zext nneg i16 %i.k to i32              ; 3 uses
  %i.l = shl nuw nsw i32 %.zext, 4
  %i.m = select i1 %i.f, i32 128, i32 512
  %i.n = select i1 %i.f, i32 2048, i32 8192
  %i.o = select i1 %i.f, i32 16383, i32 65535     ; 2 uses
  %i.p = shl nuw nsw i32 %.zext, 8                ; 2 uses
  %i.q = zext nneg i32 %i.p to i64                ; 3 uses
  %.not125 = icmp ult i16 %i.j, %.rhs.trunc
  br i1 %.not125, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.a
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #16
          to label %.noexc unwind label %bb.y     ; 4 uses

.noexc:                                           ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  store i8 0, ptr %i.r, align 1, !tbaa !103
  %i.s = add nsw i64 %i.q, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i8 0, i64 %i.s, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.v = ptrtoint ptr %i.u to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.a, %.noexc
  %.sroa.0.1 = phi ptr [ %i.r, %.noexc ], [ null, %bb.a ] ; 9 uses
  %.sroa.16.1 = phi i64 [ %i.v, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.w = load i16, ptr %i.h, align 8, !tbaa !78
  %i.x = icmp ugt i16 %i.w, 15
  br i1 %i.x, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.y = zext nneg i32 %i.l to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp uge i16 %i.j, %.rhs.trunc
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = select i1 %i.f, i16 4095, i16 16383
  %.fr155 = freeze i1 %i.af
  br i1 %.fr155, label %.lr.ph144.split.us.preheader, label %.lr.ph144.split

.lr.ph144.split.us.preheader:                     ; preds = %.lr.ph144
  %umax = tail call i32 @llvm.umax.i32(i32 %.zext, i32 1)
  br label %.lr.ph144.split.us

.lr.ph144.split.us:                               ; preds = %.lr.ph144.split.us.preheader, %.split142.us
  %.079143.us = phi i32 [ %i.gv, %.split142.us ], [ 0, %.lr.ph144.split.us.preheader ] ; 2 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !79  ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %.sroa.0.1, i64 noundef %i.y, i64 noundef 16)
          to label %bb.b unwind label %.loopexit127.split.us, !call_target !130

bb.b:                                             ; preds = %.lr.ph144.split.us
  %.not.us = icmp eq i32 %i.ao, 16
  br i1 %.not.us, label %.split.us, label %.split147.us

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i32 0, ptr %i.z, align 8, !tbaa !167
  store i32 %i.p, ptr %i.aa, align 4, !tbaa !166
  store i8 0, ptr %i.ab, align 8, !tbaa !168
  store ptr %.sroa.0.1, ptr %i.ac, align 8, !tbaa !164
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split.us, %._crit_edge.us
  %.078141.us = phi i32 [ 0, %.split.us ], [ %i.ha, %._crit_edge.us ] ; 2 uses
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.aq = add nuw nsw i32 %.078141.us, %.079143.us
  %i.ar = load i32, ptr %i.ae, align 8, !tbaa !124
  %i.as = mul i32 %i.ar, %i.aq
  %i.at = lshr i32 %i.as, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.au
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %.lr.ph.us
  %.075140.us = phi i32 [ 0, %.lr.ph.us ], [ %i.gu, %bb.x ]
  %.177139.us = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.x ]
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN21pana_cs6_page_decoder9read_pageEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %._crit_edge unwind label %.loopexit.split.us

._crit_edge:                                      ; preds = %bb.d
  %.promoted.us.pre = load i8, ptr %i.ab, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !164 ; 17 uses
  %.not.i.us = icmp eq ptr %i.aw, null
  br i1 %.not.i.us, label %.split150.us.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.aa, align 4, !tbaa !166
  %i.ay = load i32, ptr %i.z, align 8, !tbaa !167 ; 18 uses
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = icmp ult i32 %i.az, 16
  br i1 %i.ba, label %.split150.us.a, label %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us

_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us: ; preds = %bb.f
  %i.bb = add i32 %i.ay, 15
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !103
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 4
  %i.bh = add i32 %i.ay, 14
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !103 ; 2 uses
  %i.bl = lshr i8 %i.bk, 4
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bg, %i.bm
  store i32 %i.bn, ptr %1, align 8, !tbaa !118
  %i.bo = and i8 %i.bk, 15
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = add i32 %i.ay, 13
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !103
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bq, %i.bv
  store i32 %i.bw, ptr %i.ag, align 4, !tbaa !118
  %i.bx = add i32 %i.ay, 12
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !103 ; 2 uses
  %i.cb = lshr i8 %i.ca, 6
  %i.cc = add i32 %i.ay, 11
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !103 ; 2 uses
  %i.cg = tail call i8 @llvm.fshl.i8(i8 %i.ca, i8 %i.cf, i8 2)
  %i.ch = add i32 %i.ay, 10
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !103 ; 2 uses
  %i.cl = tail call i8 @llvm.fshl.i8(i8 %i.cf, i8 %i.ck, i8 2)
  %i.cm = add i32 %i.ay, 9
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !103 ; 3 uses
  %i.cq = tail call i8 @llvm.fshl.i8(i8 %i.ck, i8 %i.cp, i8 2)
  %i.cr = lshr i8 %i.cp, 4
  %i.cs = and i8 %i.cr, 3
  %i.ct = add i32 %i.ay, 8
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !103 ; 2 uses
  %i.cx = tail call i8 @llvm.fshl.i8(i8 %i.cp, i8 %i.cw, i8 4)
  %i.cy = add i32 %i.ay, 7
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !103 ; 2 uses
  %i.dc = tail call i8 @llvm.fshl.i8(i8 %i.cw, i8 %i.db, i8 4)
  %i.dd = add i32 %i.ay, 6
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !103 ; 3 uses
  %i.dh = tail call i8 @llvm.fshl.i8(i8 %i.db, i8 %i.dg, i8 4)
  %i.di = insertelement <8 x i8> poison, i8 %i.cb, i64 0
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.cg, i64 1
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.cl, i64 2
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.cq, i64 3
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.cs, i64 4
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.cx, i64 5
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dc, i64 6
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 7
  %i.dq = zext <8 x i8> %i.dp to <8 x i32>
  store <8 x i32> %i.dq, ptr %i.ah, align 8, !tbaa !118
  %i.dr = lshr i8 %i.dg, 2
  %i.ds = and i8 %i.dr, 3
  %i.dt = add i32 %i.ay, 5
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !103 ; 2 uses
  %i.dx = tail call i8 @llvm.fshl.i8(i8 %i.dg, i8 %i.dw, i8 6)
  %i.dy = add i32 %i.ay, 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !103 ; 2 uses
  %i.ec = tail call i8 @llvm.fshl.i8(i8 %i.dw, i8 %i.eb, i8 6)
  %i.ed = add i32 %i.ay, 3
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !103 ; 2 uses
  %i.eh = tail call i8 @llvm.fshl.i8(i8 %i.eb, i8 %i.eg, i8 6)
  %i.ei = and i8 %i.eg, 3
  %i.ej = add i32 %i.ay, 2
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !103
  %i.en = add i32 %i.ay, 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !103
  %i.er = zext i32 %i.ay to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !103
  %i.eu = insertelement <8 x i8> poison, i8 %i.ds, i64 0
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.dx, i64 1
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.ec, i64 2
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.eh, i64 3
  %i.ey = insertelement <8 x i8> %i.ex, i8 %i.ei, i64 4
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.em, i64 5
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.eq, i64 6
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 7
  %i.fc = zext <8 x i8> %i.fb to <8 x i32>
  store <8 x i32> %i.fc, ptr %i.ai, align 8, !tbaa !118
  store i8 0, ptr %i.ab, align 8, !tbaa !168
  %i.fd = add i32 %i.ay, 16
  store i32 %i.fd, ptr %i.z, align 8, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us
  %.promoted.us = phi i8 [ %.promoted.us.pre, %._crit_edge ], [ 0, %_ZN21pana_cs6_page_decoder11read_page12Ev.exit.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.w, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ %.177139.us, %bb.g ] ; 2 uses
  %.070138.us = phi i32 [ %i.gt, %bb.w ], [ 0, %bb.g ] ; 3 uses
  %.071137.us = phi i32 [ %.172.us, %bb.w ], [ 0, %bb.g ]
  %.073136.us = phi i32 [ %.174.us, %bb.w ], [ 0, %bb.g ]
  %i.fe = phi i8 [ %i.fx, %bb.w ], [ %.promoted.us, %bb.g ] ; 7 uses
  %i.ff = urem i32 %.070138.us, 3
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.f, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fh = icmp ult i8 %i.fe, 14
  br i1 %i.fh, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us, label %.thread.us

bb.k:                                             ; preds = %bb.i
  %i.fi = icmp ult i8 %i.fe, 18
  br i1 %i.fi, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us, label %.thread.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us: ; preds = %bb.k, %bb.j
  %2 = add nuw nsw i8 %i.fe, 1                    ; 2 uses
  store i8 %2, ptr %i.ab, align 8, !tbaa !168
  %.pn126.us = zext nneg i8 %i.fe to i64
  %.in.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn126.us
  %i.fj = load i32, ptr %.in.us, align 4, !tbaa !118
  %.fr.us = freeze i32 %i.fj                      ; 3 uses
  %i.fk = icmp ugt i32 %.fr.us, 3
  br i1 %i.fk, label %.split152.us, label %bb.l

bb.l:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us
  %i.fl = icmp eq i32 %.fr.us, 3
  %spec.select124.us = select i1 %i.fl, i32 4, i32 %.fr.us
  br label %.thread.us

.thread.us:                                       ; preds = %bb.l, %bb.k, %bb.j
  %i.fm = phi i8 [ %i.fe, %bb.k ], [ %2, %bb.l ], [ %i.fe, %bb.j ]
  %i.fn = phi i32 [ 0, %bb.k ], [ %spec.select124.us, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.fo = shl nuw nsw i32 %i.m, %i.fn
  %i.fp = shl nuw nsw i32 1, %i.fn
  br label %bb.m

bb.m:                                             ; preds = %.thread.us, %bb.h
  %i.fq = phi i8 [ %i.fm, %.thread.us ], [ %i.fe, %bb.h ] ; 6 uses
  %.174.us = phi i32 [ %i.fp, %.thread.us ], [ %.073136.us, %bb.h ] ; 2 uses
  %.172.us = phi i32 [ %i.fo, %.thread.us ], [ %.071137.us, %bb.h ] ; 4 uses
  br i1 %i.f, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fr = icmp ult i8 %i.fq, 14
  br i1 %i.fr, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

bb.o:                                             ; preds = %bb.m
  %i.fs = icmp ult i8 %i.fq, 18
  br i1 %i.fs, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split: ; preds = %bb.o, %bb.n
  %i.ft = add nuw nsw i8 %i.fq, 1                 ; 2 uses
  store i8 %i.ft, ptr %i.ab, align 8, !tbaa !168
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !118
  br label %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us

_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us: ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split, %bb.o, %bb.n
  %i.fx = phi i8 [ %i.fq, %bb.o ], [ %i.fq, %bb.n ], [ %i.ft, %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split ]
  %i.fy = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.fw, %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us.sink.split ] ; 5 uses
  %i.fz = and i32 %.070138.us, 1
  %i.ga = zext nneg i32 %i.fz to i64              ; 4 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !118
  %.not93.us = icmp eq i32 %i.gc, 0
  br i1 %.not93.us, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us
  %i.gd = mul i32 %i.fy, %.174.us                 ; 3 uses
  %i.ge = icmp ult i32 %.172.us, %i.n
  br i1 %i.ge, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ga
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !118 ; 2 uses
  %i.gh = icmp ugt i32 %i.gg, %.172.us
  br i1 %i.gh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gi = sub i32 %i.gd, %.172.us
  %i.gj = add i32 %i.gi, %i.gg
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.us = phi i32 [ %i.gj, %bb.r ], [ %i.gd, %bb.q ], [ %i.gd, %bb.p ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ga
  store i32 %.0.us, ptr %i.gk, align 4, !tbaa !118
  br label %bb.w

bb.t:                                             ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit101.us
  store i32 %i.fy, ptr %i.gb, align 4, !tbaa !118
  %.not94.us = icmp eq i32 %i.fy, 0
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ga ; 2 uses
  br i1 %.not94.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.fy, ptr %i.gl, align 4, !tbaa !118
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !118
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.1.us = phi i32 [ %.0.us, %bb.s ], [ %i.fy, %bb.u ], [ %i.gm, %bb.v ] ; 2 uses
  %i.gn = add i32 %.1.us, -15                     ; 2 uses
  %.not95.us = icmp ugt i32 %i.gn, %i.o
  %i.go = add i32 %.1.us, 2147483633
  %isneg.us = icmp slt i32 %i.go, 0
  %i.gp = select i1 %isneg.us, i16 %i.aj, i16 0
  %i.gq = and i32 %i.gn, %i.o
  %i.gr = trunc nuw i32 %i.gq to i16
  %.sink = select i1 %.not95.us, i16 %i.gp, i16 %i.gr
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.av, i64 %indvars.iv
  store i16 %.sink, ptr %i.gs, align 2, !tbaa !93
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gt = add nuw nsw i32 %.070138.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.gt, %i.g
  br i1 %exitcond.not, label %bb.x, label %bb.h, !llvm.loop !170

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.gu = add nuw nsw i32 %.075140.us, 1          ; 2 uses
  %exitcond159.not = icmp eq i32 %i.gu, %umax
  br i1 %exitcond159.not, label %._crit_edge.us, label %bb.c, !llvm.loop !171

.split142.us:                                     ; preds = %._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.gv = add nuw nsw i32 %.079143.us, 16         ; 2 uses
  %i.gw = load i16, ptr %i.h, align 8, !tbaa !78
  %i.gx = zext i16 %i.gw to i32
  %i.gy = add nsw i32 %i.gx, -15
  %i.gz = icmp slt i32 %i.gv, %i.gy
  br i1 %i.gz, label %.lr.ph144.split.us, label %._crit_edge145, !llvm.loop !172

._crit_edge.us:                                   ; preds = %bb.x
  %i.ha = add nuw nsw i32 %.078141.us, 1          ; 2 uses
  %exitcond160.not = icmp eq i32 %i.ha, 16
  br i1 %exitcond160.not, label %.split142.us, label %.lr.ph.us, !llvm.loop !173

.loopexit127.split.us:                            ; preds = %.lr.ph144.split.us
  %lpad.loopexit129.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit127

.loopexit.split.us:                               ; preds = %bb.d
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  %i.hd = tail call ptr @__cxa_begin_catch(ptr %i.hc) #14 ; 0 uses
  %i.he = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 1, ptr %i.he, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.he, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.ag unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit104 unwind label %bb.af

._crit_edge145:                                   ; preds = %.split142, %.split142.us, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge145
  %i.hg = ptrtoint ptr %.sroa.0.1 to i64
  %i.hh = sub i64 %.sroa.16.1, %i.hg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.hh) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge145, %bb.aa
  ret void

.lr.ph144.split:                                  ; preds = %.lr.ph144, %.split142
  %.079143 = phi i32 [ %i.ho, %.split142 ], [ 0, %.lr.ph144 ]
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !79  ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !80
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = invoke noundef i32 %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %.sroa.0.1, i64 noundef %i.y, i64 noundef 16)
          to label %bb.ab unwind label %.loopexit127.split, !call_target !130

bb.ab:                                            ; preds = %.lr.ph144.split
  %.not = icmp eq i32 %i.hm, 16
  br i1 %.not, label %.split142, label %.split147.us

.split147.us:                                     ; preds = %bb.ab, %bb.b
  %i.hn = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.hn, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.hn, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.ag unwind label %.loopexit.split-lp128

.loopexit127.split:                               ; preds = %.lr.ph144.split
  %lpad.loopexit129 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit127

.loopexit.split-lp128:                            ; preds = %.split147.us
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit127

.split142:                                        ; preds = %bb.ab
  %i.ho = add nuw nsw i32 %.079143, 16            ; 2 uses
  %i.hp = load i16, ptr %i.h, align 8, !tbaa !78
  %i.hq = zext i16 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -15
  %i.hs = icmp slt i32 %i.ho, %i.hr
  br i1 %i.hs, label %.lr.ph144.split, label %._crit_edge145, !llvm.loop !172

.split150.us.a:                                   ; preds = %bb.e, %bb.f
  %i.ht = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.ht, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %.noexc100 unwind label %.loopexit.split-lp

.noexc100:                                        ; preds = %.split150.us.a
  unreachable

.loopexit.split-lp:                               ; preds = %.split150.us.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.split152.us:                                     ; preds = %_ZN21pana_cs6_page_decoder11nextpixel12Ev.exit.us
  %i.hu = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.hu, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.hu, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.ag unwind label %bb.ac

bb.ac:                                            ; preds = %.split152.us
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split.us, %.loopexit.split-lp, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.hv, %bb.ac ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %.loopexit127

.loopexit127:                                     ; preds = %.loopexit.split-lp128, %.loopexit127.split.us, %.loopexit127.split, %bb.ad
  %.pn97.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp128 ], [ %lpad.loopexit129, %.loopexit127.split ], [ %lpad.loopexit129.us, %.loopexit127.split.us ] ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIhSaIhEED2Ev.exit104, label %bb.ae

bb.ae:                                            ; preds = %.loopexit127
  %i.hw = ptrtoint ptr %.sroa.0.1 to i64
  %i.hx = sub i64 %.sroa.16.1, %i.hw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.hx) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit104

_ZNSt6vectorIhSaIhEED2Ev.exit104:                 ; preds = %bb.z, %.loopexit127, %bb.ae
  %.pn97.pn123 = phi { ptr, i32 } [ %.pn97.pn, %bb.ae ], [ %.pn97.pn, %.loopexit127 ], [ %i.hf, %bb.z ]
  resume { ptr, i32 } %.pn97.pn123

bb.af:                                            ; preds = %bb.z
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  tail call void @__clang_call_terminate(ptr %i.hz) #18
  unreachable

bb.ag:                                            ; preds = %.split152.us, %.split147.us, %bb.y
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
  %i.d = icmp eq i32 %i.c, 14
  %i.e = select i1 %i.d, i32 9, i32 10            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !77
  %.rhs.trunc = trunc nuw nsw i32 %i.e to i16
  %i.i = udiv i16 %i.h, %.rhs.trunc
  %.zext = zext nneg i16 %i.i to i32              ; 2 uses
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
end_hunk_0
