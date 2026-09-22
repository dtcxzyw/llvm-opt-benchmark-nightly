Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8fallback25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %._crit_edge113, %.preheader87
  %i.be = phi i32 [ %i.bc, %._crit_edge113 ], [ %i.al, %.preheader87 ], [ %i.bd, %._crit_edge116.loopexit ] ; 20 uses
  %.not.i6 = icmp ult i32 %i.be, %i.e
  br i1 %.not.i6, label %bb.e, label %.noexc3

bb.e:                                             ; preds = %._crit_edge116
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36  ; 8 uses
  switch i8 %i.bh, label %bb.g [
    i8 34, label %.noexc3
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bi = add i32 %i.be, 2
  br label %.noexc7

bb.g:                                             ; preds = %bb.e
  %.not4.i = icmp sgt i8 %i.bh, -1
  br i1 %.not4.i, label %bb.ae, label %bb.h, !prof !110

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i8 %i.bh to i32                    ; 3 uses
  %i.bk = and i32 %i.bj, 64
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !108

bb.i:                                             ; preds = %bb.h
  %i.bm = add nuw i32 %i.be, 1
  br label %.noexc7

bb.j:                                             ; preds = %bb.h
  %i.bn = and i32 %i.bj, 32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw i32 %i.be, 1                    ; 3 uses
  %.not221 = icmp ult i32 %i.be, %i.e
  br i1 %.not221, label %bb.l, label %bb.m, !prof !110

bb.l:                                             ; preds = %bb.k
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %.noexc7, label %bb.n, !prof !108

bb.m:                                             ; preds = %bb.k
  br i1 %.not83, label %.noexc7, label %.noexc3

bb.n:                                             ; preds = %bb.l
  %i.bu = icmp samesign ult i8 %i.bh, -62         ; 2 uses
  %spec.select168 = select i1 %i.bu, i32 11, i32 %i.am
  %spec.select169 = select i1 %i.bu, i32 11, i32 %i.ak
  %i.bv = add i32 %i.be, 2
  br label %.noexc7

bb.o:                                             ; preds = %bb.j
  %i.bw = and i32 %i.bj, 16
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.by = add i32 %i.be, 2                        ; 2 uses
  %i.bz = icmp ugt i32 %i.by, %i.e
  br i1 %i.bz, label %.critedge2.i, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.ca = add nuw i32 %i.be, 1                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36  ; 3 uses
  %i.ce = icmp slt i8 %i.cd, -64
  br i1 %i.ce, label %bb.r, label %.noexc7, !prof !110

bb.r:                                             ; preds = %bb.q
  %i.cf = zext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !36
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %.noexc7, label %bb.s, !prof !108

.critedge2.i:                                     ; preds = %bb.p
  br i1 %.not83, label %.critedge2.i..critedge2.i.thread_crit_edge, label %.noexc3

.critedge2.i..critedge2.i.thread_crit_edge:       ; preds = %.critedge2.i
  %.pre = add nuw i32 %i.be, 1
  br label %.noexc7

bb.s:                                             ; preds = %bb.r
  switch i8 %i.bh, label %.thread [
    i8 -32, label %bb.t
    i8 -19, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp samesign ult i8 %i.cd, -96         ; 2 uses
  %spec.select170 = select i1 %i.cj, i32 11, i32 %i.am
  %spec.select171 = select i1 %i.cj, i32 11, i32 %i.ak
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ck = icmp samesign ugt i8 %i.cd, -97         ; 2 uses
  %spec.select172 = select i1 %i.ck, i32 11, i32 %i.am
  %spec.select173 = select i1 %i.ck, i32 11, i32 %i.ak
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.s
  %i.cl = phi i32 [ %spec.select170, %bb.t ], [ %spec.select172, %bb.u ], [ %i.am, %bb.s ]
  %i.cm = phi i32 [ %spec.select171, %bb.t ], [ %spec.select173, %bb.u ], [ %i.ak, %bb.s ]
  %i.cn = add i32 %i.be, 3
  br label %.noexc7

bb.v:                                             ; preds = %bb.o
  %i.co = add i32 %i.be, 3                        ; 2 uses
  %i.cp = icmp ugt i32 %i.co, %i.e
  br i1 %i.cp, label %.critedge4.i, label %bb.w, !prof !108

bb.w:                                             ; preds = %bb.v
  %i.cq = add nuw i32 %i.be, 1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !36  ; 3 uses
  %i.cu = icmp slt i8 %i.ct, -64
  br i1 %i.cu, label %bb.x, label %.critedge4.i, !prof !110

bb.x:                                             ; preds = %bb.w
  %i.cv = add i32 %i.be, 2
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !36
  %i.cz = icmp slt i8 %i.cy, -64
  br i1 %i.cz, label %bb.y, label %.critedge4.i, !prof !110

bb.y:                                             ; preds = %bb.x
  %i.da = zext i32 %i.co to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !36
  %i.dd = icmp sgt i8 %i.dc, -65
  br i1 %i.dd, label %.critedge4.i, label %bb.aa, !prof !108

.critedge4.i:                                     ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.de = add i32 %i.be, 2
  %i.df = icmp ugt i32 %i.de, %i.e
  %or.cond = and i1 %i.f, %i.df
  br i1 %or.cond, label %.noexc3, label %bb.z

bb.z:                                             ; preds = %.critedge4.i
  %i.dg = add nuw i32 %i.be, 1
  br label %.noexc7

bb.aa:                                            ; preds = %bb.y
  switch i8 %i.bh, label %bb.ad [
    i8 -16, label %bb.ab
    i8 -12, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp samesign ult i8 %i.ct, -112
  br label %.thread37

bb.ac:                                            ; preds = %bb.aa
  %i.di = icmp samesign ugt i8 %i.ct, -113
  br label %.thread37

bb.ad:                                            ; preds = %bb.aa
  %i.dj = icmp samesign ugt i8 %i.bh, -12
  br label %.thread37

.thread37:                                        ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sink226 = phi i1 [ %i.dj, %bb.ad ], [ %i.di, %bb.ac ], [ %i.dh, %bb.ab ] ; 2 uses
  %spec.select178 = select i1 %.sink226, i32 11, i32 %i.am
  %spec.select179 = select i1 %.sink226, i32 11, i32 %i.ak
  %i.dk = add i32 %i.be, 4
  br label %.noexc7

bb.ae:                                            ; preds = %bb.g
  %i.dl = icmp samesign ult i8 %i.bh, 32          ; 2 uses
  %spec.select180 = select i1 %i.dl, i32 14, i32 %i.am
  %spec.select181 = select i1 %i.dl, i32 14, i32 %i.ak
  %i.dm = add nuw i32 %i.be, 1
  br label %.noexc7

.noexc7:                                          ; preds = %bb.m, %bb.l, %bb.r, %bb.q, %.critedge2.i..critedge2.i.thread_crit_edge, %bb.i, %bb.n, %.thread, %bb.z, %.thread37, %bb.ae, %bb.f
  %i.dn = phi i32 [ %spec.select180, %bb.ae ], [ %i.am, %bb.f ], [ 11, %bb.i ], [ %spec.select178, %.thread37 ], [ 11, %bb.z ], [ %spec.select168, %bb.n ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ], [ 11, %bb.q ], [ %i.cl, %.thread ], [ 11, %bb.r ], [ 11, %bb.l ], [ 11, %bb.m ] ; 2 uses
  %i.do = phi i32 [ %spec.select181, %bb.ae ], [ %i.ak, %bb.f ], [ 11, %bb.i ], [ %spec.select179, %.thread37 ], [ 11, %bb.z ], [ %spec.select169, %bb.n ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ], [ 11, %bb.q ], [ %i.cm, %.thread ], [ 11, %bb.r ], [ 11, %bb.l ], [ 11, %bb.m ] ; 2 uses
  %i.dp = phi i32 [ %i.dm, %bb.ae ], [ %i.bi, %bb.f ], [ %i.bm, %bb.i ], [ %i.dk, %.thread37 ], [ %i.dg, %bb.z ], [ %i.bv, %bb.n ], [ %.pre, %.critedge2.i..critedge2.i.thread_crit_edge ], [ %i.ca, %bb.q ], [ %i.cn, %.thread ], [ %i.ca, %bb.r ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ] ; 3 uses
  %i.dq = icmp ult i32 %i.dp, %i.e
  br i1 %i.dq, label %.preheader87, label %.noexc3, !llvm.loop !213

.noexc3:                                          ; preds = %.critedge2.i, %.critedge4.i, %bb.m, %.noexc7, %._crit_edge116, %bb.e, %bb.c
  %.lcssa121 = phi i32 [ %i.i, %bb.c ], [ %i.am, %.critedge2.i ], [ %i.am, %.critedge4.i ], [ %i.am, %bb.m ], [ %i.am, %bb.e ], [ %i.am, %._crit_edge116 ], [ %i.dn, %.noexc7 ]
  %.lcssa94 = phi i32 [ %i.l, %bb.c ], [ %i.ak, %.critedge2.i ], [ %i.ak, %.critedge4.i ], [ %i.ak, %bb.m ], [ %i.ak, %bb.e ], [ %i.ak, %._crit_edge116 ], [ %i.do, %.noexc7 ]
  %i.dr = phi i32 [ %i.ai, %bb.c ], [ %i.e, %.critedge2.i ], [ %i.e, %.critedge4.i ], [ %i.e, %bb.m ], [ %i.be, %bb.e ], [ %i.be, %._crit_edge116 ], [ %i.dp, %.noexc7 ]
  %.0.i = phi i8 [ 1, %bb.c ], [ 1, %.critedge2.i ], [ 1, %.critedge4.i ], [ 1, %bb.m ], [ 0, %bb.e ], [ 1, %._crit_edge116 ], [ 1, %.noexc7 ]
  %i.ds = or i8 %.0.i, %.08.i139
  br label %.critedge.i

bb.af:                                            ; preds = %bb.b
  %i.dt = zext i8 %i.ag to i64
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %i.dw = and i8 %i.dv, 2
  %.not80 = icmp eq i8 %i.dw, 0
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.dx = add nuw i32 %i.ad, 1
  %i.dy = icmp ult i32 %i.dx, %i.e
  %or.cond229 = select i1 %.not80, i1 %i.dy, i1 false
  br i1 %or.cond229, label %.lr.ph104.preheader, label %.critedge.i

.lr.ph104.preheader:                              ; preds = %bb.af
  %i.dz = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !36
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !36
  %i.ef = and i8 %i.ee, 3
  %.not81237 = icmp eq i8 %i.ef, 0
  br i1 %.not81237, label %.lr.ph239, label %.critedge.i

.lr.ph239:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv190238 = phi i64 [ %indvars.iv.next191, %.lr.ph104 ], [ %i.dz, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190238, 1 ; 3 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next191, %i.g
  br i1 %i.eg, label %.lr.ph104, label %..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104:                                        ; preds = %.lr.ph239
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next191
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !36
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !36
  %i.em = and i8 %i.el, 3
  %.not81 = icmp eq i8 %i.em, 0
  br i1 %.not81, label %.lr.ph239, label %.lr.ph104..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104..critedge.i.loopexit_crit_edge:         ; preds = %.lr.ph104
  %i.en = trunc nuw i64 %indvars.iv190238 to i32
  br label %.critedge.i

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph239
  br label %.critedge.i, !llvm.loop !214

.critedge.i:                                      ; preds = %.lr.ph104.preheader, %.lr.ph104..critedge.i.loopexit_crit_edge, %..critedge.i.loopexit_crit_edge, %bb.af, %.noexc3
  %i.eo = phi i32 [ %.lcssa121, %.noexc3 ], [ %i.i, %bb.af ], [ %i.i, %..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104.preheader ]
  %i.ep = phi i32 [ %.lcssa94, %.noexc3 ], [ %i.l, %bb.af ], [ %i.l, %..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104.preheader ] ; 2 uses
  %i.eq = phi i32 [ %i.dr, %.noexc3 ], [ %i.ad, %bb.af ], [ %i.h, %..critedge.i.loopexit_crit_edge ], [ %i.en, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.ad, %.lr.ph104.preheader ]
  %.1.i = phi i8 [ %i.ds, %.noexc3 ], [ %.08.i139, %bb.af ], [ %.08.i139, %..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104.preheader ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.es = add i32 %i.eq, 1                        ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.e
  br i1 %i.et, label %.noexc.preheader, label %._crit_edge140.loopexit, !llvm.loop !215

._crit_edge140.loopexit:                          ; preds = %.noexc._crit_edge, %.critedge.i
  %.lcssa96.ph = phi i32 [ %i.ep, %.critedge.i ], [ %i.l, %.noexc._crit_edge ]
  %.lcssa95.ph = phi ptr [ %i.er, %.critedge.i ], [ %i.j, %.noexc._crit_edge ]
  %.08.i.lcssa.ph = phi i8 [ %.1.i, %.critedge.i ], [ %.08.i139, %.noexc._crit_edge ]
  %i.eu = trunc nuw i8 %.08.i.lcssa.ph to i1
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.a
  %.lcssa96 = phi i32 [ 0, %bb.a ], [ %.lcssa96.ph, %._crit_edge140.loopexit ] ; 3 uses
  %.lcssa95 = phi ptr [ %i.d, %bb.a ], [ %.lcssa95.ph, %._crit_edge140.loopexit ] ; 4 uses
  %.08.i.lcssa = phi i1 [ false, %bb.a ], [ %i.eu, %._crit_edge140.loopexit ] ; 3 uses
  store i32 %i.e, ptr %.lcssa95, align 4, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 4
  store i32 %i.e, ptr %i.ev, align 4, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 8
  store i32 0, ptr %i.ew, align 4, !tbaa !37
  %i.ex = ptrtoint ptr %.lcssa95 to i64
  %i.ey = ptrtoint ptr %i.d to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 2
  %i.fb = trunc i64 %i.fa to i32                  ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !84
  %i.fd = icmp eq i32 %i.fb, 0
  br i1 %i.fd, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %bb.ag, !prof !108

bb.ag:                                            ; preds = %._crit_edge140
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.fe, align 8, !tbaa !86
  switch i32 %3, label %bb.bk [
    i32 1, label %bb.ah
    i32 2, label %bb.ax
  ]

bb.ah:                                            ; preds = %bb.ag
  br i1 %.08.i.lcssa, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.ff = add i32 %i.fb, -1                       ; 3 uses
  store i32 %i.ff, ptr %i.fc, align 8, !tbaa !84
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %.preheader, !prof !108

.preheader:                                       ; preds = %bb.ai, %bb.ah
  %i.fh = phi i32 [ %i.ff, %bb.ai ], [ %i.fb, %bb.ah ] ; 4 uses
  %.035.i14158 = add i32 %i.fh, -1                ; 2 uses
  %.not.i15159 = icmp eq i32 %.035.i14158, 0
  br i1 %.not.i15159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %.preheader
  %i.fi = zext i32 %.035.i14158 to i64
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.ap
  %indvars.iv199 = phi i64 [ %i.fi, %.lr.ph164.preheader ], [ %indvars.iv.next200, %bb.ap ] ; 4 uses
  %.035.in.i13162 = phi i32 [ %i.fh, %.lr.ph164.preheader ], [ %i.gd, %bb.ap ]
  %.036.i12161 = phi i32 [ 0, %.lr.ph164.preheader ], [ %.238.i20, %bb.ap ] ; 7 uses
  %.039.i11160 = phi i32 [ 0, %.lr.ph164.preheader ], [ %.241.i19, %bb.ap ] ; 7 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv199
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !37
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !36
  switch i8 %i.fn, label %bb.an [
    i8 58, label %bb.ap
    i8 44, label %bb.ap
    i8 125, label %bb.aj
    i8 93, label %bb.ak
    i8 123, label %bb.al
    i8 91, label %bb.am
  ]

bb.aj:                                            ; preds = %.lr.ph164
  %i.fo = add nsw i32 %.036.i12161, -1
  br label %bb.ap

bb.ak:                                            ; preds = %.lr.ph164
  %i.fp = add nsw i32 %.039.i11160, -1
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph164
  %i.fq = add nsw i32 %.036.i12161, 1
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph164
  %i.fr = add nsw i32 %.039.i11160, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.lr.ph164
  %.140.i16 = phi i32 [ %.039.i11160, %.lr.ph164 ], [ %.039.i11160, %bb.al ], [ %i.fr, %bb.am ] ; 5 uses
  %.137.i17 = phi i32 [ %.036.i12161, %.lr.ph164 ], [ %i.fq, %bb.al ], [ %.036.i12161, %bb.am ] ; 5 uses
  %i.fs = add i32 %.035.in.i13162, -2
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !37
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !36
  switch i8 %i.fy, label %bb.ao [
    i8 123, label %bb.ap
    i8 91, label %bb.ap
    i8 58, label %bb.ap
    i8 44, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fz = trunc nuw i64 %indvars.iv199 to i32
  %i.ga = icmp ne i32 %.140.i16, 0
  %i.gb = icmp ne i32 %.137.i17, 0
  %or.cond.i29 = select i1 %i.ga, i1 true, i1 %i.gb
  %spec.select85 = select i1 %or.cond.i29, i32 %i.fz, i32 %i.fh
  br label %.noexc4.thread53

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.ak, %bb.aj, %.lr.ph164, %.lr.ph164
  %.241.i19 = phi i32 [ %.039.i11160, %.lr.ph164 ], [ %i.fp, %bb.ak ], [ %.039.i11160, %bb.aj ], [ %.039.i11160, %.lr.ph164 ], [ %.140.i16, %bb.an ], [ %.140.i16, %bb.an ], [ %.140.i16, %bb.an ], [ %.140.i16, %bb.an ] ; 2 uses
  %.238.i20 = phi i32 [ %.036.i12161, %.lr.ph164 ], [ %.036.i12161, %bb.ak ], [ %i.fo, %bb.aj ], [ %.036.i12161, %.lr.ph164 ], [ %.137.i17, %bb.an ], [ %.137.i17, %bb.an ], [ %.137.i17, %bb.an ], [ %.137.i17, %bb.an ] ; 2 uses
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, -1 ; 2 uses
  %i.gc = and i64 %indvars.iv.next200, 4294967295
  %.not.i15 = icmp eq i64 %i.gc, 0
  %i.gd = trunc nuw i64 %indvars.iv199 to i32
  br i1 %.not.i15, label %._crit_edge165, label %.lr.ph164, !llvm.loop !216

._crit_edge165:                                   ; preds = %bb.ap, %.preheader
  %.039.i11.lcssa = phi i32 [ 0, %.preheader ], [ %.241.i19, %bb.ap ] ; 5 uses
  %.036.i12.lcssa = phi i32 [ 0, %.preheader ], [ %.238.i20, %bb.ap ] ; 5 uses
  %i.ge = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !36
  switch i8 %i.gh, label %bb.au [
    i8 125, label %bb.aq
    i8 93, label %bb.ar
    i8 123, label %bb.as
    i8 91, label %bb.at
  ]

bb.aq:                                            ; preds = %._crit_edge165
  %i.gi = add nsw i32 %.036.i12.lcssa, -1
  br label %bb.au

bb.ar:                                            ; preds = %._crit_edge165
  %i.gj = add nsw i32 %.039.i11.lcssa, -1
  br label %bb.au

bb.as:                                            ; preds = %._crit_edge165
  %i.gk = add nsw i32 %.036.i12.lcssa, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge165
  %i.gl = add nsw i32 %.039.i11.lcssa, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %._crit_edge165
  %.443.i26 = phi i32 [ %.039.i11.lcssa, %._crit_edge165 ], [ %.039.i11.lcssa, %bb.aq ], [ %i.gj, %bb.ar ], [ %.039.i11.lcssa, %bb.as ], [ %i.gl, %bb.at ]
  %.4.i27 = phi i32 [ %.036.i12.lcssa, %._crit_edge165 ], [ %i.gi, %bb.aq ], [ %.036.i12.lcssa, %bb.ar ], [ %i.gk, %bb.as ], [ %.036.i12.lcssa, %bb.at ]
  %i.gm = icmp eq i32 %.443.i26, 0
  %i.gn = icmp eq i32 %.4.i27, 0
  %or.cond4.i28.not = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond4.i28.not, label %.noexc4.thread53, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = icmp eq i32 %i.ge, 0
  br i1 %i.go, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fc, align 8, !tbaa !84
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit

.noexc4.thread53:                                 ; preds = %bb.ao, %bb.au
  %.5.i2551 = phi i32 [ %i.fh, %bb.au ], [ %spec.select85, %bb.ao ]
  store i32 %.5.i2551, ptr %i.fc, align 8, !tbaa !84
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit

bb.ax:                                            ; preds = %bb.ag
  br i1 %.08.i.lcssa, label %thread-pre-split59, label %.preheader86

thread-pre-split59:                               ; preds = %bb.ax
  %i.gp = add i32 %i.fb, -1                       ; 3 uses
  store i32 %i.gp, ptr %i.fc, align 8, !tbaa !84
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %.noexc5, label %.preheader86

.preheader86:                                     ; preds = %bb.ax, %thread-pre-split59
  %i.gr = phi i32 [ %i.gp, %thread-pre-split59 ], [ %i.fb, %bb.ax ] ; 4 uses
  %.035.i148 = add i32 %i.gr, -1                  ; 2 uses
  %.not.i8149 = icmp eq i32 %.035.i148, 0
  br i1 %.not.i8149, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %.preheader86
  %i.gs = zext i32 %.035.i148 to i64
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.be
  %indvars.iv196 = phi i64 [ %i.gs, %.lr.ph154.preheader ], [ %indvars.iv.next197, %bb.be ] ; 4 uses
  %.035.in.i152 = phi i32 [ %i.gr, %.lr.ph154.preheader ], [ %i.hn, %bb.be ]
end_hunk_0
