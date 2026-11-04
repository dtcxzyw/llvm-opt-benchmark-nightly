Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3tev11ImageCanvas18getValuesAtNanoPosEN7nanogui5ArrayIiLm2EEERNSt3__16vectorIfNS4_9allocatorIfEEEENS4_4spanINS4_17basic_string_viewIcNS4_11char_traitsIcEEEELm18446744073709551615EEE:bb.a
bb.h:                                             ; preds = %.split, %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn96 = phi { ptr, i32 } [ %.pn97, %bb.g ], [ %i.an, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.an, %.split ]
  resume { ptr, i32 } %.pn96

bb.i:                                             ; preds = %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  br i1 %i.g, label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !204 ; 2 uses
  %.not.i54 = icmp sgt i32 %i.av, %.sroa.0.0.extract.trunc.i
  %or.cond.not8.i = and i1 %i.h, %.not.i54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.ax = load i32, ptr %i.aw, align 4
  %.not2.i = icmp sgt i32 %i.ax, %.sroa.4.0.extract.trunc.i
  %or.cond6.i = select i1 %or.cond.not8.i, i1 %.not2.i, i1 false
  br i1 %or.cond6.i, label %bb.k, label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = mul nuw nsw i64 %.sroa.4.0.extract.shift.i, %i.ay
  %i.ba = add nuw nsw i64 %i.az, %i.i
  %i.bb = tail call noundef float @_ZNK3tev7Channel9dynamicAtEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 noundef %i.ba)
  br label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit

_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi float [ %i.bb, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !231 ; 4 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !248 ; 2 uses
  %i.be = icmp ult ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit
  store float %.0.i, ptr %i.bc, align 4, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit

bb.m:                                             ; preds = %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit
  %i.bg = load ptr, ptr %2, align 8, !tbaa !232
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = add nsw i64 %i.bk, 1                    ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 4611686018427387903
  br i1 %i.bm, label %bb.n, label %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ne180100Em.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #50
  unreachable

_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.bd to i64
  %i.bo = sub i64 %i.bn, %i.bi                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.bo, 9223372036854775804
  %i.bp = ashr exact i64 %i.bo, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bl)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.bq = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.br, label %bb.o, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.i

bb.o:                                             ; preds = %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #50
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ne180100Em.exit.i.i
  %i.bs = shl nuw i64 %.0.i.i.i, 2
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #48 ; 3 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj ; 7 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.0.i.i.i
  store float %.0.i, ptr %i.bv, align 4, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 3 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !231 ; 6 uses
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !232   ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.i
  %i.cb = ptrtoaddr ptr %i.ca to i64
  %i.cc = add i64 %i.bz, -4
  %i.cd = sub i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader153, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.cg = add i64 %i.bz, %i.bi
  %i.ch = add i64 %i.bu, %i.bh
  %i.ci = sub i64 %i.ch, %i.cg
  %diff.check = icmp ugt i64 %i.ci, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader153, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cf, 9223372036854775800     ; 3 uses
  %i.cj = mul i64 %n.vec, -4                      ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bv, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.by, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cm ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.by, i64 %i.cm ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %next.gep149, i64 -16
  %i.co = getelementptr inbounds i8, ptr %next.gep149, i64 -32
  %wide.load = load <4 x float>, ptr %i.cn, align 4, !tbaa !76, !noalias !812
  %wide.load150 = load <4 x float>, ptr %i.co, align 4, !tbaa !76, !noalias !812
  %i.cp = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x float> %wide.load, ptr %i.cp, align 4, !tbaa !76, !noalias !812
  store <4 x float> %wide.load150, ptr %i.cq, align 4, !tbaa !76, !noalias !812
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader153

.lr.ph.i.i.i.i.i.i.i.i.i.preheader153:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader153, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cs = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader153 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader153 ]
  %i.ct = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !76, !noalias !812
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -4 ; 3 uses
  store float %i.cu, ptr %i.cv, align 4, !tbaa !76, !noalias !812
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.ca
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !808

_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.i ], [ %i.ck, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %2, align 8, !tbaa !248
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !248
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !248
  store ptr %i.bw, ptr %i.j, align 8, !tbaa !248
  %.not.i5.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.ca to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cz) #49
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit: ; preds = %bb.l, %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i, %bb.p
  %.0.i55 = phi ptr [ %i.bf, %bb.l ], [ %i.bx, %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.bx, %bb.p ]
  store ptr %.0.i55, ptr %i.a, align 8, !tbaa !231
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.086.0105, i64 16 ; 2 uses
  %.not100 = icmp eq ptr %i.da, %i.f
  br i1 %.not100, label %._crit_edge, label %bb.c

bb.q:                                             ; preds = %._crit_edge
  %i.db = tail call i64 @_ZN3tev11ImageCanvas14getImageCoordsEPKNS_5ImageEN7nanogui5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.l, i64 %1) ; 6 uses
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.dd = load ptr, ptr %2, align 8, !tbaa !232
  %.not109 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not109, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.q
  %i.de = and i64 %i.db, -9223372034707292160
  %or.cond.i = icmp eq i64 %i.de, 0
  %.sroa.38.0.extract.shift.i = lshr i64 %i.db, 32 ; 2 uses
  %.sroa.06.0.extract.trunc.i = trunc i64 %i.db to i32 ; 2 uses
  %.sroa.38.0.extract.trunc.i = trunc nuw i64 %.sroa.38.0.extract.shift.i to i32
  %i.df = icmp slt i32 %.sroa.06.0.extract.trunc.i, 0
  %i.dg = icmp sgt i64 %i.db, -1
  %i.dh = and i64 %i.db, 2147483647
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dj = bitcast i64 %i.db to <2 x i32>
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph108, %_ZN3tev11applyMetricEffNS_7EMetricE.exit
  %.045106 = phi i64 [ 0, %.lr.ph108 ], [ %i.fo, %_ZN3tev11applyMetricEffNS_7EMetricE.exit ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.045106 ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.dk, align 8, !tbaa !218
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !216
  %i.dl = tail call noundef zeroext i1 @_ZN3tev7Channel7isAlphaENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload) ; 2 uses
  %or.cond = select i1 %i.dl, i1 %or.cond.i, i1 false
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !207 ; 4 uses
  br i1 %or.cond, label %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit, label %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread

_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit: ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre, i64 360
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 368
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !204
  %i.dp = load <2 x i32>, ptr %i.dm, align 4, !tbaa !204
  %i.dq = sub nsw <2 x i32> %i.do, %i.dp
  %i.dr = icmp sgt <2 x i32> %i.dq, %i.dj         ; 2 uses
  %7 = extractelement <2 x i1> %i.dr, i64 0
  %8 = extractelement <2 x i1> %i.dr, i64 1
  %spec.select.i = select i1 %7, i1 %8, i1 false
  %cond.fr = freeze i1 %spec.select.i
  br i1 %cond.fr, label %bb.s, label %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread

bb.s:                                             ; preds = %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit
  br label %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread

_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread: ; preds = %bb.s, %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit, %bb.r
  %i.ds = phi float [ 0.000000e+00, %bb.r ], [ 1.000000e+00, %bb.s ], [ 0.000000e+00, %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit ] ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.dk, align 8, !tbaa !218
  %.sroa.2.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !216 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !253 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !254 ; 3 uses
  %.not10.i.i.i.i.i56 = icmp eq ptr %i.du, %i.dw
  br i1 %.not10.i.i.i.i.i56, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit67, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60
  %.011.i.i.i.i.i58 = phi ptr [ %i.ej, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60 ], [ %i.du, %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread ] ; 6 uses
  %i.dx = load i8, ptr %.011.i.i.i.i.i58, align 8 ; 2 uses
  %i.dy = trunc i8 %i.dx to i1                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i58, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = lshr i8 %i.dx, 1
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = select i1 %i.dy, i64 %i.ea, i64 %i.ec
  %.not.i.i.i.i.i.i59 = icmp eq i64 %i.ed, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i.i.i59, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i65, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i65: ; preds = %.lr.ph.i.i.i.i.i57
  %i.ee = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i58, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i58, i64 1
  %i.eh = select i1 %i.dy, ptr %i.ef, ptr %i.eg
  %bcmp.i.i.i.i.i.i66 = tail call i32 @bcmp(ptr %i.eh, ptr %.sroa.02.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ei = icmp eq i32 %bcmp.i.i.i.i.i.i66, 0
  br i1 %i.ei, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit67, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i65, %.lr.ph.i.i.i.i.i57
  %i.ej = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i58, i64 72 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.ej, %i.dw
  br i1 %.not.i.i.i.i.i61, label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76, label %.lr.ph.i.i.i.i.i57, !llvm.loop !796

_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit67: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i65, %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.du, %_ZNK3tev5Image8containsEN7nanogui5ArrayIiLm2EEE.exit.thread ], [ %.011.i.i.i.i.i58, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i65 ] ; 2 uses
  %i.ek = ptrtoint ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.el = ptrtoint ptr %i.du to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.du, i64 %i.em ; 3 uses
  %.not.i.i63 = icmp eq ptr %.0.lcssa.i.i.i.i.i62, %i.dw
  %.not102 = icmp eq ptr %i.du, null
  %.not = or i1 %.not102, %.not.i.i63             ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %i.df
  %.mux = select i1 %.not, float %i.ds, float 0.000000e+00
  br i1 %brmerge, label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76, label %bb.t

bb.t:                                             ; preds = %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !204 ; 2 uses
  %.not.i71 = icmp sgt i32 %i.ep, %.sroa.06.0.extract.trunc.i
  %or.cond.not8.i72 = and i1 %i.dg, %.not.i71
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 28
  %i.er = load i32, ptr %i.eq, align 4
  %.not2.i73 = icmp sgt i32 %i.er, %.sroa.38.0.extract.trunc.i
  %or.cond6.i74 = select i1 %or.cond.not8.i72, i1 %.not2.i73, i1 false
  br i1 %or.cond6.i74, label %bb.u, label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76

bb.u:                                             ; preds = %bb.t
  %i.es = zext nneg i32 %i.ep to i64
  %i.et = mul nuw nsw i64 %.sroa.38.0.extract.shift.i, %i.es
  %i.eu = add nuw nsw i64 %i.et, %i.dh
  %i.ev = tail call noundef float @_ZNK3tev7Channel9dynamicAtEm(ptr noundef nonnull align 8 dereferenceable(72) %i.en, i64 noundef %i.eu)
  br label %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76

_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60, %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit67, %bb.u, %bb.t
  %i.ew = phi float [ %.mux, %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit67 ], [ %i.ev, %bb.u ], [ 0.000000e+00, %bb.t ], [ %i.ds, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i60 ] ; 5 uses
  %i.ex = load ptr, ptr %2, align 8, !tbaa !232   ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.045106
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !76 ; 2 uses
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76
  %i.fa = fadd float %i.ew, %i.ez
  %i.fb = fmul float %i.fa, 5.000000e-01
  br label %_ZN3tev11applyMetricEffNS_7EMetricE.exit

bb.w:                                             ; preds = %_ZNK3tev7Channel10evalOrZeroEN7nanogui5ArrayIiLm2EEE.exit76
  %i.fc = load i32, ptr %i.di, align 8, !tbaa !212
  %i.fd = fsub float %i.ez, %i.ew                 ; 7 uses
  switch i32 %i.fc, label %_ZN3tev11applyMetricEffNS_7EMetricE.exit [
    i32 4, label %bb.aa
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.fe = tail call noundef float @llvm.fabs.f32(float %i.fd)
  br label %_ZN3tev11applyMetricEffNS_7EMetricE.exit

bb.y:                                             ; preds = %bb.w
  %i.ff = fmul float %i.fd, %i.fd
  br label %_ZN3tev11applyMetricEffNS_7EMetricE.exit

bb.z:                                             ; preds = %bb.w
  %i.fg = tail call noundef float @llvm.fabs.f32(float %i.fd)
  %i.fh = fadd float %i.ew, f0x3C23D70A
  %i.fi = fdiv float %i.fg, %i.fh
  br label %_ZN3tev11applyMetricEffNS_7EMetricE.exit

bb.aa:                                            ; preds = %bb.w
  %i.fj = fmul float %i.fd, %i.fd
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float f0x3C23D70A)
  %i.fl = fdiv float %i.fj, %i.fk
  br label %_ZN3tev11applyMetricEffNS_7EMetricE.exit

_ZN3tev11applyMetricEffNS_7EMetricE.exit:         ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fm = phi float [ %i.fb, %bb.v ], [ %i.fi, %bb.z ], [ %i.fl, %bb.aa ], [ %i.fe, %bb.x ], [ %i.ff, %bb.y ], [ %i.fd, %bb.w ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.045106
  store float %i.fm, ptr %i.fn, align 4, !tbaa !76
  %i.fo = add nuw i64 %.045106, 1                 ; 2 uses
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.ex to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 2
  %i.fu = icmp ult i64 %i.fo, %i.ft
  br i1 %i.fu, label %bb.r, label %.loopexit, !llvm.loop !809

.loopexit:                                        ; preds = %_ZN3tev11applyMetricEffNS_7EMetricE.exit, %bb.q, %._crit_edge, %bb.a
  ret void

bb.ab:                                            ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas25applyInspectionParametersERNSt3__16vectorIfNS1_9allocatorIfEEEEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.nanogui::Matrix", align 4  ; 9 uses
  %4 = alloca %"struct.std::__1::array", align 4  ; 4 uses
  %5 = alloca %"struct.nanogui::Array.13", align 8 ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !232    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.neg = sext i1 %2 to i64
  %i.j = add nsw i64 %i.i, %.neg                  ; 3 uses
  %.not = xor i1 %2, true
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 498
  %i.l = load i8, ptr %i.k, align 2, !range !198
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.o = load float, ptr %i.n, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.q = fcmp oeq float %i.p, 0.000000e+00
  %i.r = fdiv float 1.000000e+00, %i.p
  %i.s = select i1 %i.q, float 0.000000e+00, float %i.r ; 4 uses
  %i.t = icmp ugt i64 %i.j, 2
  br i1 %i.t, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not43 = icmp eq i64 %i.j, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 496
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 497
  %i.x = load i8, ptr %i.w, align 1, !tbaa !179, !range !198, !noundef !199
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = select i1 %i.y, i32 1, i32 3
  call void @_ZN3tev23convertColorspaceMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEES7_NS_16ERenderingIntentENS0_8optionalIS4_EE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i32 noundef %i.z, i64 0, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.aa = load ptr, ptr %1, align 8, !tbaa !232   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !178
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
end_hunk_0
