Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_congruence?download=true
inline.NumInlined: 6068
inline.NumDeleted: 1716
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN7CaDiCaL7Closure16rewrite_and_gateEPNS_4GateEiill:bb.a
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !153 ; 2 uses
  %.not.i = icmp eq i32 %i.bk, %.0.i
  br i1 %.not.i, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit, label %bb.q, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit: ; preds = %bb.q
  store i32 %.0.i, ptr %i.az, align 8, !tbaa !151
  br label %bb.r

bb.r:                                             ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !132 ; 4 uses
  %.not166178 = icmp eq ptr %i.ay, %i.bm
  br i1 %.not166178, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bn = sub nsw i32 0, %2                       ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.ai
  %.091182 = phi i32 [ 0, %.lr.ph ], [ %.394, %bb.ai ] ; 4 uses
  %.095181 = phi i32 [ 0, %.lr.ph ], [ %.398, %bb.ai ] ; 5 uses
  %.sroa.0155.0180 = phi ptr [ %i.ay, %.lr.ph ], [ %.sroa.0155.1, %bb.ai ] ; 9 uses
  %.sroa.0152.0179 = phi ptr [ %i.ay, %.lr.ph ], [ %i.cn, %bb.ai ] ; 3 uses
  %i.bo = load i32, ptr %.sroa.0152.0179, align 4, !tbaa !153 ; 5 uses
  %i.bp = load i32, ptr %i.az, align 8, !tbaa !151 ; 2 uses
  %i.bq = sub nsw i32 0, %i.bp                    ; 2 uses
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp eq i32 %i.bo, %3                   ; 2 uses
  %i.bt = icmp eq i32 %2, %i.bq
  %or.cond = and i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.lcssa = phi i32 [ %3, %bb.t ], [ %i.bo, %bb.s ]
  store i8 16, ptr %i.bb, align 8, !tbaa !150
  br label %.thread

bb.v:                                             ; preds = %bb.t
  br i1 %i.bs, label %bb.w, label %._crit_edge225

._crit_edge225:                                   ; preds = %bb.v
  %.pre226 = sub nsw i32 0, %i.bo
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %2, ptr %.sroa.0152.0179, align 4, !tbaa !153
  %.pre210 = load i32, ptr %i.az, align 8, !tbaa !151
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge225, %bb.w
  %.pre-phi227 = phi i32 [ %.pre226, %._crit_edge225 ], [ %i.bn, %bb.w ]
  %i.bu = phi i32 [ %i.bp, %._crit_edge225 ], [ %.pre210, %bb.w ] ; 2 uses
  %i.bv = phi i32 [ %i.bo, %._crit_edge225 ], [ %2, %bb.w ] ; 7 uses
  %i.bw = icmp eq i32 %i.bv, %i.bu
  %i.bx = icmp eq i32 %i.bu, %.pre-phi227
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 16, ptr %i.bb, align 8, !tbaa !150
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bz = load ptr, ptr %i.am, align 8, !tbaa !123
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 472
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !310
  %i.cc = sext i32 %i.bv to i64
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !143 ; 2 uses
  %i.cf = icmp sgt i8 %i.ce, 0
  br i1 %i.cf, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp slt i8 %i.ce, 0
  br i1 %i.cg, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = icmp eq i32 %i.bv, %2
  br i1 %i.ch, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not117 = icmp eq i32 %.091182, 0
  br i1 %.not117, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ci = add i32 %.095181, 1
  %.not118 = icmp eq i32 %.095181, 0
  br i1 %.not118, label %.thread255, label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.cj = icmp eq i32 %i.bv, %i.bn
  br i1 %i.cj, label %bb.af, label %bb.ah

.thread255:                                       ; preds = %bb.ad
  %i.ck = icmp eq i32 %i.bv, %i.bn
  br i1 %i.ck, label %.thread, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not119 = icmp eq i32 %.095181, 0
  br i1 %.not119, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.cl = add i32 %.091182, 1
  br label %bb.ah

bb.ah:                                            ; preds = %.thread255, %bb.ag, %bb.ae
  %.196258 = phi i32 [ 0, %bb.ag ], [ %.095181, %bb.ae ], [ 1, %.thread255 ]
  %.192 = phi i32 [ %i.cl, %bb.ag ], [ %.091182, %bb.ae ], [ 0, %.thread255 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0155.0180, i64 4
  store i32 %i.bv, ptr %.sroa.0155.0180, align 4, !tbaa !153
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.z, %bb.ah
  %.sroa.0155.1 = phi ptr [ %i.cm, %bb.ah ], [ %.sroa.0155.0180, %bb.z ], [ %.sroa.0155.0180, %bb.ad ] ; 2 uses
  %.398 = phi i32 [ %.196258, %bb.ah ], [ %.095181, %bb.z ], [ %i.ci, %bb.ad ]
  %.394 = phi i32 [ %.192, %bb.ah ], [ %.091182, %bb.z ], [ 0, %bb.ad ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0179, i64 4 ; 2 uses
  %.not166 = icmp eq ptr %i.cn, %i.bm
  br i1 %.not166, label %.thread, label %bb.s

.thread:                                          ; preds = %.thread255, %bb.ai, %bb.af, %bb.ac, %bb.aa, %bb.r, %bb.u
  %.sroa.0155.0169 = phi ptr [ %.sroa.0155.0180, %bb.u ], [ %i.ay, %bb.r ], [ %.sroa.0155.0180, %.thread255 ], [ %.sroa.0155.1, %bb.ai ], [ %.sroa.0155.0180, %bb.af ], [ %.sroa.0155.0180, %bb.ac ], [ %.sroa.0155.0180, %bb.aa ] ; 2 uses
  %.3106 = phi i32 [ %.lcssa, %bb.u ], [ 0, %bb.r ], [ %i.bn, %.thread255 ], [ 0, %bb.ai ], [ %i.bn, %bb.af ], [ %2, %bb.ac ], [ 0, %bb.aa ] ; 10 uses
  %.3102 = phi i32 [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %.thread255 ], [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.ac ], [ %i.bv, %bb.aa ] ; 5 uses
  %.not167 = icmp eq ptr %.sroa.0155.0169, %i.bm
  br i1 %.not167, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.co = ptrtoint ptr %.sroa.0155.0169 to i64
  %i.cp = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = ptrtoint ptr %i.bm to i64
  %i.ct = sub i64 %i.cs, %i.cp
  %i.cu = ashr exact i64 %i.ct, 2                 ; 3 uses
  %i.cv = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cw = sub nuw nsw i64 %i.cr, %i.cu
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.cw)
  %.pre211 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.al:                                            ; preds = %bb.aj
  %i.cx = icmp ult i64 %i.cr, %i.cu
  br i1 %i.cx, label %bb.am, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.am:                                            ; preds = %bb.al
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cq
  store ptr %i.cy, ptr %i.bl, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.ak, %bb.al, %bb.am
  %i.cz = phi ptr [ %.pre211, %bb.ak ], [ %i.az, %bb.al ], [ %i.az, %bb.am ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 5 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = or i8 %i.db, 8
  store i8 %i.dc, ptr %i.da, align 1
  %.pre215.pre = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.thread
  %.pre215 = phi ptr [ %.pre215.pre, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.az, %.thread ] ; 8 uses
  %i.dd = load ptr, ptr %i.am, align 8, !tbaa !123
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 344
  %i.df = load i8, ptr %i.de, align 8, !tbaa !289, !range !290, !noundef !291
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.ao:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre215, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.pre215, i64 16 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !338 ; 3 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !319 ; 4 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 4
  %i.dp = icmp eq i32 %.3102, %2
  %i.dq = select i1 %i.dp, i32 %3, i32 %.3102
  %i.dr = sub nsw i32 0, %2
  %i.ds = icmp eq i32 %.3106, %i.dr
  %i.dt = sub nsw i32 0, %3
  %i.du = icmp eq i32 %.3106, %2
  %i.dv = select i1 %i.du, i32 %3, i32 %.3106
  %i.dw = select i1 %i.ds, i32 %i.dt, i32 %i.dv   ; 2 uses
  %.not202 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not202, label %._crit_edge.thread, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.ao
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre215, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.not121 = icmp eq i32 %.3106, 0
  %i.dz = sub nsw i32 0, %i.dw
  %i.ea = sub nsw i32 0, %.3106
  br label %bb.as

._crit_edge:                                      ; preds = %bb.bf
  %.pre213 = load ptr, ptr %i.di, align 8, !tbaa !338 ; 2 uses
  %.pre218.a = ptrtoint ptr %.pre213 to i64
  %.pre219 = ptrtoint ptr %i.ek to i64
  %.pre221 = sub i64 %.pre218.a, %.pre219
  %.pre223 = ashr exact i64 %.pre221, 4           ; 3 uses
  %i.eb = icmp ugt i64 %.188, %.pre223
  br i1 %i.eb, label %bb.ap, label %._crit_edge.thread

bb.ap:                                            ; preds = %._crit_edge
  %i.ec = sub nuw i64 %.188, %.pre223
  call void @_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 noundef %i.ec)
  %.pre214 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

._crit_edge.thread:                               ; preds = %bb.ao, %._crit_edge
  %.087.lcssa265 = phi i64 [ %.188, %._crit_edge ], [ 0, %bb.ao ] ; 2 uses
  %i.ed = phi ptr [ %.pre213, %._crit_edge ], [ %i.dj, %bb.ao ]
  %i.ee = phi ptr [ %i.ek, %._crit_edge ], [ %i.dk, %bb.ao ]
  %.pre-phi224264 = phi i64 [ %.pre223, %._crit_edge ], [ 0, %bb.ao ]
  %i.ef = icmp ult i64 %.087.lcssa265, %.pre-phi224264
  br i1 %i.ef, label %bb.aq, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.aq:                                            ; preds = %._crit_edge.thread
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.087.lcssa265 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.ed, %i.eg
  br i1 %.not.i.i133, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.eg, ptr %i.di, align 8, !tbaa !338
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.as:                                            ; preds = %.lr.ph200, %bb.bf
  %i.eh = phi ptr [ %i.dk, %.lr.ph200 ], [ %i.ek, %bb.bf ] ; 2 uses
  %.0199 = phi i64 [ 0, %.lr.ph200 ], [ %i.fl, %bb.bf ] ; 2 uses
  %.086198 = phi i8 [ 0, %.lr.ph200 ], [ %.3, %bb.bf ] ; 4 uses
  %.087197 = phi i64 [ 0, %.lr.ph200 ], [ %.188, %bb.bf ] ; 7 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.0199
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.087197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !337
  %i.ek = load ptr, ptr %i.dh, align 8, !tbaa !319 ; 4 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.087197 ; 3 uses
  %i.em = load i8, ptr %i.dx, align 8, !tbaa !150
  %.not120 = icmp eq i8 %i.em, 0
  %.pre212.pre = load i32, ptr %i.el, align 4, !tbaa !153 ; 4 uses
  br i1 %.not120, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.en = load ptr, ptr %i.dy, align 8, !tbaa !152 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0.i134 = phi i32 [ %.pre212.pre, %bb.at ], [ %i.es, %bb.au ] ; 4 uses
  %i.eo = call noundef i32 @llvm.abs.i32(i32 %.0.i134, i1 true)
  %i.ep = call noundef i32 @llvm.fshl.i32(i32 %i.eo, i32 %.0.i134, i32 1)
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !153 ; 2 uses
  %.not.i135 = icmp eq i32 %i.es, %.0.i134
  br i1 %.not.i135, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136, label %bb.au, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136: ; preds = %bb.au
  %i.et = load i32, ptr %.pre215, align 8, !tbaa !151
  %i.eu = icmp eq i32 %.0.i134, %i.et
  br i1 %i.eu, label %.preheader, label %bb.av

.preheader:                                       ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136, %.preheader
  %.0.i137 = phi i32 [ %i.ez, %.preheader ], [ %.pre212.pre, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136 ] ; 5 uses
  %i.ev = call noundef i32 @llvm.abs.i32(i32 %.0.i137, i1 true)
  %i.ew = call noundef i32 @llvm.fshl.i32(i32 %i.ev, i32 %.0.i137, i32 1)
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !153 ; 2 uses
  %.not.i138 = icmp eq i32 %i.ez, %.0.i137
  br i1 %.not.i138, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139, label %.preheader, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139: ; preds = %.preheader
  store i32 %.0.i137, ptr %i.el, align 4, !tbaa !153
  br label %bb.av

bb.av:                                            ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136, %bb.as
  %.pre212 = phi i32 [ %.0.i137, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139 ], [ %.pre212.pre, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136 ], [ %.pre212.pre, %bb.as ] ; 9 uses
  br i1 %.not121, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not122 = icmp eq i32 %.pre212, %i.dw
  %.not123 = icmp eq i32 %.pre212, %i.dz
  %or.cond129 = select i1 %.not122, i1 true, i1 %.not123
  %.not124 = icmp eq i32 %.pre212, %.3106
  %or.cond130 = or i1 %.not124, %or.cond129
  %.not125 = icmp eq i32 %.pre212, %i.ea
  %or.cond131 = select i1 %or.cond130, i1 true, i1 %.not125
  br i1 %or.cond131, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fa = load ptr, ptr %i.am, align 8, !tbaa !123
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 472
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !310
  %i.fd = sext i32 %.pre212 to i64
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !143
  %.not126 = icmp eq i8 %i.ff, 0
  br i1 %.not126, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not127 = icmp eq i32 %.pre212, %3
  %.not128 = icmp eq i32 %.pre212, %i.dq
  %or.cond132 = or i1 %.not127, %.not128
  br i1 %or.cond132, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fg = icmp eq i32 %.pre212, %2
  br i1 %i.fg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fh = trunc nuw i8 %.086198 to i1
  br i1 %i.fh, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1 = phi i8 [ %.086198, %bb.az ], [ 1, %bb.ba ] ; 2 uses
  %i.fi = icmp eq i32 %.pre212, %3
  br i1 %i.fi, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.fj = trunc nuw i8 %.1 to i1
  br i1 %i.fj, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %2, ptr %i.el, align 8, !tbaa !339
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd
  %.2 = phi i8 [ 1, %bb.bd ], [ %.1, %bb.bb ]
  %i.fk = add i64 %.087197, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.be
  %.188 = phi i64 [ %i.fk, %bb.be ], [ %.087197, %bb.aw ], [ %.087197, %bb.ay ], [ %.087197, %bb.ba ], [ %.087197, %bb.bc ] ; 4 uses
  %.3 = phi i8 [ %.2, %bb.be ], [ %.086198, %bb.aw ], [ %.086198, %bb.ay ], [ 1, %bb.ba ], [ 1, %bb.bc ]
  %i.fl = add nuw i64 %.0199, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %i.do
  br i1 %exitcond.not, label %._crit_edge, label %bb.as, !llvm.loop !620

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit: ; preds = %bb.ar, %bb.aq, %._crit_edge.thread, %bb.ap, %bb.an
  %i.fm = phi ptr [ %.pre215, %bb.ar ], [ %.pre215, %bb.aq ], [ %.pre215, %._crit_edge.thread ], [ %.pre214, %bb.ap ], [ %.pre215, %bb.an ] ; 5 uses
  %.not.i140 = icmp eq i32 %.3102, 0
  br i1 %.not.i140, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !312 ; 3 uses
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !152 ; 6 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 2                 ; 2 uses
  %i.fv = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fw = sub nuw nsw i64 1, %i.fu
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 noundef %i.fw)
  %.pre.i = load ptr, ptr %i.fn, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.fx = icmp ugt i64 %i.fu, 1
  br i1 %i.fx, label %bb.bj, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fp, %i.fy
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.fy, ptr %i.fo, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.fz = phi ptr [ %.pre.i, %bb.bh ], [ %i.fq, %bb.bi ], [ %i.fq, %bb.bj ], [ %i.fq, %bb.bk ]
  store i32 %.3102, ptr %i.fz, align 4, !tbaa !153
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit143

bb.bl:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit
  %.not11.i = icmp eq i32 %.3106, 0
  br i1 %.not11.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit143, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 56 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !312 ; 2 uses
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !152 ; 5 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = ashr exact i64 %i.gg, 2                 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 2
  br i1 %i.gi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gj = sub nuw nsw i64 2, %i.gh
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 noundef %i.gj)
  %.pre15.i = load ptr, ptr %i.ga, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i

bb.bo:                                            ; preds = %bb.bm
  %.not14.i = icmp eq i64 %i.gg, 8
  br i1 %.not14.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.gc, %i.gk
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.gk, ptr %i.gb, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i:           ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.gl = phi ptr [ %.pre15.i, %bb.bn ], [ %i.gd, %bb.bo ], [ %i.gd, %bb.bp ], [ %i.gd, %bb.bq ] ; 2 uses
  store i32 %.3106, ptr %i.gl, align 4, !tbaa !153
  %i.gm = sub nsw i32 0, %.3106
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !153
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit143

_ZNSt6vectorIlSaIlEED2Ev.exit143:                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %bb.bl, %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 5 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = or i8 %i.gp, 8
  store i8 %i.gq, ptr %i.go, align 1
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !325
  call void @_ZN7CaDiCaL7Closure15update_and_gateEPNS_4GateENSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEiillii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.gr, ptr %.sroa.060.0, i32 noundef %3, i32 noundef %2, i64 noundef %4, i64 noundef %5, i32 noundef %.3102, i32 noundef %.3106)
  %i.gs = load ptr, ptr %i.am, align 8, !tbaa !123
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 7032 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !621
  %i.gv = add nsw i64 %i.gu, 1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !621
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, %bb.a, %_ZNSt6vectorIlSaIlEED2Ev.exit143, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL7Closure12rewrite_gateEPNS_4GateEiill(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !353
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure16rewrite_and_gateEPNS_4GateEiill(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure16rewrite_xor_gateEPNS_4GateEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure16rewrite_ite_gateEPNS_4GateEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !322, !range !290, !noundef !291
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure16rewrite_xor_gateEPNS_4GateEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !325
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN7CaDiCaL7Closure13rewriting_lhsEPNS_4GateEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2)
  br i1 %i.e, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr i64 %i.l, 4                         ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.o = and i64 %i.l, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.o ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.h ] ; 9 uses
  %i.p = load i32, ptr %.sroa.032.051.i.i.i.i, align 4, !tbaa !153
  %i.q = icmp eq i32 %i.p, %3
  br i1 %i.q, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = icmp eq i32 %i.s, %3
  br i1 %i.t, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153
  %i.w = icmp eq i32 %i.v, %3
  br i1 %i.w, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit127, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !153
  %i.z = icmp eq i32 %i.y, %3
  br i1 %i.z, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit129, label %bb.h
end_hunk_0
