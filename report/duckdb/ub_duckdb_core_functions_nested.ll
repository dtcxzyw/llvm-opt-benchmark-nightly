Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_nested?download=true
inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEfEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !363
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !364
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = add i64 %i.bk, %.073122
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !361 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !264
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !263 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !132
  %i.bx = icmp ne i64 %i.bw, 0
  %or.cond = and i1 %i.r, %i.bx
  %i.by = zext i1 %or.cond to i64
  %spec.select = add i64 %i.bl, %i.by
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.s
  %.275 = phi i64 [ %spec.select, %bb.s ], [ %.073122, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bz = add nuw i64 %.072123, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %3
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1305

bb.u:                                             ; preds = %._crit_edge
  %i.ca = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.v unwind label %bb.y       ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.cb = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.z       ; 2 uses

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !206
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cb)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.ab

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !206 ; 6 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64
  br i1 %.not135, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 9 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ac

._crit_edge133:                                   ; preds = %bb.av, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.071.lcssa = phi i64 [ %i.o, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.3, %bb.av ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.071.lcssa)
          to label %bb.aw unwind label %bb.bk

bb.y:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %.lr.ph132, %bb.av
  %.070131 = phi i64 [ 0, %.lr.ph132 ], [ %i.ha, %bb.av ] ; 4 uses
  %.071130 = phi i64 [ %i.o, %.lr.ph132 ], [ %.3, %bb.av ] ; 9 uses
  %i.cp = add i64 %.070131, %4                    ; 3 uses
  %i.cq = load ptr, ptr %9, align 8, !tbaa !189
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !190 ; 2 uses
  %.not.i111 = icmp eq ptr %i.cr, null
  br i1 %.not.i111, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit112, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.070131
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !93
  %i.cu = zext i32 %i.ct to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit112

_ZNK6duckdb15SelectionVector9get_indexEm.exit112: ; preds = %bb.ad, %bb.ac
  %i.cv = phi i64 [ %i.cu, %bb.ad ], [ %.070131, %bb.ac ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !353 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !356 ; 3 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit112
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !214 ; 2 uses
  %.not.i113 = icmp eq ptr %i.cz, null
  br i1 %.not.i113, label %bb.af, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.da = load i64, ptr %i.ck, align 8, !tbaa !215
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.da)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.af
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !214
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ae, %.noexc
  %i.db = phi ptr [ %.pre.i, %.noexc ], [ %i.cz, %bb.ae ]
  %i.dc = lshr i64 %i.cp, 6
  %i.dd = and i64 %i.cp, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = xor i64 %i.de, -1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !132
  %i.di = and i64 %i.dh, %i.df
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !132
  br label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit112
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cp ; 3 uses
  store i64 %.071130, ptr %i.dk, align 8, !tbaa !213
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !363 ; 2 uses
  %i.dn = load ptr, ptr %i.cy, align 8, !tbaa !364 ; 6 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = ashr exact i64 %i.dq, 2                 ; 5 uses
  %.not137 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not137, label %.._crit_edge128_crit_edge, label %.lr.ph127

.._crit_edge128_crit_edge:                        ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !361 ; 2 uses
  %.pre142 = load ptr, ptr %.pre, align 8, !tbaa !263
  br label %._crit_edge128

.lr.ph127:                                        ; preds = %bb.ah
  %i.ds = load i8, ptr %i.ch, align 1, !tbaa !199
  %i.dt = icmp eq i8 %i.ds, 11
  br i1 %i.dt, label %.lr.ph127.split, label %bb.ai

.lr.ph127.split:                                  ; preds = %.lr.ph127
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !206 ; 5 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !361 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !263 ; 8 uses
  %min.iters.check = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.split
  %i.dy = ptrtoaddr ptr %i.dx to i64
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = shl i64 %.071130, 2
  %i.eb = add i64 %i.ea, %i.dz
  %i.ec = sub i64 %i.dp, %i.eb
  %diff.check = icmp ugt i64 %i.ec, -16
  %i.ed = shl i64 %.071130, 3
  %i.ee = add i64 %i.ed, %i.cg
  %i.ef = sub i64 %i.dy, %i.ee
  %diff.check159 = icmp ugt i64 %i.ef, -32
  %conflict.rdx = or i1 %diff.check, %diff.check159
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, -4                      ; 4 uses
  %i.eg = add i64 %.071130, %n.vec                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.eh = add i64 %.071130, %index                ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %wide.load = load <2 x float>, ptr %i.ei, align 4, !tbaa !358
  %wide.load160 = load <2 x float>, ptr %i.ej, align 4, !tbaa !358
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.eh
  %11 = shufflevector <2 x float> %wide.load, <2 x float> %wide.load160, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %i.ek, align 4, !tbaa !358
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load161 = load <2 x i64>, ptr %i.el, align 8, !tbaa !132
  %wide.load162 = load <2 x i64>, ptr %i.em, align 8, !tbaa !132
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.eh ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x i64> %wide.load161, ptr %i.en, align 8, !tbaa !132
  store <2 x i64> %wide.load162, ptr %i.eo, align 8, !tbaa !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %._crit_edge128, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph127.split, %middle.block
  %.0125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.split ], [ %n.vec, %middle.block ] ; 5 uses
  %.1124.ph = phi i64 [ %.071130, %vector.memcheck ], [ %.071130, %.lr.ph127.split ], [ %i.eg, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0125.ph, 1
  %i.eq = and i64 %i.dq, 4
  %lcmp.mod.not = icmp eq i64 %i.eq, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.0125.ph
  %i.es = load float, ptr %i.er, align 4, !tbaa !358
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.1124.ph
  store float %i.es, ptr %i.et, align 4, !tbaa !358
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.0125.ph
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !132
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.1124.ph
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !132
  %i.ex = add i64 %.1124.ph, 1                    ; 2 uses
  %i.ey = or disjoint i64 %.0125.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.0125.unr = phi i64 [ %.0125.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.1124.unr = phi i64 [ %.1124.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %i.ez = icmp eq i64 %i.dr, %.neg
  br i1 %i.ez, label %._crit_edge128, label %scalar.ph

._crit_edge128:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.._crit_edge128_crit_edge
  %i.fa = phi ptr [ %.pre142, %.._crit_edge128_crit_edge ], [ %i.dx, %middle.block ], [ %i.dx, %scalar.ph ], [ %i.dx, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.fb = phi ptr [ %.pre, %.._crit_edge128_crit_edge ], [ %i.dw, %middle.block ], [ %i.dw, %scalar.ph ], [ %i.dw, %scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i64 [ %.071130, %.._crit_edge128_crit_edge ], [ %i.eg, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ga, %scalar.ph ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !264
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = getelementptr i8, ptr %i.fa, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !132
  %i.fl = icmp ne i64 %i.fk, 0
  %or.cond3 = and i1 %i.r, %i.fl
  br i1 %or.cond3, label %bb.ao, label %bb.au

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0125 = phi i64 [ %i.gb, %scalar.ph ], [ %.0125.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.1124 = phi i64 [ %i.ga, %scalar.ph ], [ %.1124.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.0125
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !358
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.1124
  store float %i.fn, ptr %i.fo, align 4, !tbaa !358
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.0125
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !132
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.1124
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !132
  %i.fs = add i64 %.1124, 1                       ; 2 uses
  %i.ft = add nuw i64 %.0125, 1                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !358
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.fs
  store float %i.fv, ptr %i.fw, align 4, !tbaa !358
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ft
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !132
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.fs
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !132
  %i.ga = add i64 %.1124, 2                       ; 2 uses
  %i.gb = add nuw i64 %.0125, 2                   ; 2 uses
  %exitcond140.not.1 = icmp eq i64 %i.gb, %i.dr
  br i1 %exitcond140.not.1, label %._crit_edge128, label %scalar.ph, !llvm.loop !1307

bb.ai:                                            ; preds = %.lr.ph127
  %i.gc = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 11, ptr %i.a, align 1, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.gd = load i8, ptr %i.ch, align 1, !tbaa !199
  store i8 %i.gd, ptr %i.b, align 1, !tbaa !185
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.an unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ai
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i = phi i1 [ false, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.gg = load ptr, ptr %5, align 8, !tbaa !108   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.gg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.am, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.am, label %.body

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.gc) #25
  br label %.body

bb.an:                                            ; preds = %bb.ak
  unreachable

bb.ao:                                            ; preds = %._crit_edge128
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_116OtherBucketValueERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ca, i64 noundef %.1.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.gj = load ptr, ptr %i.fc, align 8, !tbaa !361 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !264
  %i.gm = load ptr, ptr %i.gj, align 8, !tbaa !263 ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = getelementptr i8, ptr %i.gm, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !132
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.1.lcssa
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !132
  %i.gu = add i64 %.1.lcssa, 1
  br label %bb.au

bb.ar:                                            ; preds = %bb.ao
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gw, %bb.as ], [ %i.gv, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body

bb.au:                                            ; preds = %bb.aq, %._crit_edge128
  %.2 = phi i64 [ %i.gu, %bb.aq ], [ %.1.lcssa, %._crit_edge128 ] ; 2 uses
  %i.gx = load i64, ptr %i.dk, align 8, !tbaa !213
  %i.gy = sub i64 %.2, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !216
  br label %bb.av

bb.av:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.au
  %.3 = phi i64 [ %.2, %bb.au ], [ %.071130, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.ha = add nuw i64 %.070131, 1                 ; 2 uses
  %exitcond141.not = icmp eq i64 %i.ha, %3
  br i1 %exitcond141.not, label %._crit_edge133, label %bb.ac, !llvm.loop !1308
end_hunk_0
