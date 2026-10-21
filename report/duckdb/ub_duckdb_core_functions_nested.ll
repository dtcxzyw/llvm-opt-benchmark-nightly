Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_nested?download=true
inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEfEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.275.us = phi i64 [ %spec.select.us, %bb.m ], [ %.073122.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.as = add nuw i64 %.072123.us, 1              ; 2 uses
  %exitcond140.not = icmp eq i64 %i.as, %3
  br i1 %exitcond140.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1305

._crit_edge:                                      ; preds = %bb.p, %bb.n, %.preheader
  %.073.lcssa = phi i64 [ 0, %.preheader ], [ %.275.us, %bb.n ], [ %.275, %bb.p ]
  %i.at = add i64 %.073.lcssa, %i.o
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.at)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.p
  %.072123 = phi i64 [ %i.bv, %bb.p ], [ 0, %.lr.ph ] ; 2 uses
  %.073122 = phi i64 [ %.275, %bb.p ], [ 0, %.lr.ph ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.072123
  %i.av = load i32, ptr %i.au, align 4, !tbaa !93
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !353 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !356 ; 3 uses
  %.not110 = icmp eq ptr %i.az, null
  br i1 %.not110, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !363
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !364
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = add i64 %i.bg, %.073122
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !361 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !264
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !263 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !132
  %i.bt = icmp ne i64 %i.bs, 0
  %or.cond = and i1 %i.r, %i.bt
  %i.bu = zext i1 %or.cond to i64
  %spec.select = add i64 %i.bh, %i.bu
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.o
  %.275 = phi i64 [ %spec.select, %bb.o ], [ %.073122, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bv = add nuw i64 %.072123, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %3
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1305

bb.q:                                             ; preds = %._crit_edge
  %i.bw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !206
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bx)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !206 ; 6 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  br i1 %.not135, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 9 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.u

._crit_edge133:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.071.lcssa = phi i64 [ %i.o, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.3, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.071.lcssa)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.lr.ph132, %bb.am
  %.070131 = phi i64 [ 0, %.lr.ph132 ], [ %i.gr, %bb.am ] ; 4 uses
  %.071130 = phi i64 [ %i.o, %.lr.ph132 ], [ %.3, %bb.am ] ; 9 uses
  %i.ch = add i64 %.070131, %4                    ; 3 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !189
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !190 ; 2 uses
  %.not.i111 = icmp eq ptr %i.cj, null
  br i1 %.not.i111, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit112, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.070131
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !93
  %i.cm = zext i32 %i.cl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit112

_ZNK6duckdb15SelectionVector9get_indexEm.exit112: ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %i.cm, %bb.v ], [ %.070131, %bb.u ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !353 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !356 ; 3 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit112
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !214 ; 2 uses
  %.not.i113 = icmp eq ptr %i.cr, null
  br i1 %.not.i113, label %bb.x, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.x:                                             ; preds = %bb.w
  %i.cs = load i64, ptr %i.cg, align 8, !tbaa !215
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.cs)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.x
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !214
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.w, %.noexc
  %i.ct = phi ptr [ %.pre.i, %.noexc ], [ %i.cr, %bb.w ]
  %i.cu = lshr i64 %i.ch, 6
  %i.cv = and i64 %i.ch, 63
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = xor i64 %i.cw, -1
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !132
  %i.da = and i64 %i.cz, %i.cx
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !132
  br label %bb.am

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit112
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ch ; 3 uses
  store i64 %.071130, ptr %i.db, align 8, !tbaa !213
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !363 ; 2 uses
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !364 ; 6 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = ashr exact i64 %i.dh, 2                 ; 5 uses
  %.not137 = icmp eq ptr %i.dd, %i.de
  br i1 %.not137, label %.._crit_edge128_crit_edge, label %.lr.ph127

.._crit_edge128_crit_edge:                        ; preds = %bb.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !361 ; 2 uses
  %.pre143 = load ptr, ptr %.pre, align 8, !tbaa !263
  br label %._crit_edge128

.lr.ph127:                                        ; preds = %bb.y
  %i.dj = load i8, ptr %i.cd, align 1, !tbaa !199
  %i.dk = icmp eq i8 %i.dj, 11
  br i1 %i.dk, label %.lr.ph127.split, label %bb.z

.lr.ph127.split:                                  ; preds = %.lr.ph127
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !206 ; 5 uses
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !361 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !263 ; 8 uses
  %min.iters.check = icmp ult i64 %i.di, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.split
  %i.dp = ptrtoaddr ptr %i.do to i64
  %i.dq = ptrtoaddr ptr %i.dm to i64
  %i.dr = shl i64 %.071130, 2
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = sub i64 %i.dg, %i.ds
  %diff.check = icmp ugt i64 %i.dt, -16
  %i.du = shl i64 %.071130, 3
  %i.dv = add i64 %i.du, %i.cc
  %i.dw = sub i64 %i.dp, %i.dv
  %diff.check160 = icmp ugt i64 %i.dw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check160
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, -4                      ; 4 uses
  %i.dx = add i64 %.071130, %n.vec                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dy = add i64 %.071130, %index                ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %wide.load = load <2 x float>, ptr %i.dz, align 4, !tbaa !358
  %wide.load161 = load <2 x float>, ptr %i.ea, align 4, !tbaa !358
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dy ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <2 x float> %wide.load, ptr %i.eb, align 4, !tbaa !358
  store <2 x float> %wide.load161, ptr %11, align 4, !tbaa !358
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load162 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !132
  %wide.load163 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !132
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dy ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %wide.load162, ptr %i.ee, align 8, !tbaa !132
  store <2 x i64> %wide.load163, ptr %i.ef, align 8, !tbaa !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %._crit_edge128, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph127.split, %middle.block
  %.0125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.split ], [ %n.vec, %middle.block ] ; 5 uses
  %.1124.ph = phi i64 [ %.071130, %vector.memcheck ], [ %.071130, %.lr.ph127.split ], [ %i.dx, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0125.ph, 1
  %i.eh = and i64 %i.dh, 4
  %lcmp.mod.not = icmp eq i64 %i.eh, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0125.ph
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !358
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.1124.ph
  store float %i.ej, ptr %i.ek, align 4, !tbaa !358
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0125.ph
  %i.em = load i64, ptr %i.el, align 8, !tbaa !132
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.1124.ph
  store i64 %i.em, ptr %i.en, align 8, !tbaa !132
  %i.eo = add i64 %.1124.ph, 1                    ; 2 uses
  %i.ep = or disjoint i64 %.0125.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.eo, %scalar.ph.prol ]
  %.0125.unr = phi i64 [ %.0125.ph, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %.1124.unr = phi i64 [ %.1124.ph, %scalar.ph.preheader ], [ %i.eo, %scalar.ph.prol ]
  %i.eq = icmp eq i64 %i.di, %.neg
  br i1 %i.eq, label %._crit_edge128, label %scalar.ph

._crit_edge128:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.._crit_edge128_crit_edge
  %i.er = phi ptr [ %.pre143, %.._crit_edge128_crit_edge ], [ %i.do, %middle.block ], [ %i.do, %scalar.ph ], [ %i.do, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.es = phi ptr [ %.pre, %.._crit_edge128_crit_edge ], [ %i.dn, %middle.block ], [ %i.dn, %scalar.ph ], [ %i.dn, %scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i64 [ %.071130, %.._crit_edge128_crit_edge ], [ %i.dx, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.fr, %scalar.ph ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !264
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.er to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = getelementptr i8, ptr %i.er, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !132
  %i.fc = icmp ne i64 %i.fb, 0
  %or.cond3 = and i1 %i.r, %i.fc
  br i1 %or.cond3, label %bb.af, label %bb.al

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0125 = phi i64 [ %i.fs, %scalar.ph ], [ %.0125.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.1124 = phi i64 [ %i.fr, %scalar.ph ], [ %.1124.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0125
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !358
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.1124
  store float %i.fe, ptr %i.ff, align 4, !tbaa !358
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0125
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !132
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.1124
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !132
  %i.fj = add i64 %.1124, 1                       ; 2 uses
  %i.fk = add nuw i64 %.0125, 1                   ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !358
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fj
  store float %i.fm, ptr %i.fn, align 4, !tbaa !358
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.fk
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !132
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.fj
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !132
  %i.fr = add i64 %.1124, 2                       ; 2 uses
  %i.fs = add nuw i64 %.0125, 2                   ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %i.fs, %i.di
  br i1 %exitcond141.not.1, label %._crit_edge128, label %scalar.ph, !llvm.loop !1307

bb.z:                                             ; preds = %.lr.ph127
  %i.ft = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 11, ptr %i.a, align 1, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fu = load i8, ptr %i.cd, align 1, !tbaa !199
  store i8 %i.fu, ptr %i.b, align 1, !tbaa !185
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ae unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.z
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.fx = load ptr, ptr %5, align 8, !tbaa !108   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.fx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.ad, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.ad, label %.body

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ft) #25
  br label %.body

bb.ae:                                            ; preds = %bb.ab
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.t, %bb.s, %bb.i, %bb.an, %._crit_edge133, %._crit_edge, %bb.l, %bb.k, %bb.j, %bb.a, %bb.q, %bb.r
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %._crit_edge128
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_116OtherBucketValueERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.bw, i64 noundef %.1.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ga = load ptr, ptr %i.et, align 8, !tbaa !361 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !264
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !263 ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = getelementptr i8, ptr %i.gd, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !132
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.1.lcssa
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !132
  %i.gl = add i64 %.1.lcssa, 1
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %i.gm, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body

bb.al:                                            ; preds = %bb.ah, %._crit_edge128
  %.2 = phi i64 [ %i.gl, %bb.ah ], [ %.1.lcssa, %._crit_edge128 ] ; 2 uses
  %i.go = load i64, ptr %i.db, align 8, !tbaa !213
  %i.gp = sub i64 %.2, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !216
  br label %bb.am

end_hunk_0
