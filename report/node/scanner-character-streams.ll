Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/scanner-character-streams?download=true
inline.NumInlined: 1075
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v88internal27Utf8ExternalStreamingStream26FillBufferFromCurrentChunkEv:bb.a
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 3 uses
  %i.u = load i8, ptr %i.t, align 4
  store i8 %i.u, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8
  store i32 %i.w, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef i32 @_ZN7unibrow4Utf824ValueOfIncrementalFinishEPN14Utf8DfaDecoder5StateE(ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = trunc i32 %i.aa to i16
  store i16 %i.ab, ptr %i.r, align 2
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store ptr %i.ad, ptr %i.k, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8
  store i32 0, ptr %i.v, align 8
  %i.ah = load i8, ptr %i.a, align 1
  store i8 %i.ah, ptr %i.t, align 4
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %i.s, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sub i64 %i.ai, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.am = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.an, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.y ; 5 uses
  %i.ap = icmp ult i64 %i.ai, 3
  br i1 %i.ap, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.preheader, label %.critedge, !prof !5

.preheader:                                       ; preds = %bb.e, %bb.h
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = icmp ult ptr %i.at, %i.ao
  br i1 %i.au, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.preheader
  %i.av = call noundef i32 @_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 7 uses
  %i.aw = icmp ult i32 %i.av, 65279
  br i1 %i.aw, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ax = trunc nuw i32 %i.av to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.ax, ptr %i.r, align 2
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  switch i32 %i.av, label %bb.i [
    i32 -4, label %.preheader
    i32 65279, label %.critedge
  ]

bb.i:                                             ; preds = %bb.h
  %i.az = icmp ult i32 %i.av, 65536
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = trunc nuw i32 %i.av to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.ba, ptr %i.r, align 2
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.bc = add i32 %i.av, 983040
  %i.bd = lshr i32 %i.bc, 10
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bf = trunc i32 %i.bd to i16
  %i.bg = insertelement <2 x i16> poison, i16 %i.bf, i64 0
  %i.bh = trunc i32 %i.av to i16
  %i.bi = insertelement <2 x i16> %i.bg, i16 %i.bh, i64 1
  %i.bj = and <2 x i16> %i.bi, splat (i16 1023)
  %i.bk = or disjoint <2 x i16> %i.bj, <i16 -10240, i16 -9216>
  store <2 x i16> %i.bk, ptr %i.r, align 2
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.preheader, %bb.g, %bb.k, %bb.j, %bb.d, %bb.e
  %.3 = phi ptr [ %i.r, %bb.d ], [ %i.bb, %bb.j ], [ %i.r, %bb.e ], [ %i.ay, %bb.g ], [ %i.be, %bb.k ], [ %i.r, %.preheader ], [ %i.r, %bb.h ] ; 3 uses
  %i.bl = load ptr, ptr %i.m, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1024 ; 3 uses
  %i.bn = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.bo = icmp ult ptr %i.bn, %i.ao
  %i.bp = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.bm
  %i.br = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre90 = load i8, ptr %i.a, align 1            ; 2 uses
  br i1 %i.br, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %.critedge
  %i.bs = ptrtoint ptr %i.ao to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph79, %.thread67
  %i.bu = phi i8 [ %.pre90, %.lr.ph79 ], [ %i.eo, %.thread67 ] ; 2 uses
  %i.bv = phi ptr [ %i.bp, %.lr.ph79 ], [ %i.er, %.thread67 ] ; 2 uses
  %i.bw = phi ptr [ %i.bn, %.lr.ph79 ], [ %i.ep, %.thread67 ] ; 3 uses
  %.478 = phi ptr [ %.3, %.lr.ph79 ], [ %.6, %.thread67 ] ; 5 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 3 uses
  store ptr %i.by, ptr %i.c, align 8
  %i.bz = icmp sgt i8 %i.bx, -1
  %i.ca = icmp eq i8 %i.bu, 12                    ; 2 uses
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false, !prof !6
  br i1 %i.cb, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  %i.cc = zext nneg i8 %i.bx to i32
  br label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.cd = zext i8 %i.bx to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.bu to i32
  %i.ch = zext i8 %i.cf to i32                    ; 2 uses
  %i.ci = add nuw nsw i32 %i.ch, %i.cg
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1             ; 3 uses
  store i8 %i.cl, ptr %i.a, align 1
  %i.cm = load i32, ptr %i.b, align 4
  %i.cn = shl i32 %i.cm, 6                        ; 3 uses
  %i.co = zext i8 %i.bx to i32
  %i.cp = lshr i32 %i.ch, 1
  %i.cq = lshr i32 127, %i.cp
  %i.cr = and i32 %i.cq, %i.co
  %i.cs = or i32 %i.cn, %i.cr                     ; 4 uses
  store i32 %i.cs, ptr %i.b, align 4
  switch i8 %i.cl, label %.thread67 [
    i8 12, label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit
    i8 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  store i8 12, ptr %i.a, align 1
  store i32 0, ptr %i.b, align 4
  br i1 %i.ca, label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bw, ptr %i.c, align 8
  br label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread

_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit: ; preds = %bb.n
  store i32 0, ptr %i.b, align 4
  %i.ct = icmp ult i32 %i.cn, 65536
  br i1 %i.ct, label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread, label %bb.q, !prof !9

_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread: ; preds = %bb.p, %bb.o, %bb.m, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit
  %.0.i63 = phi i32 [ %i.cs, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit ], [ 65533, %bb.p ], [ 65533, %bb.o ], [ %i.cc, %bb.m ]
  %i.cu = trunc nuw i32 %.0.i63 to i16
  store i16 %i.cu, ptr %.478, align 2
  br label %bb.s

bb.q:                                             ; preds = %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit
  %i.cv = icmp eq i32 %i.cs, -4
  br i1 %i.cv, label %.thread67, label %bb.r, !llvm.loop !10

bb.r:                                             ; preds = %bb.q
  %i.cw = add i32 %i.cn, 983040
  %i.cx = lshr i32 %i.cw, 10
  %i.cy = trunc i32 %i.cx to i16
  %i.cz = and i16 %i.cy, 1023
  %i.da = or disjoint i16 %i.cz, -10240
  store i16 %i.da, ptr %.478, align 2
  %i.db = trunc i32 %i.cs to i16
  %i.dc = and i16 %i.db, 1023
  %i.dd = or disjoint i16 %i.dc, -9216
  %i.de = getelementptr inbounds nuw i8, ptr %.478, i64 4
  store i16 %i.dd, ptr %i.bv, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread
  %.5 = phi ptr [ %i.bv, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread ], [ %i.de, %bb.r ] ; 3 uses
  %i.df = load ptr, ptr %i.c, align 8             ; 7 uses
  %i.dg = ptrtoint ptr %i.df to i64               ; 6 uses
  %i.dh = sub i64 %i.bs, %i.dg
  %i.di = ptrtoint ptr %.5 to i64
  %i.dj = sub i64 %i.bt, %i.di
  %i.dk = ashr exact i64 %i.dj, 1
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dh) ; 2 uses
  %i.dl = and i64 %.sroa.speculated, 4294967295   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dl ; 2 uses
  %i.dn = and i64 %.sroa.speculated, 4294967288
  %.not69 = icmp eq i64 %i.dn, 0
  br i1 %.not69, label %.thread.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.s
  %i.do = and i64 %i.dg, 7
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph.6, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %i.dq = load i8, ptr %i.df, align 1
  %i.dr = icmp slt i8 %i.dq, 0
  br i1 %i.dr, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.5
  %i.ds = load i8, ptr %i.du, align 1
  %i.dt = icmp slt i8 %i.ds, 0
  br i1 %i.dt, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.5, !llvm.loop !11

.lr.ph.5:                                         ; preds = %.lr.ph.i.4, %.lr.ph.i.5
  %.02535.i77 = phi ptr [ %i.du, %.lr.ph.i.5 ], [ %i.df, %.lr.ph.i.4 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.02535.i77, i64 1 ; 4 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 7
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.6, label %.lr.ph.i.5, !llvm.loop !11

.lr.ph.6:                                         ; preds = %.lr.ph.5, %.lr.ph.3
  %.126.i.ph = phi ptr [ %i.df, %.lr.ph.3 ], [ %i.du, %.lr.ph.5 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.6, %bb.t
  %.126.i = phi ptr [ %i.dy, %bb.t ], [ %.126.i.ph, %.lr.ph.6 ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.dy, %i.dm
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.dz = load i64, ptr %.126.i, align 8
  %i.ea = and i64 %i.dz, -9187201950435737472
  %.not28.i = icmp eq i64 %i.ea, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.u, !llvm.loop !12

bb.u:                                             ; preds = %bb.t
  %i.eb = ptrtoint ptr %.126.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoaddr ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.s
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.dg, %bb.s ]
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %i.df, %bb.s ] ; 4 uses
  %i.ec = icmp ult ptr %.2.i, %i.dm
  br i1 %i.ec, label %.lr.ph37.preheader.i, label %._crit_edge.i

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.ed = add i64 %i.dl, %i.dg
  %i.ee = sub i64 %i.ed, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.ee ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.w, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.ei, %bb.w ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.ef = load i8, ptr %.336.i, align 1
  %i.eg = icmp slt i8 %i.ef, 0
  br i1 %i.eg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph37.i
  %i.eh = ptrtoint ptr %.336.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

bb.w:                                             ; preds = %.lr.ph37.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ei, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.w, %.thread.i
  %.3.lcssa.i = phi ptr [ %.2.i, %.thread.i ], [ %scevgep.i, %bb.w ]
  %i.ej = ptrtoint ptr %.3.lcssa.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

_ZN2v88internal13NonAsciiStartEPKhj.exit:         ; preds = %.lr.ph.i.5, %.lr.ph.i.4, %bb.u, %bb.v, %._crit_edge.i
  %.pn = phi i64 [ %i.eb, %bb.u ], [ %i.eh, %bb.v ], [ %i.ej, %._crit_edge.i ], [ %i.dg, %.lr.ph.i.4 ], [ %i.dv, %.lr.ph.i.5 ]
  %.1.in.i = sub i64 %.pn, %i.dg
  %sext = shl i64 %.1.in.i, 32
  %i.ek = ashr exact i64 %sext, 32                ; 3 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.5, ptr noundef %i.df, i64 noundef %i.ek)
  %i.el = load ptr, ptr %i.c, align 8
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ek ; 2 uses
  store ptr %i.em, ptr %i.c, align 8
  %i.en = getelementptr inbounds [2 x i8], ptr %.5, i64 %i.ek
  %.pre = load i8, ptr %i.a, align 1
  br label %.thread67

.thread67:                                        ; preds = %bb.n, %bb.q, %_ZN2v88internal13NonAsciiStartEPKhj.exit
  %i.eo = phi i8 [ %.pre, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ 12, %bb.q ], [ %i.cl, %bb.n ] ; 2 uses
  %i.ep = phi ptr [ %i.em, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ %i.by, %bb.q ], [ %i.by, %bb.n ] ; 3 uses
  %.6 = phi ptr [ %i.en, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ %.478, %bb.q ], [ %.478, %bb.n ] ; 3 uses
  %i.eq = icmp ult ptr %i.ep, %i.ao
  %i.er = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 2 uses
  %i.es = icmp ult ptr %i.er, %i.bm
  %i.et = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %i.et, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %.thread67, %.critedge
  %i.eu = phi i8 [ %.pre90, %.critedge ], [ %i.eo, %.thread67 ]
  %.4.lcssa = phi ptr [ %.3, %.critedge ], [ %.6, %.thread67 ] ; 2 uses
  %.lcssa74 = phi ptr [ %i.bn, %.critedge ], [ %i.ep, %.thread67 ] ; 2 uses
  %i.ev = load i64, ptr %i.aj, align 8
  %i.ew = load ptr, ptr %i.i, align 8
  %i.ex = ptrtoint ptr %.lcssa74 to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = add i64 %i.ev, %i.ex
  %i.fa = sub i64 %i.ez, %i.ey
  store i64 %i.fa, ptr %i.s, align 8
  %i.fb = load ptr, ptr %i.k, align 8
  %i.fc = ptrtoint ptr %.4.lcssa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.ff, %i.fh
  store i64 %i.fi, ptr %i.fg, align 8
  %i.fj = load i32, ptr %i.b, align 4
  store i32 %i.fj, ptr %i.v, align 8
  store i8 %i.eu, ptr %i.t, align 4
  %i.fk = icmp eq ptr %.lcssa74, %i.ao
  %i.fl = zext i1 %i.fk to i64
  %i.fm = load i64, ptr %i.d, align 8
  %i.fn = add i64 %i.fm, %i.fl
  store i64 %i.fn, ptr %i.d, align 8
  store ptr %.4.lcssa, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare noundef i32 @_ZN7unibrow4Utf824ValueOfIncrementalFinishEPN14Utf8DfaDecoder5StateE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 15
  %i.f = add i64 %i.a, 30
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 14
  %i.h = add i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = load i8, ptr %i.ay, align 1
  %i.bb = zext i8 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.be to i16
  store i16 %i.bf, ptr %i.bd, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %0, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 5
end_hunk_0
