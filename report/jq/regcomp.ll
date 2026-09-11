Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regcomp?download=true
inline.NumInlined: 305
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@onig_compile:bb.a
bb.f:                                             ; preds = %bb.a, %ops_init.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.o, align 8, !tbaa !25
  %i.p = call fastcc i32 @parse_and_tune(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %6, ptr noundef %i.a, ptr noundef %3, ptr noundef %7) ; 2 uses
  %.not81 = icmp eq i32 %i.p, 0
  br i1 %.not81, label %bb.g, label %bb.cr

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.r, ptr %i.s, align 8, !tbaa !183
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.v = or i32 %i.u, %i.r                        ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %.not82 = icmp eq ptr %i.y, null
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33
  %.not83 = icmp eq i32 %i.aa, 0
  br i1 %.not83, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = and i32 %i.v, 1
  %.not84 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  br i1 %.not84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = or i32 %i.ad, %i.r
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = and i32 %i.ad, %i.u
  %i.ag = or i32 %i.af, %i.r
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k
  %.sink = phi i32 [ %i.ae, %bb.j ], [ %i.ag, %bb.k ], [ %i.v, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.ah, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !184
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !185
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %.not.i99 = icmp eq ptr %i.am, null
  br i1 %.not.i99, label %clear_optimize_info.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.am) #24
  store ptr null, ptr %i.al, align 8, !tbaa !31
  br label %clear_optimize_info.exit

clear_optimize_info.exit:                         ; preds = %bb.l, %bb.m
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.as, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.au, align 8, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !53
  store i32 0, ptr %5, align 8, !tbaa !54
  %i.aw = call fastcc i32 @optimize_nodes(ptr noundef %i.an, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not.i100 = icmp eq i32 %i.aw, 0
  br i1 %.not.i100, label %bb.n, label %set_optimize_info_from_tree.exit.thread116

set_optimize_info_from_tree.exit.thread116:       ; preds = %clear_optimize_info.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bf

bb.n:                                             ; preds = %clear_optimize_info.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !58 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = and i32 %i.ay, 6
  %.not25.i = icmp eq i32 %i.ba, 0
  %spec.select.v.i = select i1 %.not25.i, i32 49236, i32 16468
  %spec.select.i = and i32 %spec.select.v.i, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !187 ; 3 uses
  %i.bd = and i32 %i.bc, 386
  %i.be = or disjoint i32 %spec.select.i, %i.bd
  store i32 %i.be, ptr %i.az, align 8, !tbaa !188
  %i.bf = and i32 %i.bc, 384
  %.not26.i = icmp eq i32 %i.bf, 0
  br i1 %.not26.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load <2 x i32>, ptr %4, align 8, !tbaa !15
  store <2 x i32> %i.bh, ptr %i.bg, align 4, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59 ; 9 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.bn = load i32, ptr %i.bm, align 4            ; 5 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  %or.cond.i = select i1 %i.bl, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %bb.q, label %bb.bb

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.bq = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 3 uses
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %select_opt_exact.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp eq i32 %i.bk, 0
  br i1 %i.bs, label %comp_distance_value.exit.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp slt i32 %i.bk, 3
  %i.bu = icmp slt i32 %i.bn, 3
  %or.cond.i.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i.i, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !27  ; 3 uses
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.u, label %map_position_value.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i8 %i.bw, 0
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !61
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %map_position_value.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cc = zext nneg i8 %i.bw to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !63
  %i.cf = sext i16 %i.ce to i32
  br label %map_position_value.exit.i.i

map_position_value.exit.i.i:                      ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i = phi i32 [ 20, %bb.v ], [ %i.cf, %bb.w ], [ 4, %bb.t ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !27  ; 3 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %bb.x, label %map_position_value.exit29.i.i

bb.x:                                             ; preds = %map_position_value.exit.i.i
  %i.cj = icmp eq i8 %i.ch, 0
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !61
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %map_position_value.exit29.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cn = zext nneg i8 %i.ch to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !63
  %i.cq = sext i16 %i.cp to i32
  br label %map_position_value.exit29.i.i

map_position_value.exit29.i.i:                    ; preds = %bb.z, %bb.y, %map_position_value.exit.i.i
  %.0.i28.i.i = phi i32 [ 20, %bb.y ], [ %i.cq, %bb.z ], [ 4, %map_position_value.exit.i.i ] ; 2 uses
  %i.cr = icmp sgt i32 %i.bk, 1
  %i.cs = add nsw i32 %.0.i28.i.i, 5
  %spec.select.i.i = select i1 %i.cr, i32 %i.cs, i32 %.0.i28.i.i
  %i.ct = icmp sgt i32 %i.bn, 1
  %i.cu = add nsw i32 %.0.i.i.i, 5
  %spec.select27.i.i = select i1 %i.ct, i32 %i.cu, i32 %.0.i.i.i
  br label %bb.aa

bb.aa:                                            ; preds = %map_position_value.exit29.i.i, %bb.s
  %.1.i.i = phi i32 [ %i.bk, %bb.s ], [ %spec.select.i.i, %map_position_value.exit29.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ %i.bn, %bb.s ], [ %spec.select27.i.i, %map_position_value.exit29.i.i ] ; 2 uses
  %i.cv = shl nuw nsw i32 %.1.i.i, 1              ; 2 uses
  %i.cw = shl nuw nsw i32 %.0.i.i, 1              ; 2 uses
  %i.cx = icmp slt i32 %.0.i.i, 1
  br i1 %i.cx, label %select_opt_exact.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = icmp slt i32 %.1.i.i, 1
  br i1 %i.cy, label %comp_distance_value.exit.sink.split.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !53 ; 2 uses
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %distance_value.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = load i32, ptr %i.bi, align 8, !tbaa !54
  %i.dd = sub i32 %i.da, %i.dc                    ; 2 uses
  %i.de = icmp ult i32 %i.dd, 100
  br i1 %i.de, label %bb.ae, label %distance_value.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !63
  %i.di = sext i16 %i.dh to i32
  %i.dj = mul nsw i32 %i.cv, %i.di
  br label %distance_value.exit.i.i.i

distance_value.exit.i.i.i:                        ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ 0, %bb.ac ], [ %i.dj, %bb.ae ], [ %i.cv, %bb.ad ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !53 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %distance_value.exit21.i.i.i, label %bb.af

bb.af:                                            ; preds = %distance_value.exit.i.i.i
  %i.dn = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.do = sub i32 %i.dl, %i.dn                    ; 2 uses
  %i.dp = icmp ult i32 %i.do, 100
  br i1 %i.dp, label %bb.ag, label %distance_value.exit21.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !63
  %i.dt = sext i16 %i.ds to i32
  %i.du = mul nsw i32 %i.cw, %i.dt
  br label %distance_value.exit21.i.i.i

distance_value.exit21.i.i.i:                      ; preds = %bb.ag, %bb.af, %distance_value.exit.i.i.i
  %.0.i20.i.i.i = phi i32 [ 0, %distance_value.exit.i.i.i ], [ %i.du, %bb.ag ], [ %i.cw, %bb.af ] ; 2 uses
  %i.dv = icmp sgt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.dv, label %comp_distance_value.exit.sink.split.i.i, label %bb.ah

bb.ah:                                            ; preds = %distance_value.exit21.i.i.i
  %i.dw = icmp slt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.dw, label %select_opt_exact.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.dy = load i32, ptr %i.bi, align 8, !tbaa !54
  %i.dz = icmp ult i32 %i.dx, %i.dy
  br i1 %i.dz, label %comp_distance_value.exit.sink.split.i.i, label %select_opt_exact.exit.i

comp_distance_value.exit.sink.split.i.i:          ; preds = %bb.ai, %distance_value.exit21.i.i.i, %bb.ab, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bp, i64 48, i1 false)
  %.pr.i.pre.pre = load i32, ptr %i.bj, align 4, !tbaa !64
  br label %select_opt_exact.exit.i

select_opt_exact.exit.i:                          ; preds = %comp_distance_value.exit.sink.split.i.i, %bb.ai, %bb.ah, %bb.aa, %bb.q
  %.pr.i.pre = phi i32 [ %.pr.i.pre.pre, %comp_distance_value.exit.sink.split.i.i ], [ %i.bk, %bb.ai ], [ %i.bk, %bb.ah ], [ %i.bk, %bb.aa ], [ %i.bk, %bb.q ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !65 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.aj, label %comp_opt_exact_or_map.exit.thread.i

bb.aj:                                            ; preds = %select_opt_exact.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.ee = mul nuw nsw i32 %.pr.i.pre, 60          ; 2 uses
  %i.ef = udiv i32 200, %i.eb                     ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.eb, 200
  br i1 %i.eg, label %comp_opt_exact_or_map.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = icmp slt i32 %.pr.i.pre, 1
  br i1 %i.eh, label %comp_opt_exact_or_map.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !53 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %distance_value.exit.i.i30.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = load i32, ptr %i.bi, align 8, !tbaa !54
  %i.em = sub i32 %i.ej, %i.el                    ; 2 uses
  %i.en = icmp ult i32 %i.em, 100
  br i1 %i.en, label %bb.an, label %distance_value.exit.i.i30.i

bb.an:                                            ; preds = %bb.am
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !63
  %i.er = sext i16 %i.eq to i32
  %i.es = mul nsw i32 %i.ee, %i.er
  br label %distance_value.exit.i.i30.i

distance_value.exit.i.i30.i:                      ; preds = %bb.an, %bb.am, %bb.al
  %.0.i.i.i31.i = phi i32 [ 0, %bb.al ], [ %i.es, %bb.an ], [ %i.ee, %bb.am ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !53 ; 2 uses
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %distance_value.exit21.i.i32.i, label %bb.ao

bb.ao:                                            ; preds = %distance_value.exit.i.i30.i
  %i.ew = load i32, ptr %i.ed, align 8, !tbaa !54
  %i.ex = sub i32 %i.eu, %i.ew                    ; 2 uses
  %i.ey = icmp ult i32 %i.ex, 100
  br i1 %i.ey, label %bb.ap, label %distance_value.exit21.i.i32.i

bb.ap:                                            ; preds = %bb.ao
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !63
  %i.fc = sext i16 %i.fb to i32
  %i.fd = mul nsw i32 %i.ef, %i.fc
  br label %distance_value.exit21.i.i32.i

distance_value.exit21.i.i32.i:                    ; preds = %bb.ap, %bb.ao, %distance_value.exit.i.i30.i
  %.0.i20.i.i33.i = phi i32 [ 0, %distance_value.exit.i.i30.i ], [ %i.fd, %bb.ap ], [ %i.ef, %bb.ao ] ; 2 uses
  %i.fe = icmp sgt i32 %.0.i20.i.i33.i, %.0.i.i.i31.i
  br i1 %i.fe, label %comp_opt_exact_or_map.exit.i, label %bb.aq

bb.aq:                                            ; preds = %distance_value.exit21.i.i32.i
  %i.ff = icmp slt i32 %.0.i20.i.i33.i, %.0.i.i.i31.i
  br i1 %i.ff, label %comp_opt_exact_or_map.exit.thread.i.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fg = load i32, ptr %i.ed, align 8, !tbaa !54
  %i.fh = load i32, ptr %i.bi, align 8, !tbaa !54
  %i.fi = icmp ult i32 %i.fg, %i.fh
  br i1 %i.fi, label %comp_opt_exact_or_map.exit.i, label %comp_opt_exact_or_map.exit.thread.i.thread

comp_opt_exact_or_map.exit.thread.i:              ; preds = %select_opt_exact.exit.i, %bb.aj
  %i.fj = icmp eq i32 %.pr.i.pre, 0
  br i1 %i.fj, label %set_optimize_info_from_tree.exit, label %comp_opt_exact_or_map.exit.thread.i.thread

comp_opt_exact_or_map.exit.thread.i.thread:       ; preds = %bb.ar, %bb.aq, %comp_opt_exact_or_map.exit.thread.i
  %i.fk = sext i32 %.pr.i.pre to i64              ; 3 uses
  %i.fl = call noalias ptr @malloc(i64 noundef %i.fk) #26 ; 5 uses
  store ptr %i.fl, ptr %i.al, align 8, !tbaa !31
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %set_optimize_info_from_tree.exit, label %bb.as

bb.as:                                            ; preds = %comp_opt_exact_or_map.exit.thread.i.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull readonly align 8 %i.fn, i64 %i.fk, i1 false)
  %i.fo = getelementptr inbounds i8, ptr %i.fl, i64 %i.fk ; 2 uses
  store ptr %i.fo, ptr %i.aj, align 8, !tbaa !184
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !189
  %i.fr = call i32 %i.fq(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fo) #24, !inline_history !178 ; 2 uses
  %i.fs = load i32, ptr %i.bj, align 4, !tbaa !64 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fu = icmp eq i32 %i.fs, 1
  %i.fv = icmp ne i32 %i.fr, 0
  %or.cond.i35.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond.i35.i, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fw = load ptr, ptr %i.al, align 8, !tbaa !31 ; 4 uses
  %i.fx = load ptr, ptr %i.aj, align 8, !tbaa !184 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.val.i.i = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 144
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !190
  %i.gb = lshr i32 %i.ga, 2
  %i.gc = and i32 %i.gb, 7                        ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 7
  br i1 %i.gd, label %.preheader1.i.i.i, label %bb.aw

.preheader1.i.i.i:                                ; preds = %bb.au, %.preheader1.i.i.i
  %.0.i.i37.i = phi ptr [ %i.gh, %.preheader1.i.i.i ], [ %i.fw, %bb.au ] ; 2 uses
  %i.ge = load ptr, ptr %.val.i.i, align 8, !tbaa !66
  %i.gf = call i32 %i.ge(ptr noundef %.0.i.i37.i) #24, !inline_history !179 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %.0.i.i37.i, i64 %i.gg ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.gh, %i.fx
  br i1 %.not.i.i.i, label %.preheader1.i.i.i, label %bb.av

bb.av:                                            ; preds = %.preheader1.i.i.i
  %i.gi = icmp eq i32 %i.gf, 1
  %..i.i38.i = zext i1 %i.gi to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1.i.i.i = phi i32 [ %..i.i38.i, %bb.av ], [ %i.gc, %bb.au ] ; 3 uses
  %i.gj = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gk = ptrtoint ptr %i.fw to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = add nsw i32 %.1.i.i.i, %i.gm            ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 254
  br i1 %i.go, label %set_optimize_info_from_tree.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.aw
  store i32 %.1.i.i.i, ptr %i.ak, align 8, !tbaa !15
  %i.gp = trunc i32 %i.gn to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.fy, i8 %i.gp, i64 256, i1 false), !tbaa !27
  %i.gq = icmp ult ptr %i.fw, %i.fx
  br i1 %i.gq, label %.lr.ph6.i.i.i, label %.loopexit.i.i

.lr.ph6.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.gr = add nsw i32 %.1.i.i.i, -1
  %i.gs = sext i32 %i.gr to i64
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph6.i.i.i
  %.0725.i.i.i = phi ptr [ %i.fw, %.lr.ph6.i.i.i ], [ %i.hm, %._crit_edge.i.i.i ] ; 5 uses
  %i.gt = load ptr, ptr %.val.i.i, align 8, !tbaa !66
  %i.gu = call i32 %i.gt(ptr noundef %.0725.i.i.i) #24, !inline_history !179 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %.0725.i.i.i, i64 %i.gv
  %i.gx = icmp ugt ptr %i.gw, %i.fx
  %i.gy = ptrtoint ptr %.0725.i.i.i to i64
  %i.gz = sub i64 %i.gj, %i.gy                    ; 2 uses
  %i.ha = trunc i64 %i.gz to i32
  %.073.i.i.i = select i1 %i.gx, i32 %i.ha, i32 %i.gu ; 3 uses
  %i.hb = icmp sgt i32 %.073.i.i.i, 0
  br i1 %i.hb, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ax
  %sext.i.i.i = shl i64 %i.gz, 32
  %i.hc = ashr exact i64 %sext.i.i.i, 32
  %wide.trip.count.i.i.i = zext nneg i32 %.073.i.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ay ] ; 3 uses
  %i.hd = sub nsw i64 %i.hc, %indvars.iv.i.i.i
  %i.he = add nsw i64 %i.hd, %i.gs                ; 2 uses
  %i.hf = icmp slt i64 %i.he, 1
  br i1 %i.hf, label %._crit_edge.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  %i.hg = trunc i64 %i.he to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.0725.i.i.i, i64 %indvars.iv.i.i.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !27
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hj
  store i8 %i.hg, ptr %i.hk, align 1, !tbaa !27
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !180

._crit_edge.i.i.i:                                ; preds = %bb.ay, %.lr.ph.i.i.i, %bb.ax
  %i.hl = sext i32 %.073.i.i.i to i64
  %i.hm = getelementptr inbounds i8, ptr %.0725.i.i.i, i64 %i.hl ; 2 uses
  %i.hn = icmp ult ptr %i.hm, %i.fx
  br i1 %i.hn, label %bb.ax, label %.loopexit.i.i, !llvm.loop !181

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i, %.preheader.i.i.i
  %.not42.i.i = icmp eq i32 %i.fr, 0
  %i.ho = select i1 %.not42.i.i, i32 3, i32 2
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.i.i, %bb.at
  %.sink.i.i = phi i32 [ %i.ho, %.loopexit.i.i ], [ 1, %bb.at ]
  store i32 %.sink.i.i, ptr %i.ai, align 8, !tbaa !67
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.hq = load <2 x i32>, ptr %i.bi, align 8, !tbaa !15
  %i.hr = load i32, ptr %i.bi, align 8, !tbaa !191 ; 2 uses
  store <2 x i32> %i.hq, ptr %i.hp, align 4, !tbaa !15
  %.not43.i.i = icmp eq i32 %i.hr, -1
  br i1 %.not43.i.i, label %set_optimize_info_from_tree.exit, label %bb.ba

end_hunk_0
begin_hunk_1_@optimize_nodes:bb.a
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !173
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0 = phi i32 [ %i.nk, %bb.by ], [ -1, %bb.bx ]
  store i32 %.0198, ptr %1, align 4, !tbaa !54
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0, ptr %i.nl, align 4, !tbaa !53
  br label %.critedge2

bb.ca:                                            ; preds = %bb.bu
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !27
  %i.no = tail call fastcc i32 @optimize_nodes(ptr noundef %i.nn, ptr noundef %1, ptr noundef %2) ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !54 ; 2 uses
  %i.nr = and i32 %i.nq, 49152
  %.not.i288 = icmp eq i32 %i.nr, 0
  br i1 %.not.i288, label %is_set_opt_anc_info.exit, label %is_set_opt_anc_info.exit.thread

is_set_opt_anc_info.exit:                         ; preds = %bb.ca
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !53
  %i.nu = and i32 %i.nt, 49152
  %.not4.i.not = icmp eq i32 %i.nu, 0
  br i1 %.not4.i.not, label %.critedge2, label %is_set_opt_anc_info.exit.thread

is_set_opt_anc_info.exit.thread:                  ; preds = %bb.ca, %is_set_opt_anc_info.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !27 ; 2 uses
  %i.nx = add i32 %i.nw, -1
  %or.cond253 = icmp ult i32 %i.nx, 31
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !52
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !44 ; 2 uses
  br i1 %or.cond253, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %is_set_opt_anc_info.exit.thread
  %i.oc = shl nuw i32 1, %i.nw
  %i.od = and i32 %i.ob, %i.oc
  %.not225 = icmp eq i32 %i.od, 0
  br i1 %.not225, label %.critedge2, label %bb.cd

bb.cc:                                            ; preds = %is_set_opt_anc_info.exit.thread
  %i.oe = and i32 %i.ob, 1
  %.not224 = icmp eq i32 %i.oe, 0
  br i1 %.not224, label %.critedge2, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.of = and i32 %i.nq, -49153
  store i32 %i.of, ptr %i.np, align 4, !tbaa !54
  br label %.critedge2

bb.ce:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !27
  %.not = icmp eq ptr %i.oi, null
  br i1 %.not, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !336
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !124
  %i.ol = call fastcc i32 @optimize_nodes(ptr noundef %i.ok, ptr noundef %3, ptr noundef %5) ; 2 uses
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %i.on = load <2 x i32>, ptr %3, align 8, !tbaa !15 ; 3 uses
  %i.oo = load <2 x i32>, ptr %5, align 8, !tbaa !15 ; 3 uses
  %i.op = icmp eq <2 x i32> %i.oo, splat (i32 -1)
  %i.oq = icmp eq <2 x i32> %i.on, splat (i32 -1)
  %i.or = or <2 x i1> %i.oq, %i.op
  %i.os = xor <2 x i32> %i.on, splat (i32 -1)
  %i.ot = icmp ugt <2 x i32> %i.oo, %i.os
  %i.ou = or <2 x i1> %i.ot, %i.or
  %i.ov = add <2 x i32> %i.oo, %i.on
  %i.ow = select <2 x i1> %i.ou, <2 x i32> splat (i32 -1), <2 x i32> %i.ov
  store <2 x i32> %i.ow, ptr %5, align 8, !tbaa !15
  call fastcc void @concat_left_node_opt_info(ptr noundef %i.d, ptr noundef %1, ptr noundef %3)
  %i.ox = load ptr, ptr %i.og, align 8, !tbaa !27 ; 2 uses
  %.not222 = icmp eq ptr %i.ox, null
  br i1 %.not222, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oy = call fastcc i32 @optimize_nodes(ptr noundef nonnull %i.ox, ptr noundef %3, ptr noundef %5)
  %i.oz = icmp eq i32 %i.oy, 0
  br i1 %i.oz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call fastcc void @concat_left_node_opt_info(ptr noundef %i.d, ptr noundef %1, ptr noundef %3)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.cg
  %i.pa = load ptr, ptr %i.oh, align 8, !tbaa !27
  %i.pb = call fastcc i32 @optimize_nodes(ptr noundef %i.pa, ptr noundef %3, ptr noundef %2) ; 2 uses
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @alt_merge_node_opt_info(ptr noundef %1, ptr noundef %3, ptr noundef %2)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cf, %bb.ck, %bb.cj, %bb.ce
  %.1203 = phi i32 [ 0, %bb.ck ], [ %i.pb, %bb.cj ], [ %i.ol, %bb.cf ], [ 0, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge2

bb.cm:                                            ; preds = %bb.a
  br label %.critedge2

.critedge2:                                       ; preds = %bb.h, %.preheader, %.split, %bb.an, %is_left.exit.i, %bb.bs, %bb.bt, %bb.cl, %is_set_opt_anc_info.exit, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.az, %distance_multiply.exit287, %bb.ba, %bb.r, %.loopexit337, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.am, %bb.ar, %bb.as, %bb.ao, %bb.cm, %.loopexit, %add_char_opt_map.exit, %.critedge, %bb.a
  %.3205 = phi i32 [ -6, %bb.cm ], [ %i.p, %.critedge ], [ 0, %bb.a ], [ 0, %add_char_opt_map.exit ], [ 0, %is_left.exit.i ], [ 0, %.loopexit ], [ 0, %.split ], [ %i.no, %is_set_opt_anc_info.exit ], [ 0, %bb.as ], [ 0, %bb.ar ], [ %i.he, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.aw ], [ %i.ig, %bb.ax ], [ 0, %bb.r ], [ %i.in, %bb.ba ], [ 0, %bb.an ], [ %.1203, %bb.cl ], [ 0, %.loopexit337 ], [ 0, %bb.az ], [ 0, %distance_multiply.exit287 ], [ 0, %bb.bs ], [ %i.my, %bb.bt ], [ 0, %bb.bz ], [ %i.no, %bb.cd ], [ %i.no, %bb.cb ], [ %i.no, %bb.cc ], [ %i.af, %.preheader ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.3205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @select_opt_exact(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %comp_distance_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %comp_distance_value.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.b, 3
  %i.h = icmp slt i32 %i.d, 3
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i8, ptr %i.i, align 4, !tbaa !27    ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %map_position_value.exit

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i8 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !61
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %map_position_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = zext nneg i8 %i.j to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !63
  %i.s = sext i16 %i.r to i32
  br label %map_position_value.exit

map_position_value.exit:                          ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ 20, %bb.f ], [ %i.s, %bb.g ], [ 4, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i8, ptr %i.t, align 4, !tbaa !27    ; 3 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.h, label %map_position_value.exit29

bb.h:                                             ; preds = %map_position_value.exit
  %i.w = icmp eq i8 %i.u, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !61
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %map_position_value.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = zext nneg i8 %i.u to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !63
  %i.ad = sext i16 %i.ac to i32
  br label %map_position_value.exit29

map_position_value.exit29:                        ; preds = %map_position_value.exit, %bb.i, %bb.j
  %.0.i28 = phi i32 [ 20, %bb.i ], [ %i.ad, %bb.j ], [ 4, %map_position_value.exit ] ; 2 uses
  %i.ae = icmp sgt i32 %i.b, 1
  %i.af = add nsw i32 %.0.i28, 5
  %spec.select = select i1 %i.ae, i32 %i.af, i32 %.0.i28
  %i.ag = icmp sgt i32 %i.d, 1
  %i.ah = add nsw i32 %.0.i, 5
  %spec.select27 = select i1 %i.ag, i32 %i.ah, i32 %.0.i
  br label %bb.k

bb.k:                                             ; preds = %map_position_value.exit29, %bb.c
  %.1 = phi i32 [ %i.b, %bb.c ], [ %spec.select, %map_position_value.exit29 ] ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.c ], [ %spec.select27, %map_position_value.exit29 ] ; 2 uses
  %i.ai = shl nuw nsw i32 %.1, 1                  ; 2 uses
  %i.aj = shl nuw nsw i32 %.0, 1                  ; 2 uses
  %i.ak = icmp slt i32 %.0, 1
  br i1 %i.ak, label %comp_distance_value.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = icmp slt i32 %.1, 1
  br i1 %i.al, label %comp_distance_value.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %distance_value.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %1, align 4, !tbaa !54
  %i.aq = sub i32 %i.an, %i.ap                    ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 100
  br i1 %i.ar, label %bb.o, label %distance_value.exit.i

bb.o:                                             ; preds = %bb.n
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.ai, %i.av
  br label %distance_value.exit.i

distance_value.exit.i:                            ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ 0, %bb.m ], [ %i.aw, %bb.o ], [ %i.ai, %bb.n ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !53 ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %distance_value.exit21.i, label %bb.p

bb.p:                                             ; preds = %distance_value.exit.i
  %i.ba = load i32, ptr %2, align 4, !tbaa !54
  %i.bb = sub i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 100
  br i1 %i.bc, label %bb.q, label %distance_value.exit21.i

bb.q:                                             ; preds = %bb.p
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !63
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul nsw i32 %i.aj, %i.bg
  br label %distance_value.exit21.i

distance_value.exit21.i:                          ; preds = %bb.q, %bb.p, %distance_value.exit.i
  %.0.i20.i = phi i32 [ 0, %distance_value.exit.i ], [ %i.bh, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  %i.bi = icmp sgt i32 %.0.i20.i, %.0.i.i
  br i1 %i.bi, label %comp_distance_value.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %distance_value.exit21.i
  %i.bj = icmp slt i32 %.0.i20.i, %.0.i.i
  br i1 %i.bj, label %comp_distance_value.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %2, align 4, !tbaa !54
  %i.bl = load i32, ptr %1, align 4, !tbaa !54
  %i.bm = icmp ult i32 %i.bk, %i.bl
  br i1 %i.bm, label %comp_distance_value.exit.sink.split, label %comp_distance_value.exit

comp_distance_value.exit.sink.split:              ; preds = %distance_value.exit21.i, %bb.l, %bb.s, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull readonly align 4 dereferenceable(48) %2, i64 48, i1 false)
  br label %comp_distance_value.exit

comp_distance_value.exit:                         ; preds = %comp_distance_value.exit.sink.split, %bb.s, %bb.r, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @concat_left_node_opt_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69
  %i.h = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  %i.i = icmp ne i32 %i.e, 0                      ; 2 uses
  br i1 %i.i, label %concat_opt_anc_info.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = or i32 %i.k, %i.h
  br label %concat_opt_anc_info.exit

concat_opt_anc_info.exit:                         ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %i.o = icmp eq i32 %i.g, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !53   ; 2 uses
  %i.r = and i32 %i.q, 2
  %.pn.i = select i1 %i.o, i32 %i.q, i32 %i.r
  %storemerge.i = or i32 %.pn.i, %i.n             ; 3 uses
  %.sroa.10.0.insert.ext92 = zext i32 %storemerge.i to i64
  %.sroa.10.0.insert.shift93 = shl nuw i64 %.sroa.10.0.insert.ext92, 32
  %.sroa.0.0.insert.ext89 = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert91 = or disjoint i64 %.sroa.10.0.insert.shift93, %.sroa.0.0.insert.ext89
  store i64 %.sroa.0.0.insert.insert91, ptr %i.c, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 3 uses
  %i.v = icmp slt i32 %i.u, 1                     ; 2 uses
  %brmerge = or i1 %i.i, %i.v
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %concat_opt_anc_info.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.f, align 4, !tbaa !69
  %i.y = load i32, ptr %i.w, align 4, !tbaa !54
  %i.z = or i32 %i.y, %.sroa.0.0
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ac = icmp eq i32 %i.x, 0
  %i.ad = and i32 %storemerge.i, 2
  %.pn.i60 = select i1 %i.ac, i32 %storemerge.i, i32 %i.ad
  %storemerge.i61 = or i32 %.pn.i60, %i.ab
  %.sroa.10.0.insert.ext = zext i32 %storemerge.i61 to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.w, align 4
  br label %bb.d

bb.d:                                             ; preds = %concat_opt_anc_info.exit, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !69
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !350
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.c, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !351
  %i.ap = or i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !351
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !171
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !172
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !69
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.au, align 4, !tbaa !172
  store i32 0, ptr %i.ar, align 4, !tbaa !171
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.v, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not54 = icmp eq i32 %i.as, 0
  br i1 %.not54, label %bb.n, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = zext nneg i32 %i.u to i64               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bd = add i64 %i.b, 40
  %i.be = add i64 %i.a, %i.ay
  %i.bf = add i64 %i.be, 39
  br label %bb.l

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa126 = phi ptr [ %i.ce, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.ch, %.lr.ph.i ]
  %indvars.iv.next.i.lcssa = phi i64 [ %i.cd, %vec.epilog.middle.block ], [ %i.bx, %middle.block ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bg = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.loopexit.i
  %.131.lcssa.i = phi i32 [ %.03037.i, %.preheader.i ], [ %i.bg, %.loopexit.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.038.i, %.preheader.i ], [ %.lcssa126, %.loopexit.loopexit.i ] ; 3 uses
end_hunk_1
