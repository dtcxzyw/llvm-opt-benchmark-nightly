Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiButton?download=true
inline.NumInlined: 861
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9GUIButton7OnEventERK6SEvent:bb.a
  %i.er = load ptr, ptr %0, align 8, !tbaa !24
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 432
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext false)
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

bb.af:                                            ; preds = %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit46
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 7366 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !106, !range !76, !noundef !77
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = xor i1 %i.ec, true
  %.sink = select i1 %i.ew, i1 %i.ex, i1 false
  %i.ey = load ptr, ptr %0, align 8, !tbaa !24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 432
  %i.fa = load ptr, ptr %i.ez, align 8
  tail call void %i.fa(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext %.sink)
  %i.fb = load i8, ptr %i.eu, align 2, !tbaa !106, !range !76, !noundef !77
  %i.fc = trunc nuw i8 %i.fb to i1                ; 2 uses
  %.not = xor i1 %i.fc, true
  %or.cond = and i1 %i.ec, %.not
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !78 ; 2 uses
  %.not35 = icmp eq ptr %i.fe, null
  br i1 %.not35, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  br i1 %i.fc, label %bb.ai, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ff = load i8, ptr %i.ea, align 1, !tbaa !107, !range !76, !noundef !77
  %.not36 = icmp eq i8 %i.eb, %i.ff
  br i1 %.not36, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ai
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.ag
  %i.fg = phi ptr [ %.pre, %._crit_edge ], [ %i.fe, %bb.ag ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 7364
  %i.fk = and i8 %i.fi, 1
  store i8 %i.fk, ptr %i.fj, align 4, !tbaa !108
  %i.fl = load i8, ptr %i.fh, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 7365
  %i.fn = lshr i8 %i.fl, 1
  %.lobit = and i8 %i.fn, 1
  store i8 %.lobit, ptr %i.fm, align 1, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fp, i8 0, i64 28, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !201
  store ptr %0, ptr %i.fo, align 8, !tbaa !94
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.fq, align 8, !tbaa !94
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 5, ptr %i.fr, align 8, !tbaa !94
  %i.fs = load ptr, ptr %i.fg, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(308) %i.fg, ptr noundef nonnull align 8 dereferenceable(56) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

.thread:                                          ; preds = %bb.k, %bb.j, %.thread53, %bb.x, %bb.r, %.thread49, %bb.d, %bb.q, %bb.v, %bb.w, %bb.u
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !78 ; 3 uses
  %.not40 = icmp eq ptr %i.fx, null
  br i1 %.not40, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %bb.ak

bb.ak:                                            ; preds = %.thread
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(308) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

_ZN3gui11IGUIElement7OnEventERK6SEvent.exit:      ; preds = %bb.ag, %bb.z, %bb.aa, %bb.y, %bb.c, %bb.b, %bb.ak, %.thread, %bb.ae, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit46.thread, %bb.aj, %bb.ai, %bb.ah, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, %bb.ab, %bb.o, %bb.p, %bb.h, %bb.i, %bb.l
  %.1 = phi i1 [ true, %bb.ae ], [ false, %.thread ], [ true, %bb.h ], [ true, %bb.l ], [ true, %bb.o ], [ true, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.z ], [ true, %bb.ab ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit46.thread ], [ %i.gb, %bb.ak ], [ %i.j, %bb.c ], [ false, %bb.b ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.ag ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton4drawEv(ptr noundef nonnull align 8 dereferenceable(7452) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::rect", align 8        ; 11 uses
  %2 = alloca [4 x %"class.video::SColor"], align 16 ; 5 uses
  %3 = alloca %"class.core::rect", align 8        ; 7 uses
  %4 = alloca %"class.core::rect", align 8        ; 7 uses
  %5 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !118, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3gui11IGUIElement4drawEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !119 ; 3 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %_ZNK9GUIButton9isHoveredEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNK9GUIButton9isHoveredEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = icmp eq ptr %i.l, %0
  %i.n = zext i1 %i.m to i8
  br label %_ZNK9GUIButton9isHoveredEv.exit

_ZNK9GUIButton9isHoveredEv.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi i8 [ 1, %bb.b ], [ 0, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext true), !inline_history !120
  %i.u = zext i1 %i.t to i8                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7388 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !202, !range !76, !noundef !77
  %.not = icmp eq i8 %i.w, %i.o
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9GUIButton9isHoveredEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7389
  %i.y = load i8, ptr %i.x, align 1, !tbaa !203, !range !76, !noundef !77
  %.not24 = icmp eq i8 %i.y, %i.u
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9GUIButton9isHoveredEv.exit
  store i8 %i.o, ptr %i.v, align 4, !tbaa !202
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7389
  store i8 %i.u, ptr %i.z, align 1, !tbaa !203
  tail call void @_ZN9GUIButton12setFromStateEv(ptr noundef nonnull align 8 dereferenceable(7452) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 3 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7369
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !69, !range !76, !noundef !77
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7367
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !107, !range !76, !noundef !77
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7372
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !24
  %. = select i1 %i.ap, i64 152, i64 136
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %6 = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %7 = load i32, ptr %i.ax, align 8, !tbaa !121
  %8 = add nsw i32 %7, %6
  %9 = sdiv i32 %8, 2                             ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %11 = load i32, ptr %10, align 4, !tbaa !116
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !117
  %14 = add nsw i32 %13, %11
  %15 = sdiv i32 %14, 2                           ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %15 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %9 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 4 uses
  %.not25 = icmp eq ptr %i.az, null
  br i1 %.not25, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !122
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !121 ; 4 uses
  %i.bd = load i32, ptr %1, align 8, !tbaa !115   ; 2 uses
  %i.be = icmp eq i32 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !116 ; 3 uses
  br i1 %i.be, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !123 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !124 ; 2 uses
  store i64 0, ptr %1, align 8
  store i32 %i.bl, ptr %i.bb, align 8, !tbaa !82
  store i32 %i.bn, ptr %i.bf, align 4, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.k, %bb.j
  %i.bo = phi i32 [ 0, %bb.k ], [ %i.bi, %bb.j ], [ %i.bi, %bb.i ]
  %i.bp = phi i32 [ %i.bn, %bb.k ], [ %i.bg, %bb.j ], [ %i.bg, %bb.i ] ; 3 uses
  %i.bq = phi i32 [ 0, %bb.k ], [ %i.bc, %bb.j ], [ %i.bd, %bb.i ] ; 3 uses
  %i.br = phi i32 [ %i.bl, %bb.k ], [ %i.bc, %bb.j ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bs = sub nsw i32 %i.br, %i.bq
  %.neg = sdiv i32 %i.bs, -2
  %i.bt = add nsw i32 %.neg, %9                   ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bv = sub nsw i32 %i.bp, %i.bo
  %.neg26 = sdiv i32 %i.bv, -2
  %i.bw = add nsw i32 %.neg26, %15                ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7367
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !107, !range !76, !noundef !77
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread

bb.l:                                             ; preds = %._crit_edge
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext true), !inline_history !204 ; 2 uses
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf), !inline_history !205 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, %0
  br i1 %i.ck, label %_ZNK9GUIButton9isHoveredEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %_ZNK9GUIButton9isHoveredEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !78
  %i.cn = icmp eq ptr %i.cm, %0
  br label %_ZNK9GUIButton9isHoveredEv.exit.i.i

_ZNK9GUIButton9isHoveredEv.exit.i.i:              ; preds = %bb.n, %bb.m, %bb.l
  %i.co = phi i1 [ true, %bb.l ], [ false, %bb.m ], [ %i.cn, %bb.n ] ; 2 uses
  %i.cp = load ptr, ptr %0, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(7452) %0), !inline_history !206
  br i1 %i.cs, label %bb.o, label %.lr.ph.i.i

bb.o:                                             ; preds = %_ZNK9GUIButton9isHoveredEv.exit.i.i
  %.mux.i = select i1 %i.co, i32 3, i32 2
  %brmerge1.i = or i1 %i.ce, %i.co
  %.mux.mux.i = select i1 %i.ce, i32 %.mux.i, i32 1
  br i1 %brmerge1.i, label %.lr.ph.i.i, label %_ZNK9GUIButton13getImageStateEb.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZNK9GUIButton9isHoveredEv.exit.i.i
  %.030.i.i = phi i32 [ %.mux.mux.i, %bb.o ], [ 8, %_ZNK9GUIButton9isHoveredEv.exit.i.i ] ; 2 uses
  %i.ct = zext nneg i32 %.030.i.i to i64          ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !89 ; 2 uses
  %.not18.i.i74 = icmp eq ptr %i.cv, null
  br i1 %.not18.i.i74, label %.lr.ph, label %_ZNK9GUIButton13getImageStateEb.exit

.lr.ph:                                           ; preds = %.lr.ph.i.i, %switch.lookup
  %.123.i.i75 = phi i32 [ %switch.ext, %switch.lookup ], [ %.030.i.i, %.lr.ph.i.i ]
  %switch.tableidx = add nsw i32 %.123.i.i75, -3  ; 3 uses
  %i.cw = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cw, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZNK9GUIButton13getImageStateEb.exit.thread

switch.lookup:                                    ; preds = %.lr.ph
  %i.cx = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN9GUIButton4drawEv, i64 %i.cx
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32
  %i.cy = zext i8 %switch.load to i64             ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !89 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.da, null
  br i1 %.not18.i.i, label %.lr.ph, label %_ZNK9GUIButton13getImageStateEb.exit, !llvm.loop !5

_ZNK9GUIButton13getImageStateEb.exit:             ; preds = %switch.lookup, %.lr.ph.i.i
  %i.db = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.da, %switch.lookup ]
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.cy, %switch.lookup ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.pre-phi ; 2 uses
  %i.dd = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 4 uses
  %i.de = icmp eq ptr %i.dd, %i.db
  br i1 %i.de, label %bb.p, label %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread

bb.p:                                             ; preds = %_ZNK9GUIButton13getImageStateEb.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load <2 x i32>, ptr %i.ba, align 8
  %i.dh = load <2 x i32>, ptr %i.df, align 8
  %i.di = icmp eq <2 x i32> %i.dg, %i.dh          ; 2 uses
  %i.dj = extractelement <2 x i1> %i.di, i64 0
  %i.dk = extractelement <2 x i1> %i.di, i64 1
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %_ZNK9GUIButton11ButtonImageeqERKS0_.exit, label %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread

_ZNK9GUIButton11ButtonImageeqERKS0_.exit:         ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.do = load <2 x i32>, ptr %i.dm, align 8
  %i.dp = load <2 x i32>, ptr %i.dn, align 8
  %i.dq = icmp eq <2 x i32> %i.do, %i.dp          ; 2 uses
  %i.dr = extractelement <2 x i1> %i.dq, i64 0
  %i.ds = extractelement <2 x i1> %i.dq, i64 1
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %_ZNK9GUIButton13getImageStateEb.exit.thread, label %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread

_ZNK9GUIButton13getImageStateEb.exit.thread:      ; preds = %.lr.ph, %bb.o, %_ZNK9GUIButton11ButtonImageeqERKS0_.exit
  %i.du = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 17)
  %i.dy = add nsw i32 %i.dx, %i.bt
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call noundef i32 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 18)
  %i.ed = add nsw i32 %i.ec, %i.bw
  %.pre78 = load ptr, ptr %i.ay, align 8, !tbaa !89
  br label %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread

_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread:  ; preds = %bb.p, %_ZNK9GUIButton13getImageStateEb.exit, %_ZNK9GUIButton11ButtonImageeqERKS0_.exit, %_ZNK9GUIButton13getImageStateEb.exit.thread, %._crit_edge
  %i.ee = phi ptr [ %.pre78, %_ZNK9GUIButton13getImageStateEb.exit.thread ], [ %i.dd, %_ZNK9GUIButton11ButtonImageeqERKS0_.exit ], [ %i.az, %._crit_edge ], [ %i.dd, %_ZNK9GUIButton13getImageStateEb.exit ], [ %i.dd, %bb.p ] ; 2 uses
  %.sroa.046.0 = phi i32 [ %i.dy, %_ZNK9GUIButton13getImageStateEb.exit.thread ], [ %i.bt, %_ZNK9GUIButton11ButtonImageeqERKS0_.exit ], [ %i.bt, %._crit_edge ], [ %i.bt, %_ZNK9GUIButton13getImageStateEb.exit ], [ %i.bt, %bb.p ] ; 4 uses
  %.sroa.11.0 = phi i32 [ %i.ed, %_ZNK9GUIButton13getImageStateEb.exit.thread ], [ %i.bw, %_ZNK9GUIButton11ButtonImageeqERKS0_.exit ], [ %i.bw, %._crit_edge ], [ %i.bw, %_ZNK9GUIButton13getImageStateEb.exit ], [ %i.bw, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 7448
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !82
  %i.eh = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ei, ptr %2, align 16, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 7408 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 7416
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !121
  %i.em = load i32, ptr %i.ej, align 8, !tbaa !115
  %i.en = sub nsw i32 %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 7420
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !117
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 7412
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !116
  %i.es = sub nsw i32 %i.ep, %i.er
  %i.et = mul nsw i32 %i.es, %i.en
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 7370 ; 2 uses
  br i1 %i.eu, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !70, !range !76, !noundef !77
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !122
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ey = load i32, ptr %i.bu, align 4, !tbaa !116
  %.sroa.11.0.insert.ext = zext i32 %.sroa.11.0 to i64
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.0.insert.ext, 32
  %.sroa.046.0.insert.ext = zext i32 %.sroa.046.0 to i64
  %.sroa.046.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.046.0.insert.ext
  store i64 %.sroa.046.0.insert.insert, ptr %3, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fa = add i32 %i.br, %.sroa.046.0
  %i.fb = sub i32 %i.fa, %i.bq
  %i.fc = add i32 %i.bp, %.sroa.11.0
  %i.fd = sub i32 %i.fc, %i.ey
  store i32 %i.fb, ptr %i.ez, align 8, !tbaa !84
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !85
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 7368
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !125, !range !76, !noundef !77
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 416
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %i.ff, ptr noundef nonnull %2, i1 noundef zeroext %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.y

bb.u:                                             ; preds = %_ZNK9GUIButton11ButtonImageeqERKS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.fm = load i8, ptr %i.ev, align 2, !tbaa !70, !range !76, !noundef !77
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !122
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fo = load i32, ptr %i.bu, align 4, !tbaa !116
  %.sroa.11.0.insert.ext56 = zext i32 %.sroa.11.0 to i64
  %.sroa.11.0.insert.shift57 = shl nuw i64 %.sroa.11.0.insert.ext56, 32
  %.sroa.046.0.insert.ext52 = zext i32 %.sroa.046.0 to i64
  %.sroa.046.0.insert.insert54 = or disjoint i64 %.sroa.11.0.insert.shift57, %.sroa.046.0.insert.ext52
  store i64 %.sroa.046.0.insert.insert54, ptr %4, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fq = add i32 %i.br, %.sroa.046.0
  %i.fr = sub i32 %i.fq, %i.bq
  %i.fs = add i32 %i.bp, %.sroa.11.0
  %i.ft = sub i32 %i.fs, %i.fo
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !84
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !85
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_Z17draw2DImage9SlicePN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_S8_PS7_PKNS_6SColorE(ptr noundef %i.ae, ptr noundef %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ej, ptr noundef nonnull %i.fv, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !104
  %.not27 = icmp eq ptr %i.fx, null
  br i1 %.not27, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = load ptr, ptr %0, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 144
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.gb, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.sroa.0.0.insert.insert.i, ptr %5, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 7367
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !107, !range !76, !noundef !77
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 7352
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !126
  call void @_ZN9GUIButton10drawSpriteEN3gui17EGUI_BUTTON_STATEEjRKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef %i.ge, i32 noundef %i.gg, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef zeroext i1 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.gm = select i1 %i.gl, i32 4, i32 5
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 7360
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !113
  call void @_ZN9GUIButton10drawSpriteEN3gui17EGUI_BUTTON_STATEEjRKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef %i.gm, i32 noundef %i.go, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.gp = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = call noundef ptr %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.gp), !inline_history !119 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, %0
  br i1 %i.gu, label %_ZNK9GUIButton9isHoveredEv.exit37.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i36 = icmp eq ptr %i.gt, null
  br i1 %.not.i36, label %_ZNK9GUIButton9isHoveredEv.exit37.thread67, label %_ZNK9GUIButton9isHoveredEv.exit37

_ZNK9GUIButton9isHoveredEv.exit37:                ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !78
  %.fr = freeze ptr %i.gw
  %i.gx = icmp eq ptr %.fr, %0
  br i1 %i.gx, label %_ZNK9GUIButton9isHoveredEv.exit37.thread, label %_ZNK9GUIButton9isHoveredEv.exit37.thread67

_ZNK9GUIButton9isHoveredEv.exit37.thread:         ; preds = %bb.ab, %_ZNK9GUIButton9isHoveredEv.exit37
  br label %_ZNK9GUIButton9isHoveredEv.exit37.thread67

_ZNK9GUIButton9isHoveredEv.exit37.thread67:       ; preds = %bb.ac, %_ZNK9GUIButton9isHoveredEv.exit37, %_ZNK9GUIButton9isHoveredEv.exit37.thread
  %i.gy = phi i32 [ 2, %_ZNK9GUIButton9isHoveredEv.exit37.thread ], [ 3, %_ZNK9GUIButton9isHoveredEv.exit37 ], [ 3, %bb.ac ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 7356
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !114
  call void @_ZN9GUIButton10drawSpriteEN3gui17EGUI_BUTTON_STATEEjRKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef %i.gy, i32 noundef %i.ha, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK9GUIButton9isHoveredEv.exit37.thread67, %bb.aa, %bb.z
  %i.hb = load ptr, ptr %0, align 8, !tbaa !24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef zeroext i1 %i.hd(ptr noundef nonnull align 8 dereferenceable(308) %0), !inline_history !207
  br i1 %i.he, label %bb.ae, label %_ZN3gui11IGUIElement4drawEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07.i = load ptr, ptr %i.hf, align 8, !tbaa !127 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.04.07.i, %i.hf
  br i1 %.not8.i, label %_ZN3gui11IGUIElement4drawEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.i
  %.sroa.04.09.i = phi ptr [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.07.i, %bb.ae ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !80 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !24
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(308) %i.hh), !inline_history !207
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.09.i, align 8, !tbaa !127 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.04.0.i, %i.hf
  br i1 %.not.i38, label %_ZN3gui11IGUIElement4drawEv.exit, label %.lr.ph.i

_ZN3gui11IGUIElement4drawEv.exit:                 ; preds = %.lr.ph.i, %bb.ae, %bb.ad, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton9isHoveredEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(7452) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.j = icmp eq ptr %i.i, %0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.k = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton9isFocusedEv(ptr noundef nonnull align 8 dereferenceable(7452) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0, i1 noundef zeroext true)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton12setFromStateEv(ptr noundef nonnull align 8 dereferenceable(7452) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.StyleSpec, align 8           ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(7452) %0)
  %spec.select = select i1 %i.d, i8 4, i8 0       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !119 ; 3 uses
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %_ZNK9GUIButton9isHoveredEv.exit.thread, label %bb.b

_ZNK9GUIButton9isHoveredEv.exit.thread:           ; preds = %bb.a
  %i.l = or disjoint i8 %spec.select, 2
  br label %_ZNK9GUIButton9isHoveredEv.exit.thread7

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK9GUIButton9isHoveredEv.exit.thread7, label %_ZNK9GUIButton9isHoveredEv.exit

_ZNK9GUIButton9isHoveredEv.exit:                  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78
  %.fr = freeze ptr %i.n
  %i.o = icmp eq ptr %.fr, %0
  %i.p = or disjoint i8 %spec.select, 2
  %spec.select9 = select i1 %i.o, i8 %i.p, i8 %spec.select
  br label %_ZNK9GUIButton9isHoveredEv.exit.thread7

_ZNK9GUIButton9isHoveredEv.exit.thread7:          ; preds = %_ZNK9GUIButton9isHoveredEv.exit, %bb.b, %_ZNK9GUIButton9isHoveredEv.exit.thread
  %i.q = phi i8 [ %spec.select, %bb.b ], [ %spec.select9, %_ZNK9GUIButton9isHoveredEv.exit ], [ %i.l, %_ZNK9GUIButton9isHoveredEv.exit.thread ]
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext true), !inline_history !120
  %i.w = zext i1 %i.v to i8
  %.2 = or i8 %i.q, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN9StyleSpec28getStyleFromStatePropagationERKSt5arrayIS_Lm8EENS_5StateE(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %1, ptr noundef nonnull align 8 dereferenceable(6720) %i.x, i8 noundef zeroext %.2)
  %i.y = load ptr, ptr %0, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 520
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef nonnull align 8 dereferenceable(833) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK9GUIButton9isHoveredEv.exit.thread7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ab) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.d:                                             ; preds = %_ZNK9GUIButton9isHoveredEv.exit.thread7
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 9) i32 @_ZNK9GUIButton13getImageStateEb(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext true), !inline_history !208 ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !209 ; 3 uses
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %_ZNK9GUIButton9isHoveredEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE:bb.a
  ret i32 %.1.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton15setOverrideFontEPN3gui8IGUIFontE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7452) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #28, !inline_history !4
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.d, %bb.c, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !67
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !24
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !91
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK17IReferenceCounted4dropEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7400
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(308) %i.v, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK9GUIButton15getOverrideFontEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK9GUIButton13getActiveFontEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton16setOverrideColorEN5video6SColorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7452) initializes((7344, 7345), (7348, 7352)) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7348
  store i32 %1, ptr %i.a, align 4, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7344
  store i8 1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(308) %i.d, i32 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @_ZNK9GUIButton16getOverrideColorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7348
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4, !tbaa !82
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK9GUIButton14getActiveColorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9GUIButton19enableOverrideColorEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7452) initializes((7344, 7345)) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7344
  store i8 %i.a, ptr %i.b, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton22isOverrideColorEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7344
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9GUIButton8setImageEN3gui23EGUI_BUTTON_IMAGE_STATEEPN5video8ITextureERKN4core4rectIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7452) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 8
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %2, align 8, !tbaa !24
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !91
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #28, !inline_history !4
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.e, %bb.d
  store ptr %2, ptr %i.k, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !122
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton8setImageEPN5video8ITextureE(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef 0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton8setImageEPN5video8ITextureERKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef 0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton15setPressedImageEPN5video8ITextureE(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef 4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton15setPressedImageEPN5video8ITextureERKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 noundef 4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton7setTextEPKw(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement7setTextEPKw(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9GUIButton15setIsPushButtonEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7452) initializes((7366, 7367)) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7366
  store i8 %i.a, ptr %i.b, align 2, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton9isPressedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7367
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton10setPressedEb(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7367 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107, !range !76, !noundef !77
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %.not = icmp eq i8 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #28 ; 0 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !111
  %i.f = mul i64 %i.e, 1000
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112
  %i.i = udiv i64 %i.h, 1000000
  %i.j = add i64 %i.i, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7352
  store i32 %i.k, ptr %i.l, align 8, !tbaa !126
  store i8 %i.c, ptr %i.a, align 1, !tbaa !107
  call void @_ZN9GUIButton12setFromStateEv(ptr noundef nonnull align 8 dereferenceable(7452) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton12isPushButtonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7366
  %i.b = load i8, ptr %i.a, align 2, !tbaa !106, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9GUIButton18setUseAlphaChannelEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7452) initializes((7368, 7369)) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7368
  store i8 %i.a, ptr %i.b, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton18isAlphaChannelUsedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7368
  %i.b = load i8, ptr %i.a, align 8, !tbaa !125, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton15isDrawingBorderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7369
  %i.b = load i8, ptr %i.a, align 1, !tbaa !69, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN9GUIButton9addButtonEPN3gui15IGUIEnvironmentERKN4core4rectIiEEP20ISimpleTextureSourcePNS0_11IGUIElementEiPKwSD_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(7472) ptr @_Znwm(i64 noundef 7472) #30 ; 9 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %3, %bb.a ]
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  invoke void @_ZN9GUIButtonC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiN4core4rectIiEEP20ISimpleTextureSourceb(ptr noundef nonnull align 8 dereferenceable(7452) %i.a, ptr noundef %0, ptr noundef %i.f, i32 noundef %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %2, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp eq ptr %5, null
  br i1 %.not18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(7452) %i.a, ptr noundef nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 7472) #31
  resume { ptr, i32 } %i.j

end_hunk_1
begin_hunk_2_@_ZN9GUIButton12setFromStyleERK9StyleSpec:bb.a
  %i.lx = or disjoint i32 %i.lv, %i.lw
  %i.ly = or disjoint i32 %i.lx, %i.lt
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 7380
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !82
  %i.ma = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !24
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = tail call noundef ptr %i.md(ptr noundef nonnull align 8 dereferenceable(8) %i.ma) ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = tail call i32 %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.me, i32 noundef 3) ; 4 uses
  %i.mj = and i32 %i.mi, -16777216
  %i.mk = lshr i32 %i.mi, 16
  %i.ml = and i32 %i.mk, 255
  %i.mm = uitofp nsz nneg i32 %i.ml to float
  %i.mn = fmul nnan nsz float %i.mm, 1.250000e+00
  %i.mo = fptoui float %i.mn to i32
  %i.mp = tail call noundef i32 @llvm.umin.i32(i32 %i.mo, i32 255)
  %i.mq = lshr i32 %i.mi, 8
  %i.mr = and i32 %i.mq, 255
  %i.ms = uitofp nsz nneg i32 %i.mr to float
  %i.mt = fmul nnan nsz float %i.ms, 1.250000e+00
  %i.mu = fptoui float %i.mt to i32
  %i.mv = tail call noundef i32 @llvm.umin.i32(i32 %i.mu, i32 255)
  %i.mw = and i32 %i.mi, 255
  %i.mx = uitofp nsz nneg i32 %i.mw to float
  %i.my = fmul nnan nsz float %i.mx, 1.250000e+00
  %i.mz = fptoui float %i.my to i32
  %i.na = tail call noundef i32 @llvm.umin.i32(i32 %i.mz, i32 255)
  %i.nb = shl nuw nsw i32 %i.mp, 16
  %i.nc = or disjoint i32 %i.nb, %i.mj
  %i.nd = shl nuw nsw i32 %i.mv, 8
  %i.ne = or disjoint i32 %i.nc, %i.nd
  %i.nf = or disjoint i32 %i.ne, %i.na
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 7384
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !82
  br label %.loopexit

.split.us.split.us.preheader:                     ; preds = %.split.us
  store i32 %i.dw, ptr %i.dn, align 4, !tbaa !82
  %i.nh = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 96
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = tail call noundef ptr %i.nk(ptr noundef nonnull align 8 dereferenceable(8) %i.nh) ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = tail call i32 %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nl, i32 noundef 1)
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 7376
  store i32 %i.np, ptr %i.nq, align 8, !tbaa !82
  %i.nr = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !24
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 96
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = tail call noundef ptr %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.nr) ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !24
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = tail call i32 %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, i32 noundef 2)
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 7380
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !82
  %i.ob = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !24
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 96
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = tail call noundef ptr %i.oe(ptr noundef nonnull align 8 dereferenceable(8) %i.ob) ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !24
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = tail call i32 %i.oi(ptr noundef nonnull align 8 dereferenceable(8) %i.of, i32 noundef 3)
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 7384
  store i32 %i.oj, ptr %i.ok, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit113, %.loopexit.loopexit112, %.split.preheader, %.split.us.split.preheader, %.split.us.split.us.preheader, %_ZNK9StyleSpec8getColorENS_8PropertyE.exit, %bb.c
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !93
  %.not96 = icmp eq i64 %i.om, 0
  br i1 %.not96, label %bb.e, label %_ZNK9StyleSpec8getColorENS_8PropertyE.exit56

_ZNK9StyleSpec8getColorENS_8PropertyE.exit56:     ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 4, !tbaa !29
  %i.on = call noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext false, i8 noundef zeroext -1) ; 0 uses
  %i.oo = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.op = load ptr, ptr %0, align 8, !tbaa !24
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 304
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 %i.oo)
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.os = load ptr, ptr %0, align 8, !tbaa !24
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 304
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 -1)
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 7344
  store i8 0, ptr %i.ov, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9StyleSpec8getColorENS_8PropertyE.exit56
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !93 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !129
  %i.pb = call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ox, ptr %i.pa)
  %i.pc = zext i1 %i.pb to i8
  br label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit:       ; preds = %bb.f, %bb.g
  %.0.i = phi i8 [ %i.pc, %bb.g ], [ 0, %bb.f ]
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %.0.i, ptr %i.pd, align 1, !tbaa !72
  %i.pe = load ptr, ptr %0, align 8, !tbaa !24
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(308) %0), !inline_history !0
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !93 ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit58, label %bb.h

bb.h:                                             ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !129
  %i.pm = call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.pi, ptr %i.pl)
  br label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit58

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit58:     ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, %bb.h
  %.0.i57 = phi i1 [ %i.pm, %bb.h ], [ true, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit ]
  %i.pn = load ptr, ptr %0, align 8, !tbaa !24
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 472
  %i.pp = load ptr, ptr %i.po, align 8
  call void %i.pp(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext %.0.i57)
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !93 ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 0
  br i1 %i.ps, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60, label %bb.i

bb.i:                                             ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit58
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !129
  %i.pv = call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.pr, ptr %i.pu)
  br label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60:     ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit58, %bb.i
  %.0.i59 = phi i1 [ %i.pv, %bb.i ], [ true, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit58 ]
  %i.pw = load ptr, ptr %0, align 8, !tbaa !24
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 448
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext %.0.i59)
  %i.pz = call noundef ptr @_ZNK9StyleSpec7getFontEv(ptr noundef nonnull align 8 dereferenceable(833) %1)
  %i.qa = load ptr, ptr %0, align 8, !tbaa !24
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 280
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %i.pz)
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 7408 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7416
  %i.qe = load <2 x i64>, ptr %i.qd, align 8      ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !93
  %i.qh = icmp eq i64 %i.qg, 0
  br i1 %i.qh, label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.qj = call noundef zeroext i1 @_ZNK9StyleSpec9parseRectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.qi, ptr noundef nonnull %4)
  %i.qk = load <2 x i64>, ptr %4, align 16
  %i.ql = insertelement <2 x i1> poison, i1 %i.qj, i64 0
  %i.qm = shufflevector <2 x i1> %i.ql, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.qn = select <2 x i1> %i.qm, <2 x i64> %i.qk, <2 x i64> %i.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit

_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit: ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60, %bb.j
  %i.qo = phi <2 x i64> [ %i.qn, %bb.j ], [ %i.qe, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60 ]
  store <2 x i64> %i.qo, ptr %i.qd, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !93
  %.not97 = icmp eq i64 %i.qq, 0
  br i1 %.not97, label %bb.m, label %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit

_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit: ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 7392
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !71 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !24
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call noundef ptr %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %i.qr, ptr noundef null), !inline_history !223 ; 2 uses
  %i.qy = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !121
  %i.qz = load i32, ptr %i.qd, align 8, !tbaa !115
  %i.ra = sub nsw i32 %i.qy, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 7420
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !117
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 7412
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !116
  %i.rf = sub nsw i32 %i.rc, %i.re
  %i.rg = mul nsw i32 %i.rf, %i.ra
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !81 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !24
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = call noundef ptr %i.rm(ptr noundef nonnull align 8 dereferenceable(8) %i.rj)
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !121
  %i.rr = load i32, ptr %i.ro, align 8, !tbaa !115
  %i.rs = sub nsw i32 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !117
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !116
  %i.rx = sub nsw i32 %i.ru, %i.rw
  %i.ry = call noundef ptr @_Z21guiScalingImageButtonPN5video12IVideoDriverEPNS_8ITextureEii(ptr noundef %i.rn, ptr noundef %i.qx, i32 noundef %i.rs, i32 noundef %i.rx)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit, %bb.k
  %.sink = phi ptr [ %i.ry, %bb.k ], [ %i.qx, %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit ]
  %i.rz = load ptr, ptr %0, align 8, !tbaa !24
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 352
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %.sink)
  %i.sc = load ptr, ptr %0, align 8, !tbaa !24
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 488
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext true)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit
  %i.sf = load ptr, ptr %0, align 8, !tbaa !24
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 352
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef null)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !93
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.sm = call noundef zeroext i1 @_ZNK9StyleSpec9parseRectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.sl, ptr noundef nonnull %3)
  %i.sn = load <2 x i64>, ptr %3, align 16
  %i.so = insertelement <2 x i1> poison, i1 %i.sm, i64 0
  %i.sp = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.sq = select <2 x i1> %i.sp, <2 x i64> %i.sn, <2 x i64> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70

_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70: ; preds = %bb.n, %bb.o
  %i.sr = phi <2 x i64> [ %i.sq, %bb.o ], [ zeroinitializer, %bb.n ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 7424 ; 2 uses
  %i.st = trunc <2 x i64> %i.sr to <2 x i32>
  %i.su = lshr <2 x i64> %i.sr, splat (i64 32)
  %i.sv = load <4 x i32>, ptr %i.qd, align 8, !tbaa !82 ; 2 uses
  %i.sw = shufflevector <4 x i32> %i.sv, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.sx = add nsw <2 x i32> %i.sw, %i.st
  %i.sy = trunc nuw <2 x i64> %i.su to <2 x i32>
  %i.sz = shufflevector <4 x i32> %i.sv, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ta = add nsw <2 x i32> %i.sz, %i.sy
  %i.tb = zext <2 x i32> %i.ta to <2 x i64>
  %i.tc = shl nuw <2 x i64> %i.tb, splat (i64 32)
  %i.td = zext <2 x i32> %i.sx to <2 x i64>
  %i.te = or disjoint <2 x i64> %i.tc, %i.td
  store <2 x i64> %i.te, ptr %i.ss, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !81 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 96
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = call noundef ptr %i.tj(ptr noundef nonnull align 8 dereferenceable(8) %i.tg) ; 4 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !24
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = call noundef i32 %i.tn(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, i32 noundef 17)
  %i.tp = load ptr, ptr %i.tk, align 8, !tbaa !24
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = call noundef i32 %i.tr(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, i32 noundef 18)
  %i.tt = load ptr, ptr %0, align 8, !tbaa !24
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 440
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = call noundef zeroext i1 %i.tv(ptr noundef nonnull align 8 dereferenceable(7452) %0)
  %i.tx = zext i32 %i.ts to i64
  %i.ty = shl nuw i64 %i.tx, 32
  %i.tz = zext i32 %i.to to i64
  %i.ua = or disjoint i64 %i.ty, %i.tz
  %.sroa.083.0.insert.insert = select i1 %i.tw, i64 %i.ua, i64 0 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !93
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.083.0.insert.insert to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.083.0.insert.insert, 32
  br label %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit

bb.q:                                             ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !224
  %i.uf = call noundef zeroext i1 @_ZNK9StyleSpec13parseVector2fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ue, ptr noundef nonnull %2)
  br i1 %i.uf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.extract.trunc4.i = trunc i64 %.sroa.083.0.insert.insert to i32
  %.sroa.4.0.extract.shift5.i = lshr i64 %.sroa.083.0.insert.insert, 32
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.uh = load float, ptr %2, align 8, !tbaa !225
  %i.ui = fptosi float %i.uh to i32
  %i.uj = load float, ptr %i.ug, align 4, !tbaa !226
  %i.uk = fptosi float %i.uj to i32
  %i.ul = zext i32 %i.uk to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.4.0.i75 = phi i64 [ %i.ul, %bb.s ], [ %.sroa.4.0.extract.shift5.i, %bb.r ]
  %.sroa.0.0.i = phi i32 [ %i.ui, %bb.s ], [ %.sroa.0.0.extract.trunc4.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit

_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit: ; preds = %bb.p, %bb.t
  %.sroa.4.1.i76 = phi i64 [ %.sroa.4.0.extract.shift.i, %bb.p ], [ %.sroa.4.0.i75, %bb.t ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.p ], [ %.sroa.0.0.i, %bb.t ] ; 2 uses
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.1.i76, 32
  %.sroa.0.0.insert.ext.i77 = zext i32 %.sroa.0.1.i to i64
  %.sroa.0.0.insert.insert.i78 = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i77
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 7440
  store i64 %.sroa.0.0.insert.insert.i78, ptr %i.um, align 8
  %i.un = trunc i64 %.sroa.4.1.i76 to i32
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uq = load <4 x i32>, ptr %i.ss, align 8, !tbaa !82
  %i.ur = load <2 x i32>, ptr %i.up, align 8, !tbaa !82
  %i.us = load <2 x i32>, ptr %i.uo, align 8, !tbaa !82
  %i.ut = insertelement <2 x i32> poison, i32 %.sroa.0.1.i, i64 0
  %i.uu = insertelement <2 x i32> %i.ut, i32 %i.un, i64 1 ; 2 uses
  %i.uv = add <2 x i32> %i.ur, %i.uu
  %i.uw = sub <2 x i32> %i.uv, %i.us
  %i.ux = shufflevector <2 x i32> %i.uu, <2 x i32> %i.uw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uy = add <4 x i32> %i.ux, %i.uq              ; 2 uses
  %i.uz = load ptr, ptr %0, align 8, !tbaa !24
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 224
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = call noundef nonnull align 8 dereferenceable(24) ptr %i.vb(ptr noundef nonnull align 8 dereferenceable(308) %0) ; 3 uses
  %.sroa.079.0106 = load ptr, ptr %i.vc, align 8, !tbaa !127 ; 2 uses
  %.not99107 = icmp eq ptr %.sroa.079.0106, %i.vc
  br i1 %.not99107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit
  %i.vd = sitofp <4 x i32> %i.uy to <4 x float>   ; 4 uses
  %i.ve = extractelement <4 x float> %i.vd, i64 0
  %i.vf = extractelement <4 x float> %i.vd, i64 1
  %i.vg = extractelement <4 x float> %i.vd, i64 2
  %i.vh = extractelement <4 x float> %i.vd, i64 3
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit
  ret void

bb.u:                                             ; preds = %.lr.ph, %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit
  %.sroa.079.0108 = phi ptr [ %.sroa.079.0106, %.lr.ph ], [ %.sroa.079.0, %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit ] ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !80 ; 12 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !78 ; 3 uses
  %.not.i = icmp eq ptr %i.vl, null
  br i1 %.not.i, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.vm, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.vn = sub i64 %.sroa.2.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32
  %.sroa.016.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.016.4.extract.trunc.i = trunc nuw i64 %.sroa.016.4.extract.shift.i to i32
  %i.vo = sub nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.016.4.extract.trunc.i
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.vn to i32
  %i.vp = sitofp nsz i32 %.sroa.01.0.extract.trunc.i to float ; 2 uses
  %i.vq = sitofp nsz i32 %i.vo to float           ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 280
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !131
  %i.vt = icmp eq i32 %i.vs, 3
  br i1 %i.vt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.vu = fdiv nsz float %i.ve, %i.vp
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vj, i64 128
  store float %i.vu, ptr %i.vv, align 8, !tbaa !132
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vj, i64 284
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !133
  %i.vy = icmp eq i32 %i.vx, 3
end_hunk_2
begin_hunk_3_@_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK3gui11IGUIElement16getElementFromIdEib(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.023.031 = load ptr, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  %.not2932 = icmp eq ptr %.sroa.023.031, %i.a
  br i1 %.not2932, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.sroa.023.034.us = phi ptr [ %.sroa.023.0.us, %bb.b ], [ %.sroa.023.031, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.023.034.us, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(308) %i.c)
  %.not39 = icmp eq i32 %i.g, %1
  br i1 %.not39, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %.sroa.023.0.us = load ptr, ptr %.sroa.023.034.us, align 8, !tbaa !127 ; 2 uses
  %.not29.us = icmp eq ptr %.sroa.023.0.us, %i.a
  br i1 %.not29.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %.sroa.023.034 = phi ptr [ %.sroa.023.0, %bb.c ], [ %.sroa.023.031, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.023.034, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80   ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(308) %i.i)
  %.not40 = icmp eq i32 %i.m, %1
  br i1 %.not40, label %.thread, label %.split

.split:                                           ; preds = %.lr.ph.split
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(308) %i.i, i32 noundef %1, i1 noundef zeroext true) ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %.split
  %.sroa.023.0 = load ptr, ptr %.sroa.023.034, align 8, !tbaa !127 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.023.0, %i.a
  br i1 %.not29, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.b, %.lr.ph.split.us, %bb.c, %.lr.ph.split, %.split, %bb.a
  %i.r = phi ptr [ %i.i, %.lr.ph.split ], [ null, %bb.a ], [ %i.q, %.split ], [ null, %bb.c ], [ null, %bb.b ], [ %i.c, %.lr.ph.split.us ]
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp eq i32 %1, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK3gui11IGUIElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %_ZN4core6stringIcEaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN4core6stringIcEaSERKS1_.exit

_ZN4core6stringIcEaSERKS1_.exit:                  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement10acceptsIMEEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3gui10IGUIButtonD1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3gui10IGUIButtonD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD1Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD0Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #28, !inline_history !152
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #31
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3gui11IGUIElementD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %i.d, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #28, !inline_history !152
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3gui11IGUIElementD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %i.d, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #28, !inline_history !238
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(308) %i.d, i64 noundef 328) #31, !inline_history !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9GUIButton18getClickShiftStateEv(ptr noundef nonnull align 8 dereferenceable(7452) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7364
  %i.b = load i8, ptr %i.a, align 4, !tbaa !108, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9GUIButton20getClickControlStateEv(ptr noundef nonnull align 8 dereferenceable(7452) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7365
  %i.b = load i8, ptr %i.a, align 1, !tbaa !109, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementC2ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV14IEventReceiver, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !144
  store ptr %i.g, ptr %i.g, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !122
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !122
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !122
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !122
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  store i32 1, ptr %i.q, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 1, ptr %i.r, align 4, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.s, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !154
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.v, align 8, !tbaa !155
  store i32 0, ptr %i.u, align 8, !tbaa !157
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.y, align 8, !tbaa !155
  store i32 0, ptr %i.x, align 8, !tbaa !157
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.ab, align 8, !tbaa !93
  store i8 0, ptr %i.aa, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %5, ptr %i.ac, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i8 0, ptr %i.ad, align 4, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 -1, ptr %i.ae, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 0, ptr %i.af, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store ptr %3, ptr %i.ah, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %2, ptr %i.ai, align 8, !tbaa !151
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !91
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(308) %0)
          to label %.noexc unwind label %bb.d, !inline_history !10

.noexc:                                           ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.at = load <2 x i64>, ptr %i.as, align 8
  store <2 x i64> %i.at, ptr %i.p, align 8
  store ptr %4, ptr %i.j, align 8, !tbaa !78
  %i.au = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %.noexc
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !80
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull %i.av) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !145
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !145
  store ptr %i.au, ptr %i.k, align 8, !tbaa !146
  invoke void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !129 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aa
  br i1 %i.bc, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.bd = load i64, ptr %i.aa, align 8, !tbaa !94
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #31
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !83  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.x
  br i1 %i.bg, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !94
  %i.bi = shl i64 %i.bh, 2
  %i.bj = add i64 %i.bi, 4
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #31
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !83  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.u
  br i1 %i.bl, label %_ZN4core6stringIwED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !94
  %i.bn = shl i64 %i.bm, 2
  %i.bo = add i64 %i.bn, 4
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #31
  br label %_ZN4core6stringIwED2Ev.exit18

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void

_ZN4core6stringIwED2Ev.exit18:                    ; preds = %_ZN4core6stringIwED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i16
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !127 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bp, %i.g
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core6stringIwED2Ev.exit18, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.bp, %_ZN4core6stringIwED2Ev.exit18 ] ; 2 uses
  %i.bq = load ptr, ptr %.09.i.i, align 8, !tbaa !127 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #31
  %.not.i.i = icmp eq ptr %i.bq, %i.g
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN4core6stringIwED2Ev.exit18
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 6 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.063.0.copyload = load i32, ptr %i.c, align 8, !tbaa !82
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.867.0.copyload = load i32, ptr %.sroa.867.0..sroa_idx, align 4, !tbaa !82
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1272.0.copyload = load i32, ptr %.sroa.1272.0..sroa_idx, align 8, !tbaa !82
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.e = load i8, ptr %i.d, align 1, !tbaa !72, !range !76, !noundef !77
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %.sink.split

.preheader:                                       ; preds = %bb.b, %.preheader
  %.025 = phi ptr [ %i.h, %.preheader ], [ %0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %.sink.split, label %.preheader, !llvm.loop !240

.sink.split:                                      ; preds = %.preheader, %bb.b
  %.025.lcssa.sink100 = phi ptr [ %i.b, %bb.b ], [ %.025, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 80
  %.sroa.041.0.copyload = load i32, ptr %i.i, align 8, !tbaa !82
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 84
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !82
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !82
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 92
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.15.0 = phi i32 [ 0, %bb.a ], [ %.sroa.15.0.copyload, %.sink.split ] ; 2 uses
  %.sroa.1272.0 = phi i32 [ 0, %bb.a ], [ %.sroa.1272.0.copyload, %.sink.split ] ; 2 uses
  %.sroa.867.0 = phi i32 [ 0, %bb.a ], [ %.sroa.867.0.copyload, %.sink.split ] ; 4 uses
  %.sroa.063.0 = phi i32 [ 0, %bb.a ], [ %.sroa.063.0.copyload, %.sink.split ] ; 4 uses
  %.sroa.041.0 = phi i32 [ 0, %bb.a ], [ %.sroa.041.0.copyload, %.sink.split ]
  %.sroa.8.0 = phi i32 [ 0, %bb.a ], [ %.sroa.8.0.copyload, %.sink.split ]
  %.sroa.10.0 = phi i32 [ 0, %bb.a ], [ %.sroa.10.0.copyload, %.sink.split ]
  %.sroa.12.0 = phi i32 [ 0, %bb.a ], [ %.sroa.12.0.copyload, %.sink.split ]
  %i.j = sub nsw i32 %.sroa.1272.0, %.sroa.063.0  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !121
  %i.n = load i32, ptr %i.k, align 8, !tbaa !115
  %.neg = sub i32 %i.n, %i.m
  %i.o = add i32 %.neg, %i.j                      ; 4 uses
  %i.p = sub nsw i32 %.sroa.15.0, %.sroa.867.0    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !116
  %.neg79 = sub i32 %i.t, %i.r
  %i.u = add i32 %.neg79, %i.p                    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load i32, ptr %i.v, align 8, !tbaa !131  ; 2 uses
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.z = load i32, ptr %i.y, align 4, !tbaa !133
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = sitofp nsz i32 %i.j to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi nsz float [ %i.ab, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !135 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !137
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = sitofp nsz i32 %i.p to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.024 = phi nsz float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  switch i32 %i.w, label %bb.m [
    i32 3, label %bb.l
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !241
  %i.al = add nsw i32 %i.ak, %i.o
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !241
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.am = sdiv i32 %i.o, 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !241
  %i.ap = add nsw i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !241
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !132
  %i.as = fmul nsz float %.0, %i.ar
  %i.at = fadd nsz float %i.as, 5.000000e-01
  %i.au = tail call nsz noundef float @llvm.floor.f32(float %i.at)
  %i.av = fptosi float %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !241
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !133
  switch i32 %i.ay, label %bb.q [
    i32 3, label %bb.p
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !242
  %i.bb = add nsw i32 %i.ba, %i.o
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !242
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bc = sdiv i32 %i.o, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !242
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !242
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !134
  %i.bi = fmul nsz float %.0, %i.bh
  %i.bj = fadd nsz float %i.bi, 5.000000e-01
  %i.bk = tail call nsz noundef float @llvm.floor.f32(float %i.bj)
  %i.bl = fptosi float %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !242
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  switch i32 %i.ad, label %bb.u [
    i32 3, label %bb.t
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !243
  %i.bp = add nsw i32 %i.bo, %i.u
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !243
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bq = sdiv i32 %i.u, 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !243
  %i.bt = add nsw i32 %i.bs, %i.bq
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !243
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !136
  %i.bw = fmul nsz float %.024, %i.bv
  %i.bx = fadd nsz float %i.bw, 5.000000e-01
  %i.by = tail call nsz noundef float @llvm.floor.f32(float %i.bx)
  %i.bz = fptosi float %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !243
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !137
  switch i32 %i.cc, label %bb.y [
    i32 3, label %bb.x
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !244
  %i.cf = add nsw i32 %i.ce, %i.u
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !244
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cg = sdiv i32 %i.u, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !244
  %i.cj = add nsw i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !244
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !138
  %i.cm = fmul nsz float %.024, %i.cl
  %i.cn = fadd nsz float %i.cm, 5.000000e-01
  %i.co = tail call nsz noundef float @llvm.floor.f32(float %i.cn)
  %i.cp = fptosi float %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !244
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !122
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !121 ; 2 uses
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !115 ; 5 uses
  %i.cw = sub nsw i32 %i.cu, %i.cv                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !117 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !116 ; 5 uses
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !245 ; 2 uses
  %i.de = icmp slt i32 %i.cw, %i.dd
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = add i32 %i.dd, %i.cv                    ; 2 uses
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !246
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dg = phi i32 [ %i.df, %bb.z ], [ %i.cu, %bb.y ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !247 ; 2 uses
  %i.dj = icmp slt i32 %i.db, %i.di
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = add i32 %i.da, %i.di                    ; 2 uses
  store i32 %i.dk, ptr %i.cx, align 4, !tbaa !248
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dl = phi i32 [ %i.dk, %bb.ab ], [ %i.cy, %bb.aa ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !249 ; 3 uses
  %.not34 = icmp ne i32 %i.dn, 0
  %i.do = icmp sgt i32 %i.cw, %i.dn
  %or.cond = and i1 %.not34, %i.do
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dp = add i32 %i.dn, %i.cv                    ; 2 uses
  store i32 %i.dp, ptr %i.ct, align 8, !tbaa !246
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = phi i32 [ %i.dp, %bb.ad ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !250 ; 3 uses
  %.not35 = icmp ne i32 %i.ds, 0
  %i.dt = icmp sgt i32 %i.db, %i.ds
  %or.cond37 = and i1 %.not35, %i.dt
  br i1 %or.cond37, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.du = add i32 %i.da, %i.ds                    ; 2 uses
  store i32 %i.du, ptr %i.cx, align 4, !tbaa !248
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dv = phi i32 [ %i.du, %bb.af ], [ %i.dl, %bb.ae ] ; 2 uses
  %i.dw = icmp slt i32 %i.dq, %i.cv
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !121
  store i32 %i.dq, ptr %i.cs, align 8, !tbaa !115
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dx = icmp slt i32 %i.dv, %i.da
  br i1 %i.dx, label %bb.aj, label %_ZN4core4rectIiE6repairEv.exit

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !117
  store i32 %i.dv, ptr %i.cz, align 4, !tbaa !116
  br label %_ZN4core4rectIiE6repairEv.exit

_ZN4core4rectIiE6repairEv.exit:                   ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.copyload2.i = load i64, ptr %i.cs, align 8 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload2.i to i32
  %.sroa.0.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload2.i, 32
  %.sroa.0.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift.i to i32
  %.sroa.8.0.copyload.i = load i64, ptr %i.ct, align 8 ; 2 uses
  %i.dy = add nsw i32 %.sroa.063.0, %.sroa.0.sroa.0.0.extract.trunc.i ; 2 uses
  %i.dz = add nsw i32 %.sroa.867.0, %.sroa.0.sroa.6.0.extract.trunc.i ; 2 uses
  %.sroa.8.8.extract.trunc.i = trunc i64 %.sroa.8.0.copyload.i to i32
  %i.ea = add nsw i32 %.sroa.063.0, %.sroa.8.8.extract.trunc.i ; 2 uses
  %.sroa.8.8.insert.ext.i = zext i32 %i.ea to i64
  %.sroa.8.12.extract.shift.i = lshr i64 %.sroa.8.0.copyload.i, 32
  %.sroa.8.12.extract.trunc.i = trunc nuw i64 %.sroa.8.12.extract.shift.i to i32
  %i.eb = add nsw i32 %.sroa.867.0, %.sroa.8.12.extract.trunc.i ; 2 uses
  %.sroa.8.12.insert.ext.i = zext i32 %i.eb to i64
  %.sroa.8.12.insert.shift.i = shl nuw i64 %.sroa.8.12.insert.ext.i, 32
  %.sroa.8.12.insert.insert.i = or disjoint i64 %.sroa.8.12.insert.shift.i, %.sroa.8.8.insert.ext.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i32 %i.dz to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.dy to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.8.12.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  br i1 %.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4core4rectIiE6repairEv.exit
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4core4rectIiE6repairEv.exit
  %.sroa.041.1 = phi i32 [ %i.dy, %bb.ak ], [ %.sroa.041.0, %_ZN4core4rectIiE6repairEv.exit ] ; 4 uses
  %.sroa.8.1 = phi i32 [ %i.dz, %bb.ak ], [ %.sroa.8.0, %_ZN4core4rectIiE6repairEv.exit ] ; 4 uses
  %.sroa.10.1 = phi i32 [ %i.ea, %bb.ak ], [ %.sroa.10.0, %_ZN4core4rectIiE6repairEv.exit ] ; 6 uses
  %.sroa.12.1 = phi i32 [ %i.eb, %bb.ak ], [ %.sroa.12.0, %_ZN4core4rectIiE6repairEv.exit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !122
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !121 ; 2 uses
  %i.eg = icmp slt i32 %.sroa.10.1, %i.ef
  br i1 %i.eg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 %.sroa.10.1, ptr %i.ee, align 8, !tbaa !121
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eh = phi i32 [ %.sroa.10.1, %bb.am ], [ %i.ef, %bb.al ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !117 ; 2 uses
  %i.ek = icmp slt i32 %.sroa.12.1, %i.ej
  br i1 %i.ek, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %.sroa.12.1, ptr %i.ei, align 4, !tbaa !117
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.el = phi i32 [ %.sroa.12.1, %bb.ao ], [ %i.ej, %bb.an ]
  %i.em = icmp sgt i32 %.sroa.041.1, %i.eh
  br i1 %i.em, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 %.sroa.041.1, ptr %i.ee, align 8, !tbaa !121
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.en = icmp sgt i32 %.sroa.8.1, %i.el
  br i1 %i.en, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %.sroa.8.1, ptr %i.ei, align 4, !tbaa !117
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.eo = load i32, ptr %i.ed, align 8, !tbaa !115 ; 2 uses
  %i.ep = icmp slt i32 %.sroa.10.1, %i.eo
  br i1 %i.ep, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 %.sroa.10.1, ptr %i.ed, align 8, !tbaa !115
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.eq = phi i32 [ %.sroa.10.1, %bb.au ], [ %i.eo, %bb.at ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !116 ; 2 uses
  %i.et = icmp slt i32 %.sroa.12.1, %i.es
  br i1 %i.et, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 %.sroa.12.1, ptr %i.er, align 4, !tbaa !116
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eu = phi i32 [ %.sroa.12.1, %bb.aw ], [ %i.es, %bb.av ]
  %i.ev = icmp sgt i32 %.sroa.041.1, %i.eq
  br i1 %i.ev, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 %.sroa.041.1, ptr %i.ed, align 8, !tbaa !115
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ew = icmp sgt i32 %.sroa.8.1, %i.eu
  br i1 %i.ew, label %bb.ba, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.ba:                                            ; preds = %bb.az
  store i32 %.sroa.8.1, ptr %i.er, align 4, !tbaa !116
  br label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

_ZN4core4rectIiE11clipAgainstERKS1_.exit:         ; preds = %bb.az, %bb.ba
  store i32 %.sroa.063.0, ptr %i.k, align 8, !tbaa !82
  store i32 %.sroa.867.0, ptr %i.s, align 4, !tbaa !82
  store i32 %.sroa.1272.0, ptr %i.l, align 8, !tbaa !82
  store i32 %.sroa.15.0, ptr %i.q, align 4, !tbaa !82
  br i1 %1, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.038.081 = load ptr, ptr %i.ex, align 8, !tbaa !127 ; 2 uses
  %.not8082 = icmp eq ptr %.sroa.038.081, %i.ex
  br i1 %.not8082, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %.lr.ph
  %.sroa.038.083 = phi ptr [ %.sroa.038.0, %.lr.ph ], [ %.sroa.038.081, %bb.bb ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.038.083, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !80
  tail call void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %i.ez, i1 noundef zeroext true)
  %.sroa.038.0 = load ptr, ptr %.sroa.038.083, align 8, !tbaa !127 ; 2 uses
  %.not80 = icmp eq ptr %.sroa.038.0, %i.ex
  br i1 %.not80, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.bb, %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14IEventReceiverD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14IEventReceiverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3gui11IGUIElement14getNextElementEibbRPS0_S2_bb(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = select i1 %2, i32 -1, i32 1
  %i.b = add nsw i32 %i.a, %1                     ; 2 uses
  %i.c = icmp eq i32 %i.b, -2
  %spec.store.select = select i1 %i.c, i32 1073741824, i32 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.066.086 = load ptr, ptr %i.d, align 8, !tbaa !127 ; 2 uses
  %.not90 = icmp eq ptr %.sroa.066.086, %i.d
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not57 = xor i1 %2, true
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.066.087 = phi ptr [ %.sroa.066.086, %.lr.ph ], [ %.sroa.066.0, %bb.r ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.066.087, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.f)
  %or.cond = or i1 %6, %i.j
  br i1 %or.cond, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !80  ; 3 uses
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 276
  %i.l = load i8, ptr %i.k, align 4, !tbaa !75, !range !76, !noundef !77
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %.pre, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(308) %.pre)
  %or.cond3 = or i1 %7, %i.q
  %.pre93 = load ptr, ptr %i.e, align 8, !tbaa !80 ; 8 uses
  br i1 %or.cond3, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pre93, i64 268
  %i.s = load i8, ptr %i.r, align 4, !tbaa !73, !range !76, !noundef !77
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.pre93, i64 276
  %i.v = load i8, ptr %i.u, align 4, !tbaa !75, !range !76, !noundef !77
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i1 %3, %i.w
  br i1 %i.x, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.pre93, i64 272
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74   ; 9 uses
  %i.aa = icmp eq i32 %i.z, %spec.store.select
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %.pre93, ptr %5, align 8, !tbaa !80
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !74 ; 2 uses
  %i.ae = icmp sgt i32 %i.z, %i.ad
  %i.af = icmp slt i32 %i.z, %1
  %i.ag = and i1 %i.af, %i.ae
  %or.cond56 = and i1 %2, %i.ag
  br i1 %or.cond56, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp slt i32 %i.z, %i.ad
  %or.cond58 = and i1 %i.ah, %.not57
  %i.ai = icmp sgt i32 %i.z, %1
  %or.cond59 = and i1 %i.ai, %or.cond58
  br i1 %or.cond59, label %.sink.split, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.aj = icmp sge i32 %i.z, %1
  %i.ak = icmp sle i32 %i.z, %1
  %or.cond82 = select i1 %2, i1 %i.aj, i1 %i.ak
  br i1 %or.cond82, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.k, %bb.l
  store ptr %.pre93, ptr %5, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m, %bb.l
  %i.al = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4core6stringIcEaSIcEERS1_PKT_:bb.a

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

declare extern_weak void @_ZTH13warningstream() #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{null}
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !79}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !79}
!10 = distinct !{null}
!11 = distinct !{!11, !79}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"vtable pointer", !18, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTSN5video6SColorE", !20, i64 0}
!26 = !{!"bool", !19, i64 0}
!27 = !{!"_ZTSN9GUIButton12ButtonSpriteE", !20, i64 0, !25, i64 4, !26, i64 8}
!28 = !{!27, !20, i64 0}
!29 = !{!25, !20, i64 0}
!30 = !{!27, !26, i64 8}
!31 = !{!"_ZTS14IEventReceiver"}
!32 = !{!"any pointer", !19, i64 0}
!33 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !32, i64 0}
!34 = !{!"_ZTSNSt8__detail15_List_node_baseE", !33, i64 0, !33, i64 8}
!35 = !{!"long", !19, i64 0}
!36 = !{!"_ZTSNSt8__detail17_List_node_headerE", !34, i64 0, !35, i64 16}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !38, i64 0}
!40 = !{!"p1 _ZTSN3gui11IGUIElementE", !32, i64 0}
!41 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !33, i64 0}
!42 = !{!"_ZTSN4core8vector2dIiEE", !20, i64 0, !20, i64 4}
!43 = !{!"_ZTSN4core4rectIiEE", !42, i64 0, !42, i64 8}
!44 = !{!"float", !19, i64 0}
!45 = !{!"_ZTSN4core8vector2dIfEE", !44, i64 0, !44, i64 4}
!46 = !{!"_ZTSN4core4rectIfEE", !45, i64 0, !45, i64 8}
!47 = !{!"_ZTSN4core11dimension2dIjEE", !20, i64 0, !20, i64 4}
!48 = !{!"p1 wchar_t", !32, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !49, i64 0, !35, i64 8, !19, i64 16}
!51 = !{!"_ZTSN4core6stringIwEE", !50, i64 0}
!52 = !{!"p1 omnipotent char", !32, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !53, i64 0, !35, i64 8, !19, i64 16}
!55 = !{!"_ZTSN4core6stringIcEE", !54, i64 0}
!56 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !19, i64 0}
!57 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !32, i64 0}
!58 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !19, i64 0}
!59 = !{!"_ZTSN3gui11IGUIElementE", !31, i64 0, !39, i64 8, !40, i64 32, !41, i64 40, !43, i64 48, !43, i64 64, !43, i64 80, !43, i64 96, !43, i64 112, !46, i64 128, !47, i64 144, !47, i64 152, !26, i64 160, !26, i64 161, !26, i64 162, !26, i64 163, !51, i64 168, !51, i64 200, !55, i64 232, !20, i64 264, !26, i64 268, !20, i64 272, !26, i64 276, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !57, i64 296, !58, i64 304}
!60 = !{!"_ZTSN3gui10IGUIButtonE", !59, i64 0}
!61 = !{!"p1 _ZTSN3gui14IGUISpriteBankE", !32, i64 0}
!62 = !{!"_ZTSSt5arrayI9StyleSpecLm8EE", !19, i64 0}
!63 = !{!"p1 _ZTSN3gui8IGUIFontE", !32, i64 0}
!64 = !{!"p1 _ZTS20ISimpleTextureSource", !32, i64 0}
!65 = !{!"p1 _ZTSN3gui14IGUIStaticTextE", !32, i64 0}
!66 = !{!"_ZTS9GUIButton", !60, i64 0, !19, i64 308, !61, i64 392, !19, i64 400, !62, i64 616, !63, i64 7336, !26, i64 7344, !25, i64 7348, !20, i64 7352, !20, i64 7356, !20, i64 7360, !26, i64 7364, !26, i64 7365, !26, i64 7366, !26, i64 7367, !26, i64 7368, !26, i64 7369, !26, i64 7370, !19, i64 7372, !26, i64 7388, !26, i64 7389, !64, i64 7392, !65, i64 7400, !43, i64 7408, !43, i64 7424, !42, i64 7440, !25, i64 7448}
!67 = !{!66, !63, i64 7336}
!68 = !{!66, !26, i64 7344}
!69 = !{!66, !26, i64 7369}
!70 = !{!66, !26, i64 7370}
!71 = !{!66, !64, i64 7392}
!72 = !{!59, !26, i64 163}
!73 = !{!59, !26, i64 268}
!74 = !{!59, !20, i64 272}
!75 = !{!59, !26, i64 276}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!59, !40, i64 32}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!40, !40, i64 0}
!81 = !{!59, !57, i64 296}
!82 = !{!20, !20, i64 0}
!83 = !{!50, !48, i64 0}
!84 = !{!42, !20, i64 0}
!85 = !{!42, !20, i64 4}
!86 = !{!66, !65, i64 7400}
!87 = !{!"p1 _ZTSN5video8ITextureE", !32, i64 0}
!88 = !{!"_ZTSN9GUIButton11ButtonImageE", !87, i64 0, !43, i64 8}
!89 = !{!88, !87, i64 0}
!90 = !{!"_ZTS17IReferenceCounted", !20, i64 8}
!91 = !{!90, !20, i64 8}
!92 = !{!53, !52, i64 0}
!93 = !{!54, !35, i64 8}
!94 = !{!19, !19, i64 0}
!95 = !{!"_ZTSSt5arrayIbLm25EE", !19, i64 0}
!96 = !{!"_ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EE", !19, i64 0}
!97 = !{!"_ZTSN9StyleSpec5StateE", !19, i64 0}
!98 = !{!"_ZTS9StyleSpec", !95, i64 0, !96, i64 32, !97, i64 832}
!99 = !{!98, !97, i64 832}
!100 = !{!"p1 _ZTSN5video6SColorE", !32, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!101, !100, i64 0}
!103 = !{!101, !100, i64 16}
!104 = !{!66, !61, i64 392}
!105 = !{ptr @_ZN9GUIButtonD1Ev}
!106 = !{!66, !26, i64 7366}
!107 = !{!66, !26, i64 7367}
!108 = !{!66, !26, i64 7364}
!109 = !{!66, !26, i64 7365}
!110 = !{!"_ZTS8timespec", !35, i64 0, !35, i64 8}
!111 = !{!110, !35, i64 0}
!112 = !{!110, !35, i64 8}
!113 = !{!66, !20, i64 7360}
!114 = !{!66, !20, i64 7356}
!115 = !{!43, !20, i64 0}
!116 = !{!43, !20, i64 4}
!117 = !{!43, !20, i64 12}
!118 = !{!59, !26, i64 160}
!119 = !{ptr @_ZNK9GUIButton9isHoveredEv}
!120 = !{ptr @_ZNK9GUIButton9isFocusedEv}
!121 = !{!43, !20, i64 8}
!122 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !82}
!123 = !{!47, !20, i64 0}
!124 = !{!47, !20, i64 4}
!125 = !{!66, !26, i64 7368}
!126 = !{!66, !20, i64 7352}
!127 = !{!34, !33, i64 0}
!128 = !{i64 0, i64 25, !94}
!129 = !{!54, !52, i64 0}
!130 = !{!35, !35, i64 0}
!131 = !{!59, !56, i64 280}
!132 = !{!59, !44, i64 128}
!133 = !{!59, !56, i64 284}
!134 = !{!59, !44, i64 136}
!135 = !{!59, !56, i64 288}
!136 = !{!59, !44, i64 132}
!137 = !{!59, !56, i64 292}
!138 = !{!59, !44, i64 140}
!139 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!140, !139, i64 8}
!142 = !{!140, !139, i64 0}
!143 = !{!140, !139, i64 16}
!144 = !{!34, !33, i64 8}
!145 = !{!38, !35, i64 16}
!146 = !{!33, !33, i64 0}
!147 = !{!41, !33, i64 0}
!148 = !{!59, !26, i64 162}
!149 = !{!59, !26, i64 161}
!150 = !{!59, !20, i64 264}
!151 = !{!59, !58, i64 304}
!152 = !{ptr @_ZN3gui11IGUIElementD1Ev}
!153 = !{!26, !26, i64 0}
!154 = !{!49, !48, i64 0}
!155 = !{!50, !35, i64 8}
!156 = !{!"wchar_t", !19, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = !{!"p1 _ZTS9LogTarget", !32, i64 0}
!160 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!161 = !{!"_ZTSSt6locale", !160, i64 0}
!162 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !161, i64 56}
!163 = !{!"_ZTSSt14_Function_base", !19, i64 0, !32, i64 16}
!164 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !163, i64 0, !32, i64 24}
!165 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !162, i64 0, !164, i64 64, !20, i64 96, !19, i64 100}
!166 = !{!"_ZTS17DummyStreamBuffer", !162, i64 0}
!167 = !{!"_ZTSSo"}
!168 = !{!"p1 _ZTSSo", !32, i64 0}
!169 = !{!"_ZTS11StreamProxy", !168, i64 0}
!170 = !{!"_ZTS9LogStream", !159, i64 0, !165, i64 8, !166, i64 368, !167, i64 432, !167, i64 704, !169, i64 976, !169, i64 984}
!171 = !{!170, !159, i64 0}
!172 = !{i64 8}
!173 = !{!52, !52, i64 0}
!174 = !{!169, !168, i64 0}
!175 = !{!"_ZTSSt13_Ios_Fmtflags", !19, i64 0}
!176 = !{!"_ZTSSt12_Ios_Iostate", !19, i64 0}
!177 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!178 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !35, i64 8}
!179 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!180 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !175, i64 24, !176, i64 28, !176, i64 32, !177, i64 40, !178, i64 48, !19, i64 64, !20, i64 192, !179, i64 200, !161, i64 208}
!181 = !{!180, !176, i64 32}
!182 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!183 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!184 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!185 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!186 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !180, i64 0, !168, i64 216, !19, i64 224, !26, i64 225, !182, i64 232, !183, i64 240, !184, i64 248, !185, i64 256}
!187 = !{!186, !183, i64 240}
!188 = !{!"_ZTSNSt6locale5facetE", !20, i64 8}
!189 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!190 = !{!"p1 int", !32, i64 0}
!191 = !{!"p1 short", !32, i64 0}
!192 = !{!"_ZTSSt5ctypeIcE", !188, i64 0, !189, i64 16, !26, i64 24, !190, i64 32, !190, i64 40, !191, i64 48, !19, i64 56, !19, i64 57, !19, i64 313, !19, i64 569}
!193 = !{!192, !19, i64 56}
!194 = distinct !{null}
!195 = distinct !{null, null}
!196 = !{ptr @_ZN9GUIButtonD0Ev, ptr @_ZN9GUIButtonD1Ev}
!197 = !{ptr @_ZN9GUIButtonD0Ev}
!198 = !{ptr @_ZN3gui11IGUIElement7OnEventERK6SEvent}
!199 = !{!"_ZTS11EEVENT_TYPE", !19, i64 0}
!200 = !{!"_ZTS6SEvent", !199, i64 0, !19, i64 8}
!201 = !{!200, !199, i64 0}
!202 = !{!66, !26, i64 7388}
!203 = !{!66, !26, i64 7389}
!204 = !{ptr @_ZNK9GUIButton13getImageStateEb, ptr @_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE, ptr @_ZNK9GUIButton9isFocusedEv}
!205 = !{ptr @_ZNK9GUIButton13getImageStateEb, ptr @_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE, ptr @_ZNK9GUIButton9isHoveredEv}
!206 = !{ptr @_ZNK9GUIButton13getImageStateEb, ptr @_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE}
!207 = !{ptr @_ZN3gui11IGUIElement4drawEv}
!208 = !{ptr @_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE, ptr @_ZNK9GUIButton9isFocusedEv}
!209 = !{ptr @_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE, ptr @_ZNK9GUIButton9isHoveredEv}
!210 = !{ptr @_ZNK9GUIButton13getImageStateEbPKNS_11ButtonImageE}
!211 = !{!"p1 _ZTSN3gui10SGUISpriteE", !32, i64 0}
!212 = !{!"_ZTSNSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE17_Vector_impl_dataE", !211, i64 0, !211, i64 8, !211, i64 16}
!213 = !{!212, !211, i64 0}
!214 = !{!"p1 _ZTSN3gui15SGUISpriteFrameE", !32, i64 0}
!215 = !{!"_ZTSNSt12_Vector_baseIN3gui15SGUISpriteFrameESaIS1_EE17_Vector_impl_dataE", !214, i64 0, !214, i64 8, !214, i64 16}
!216 = !{!215, !214, i64 0}
!217 = !{!"_ZTSN3gui15SGUISpriteFrameE", !20, i64 0, !20, i64 4}
!218 = !{!217, !20, i64 4}
!219 = !{!"p1 _ZTSN4core4rectIiEE", !32, i64 0}
!220 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!221 = !{!220, !219, i64 0}
!222 = distinct !{!222, !79}
!223 = distinct !{null}
!224 = !{!44, !44, i64 0}
!225 = !{!45, !44, i64 0}
!226 = !{!45, !44, i64 4}
!227 = distinct !{!227, !79}
!228 = distinct !{!228, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!229 = distinct !{!229, !228, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!230 = !{!229}
!231 = !{!"p1 _ZTS10FontEngine", !32, i64 0}
!232 = !{!231, !231, i64 0}
!233 = distinct !{!233, !"_ZNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EE4rendEv"}
!234 = distinct !{!234, !233, !"_ZNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EE4rendEv: argument 0"}
!235 = distinct !{!235, !79}
!236 = !{!234}
!237 = distinct !{!237, !79}
!238 = !{ptr @_ZN3gui11IGUIElementD0Ev, ptr @_ZN3gui11IGUIElementD1Ev}
!239 = !{ptr @_ZN3gui11IGUIElementD0Ev}
!240 = distinct !{!240, !79}
!241 = !{!59, !20, i64 96}
!242 = !{!59, !20, i64 104}
!243 = !{!59, !20, i64 100}
!244 = !{!59, !20, i64 108}
!245 = !{!59, !20, i64 152}
!246 = !{!59, !20, i64 56}
!247 = !{!59, !20, i64 156}
!248 = !{!59, !20, i64 60}
!249 = !{!59, !20, i64 144}
!250 = !{!59, !20, i64 148}
!251 = distinct !{!251, !79}
!252 = distinct !{!252, !79, !255, !256}
!253 = distinct !{!253, !158}
!254 = distinct !{!254, !79, !255}
!255 = !{!"llvm.loop.isvectorized", i32 1}
!256 = !{!"llvm.loop.unroll.runtime.disable"}
!257 = distinct !{!257, !"_ZNK9StyleSpec3getENS_8PropertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!258 = distinct !{!258, !257, !"_ZNK9StyleSpec3getENS_8PropertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!259 = distinct !{!259, !79}
!260 = !{!258}
!261 = distinct !{!261, !79}
!262 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!263 = distinct !{!263, !79}
!264 = distinct !{!264, !79}
!265 = distinct !{!265, !"_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE"}
!266 = distinct !{!266, !265, !"_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!267 = distinct !{!267, !79}
!268 = !{!266}
!269 = distinct !{!269, !79}
!270 = distinct !{!270, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!271 = distinct !{!271, !270, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!272 = distinct !{!272, !270, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!273 = distinct !{!273, !79}
!274 = distinct !{!274, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!275 = distinct !{!275, !274, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!276 = distinct !{!276, !274, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!277 = !{!271}
!278 = !{!272}
!279 = !{!271, !272}
!280 = !{!275}
!281 = !{!276}
!282 = !{!275, !276}
!283 = distinct !{!283, !158}
!284 = distinct !{!284, !79}
end_hunk_4
