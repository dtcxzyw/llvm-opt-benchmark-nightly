Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTransduction?download=true
inline.NumInlined: 6915
inline.NumDeleted: 1086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6NewBdd3Man3GbcEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !373
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.51, i64 noundef 15) #22 ; 0 uses
  %i.e = load ptr, ptr @_ZSt4cout, align 8, !tbaa !27
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j) #22
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10) #22, !inline_history !52
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #22
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #22 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !189  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189
  %i.y = icmp eq ptr %i.v, %i.x
  %i.z = load i16, ptr %0, align 8, !tbaa !374    ; 3 uses
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %.01945 = add nuw nsw i32 %i.aa, 1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !382 ; 3 uses
  %i.ad = icmp slt i32 %.01945, %i.ac             ; 2 uses
  br i1 %i.y, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = zext i16 %i.z to i64
  %i.al = add nuw nsw i64 %i.ak, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %i.am = phi i32 [ %i.ac, %.lr.ph ], [ %i.ce, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !122
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !367
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !124 ; 2 uses
  %.not21 = icmp eq i16 %i.ar, -1
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 -1, ptr %i.aq, align 2, !tbaa !124
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !152
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !189
  %i.aw = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !121 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !122
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !122
  %i.bd = mul i32 %i.bc, 4256249
  %i.be = add i32 %i.bd, %i.az
  %i.bf = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.as
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !122
  %i.bi = and i32 %i.be, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !122 ; 4 uses
  %.not17.i = icmp eq i32 %i.bl, 0
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i64 %indvars.iv, %i.bm
  %or.cond18.i = or i1 %.not17.i, %i.bn
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !189 ; 3 uses
  br i1 %or.cond18.i, label %_ZN6NewBdd3Man10RemoveBvarEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.bo = phi i32 [ %i.br, %.lr.ph.i ], [ %i.bl, %bb.j ]
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !122 ; 4 uses
  %.not.i = icmp eq i32 %i.br, 0
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp eq i64 %indvars.iv, %i.bs
  %or.cond.i = or i1 %.not.i, %i.bt
  br i1 %or.cond.i, label %_ZN6NewBdd3Man10RemoveBvarEi.exit.loopexit, label %.lr.ph.i, !llvm.loop !529

_ZN6NewBdd3Man10RemoveBvarEi.exit.loopexit:       ; preds = %.lr.ph.i
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bp
  br label %_ZN6NewBdd3Man10RemoveBvarEi.exit

_ZN6NewBdd3Man10RemoveBvarEi.exit:                ; preds = %_ZN6NewBdd3Man10RemoveBvarEi.exit.loopexit, %bb.j
  %.sroa.010.0.lcssa.i = phi ptr [ %i.bk, %bb.j ], [ %i.bu, %_ZN6NewBdd3Man10RemoveBvarEi.exit.loopexit ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.bl, %bb.j ], [ %i.br, %_ZN6NewBdd3Man10RemoveBvarEi.exit.loopexit ]
  %i.bv = sext i32 %.lcssa.i to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !122
  %i.by = load i32, ptr %i.ai, align 8, !tbaa !385
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !122
  %i.bz = load i32, ptr %.sroa.010.0.lcssa.i, align 4, !tbaa !122
  store i32 %i.bz, ptr %i.ai, align 8, !tbaa !385
  store i32 %i.bx, ptr %.sroa.010.0.lcssa.i, align 4, !tbaa !122
  %i.ca = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.as ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !122
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !122
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !382
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %_ZN6NewBdd3Man10RemoveBvarEi.exit
  %i.ce = phi i32 [ %i.am, %bb.h ], [ %i.am, %bb.i ], [ %.pre, %_ZN6NewBdd3Man10RemoveBvarEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %bb.h, label %.loopexit, !llvm.loop !530

bb.l:                                             ; preds = %bb.f
  br i1 %i.ad, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ci = zext i16 %i.z to i64
  %i.cj = add nuw nsw i64 %i.ci, 1
  br label %bb.m

._crit_edge:                                      ; preds = %bb.o
  %.pre73 = load i16, ptr %0, align 8, !tbaa !374 ; 2 uses
  %.pre77 = zext i16 %.pre73 to i32
  %.pre78 = add nuw nsw i32 %.pre77, 1
  %i.ck = icmp slt i32 %.pre78, %i.da
  br i1 %i.ck, label %.lr.ph52, label %.loopexit

.lr.ph52:                                         ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !93
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ct = zext i16 %.pre73 to i64
  %i.cu = add nuw nsw i64 %i.ct, 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph47, %bb.o
  %i.cv = phi i32 [ %i.ac, %.lr.ph47 ], [ %i.da, %bb.o ]
  %indvars.iv63 = phi i64 [ %i.cj, %.lr.ph47 ], [ %indvars.iv.next64, %bb.o ] ; 3 uses
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !367
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %indvars.iv63
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !124
  %.not24 = icmp eq i16 %i.cy, 0
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv63.tr = trunc i64 %indvars.iv63 to i32
  %i.cz = shl i32 %indvars.iv63.tr, 1
  tail call void @_ZN6NewBdd3Man11SetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.cz)
  %.pre72 = load i32, ptr %i.ab, align 4, !tbaa !382
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.da = phi i32 [ %i.cv, %bb.m ], [ %.pre72, %bb.n ] ; 4 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv.next64 to i32
  %i.dc = icmp sgt i32 %i.da, %i.db
  br i1 %i.dc, label %bb.m, label %._crit_edge, !llvm.loop !531

._crit_edge53:                                    ; preds = %bb.s
  %.pre75 = load i16, ptr %0, align 8, !tbaa !374 ; 2 uses
  %.pre79 = zext i16 %.pre75 to i32
  %.pre81 = add nuw nsw i32 %.pre79, 1
  %i.dd = icmp slt i32 %.pre81, %i.fd
  br i1 %i.dd, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %._crit_edge53
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.df = zext i16 %.pre75 to i64
  %i.dg = add nuw nsw i64 %i.df, 1
  br label %bb.t

bb.p:                                             ; preds = %.lr.ph52, %bb.s
  %i.dh = phi i32 [ %i.da, %.lr.ph52 ], [ %i.fd, %bb.s ] ; 2 uses
  %indvars.iv66 = phi i64 [ %i.cu, %.lr.ph52 ], [ %indvars.iv.next67, %bb.s ] ; 7 uses
  %i.di = lshr i64 %indvars.iv66, 6
  %.sext.i = and i64 %i.di, 67108863
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.sext.i
  %i.dk = and i64 %indvars.iv66, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = load i64, ptr %i.dj, align 8, !tbaa !192
  %i.dn = and i64 %i.dm, %i.dl
  %.not36 = icmp eq i64 %i.dn, 0
  br i1 %.not36, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %i.cn, align 8, !tbaa !367
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv66 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !124 ; 2 uses
  %.not23 = icmp eq i16 %i.dq, -1
  br i1 %.not23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 -1, ptr %i.dp, align 2, !tbaa !124
  %i.dr = zext i16 %i.dq to i64                   ; 3 uses
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !152
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !189
  %i.dv = shl nuw nsw i64 %indvars.iv66, 1        ; 2 uses
  %i.dw = load ptr, ptr %i.cp, align 8, !tbaa !121 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !122
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !122
  %i.ec = mul i32 %i.eb, 4256249
  %i.ed = add i32 %i.ec, %i.dy
  %i.ee = load ptr, ptr %i.cq, align 8, !tbaa !121
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dr
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !122
  %i.eh = and i32 %i.ed, %i.eg
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !122 ; 4 uses
  %.not17.i25 = icmp eq i32 %i.ek, 0
  %i.el = zext i32 %i.ek to i64
  %i.em = icmp eq i64 %indvars.iv66, %i.el
  %or.cond18.i26 = or i1 %.not17.i25, %i.em
  %.pre.i28 = load ptr, ptr %.phi.trans.insert.i27, align 8, !tbaa !189 ; 3 uses
  br i1 %or.cond18.i26, label %_ZN6NewBdd3Man10RemoveBvarEi.exit35, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.r, %.lr.ph.i29
  %i.en = phi i32 [ %i.eq, %.lr.ph.i29 ], [ %i.ek, %bb.r ]
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.pre.i28, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !122 ; 4 uses
  %.not.i30 = icmp eq i32 %i.eq, 0
  %i.er = zext i32 %i.eq to i64
  %i.es = icmp eq i64 %indvars.iv66, %i.er
  %or.cond.i31 = or i1 %.not.i30, %i.es
  br i1 %or.cond.i31, label %_ZN6NewBdd3Man10RemoveBvarEi.exit35.loopexit, label %.lr.ph.i29, !llvm.loop !529

_ZN6NewBdd3Man10RemoveBvarEi.exit35.loopexit:     ; preds = %.lr.ph.i29
  %i.et = getelementptr inbounds [4 x i8], ptr %.pre.i28, i64 %i.eo
  br label %_ZN6NewBdd3Man10RemoveBvarEi.exit35

_ZN6NewBdd3Man10RemoveBvarEi.exit35:              ; preds = %_ZN6NewBdd3Man10RemoveBvarEi.exit35.loopexit, %bb.r
  %.sroa.010.0.lcssa.i33 = phi ptr [ %i.ej, %bb.r ], [ %i.et, %_ZN6NewBdd3Man10RemoveBvarEi.exit35.loopexit ] ; 2 uses
  %.lcssa.i34 = phi i32 [ %i.ek, %bb.r ], [ %i.eq, %_ZN6NewBdd3Man10RemoveBvarEi.exit35.loopexit ]
  %i.eu = sext i32 %.lcssa.i34 to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.pre.i28, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !122
  %i.ex = load i32, ptr %i.cr, align 8, !tbaa !385
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !122
  %i.ey = load i32, ptr %.sroa.010.0.lcssa.i33, align 4, !tbaa !122
  store i32 %i.ey, ptr %i.cr, align 8, !tbaa !385
  store i32 %i.ew, ptr %.sroa.010.0.lcssa.i33, align 4, !tbaa !122
  %i.ez = load ptr, ptr %i.cs, align 8, !tbaa !127
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.dr ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !122
  %i.fc = add nsw i32 %i.fb, -1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !122
  %.pre74 = load i32, ptr %i.ab, align 4, !tbaa !382
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %_ZN6NewBdd3Man10RemoveBvarEi.exit35
  %i.fd = phi i32 [ %i.dh, %bb.p ], [ %i.dh, %bb.q ], [ %.pre74, %_ZN6NewBdd3Man10RemoveBvarEi.exit35 ] ; 4 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next67, %i.fe
  br i1 %i.ff, label %bb.p, label %._crit_edge53, !llvm.loop !532

bb.t:                                             ; preds = %.lr.ph57, %bb.v
  %i.fg = phi i32 [ %i.fd, %.lr.ph57 ], [ %i.fl, %bb.v ]
  %indvars.iv69 = phi i64 [ %i.dg, %.lr.ph57 ], [ %indvars.iv.next70, %bb.v ] ; 3 uses
  %i.fh = load ptr, ptr %i.de, align 8, !tbaa !367
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv69
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !124
  %.not22 = icmp eq i16 %i.fj, 0
  br i1 %.not22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv69.tr = trunc i64 %indvars.iv69 to i32
  %i.fk = shl i32 %indvars.iv69.tr, 1
  tail call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.fk)
  %.pre76 = load i32, ptr %i.ab, align 4, !tbaa !382
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.fl = phi i32 [ %i.fg, %bb.t ], [ %.pre76, %bb.u ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.fm = trunc nuw i64 %indvars.iv.next70 to i32
  %i.fn = icmp sgt i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.t, label %.loopexit, !llvm.loop !533

.loopexit:                                        ; preds = %bb.k, %bb.v, %bb.l, %._crit_edge, %bb.g, %._crit_edge53
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !381 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !189 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !189 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not5.i.i.i.i.i, label %_ZN6NewBdd5Cache5ClearEv.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %.loopexit
  %i.fu = ptrtoaddr ptr %i.ft to i64
  %i.fv = ptrtoaddr ptr %i.fr to i64
  %reass.sub = sub i64 %i.fu, %i.fv
  %i.fw = and i64 %reass.sub, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fr, i8 0, i64 %i.fw, i1 false), !tbaa !122
  br label %_ZN6NewBdd5Cache5ClearEv.exit

_ZN6NewBdd5Cache5ClearEv.exit:                    ; preds = %.loopexit, %.lr.ph.i.i.i.i.preheader.i
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !385
  %i.fz = icmp ne i32 %i.fy, 0
  ret i1 %i.fz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6NewBdd3Man6ResizeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !376  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !375
  %i.e = icmp ne i32 %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.b, 1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.f, i32 2147483647) ; 2 uses
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !376
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !373
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.26, i64 noundef 13) #22 ; 0 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !376
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.k) #22 ; 4 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.52, i64 noundef 6) #22 ; 0 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s) #22
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10) #22, !inline_history !52
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.w, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i) #22
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #22 ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !376
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.b
  %i.ad = phi i32 [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %spec.select, %bb.b ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = sext i32 %i.ad to i64                   ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !377 ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !367 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 1                 ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.af
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ao)
  %.pre12 = load i32, ptr %i.a, align 8, !tbaa !376
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = icmp ugt i64 %i.am, %i.af
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorItSaItEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE6resizeEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !377
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

_ZNSt6vectorItSaItEE6resizeEm.exit:               ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ar = phi i32 [ %.pre12, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = shl i32 %i.ar, 1
  %i.au = zext i32 %i.at to i64                   ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !148 ; 2 uses
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !121 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.au
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit
  %i.bd = sub nuw nsw i64 %i.au, %i.bb
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %i.bd)
  %.pre13 = load i32, ptr %i.a, align 8, !tbaa !376
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit
  %i.be = icmp ugt i64 %i.bb, %i.au
  br i1 %i.be, label %bb.n, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.aw, %i.bf
  br i1 %.not.i.i5, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.bg = phi i32 [ %.pre13, %bb.l ], [ %i.ar, %bb.m ], [ %i.ar, %bb.n ], [ %i.ar, %bb.o ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bi = sext i32 %i.bg to i64                   ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !126 ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !127 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %i.bi
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.br = sub nuw nsw i64 %i.bi, %i.bp
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.br)
  %.pre14 = load i32, ptr %i.a, align 8, !tbaa !376 ; 2 uses
  %.pre15 = sext i32 %.pre14 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.bs = icmp ugt i64 %i.bp, %i.bi
  br i1 %i.bs, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bi ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i6, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bt, ptr %i.bj, align 8, !tbaa !126
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

end_hunk_0
begin_hunk_1_@_ZN6NewBdd3Man11SetMark_recEj:bb.a
  %i.d = lshr i32 %.tr67, 1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.f = lshr i32 %.tr67, 7
  %.zext.i = zext nneg i32 %i.f to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.zext.i ; 2 uses
  %i.h = and i32 %i.d, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !192  ; 2 uses
  %i.l = and i64 %i.k, %i.j
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.b
  %i.m = or i64 %i.k, %i.j
  store i64 %i.m, ptr %i.g, align 8, !tbaa !192
  %i.n = and i32 %.tr67, -2
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !122
  %i.s = and i32 %.tr67, 1                        ; 2 uses
  %i.t = xor i32 %i.r, %i.s
  tail call void @_ZN6NewBdd3Man11SetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.t)
  %i.u = or i32 %.tr67, 1
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  %i.y = load i32, ptr %i.x, align 4, !tbaa !122  ; 2 uses
  %i.z = xor i32 %i.y, %i.s
  %i.aa = icmp ult i32 %i.y, 2
  br i1 %i.aa, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %bb.b, %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = icmp ult i32 %1, 2
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr67 = phi i32 [ %1, %.lr.ph ], [ %i.aa, %tailrecurse ] ; 5 uses
  %i.d = lshr i32 %.tr67, 1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.f = lshr i32 %.tr67, 7
  %.zext.i = zext nneg i32 %i.f to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.zext.i ; 2 uses
  %i.h = and i32 %i.d, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !192  ; 2 uses
  %i.l = and i64 %i.k, %i.j
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.b
  %i.m = xor i64 %i.j, -1
  %i.n = and i64 %i.k, %i.m
  store i64 %i.n, ptr %i.g, align 8, !tbaa !192
  %i.o = and i32 %.tr67, -2
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !122
  %i.t = and i32 %.tr67, 1                        ; 2 uses
  %i.u = xor i32 %i.s, %i.t
  tail call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.u)
  %i.v = or i32 %.tr67, 1
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !122  ; 2 uses
  %i.aa = xor i32 %i.z, %i.t
  %i.ab = icmp ult i32 %i.z, 2
  br i1 %i.ab, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %bb.b, %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6NewBdd3Man10CountEdgesEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !376
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.m)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.e, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.p = load i16, ptr %0, align 8, !tbaa !374    ; 3 uses
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.01218 = add nuw nsw i32 %i.q, 1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !382  ; 3 uses
  %i.t = icmp slt i32 %.01218, %i.s
  br i1 %i.t, label %.lr.ph, label %.preheader16

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = zext i16 %i.p to i64
  %i.w = add nuw nsw i64 %i.v, 1
  br label %bb.f

.preheader16.loopexit:                            ; preds = %bb.h
  %.pre33 = load i16, ptr %0, align 8, !tbaa !374 ; 2 uses
  %.pre36 = zext i16 %.pre33 to i32
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.loopexit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.pre-phi = phi i32 [ %.pre36, %.preheader16.loopexit ], [ %i.q, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 4 uses
  %i.x = phi i32 [ %i.ao, %.preheader16.loopexit ], [ %i.s, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ]
  %i.y = phi i16 [ %.pre33, %.preheader16.loopexit ], [ %i.p, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 2 uses
  %.not20 = icmp eq i16 %i.y, 0
  br i1 %.not20, label %.preheader16..preheader_crit_edge, label %.lr.ph22

.preheader16..preheader_crit_edge:                ; preds = %.preheader16
  %.pre37 = add nuw nsw i32 %.pre-phi, 1
  br label %.preheader

.lr.ph22:                                         ; preds = %.preheader16
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.aa = add nuw nsw i32 %.pre-phi, 1            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.ab = zext nneg i32 %.pre-phi to i64          ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph22
  %n.vec = and i64 %i.ab, 65528                   ; 3 uses
  %i.ac = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !122
  %wide.load47 = load <4 x i32>, ptr %i.af, align 4, !tbaa !122
  %i.ag = add <4 x i32> %wide.load, splat (i32 1)
  %i.ah = add <4 x i32> %wide.load47, splat (i32 1)
  store <4 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !122
  store <4 x i32> %i.ah, ptr %i.af, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  br i1 %cmp.n, label %.preheader.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph22, %middle.block
  %indvars.iv27.ph = phi i64 [ 1, %.lr.ph22 ], [ %i.ac, %middle.block ]
  br label %scalar.ph

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.aj = phi i32 [ %i.s, %.lr.ph ], [ %i.ao, %bb.h ]
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !367
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !124
  %.not15 = icmp eq i16 %i.am, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.an = shl i32 %indvars.iv.tr, 1
  tail call void @_ZN6NewBdd3Man14CountEdges_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.an)
  %.pre = load i32, ptr %i.r, align 4, !tbaa !382
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ao = phi i32 [ %i.aj, %bb.f ], [ %.pre, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv.next to i32
  %i.aq = icmp sgt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %.preheader16.loopexit, !llvm.loop !535

.preheader.loopexit:                              ; preds = %scalar.ph, %middle.block
  %.pre34 = load i32, ptr %i.r, align 4, !tbaa !382
  br label %.preheader

.preheader:                                       ; preds = %.preheader16..preheader_crit_edge, %.preheader.loopexit
  %.023.pre-phi = phi i32 [ %.pre37, %.preheader16..preheader_crit_edge ], [ %i.aa, %.preheader.loopexit ]
  %i.ar = phi i32 [ %i.x, %.preheader16..preheader_crit_edge ], [ %.pre34, %.preheader.loopexit ] ; 2 uses
  %i.as = icmp slt i32 %.023.pre-phi, %i.ar
  br i1 %i.as, label %.lr.ph25, label %._crit_edge

.lr.ph25:                                         ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = zext i16 %i.y to i64
  %i.av = add nuw nsw i64 %i.au, 1
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %scalar.ph ], [ %indvars.iv27.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv27 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !122
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !122
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %scalar.ph, !llvm.loop !536

._crit_edge:                                      ; preds = %bb.k, %.preheader
  ret void

bb.i:                                             ; preds = %.lr.ph25, %bb.k
  %i.az = phi i32 [ %i.ar, %.lr.ph25 ], [ %i.be, %bb.k ]
  %indvars.iv30 = phi i64 [ %i.av, %.lr.ph25 ], [ %indvars.iv.next31, %bb.k ] ; 3 uses
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !367
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv30
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !124
  %.not14 = icmp eq i16 %i.bc, 0
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv30.tr = trunc i64 %indvars.iv30 to i32
  %i.bd = shl i32 %indvars.iv30.tr, 1
  tail call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.bd)
  %.pre35 = load i32, ptr %i.r, align 4, !tbaa !382
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.be = phi i32 [ %i.az, %bb.i ], [ %.pre35, %bb.j ] ; 2 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.bf = trunc nuw i64 %indvars.iv.next31 to i32
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %._crit_edge, !llvm.loop !537
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6NewBdd3Man4SiftEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6NewBdd3Man10CountNodesEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
  %i.b = load i16, ptr %0, align 8, !tbaa !374    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #24 ; 13 uses
  store i16 0, ptr %i.e, align 2, !tbaa !124
  %i.f = add nsw i64 %i.c, -1                     ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !124
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %bb.b, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.pr = load i16, ptr %0, align 8, !tbaa !374    ; 9 uses
  %.not291 = icmp eq i16 %.pr, 0
  br i1 %.not291, label %._crit_edge290, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %wide.trip.count = zext i16 %.pr to i64         ; 6 uses
  %min.iters.check = icmp ult i16 %.pr, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check404 = icmp ult i16 %.pr, 16
  br i1 %min.iters.check404, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 65520        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <8 x i16> %vec.ind, ptr %i.j, align 2, !tbaa !124
  store <8 x i16> %step.add, ptr %i.k, align 2, !tbaa !124
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !538

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader201.lr.ph, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !539

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec405 = and i64 %wide.trip.count, 65532     ; 3 uses
  %i.m = trunc nuw i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.m, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index406 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next408, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind407 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next409, %vec.epilog.vector.body ] ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index406
  store <4 x i16> %vec.ind407, ptr %i.n, align 2, !tbaa !124
  %index.next408 = add nuw i64 %index406, 4       ; 2 uses
  %vec.ind.next409 = add <4 x i16> %vec.ind407, splat (i16 4)
  %i.o = icmp eq i64 %index.next408, %n.vec405
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !540

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n410 = icmp eq i64 %n.vec405, %wide.trip.count
  br i1 %cmp.n410, label %.preheader201.lr.ph, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec405, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader201.lr.ph:                              ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = zext i16 %.pr to i64                     ; 2 uses
  %i.r = add i16 %.pr, -2
  br label %.preheader201

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.t = trunc nuw i64 %indvars.iv to i16
  store i16 %i.t, ptr %i.s, align 2, !tbaa !124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader201.lr.ph, label %.lr.ph, !llvm.loop !541

.preheader201:                                    ; preds = %.preheader201.lr.ph, %._crit_edge.thread
  %indvars.iv316 = phi i64 [ 0, %.preheader201.lr.ph ], [ %indvars.iv.next317, %._crit_edge.thread ] ; 7 uses
  %indvars.iv310 = phi i64 [ 1, %.preheader201.lr.ph ], [ %indvars.iv.next311, %._crit_edge.thread ] ; 5 uses
  %i.u = trunc i64 %indvars.iv316 to i16
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 3 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next317, %i.q
  br i1 %i.v, label %.lr.ph227, label %._crit_edge.thread

.lr.ph227:                                        ; preds = %.preheader201
  %i.w = trunc i64 %indvars.iv316 to i16
  %i.x = trunc nuw i64 %indvars.iv316 to i16      ; 2 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !127  ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv316
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !124
  %.phi.trans.insert325 = zext i16 %.pre to i64
  %.phi.trans.insert326 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.phi.trans.insert325
  %.pre327 = load i32, ptr %.phi.trans.insert326, align 4, !tbaa !122 ; 3 uses
  %i.z = sub i16 %i.w, %.pr
  %i.aa = and i16 %i.z, 1
  %lcmp.mod.not.not = icmp eq i16 %i.aa, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph227
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv310
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !124
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !122 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %.pre327
  %i.ah = trunc nuw i64 %indvars.iv310 to i16
  %spec.select.prol = select i1 %i.ag, i16 %i.ah, i16 %i.x ; 2 uses
  %indvars.iv.next313.prol = add nuw nsw i64 %indvars.iv310, 1
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %.pre327)
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph227
  %spec.select.lcssa.unr = phi i16 [ poison, %.lr.ph227 ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %.pre327, %.lr.ph227 ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %indvars.iv312.unr = phi i64 [ %indvars.iv310, %.lr.ph227 ], [ %indvars.iv.next313.prol, %.prol.loopexit.unr-lcssa ]
  %.0138225.unr = phi i16 [ %i.x, %.lr.ph227 ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i16 %i.r, %i.u
  br i1 %i.aj, label %._crit_edge, label %.lr.ph227.new

.lr.ph289:                                        ; preds = %._crit_edge.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  br label %bb.d

._crit_edge:                                      ; preds = %.lr.ph227.new, %.prol.loopexit
  %spec.select.lcssa = phi i16 [ %spec.select.lcssa.unr, %.prol.loopexit ], [ %spec.select.1, %.lr.ph227.new ]
  %i.an = zext i16 %spec.select.lcssa to i64      ; 2 uses
  %.not154 = icmp eq i64 %indvars.iv316, %i.an
  br i1 %.not154, label %._crit_edge.thread, label %bb.c

.lr.ph227.new:                                    ; preds = %.prol.loopexit, %.lr.ph227.new
  %i.ao = phi i32 [ %i.be, %.lr.ph227.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv312 = phi i64 [ %indvars.iv.next313.1, %.lr.ph227.new ], [ %indvars.iv312.unr, %.prol.loopexit ] ; 4 uses
  %.0138225 = phi i16 [ %spec.select.1, %.lr.ph227.new ], [ %.0138225.unr, %.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv312
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !124
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !122 ; 2 uses
  %i.au = icmp sgt i32 %i.at, %i.ao
  %i.av = trunc nuw i64 %indvars.iv312 to i16
  %spec.select = select i1 %i.au, i16 %i.av, i16 %.0138225
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %i.ao) ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next313
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !124
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !122 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %i.aw
  %i.bd = trunc nuw i64 %indvars.iv.next313 to i16
  %spec.select.1 = select i1 %i.bc, i16 %i.bd, i16 %spec.select ; 2 uses
  %indvars.iv.next313.1 = add nuw nsw i64 %indvars.iv312, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next313.1 to i16
  %exitcond315.not.1 = icmp eq i16 %.pr, %lftr.wideiv.1
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 %i.aw)
  br i1 %exitcond315.not.1, label %._crit_edge, label %.lr.ph227.new, !llvm.loop !542

end_hunk_1
begin_hunk_2_@_ZN6NewBdd3Man14CountEdges_recEj:bb.a
  %i.y = and i32 %.tr78, 1                        ; 2 uses
  %i.z = xor i32 %i.x, %i.y
  tail call void @_ZN6NewBdd3Man14CountEdges_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.z)
  %i.aa = or i32 %.tr78, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !122 ; 2 uses
  %i.af = xor i32 %i.ae, %i.y
  %i.ag = icmp ult i32 %i.ae, 2
  br i1 %i.ag, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %tailrecurse, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN6NewBdd3Man10CountNodesEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.preheader42, label %.preheader43

.preheader43:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !382  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader43
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %i.i = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 9
  br i1 %min.iters.check, label %.lr.ph.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, -8                       ; 3 uses
  %i.j = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !122
  %wide.load93 = load <4 x i32>, ptr %i.m, align 4, !tbaa !122
  %i.n = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.o = icmp ne <4 x i32> %wide.load93, zeroinitializer
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %vec.phi, %i.p             ; 2 uses
  %i.s = add <4 x i32> %vec.phi92, %i.q           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.s, %i.r
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.02747.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.preheader42:                                     ; preds = %bb.a
  %i.v = load i16, ptr %0, align 8, !tbaa !374    ; 6 uses
  %i.w = zext i16 %i.v to i32                     ; 4 uses
  %.not3149 = icmp eq i16 %i.v, 0
  br i1 %.not3149, label %.preheader41, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93   ; 3 uses
  %i.z = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %xtraiter = and i32 %i.w, 1
  %i.aa = icmp eq i16 %i.v, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph52.new

.lr.ph52.new:                                     ; preds = %.lr.ph52
  %unroll_iter = and i32 %i.w, 65534
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader94, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader94 ] ; 2 uses
  %.02747 = phi i32 [ %spec.select, %.lr.ph ], [ %.02747.ph, %.lr.ph.preheader94 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !122
  %.not = icmp ne i32 %i.ac, 0
  %i.ad = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.02747, %i.ad   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !551

.preheader41.loopexit.unr-lcssa:                  ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader41, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader41.loopexit.unr-lcssa, %.lr.ph52
  %.02551.epil.init = phi i32 [ 1, %.lr.ph52 ], [ %i.az, %.preheader41.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod98 = trunc i16 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.ae = lshr i32 %.02551.epil.init, 6
  %.zext39.epil = and i32 %i.ae, 1023
  %.sext.i.epil = zext nneg i32 %.zext39.epil to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sext.i.epil ; 2 uses
  %i.ag = and i32 %.02551.epil.init, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !192
  %i.ak = or i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !192
  br label %.preheader41

.preheader41:                                     ; preds = %.epil.preheader, %.preheader41.loopexit.unr-lcssa, %.preheader42
  %.2.lcssa = phi i32 [ 1, %.preheader42 ], [ %i.z, %.preheader41.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !382 ; 3 uses
  %i.an = icmp slt i32 %.2.lcssa, %i.am
  br i1 %i.an, label %.lr.ph58, label %.preheader40

.lr.ph58:                                         ; preds = %.preheader41
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ap = zext i16 %i.v to i64
  %i.aq = add nuw nsw i64 %i.ap, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph52.new
  %.02551 = phi i32 [ 1, %.lr.ph52.new ], [ %i.az, %bb.b ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph52.new ], [ %niter.next.1, %bb.b ]
  %i.ar = add nuw nsw i32 %.02551, 1              ; 2 uses
  %i.as = lshr i32 %.02551, 6
  %.zext39 = and i32 %i.as, 1023
  %.sext.i = zext nneg i32 %.zext39 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sext.i ; 2 uses
  %i.au = and i32 %.02551, 63
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !192
  %i.ay = or i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.at, align 8, !tbaa !192
  %i.az = add nuw nsw i32 %.02551, 2              ; 2 uses
  %i.ba = lshr i32 %i.ar, 6
  %.zext39.1 = and i32 %i.ba, 1023
  %.sext.i.1 = zext nneg i32 %.zext39.1 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sext.i.1 ; 2 uses
  %i.bc = and i32 %i.ar, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !192
  %i.bg = or i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !192
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader41.loopexit.unr-lcssa, label %bb.b, !llvm.loop !552

.preheader40.loopexit:                            ; preds = %bb.e
  %.pre77 = load i16, ptr %0, align 8, !tbaa !374 ; 2 uses
  %.pre79 = zext i16 %.pre77 to i32
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.loopexit, %.preheader41
  %.pre-phi = phi i32 [ %.pre79, %.preheader40.loopexit ], [ %i.w, %.preheader41 ] ; 5 uses
  %i.bh = phi i32 [ %i.bt, %.preheader40.loopexit ], [ %i.am, %.preheader41 ] ; 2 uses
  %i.bi = phi i16 [ %.pre77, %.preheader40.loopexit ], [ %i.v, %.preheader41 ] ; 2 uses
  %.3.lcssa = phi i32 [ %.4, %.preheader40.loopexit ], [ %.2.lcssa, %.preheader41 ] ; 2 uses
  %.not3260 = icmp eq i16 %i.bi, 0
  br i1 %.not3260, label %.preheader, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 3 uses
  %xtraiter100 = and i32 %.pre-phi, 1
  %i.bl = icmp eq i32 %.pre-phi, 1
  br i1 %i.bl, label %.epil.preheader99, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter103 = and i32 %.pre-phi, 65534
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph58, %bb.e
  %i.bm = phi i32 [ %i.am, %.lr.ph58 ], [ %i.bt, %bb.e ]
  %indvars.iv70 = phi i64 [ %i.aq, %.lr.ph58 ], [ %indvars.iv.next71, %bb.e ] ; 3 uses
  %.356 = phi i32 [ %.2.lcssa, %.lr.ph58 ], [ %.4, %bb.e ] ; 2 uses
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !367
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv70
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !124
  %.not34 = icmp eq i16 %i.bp, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv70.tr = trunc i64 %indvars.iv70 to i32
  %i.bq = shl i32 %indvars.iv70.tr, 1
  %i.br = tail call noundef i32 @_ZN6NewBdd3Man14CountNodes_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.bq)
  %i.bs = add nsw i32 %i.br, %.356
  %.pre = load i32, ptr %i.al, align 4, !tbaa !382
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bt = phi i32 [ %.pre, %bb.d ], [ %i.bm, %bb.c ] ; 3 uses
  %.4 = phi i32 [ %i.bs, %bb.d ], [ %.356, %bb.c ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.bu = trunc nuw i64 %indvars.iv.next71 to i32
  %i.bv = icmp sgt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.c, label %.preheader40.loopexit, !llvm.loop !553

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod101.not = icmp eq i32 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.preheader, label %.epil.preheader99

.epil.preheader99:                                ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph62
  %.02361.epil.init = phi i32 [ 1, %.lr.ph62 ], [ %i.cz, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod102 = trunc i32 %.pre-phi to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.bw = lshr i32 %.02361.epil.init, 6
  %.zext.epil = and i32 %i.bw, 1023
  %.sext.i35.epil = zext nneg i32 %.zext.epil to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sext.i35.epil ; 2 uses
  %i.by = and i32 %.02361.epil.init, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = xor i64 %i.ca, -1
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !192
  %i.cd = and i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !192
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader99, %.preheader.loopexit.unr-lcssa, %.preheader40
  %.064.pre-phi = add nuw nsw i32 %.pre-phi, 1
  %i.ce = icmp slt i32 %.064.pre-phi, %i.bh
  br i1 %i.ce, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cg = zext i16 %i.bi to i64
  %i.ch = add nuw nsw i64 %i.cg, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph62.new
  %.02361 = phi i32 [ 1, %.lr.ph62.new ], [ %i.cz, %bb.f ] ; 4 uses
  %niter104 = phi i32 [ 0, %.lr.ph62.new ], [ %niter104.next.1, %bb.f ]
  %i.ci = lshr i32 %.02361, 6
  %.zext = and i32 %i.ci, 1023
  %.sext.i35 = zext nneg i32 %.zext to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sext.i35 ; 2 uses
  %i.ck = and i32 %.02361, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = load i64, ptr %i.cj, align 8, !tbaa !192
  %i.cp = and i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !192
  %i.cq = add nuw nsw i32 %.02361, 1              ; 2 uses
  %i.cr = lshr i32 %i.cq, 6
  %.zext.1 = and i32 %i.cr, 1023
  %.sext.i35.1 = zext nneg i32 %.zext.1 to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sext.i35.1 ; 2 uses
  %i.ct = and i32 %i.cq, 63
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = xor i64 %i.cv, -1
  %i.cx = load i64, ptr %i.cs, align 8, !tbaa !192
  %i.cy = and i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !192
  %i.cz = add nuw nsw i32 %.02361, 2              ; 2 uses
  %niter104.next.1 = add nuw i32 %niter104, 2     ; 2 uses
  %niter104.ncmp.1 = icmp eq i32 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !554

bb.g:                                             ; preds = %.lr.ph66, %bb.i
  %i.da = phi i32 [ %i.bh, %.lr.ph66 ], [ %i.df, %bb.i ]
  %indvars.iv74 = phi i64 [ %i.ch, %.lr.ph66 ], [ %indvars.iv.next75, %bb.i ] ; 3 uses
  %i.db = load ptr, ptr %i.cf, align 8, !tbaa !367
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv74
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !124
  %.not33 = icmp eq i16 %i.dd, 0
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv74.tr = trunc i64 %indvars.iv74 to i32
  %i.de = shl i32 %indvars.iv74.tr, 1
  tail call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %i.de)
  %.pre78 = load i32, ptr %i.al, align 4, !tbaa !382
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.df = phi i32 [ %i.da, %bb.g ], [ %.pre78, %bb.h ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv.next75 to i32
  %i.dh = icmp sgt i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.g, label %.loopexit, !llvm.loop !555

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %middle.block, %.preheader43, %.preheader
  %.028 = phi i32 [ %.3.lcssa, %.preheader ], [ %.3.lcssa, %bb.i ], [ 1, %.preheader43 ], [ %i.u, %middle.block ], [ %spec.select, %.lr.ph ]
  ret i32 %.028
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN6NewBdd3Man4SwapEt(ptr noundef nonnull align 8 dereferenceable(384) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = zext i16 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !367  ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b
  %i.e = load i16, ptr %i.d, align 2, !tbaa !124  ; 4 uses
  %i.f = zext i16 %1 to i32
  %i.g = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !124  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.l = zext i16 %i.e to i64                     ; 4 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !152
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !189  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !189  ; 2 uses
  %.not127142 = icmp eq ptr %i.o, %i.q
  br i1 %.not127142, label %.preheader.._crit_edge153_crit_edge, label %.preheader128.lr.ph

.preheader128.lr.ph:                              ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8              ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader128.lr.ph, %.outer._crit_edge
  %.094146 = phi i32 [ 0, %.preheader128.lr.ph ], [ %.1.ph.lcssa, %.outer._crit_edge ] ; 2 uses
  %.095145 = phi i32 [ 0, %.preheader128.lr.ph ], [ %.196.ph.lcssa, %.outer._crit_edge ] ; 2 uses
  %.sroa.0125.0143 = phi ptr [ %i.o, %.preheader128.lr.ph ], [ %i.eg, %.outer._crit_edge ] ; 3 uses
  %i.y = load i32, ptr %.sroa.0125.0143, align 4, !tbaa !122 ; 2 uses
  %.not102132136 = icmp eq i32 %i.y, 0
  br i1 %.not102132136, label %.outer._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.outer._crit_edge
  %.not149 = icmp eq i32 %.1.ph.lcssa, 0
  br i1 %.not149, label %.preheader.._crit_edge153_crit_edge, label %.lr.ph152

.preheader.._crit_edge153_crit_edge:              ; preds = %bb.a, %.preheader
  %.095.lcssa188 = phi i32 [ %.196.ph.lcssa, %.preheader ], [ 0, %bb.a ]
  %.pre167 = zext i16 %i.j to i64
  br label %._crit_edge153

.lr.ph152:                                        ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = zext i16 %i.j to i64                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !121
  %.pre161 = load ptr, ptr %i.aa, align 8, !tbaa !367
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.ai = phi i32 [ %i.ef, %.lr.ph ], [ %i.ax, %bb.c ] ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !122
  %.not103 = icmp eq i32 %i.al, 0
  br i1 %.not103, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !367
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aj
  store i16 -1, ptr %i.an, align 2, !tbaa !124
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aj ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !122
  %i.ar = load i32, ptr %i.v, align 8, !tbaa !385
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !122
  %i.as = load i32, ptr %.sroa.0110.0.ph137, align 4, !tbaa !122
  store i32 %i.as, ptr %i.v, align 8, !tbaa !385
  store i32 %i.aq, ptr %.sroa.0110.0.ph137, align 4, !tbaa !122
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.l ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !122
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !122
  %i.ax = load i32, ptr %.sroa.0110.0.ph137, align 4, !tbaa !122 ; 2 uses
  %.not102 = icmp eq i32 %i.ax, 0
  br i1 %.not102, label %.outer._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.ay = shl i32 %i.ai, 1                        ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !121 ; 6 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !122 ; 3 uses
  %i.bd = or disjoint i32 %i.ay, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !122 ; 4 uses
  %i.bh = lshr i32 %i.bc, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !367 ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !124
  %i.bm = icmp eq i16 %i.bl, %i.j
  br i1 %i.bm, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = lshr i32 %i.bg, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !124
  %i.br = icmp eq i16 %i.bq, %i.j
  br i1 %i.br, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bi ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !122
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !122
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bi ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !122
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !122
  %.not104 = icmp eq i32 %i.bx, 0
  br i1 %.not104, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = and i32 %i.bc, -2
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !122
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !122
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !122
  %i.ch = or i32 %i.bc, 1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !122
  %i.cl = lshr i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !122
  %i.cp = add i32 %i.co, -1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !122
  %i.cq = add nsw i32 %.196.ph138, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.297 = phi i32 [ %.196.ph138, %bb.g ], [ %i.cq, %bb.h ], [ %.196.ph138, %bb.f ] ; 2 uses
  %i.cr = lshr i32 %i.bg, 1
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !122
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !122
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.cs
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !124
  %i.cy = icmp eq i16 %i.cx, %i.j
  %.not105 = icmp eq i32 %i.cv, 0
  %or.cond = select i1 %i.cy, i1 %.not105, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cz = and i32 %i.bg, -2
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !122
  %i.dd = lshr i32 %i.dc, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !122
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !122
end_hunk_2
begin_hunk_3_@_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE9MspfCalcCEii:bb.a

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i71 = phi i8 [ %i.ct, %bb.p ], [ %i.cx, %bb.q ]
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i71) #22
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #22 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 20 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !386
  store i32 0, ptr %i.da, align 4, !tbaa !386
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 232 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !376
  %i.df = sext i32 %i.de to i64                   ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 240 ; 6 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !148 ; 4 uses
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !121 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 4 uses
  %i.dm = ashr exact i64 %i.dl, 2                 ; 7 uses
  %i.dn = icmp ult i64 %i.dm, %i.df
  br i1 %i.dn, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.do = sub nuw nsw i64 %i.df, %i.dm            ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bq, i64 248 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !150
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.dj
  %i.dt = ashr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = icmp ult i64 %i.dm, 2305843009213693952
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = xor i64 %i.dm, 2305843009213693951      ; 2 uses
  %i.dw = icmp ule i64 %i.dt, %i.dv
  tail call void @llvm.assume(i1 %i.dw)
  %.not23.i = icmp ult i64 %i.dt, %i.do
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.dh, align 4, !tbaa !122
  %i.dx = getelementptr i8, ptr %i.dh, i64 4      ; 3 uses
  %i.dy = add nsw i64 %i.do, -1                   ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.t
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dy, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dx, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !122
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.t
  %.0.i.i.i.i75 = phi ptr [ %i.ea, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dx, %bb.t ]
  store ptr %.0.i.i.i.i75, ptr %i.dg, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.u:                                             ; preds = %bb.s
  %i.eb = icmp ult i64 %i.dv, %i.do
  br i1 %i.eb, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.u
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.do)
  %i.ec = add nuw nsw i64 %.sroa.speculated.i.i, %i.dm
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951) ; 2 uses
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #24 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dl ; 3 uses
  store i32 0, ptr %i.eg, align 4, !tbaa !122
  %i.eh = add nsw i64 %i.do, -1                   ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.ej = getelementptr i8, ptr %i.eg, i64 4
  %.idx.i.i.i.i.i26.i = shl nuw nsw i64 %i.eh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ej, i8 0, i64 %.idx.i.i.i.i.i26.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.ek = icmp sgt i64 %i.dl, 0
  br i1 %i.ek, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.w:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.di, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.w, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  %.not.i29.i = icmp eq ptr %i.di, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.el = load ptr, ptr %i.dp, align 8, !tbaa !150
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.en) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.ef, ptr %i.dc, align 8, !tbaa !121
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.do
  store ptr %i.eo, ptr %i.dg, align 8, !tbaa !148
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.ep, ptr %i.dp, align 8, !tbaa !150
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.y:                                             ; preds = %bb.r
  %i.eq = icmp ugt i64 %i.dm, %i.df
  br i1 %i.eq, label %bb.z, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.dh, %i.er
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.er, ptr %i.dg, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, %bb.aa, %bb.z, %bb.y
  %i.es = load i16, ptr %i.bq, align 8, !tbaa !374 ; 3 uses
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %.01218.i = add nuw nsw i32 %i.et, 1
  %i.eu = load i32, ptr %i.cb, align 4, !tbaa !382 ; 3 uses
  %i.ev = icmp slt i32 %.01218.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i72, label %.preheader16.i

.lr.ph.i72:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bq, i64 208
  %i.ex = zext i16 %i.es to i64
  %i.ey = add nuw nsw i64 %i.ex, 1
  br label %bb.ab

.preheader16.loopexit.i:                          ; preds = %bb.ad
  %.pre33.i = load i16, ptr %i.bq, align 8, !tbaa !374 ; 2 uses
  %.pre36.i = zext i16 %.pre33.i to i32
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.preheader16.loopexit.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %.pre-phi.i = phi i32 [ %.pre36.i, %.preheader16.loopexit.i ], [ %i.et, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 4 uses
  %i.ez = phi i32 [ %i.fq, %.preheader16.loopexit.i ], [ %i.eu, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  %i.fa = phi i16 [ %.pre33.i, %.preheader16.loopexit.i ], [ %i.es, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 2 uses
  %.not20.i = icmp eq i16 %i.fa, 0
  br i1 %.not20.i, label %.preheader16..preheader_crit_edge.i, label %.lr.ph22.i

.preheader16..preheader_crit_edge.i:              ; preds = %.preheader16.i
  %.pre37.i = add nuw nsw i32 %.pre-phi.i, 1
  br label %.preheader.i

.lr.ph22.i:                                       ; preds = %.preheader16.i
  %i.fb = load ptr, ptr %i.dc, align 8, !tbaa !121 ; 2 uses
  %i.fc = add nuw nsw i32 %.pre-phi.i, 1          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.fc to i64
  %i.fd = zext nneg i32 %.pre-phi.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph22.i
  %n.vec = and i64 %i.fd, 65528                   ; 3 uses
  %i.fe = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fg, align 4, !tbaa !122
  %wide.load209 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !122
  %i.fi = add <4 x i32> %wide.load, splat (i32 1)
  %i.fj = add <4 x i32> %wide.load209, splat (i32 1)
  store <4 x i32> %i.fi, ptr %i.fg, align 4, !tbaa !122
  store <4 x i32> %i.fj, ptr %i.fh, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fd
  br i1 %cmp.n, label %.preheader.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph22.i, %middle.block
  %indvars.iv27.i.ph = phi i64 [ 1, %.lr.ph22.i ], [ %i.fe, %middle.block ]
  br label %scalar.ph

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i72
  %i.fl = phi i32 [ %i.eu, %.lr.ph.i72 ], [ %i.fq, %bb.ad ]
  %indvars.iv.i = phi i64 [ %i.ey, %.lr.ph.i72 ], [ %indvars.iv.next.i, %bb.ad ] ; 3 uses
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !367
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !124
  %.not15.i = icmp eq i16 %i.fo, 0
  br i1 %.not15.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.fp = shl i32 %indvars.iv.tr.i, 1
  tail call void @_ZN6NewBdd3Man14CountEdges_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.bq, i32 noundef %i.fp)
  %.pre.i = load i32, ptr %i.cb, align 4, !tbaa !382
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fq = phi i32 [ %i.fl, %bb.ab ], [ %.pre.i, %bb.ac ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fr = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fs = icmp sgt i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ab, label %.preheader16.loopexit.i, !llvm.loop !535

.preheader.loopexit.i:                            ; preds = %scalar.ph, %middle.block
  %.pre34.i = load i32, ptr %i.cb, align 4, !tbaa !382
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader16..preheader_crit_edge.i
  %.023.pre-phi.i = phi i32 [ %.pre37.i, %.preheader16..preheader_crit_edge.i ], [ %i.fc, %.preheader.loopexit.i ]
  %i.ft = phi i32 [ %i.ez, %.preheader16..preheader_crit_edge.i ], [ %.pre34.i, %.preheader.loopexit.i ] ; 2 uses
  %i.fu = icmp slt i32 %.023.pre-phi.i, %i.ft
  br i1 %i.fu, label %.lr.ph25.i, label %_ZN6NewBdd3Man10CountEdgesEv.exit

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bq, i64 208
  %i.fw = zext i16 %i.fa to i64
  %i.fx = add nuw nsw i64 %i.fw, 1
  br label %bb.ae

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %scalar.ph ], [ %indvars.iv27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv27.i ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !122
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !122
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.loopexit.i, label %scalar.ph, !llvm.loop !642

bb.ae:                                            ; preds = %bb.ag, %.lr.ph25.i
  %i.gb = phi i32 [ %i.ft, %.lr.ph25.i ], [ %i.gg, %bb.ag ]
  %indvars.iv30.i = phi i64 [ %i.fx, %.lr.ph25.i ], [ %indvars.iv.next31.i, %bb.ag ] ; 3 uses
  %i.gc = load ptr, ptr %i.fv, align 8, !tbaa !367
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %indvars.iv30.i
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !124
  %.not14.i = icmp eq i16 %i.ge, 0
  br i1 %.not14.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i32
  %i.gf = shl i32 %indvars.iv30.tr.i, 1
  tail call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.bq, i32 noundef %i.gf)
  %.pre35.i = load i32, ptr %i.cb, align 4, !tbaa !382
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gg = phi i32 [ %i.gb, %bb.ae ], [ %.pre35.i, %bb.af ] ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %i.gh = trunc nuw i64 %indvars.iv.next31.i to i32
  %i.gi = icmp sgt i32 %i.gg, %i.gh
  br i1 %i.gi, label %bb.ae, label %_ZN6NewBdd3Man10CountEdgesEv.exit, !llvm.loop !537

_ZN6NewBdd3Man10CountEdgesEv.exit:                ; preds = %bb.ag, %.preheader.i
  tail call void @_ZN6NewBdd3Man4SiftEv(ptr noundef nonnull align 8 dereferenceable(384) %i.bq)
  %i.gj = load ptr, ptr %i.dc, align 8, !tbaa !121 ; 2 uses
  %i.gk = load ptr, ptr %i.dg, align 8, !tbaa !148
  %.not.i.i.i67 = icmp eq ptr %i.gk, %i.gj
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6NewBdd3Man10CountEdgesEv.exit
  store ptr %i.gj, ptr %i.dg, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %bb.ah, %_ZN6NewBdd3Man10CountEdgesEv.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bq, i64 376
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !381 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !189 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !189 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.go, %i.gq
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6NewBdd3Man7ReorderEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.gr = ptrtoaddr ptr %i.gq to i64
  %i.gs = ptrtoaddr ptr %i.go to i64
  %reass.sub.i = sub i64 %i.gr, %i.gs
  %i.gt = and i64 %reass.sub.i, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.go, i8 0, i64 %i.gt, i1 false), !tbaa !122
  br label %_ZN6NewBdd3Man7ReorderEv.exit

_ZN6NewBdd3Man7ReorderEv.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %.lr.ph.i.i.i.i.preheader.i.i
  store i32 %i.db, ptr %i.da, align 4, !tbaa !386
  %i.gu = load i32, ptr %i.cb, align 4, !tbaa !382 ; 2 uses
  %.promoted.i = load i32, ptr %i.cd, align 8     ; 2 uses
  %i.gv = icmp slt i32 %.promoted.i, %i.gu
  br i1 %i.gv, label %.lr.ph.i, label %_ZN6NewBdd3Man3AndEjj.exit

.lr.ph.i:                                         ; preds = %_ZN6NewBdd3Man7ReorderEv.exit, %.lr.ph.i
  %i.gw = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %.promoted.i, %_ZN6NewBdd3Man7ReorderEv.exit ]
  %i.gx = shl i32 %i.gw, 1
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.gx, i32 2147483647) ; 3 uses
  %i.gy = icmp slt i32 %spec.store.select.i, %i.gu
  br i1 %i.gy, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !425

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  store i32 %spec.store.select.i, ptr %i.cd, align 8
  br label %_ZN6NewBdd3Man3AndEjj.exit

_ZN6NewBdd3Man3AndEjj.exit:                       ; preds = %bb.l, %_ZN6NewBdd3Man7ReorderEv.exit, %..loopexit_crit_edge.i
  %i.gz = tail call noundef i32 @_ZN6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.bq, i32 noundef %.084110, i32 noundef %i.ca) ; 5 uses
  %.not.i.i45 = icmp eq i32 %.084110, -1
  br i1 %.not.i.i45, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47, label %bb.ai

bb.ai:                                            ; preds = %_ZN6NewBdd3Man3AndEjj.exit
  %i.ha = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 208
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !123 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 216
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !123
  %i.hf = icmp eq ptr %i.hc, %i.he
  br i1 %i.hf, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = lshr i32 %.084110, 1
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.hh ; 2 uses
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !124 ; 2 uses
  %.not.i.i.i46 = icmp eq i16 %i.hj, -1
  br i1 %.not.i.i.i46, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = add i16 %i.hj, -1
  store i16 %i.hk, ptr %i.hi, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47: ; preds = %bb.ak, %bb.aj, %bb.ai, %_ZN6NewBdd3Man3AndEjj.exit
  %.not.i4.i48 = icmp eq i32 %i.gz, -1
  br i1 %.not.i4.i48, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit50, label %bb.al

bb.al:                                            ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47
  %i.hl = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 208
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !123 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 216
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !123
  %i.hq = icmp eq ptr %i.hn, %i.hp
  br i1 %i.hq, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hr = lshr i32 %i.gz, 1
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hs ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !124 ; 2 uses
  %.not.i.i5.i49 = icmp eq i16 %i.hu, -1
  br i1 %.not.i.i5.i49, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit50, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hv = add nuw i16 %i.hu, 1
  store i16 %i.hv, ptr %i.ht, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit50

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit50: ; preds = %bb.an, %bb.am, %bb.al, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47, %.lr.ph
  %.185 = phi i32 [ %.084110, %.lr.ph ], [ -1, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i47 ], [ %i.gz, %bb.al ], [ %i.gz, %bb.am ], [ %i.gz, %bb.an ] ; 2 uses
  %i.hw = add i32 %.037111, 1                     ; 2 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %i.b ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !126
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !127 ; 2 uses
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 2
  %i.ih = icmp ugt i64 %i.ig, %i.hx
  br i1 %i.ih, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !643

bb.ao:                                            ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit
  %i.ii = load ptr, ptr %0, align 8, !tbaa !120   ; 4 uses
  %i.ij = sext i32 %.036112 to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !122 ; 2 uses
  %i.im = ashr i32 %i.il, 1
  %i.in = sext i32 %i.im to i64
  %i.io = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !122
  %i.ir = and i32 %i.il, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !382
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !134
  %i.iw = icmp sgt i32 %i.it, %i.iv
  br i1 %i.iw, label %bb.ap, label %_ZN6NewBdd3Man2OrEjj.exit55

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN6NewBdd3Man7ReorderEv(ptr noundef nonnull align 8 dereferenceable(384) %i.ii)
  %i.ix = load i32, ptr %i.is, align 4, !tbaa !382 ; 2 uses
  %.promoted.i.i51 = load i32, ptr %i.iu, align 8 ; 2 uses
  %i.iy = icmp slt i32 %.promoted.i.i51, %i.ix
  br i1 %i.iy, label %.lr.ph.i.i52, label %_ZN6NewBdd3Man2OrEjj.exit55

.lr.ph.i.i52:                                     ; preds = %bb.ap, %.lr.ph.i.i52
  %i.iz = phi i32 [ %spec.store.select.i.i53, %.lr.ph.i.i52 ], [ %.promoted.i.i51, %bb.ap ]
  %i.ja = shl i32 %i.iz, 1
  %spec.store.select.i.i53 = tail call i32 @llvm.umin.i32(i32 %i.ja, i32 2147483647) ; 3 uses
  %i.jb = icmp slt i32 %spec.store.select.i.i53, %i.ix
  br i1 %i.jb, label %.lr.ph.i.i52, label %..loopexit_crit_edge.i.i54, !llvm.loop !425

..loopexit_crit_edge.i.i54:                       ; preds = %.lr.ph.i.i52
  store i32 %spec.store.select.i.i53, ptr %i.iu, align 8
  br label %_ZN6NewBdd3Man2OrEjj.exit55

_ZN6NewBdd3Man2OrEjj.exit55:                      ; preds = %bb.ao, %bb.ap, %..loopexit_crit_edge.i.i54
  %i.jc = xor i32 %i.ir, %i.iq
  %i.jd = xor i32 %i.jc, 1
  %i.je = tail call noundef i32 @_ZN6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.ii, i32 noundef %i.al, i32 noundef %i.jd)
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %_ZN6NewBdd3Man2OrEjj.exit55
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !53
  %i.ji = icmp sgt i32 %i.jh, 4
  br i1 %i.ji, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jj) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.jj, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr null, ptr %i.jk, align 8, !tbaa !169
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i8 0, ptr %i.jl, align 8, !tbaa !170
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 353
  store i8 0, ptr %i.jm, align 1, !tbaa !171
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, i8 0, i64 32, i1 false)
  %i.jo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.jo, ptr %3, align 8, !tbaa !27
  %i.jp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jo, i64 -24    ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = getelementptr inbounds i8, ptr %3, i64 %i.jr
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !27
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.jt, align 8, !tbaa !172
  %i.ju = load ptr, ptr %3, align 8, !tbaa !27
  %i.jv = getelementptr i8, ptr %i.ju, i64 -24
end_hunk_3
begin_hunk_4_@_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE18RemoveRedundantFisEiij:bb.a

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i57 = phi i8 [ %i.gb, %bb.z ], [ %i.gf, %bb.aa ]
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i57) #22
  %i.gh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gg) #22 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %bb.w
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ey, i64 20 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !386
  store i32 0, ptr %i.gi, align 4, !tbaa !386
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ey, i64 232 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !376
  %i.gn = sext i32 %i.gm to i64                   ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ey, i64 240 ; 6 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !148 ; 4 uses
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !121 ; 5 uses
  %i.gr = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64               ; 2 uses
  %i.gt = sub i64 %i.gr, %i.gs                    ; 4 uses
  %i.gu = ashr exact i64 %i.gt, 2                 ; 7 uses
  %i.gv = icmp ult i64 %i.gu, %i.gn
  br i1 %i.gv, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.gw = sub nuw nsw i64 %i.gn, %i.gu            ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ey, i64 248 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !150
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.gr
  %i.hb = ashr exact i64 %i.ha, 2                 ; 2 uses
  %i.hc = icmp ult i64 %i.gu, 2305843009213693952
  call void @llvm.assume(i1 %i.hc)
  %i.hd = xor i64 %i.gu, 2305843009213693951      ; 2 uses
  %i.he = icmp ule i64 %i.hb, %i.hd
  call void @llvm.assume(i1 %i.he)
  %.not23.i = icmp ult i64 %i.hb, %i.gw
  br i1 %.not23.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.gp, align 4, !tbaa !122
  %i.hf = getelementptr i8, ptr %i.gp, i64 4      ; 3 uses
  %i.hg = add nsw i64 %i.gw, -1                   ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ad
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.hg, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.hf, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !122
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.ad
  %.0.i.i.i.i61 = phi ptr [ %i.hi, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.hf, %bb.ad ]
  store ptr %.0.i.i.i.i61, ptr %i.go, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.hj = icmp ult i64 %i.hd, %i.gw
  br i1 %i.hj, label %bb.af, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ae
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gu, i64 %i.gw)
  %i.hk = add nuw nsw i64 %.sroa.speculated.i.i, %i.gu
  %i.hl = call i64 @llvm.umin.i64(i64 %i.hk, i64 2305843009213693951) ; 2 uses
  %i.hm = shl nuw nsw i64 %i.hl, 2
  %i.hn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #24 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gt ; 3 uses
  store i32 0, ptr %i.ho, align 4, !tbaa !122
  %i.hp = add nsw i64 %i.gw, -1                   ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.hr = getelementptr i8, ptr %i.ho, i64 4
  %.idx.i.i.i.i.i26.i = shl nuw nsw i64 %i.hp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hr, i8 0, i64 %.idx.i.i.i.i.i26.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.hs = icmp sgt i64 %i.gt, 0
  br i1 %i.hs, label %bb.ag, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.ag:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hn, ptr align 4 %i.gq, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.ag, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  %.not.i29.i = icmp eq ptr %i.gq, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ht = load ptr, ptr %i.gx, align 8, !tbaa !150
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.hv) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.hn, ptr %i.gk, align 8, !tbaa !121
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.gw
  store ptr %i.hw, ptr %i.go, align 8, !tbaa !148
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hl
  store ptr %i.hx, ptr %i.gx, align 8, !tbaa !150
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ai:                                            ; preds = %bb.ab
  %i.hy = icmp ugt i64 %i.gu, %i.gn
  br i1 %i.hy, label %bb.aj, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gn ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.gp, %i.hz
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.hz, ptr %i.go, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, %bb.ak, %bb.aj, %bb.ai
  %i.ia = load i16, ptr %i.ey, align 8, !tbaa !374 ; 3 uses
  %i.ib = zext i16 %i.ia to i32                   ; 2 uses
  %.01218.i = add nuw nsw i32 %i.ib, 1
  %i.ic = load i32, ptr %i.fj, align 4, !tbaa !382 ; 3 uses
  %i.id = icmp slt i32 %.01218.i, %i.ic
  br i1 %i.id, label %.lr.ph.i58, label %.preheader16.i

.lr.ph.i58:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ey, i64 208
  %i.if = zext i16 %i.ia to i64
  %i.ig = add nuw nsw i64 %i.if, 1
  br label %bb.al

.preheader16.loopexit.i:                          ; preds = %bb.an
  %.pre33.i = load i16, ptr %i.ey, align 8, !tbaa !374 ; 2 uses
  %.pre36.i = zext i16 %.pre33.i to i32
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.preheader16.loopexit.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %.pre-phi.i = phi i32 [ %.pre36.i, %.preheader16.loopexit.i ], [ %i.ib, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 4 uses
  %i.ih = phi i32 [ %i.iy, %.preheader16.loopexit.i ], [ %i.ic, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  %i.ii = phi i16 [ %.pre33.i, %.preheader16.loopexit.i ], [ %i.ia, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 2 uses
  %.not20.i = icmp eq i16 %i.ii, 0
  br i1 %.not20.i, label %.preheader16..preheader_crit_edge.i, label %.lr.ph22.i

.preheader16..preheader_crit_edge.i:              ; preds = %.preheader16.i
  %.pre37.i = add nuw nsw i32 %.pre-phi.i, 1
  br label %.preheader.i

.lr.ph22.i:                                       ; preds = %.preheader16.i
  %i.ij = load ptr, ptr %i.gk, align 8, !tbaa !121 ; 2 uses
  %i.ik = add nuw nsw i32 %.pre-phi.i, 1          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ik to i64
  %i.il = zext nneg i32 %.pre-phi.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph22.i
  %n.vec = and i64 %i.il, 65528                   ; 3 uses
  %i.im = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.io, align 4, !tbaa !122
  %wide.load136 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !122
  %i.iq = add <4 x i32> %wide.load, splat (i32 1)
  %i.ir = add <4 x i32> %wide.load136, splat (i32 1)
  store <4 x i32> %i.iq, ptr %i.io, align 4, !tbaa !122
  store <4 x i32> %i.ir, ptr %i.ip, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.il
  br i1 %cmp.n, label %.preheader.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph22.i, %middle.block
  %indvars.iv27.i.ph = phi i64 [ 1, %.lr.ph22.i ], [ %i.im, %middle.block ]
  br label %scalar.ph

bb.al:                                            ; preds = %bb.an, %.lr.ph.i58
  %i.it = phi i32 [ %i.ic, %.lr.ph.i58 ], [ %i.iy, %bb.an ]
  %indvars.iv.i = phi i64 [ %i.ig, %.lr.ph.i58 ], [ %indvars.iv.next.i, %bb.an ] ; 3 uses
  %i.iu = load ptr, ptr %i.ie, align 8, !tbaa !367
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.i
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !124
  %.not15.i = icmp eq i16 %i.iw, 0
  br i1 %.not15.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.ix = shl i32 %indvars.iv.tr.i, 1
  call void @_ZN6NewBdd3Man14CountEdges_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.ey, i32 noundef %i.ix)
  %.pre.i = load i32, ptr %i.fj, align 4, !tbaa !382
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iy = phi i32 [ %i.it, %bb.al ], [ %.pre.i, %bb.am ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iz = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ja = icmp sgt i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.al, label %.preheader16.loopexit.i, !llvm.loop !535

.preheader.loopexit.i:                            ; preds = %scalar.ph, %middle.block
  %.pre34.i = load i32, ptr %i.fj, align 4, !tbaa !382
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader16..preheader_crit_edge.i
  %.023.pre-phi.i = phi i32 [ %.pre37.i, %.preheader16..preheader_crit_edge.i ], [ %i.ik, %.preheader.loopexit.i ]
  %i.jb = phi i32 [ %i.ih, %.preheader16..preheader_crit_edge.i ], [ %.pre34.i, %.preheader.loopexit.i ] ; 2 uses
  %i.jc = icmp slt i32 %.023.pre-phi.i, %i.jb
  br i1 %i.jc, label %.lr.ph25.i, label %_ZN6NewBdd3Man10CountEdgesEv.exit

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ey, i64 208
  %i.je = zext i16 %i.ii to i64
  %i.jf = add nuw nsw i64 %i.je, 1
  br label %bb.ao

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %scalar.ph ], [ %indvars.iv27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv27.i ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !122
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !122
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.loopexit.i, label %scalar.ph, !llvm.loop !677

bb.ao:                                            ; preds = %bb.aq, %.lr.ph25.i
  %i.jj = phi i32 [ %i.jb, %.lr.ph25.i ], [ %i.jo, %bb.aq ]
  %indvars.iv30.i = phi i64 [ %i.jf, %.lr.ph25.i ], [ %indvars.iv.next31.i, %bb.aq ] ; 3 uses
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !367
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %indvars.iv30.i
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !124
  %.not14.i = icmp eq i16 %i.jm, 0
  br i1 %.not14.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i32
  %i.jn = shl i32 %indvars.iv30.tr.i, 1
  call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.ey, i32 noundef %i.jn)
  %.pre35.i = load i32, ptr %i.fj, align 4, !tbaa !382
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jo = phi i32 [ %i.jj, %bb.ao ], [ %.pre35.i, %bb.ap ] ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %i.jp = trunc nuw i64 %indvars.iv.next31.i to i32
  %i.jq = icmp sgt i32 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ao, label %_ZN6NewBdd3Man10CountEdgesEv.exit, !llvm.loop !537

_ZN6NewBdd3Man10CountEdgesEv.exit:                ; preds = %bb.aq, %.preheader.i
  call void @_ZN6NewBdd3Man4SiftEv(ptr noundef nonnull align 8 dereferenceable(384) %i.ey)
  %i.jr = load ptr, ptr %i.gk, align 8, !tbaa !121 ; 2 uses
  %i.js = load ptr, ptr %i.go, align 8, !tbaa !148
  %.not.i.i.i53 = icmp eq ptr %i.js, %i.jr
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN6NewBdd3Man10CountEdgesEv.exit
  store ptr %i.jr, ptr %i.go, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %bb.ar, %_ZN6NewBdd3Man10CountEdgesEv.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ey, i64 376
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !381 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !189 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !189 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.jw, %i.jy
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6NewBdd3Man7ReorderEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.jz = ptrtoaddr ptr %i.jy to i64
  %i.ka = ptrtoaddr ptr %i.jw to i64
  %reass.sub.i = sub i64 %i.jz, %i.ka
  %i.kb = and i64 %reass.sub.i, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.jw, i8 0, i64 %i.kb, i1 false), !tbaa !122
  br label %_ZN6NewBdd3Man7ReorderEv.exit

_ZN6NewBdd3Man7ReorderEv.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %.lr.ph.i.i.i.i.preheader.i.i
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !386
  %i.kc = load i32, ptr %i.fj, align 4, !tbaa !382 ; 2 uses
  %.promoted.i = load i32, ptr %i.fl, align 8     ; 2 uses
  %i.kd = icmp slt i32 %.promoted.i, %i.kc
  br i1 %i.kd, label %.lr.ph.i, label %_ZN6NewBdd3Man3AndEjj.exit

.lr.ph.i:                                         ; preds = %_ZN6NewBdd3Man7ReorderEv.exit, %.lr.ph.i
  %i.ke = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %.promoted.i, %_ZN6NewBdd3Man7ReorderEv.exit ]
  %i.kf = shl i32 %i.ke, 1
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.kf, i32 2147483647) ; 3 uses
  %i.kg = icmp slt i32 %spec.store.select.i, %i.kc
  br i1 %i.kg, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !425

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  store i32 %spec.store.select.i, ptr %i.fl, align 8
  br label %_ZN6NewBdd3Man3AndEjj.exit

_ZN6NewBdd3Man3AndEjj.exit:                       ; preds = %bb.v, %_ZN6NewBdd3Man7ReorderEv.exit, %..loopexit_crit_edge.i
  %i.kh = call noundef i32 @_ZN6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.ey, i32 noundef %.06976, i32 noundef %i.fi) ; 5 uses
  %.not.i.i46 = icmp eq i32 %.06976, -1
  br i1 %.not.i.i46, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48, label %bb.as

bb.as:                                            ; preds = %_ZN6NewBdd3Man3AndEjj.exit
  %i.ki = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 208
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !123 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 216
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !123
  %i.kn = icmp eq ptr %i.kk, %i.km
  br i1 %i.kn, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ko = lshr i32 %.06976, 1
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.kp ; 2 uses
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !124 ; 2 uses
  %.not.i.i.i47 = icmp eq i16 %i.kr, -1
  br i1 %.not.i.i.i47, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ks = add i16 %i.kr, -1
  store i16 %i.ks, ptr %i.kq, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48: ; preds = %bb.au, %bb.at, %bb.as, %_ZN6NewBdd3Man3AndEjj.exit
  %.not.i4.i49 = icmp eq i32 %i.kh, -1
  br i1 %.not.i4.i49, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit51, label %bb.av

bb.av:                                            ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48
  %i.kt = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 208
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !123 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 216
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !123
  %i.ky = icmp eq ptr %i.kv, %i.kx
  br i1 %i.ky, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit51, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kz = lshr i32 %i.kh, 1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.la ; 2 uses
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !124 ; 2 uses
  %.not.i.i5.i50 = icmp eq i16 %i.lc, -1
  br i1 %.not.i.i5.i50, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit51, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ld = add nuw i16 %i.lc, 1
  store i16 %i.ld, ptr %i.lb, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit51

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit51: ; preds = %bb.ax, %bb.aw, %bb.av, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48, %.lr.ph
  %.170 = phi i32 [ %.06976, %.lr.ph ], [ -1, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i48 ], [ %i.kh, %bb.av ], [ %i.kh, %bb.aw ], [ %i.kh, %bb.ax ] ; 2 uses
  %i.le = add i32 %.03177, 1                      ; 2 uses
  %i.lf = zext i32 %i.le to i64
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.lg, i64 %i.b ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !126
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !127 ; 2 uses
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = ashr exact i64 %i.ln, 2
  %i.lp = icmp ugt i64 %i.lo, %i.lf
  br i1 %i.lp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !678

bb.ay:                                            ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit
  %i.lq = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.lq, i64 %i.b
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !127
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.az
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !122
  %i.lv = ashr i32 %i.lu, 1                       ; 2 uses
  %i.lw = load i32, ptr %i.p, align 8, !tbaa !53
  %i.lx = icmp sgt i32 %i.lw, 4
  br i1 %i.lx, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !27
  store ptr null, ptr %i.r, align 8, !tbaa !169
  store i8 0, ptr %i.s, align 8, !tbaa !170
  store i8 0, ptr %i.t, align 1, !tbaa !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  store ptr %i.v, ptr %4, align 8, !tbaa !27
  %i.ly = load i64, ptr %i.x, align 8
  %i.lz = getelementptr inbounds i8, ptr %4, i64 %i.ly
  store ptr %i.w, ptr %i.lz, align 8, !tbaa !27
  store i64 0, ptr %i.y, align 8, !tbaa !172
  %i.ma = load ptr, ptr %4, align 8, !tbaa !27
  %i.mb = getelementptr i8, ptr %i.ma, i64 -24
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = getelementptr inbounds i8, ptr %4, i64 %i.mc
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.md, ptr noundef null) #22
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !27
  %i.me = load i64, ptr %i.ac, align 8
  %i.mf = getelementptr inbounds i8, ptr %i.z, i64 %i.me
  store ptr %i.ab, ptr %i.mf, align 8, !tbaa !27
  %i.mg = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds i8, ptr %i.z, i64 %i.mi
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mj, ptr noundef null) #22
  %i.mk = load i64, ptr %i.af, align 8
  %i.ml = getelementptr inbounds i8, ptr %4, i64 %i.mk
  store ptr %i.ae, ptr %i.ml, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.q, align 8, !tbaa !27
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.z, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !27
  store i32 24, ptr %i.aj, align 8, !tbaa !174
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !156
  store i64 0, ptr %i.am, align 8, !tbaa !158
  store i8 0, ptr %i.al, align 8, !tbaa !51
  %i.mm = load ptr, ptr %4, align 8, !tbaa !27
  %i.mn = getelementptr i8, ptr %i.mm, i64 -24
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds i8, ptr %4, i64 %i.mo
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mp, ptr noundef nonnull %i.ag) #22
  %i.mq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.100, i64 noundef 23) #22 ; 0 uses
  %i.mr = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %i.z, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store i64 5, ptr %i.mv, align 8, !tbaa !178
  %i.mw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.lv) #22 ; 2 uses
  %i.mx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef nonnull @.str.36, i64 noundef 1) #22 ; 0 uses
  %i.my = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %i.my, i64 %i.b
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !127
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.az
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !122
  %i.nd = and i32 %i.nc, 1
  %i.ne = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, i32 noundef %i.nd) #22 ; 5 uses
  %i.nf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ne, ptr noundef nonnull @.str.37, i64 noundef 1) #22 ; 0 uses
end_hunk_4
begin_hunk_5_@_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5CalcCEi:bb.a

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i57 = phi i8 [ %i.fc, %bb.p ], [ %i.fg, %bb.q ]
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i57) #22
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fh) #22 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %bb.m
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dz, i64 20 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !386
  store i32 0, ptr %i.fj, align 4, !tbaa !386
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dz, i64 232 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !376
  %i.fo = sext i32 %i.fn to i64                   ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dz, i64 240 ; 6 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !148 ; 4 uses
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !121 ; 5 uses
  %i.fs = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 4 uses
  %i.fv = ashr exact i64 %i.fu, 2                 ; 7 uses
  %i.fw = icmp ult i64 %i.fv, %i.fo
  br i1 %i.fw, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.fx = sub nuw nsw i64 %i.fo, %i.fv            ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dz, i64 248 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !150
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.ga, %i.fs
  %i.gc = ashr exact i64 %i.gb, 2                 ; 2 uses
  %i.gd = icmp ult i64 %i.fv, 2305843009213693952
  call void @llvm.assume(i1 %i.gd)
  %i.ge = xor i64 %i.fv, 2305843009213693951      ; 2 uses
  %i.gf = icmp ule i64 %i.gc, %i.ge
  call void @llvm.assume(i1 %i.gf)
  %.not23.i = icmp ult i64 %i.gc, %i.fx
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.fq, align 4, !tbaa !122
  %i.gg = getelementptr i8, ptr %i.fq, i64 4      ; 3 uses
  %i.gh = add nsw i64 %i.fx, -1                   ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.t
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.gh, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !122
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.t
  %.0.i.i.i.i61 = phi ptr [ %i.gj, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.gg, %bb.t ]
  store ptr %.0.i.i.i.i61, ptr %i.fp, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.u:                                             ; preds = %bb.s
  %i.gk = icmp ult i64 %i.ge, %i.fx
  br i1 %i.gk, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.u
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 %i.fx)
  %i.gl = add nuw nsw i64 %.sroa.speculated.i.i, %i.fv
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gl, i64 2305843009213693951) ; 2 uses
  %i.gn = shl nuw nsw i64 %i.gm, 2
  %i.go = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #24 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.fu ; 3 uses
  store i32 0, ptr %i.gp, align 4, !tbaa !122
  %i.gq = add nsw i64 %i.fx, -1                   ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.gs = getelementptr i8, ptr %i.gp, i64 4
  %.idx.i.i.i.i.i26.i = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gs, i8 0, i64 %.idx.i.i.i.i.i26.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.gt = icmp sgt i64 %i.fu, 0
  br i1 %i.gt, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.w:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.go, ptr align 4 %i.fr, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.w, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  %.not.i29.i = icmp eq ptr %i.fr, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.gu = load ptr, ptr %i.fy, align 8, !tbaa !150
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.gw) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.go, ptr %i.fl, align 8, !tbaa !121
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.fx
  store ptr %i.gx, ptr %i.fp, align 8, !tbaa !148
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gm
  store ptr %i.gy, ptr %i.fy, align 8, !tbaa !150
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.y:                                             ; preds = %bb.r
  %i.gz = icmp ugt i64 %i.fv, %i.fo
  br i1 %i.gz, label %bb.z, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fo ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.fq, %i.ha
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ha, ptr %i.fp, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, %bb.aa, %bb.z, %bb.y
  %i.hb = load i16, ptr %i.dz, align 8, !tbaa !374 ; 3 uses
  %i.hc = zext i16 %i.hb to i32                   ; 2 uses
  %.01218.i = add nuw nsw i32 %i.hc, 1
  %i.hd = load i32, ptr %i.ek, align 4, !tbaa !382 ; 3 uses
  %i.he = icmp slt i32 %.01218.i, %i.hd
  br i1 %i.he, label %.lr.ph.i58, label %.preheader16.i

.lr.ph.i58:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dz, i64 208
  %i.hg = zext i16 %i.hb to i64
  %i.hh = add nuw nsw i64 %i.hg, 1
  br label %bb.ab

.preheader16.loopexit.i:                          ; preds = %bb.ad
  %.pre33.i = load i16, ptr %i.dz, align 8, !tbaa !374 ; 2 uses
  %.pre36.i = zext i16 %.pre33.i to i32
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.preheader16.loopexit.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %.pre-phi.i = phi i32 [ %.pre36.i, %.preheader16.loopexit.i ], [ %i.hc, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 4 uses
  %i.hi = phi i32 [ %i.hz, %.preheader16.loopexit.i ], [ %i.hd, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  %i.hj = phi i16 [ %.pre33.i, %.preheader16.loopexit.i ], [ %i.hb, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 2 uses
  %.not20.i = icmp eq i16 %i.hj, 0
  br i1 %.not20.i, label %.preheader16..preheader_crit_edge.i, label %.lr.ph22.i

.preheader16..preheader_crit_edge.i:              ; preds = %.preheader16.i
  %.pre37.i = add nuw nsw i32 %.pre-phi.i, 1
  br label %.preheader.i

.lr.ph22.i:                                       ; preds = %.preheader16.i
  %i.hk = load ptr, ptr %i.fl, align 8, !tbaa !121 ; 2 uses
  %i.hl = add nuw nsw i32 %.pre-phi.i, 1          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.hl to i64
  %i.hm = zext nneg i32 %.pre-phi.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph22.i
  %n.vec = and i64 %i.hm, 65528                   ; 3 uses
  %i.hn = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.hp, align 4, !tbaa !122
  %wide.load140 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !122
  %i.hr = add <4 x i32> %wide.load, splat (i32 1)
  %i.hs = add <4 x i32> %wide.load140, splat (i32 1)
  store <4 x i32> %i.hr, ptr %i.hp, align 4, !tbaa !122
  store <4 x i32> %i.hs, ptr %i.hq, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !706

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.hm
  br i1 %cmp.n, label %.preheader.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph22.i, %middle.block
  %indvars.iv27.i.ph = phi i64 [ 1, %.lr.ph22.i ], [ %i.hn, %middle.block ]
  br label %scalar.ph

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i58
  %i.hu = phi i32 [ %i.hd, %.lr.ph.i58 ], [ %i.hz, %bb.ad ]
  %indvars.iv.i = phi i64 [ %i.hh, %.lr.ph.i58 ], [ %indvars.iv.next.i, %bb.ad ] ; 3 uses
  %i.hv = load ptr, ptr %i.hf, align 8, !tbaa !367
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %indvars.iv.i
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !124
  %.not15.i = icmp eq i16 %i.hx, 0
  br i1 %.not15.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.hy = shl i32 %indvars.iv.tr.i, 1
  call void @_ZN6NewBdd3Man14CountEdges_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.dz, i32 noundef %i.hy)
  %.pre.i = load i32, ptr %i.ek, align 4, !tbaa !382
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hz = phi i32 [ %i.hu, %bb.ab ], [ %.pre.i, %bb.ac ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ia = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ib = icmp sgt i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ab, label %.preheader16.loopexit.i, !llvm.loop !535

.preheader.loopexit.i:                            ; preds = %scalar.ph, %middle.block
  %.pre34.i = load i32, ptr %i.ek, align 4, !tbaa !382
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader16..preheader_crit_edge.i
  %.023.pre-phi.i = phi i32 [ %.pre37.i, %.preheader16..preheader_crit_edge.i ], [ %i.hl, %.preheader.loopexit.i ]
  %i.ic = phi i32 [ %i.hi, %.preheader16..preheader_crit_edge.i ], [ %.pre34.i, %.preheader.loopexit.i ] ; 2 uses
  %i.id = icmp slt i32 %.023.pre-phi.i, %i.ic
  br i1 %i.id, label %.lr.ph25.i, label %_ZN6NewBdd3Man10CountEdgesEv.exit

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dz, i64 208
  %i.if = zext i16 %i.hj to i64
  %i.ig = add nuw nsw i64 %i.if, 1
  br label %bb.ae

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %scalar.ph ], [ %indvars.iv27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv27.i ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !122
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !122
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.loopexit.i, label %scalar.ph, !llvm.loop !707

bb.ae:                                            ; preds = %bb.ag, %.lr.ph25.i
  %i.ik = phi i32 [ %i.ic, %.lr.ph25.i ], [ %i.ip, %bb.ag ]
  %indvars.iv30.i = phi i64 [ %i.ig, %.lr.ph25.i ], [ %indvars.iv.next31.i, %bb.ag ] ; 3 uses
  %i.il = load ptr, ptr %i.ie, align 8, !tbaa !367
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv30.i
  %i.in = load i16, ptr %i.im, align 2, !tbaa !124
  %.not14.i = icmp eq i16 %i.in, 0
  br i1 %.not14.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i32
  %i.io = shl i32 %indvars.iv30.tr.i, 1
  call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.dz, i32 noundef %i.io)
  %.pre35.i = load i32, ptr %i.ek, align 4, !tbaa !382
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ip = phi i32 [ %i.ik, %bb.ae ], [ %.pre35.i, %bb.af ] ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %i.iq = trunc nuw i64 %indvars.iv.next31.i to i32
  %i.ir = icmp sgt i32 %i.ip, %i.iq
  br i1 %i.ir, label %bb.ae, label %_ZN6NewBdd3Man10CountEdgesEv.exit, !llvm.loop !537

_ZN6NewBdd3Man10CountEdgesEv.exit:                ; preds = %bb.ag, %.preheader.i
  call void @_ZN6NewBdd3Man4SiftEv(ptr noundef nonnull align 8 dereferenceable(384) %i.dz)
  %i.is = load ptr, ptr %i.fl, align 8, !tbaa !121 ; 2 uses
  %i.it = load ptr, ptr %i.fp, align 8, !tbaa !148
  %.not.i.i.i53 = icmp eq ptr %i.it, %i.is
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6NewBdd3Man10CountEdgesEv.exit
  store ptr %i.is, ptr %i.fp, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %bb.ah, %_ZN6NewBdd3Man10CountEdgesEv.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dz, i64 376
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !381 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !189 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !189 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ix, %i.iz
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6NewBdd3Man7ReorderEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ja = ptrtoaddr ptr %i.iz to i64
  %i.jb = ptrtoaddr ptr %i.ix to i64
  %reass.sub.i = sub i64 %i.ja, %i.jb
  %i.jc = and i64 %reass.sub.i, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ix, i8 0, i64 %i.jc, i1 false), !tbaa !122
  br label %_ZN6NewBdd3Man7ReorderEv.exit

_ZN6NewBdd3Man7ReorderEv.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %.lr.ph.i.i.i.i.preheader.i.i
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !386
  %i.jd = load i32, ptr %i.ek, align 4, !tbaa !382 ; 2 uses
  %.promoted.i = load i32, ptr %i.em, align 8     ; 2 uses
  %i.je = icmp slt i32 %.promoted.i, %i.jd
  br i1 %i.je, label %.lr.ph.i, label %_ZN6NewBdd3Man3AndEjj.exit

.lr.ph.i:                                         ; preds = %_ZN6NewBdd3Man7ReorderEv.exit, %.lr.ph.i
  %i.jf = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %.promoted.i, %_ZN6NewBdd3Man7ReorderEv.exit ]
  %i.jg = shl i32 %i.jf, 1
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.jg, i32 2147483647) ; 3 uses
  %i.jh = icmp slt i32 %spec.store.select.i, %i.jd
  br i1 %i.jh, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !425

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  store i32 %spec.store.select.i, ptr %i.em, align 8
  br label %_ZN6NewBdd3Man3AndEjj.exit

_ZN6NewBdd3Man3AndEjj.exit:                       ; preds = %.lr.ph, %_ZN6NewBdd3Man7ReorderEv.exit, %..loopexit_crit_edge.i
  %i.ji = call noundef i32 @_ZN6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.dz, i32 noundef %.06976, i32 noundef %i.ej) ; 4 uses
  %.not.i.i39 = icmp eq i32 %.06976, -1
  br i1 %.not.i.i39, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41, label %bb.ai

bb.ai:                                            ; preds = %_ZN6NewBdd3Man3AndEjj.exit
  %i.jj = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 208
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !123 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 216
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !123
  %i.jo = icmp eq ptr %i.jl, %i.jn
  br i1 %i.jo, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jp = lshr i32 %.06976, 1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %i.jq ; 2 uses
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !124 ; 2 uses
  %.not.i.i.i40 = icmp eq i16 %i.js, -1
  br i1 %.not.i.i.i40, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jt = add i16 %i.js, -1
  store i16 %i.jt, ptr %i.jr, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41: ; preds = %bb.ak, %bb.aj, %bb.ai, %_ZN6NewBdd3Man3AndEjj.exit
  %.not.i4.i42 = icmp eq i32 %i.ji, -1
  br i1 %.not.i4.i42, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit44, label %bb.al

bb.al:                                            ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41
  %i.ju = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 208
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !123 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 216
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !123
  %i.jz = icmp eq ptr %i.jw, %i.jy
  br i1 %i.jz, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit44, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ka = lshr i32 %i.ji, 1
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.kb ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !124 ; 2 uses
  %.not.i.i5.i43 = icmp eq i16 %i.kd, -1
  br i1 %.not.i.i5.i43, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit44, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ke = add nuw i16 %i.kd, 1
  store i16 %i.ke, ptr %i.kc, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit44

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit44: ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i41, %bb.al, %bb.am, %bb.an
  %.031 = add i32 %.03177, 1                      ; 2 uses
  %i.kf = zext i32 %.031 to i64
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.b ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !126
  %i.kk = load ptr, ptr %i.kh, align 8, !tbaa !127 ; 2 uses
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = ashr exact i64 %i.kn, 2
  %i.kp = icmp ugt i64 %i.ko, %i.kf
  br i1 %i.kp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !708

bb.ao:                                            ; preds = %_ZN6NewBdd3Man2OrEjj.exit38
  %i.kq = load i32, ptr %i.l, align 8, !tbaa !53
  %i.kr = icmp sgt i32 %i.kq, 4
  br i1 %i.kr, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !27
  store ptr null, ptr %i.n, align 8, !tbaa !169
  store i8 0, ptr %i.o, align 8, !tbaa !170
  store i8 0, ptr %i.p, align 1, !tbaa !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %2, align 8, !tbaa !27
  %i.ks = load i64, ptr %i.t, align 8
  %i.kt = getelementptr inbounds i8, ptr %2, i64 %i.ks
  store ptr %i.s, ptr %i.kt, align 8, !tbaa !27
  store i64 0, ptr %i.u, align 8, !tbaa !172
  %i.ku = load ptr, ptr %2, align 8, !tbaa !27
  %i.kv = getelementptr i8, ptr %i.ku, i64 -24
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds i8, ptr %2, i64 %i.kw
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.kx, ptr noundef null) #22
  store ptr %i.w, ptr %i.v, align 8, !tbaa !27
  %i.ky = load i64, ptr %i.y, align 8
  %i.kz = getelementptr inbounds i8, ptr %i.v, i64 %i.ky
  store ptr %i.x, ptr %i.kz, align 8, !tbaa !27
  %i.la = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.lb = getelementptr i8, ptr %i.la, i64 -24
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = getelementptr inbounds i8, ptr %i.v, i64 %i.lc
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ld, ptr noundef null) #22
  %i.le = load i64, ptr %i.ab, align 8
  %i.lf = getelementptr inbounds i8, ptr %2, i64 %i.le
  store ptr %i.aa, ptr %i.lf, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !27
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.v, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !27
  store i32 24, ptr %i.af, align 8, !tbaa !174
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !156
  store i64 0, ptr %i.ai, align 8, !tbaa !158
  store i8 0, ptr %i.ah, align 8, !tbaa !51
  %i.lg = load ptr, ptr %2, align 8, !tbaa !27
  %i.lh = getelementptr i8, ptr %i.lg, i64 -24
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds i8, ptr %2, i64 %i.li
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.lj, ptr noundef nonnull %i.ac) #22
  %i.lk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.103, i64 noundef 23) #22 ; 0 uses
  %i.ll = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.lm = getelementptr i8, ptr %i.ll, i64 -24
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = getelementptr inbounds i8, ptr %i.v, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store i64 5, ptr %i.lp, align 8, !tbaa !178
  %i.lq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef %i.da) #22 ; 2 uses
  %i.lr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef nonnull @.str.36, i64 noundef 1) #22 ; 0 uses
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %i.b
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !127
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.av
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !122
  %i.lx = and i32 %i.lw, 1
  %i.ly = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, i32 noundef %i.lx) #22 ; 5 uses
  %i.lz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ly, ptr noundef nonnull @.str.37, i64 noundef 1) #22 ; 0 uses
  %i.ma = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ly, ptr noundef nonnull @.str.38, i64 noundef 4) #22 ; 0 uses
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !27
  %i.mc = getelementptr i8, ptr %i.mb, i64 -24
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = getelementptr inbounds i8, ptr %i.ly, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store i64 5, ptr %i.mf, align 8, !tbaa !178
end_hunk_5
begin_hunk_6_@_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE19TrivialDecomposeOneERKSt14_List_iteratorIiERi:bb.a
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 208
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !123 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 216
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !123
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jr = lshr i32 %.066.lcssa, 1
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.js ; 2 uses
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !124 ; 2 uses
  %.not.i.i47 = icmp eq i16 %i.ju, -1
  br i1 %.not.i.i47, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jv = add i16 %i.ju, -1
  store i16 %i.jv, ptr %i.jt, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit

.lr.ph:                                           ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6IncRefEj.exit, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53
  %i.jw = phi ptr [ %i.pm, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53 ], [ %i.ht, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6IncRefEj.exit ]
  %.071 = phi i32 [ %i.pc, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53 ], [ 0, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6IncRefEj.exit ] ; 2 uses
  %.06670 = phi i32 [ %i.of, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53 ], [ 1, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6IncRefEj.exit ] ; 3 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !120   ; 16 uses
  %i.jy = sext i32 %.071 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !122 ; 2 uses
  %i.kb = ashr i32 %i.ka, 1
  %i.kc = sext i32 %i.kb to i64
  %i.kd = load ptr, ptr %i.dy, align 8, !tbaa !121
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.kc
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !122
  %i.kg = and i32 %i.ka, 1
  %i.kh = xor i32 %i.kf, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 4 ; 6 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !382
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 24 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !134
  %i.km = icmp sgt i32 %i.kj, %i.kl
  br i1 %i.km, label %bb.ah, label %_ZN6NewBdd3Man3AndEjj.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 44
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !373
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.kq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.54, i64 noundef 7) #22 ; 0 uses
  %i.kr = load ptr, ptr @_ZSt4cout, align 8, !tbaa !27
  %i.ks = getelementptr i8, ptr %i.kr, i64 -24
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 240
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !29 ; 6 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i55, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i56

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i56: ; preds = %bb.ai
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !45
  %.not.i1.i.i.i57 = icmp eq i8 %i.ky, 0
  br i1 %.not.i1.i.i.i57, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i56
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 67
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i58

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i56
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kw) #22
  %i.lb = load ptr, ptr %i.kw, align 8, !tbaa !27
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = call noundef signext i8 %i.ld(ptr noundef nonnull align 8 dereferenceable(570) %i.kw, i8 noundef signext 10) #22, !inline_history !640
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i58

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i58: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i59 = phi i8 [ %i.la, %bb.ak ], [ %i.le, %bb.al ]
  %i.lf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i59) #22
  %i.lg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lf) #22 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i58, %bb.ah
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jx, i64 20 ; 3 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !386
  store i32 0, ptr %i.lh, align 4, !tbaa !386
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jx, i64 232 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !376
  %i.lm = sext i32 %i.ll to i64                   ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jx, i64 240 ; 4 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !148 ; 2 uses
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !121 ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = ashr exact i64 %i.ls, 2                 ; 3 uses
  %i.lu = icmp ult i64 %i.lt, %i.lm
  br i1 %i.lu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lv = sub nuw nsw i64 %i.lm, %i.lt
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lj, i64 noundef %i.lv)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.lw = icmp ugt i64 %i.lt, %i.lm
  br i1 %i.lw, label %bb.ap, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lm ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.lo, %i.lx
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.lx, ptr %i.ln, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.ly = load i16, ptr %i.jx, align 8, !tbaa !374 ; 3 uses
  %i.lz = zext i16 %i.ly to i32                   ; 2 uses
  %.01218.i = add nuw nsw i32 %i.lz, 1
  %i.ma = load i32, ptr %i.ki, align 4, !tbaa !382 ; 3 uses
  %i.mb = icmp slt i32 %.01218.i, %i.ma
  br i1 %i.mb, label %.lr.ph.i60, label %.preheader16.i

.lr.ph.i60:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jx, i64 208
  %i.md = zext i16 %i.ly to i64
  %i.me = add nuw nsw i64 %i.md, 1
  br label %bb.ar

.preheader16.loopexit.i:                          ; preds = %bb.at
  %.pre33.i = load i16, ptr %i.jx, align 8, !tbaa !374 ; 2 uses
  %.pre36.i = zext i16 %.pre33.i to i32
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.preheader16.loopexit.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %.pre-phi.i = phi i32 [ %.pre36.i, %.preheader16.loopexit.i ], [ %i.lz, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 4 uses
  %i.mf = phi i32 [ %i.mw, %.preheader16.loopexit.i ], [ %i.ma, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  %i.mg = phi i16 [ %.pre33.i, %.preheader16.loopexit.i ], [ %i.ly, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ] ; 2 uses
  %.not20.i = icmp eq i16 %i.mg, 0
  br i1 %.not20.i, label %.preheader16..preheader_crit_edge.i, label %.lr.ph22.i

.preheader16..preheader_crit_edge.i:              ; preds = %.preheader16.i
  %.pre37.i = add nuw nsw i32 %.pre-phi.i, 1
  br label %.preheader.i

.lr.ph22.i:                                       ; preds = %.preheader16.i
  %i.mh = load ptr, ptr %i.lj, align 8, !tbaa !121 ; 2 uses
  %i.mi = add nuw nsw i32 %.pre-phi.i, 1          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.mi to i64
  %i.mj = zext nneg i32 %.pre-phi.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph22.i
  %n.vec = and i64 %i.mj, 65528                   ; 3 uses
  %i.mk = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.mm, align 4, !tbaa !122
  %wide.load127 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !122
  %i.mo = add <4 x i32> %wide.load, splat (i32 1)
  %i.mp = add <4 x i32> %wide.load127, splat (i32 1)
  store <4 x i32> %i.mo, ptr %i.mm, align 4, !tbaa !122
  store <4 x i32> %i.mp, ptr %i.mn, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mq = icmp eq i64 %index.next, %n.vec
  br i1 %i.mq, label %middle.block, label %vector.body, !llvm.loop !757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mj
  br i1 %cmp.n, label %.preheader.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph22.i, %middle.block
  %indvars.iv27.i.ph = phi i64 [ 1, %.lr.ph22.i ], [ %i.mk, %middle.block ]
  br label %scalar.ph

bb.ar:                                            ; preds = %bb.at, %.lr.ph.i60
  %i.mr = phi i32 [ %i.ma, %.lr.ph.i60 ], [ %i.mw, %bb.at ]
  %indvars.iv.i = phi i64 [ %i.me, %.lr.ph.i60 ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %i.ms = load ptr, ptr %i.mc, align 8, !tbaa !367
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %indvars.iv.i
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !124
  %.not15.i = icmp eq i16 %i.mu, 0
  br i1 %.not15.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.mv = shl i32 %indvars.iv.tr.i, 1
  call void @_ZN6NewBdd3Man14CountEdges_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.jx, i32 noundef %i.mv)
  %.pre.i = load i32, ptr %i.ki, align 4, !tbaa !382
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.mw = phi i32 [ %i.mr, %bb.ar ], [ %.pre.i, %bb.as ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mx = trunc nuw i64 %indvars.iv.next.i to i32
  %i.my = icmp sgt i32 %i.mw, %i.mx
  br i1 %i.my, label %bb.ar, label %.preheader16.loopexit.i, !llvm.loop !535

.preheader.loopexit.i:                            ; preds = %scalar.ph, %middle.block
  %.pre34.i = load i32, ptr %i.ki, align 4, !tbaa !382
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader16..preheader_crit_edge.i
  %.023.pre-phi.i = phi i32 [ %.pre37.i, %.preheader16..preheader_crit_edge.i ], [ %i.mi, %.preheader.loopexit.i ]
  %i.mz = phi i32 [ %i.mf, %.preheader16..preheader_crit_edge.i ], [ %.pre34.i, %.preheader.loopexit.i ] ; 2 uses
  %i.na = icmp slt i32 %.023.pre-phi.i, %i.mz
  br i1 %i.na, label %.lr.ph25.i, label %_ZN6NewBdd3Man10CountEdgesEv.exit

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.jx, i64 208
  %i.nc = zext i16 %i.mg to i64
  %i.nd = add nuw nsw i64 %i.nc, 1
  br label %bb.au

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %scalar.ph ], [ %indvars.iv27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv27.i ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !122
  %i.ng = add i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !122
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.loopexit.i, label %scalar.ph, !llvm.loop !758

bb.au:                                            ; preds = %bb.aw, %.lr.ph25.i
  %i.nh = phi i32 [ %i.mz, %.lr.ph25.i ], [ %i.nm, %bb.aw ]
  %indvars.iv30.i = phi i64 [ %i.nd, %.lr.ph25.i ], [ %indvars.iv.next31.i, %bb.aw ] ; 3 uses
  %i.ni = load ptr, ptr %i.nb, align 8, !tbaa !367
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %indvars.iv30.i
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !124
  %.not14.i = icmp eq i16 %i.nk, 0
  br i1 %.not14.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i32
  %i.nl = shl i32 %indvars.iv30.tr.i, 1
  call void @_ZN6NewBdd3Man13ResetMark_recEj(ptr noundef nonnull align 8 dereferenceable(384) %i.jx, i32 noundef %i.nl)
  %.pre35.i = load i32, ptr %i.ki, align 4, !tbaa !382
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.nm = phi i32 [ %i.nh, %bb.au ], [ %.pre35.i, %bb.av ] ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %i.nn = trunc nuw i64 %indvars.iv.next31.i to i32
  %i.no = icmp sgt i32 %i.nm, %i.nn
  br i1 %i.no, label %bb.au, label %_ZN6NewBdd3Man10CountEdgesEv.exit, !llvm.loop !537

_ZN6NewBdd3Man10CountEdgesEv.exit:                ; preds = %bb.aw, %.preheader.i
  call void @_ZN6NewBdd3Man4SiftEv(ptr noundef nonnull align 8 dereferenceable(384) %i.jx)
  %i.np = load ptr, ptr %i.lj, align 8, !tbaa !121 ; 2 uses
  %i.nq = load ptr, ptr %i.ln, align 8, !tbaa !148
  %.not.i.i.i54 = icmp eq ptr %i.nq, %i.np
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN6NewBdd3Man10CountEdgesEv.exit
  store ptr %i.np, ptr %i.ln, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %bb.ax, %_ZN6NewBdd3Man10CountEdgesEv.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %i.jx, i64 376
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !381 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 56
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !189 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !189 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.nu, %i.nw
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6NewBdd3Man7ReorderEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.nx = ptrtoaddr ptr %i.nw to i64
  %i.ny = ptrtoaddr ptr %i.nu to i64
  %reass.sub.i = sub i64 %i.nx, %i.ny
  %i.nz = and i64 %reass.sub.i, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.nu, i8 0, i64 %i.nz, i1 false), !tbaa !122
  br label %_ZN6NewBdd3Man7ReorderEv.exit

_ZN6NewBdd3Man7ReorderEv.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %.lr.ph.i.i.i.i.preheader.i.i
  store i32 %i.li, ptr %i.lh, align 4, !tbaa !386
  %i.oa = load i32, ptr %i.ki, align 4, !tbaa !382 ; 2 uses
  %.promoted.i = load i32, ptr %i.kk, align 8     ; 2 uses
  %i.ob = icmp slt i32 %.promoted.i, %i.oa
  br i1 %i.ob, label %.lr.ph.i, label %_ZN6NewBdd3Man3AndEjj.exit

.lr.ph.i:                                         ; preds = %_ZN6NewBdd3Man7ReorderEv.exit, %.lr.ph.i
  %i.oc = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %.promoted.i, %_ZN6NewBdd3Man7ReorderEv.exit ]
  %i.od = shl i32 %i.oc, 1
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.od, i32 2147483647) ; 3 uses
  %i.oe = icmp slt i32 %spec.store.select.i, %i.oa
  br i1 %i.oe, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !425

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  store i32 %spec.store.select.i, ptr %i.kk, align 8
  br label %_ZN6NewBdd3Man3AndEjj.exit

_ZN6NewBdd3Man3AndEjj.exit:                       ; preds = %.lr.ph, %_ZN6NewBdd3Man7ReorderEv.exit, %..loopexit_crit_edge.i
  %i.of = call noundef i32 @_ZN6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.jx, i32 noundef %.06670, i32 noundef %i.kh) ; 4 uses
  %.not.i.i48 = icmp eq i32 %.06670, -1
  br i1 %.not.i.i48, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50, label %bb.ay

bb.ay:                                            ; preds = %_ZN6NewBdd3Man3AndEjj.exit
  %i.og = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 208
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !123 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 216
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !123
  %i.ol = icmp eq ptr %i.oi, %i.ok
  br i1 %i.ol, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.om = lshr i32 %.06670, 1
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.on ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !124 ; 2 uses
  %.not.i.i.i49 = icmp eq i16 %i.op, -1
  br i1 %.not.i.i.i49, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oq = add i16 %i.op, -1
  store i16 %i.oq, ptr %i.oo, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50: ; preds = %bb.ba, %bb.az, %bb.ay, %_ZN6NewBdd3Man3AndEjj.exit
  %.not.i4.i51 = icmp eq i32 %i.of, -1
  br i1 %.not.i4.i51, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53, label %bb.bb

bb.bb:                                            ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50
  %i.or = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 208
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !123 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 216
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !123
  %i.ow = icmp eq ptr %i.ot, %i.ov
  br i1 %i.ow, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ox = lshr i32 %i.of, 1
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.ot, i64 %i.oy ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !124 ; 2 uses
  %.not.i.i5.i52 = icmp eq i16 %i.pa, -1
  br i1 %.not.i.i5.i52, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pb = add nuw i16 %i.pa, 1
  store i16 %i.pb, ptr %i.oz, align 2, !tbaa !124
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit53: ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i50, %bb.bb, %bb.bc, %bb.bd
  %i.pc = add i32 %.071, 1                        ; 2 uses
  %i.pd = zext i32 %i.pc to i64
  %i.pe = load ptr, ptr %1, align 8, !tbaa !514
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !122
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = load ptr, ptr %i.dg, align 8, !tbaa !152
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.pi, i64 %i.ph ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !126
  %i.pm = load ptr, ptr %i.pj, align 8, !tbaa !127 ; 2 uses
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = ashr exact i64 %i.pp, 2
  %i.pr = icmp ugt i64 %i.pq, %i.pd
  br i1 %i.pr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !759

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit: ; preds = %bb.ag, %bb.af, %bb.ae, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit46, %bb.t, %bb.s, %bb.r, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i, %bb.m, %bb.l
  %i.ps = load ptr, ptr %1, align 8, !tbaa !514
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !122
  %i.pv = load i32, ptr %2, align 4, !tbaa !122   ; 2 uses
  %i.pw = shl i32 %i.pv, 1
  %i.px = sext i32 %i.pv to i64
  %i.py = load ptr, ptr %i.dz, align 8, !tbaa !121
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.px
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !122
  call void @_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE7ConnectEiibbj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef %i.pu, i32 noundef %i.pw, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %i.qa)
  %i.qb = load ptr, ptr %1, align 8, !tbaa !514
  %i.qc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load i32, ptr %2, align 4, !tbaa !122
  store i32 %i.qe, ptr %i.qd, align 4, !tbaa !122
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, ptr noundef %i.qb) #22
  %i.qf = load i64, ptr %i.ea, align 8, !tbaa !162
  %i.qg = add i64 %i.qf, 1
  store i64 %i.qg, ptr %i.ea, align 8, !tbaa !162
  %i.qh = load i32, ptr %2, align 4, !tbaa !122
  call void @_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5BuildEiRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef %i.qh, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.qi = load ptr, ptr %1, align 8, !tbaa !514
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !122 ; 2 uses
  %i.ql = sext i32 %i.qk to i64                   ; 2 uses
  %i.qm = load ptr, ptr %i.dg, align 8, !tbaa !152
  %i.qn = getelementptr inbounds nuw [24 x i8], ptr %i.qm, i64 %i.ql ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !126 ; 2 uses
  %i.qq = load ptr, ptr %i.qn, align 8, !tbaa !127
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = ashr exact i64 %i.qt, 2                 ; 2 uses
  %i.qv = icmp ugt i64 %i.qu, 2
  br i1 %i.qv, label %bb.l, label %._crit_edge75, !llvm.loop !760

._crit_edge75:                                    ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit, %bb.k
  %i.qw = lshr exact i64 %i.ds, 2
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = sub i32 2, %i.qx
  ret i32 %i.qy
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN12Transduction18TransductionBackupIN6NewBdd3ManEjLj4294967295EED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DelVecERSt6vectorIS4_IjSaIjEESaIS6_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !121  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DelVecERSt6vectorIjSaIjEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br label %bb.c

._crit_edge.i:                                    ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i
end_hunk_6
