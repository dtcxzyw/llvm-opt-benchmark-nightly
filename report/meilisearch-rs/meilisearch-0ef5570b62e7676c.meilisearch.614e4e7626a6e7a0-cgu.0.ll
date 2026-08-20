inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E":bb.a
    i8 5, label %_ZN6brotli3enc12ir_interpret9push_base17h7bfbf4f752a3ef6fE.exit
    i8 6, label %_ZN6brotli3enc12ir_interpret9push_base17h7bfbf4f752a3ef6fE.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !589, !noalias !586, !noundef !27
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !592, !noalias !589, !noundef !27
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !592, !noalias !589
  br label %_ZN6brotli3enc12ir_interpret9push_base17h7bfbf4f752a3ef6fE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = load i8, ptr %i.j, align 2, !alias.scope !589, !noalias !586, !noundef !27
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !595, !noalias !589, !noundef !27
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !595, !noalias !589
  br label %_ZN6brotli3enc12ir_interpret9push_base17h7bfbf4f752a3ef6fE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !598
  store i64 0, ptr %i.b, align 8, !noalias !598
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %.val14.i = load i64, ptr %i.p, align 8, !alias.scope !586, !noalias !589, !noundef !27 ; 17 uses
  %.not.i = icmp eq i64 %.val14.i, 0
  br i1 %.not.i, label %.thread583.i, label %bb.bu

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !589, !noalias !586, !noundef !27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i8, ptr %i.s, align 2, !alias.scope !589, !noalias !586, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.r, ptr %i.u, align 8, !alias.scope !599, !noalias !589
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %i.t, ptr %i.v, align 1, !alias.scope !599, !noalias !589
  br label %_ZN6brotli3enc12ir_interpret9push_base17h7bfbf4f752a3ef6fE.exit

.lr.ph.i:                                         ; preds = %.thread583.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bc = load i8, ptr %i.ab, align 1
  %i.bd = zext i8 %i.bc to i64
  %.val2529.i.i.i = load ptr, ptr %i.ac, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2530.i.i.i = load i64, ptr %i.ad, align 8  ; 4 uses
  %i.be = load i16, ptr %i.ae, align 4            ; 7 uses
  %i.bf = load i16, ptr %i.af, align 2
  %i.bg = insertelement <8 x i16> poison, i16 %i.be, i64 0
  %i.bh = shufflevector <8 x i16> %i.bg, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bi = insertelement <4 x i16> poison, i16 %i.be, i64 0
  %i.bj = shufflevector <4 x i16> %i.bi, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bk = insertelement <8 x i16> poison, i16 %i.be, i64 7
  %i.bl = load i16, ptr %i.ag, align 8            ; 17 uses
  %i.bm = load i16, ptr %i.ah, align 2            ; 3 uses
  %i.bn = insertelement <8 x i16> poison, i16 %i.bl, i64 0
  %i.bo = shufflevector <8 x i16> %i.bn, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bp = insertelement <4 x i16> poison, i16 %i.bl, i64 0
  %i.bq = shufflevector <4 x i16> %i.bp, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.br = insertelement <8 x i16> poison, i16 %i.bl, i64 7
  %.val2525.i.i.i = load ptr, ptr %i.ai, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2526.i.i.i = load i64, ptr %i.aj, align 8  ; 4 uses
  %.val2521.i.i.i = load ptr, ptr %i.ak, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2522.i.i.i = load i64, ptr %i.al, align 8  ; 2 uses
  %.val2517.i.i.i = load ptr, ptr %i.am, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2518.i.i.i = load i64, ptr %i.an, align 8  ; 4 uses
  %i.bs = load i16, ptr %i.ao, align 4            ; 11 uses
  %i.bt = load i16, ptr %i.ap, align 2            ; 5 uses
  %i.bu = insertelement <8 x i16> poison, i16 %i.bs, i64 0
  %i.bv = shufflevector <8 x i16> %i.bu, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bw = insertelement <4 x i16> poison, i16 %i.bs, i64 0
  %i.bx = shufflevector <4 x i16> %i.bw, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.by = insertelement <8 x i16> poison, i16 %i.bs, i64 7
  %i.bz = load i16, ptr %i.aq, align 8            ; 11 uses
  %i.ca = load i16, ptr %i.ar, align 2            ; 5 uses
  %i.cb = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cd = insertelement <4 x i16> poison, i16 %i.bz, i64 0
  %i.ce = shufflevector <4 x i16> %i.cd, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <8 x i16> poison, i16 %i.bz, i64 7
  %.val2513.i.i.i = load ptr, ptr %i.as, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2514.i.i.i = load i64, ptr %i.at, align 8  ; 4 uses
  %.val2509.i.i.i = load ptr, ptr %i.au, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2510.i.i.i = load i64, ptr %i.av, align 8  ; 4 uses
  %.val2505.i.i.i = load ptr, ptr %i.aw, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2506.i.i.i = load i64, ptr %i.ax, align 8  ; 4 uses
  %.val2501.i.i.i = load ptr, ptr %i.ay, align 8, !nonnull !27, !align !602 ; 2 uses
  %.val2502.i.i.i = load i64, ptr %i.az, align 8  ; 4 uses
  %.val2533.i.i.i = load ptr, ptr %i.ba, align 8, !nonnull !27, !align !603 ; 2 uses
  %.val2534.i.i.i = load i64, ptr %i.bb, align 8  ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$11update_cost17h06798afd4f294a6dE.exit.i", %.lr.ph.i
  %.sroa.01.0255.i = phi i64 [ 0, %.lr.ph.i ], [ %i.acg, %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$11update_cost17h06798afd4f294a6dE.exit.i" ] ; 6 uses
  %.sroa.012.0254.i = phi ptr [ %i.adt, %.lr.ph.i ], [ %i.cg, %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$11update_cost17h06798afd4f294a6dE.exit.i" ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.0254.i, i64 1 ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.01.0255.i, 7     ; 2 uses
  %i.ci = and i64 %i.ch, 7                        ; 2 uses
  %i.cj = add nuw nsw i64 %.sroa.01.0255.i, 6
  %i.ck = and i64 %i.cj, 7                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ci
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !598, !noundef !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.co = load i8, ptr %i.cn, align 1, !noalias !598, !noundef !27
  %.val15.i = load ptr, ptr %i.w, align 8, !alias.scope !586, !noalias !589, !nonnull !27, !align !206, !noundef !27
  %.val16.i = load i64, ptr %i.x, align 8, !alias.scope !586, !noalias !589, !noundef !27
  %.val18.i = load i64, ptr %i.y, align 8, !alias.scope !586, !noalias !589, !noundef !27
  %.not.i.i.i = icmp eq i64 %.val18.i, 0
  br i1 %.not.i.i.i, label %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$15prediction_mode17h6e796081feb2b016E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val17.i = load ptr, ptr %i.z, align 8, !alias.scope !586, !noalias !589, !nonnull !27, !align !206, !noundef !27
  %i.cp = load i8, ptr %.val17.i, align 1, !noalias !589, !noundef !27
  br label %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$15prediction_mode17h6e796081feb2b016E.exit.i"

"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$15prediction_mode17h6e796081feb2b016E.exit.i": ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i = phi i8 [ %i.cp, %bb.g ], [ 0, %bb.f ]
  %.val19.i = load i8, ptr %i.aa, align 8, !alias.scope !586, !noalias !589, !noundef !27
  %i.cq = tail call { i64, i8 } @_ZN6brotli3enc12ir_interpret43compute_huffman_table_index_for_context_map17hbf657eae59a54a36E(i8 noundef %i.cm, i8 noundef %i.co, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i, i8 noundef %.sroa.0.0.i.i.i, i8 noundef %.val19.i), !noalias !589
  %i.cr = extractvalue { i64, i8 } %i.cq, 0       ; 10 uses
  %.sroa.08.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !598
  %i.cs = load i8, ptr %.sroa.012.0254.i, align 1, !noalias !589, !noundef !27 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !610
  store i64 %.sroa.08.0.copyload.i, ptr %i.a, align 8, !noalias !611
  %i.ct = sub nsw i64 %i.ch, %i.bd
  %i.cu = and i64 %i.ct, 7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !611, !noundef !27 ; 2 uses
  %i.cx = lshr i8 %i.cw, 4
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 8
  %i.da = add i64 %i.cz, %i.cr                    ; 3 uses
  %i.db = lshr i8 %i.cs, 4                        ; 3 uses
  %i.dc = add i64 %i.cr, 4096
  %i.dd = zext nneg i8 %i.db to i64               ; 12 uses
  %i.de = shl nuw nsw i64 %i.dd, 8
  %i.df = add i64 %i.dc, %i.de                    ; 3 uses
  %i.dg = mul i64 %i.cr, 17                       ; 7 uses
  %i.dh = icmp ult i64 %i.dg, %.val2530.i.i.i
  br i1 %i.dh, label %bb.h, label %bb.k

bb.h:                                             ; preds = %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$15prediction_mode17h6e796081feb2b016E.exit.i"
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %.val2529.i.i.i, i64 %i.dg ; 5 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dd ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !612, !noundef !27 ; 2 uses
  %i.dl = icmp eq i8 %i.db, 0                     ; 10 uses
  br i1 %i.dl, label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr i8, ptr %i.dj, i64 -2
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !612, !noundef !27
  %i.do = sub i16 %i.dk, %i.dn
  br label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i

_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i128.i.i.i = phi i16 [ %i.dk, %bb.h ], [ %i.do, %bb.i ]
  %i.dp = zext i16 %.sroa.0.0.i128.i.i.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 30
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.dp
  %i.ds = load float, ptr %i.dr, align 4, !noalias !615, !noundef !27
  %.sroa.0.i551.sroa.16.0..sroa.0.0.2536.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dt = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %i.du = shufflevector <4 x i8> %i.dt, <4 x i8> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dv = icmp ult <4 x i8> %i.du, <i8 80, i8 96, i8 112, i8 -1> ; 2 uses
  %i.dw = icmp sgt <4 x i8> %i.du, <i8 80, i8 96, i8 112, i8 -1> ; 2 uses
  %i.dx = shufflevector <4 x i1> %i.dv, <4 x i1> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dy = icmp ult <4 x i8> %i.du, <i8 -112, i8 -96, i8 -80, i8 -64> ; 3 uses
  %i.dz = icmp ult i8 %i.cs, -48                  ; 3 uses
  %i.ea = icmp ult i8 %i.cs, -32                  ; 3 uses
  %.not.i.i20.i = icmp eq i8 %i.db, 15            ; 3 uses
  %i.eb = load <8 x i16>, ptr %i.di, align 2, !noalias !616
  %2 = icmp ult i8 %i.cs, 32                      ; 3 uses
  %3 = icmp ult i8 %i.cs, 48                      ; 3 uses
  %4 = icmp ult i8 %i.cs, 64                      ; 3 uses
  %i.ec = shufflevector <4 x i1> %i.dv, <4 x i1> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ed = insertelement <8 x i1> %i.ec, i1 %i.dl, i64 0
  %i.ee = insertelement <8 x i1> %i.ed, i1 %2, i64 1
  %i.ef = insertelement <8 x i1> %i.ee, i1 %3, i64 2
  %i.eg = insertelement <8 x i1> %i.ef, i1 %4, i64 3
  %i.eh = select <8 x i1> %i.eg, <8 x i16> %i.bh, <8 x i16> zeroinitializer
  %i.ei = select i1 %i.dz, i16 %i.be, i16 0
  %i.ej = select i1 %i.ea, i16 %i.be, i16 0
  %i.ek = select i1 %.not.i.i20.i, i16 0, i16 %i.be
  %i.el = add <8 x i16> %i.eb, %i.eh              ; 2 uses
  %i.em = load i16, ptr %i.dq, align 2, !noalias !612, !noundef !27 ; 2 uses
  %i.en = load <8 x i16>, ptr %.sroa.0.i551.sroa.16.0..sroa.0.0.2536.sroa_idx.i.i.i, align 2, !noalias !619
  %i.eo = zext i16 %i.em to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !noalias !615, !noundef !27
  %i.er = select <4 x i1> %i.dy, <4 x i16> %i.bj, <4 x i16> zeroinitializer
  %i.es = add i16 %i.be, %i.em
  %i.et = insertelement <8 x i16> %i.bk, i16 %i.ei, i64 4
  %i.eu = insertelement <8 x i16> %i.et, i16 %i.ej, i64 5
  %i.ev = insertelement <8 x i16> %i.eu, i16 %i.ek, i64 6
  %i.ew = shufflevector <4 x i16> %i.er, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i16> %i.ew, <8 x i16> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ey = add <8 x i16> %i.ex, %i.en              ; 2 uses
  %.not.i572.i.i.i = icmp slt i16 %i.es, %i.bf
  br i1 %.not.i572.i.i.i, label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit579.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i
  %i.ez = add <8 x i16> %i.el, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.fa = add <8 x i16> %i.ey, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.fb = ashr <8 x i16> %i.ez, splat (i16 2)
  %i.fc = ashr <8 x i16> %i.fa, splat (i16 2)
  %i.fd = sub <8 x i16> %i.ez, %i.fb
  %i.fe = sub <8 x i16> %i.fa, %i.fc
  br label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit579.i.i.i

_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit579.i.i.i: ; preds = %bb.j, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i
  %i.ff = phi <8 x i16> [ %i.el, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i ], [ %i.fd, %bb.j ]
  %i.fg = phi <8 x i16> [ %i.ey, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit129.i.i.i ], [ %i.fe, %bb.j ]
  store <8 x i16> %i.ff, ptr %i.di, align 2, !noalias !616
  store <8 x i16> %i.fg, ptr %.sroa.0.i551.sroa.16.0..sroa.0.0.2536.sroa_idx.i.i.i, align 2, !noalias !616
  %i.fh = add nuw i64 %i.dg, 1
  %i.fi = add i64 %i.fh, %i.dd                    ; 6 uses
  %i.fj = icmp ult i64 %i.fi, %.val2530.i.i.i
  br i1 %i.fj, label %bb.l, label %bb.o

bb.k:                                             ; preds = %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$15prediction_mode17h6e796081feb2b016E.exit.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dg, i64 noundef %.val2530.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1508) #43, !noalias !619
  unreachable

bb.l:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit579.i.i.i
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %.val2529.i.i.i, i64 %i.fi ; 5 uses
  %i.fl = and i8 %i.cs, 15                        ; 9 uses
  %i.fm = zext nneg i8 %i.fl to i64               ; 8 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fm ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !noalias !620, !noundef !27 ; 2 uses
  %i.fp = icmp eq i8 %i.fl, 0                     ; 9 uses
  br i1 %i.fp, label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fq = getelementptr i8, ptr %i.fn, i64 -2
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !620, !noundef !27
  %i.fs = sub i16 %i.fo, %i.fr
  br label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i

_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.0.0.i126.i.i.i = phi i16 [ %i.fo, %bb.l ], [ %i.fs, %bb.m ]
  %i.ft = zext i16 %.sroa.0.0.i126.i.i.i to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 30
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.ft
  %i.fw = load float, ptr %i.fv, align 4, !noalias !623, !noundef !27
  %i.fx = load <8 x i16>, ptr %i.fk, align 2, !noalias !624
  %.sroa.0.i521.sroa.16.0..sroa.02538.0.2540.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fy = icmp samesign ult i8 %i.fl, 2
  %i.fz = icmp samesign ult i8 %i.fl, 3
  %i.ga = icmp samesign ult i8 %i.fl, 4
  %i.gb = insertelement <4 x i8> poison, i8 %i.fl, i64 0
  %i.gc = shufflevector <4 x i8> %i.gb, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gd = icmp samesign ult <4 x i8> %i.gc, <i8 5, i8 6, i8 7, i8 8>
  %i.ge = icmp samesign ult <4 x i8> %i.gc, <i8 9, i8 10, i8 11, i8 12> ; 2 uses
  %i.gf = icmp samesign ult i8 %i.fl, 13          ; 2 uses
  %i.gg = icmp samesign ult i8 %i.fl, 14          ; 2 uses
  %.not9602.i.i.i = icmp eq i8 %i.fl, 15          ; 2 uses
  %i.gh = insertelement <8 x i1> poison, i1 %i.fp, i64 0
  %i.gi = insertelement <8 x i1> %i.gh, i1 %i.fy, i64 1
  %i.gj = insertelement <8 x i1> %i.gi, i1 %i.fz, i64 2
  %i.gk = insertelement <8 x i1> %i.gj, i1 %i.ga, i64 3
  %i.gl = shufflevector <4 x i1> %i.gd, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <8 x i1> %i.gk, <8 x i1> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gn = select <8 x i1> %i.gm, <8 x i16> %i.bo, <8 x i16> zeroinitializer ; 2 uses
  %i.go = select <4 x i1> %i.ge, <4 x i16> %i.bq, <4 x i16> zeroinitializer
  %i.gp = select i1 %i.gf, i16 %i.bl, i16 0
  %i.gq = select i1 %i.gg, i16 %i.bl, i16 0
  %i.gr = select i1 %.not9602.i.i.i, i16 0, i16 %i.bl
  %i.gs = add <8 x i16> %i.fx, %i.gn              ; 2 uses
  %i.gt = load i16, ptr %i.fu, align 2, !noalias !620, !noundef !27 ; 2 uses
  %i.gu = load <8 x i16>, ptr %.sroa.0.i521.sroa.16.0..sroa.02538.0.2540.sroa_idx.i.i.i, align 2, !noalias !619
  %i.gv = zext i16 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !noalias !623, !noundef !27
  %i.gy = fsub float %i.gx, %i.fw
  %i.gz = add i16 %i.bl, %i.gt
  %i.ha = insertelement <8 x i16> %i.br, i16 %i.gp, i64 4
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gq, i64 5
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gr, i64 6
  %i.hd = shufflevector <4 x i16> %i.go, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.he = shufflevector <8 x i16> %i.hd, <8 x i16> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.hf = add <8 x i16> %i.he, %i.gu              ; 2 uses
  %.not.i542.i.i.i = icmp slt i16 %i.gz, %i.bm
  br i1 %.not.i542.i.i.i, label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit549.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i
  %i.hg = add <8 x i16> %i.gs, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.hh = add <8 x i16> %i.hf, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.hi = ashr <8 x i16> %i.hg, splat (i16 2)
  %i.hj = ashr <8 x i16> %i.hh, splat (i16 2)
  %i.hk = sub <8 x i16> %i.hg, %i.hi
  %i.hl = sub <8 x i16> %i.hh, %i.hj
  br label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit549.i.i.i

_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit549.i.i.i: ; preds = %bb.n, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i
  %i.hm = phi <8 x i16> [ %i.gs, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i ], [ %i.hk, %bb.n ]
  %i.hn = phi <8 x i16> [ %i.hf, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit127.i.i.i ], [ %i.hl, %bb.n ]
  store <8 x i16> %i.hm, ptr %i.fk, align 2, !noalias !624
  store <8 x i16> %i.hn, ptr %.sroa.0.i521.sroa.16.0..sroa.02538.0.2540.sroa_idx.i.i.i, align 2, !noalias !624
  %i.ho = icmp ult i64 %i.dg, %.val2526.i.i.i
  br i1 %i.ho, label %bb.p, label %bb.s

bb.o:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit579.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fi, i64 noundef %.val2530.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1508) #43, !noalias !619
  unreachable

bb.p:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit549.i.i.i
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %.val2525.i.i.i, i64 %i.dg ; 5 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.dd ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !noalias !627, !noundef !27 ; 2 uses
  br i1 %i.dl, label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hs = getelementptr i8, ptr %i.hq, i64 -2
  %i.ht = load i16, ptr %i.hs, align 2, !noalias !627, !noundef !27
  %i.hu = sub i16 %i.hr, %i.ht
  br label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i

_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i: ; preds = %bb.q, %bb.p
  %.sroa.0.0.i124.i.i.i = phi i16 [ %i.hr, %bb.p ], [ %i.hu, %bb.q ]
  %i.hv = zext i16 %.sroa.0.0.i124.i.i.i to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 30
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.hv
  %i.hy = load float, ptr %i.hx, align 4, !noalias !630, !noundef !27
  %i.hz = load <8 x i16>, ptr %i.hp, align 2, !noalias !631 ; 2 uses
  %.sroa.0.i491.sroa.16.0..sroa.02542.0.2544.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.ia = load i16, ptr %i.hw, align 2, !noalias !627, !noundef !27 ; 2 uses
  %i.ib = load <8 x i16>, ptr %.sroa.0.i491.sroa.16.0..sroa.02542.0.2544.sroa_idx.i.i.i, align 2, !noalias !619 ; 2 uses
  %i.ic = zext i16 %i.ia to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !noalias !630, !noundef !27
  %.not.i512.i.i.i = icmp slt i16 %i.ia, 1024
  br i1 %.not.i512.i.i.i, label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit519.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i
  %i.if = add <8 x i16> %i.hz, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.ig = add <8 x i16> %i.ib, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.ih = ashr <8 x i16> %i.if, splat (i16 2)
  %i.ii = ashr <8 x i16> %i.ig, splat (i16 2)
  %i.ij = sub <8 x i16> %i.if, %i.ih
  %i.ik = sub <8 x i16> %i.ig, %i.ii
  br label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit519.i.i.i

_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit519.i.i.i: ; preds = %bb.r, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i
  %i.il = phi <8 x i16> [ %i.hz, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i ], [ %i.ij, %bb.r ]
  %i.im = phi <8 x i16> [ %i.ib, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit125.i.i.i ], [ %i.ik, %bb.r ]
  store <8 x i16> %i.il, ptr %i.hp, align 2, !noalias !631
  store <8 x i16> %i.im, ptr %.sroa.0.i491.sroa.16.0..sroa.02542.0.2544.sroa_idx.i.i.i, align 2, !noalias !631
  %i.in = icmp ult i64 %i.fi, %.val2526.i.i.i
  br i1 %i.in, label %bb.t, label %bb.w

bb.s:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit549.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dg, i64 noundef %.val2526.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1508) #43, !noalias !619
  unreachable

bb.t:                                             ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit519.i.i.i
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %.val2525.i.i.i, i64 %i.fi ; 5 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.fm ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !634, !noundef !27 ; 2 uses
  br i1 %i.fp, label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit123.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ir = getelementptr i8, ptr %i.ip, i64 -2
  %i.is = load i16, ptr %i.ir, align 2, !noalias !634, !noundef !27
  %i.it = sub i16 %i.iq, %i.is
  br label %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit123.i.i.i

_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit123.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.0.0.i122.i.i.i = phi i16 [ %i.iq, %bb.t ], [ %i.it, %bb.u ]
  %i.iu = zext i16 %.sroa.0.0.i122.i.i.i to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 30
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.iu
  %i.ix = load float, ptr %i.iw, align 4, !noalias !637, !noundef !27
  %i.iy = load <8 x i16>, ptr %i.io, align 2, !noalias !638 ; 2 uses
  %.sroa.0.i461.sroa.16.0..sroa.02546.0.2548.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
end_hunk_0
