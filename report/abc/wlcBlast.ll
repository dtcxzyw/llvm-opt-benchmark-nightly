Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcBlast?download=true
inline.NumInlined: 1166
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Wlc_BlastReduceMatrix2:bb.a
  %i.au = xor i32 %i.aq, 1
  %i.av = xor i32 %i.at, 1
  %i.aw = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.au, i32 noundef %i.av) #27
  %i.ax = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.aq) #27
  %.0118 = xor i32 %i.aw, %i.ai
  %.0117 = xor i32 %i.ax, %i.ai
  %i.ay = tail call i32 @Wlc_BlastAddLevel(ptr noundef %0, i32 noundef %.1125) ; 2 uses
  tail call void @Wlc_IntInsert2(ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef %.0118)
  %.val78 = load ptr, ptr %i.f, align 8, !tbaa !159
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val78, i64 %indvars.iv149
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  tail call void @Wlc_IntInsert2(ptr noundef %0, ptr noundef nonnull %i.ba, i32 noundef %.0117)
  %.val79 = load ptr, ptr %i.f, align 8, !tbaa !159 ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.val79, i64 %indvars.iv149 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 2 uses
  %.val72 = load i32, ptr %i.bc, align 4, !tbaa !28 ; 2 uses
  %i.bd = icmp slt i32 %.val72, 3
  br i1 %i.bd, label %.critedge, label %Wlc_BlastFullAdder.exit

.critedge:                                        ; preds = %Wlc_BlastFullAdder.exit, %.preheader120
  %.val79123166 = phi ptr [ %.val79123, %.preheader120 ], [ %.val79, %Wlc_BlastFullAdder.exit ]
  %.1.lcssa = phi i32 [ %.0128, %.preheader120 ], [ %i.ay, %Wlc_BlastFullAdder.exit ]
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph135, label %.preheader120, !llvm.loop !183

bb.c:                                             ; preds = %.lr.ph135, %._crit_edge133
  %indvars.iv152 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next153, %._crit_edge133 ] ; 2 uses
  %.val77 = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.val77, i64 %indvars.iv152 ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4      ; 4 uses
  %.val71129 = load i32, ptr %i.bf, align 4, !tbaa !28 ; 2 uses
  %i.bg = icmp slt i32 %.val71129, 2
  br i1 %i.bg, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.pre.pre = load ptr, ptr %i.bh, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph132, %Vec_IntPush.exit
  %.pre = phi ptr [ %.pre.pre, %.lr.ph132 ], [ %.pre175, %Vec_IntPush.exit ] ; 3 uses
  %.val71130 = phi i32 [ %.val71129, %.lr.ph132 ], [ %.val71, %Vec_IntPush.exit ] ; 3 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !26
  %i.bj = icmp eq i32 %.val71130, %i.bi
  br i1 %i.bj, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %.pre, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre, i64 noundef 64) #25
  %.pre168.pre = load i32, ptr %i.bf, align 4, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.f, %bb.g
  %.pre168 = phi i32 [ %.pre168.pre, %bb.f ], [ %.val71130, %bb.g ]
  %i.bm = phi ptr [ %i.bk, %bb.f ], [ %i.bl, %bb.g ] ; 2 uses
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !27
  store i32 16, ptr %i.be, align 8, !tbaa !26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %Vec_IntGrow.exit11.sink.split.i
  %.pre175 = phi ptr [ %.pre, %bb.d ], [ %i.bm, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bn = phi i32 [ %.val71130, %bb.d ], [ %.pre168, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bf, align 4, !tbaa !28
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %.pre175, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !8
  %.val71 = load i32, ptr %i.bf, align 4, !tbaa !28 ; 2 uses
  %i.br = icmp slt i32 %.val71, 2
  br i1 %i.br, label %bb.d, label %._crit_edge133, !llvm.loop !184

._crit_edge133:                                   ; preds = %Vec_IntPush.exit, %bb.c
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge136, label %bb.c, !llvm.loop !185

._crit_edge136.thread:                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !28
  %i.bt = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  br label %bb.y

._crit_edge136:                                   ; preds = %._crit_edge133
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !28
  %i.bv = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.bw = getelementptr i8, ptr %1, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %wide.trip.count164 = zext nneg i32 %.val75 to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge136, %Vec_IntPush.exit97
  %indvars.iv159 = phi i64 [ 0, %._crit_edge136 ], [ %indvars.iv.next160, %Vec_IntPush.exit97 ] ; 2 uses
  %indvars.iv157 = phi i64 [ 0, %._crit_edge136 ], [ %indvars.iv.next158, %Vec_IntPush.exit97 ] ; 7 uses
  %storemerge119145 = phi ptr [ %i.bv, %._crit_edge136 ], [ %storemerge119146, %Vec_IntPush.exit97 ] ; 6 uses
  %spec.select.sink.i94143 = phi i32 [ 100, %._crit_edge136 ], [ %spec.select.sink.i94142, %Vec_IntPush.exit97 ] ; 3 uses
  %.val76 = load ptr, ptr %i.bw, align 8, !tbaa !159
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.val76, i64 %indvars.iv159
  %i.bz = getelementptr i8, ptr %i.by, i64 8      ; 2 uses
  %.val68 = load ptr, ptr %i.bz, align 8, !tbaa !27 ; 3 uses
  %i.ca = load i32, ptr %.val68, align 4, !tbaa !8
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !28 ; 7 uses
  %i.cc = load i32, ptr %2, align 8, !tbaa !26
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.i, label %.Vec_IntPush.exit89_crit_edge

.Vec_IntPush.exit89_crit_edge:                    ; preds = %bb.h
  %.pre169 = load ptr, ptr %i.bx, align 8, !tbaa !27
  br label %Vec_IntPush.exit89

bb.i:                                             ; preds = %bb.h
  %i.ce = icmp slt i32 %i.cb, 16
  br i1 %i.ce, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i87 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i85

bb.l:                                             ; preds = %bb.j
  %i.ch = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i85

bb.m:                                             ; preds = %bb.i
  %i.ci = icmp samesign ult i32 %i.cb, 1073741823
  %i.cj = shl nuw nsw i32 %i.cb, 1
  %spec.select.i82 = select i1 %i.ci, i32 %i.cj, i32 2147483647 ; 4 uses
  %.not.i9.i83 = icmp samesign ult i32 %i.cb, %spec.select.i82
  %.pre170 = load ptr, ptr %i.bx, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i83, label %bb.n, label %Vec_IntPush.exit89

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i84 = icmp eq ptr %.pre170, null
  %i.ck = zext nneg i32 %spec.select.i82 to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2                ; 2 uses
  br i1 %.not9.i10.i84, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = tail call ptr @realloc(ptr noundef nonnull %.pre170, i64 noundef %i.cl) #25
  br label %Vec_IntGrow.exit11.sink.split.i85

bb.p:                                             ; preds = %bb.n
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cl) #26
  br label %Vec_IntGrow.exit11.sink.split.i85

Vec_IntGrow.exit11.sink.split.i85:                ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %i.co = phi ptr [ %i.ch, %bb.l ], [ %i.cg, %bb.k ], [ %i.cm, %bb.o ], [ %i.cn, %bb.p ] ; 2 uses
  %spec.select.sink.i86 = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i82, %bb.o ], [ %spec.select.i82, %bb.p ]
  store ptr %i.co, ptr %i.bx, align 8, !tbaa !27
  store i32 %spec.select.sink.i86, ptr %2, align 8, !tbaa !26
  %.pre171 = load i32, ptr %i.bu, align 4, !tbaa !28
  %.val67.pre = load ptr, ptr %i.bz, align 8, !tbaa !27
  br label %Vec_IntPush.exit89

Vec_IntPush.exit89:                               ; preds = %.Vec_IntPush.exit89_crit_edge, %bb.m, %Vec_IntGrow.exit11.sink.split.i85
  %.val67 = phi ptr [ %.val68, %.Vec_IntPush.exit89_crit_edge ], [ %.val68, %bb.m ], [ %.val67.pre, %Vec_IntGrow.exit11.sink.split.i85 ]
  %i.cp = phi i32 [ %i.cb, %.Vec_IntPush.exit89_crit_edge ], [ %i.cb, %bb.m ], [ %.pre171, %Vec_IntGrow.exit11.sink.split.i85 ] ; 2 uses
  %i.cq = phi ptr [ %.pre169, %.Vec_IntPush.exit89_crit_edge ], [ %.pre170, %bb.m ], [ %i.co, %Vec_IntGrow.exit11.sink.split.i85 ]
  %i.cr = add nsw i32 %i.cp, 1
  store i32 %i.cr, ptr %i.bu, align 4, !tbaa !28
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs
  store i32 %i.ca, ptr %i.ct, align 4, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.val67, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = trunc nsw i64 %indvars.iv157 to i32
  %i.cx = icmp eq i32 %spec.select.sink.i94143, %i.cw
  br i1 %i.cx, label %bb.q, label %Vec_IntPush.exit97

bb.q:                                             ; preds = %Vec_IntPush.exit89
  %i.cy = icmp samesign ult i64 %indvars.iv157, 16
  br i1 %i.cy, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i95 = icmp eq ptr %storemerge119145, null
  br i1 %.not9.i.i95, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge119145, i64 noundef 64) #25
  br label %Vec_IntPush.exit97

bb.t:                                             ; preds = %bb.r
  %i.da = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit97

bb.u:                                             ; preds = %bb.q
  %i.db = icmp samesign ult i64 %indvars.iv157, 1073741823
  %indvars.iv157.tr = trunc i64 %indvars.iv157 to i32
  %i.dc = shl i32 %indvars.iv157.tr, 1
  %spec.select.i90 = select i1 %i.db, i32 %i.dc, i32 2147483647 ; 4 uses
  %i.dd = sext i32 %spec.select.i90 to i64
  %.not.i9.i91 = icmp samesign ult i64 %indvars.iv157, %i.dd
  br i1 %.not.i9.i91, label %bb.v, label %Vec_IntPush.exit97

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i92 = icmp eq ptr %storemerge119145, null
  %i.de = zext nneg i32 %spec.select.i90 to i64
  %i.df = shl nuw nsw i64 %i.de, 2                ; 2 uses
  br i1 %.not9.i10.i92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = tail call ptr @realloc(ptr noundef nonnull %storemerge119145, i64 noundef %i.df) #25
  br label %Vec_IntPush.exit97

bb.x:                                             ; preds = %bb.v
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.df) #26
  br label %Vec_IntPush.exit97

Vec_IntPush.exit97:                               ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %Vec_IntPush.exit89, %bb.u
  %storemerge119146 = phi ptr [ %storemerge119145, %Vec_IntPush.exit89 ], [ %storemerge119145, %bb.u ], [ %i.da, %bb.t ], [ %i.cz, %bb.s ], [ %i.dg, %bb.w ], [ %i.dh, %bb.x ] ; 3 uses
  %spec.select.sink.i94142 = phi i32 [ %spec.select.sink.i94143, %Vec_IntPush.exit89 ], [ %spec.select.sink.i94143, %bb.u ], [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i90, %bb.w ], [ %spec.select.i90, %bb.x ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %storemerge119146, i64 %indvars.iv157
  store i32 %i.cv, ptr %i.di, align 4, !tbaa !8
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge140, label %bb.h, !llvm.loop !186

._crit_edge140:                                   ; preds = %Vec_IntPush.exit97
  %i.dj = trunc nsw i64 %indvars.iv.next158 to i32
  %.pre173 = load i32, ptr %i.bu, align 4, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge136.thread, %._crit_edge140
  %i.dk = phi ptr [ %i.bu, %._crit_edge140 ], [ %i.bs, %._crit_edge136.thread ] ; 3 uses
  %i.dl = phi ptr [ %storemerge119146, %._crit_edge140 ], [ %i.bt, %._crit_edge136.thread ] ; 6 uses
  %i.dm = phi i32 [ %spec.select.sink.i94142, %._crit_edge140 ], [ 100, %._crit_edge136.thread ] ; 5 uses
  %i.dn = phi i32 [ %i.dj, %._crit_edge140 ], [ 0, %._crit_edge136.thread ] ; 2 uses
  %i.do = phi i32 [ %.pre173, %._crit_edge140 ], [ 0, %._crit_edge136.thread ] ; 7 uses
  %i.dp = load i32, ptr %2, align 8, !tbaa !26
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.z, label %Vec_IntPush.exit105

bb.z:                                             ; preds = %bb.y
  %i.dr = icmp slt i32 %i.do, 16
  br i1 %i.dr, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i103 = icmp eq ptr %i.dt, null
  br i1 %.not9.i.i103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i104

bb.ac:                                            ; preds = %bb.aa
  %i.dv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i104

Vec_IntGrow.exit.i104:                            ; preds = %bb.ac, %bb.ab
  %i.dw = phi ptr [ %i.du, %bb.ab ], [ %i.dv, %bb.ac ]
  store ptr %i.dw, ptr %i.ds, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i101

bb.ad:                                            ; preds = %bb.z
  %i.dx = icmp samesign ult i32 %i.do, 1073741823
  %i.dy = shl nuw nsw i32 %i.do, 1
  %spec.select.i98 = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 3 uses
  %.not.i9.i99 = icmp samesign ult i32 %i.do, %spec.select.i98
  br i1 %.not.i9.i99, label %bb.ae, label %Vec_IntPush.exit105

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i100 = icmp eq ptr %i.ea, null
  %i.eb = zext nneg i32 %spec.select.i98 to i64
  %i.ec = shl nuw nsw i64 %i.eb, 2                ; 2 uses
  br i1 %.not9.i10.i100, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = tail call ptr @realloc(ptr noundef nonnull %i.ea, i64 noundef %i.ec) #25
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ee = tail call noalias ptr @malloc(i64 noundef %i.ec) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ef = phi ptr [ %i.ed, %bb.af ], [ %i.ee, %bb.ag ]
  store ptr %i.ef, ptr %i.dz, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i101

Vec_IntGrow.exit11.sink.split.i101:               ; preds = %bb.ah, %Vec_IntGrow.exit.i104
  %spec.select.sink.i102 = phi i32 [ %spec.select.i98, %bb.ah ], [ 16, %Vec_IntGrow.exit.i104 ]
  store i32 %spec.select.sink.i102, ptr %2, align 8, !tbaa !26
  %.pre174 = load i32, ptr %i.dk, align 4, !tbaa !28
  br label %Vec_IntPush.exit105

Vec_IntPush.exit105:                              ; preds = %bb.y, %bb.ad, %Vec_IntGrow.exit11.sink.split.i101
  %i.eg = phi i32 [ %i.do, %bb.y ], [ %i.do, %bb.ad ], [ %.pre174, %Vec_IntGrow.exit11.sink.split.i101 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !27
  %i.ej = add nsw i32 %i.eg, 1
  store i32 %i.ej, ptr %i.dk, align 4, !tbaa !28
  %i.ek = sext i32 %i.eg to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ek
  store i32 0, ptr %i.el, align 4, !tbaa !8
  %i.em = icmp eq i32 %i.dn, %i.dm
  br i1 %i.em, label %bb.ai, label %Vec_IntPush.exit113

bb.ai:                                            ; preds = %Vec_IntPush.exit105
  %i.en = icmp slt i32 %i.dm, 16
  br i1 %i.en, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not9.i.i111 = icmp eq ptr %i.dl, null
  br i1 %.not9.i.i111, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef 64) #25
  br label %Vec_IntPush.exit113

bb.al:                                            ; preds = %bb.aj
  %i.ep = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit113

bb.am:                                            ; preds = %bb.ai
  %i.eq = icmp samesign ult i32 %i.dm, 1073741823
  %i.er = shl nuw nsw i32 %i.dm, 1
  %spec.select.i106 = select i1 %i.eq, i32 %i.er, i32 2147483647 ; 2 uses
  %.not.i9.i107 = icmp samesign ult i32 %i.dm, %spec.select.i106
  br i1 %.not.i9.i107, label %bb.an, label %Vec_IntPush.exit113

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i108 = icmp eq ptr %i.dl, null
  %i.es = zext nneg i32 %spec.select.i106 to i64
  %i.et = shl nuw nsw i64 %i.es, 2                ; 2 uses
  br i1 %.not9.i10.i108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = tail call ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef %i.et) #25
  br label %Vec_IntPush.exit113

bb.ap:                                            ; preds = %bb.an
  %i.ev = tail call noalias ptr @malloc(i64 noundef %i.et) #26
  br label %Vec_IntPush.exit113

Vec_IntPush.exit113:                              ; preds = %bb.al, %bb.ak, %bb.ap, %bb.ao, %Vec_IntPush.exit105, %bb.am
  %i.ew = phi ptr [ %i.dl, %Vec_IntPush.exit105 ], [ %i.dl, %bb.am ], [ %i.ep, %bb.al ], [ %i.eo, %bb.ak ], [ %i.eu, %bb.ao ], [ %i.ev, %bb.ap ] ; 4 uses
  %i.ex = sext i32 %i.dn to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ex
  store i32 0, ptr %i.ey, align 4, !tbaa !8
  %.not = icmp eq i32 %4, 0
  %.val63 = load ptr, ptr %i.eh, align 8, !tbaa !27 ; 2 uses
  %.val69 = load i32, ptr %i.dk, align 4, !tbaa !28 ; 3 uses
  br i1 %.not, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %Vec_IntPush.exit113
  tail call void @Wlc_BlastAdderCLA(ptr noundef %0, ptr noundef %.val63, ptr noundef nonnull %i.ew, i32 noundef %.val69, i32 noundef %3, i32 noundef 0)
  br label %Vec_IntFree.exit

bb.ar:                                            ; preds = %Vec_IntPush.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.ez = icmp sgt i32 %.val69, 0
  br i1 %i.ez, label %.lr.ph.preheader.i, label %Wlc_BlastAdder.exit

.lr.ph.preheader.i:                               ; preds = %bb.ar
  %wide.trip.count.i = zext nneg i32 %.val69 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val63, i64 %indvars.iv.i ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !8
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !8
  call void @Wlc_BlastFullAdder(ptr noundef %0, i32 noundef %i.fb, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fa)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Wlc_BlastAdder.exit, label %.lr.ph.i, !llvm.loop !72

Wlc_BlastAdder.exit:                              ; preds = %.lr.ph.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Wlc_BlastAdder.exit, %bb.aq
  tail call void @free(ptr noundef nonnull %i.ew) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastMultiplier3(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, i32 noundef %9) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %4, %3                       ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 11 uses
end_hunk_0
begin_hunk_1_@Wlc_NtkBitBlast:bb.a
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i.i3067 = icmp eq ptr %i.aid, null
  %i.aie = zext nneg i32 %spec.select.i.i3065 to i64
  %i.aif = shl nuw nsw i64 %i.aie, 2              ; 2 uses
  br i1 %.not9.i10.i.i3067, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aig = tail call ptr @realloc(ptr noundef nonnull %i.aid, i64 noundef %i.aif) #25
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.aih = tail call noalias ptr @malloc(i64 noundef %i.aif) #26
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.aii = phi ptr [ %i.aig, %bb.ds ], [ %i.aih, %bb.dt ]
  store ptr %i.aii, ptr %i.aic, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i3068

Vec_IntGrow.exit11.sink.split.i.i3068:            ; preds = %bb.du, %Vec_IntGrow.exit.i.i3072
  %spec.select.sink.i.i3069 = phi i32 [ %spec.select.i.i3065, %bb.du ], [ 16, %Vec_IntGrow.exit.i.i3072 ]
  store i32 %spec.select.sink.i.i3069, ptr %i.ahp, align 8, !tbaa !26
  %.pre.i3070 = load i32, ptr %i.ahq, align 4, !tbaa !28
  br label %Gia_ManAppendCi.exit

Gia_ManAppendCi.exit:                             ; preds = %.lr.ph5194, %bb.dq, %Vec_IntGrow.exit11.sink.split.i.i3068
  %i.aij = phi i32 [ %i.ahr, %.lr.ph5194 ], [ %i.ahr, %bb.dq ], [ %.pre.i3070, %Vec_IntGrow.exit11.sink.split.i.i3068 ] ; 2 uses
  %i.aik = ptrtoint ptr %i.ahf to i64
  %i.ail = ptrtoint ptr %.val11.i to i64
  %i.aim = sub i64 %i.aik, %i.ail
  %i.ain = sdiv exact i64 %i.aim, 12
  %i.aio = trunc i64 %i.ain to i32
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !27
  %i.air = add nsw i32 %i.aij, 1
  store i32 %i.air, ptr %i.ahq, align 4, !tbaa !28
  %i.ais = sext i32 %i.aij to i64
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aiq, i64 %i.ais
  store i32 %i.aio, ptr %i.ait, align 4, !tbaa !8
  %i.aiu = add nsw i32 %.522955192, 1             ; 2 uses
  %i.aiv = icmp slt i32 %i.aiu, %i.xz
  br i1 %i.aiv, label %.lr.ph5194, label %._crit_edge5195, !llvm.loop !244

._crit_edge5195:                                  ; preds = %Gia_ManAppendCi.exit, %._crit_edge5191
  store i32 0, ptr %i.bp, align 4, !tbaa !28
  br i1 %i.zv, label %.lr.ph5198.preheader, label %._crit_edge5199

.lr.ph5198.preheader:                             ; preds = %._crit_edge5195
  %wide.trip.count5585 = zext nneg i32 %i.ws to i64
  br label %.lr.ph5198

.lr.ph5198:                                       ; preds = %.lr.ph5198.preheader, %Vec_IntPush.exit3080
  %indvars.iv5582 = phi i64 [ 0, %.lr.ph5198.preheader ], [ %indvars.iv.next5583, %Vec_IntPush.exit3080 ] ; 2 uses
  %.12230.val2924 = load ptr, ptr %i.rw, align 8, !tbaa !160 ; 2 uses
  %.12230.val2925 = load ptr, ptr %i.rv, align 8, !tbaa !166
  %i.aiw = getelementptr i8, ptr %.12230.val2925, i64 8
  %.12230.val2925.val = load ptr, ptr %i.aiw, align 8, !tbaa !27
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.12230.val2925.val, i64 %indvars.iv5582
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !8
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [12 x i8], ptr %.12230.val2924, i64 %i.aiz
  %i.ajb = ptrtoint ptr %i.aja to i64             ; 2 uses
  %i.ajc = and i64 %i.ajb, -2
  %i.ajd = ptrtoint ptr %.12230.val2924 to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  %i.ajf = sdiv exact i64 %i.aje, 12
  %i.ajg = trunc i64 %i.ajf to i32
  %i.ajh = trunc i64 %i.ajb to i32
  %i.aji = and i32 %i.ajh, 1
  %i.ajj = shl nsw i32 %i.ajg, 1
  %i.ajk = or disjoint i32 %i.ajj, %i.aji
  %i.ajl = load i32, ptr %i.bp, align 4, !tbaa !28 ; 7 uses
  %i.ajm = load i32, ptr %i.bo, align 8, !tbaa !26
  %i.ajn = icmp eq i32 %i.ajl, %i.ajm
  br i1 %i.ajn, label %bb.dv, label %.lr.ph5198.Vec_IntPush.exit3080_crit_edge

.lr.ph5198.Vec_IntPush.exit3080_crit_edge:        ; preds = %.lr.ph5198
  %.pre5904 = load ptr, ptr %i.br, align 8, !tbaa !27
  br label %Vec_IntPush.exit3080

bb.dv:                                            ; preds = %.lr.ph5198
  %i.ajo = icmp slt i32 %i.ajl, 16
  br i1 %i.ajo, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.ajp = load ptr, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i3078 = icmp eq ptr %i.ajp, null
  br i1 %.not9.i.i3078, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ajq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ajp, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3076

bb.dy:                                            ; preds = %bb.dw
  %i.ajr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3076

bb.dz:                                            ; preds = %bb.dv
  %i.ajs = icmp samesign ult i32 %i.ajl, 1073741823
  %i.ajt = shl nuw nsw i32 %i.ajl, 1
  %spec.select.i3073 = select i1 %i.ajs, i32 %i.ajt, i32 2147483647 ; 4 uses
  %.not.i9.i3074 = icmp samesign ult i32 %i.ajl, %spec.select.i3073
  %.pre5905 = load ptr, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i3074, label %bb.ea, label %Vec_IntPush.exit3080

bb.ea:                                            ; preds = %bb.dz
  %.not9.i10.i3075 = icmp eq ptr %.pre5905, null
  %i.aju = zext nneg i32 %spec.select.i3073 to i64
  %i.ajv = shl nuw nsw i64 %i.aju, 2              ; 2 uses
  br i1 %.not9.i10.i3075, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ajw = tail call ptr @realloc(ptr noundef nonnull %.pre5905, i64 noundef %i.ajv) #25
  br label %Vec_IntGrow.exit11.sink.split.i3076

bb.ec:                                            ; preds = %bb.ea
  %i.ajx = tail call noalias ptr @malloc(i64 noundef %i.ajv) #26
  br label %Vec_IntGrow.exit11.sink.split.i3076

Vec_IntGrow.exit11.sink.split.i3076:              ; preds = %bb.eb, %bb.ec, %bb.dx, %bb.dy
  %storemerge4958 = phi ptr [ %i.ajr, %bb.dy ], [ %i.ajq, %bb.dx ], [ %i.ajw, %bb.eb ], [ %i.ajx, %bb.ec ] ; 2 uses
  %spec.select.sink.i3077 = phi i32 [ 16, %bb.dy ], [ 16, %bb.dx ], [ %spec.select.i3073, %bb.eb ], [ %spec.select.i3073, %bb.ec ]
  store ptr %storemerge4958, ptr %i.br, align 8, !tbaa !27
  store i32 %spec.select.sink.i3077, ptr %i.bo, align 8, !tbaa !26
  %.pre5906 = load i32, ptr %i.bp, align 4, !tbaa !28
  br label %Vec_IntPush.exit3080

Vec_IntPush.exit3080:                             ; preds = %.lr.ph5198.Vec_IntPush.exit3080_crit_edge, %bb.dz, %Vec_IntGrow.exit11.sink.split.i3076
  %i.ajy = phi i32 [ %i.ajl, %.lr.ph5198.Vec_IntPush.exit3080_crit_edge ], [ %i.ajl, %bb.dz ], [ %.pre5906, %Vec_IntGrow.exit11.sink.split.i3076 ] ; 2 uses
  %i.ajz = phi ptr [ %.pre5904, %.lr.ph5198.Vec_IntPush.exit3080_crit_edge ], [ %.pre5905, %bb.dz ], [ %storemerge4958, %Vec_IntGrow.exit11.sink.split.i3076 ]
  %i.aka = add nsw i32 %i.ajy, 1
  store i32 %i.aka, ptr %i.bp, align 4, !tbaa !28
  %i.akb = sext i32 %i.ajy to i64
  %i.akc = getelementptr inbounds [4 x i8], ptr %i.ajz, i64 %i.akb
  store i32 %i.ajk, ptr %i.akc, align 4, !tbaa !8
  %indvars.iv.next5583 = add nuw nsw i64 %indvars.iv5582, 1 ; 2 uses
  %exitcond5586.not = icmp eq i64 %indvars.iv.next5583, %wide.trip.count5585
  br i1 %exitcond5586.not, label %._crit_edge5199, label %.lr.ph5198, !llvm.loop !245

._crit_edge5199:                                  ; preds = %Vec_IntPush.exit3080, %._crit_edge5195
  store i32 0, ptr %i.bt, align 4, !tbaa !28
  br i1 %i.zw, label %.lr.ph5202, label %bb.em

.lr.ph5202:                                       ; preds = %._crit_edge5199
  %i.akd = sext i32 %i.ws to i64
  %wide.trip.count5594 = zext nneg i32 %i.wr to i64
  %.pre5907 = load i32, ptr %i.bs, align 8, !tbaa !26
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph5202, %Vec_IntPush.exit3088
  %i.ake = phi i32 [ %.pre5907, %.lr.ph5202 ], [ %i.alj, %Vec_IntPush.exit3088 ] ; 3 uses
  %indvars.iv5589 = phi i64 [ 0, %.lr.ph5202 ], [ %indvars.iv.next5590, %Vec_IntPush.exit3088 ] ; 2 uses
  %indvars.iv5587 = phi i64 [ 0, %.lr.ph5202 ], [ %indvars.iv.next5588, %Vec_IntPush.exit3088 ] ; 7 uses
  %.12230.val2922 = load ptr, ptr %i.rw, align 8, !tbaa !160 ; 2 uses
  %.12230.val2923 = load ptr, ptr %i.rv, align 8, !tbaa !166
  %i.akf = getelementptr i8, ptr %.12230.val2923, i64 8
  %.12230.val2923.val = load ptr, ptr %i.akf, align 8, !tbaa !27
  %i.akg = getelementptr [4 x i8], ptr %.12230.val2923.val, i64 %indvars.iv5589
  %i.akh = getelementptr [4 x i8], ptr %i.akg, i64 %i.akd
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !8
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds [12 x i8], ptr %.12230.val2922, i64 %i.akj
  %i.akl = ptrtoint ptr %i.akk to i64             ; 2 uses
  %i.akm = and i64 %i.akl, -2
  %i.akn = ptrtoint ptr %.12230.val2922 to i64
  %i.ako = sub i64 %i.akm, %i.akn
  %i.akp = sdiv exact i64 %i.ako, 12
  %i.akq = trunc i64 %i.akp to i32
  %i.akr = trunc i64 %i.akl to i32
  %i.aks = and i32 %i.akr, 1
  %i.akt = shl nsw i32 %i.akq, 1
  %i.aku = or disjoint i32 %i.akt, %i.aks
  %i.akv = trunc nsw i64 %indvars.iv5587 to i32
  %i.akw = icmp eq i32 %i.ake, %i.akv
  br i1 %i.akw, label %bb.ee, label %.Vec_IntPush.exit3088_crit_edge

.Vec_IntPush.exit3088_crit_edge:                  ; preds = %bb.ed
  %.pre5908 = load ptr, ptr %i.bv, align 8, !tbaa !27
  br label %Vec_IntPush.exit3088

bb.ee:                                            ; preds = %bb.ed
  %i.akx = icmp samesign ult i64 %indvars.iv5587, 16
  br i1 %i.akx, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.aky = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i3086 = icmp eq ptr %i.aky, null
  br i1 %.not9.i.i3086, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.akz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aky, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3084

bb.eh:                                            ; preds = %bb.ef
  %i.ala = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3084

bb.ei:                                            ; preds = %bb.ee
  %i.alb = icmp samesign ult i64 %indvars.iv5587, 1073741823
  %indvars.iv5587.tr = trunc i64 %indvars.iv5587 to i32
  %i.alc = shl i32 %indvars.iv5587.tr, 1
  %spec.select.i3081 = select i1 %i.alb, i32 %i.alc, i32 2147483647 ; 4 uses
  %i.ald = sext i32 %spec.select.i3081 to i64
  %.not.i9.i3082 = icmp samesign ult i64 %indvars.iv5587, %i.ald
  %.pre5909 = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i3082, label %bb.ej, label %Vec_IntPush.exit3088

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i3083 = icmp eq ptr %.pre5909, null
  %i.ale = zext nneg i32 %spec.select.i3081 to i64
  %i.alf = shl nuw nsw i64 %i.ale, 2              ; 2 uses
  br i1 %.not9.i10.i3083, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.alg = tail call ptr @realloc(ptr noundef nonnull %.pre5909, i64 noundef %i.alf) #25
  br label %Vec_IntGrow.exit11.sink.split.i3084

bb.el:                                            ; preds = %bb.ej
  %i.alh = tail call noalias ptr @malloc(i64 noundef %i.alf) #26
  br label %Vec_IntGrow.exit11.sink.split.i3084

Vec_IntGrow.exit11.sink.split.i3084:              ; preds = %bb.ek, %bb.el, %bb.eg, %bb.eh
  %storemerge4957 = phi ptr [ %i.ala, %bb.eh ], [ %i.akz, %bb.eg ], [ %i.alg, %bb.ek ], [ %i.alh, %bb.el ] ; 2 uses
  %spec.select.sink.i3085 = phi i32 [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i3081, %bb.ek ], [ %spec.select.i3081, %bb.el ] ; 2 uses
  store ptr %storemerge4957, ptr %i.bv, align 8, !tbaa !27
  store i32 %spec.select.sink.i3085, ptr %i.bs, align 8, !tbaa !26
  br label %Vec_IntPush.exit3088

Vec_IntPush.exit3088:                             ; preds = %.Vec_IntPush.exit3088_crit_edge, %bb.ei, %Vec_IntGrow.exit11.sink.split.i3084
  %i.ali = phi ptr [ %.pre5908, %.Vec_IntPush.exit3088_crit_edge ], [ %.pre5909, %bb.ei ], [ %storemerge4957, %Vec_IntGrow.exit11.sink.split.i3084 ]
  %i.alj = phi i32 [ %i.ake, %.Vec_IntPush.exit3088_crit_edge ], [ %i.ake, %bb.ei ], [ %spec.select.sink.i3085, %Vec_IntGrow.exit11.sink.split.i3084 ]
  %indvars.iv.next5588 = add nuw nsw i64 %indvars.iv5587, 1 ; 2 uses
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv5587
  store i32 %i.aku, ptr %i.alk, align 4, !tbaa !8
  %indvars.iv.next5590 = add nuw nsw i64 %indvars.iv5589, 1 ; 2 uses
  %exitcond5595.not = icmp eq i64 %indvars.iv.next5590, %wide.trip.count5594
  br i1 %exitcond5595.not, label %._crit_edge5203, label %bb.ed, !llvm.loop !246

._crit_edge5203:                                  ; preds = %Vec_IntPush.exit3088
  %i.all = trunc nsw i64 %indvars.iv.next5588 to i32
  store i32 %i.all, ptr %i.bt, align 4, !tbaa !28
  br label %bb.em

bb.em:                                            ; preds = %._crit_edge5203, %._crit_edge5199
  %i.alm = icmp eq i32 %spec.select, 1
  br i1 %i.alm, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %.12230.val2920 = load ptr, ptr %i.rw, align 8, !tbaa !160 ; 2 uses
  %.12230.val2921 = load ptr, ptr %i.rv, align 8, !tbaa !166
  %i.aln = getelementptr i8, ptr %.12230.val2921, i64 8
  %.12230.val2921.val = load ptr, ptr %i.aln, align 8, !tbaa !27
  %i.alo = sext i32 %i.xy to i64
  %i.alp = getelementptr inbounds [4 x i8], ptr %.12230.val2921.val, i64 %i.alo
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !8
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [12 x i8], ptr %.12230.val2920, i64 %i.alr
  %i.alt = ptrtoint ptr %i.als to i64             ; 2 uses
  %i.alu = and i64 %i.alt, -2
  %i.alv = ptrtoint ptr %.12230.val2920 to i64
  %i.alw = sub i64 %i.alu, %i.alv
  %i.alx = sdiv exact i64 %i.alw, 12
  %i.aly = trunc i64 %i.alx to i32
  %i.alz = trunc i64 %i.alt to i32
  %i.ama = and i32 %i.alz, 1
  %i.amb = shl nsw i32 %i.aly, 1
  %i.amc = or disjoint i32 %i.amb, %i.ama
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.02246 = phi i32 [ %i.amc, %bb.en ], [ 0, %bb.em ]
  %.val2742 = load ptr, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %.val2741 = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %i.amd = load i16, ptr %i.sj, align 8           ; 3 uses
  %i.ame = and i16 %i.amd, 63                     ; 3 uses
  %.off = add nsw i16 %i.ame, -43
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.ep, label %bb.ez

bb.ep:                                            ; preds = %bb.eo
  %i.amf = tail call noundef i32 @llvm.smax.i32(i32 %i.ws, i32 %i.wr)
  %i.amg = tail call noundef i32 @llvm.smax.i32(i32 %i.sr, i32 %i.amf) ; 2 uses
  %i.amh = load i32, ptr %i.rx, align 8, !tbaa !209
  %.not.i3089 = icmp eq i32 %i.amh, 0
  br i1 %.not.i3089, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ami = lshr i16 %i.amd, 6
  %i.amj = and i16 %i.ami, 1
  br label %Wlc_ObjIsSignedFanin01.exit

bb.er:                                            ; preds = %bb.ep
  %i.amk = load i32, ptr %i.ss, align 4, !tbaa !210
  %i.aml = icmp ugt i32 %i.amk, 2
  %i.amm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 3 uses
  br i1 %i.aml, label %Wlc_ObjFanin0.exit.i, label %Wlc_ObjFanin0.exit.thread.i

Wlc_ObjFanin0.exit.i:                             ; preds = %bb.er
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !41 ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !8
  %.val.i.i = load ptr, ptr %i.rm, align 8, !tbaa !30 ; 2 uses
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.amp
  %i.amr = load i16, ptr %i.amq, align 8
  %i.ams = and i16 %i.amr, 64
  %.not6.i = icmp eq i16 %i.ams, 0
  br i1 %.not6.i, label %Wlc_ObjIsSignedFanin01.exit, label %Wlc_ObjFanin1.exit.i

Wlc_ObjFanin0.exit.thread.i:                      ; preds = %bb.er
  %i.amt = load i32, ptr %i.amm, align 8, !tbaa !8
  %.val.i9.i = load ptr, ptr %i.rm, align 8, !tbaa !30 ; 2 uses
  %i.amu = sext i32 %i.amt to i64
  %i.amv = getelementptr inbounds [24 x i8], ptr %.val.i9.i, i64 %i.amu
  %i.amw = load i16, ptr %i.amv, align 8
  %i.amx = and i16 %i.amw, 64
  %.not610.i = icmp eq i16 %i.amx, 0
  br i1 %.not610.i, label %Wlc_ObjIsSignedFanin01.exit, label %Wlc_ObjFanin1.exit.i

Wlc_ObjFanin1.exit.i:                             ; preds = %Wlc_ObjFanin0.exit.thread.i, %Wlc_ObjFanin0.exit.i
  %.val.i1113.i = phi ptr [ %.val.i.i, %Wlc_ObjFanin0.exit.i ], [ %.val.i9.i, %Wlc_ObjFanin0.exit.thread.i ]
  %i.amy = phi ptr [ %i.amn, %Wlc_ObjFanin0.exit.i ], [ %i.amm, %Wlc_ObjFanin0.exit.thread.i ]
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !8
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr inbounds [24 x i8], ptr %.val.i1113.i, i64 %i.anb
  %i.and = load i16, ptr %i.anc, align 8
  %i.ane = lshr i16 %i.and, 6
  %.lobit.i = and i16 %i.ane, 1
  br label %Wlc_ObjIsSignedFanin01.exit

Wlc_ObjIsSignedFanin01.exit:                      ; preds = %bb.eq, %Wlc_ObjFanin0.exit.i, %Wlc_ObjFanin0.exit.thread.i, %Wlc_ObjFanin1.exit.i
  %.shrunk.i = phi i16 [ %i.amj, %bb.eq ], [ 0, %Wlc_ObjFanin0.exit.i ], [ %.lobit.i, %Wlc_ObjFanin1.exit.i ], [ 0, %Wlc_ObjFanin0.exit.thread.i ]
  %i.anf = zext nneg i16 %.shrunk.i to i32
  %i.ang = tail call ptr @Wlc_VecLoadFanins(ptr noundef %i.ca, ptr noundef %.val2742, i32 noundef %i.ws, i32 noundef %i.amg, i32 noundef %i.anf) ; 2 uses
  %i.anh = load i32, ptr %i.rx, align 8, !tbaa !209
  %.not.i3092 = icmp eq i32 %i.anh, 0
  br i1 %.not.i3092, label %bb.et, label %bb.es

bb.es:                                            ; preds = %Wlc_ObjIsSignedFanin01.exit
  %.val.i3093 = load i16, ptr %i.sj, align 8
  %i.ani = lshr i16 %.val.i3093, 6
  %i.anj = and i16 %i.ani, 1
  br label %Wlc_ObjIsSignedFanin01.exit3112

bb.et:                                            ; preds = %Wlc_ObjIsSignedFanin01.exit
  %i.ank = load i32, ptr %i.ss, align 4, !tbaa !210
  %i.anl = icmp ugt i32 %i.ank, 2                 ; 2 uses
  br i1 %i.anl, label %Wlc_ObjFanin0.exit.i3095, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.anm = load i16, ptr %i.sj, align 8
  %i.ann = and i16 %i.anm, 63                     ; 2 uses
  switch i16 %i.ann, label %Wlc_ObjFanin0.exit.thread.i3109 [
    i16 6, label %Wlc_ObjFanin0.exit.i3095
    i16 22, label %Wlc_ObjFanin0.exit.i3095
  ]

Wlc_ObjFanin0.exit.i3095:                         ; preds = %bb.eu, %bb.eu, %bb.et
  %i.ano = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !41
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !8
  %.val.i.i3096 = load ptr, ptr %i.rm, align 8, !tbaa !30 ; 3 uses
  %i.anr = sext i32 %i.anq to i64
  %i.ans = getelementptr inbounds [24 x i8], ptr %.val.i.i3096, i64 %i.anr
  %i.ant = load i16, ptr %i.ans, align 8
  %i.anu = and i16 %i.ant, 64
  %.not6.i3097 = icmp eq i16 %i.anu, 0
  br i1 %.not6.i3097, label %Wlc_ObjIsSignedFanin01.exit3112, label %bb.ev

Wlc_ObjFanin0.exit.thread.i3109:                  ; preds = %bb.eu
  %i.anv = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.anw = load i32, ptr %i.anv, align 8, !tbaa !8
  %.val.i9.i3110 = load ptr, ptr %i.rm, align 8, !tbaa !30 ; 2 uses
  %i.anx = sext i32 %i.anw to i64
  %i.any = getelementptr inbounds [24 x i8], ptr %.val.i9.i3110, i64 %i.anx
  %i.anz = load i16, ptr %i.any, align 8
  %i.aoa = and i16 %i.anz, 64
  %.not610.i3111 = icmp eq i16 %i.aoa, 0
  br i1 %.not610.i3111, label %Wlc_ObjIsSignedFanin01.exit3112, label %.thread.i3101

bb.ev:                                            ; preds = %Wlc_ObjFanin0.exit.i3095
  br i1 %i.anl, label %Wlc_ObjHasArray.exit.thread.i.i.i7.i3104, label %..thread_crit_edge.i3098

..thread_crit_edge.i3098:                         ; preds = %bb.ev
  %.pre.i3099 = load i16, ptr %i.sj, align 8
  %.pre16.i3100 = and i16 %.pre.i3099, 63
  br label %.thread.i3101

.thread.i3101:                                    ; preds = %..thread_crit_edge.i3098, %Wlc_ObjFanin0.exit.thread.i3109
  %.pre-phi.i3102 = phi i16 [ %.pre16.i3100, %..thread_crit_edge.i3098 ], [ %i.ann, %Wlc_ObjFanin0.exit.thread.i3109 ]
  %.val.i1115.i3103 = phi ptr [ %.val.i.i3096, %..thread_crit_edge.i3098 ], [ %.val.i9.i3110, %Wlc_ObjFanin0.exit.thread.i3109 ] ; 3 uses
  switch i16 %.pre-phi.i3102, label %bb.ew [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i7.i3104
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i7.i3104
  ]

Wlc_ObjHasArray.exit.thread.i.i.i7.i3104:         ; preds = %.thread.i3101, %.thread.i3101, %bb.ev
  %.val.i1114.i3105 = phi ptr [ %.val.i1115.i3103, %.thread.i3101 ], [ %.val.i1115.i3103, %.thread.i3101 ], [ %.val.i.i3096, %bb.ev ]
  %i.aob = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !41
  br label %Wlc_ObjFanin1.exit.i3106
end_hunk_1
begin_hunk_2_@Wlc_NtkBitBlast:bb.a
  br label %Vec_IntPush.exit3318

Vec_IntPush.exit3318:                             ; preds = %Vec_IntGrow.exit11.sink.split.i3322, %bb.mc, %.Vec_IntPush.exit3326_crit_edge, %Vec_IntGrow.exit11.sink.split.i3314, %bb.lp, %.Vec_IntPush.exit3318_crit_edge
  %.sink6669 = phi i32 [ %.pre5996, %Vec_IntGrow.exit11.sink.split.i3314 ], [ %i.bnu, %.Vec_IntPush.exit3318_crit_edge ], [ %i.bnu, %bb.lp ], [ %i.boq, %.Vec_IntPush.exit3326_crit_edge ], [ %i.boq, %bb.mc ], [ %.pre5993, %Vec_IntGrow.exit11.sink.split.i3322 ] ; 2 uses
  %.sink6665 = phi ptr [ %storemerge5021, %Vec_IntGrow.exit11.sink.split.i3314 ], [ %.pre5994, %.Vec_IntPush.exit3318_crit_edge ], [ %.pre5995, %bb.lp ], [ %.pre5991, %.Vec_IntPush.exit3326_crit_edge ], [ %.pre5992, %bb.mc ], [ %storemerge5019, %Vec_IntGrow.exit11.sink.split.i3322 ]
  %.sink6663 = phi i32 [ %i.bnt, %Vec_IntGrow.exit11.sink.split.i3314 ], [ %i.bnt, %.Vec_IntPush.exit3318_crit_edge ], [ %i.bnt, %bb.lp ], [ %i.bop, %.Vec_IntPush.exit3326_crit_edge ], [ %i.bop, %bb.mc ], [ %i.bop, %Vec_IntGrow.exit11.sink.split.i3322 ]
  %i.bpd = add nsw i32 %.sink6669, 1
  store i32 %i.bpd, ptr %i.bp, align 4, !tbaa !28
  %i.bpe = sext i32 %.sink6669 to i64
  %i.bpf = getelementptr inbounds [4 x i8], ptr %.sink6665, i64 %i.bpe
  store i32 %.sink6663, ptr %i.bpf, align 4, !tbaa !8
  %indvars.iv.next5723 = add nuw nsw i64 %indvars.iv5722, 1 ; 2 uses
  %.val2877 = load i32, ptr %i.ss, align 4, !tbaa !210 ; 2 uses
  %i.bpg = sext i32 %.val2877 to i64
  %i.bph = icmp slt i64 %indvars.iv.next5723, %i.bpg
  br i1 %i.bph, label %.peel.next5726, label %.critedge25, !llvm.loop !268

.critedge25:                                      ; preds = %Vec_IntPush.exit3318, %bb.le
  br i1 %.not, label %.critedge25.cont.thread, label %.critedge25.cont

.critedge25.cont:                                 ; preds = %.critedge25
  %.else.val4605 = load i32, ptr %.sroa.gep4522, align 8, !tbaa !265
  %.not2614 = icmp eq i32 %.else.val4605, 0
  br i1 %.not2614, label %.critedge25.cont.thread, label %bb.mg

bb.mg:                                            ; preds = %.critedge25.cont
  %i.bpi = tail call i32 @Wlc_NtkMuxTree2(ptr noundef nonnull %i.ch, ptr poison, i32 poison, ptr noundef nonnull %i.bo, ptr noundef %i.bs, ptr noundef nonnull %i.bw) ; 3 uses
  %i.bpj = load i32, ptr %i.cb, align 4, !tbaa !28 ; 7 uses
  %i.bpk = load i32, ptr %i.ca, align 8, !tbaa !26
  %i.bpl = icmp eq i32 %i.bpj, %i.bpk
  br i1 %i.bpl, label %bb.mh, label %.Vec_IntPush.exit3334_crit_edge

.Vec_IntPush.exit3334_crit_edge:                  ; preds = %bb.mg
  %.pre5997 = load ptr, ptr %i.cd, align 8, !tbaa !27
  br label %Vec_IntPush.exit3334

bb.mh:                                            ; preds = %bb.mg
  %i.bpm = icmp slt i32 %i.bpj, 16
  br i1 %i.bpm, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  %i.bpn = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i3332 = icmp eq ptr %i.bpn, null
  br i1 %.not9.i.i3332, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bpo = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bpn, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3330

bb.mk:                                            ; preds = %bb.mi
  %i.bpp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3330

bb.ml:                                            ; preds = %bb.mh
  %i.bpq = icmp samesign ult i32 %i.bpj, 1073741823
  %i.bpr = shl nuw nsw i32 %i.bpj, 1
  %spec.select.i3327 = select i1 %i.bpq, i32 %i.bpr, i32 2147483647 ; 4 uses
  %.not.i9.i3328 = icmp samesign ult i32 %i.bpj, %spec.select.i3327
  %.pre5998 = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i3328, label %bb.mm, label %Vec_IntPush.exit3334

bb.mm:                                            ; preds = %bb.ml
  %.not9.i10.i3329 = icmp eq ptr %.pre5998, null
  %i.bps = zext nneg i32 %spec.select.i3327 to i64
  %i.bpt = shl nuw nsw i64 %i.bps, 2              ; 2 uses
  br i1 %.not9.i10.i3329, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bpu = tail call ptr @realloc(ptr noundef nonnull %.pre5998, i64 noundef %i.bpt) #25
  br label %Vec_IntGrow.exit11.sink.split.i3330

bb.mo:                                            ; preds = %bb.mm
  %i.bpv = tail call noalias ptr @malloc(i64 noundef %i.bpt) #26
  br label %Vec_IntGrow.exit11.sink.split.i3330

Vec_IntGrow.exit11.sink.split.i3330:              ; preds = %bb.mn, %bb.mo, %bb.mj, %bb.mk
  %storemerge5016 = phi ptr [ %i.bpp, %bb.mk ], [ %i.bpo, %bb.mj ], [ %i.bpu, %bb.mn ], [ %i.bpv, %bb.mo ] ; 2 uses
  %spec.select.sink.i3331 = phi i32 [ 16, %bb.mk ], [ 16, %bb.mj ], [ %spec.select.i3327, %bb.mn ], [ %spec.select.i3327, %bb.mo ]
  store ptr %storemerge5016, ptr %i.cd, align 8, !tbaa !27
  store i32 %spec.select.sink.i3331, ptr %i.ca, align 8, !tbaa !26
  %.pre5999 = load i32, ptr %i.cb, align 4, !tbaa !28
  br label %Vec_IntPush.exit3334

.critedge25.cont.thread:                          ; preds = %.critedge25, %.critedge25.cont
  %i.bpw = tail call i32 @Wlc_NtkMuxTree_rec(ptr noundef nonnull %i.ch, ptr noundef %i.wv, i32 noundef %i.ws, ptr noundef nonnull %i.bo, i32 noundef 0) ; 3 uses
  %i.bpx = load i32, ptr %i.cb, align 4, !tbaa !28 ; 7 uses
  %i.bpy = load i32, ptr %i.ca, align 8, !tbaa !26
  %i.bpz = icmp eq i32 %i.bpx, %i.bpy
  br i1 %i.bpz, label %bb.mp, label %.critedge25.cont.thread.Vec_IntPush.exit3342_crit_edge

.critedge25.cont.thread.Vec_IntPush.exit3342_crit_edge: ; preds = %.critedge25.cont.thread
  %.pre6000 = load ptr, ptr %i.cd, align 8, !tbaa !27
  br label %Vec_IntPush.exit3334

bb.mp:                                            ; preds = %.critedge25.cont.thread
  %i.bqa = icmp slt i32 %i.bpx, 16
  br i1 %i.bqa, label %bb.mq, label %bb.mt

bb.mq:                                            ; preds = %bb.mp
  %i.bqb = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i3340 = icmp eq ptr %i.bqb, null
  br i1 %.not9.i.i3340, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bqc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bqb, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3338

bb.ms:                                            ; preds = %bb.mq
  %i.bqd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3338

bb.mt:                                            ; preds = %bb.mp
  %i.bqe = icmp samesign ult i32 %i.bpx, 1073741823
  %i.bqf = shl nuw nsw i32 %i.bpx, 1
  %spec.select.i3335 = select i1 %i.bqe, i32 %i.bqf, i32 2147483647 ; 4 uses
  %.not.i9.i3336 = icmp samesign ult i32 %i.bpx, %spec.select.i3335
  %.pre6001 = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i3336, label %bb.mu, label %Vec_IntPush.exit3334

bb.mu:                                            ; preds = %bb.mt
  %.not9.i10.i3337 = icmp eq ptr %.pre6001, null
  %i.bqg = zext nneg i32 %spec.select.i3335 to i64
  %i.bqh = shl nuw nsw i64 %i.bqg, 2              ; 2 uses
  br i1 %.not9.i10.i3337, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bqi = tail call ptr @realloc(ptr noundef nonnull %.pre6001, i64 noundef %i.bqh) #25
  br label %Vec_IntGrow.exit11.sink.split.i3338

bb.mw:                                            ; preds = %bb.mu
  %i.bqj = tail call noalias ptr @malloc(i64 noundef %i.bqh) #26
  br label %Vec_IntGrow.exit11.sink.split.i3338

Vec_IntGrow.exit11.sink.split.i3338:              ; preds = %bb.mv, %bb.mw, %bb.mr, %bb.ms
  %storemerge5017 = phi ptr [ %i.bqd, %bb.ms ], [ %i.bqc, %bb.mr ], [ %i.bqi, %bb.mv ], [ %i.bqj, %bb.mw ] ; 2 uses
  %spec.select.sink.i3339 = phi i32 [ 16, %bb.ms ], [ 16, %bb.mr ], [ %spec.select.i3335, %bb.mv ], [ %spec.select.i3335, %bb.mw ]
  store ptr %storemerge5017, ptr %i.cd, align 8, !tbaa !27
  store i32 %spec.select.sink.i3339, ptr %i.ca, align 8, !tbaa !26
  %.pre6002 = load i32, ptr %i.cb, align 4, !tbaa !28
  br label %Vec_IntPush.exit3334

Vec_IntPush.exit3334:                             ; preds = %Vec_IntGrow.exit11.sink.split.i3338, %bb.mt, %.critedge25.cont.thread.Vec_IntPush.exit3342_crit_edge, %Vec_IntGrow.exit11.sink.split.i3330, %bb.ml, %.Vec_IntPush.exit3334_crit_edge
  %.sink6676 = phi i32 [ %.pre5999, %Vec_IntGrow.exit11.sink.split.i3330 ], [ %i.bpj, %.Vec_IntPush.exit3334_crit_edge ], [ %i.bpj, %bb.ml ], [ %i.bpx, %.critedge25.cont.thread.Vec_IntPush.exit3342_crit_edge ], [ %i.bpx, %bb.mt ], [ %.pre6002, %Vec_IntGrow.exit11.sink.split.i3338 ] ; 2 uses
  %.sink6672 = phi ptr [ %storemerge5016, %Vec_IntGrow.exit11.sink.split.i3330 ], [ %.pre5997, %.Vec_IntPush.exit3334_crit_edge ], [ %.pre5998, %bb.ml ], [ %.pre6000, %.critedge25.cont.thread.Vec_IntPush.exit3342_crit_edge ], [ %.pre6001, %bb.mt ], [ %storemerge5017, %Vec_IntGrow.exit11.sink.split.i3338 ]
  %.sink6670 = phi i32 [ %i.bpi, %Vec_IntGrow.exit11.sink.split.i3330 ], [ %i.bpi, %.Vec_IntPush.exit3334_crit_edge ], [ %i.bpi, %bb.ml ], [ %i.bpw, %.critedge25.cont.thread.Vec_IntPush.exit3342_crit_edge ], [ %i.bpw, %bb.mt ], [ %i.bpw, %Vec_IntGrow.exit11.sink.split.i3338 ]
  %i.bqk = add nsw i32 %.sink6676, 1
  store i32 %i.bqk, ptr %i.cb, align 4, !tbaa !28
  %i.bql = sext i32 %.sink6676 to i64
  %i.bqm = getelementptr inbounds [4 x i8], ptr %.sink6672, i64 %i.bql
  store i32 %.sink6670, ptr %i.bqm, align 4, !tbaa !8
  %indvars.iv.next5729 = add nuw nsw i64 %indvars.iv5728, 1 ; 2 uses
  %exitcond5732.not = icmp eq i64 %indvars.iv.next5729, %wide.trip.count5731
  br i1 %exitcond5732.not, label %.critedge31, label %bb.le, !llvm.loop !269

bb.mx:                                            ; preds = %bb.gx
  store i32 0, ptr %i.bt, align 4, !tbaa !28
  %i.bqn = icmp sgt i32 %i.ws, 0
  br i1 %i.bqn, label %.lr.ph5284, label %.preheader5088

.lr.ph5284:                                       ; preds = %bb.mx
  %.promoted5286 = load i32, ptr %i.bs, align 8, !tbaa !26
  %.promoted5289 = load ptr, ptr %i.bv, align 8, !tbaa !27
  %wide.trip.count5685 = zext nneg i32 %i.ws to i64
  br label %bb.my

.preheader5088:                                   ; preds = %Vec_IntPush.exit3350, %bb.mx
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %wide.trip.count5694 = zext i32 %i.sr to i64
  br label %bb.nh

bb.my:                                            ; preds = %.lr.ph5284, %Vec_IntPush.exit3350
  %indvars.iv5680 = phi i64 [ 0, %.lr.ph5284 ], [ %indvars.iv.next5681, %Vec_IntPush.exit3350 ] ; 2 uses
  %indvars.iv5678 = phi i64 [ 0, %.lr.ph5284 ], [ %indvars.iv.next5679, %Vec_IntPush.exit3350 ] ; 7 uses
  %storemerge50075290 = phi ptr [ %.promoted5289, %.lr.ph5284 ], [ %storemerge50075291, %Vec_IntPush.exit3350 ] ; 6 uses
  %spec.select.sink.i33475288 = phi i32 [ %.promoted5286, %.lr.ph5284 ], [ %spec.select.sink.i33475287, %Vec_IntPush.exit3350 ] ; 3 uses
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv5680
  %i.bqq = load i32, ptr %i.bqp, align 4, !tbaa !8
  %i.bqr = trunc nsw i64 %indvars.iv5678 to i32
  %i.bqs = icmp eq i32 %spec.select.sink.i33475288, %i.bqr
  br i1 %i.bqs, label %bb.mz, label %Vec_IntPush.exit3350

bb.mz:                                            ; preds = %bb.my
  %i.bqt = icmp samesign ult i64 %indvars.iv5678, 16
  br i1 %i.bqt, label %bb.na, label %bb.nd

bb.na:                                            ; preds = %bb.mz
  %.not9.i.i3348 = icmp eq ptr %storemerge50075290, null
  br i1 %.not9.i.i3348, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bqu = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge50075290, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3346

bb.nc:                                            ; preds = %bb.na
  %i.bqv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3346

bb.nd:                                            ; preds = %bb.mz
  %i.bqw = icmp samesign ult i64 %indvars.iv5678, 1073741823
  %indvars.iv5678.tr = trunc i64 %indvars.iv5678 to i32
  %i.bqx = shl i32 %indvars.iv5678.tr, 1
  %spec.select.i3343 = select i1 %i.bqw, i32 %i.bqx, i32 2147483647 ; 4 uses
  %i.bqy = sext i32 %spec.select.i3343 to i64
  %.not.i9.i3344 = icmp samesign ult i64 %indvars.iv5678, %i.bqy
  br i1 %.not.i9.i3344, label %bb.ne, label %Vec_IntPush.exit3350

bb.ne:                                            ; preds = %bb.nd
  %.not9.i10.i3345 = icmp eq ptr %storemerge50075290, null
  %i.bqz = zext nneg i32 %spec.select.i3343 to i64
  %i.bra = shl nuw nsw i64 %i.bqz, 2              ; 2 uses
  br i1 %.not9.i10.i3345, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.brb = tail call ptr @realloc(ptr noundef nonnull %storemerge50075290, i64 noundef %i.bra) #25
  br label %Vec_IntGrow.exit11.sink.split.i3346

bb.ng:                                            ; preds = %bb.ne
  %i.brc = tail call noalias ptr @malloc(i64 noundef %i.bra) #26
  br label %Vec_IntGrow.exit11.sink.split.i3346

Vec_IntGrow.exit11.sink.split.i3346:              ; preds = %bb.nf, %bb.ng, %bb.nb, %bb.nc
  %storemerge5007 = phi ptr [ %i.bqv, %bb.nc ], [ %i.bqu, %bb.nb ], [ %i.brb, %bb.nf ], [ %i.brc, %bb.ng ] ; 2 uses
  %spec.select.sink.i3347 = phi i32 [ 16, %bb.nc ], [ 16, %bb.nb ], [ %spec.select.i3343, %bb.nf ], [ %spec.select.i3343, %bb.ng ] ; 2 uses
  store ptr %storemerge5007, ptr %i.bv, align 8, !tbaa !27
  store i32 %spec.select.sink.i3347, ptr %i.bs, align 8, !tbaa !26
  br label %Vec_IntPush.exit3350

Vec_IntPush.exit3350:                             ; preds = %bb.my, %bb.nd, %Vec_IntGrow.exit11.sink.split.i3346
  %storemerge50075291 = phi ptr [ %storemerge50075290, %bb.my ], [ %storemerge50075290, %bb.nd ], [ %storemerge5007, %Vec_IntGrow.exit11.sink.split.i3346 ] ; 2 uses
  %spec.select.sink.i33475287 = phi i32 [ %spec.select.sink.i33475288, %bb.my ], [ %spec.select.sink.i33475288, %bb.nd ], [ %spec.select.sink.i3347, %Vec_IntGrow.exit11.sink.split.i3346 ]
  %indvars.iv.next5679 = add nuw nsw i64 %indvars.iv5678, 1 ; 2 uses
  %i.brd = trunc nsw i64 %indvars.iv.next5679 to i32
  store i32 %i.brd, ptr %i.bt, align 4, !tbaa !28
  %i.bre = getelementptr inbounds nuw [4 x i8], ptr %storemerge50075291, i64 %indvars.iv5678
  store i32 %i.bqq, ptr %i.bre, align 4, !tbaa !8
  %indvars.iv.next5681 = add nuw nsw i64 %indvars.iv5680, 1 ; 2 uses
  %exitcond5686.not = icmp eq i64 %indvars.iv.next5681, %wide.trip.count5685
  br i1 %exitcond5686.not, label %.preheader5088, label %bb.my, !llvm.loop !270

bb.nh:                                            ; preds = %.preheader5088, %Vec_IntPush.exit3368
  %indvars.iv5691 = phi i64 [ 0, %.preheader5088 ], [ %indvars.iv.next5692, %Vec_IntPush.exit3368 ] ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !28
  %.val28755292 = load i32, ptr %i.ss, align 4, !tbaa !210 ; 2 uses
  %or.cond6811 = icmp slt i32 %.val28755292, 2
  br i1 %or.cond6811, label %.critedge27, label %.peel.next

.peel.next:                                       ; preds = %bb.nh, %bb.nr
  %.val28755975 = phi i32 [ %.val2875.pre, %bb.nr ], [ %.val28755292, %bb.nh ]
  %indvars.iv5687 = phi i64 [ %indvars.iv.next5688, %bb.nr ], [ 1, %bb.nh ] ; 2 uses
  %i.brf = icmp ugt i32 %.val28755975, 2
  br i1 %i.brf, label %Wlc_ObjHasArray.exit.thread.i.i3351, label %bb.ni

bb.ni:                                            ; preds = %.peel.next
  %i.brg = load i16, ptr %i.sj, align 8
  %i.brh = and i16 %i.brg, 63
  switch i16 %i.brh, label %Wlc_ObjFaninId.exit3352 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i3351
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i3351
  ]

Wlc_ObjHasArray.exit.thread.i.i3351:              ; preds = %bb.ni, %bb.ni, %.peel.next
  %i.bri = load ptr, ptr %i.bqo, align 8, !tbaa !41
  br label %Wlc_ObjFaninId.exit3352

Wlc_ObjFaninId.exit3352:                          ; preds = %Wlc_ObjHasArray.exit.thread.i.i3351, %bb.ni
  %i.brj = phi ptr [ %i.bri, %Wlc_ObjHasArray.exit.thread.i.i3351 ], [ %i.bqo, %bb.ni ]
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %i.brj, i64 %indvars.iv5687
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !8
  %i.brm = sext i32 %i.brl to i64
  %.val2798 = load ptr, ptr %i.rq, align 8, !tbaa !27
  %i.brn = getelementptr inbounds [4 x i8], ptr %.val2798, i64 %i.brm
  %i.bro = load i32, ptr %i.brn, align 4, !tbaa !8
  %.val2816 = load ptr, ptr %i.rr, align 8, !tbaa !27
  %i.brp = sext i32 %i.bro to i64
  %i.brq = getelementptr inbounds [4 x i8], ptr %.val2816, i64 %i.brp
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %indvars.iv5691
  %i.brs = load i32, ptr %i.brr, align 4, !tbaa !8
  %i.brt = load i32, ptr %i.bp, align 4, !tbaa !28 ; 7 uses
  %i.bru = load i32, ptr %i.bo, align 8, !tbaa !26
  %i.brv = icmp eq i32 %i.brt, %i.bru
  br i1 %i.brv, label %bb.nj, label %.Vec_IntPush.exit3360_crit_edge

.Vec_IntPush.exit3360_crit_edge:                  ; preds = %Wlc_ObjFaninId.exit3352
  %.pre5972 = load ptr, ptr %i.br, align 8, !tbaa !27
  br label %bb.nr

bb.nj:                                            ; preds = %Wlc_ObjFaninId.exit3352
  %i.brw = icmp slt i32 %i.brt, 16
  br i1 %i.brw, label %bb.nk, label %bb.nn

bb.nk:                                            ; preds = %bb.nj
  %i.brx = load ptr, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i3358 = icmp eq ptr %i.brx, null
  br i1 %.not9.i.i3358, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bry = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.brx, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3356

bb.nm:                                            ; preds = %bb.nk
  %i.brz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3356

bb.nn:                                            ; preds = %bb.nj
  %i.bsa = icmp samesign ult i32 %i.brt, 1073741823
  %i.bsb = shl nuw nsw i32 %i.brt, 1
  %spec.select.i3353 = select i1 %i.bsa, i32 %i.bsb, i32 2147483647 ; 4 uses
  %.not.i9.i3354 = icmp samesign ult i32 %i.brt, %spec.select.i3353
  %.pre5973 = load ptr, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i3354, label %bb.no, label %bb.nr

bb.no:                                            ; preds = %bb.nn
  %.not9.i10.i3355 = icmp eq ptr %.pre5973, null
  %i.bsc = zext nneg i32 %spec.select.i3353 to i64
  %i.bsd = shl nuw nsw i64 %i.bsc, 2              ; 2 uses
  br i1 %.not9.i10.i3355, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bse = tail call ptr @realloc(ptr noundef nonnull %.pre5973, i64 noundef %i.bsd) #25
  br label %Vec_IntGrow.exit11.sink.split.i3356

bb.nq:                                            ; preds = %bb.no
  %i.bsf = tail call noalias ptr @malloc(i64 noundef %i.bsd) #26
  br label %Vec_IntGrow.exit11.sink.split.i3356

Vec_IntGrow.exit11.sink.split.i3356:              ; preds = %bb.np, %bb.nq, %bb.nl, %bb.nm
  %storemerge5006 = phi ptr [ %i.brz, %bb.nm ], [ %i.bry, %bb.nl ], [ %i.bse, %bb.np ], [ %i.bsf, %bb.nq ] ; 2 uses
  %spec.select.sink.i3357 = phi i32 [ 16, %bb.nm ], [ 16, %bb.nl ], [ %spec.select.i3353, %bb.np ], [ %spec.select.i3353, %bb.nq ]
  store ptr %storemerge5006, ptr %i.br, align 8, !tbaa !27
  store i32 %spec.select.sink.i3357, ptr %i.bo, align 8, !tbaa !26
  %.pre5974 = load i32, ptr %i.bp, align 4, !tbaa !28
  br label %bb.nr

bb.nr:                                            ; preds = %Vec_IntGrow.exit11.sink.split.i3356, %bb.nn, %.Vec_IntPush.exit3360_crit_edge
  %i.bsg = phi i32 [ %i.brt, %.Vec_IntPush.exit3360_crit_edge ], [ %i.brt, %bb.nn ], [ %.pre5974, %Vec_IntGrow.exit11.sink.split.i3356 ] ; 2 uses
  %i.bsh = phi ptr [ %.pre5972, %.Vec_IntPush.exit3360_crit_edge ], [ %.pre5973, %bb.nn ], [ %storemerge5006, %Vec_IntGrow.exit11.sink.split.i3356 ]
  %i.bsi = add nsw i32 %i.bsg, 1
  store i32 %i.bsi, ptr %i.bp, align 4, !tbaa !28
  %i.bsj = sext i32 %i.bsg to i64
  %i.bsk = getelementptr inbounds [4 x i8], ptr %i.bsh, i64 %i.bsj
  store i32 %i.brs, ptr %i.bsk, align 4, !tbaa !8
  %.val2875.pre = load i32, ptr %i.ss, align 4, !tbaa !210 ; 2 uses
  %indvars.iv.next5688 = add nuw nsw i64 %indvars.iv5687, 1 ; 2 uses
  %i.bsl = sext i32 %.val2875.pre to i64
  %i.bsm = icmp slt i64 %indvars.iv.next5688, %i.bsl
  br i1 %i.bsm, label %.peel.next, label %.critedge27, !llvm.loop !271

.critedge27:                                      ; preds = %bb.nr, %bb.nh
  %i.bsn = tail call i32 @Wlc_NtkMuxTree2(ptr noundef nonnull %i.ch, ptr poison, i32 poison, ptr noundef nonnull %i.bo, ptr noundef %i.bs, ptr noundef nonnull %i.bw)
  %i.bso = load i32, ptr %i.cb, align 4, !tbaa !28 ; 7 uses
  %i.bsp = load i32, ptr %i.ca, align 8, !tbaa !26
  %i.bsq = icmp eq i32 %i.bso, %i.bsp
  br i1 %i.bsq, label %bb.ns, label %.critedge27.Vec_IntPush.exit3368_crit_edge

.critedge27.Vec_IntPush.exit3368_crit_edge:       ; preds = %.critedge27
  %.pre5977 = load ptr, ptr %i.cd, align 8, !tbaa !27
  br label %Vec_IntPush.exit3368

bb.ns:                                            ; preds = %.critedge27
  %i.bsr = icmp slt i32 %i.bso, 16
  br i1 %i.bsr, label %bb.nt, label %bb.nw

bb.nt:                                            ; preds = %bb.ns
  %i.bss = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i3366 = icmp eq ptr %i.bss, null
  br i1 %.not9.i.i3366, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bst = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bss, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i3364

bb.nv:                                            ; preds = %bb.nt
  %i.bsu = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i3364

bb.nw:                                            ; preds = %bb.ns
  %i.bsv = icmp samesign ult i32 %i.bso, 1073741823
  %i.bsw = shl nuw nsw i32 %i.bso, 1
  %spec.select.i3361 = select i1 %i.bsv, i32 %i.bsw, i32 2147483647 ; 4 uses
  %.not.i9.i3362 = icmp samesign ult i32 %i.bso, %spec.select.i3361
  %.pre5978 = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i3362, label %bb.nx, label %Vec_IntPush.exit3368

bb.nx:                                            ; preds = %bb.nw
  %.not9.i10.i3363 = icmp eq ptr %.pre5978, null
  %i.bsx = zext nneg i32 %spec.select.i3361 to i64
  %i.bsy = shl nuw nsw i64 %i.bsx, 2              ; 2 uses
  br i1 %.not9.i10.i3363, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.bsz = tail call ptr @realloc(ptr noundef nonnull %.pre5978, i64 noundef %i.bsy) #25
  br label %Vec_IntGrow.exit11.sink.split.i3364

bb.nz:                                            ; preds = %bb.nx
  %i.bta = tail call noalias ptr @malloc(i64 noundef %i.bsy) #26
  br label %Vec_IntGrow.exit11.sink.split.i3364

Vec_IntGrow.exit11.sink.split.i3364:              ; preds = %bb.ny, %bb.nz, %bb.nu, %bb.nv
  %storemerge5005 = phi ptr [ %i.bsu, %bb.nv ], [ %i.bst, %bb.nu ], [ %i.bsz, %bb.ny ], [ %i.bta, %bb.nz ] ; 2 uses
  %spec.select.sink.i3365 = phi i32 [ 16, %bb.nv ], [ 16, %bb.nu ], [ %spec.select.i3361, %bb.ny ], [ %spec.select.i3361, %bb.nz ]
  store ptr %storemerge5005, ptr %i.cd, align 8, !tbaa !27
end_hunk_2
begin_hunk_3_@Wlc_NtkBitBlast:bb.a
bb.abw:                                           ; preds = %bb.abv, %bb.abu
  %i.ebp = phi ptr [ %i.ebn, %bb.abu ], [ %i.ebo, %bb.abv ]
  store ptr %i.ebp, ptr %i.ebj, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i4127

Vec_IntGrow.exit11.sink.split.i.i4127:            ; preds = %bb.abw, %Vec_IntGrow.exit.i.i4131
  %spec.select.sink.i.i4128 = phi i32 [ %spec.select.i.i4124, %bb.abw ], [ 16, %Vec_IntGrow.exit.i.i4131 ]
  store i32 %spec.select.sink.i.i4128, ptr %i.eas, align 8, !tbaa !26
  %.pre.i4129 = load i32, ptr %i.eax, align 4, !tbaa !28
  br label %Vec_IntPush.exit.i4121

Vec_IntPush.exit.i4121:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i4127, %bb.abs, %bb.abn
  %i.ebq = phi i32 [ %i.eay, %bb.abn ], [ %i.eay, %bb.abs ], [ %.pre.i4129, %Vec_IntGrow.exit11.sink.split.i.i4127 ] ; 2 uses
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.eas, i64 8
  %i.ebs = load ptr, ptr %i.ebr, align 8, !tbaa !27
  %i.ebt = add nsw i32 %i.ebq, 1
  store i32 %i.ebt, ptr %i.eax, align 4, !tbaa !28
  %i.ebu = sext i32 %i.ebq to i64
  %i.ebv = getelementptr inbounds [4 x i8], ptr %i.ebs, i64 %i.ebu
  store i32 %i.eaw, ptr %i.ebv, align 4, !tbaa !8
  %i.ebw = load ptr, ptr %i.dra, align 8, !tbaa !201
  %.not.i4122 = icmp eq ptr %i.ebw, null
  br i1 %.not.i4122, label %Gia_ManAppendCo.exit4132, label %bb.abx

bb.abx:                                           ; preds = %Vec_IntPush.exit.i4121
  %i.ebx = load i64, ptr %i.dzx, align 4
  %i.eby = and i64 %i.ebx, 536870911
  %i.ebz = sub nsw i64 0, %i.eby
  %i.eca = getelementptr inbounds [12 x i8], ptr %i.dzx, i64 %i.ebz
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.eca, ptr noundef nonnull %i.dzx) #27
  br label %Gia_ManAppendCo.exit4132

Gia_ManAppendCo.exit4132:                         ; preds = %Vec_IntPush.exit.i4121, %bb.abx
  %i.ecb = add nuw i32 %.465342, 1
  %exitcond5755.not = icmp eq i32 %.465342, %i.drv
  br i1 %exitcond5755.not, label %bb.aby, label %bb.abn, !llvm.loop !313

bb.aby:                                           ; preds = %Gia_ManAppendCo.exit4132
  %.12230.val = load i32, ptr %i.drb, align 8, !tbaa !243
  %.12230.val2905 = load ptr, ptr %i.drc, align 8, !tbaa !166
  %i.ecc = getelementptr i8, ptr %.12230.val2905, i64 4
  %.12230.val2905.val = load i32, ptr %i.ecc, align 4, !tbaa !28
  %i.ecd = sub nsw i32 %.12230.val2905.val, %.12230.val ; 2 uses
  %i.ece = icmp slt i32 %i.ecd, %i.dry
  br i1 %i.ece, label %.lr.ph5345, label %.preheader5075

.preheader5075:                                   ; preds = %Gia_ManAppendCi.exit4146, %bb.aby
  %.promoted5346 = load i32, ptr %i.drl, align 4, !tbaa !28
  %i.ecf = sext i32 %.promoted5346 to i64
  %.pre6035 = load i32, ptr %i.drk, align 8, !tbaa !26
  br label %bb.aci

.lr.ph5345:                                       ; preds = %bb.aby, %Gia_ManAppendCi.exit4146
  %.475343 = phi i32 [ %i.edv, %Gia_ManAppendCi.exit4146 ], [ %i.ecd, %bb.aby ]
  %i.ecg = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %.12230) ; 4 uses
  %i.ech = load i64, ptr %i.ecg, align 4
  %i.eci = or i64 %i.ech, 2684354559              ; 2 uses
  store i64 %i.eci, ptr %i.ecg, align 4
  %i.ecj = load ptr, ptr %i.drc, align 8, !tbaa !166
  %i.eck = getelementptr i8, ptr %i.ecj, i64 4
  %.val.i4133 = load i32, ptr %i.eck, align 4, !tbaa !28
  %i.ecl = and i32 %.val.i4133, 536870911
  %i.ecm = zext nneg i32 %i.ecl to i64
  %i.ecn = shl nuw nsw i64 %i.ecm, 32
  %i.eco = and i64 %i.eci, -2305843004918726657
  %i.ecp = or disjoint i64 %i.ecn, %i.eco
  store i64 %i.ecp, ptr %i.ecg, align 4
  %i.ecq = load ptr, ptr %i.drc, align 8, !tbaa !166 ; 6 uses
  %.val11.i4134 = load ptr, ptr %i.drd, align 8, !tbaa !160
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecq, i64 4 ; 3 uses
  %i.ecs = load i32, ptr %i.ecr, align 4, !tbaa !28 ; 7 uses
  %i.ect = load i32, ptr %i.ecq, align 8, !tbaa !26
  %i.ecu = icmp eq i32 %i.ecs, %i.ect
  br i1 %i.ecu, label %bb.abz, label %Gia_ManAppendCi.exit4146

bb.abz:                                           ; preds = %.lr.ph5345
  %i.ecv = icmp slt i32 %i.ecs, 16
  br i1 %i.ecv, label %bb.aca, label %bb.acd

bb.aca:                                           ; preds = %bb.abz
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecq, i64 8 ; 2 uses
  %i.ecx = load ptr, ptr %i.ecw, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i4144 = icmp eq ptr %i.ecx, null
  br i1 %.not9.i.i.i4144, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.ecy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ecx, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i.i4145

bb.acc:                                           ; preds = %bb.aca
  %i.ecz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i.i4145

Vec_IntGrow.exit.i.i4145:                         ; preds = %bb.acc, %bb.acb
  %i.eda = phi ptr [ %i.ecy, %bb.acb ], [ %i.ecz, %bb.acc ]
  store ptr %i.eda, ptr %i.ecw, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i4140

bb.acd:                                           ; preds = %bb.abz
  %i.edb = icmp samesign ult i32 %i.ecs, 1073741823
  %i.edc = shl nuw nsw i32 %i.ecs, 1
  %spec.select.i.i4137 = select i1 %i.edb, i32 %i.edc, i32 2147483647 ; 3 uses
  %.not.i9.i.i4138 = icmp samesign ult i32 %i.ecs, %spec.select.i.i4137
  br i1 %.not.i9.i.i4138, label %bb.ace, label %Gia_ManAppendCi.exit4146

bb.ace:                                           ; preds = %bb.acd
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ecq, i64 8 ; 2 uses
  %i.ede = load ptr, ptr %i.edd, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i.i4139 = icmp eq ptr %i.ede, null
  %i.edf = zext nneg i32 %spec.select.i.i4137 to i64
  %i.edg = shl nuw nsw i64 %i.edf, 2              ; 2 uses
  br i1 %.not9.i10.i.i4139, label %bb.acg, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.edh = tail call ptr @realloc(ptr noundef nonnull %i.ede, i64 noundef %i.edg) #25
  br label %bb.ach

bb.acg:                                           ; preds = %bb.ace
  %i.edi = tail call noalias ptr @malloc(i64 noundef %i.edg) #26
  br label %bb.ach

bb.ach:                                           ; preds = %bb.acg, %bb.acf
  %i.edj = phi ptr [ %i.edh, %bb.acf ], [ %i.edi, %bb.acg ]
  store ptr %i.edj, ptr %i.edd, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i4140

Vec_IntGrow.exit11.sink.split.i.i4140:            ; preds = %bb.ach, %Vec_IntGrow.exit.i.i4145
  %spec.select.sink.i.i4141 = phi i32 [ %spec.select.i.i4137, %bb.ach ], [ 16, %Vec_IntGrow.exit.i.i4145 ]
  store i32 %spec.select.sink.i.i4141, ptr %i.ecq, align 8, !tbaa !26
  %.pre.i4142 = load i32, ptr %i.ecr, align 4, !tbaa !28
  br label %Gia_ManAppendCi.exit4146

Gia_ManAppendCi.exit4146:                         ; preds = %.lr.ph5345, %bb.acd, %Vec_IntGrow.exit11.sink.split.i.i4140
  %i.edk = phi i32 [ %i.ecs, %.lr.ph5345 ], [ %i.ecs, %bb.acd ], [ %.pre.i4142, %Vec_IntGrow.exit11.sink.split.i.i4140 ] ; 2 uses
  %i.edl = ptrtoint ptr %i.ecg to i64
  %i.edm = ptrtoint ptr %.val11.i4134 to i64
  %i.edn = sub i64 %i.edl, %i.edm
  %i.edo = sdiv exact i64 %i.edn, 12
  %i.edp = trunc i64 %i.edo to i32
  %i.edq = getelementptr inbounds nuw i8, ptr %i.ecq, i64 8
  %i.edr = load ptr, ptr %i.edq, align 8, !tbaa !27
  %i.eds = add nsw i32 %i.edk, 1
  store i32 %i.eds, ptr %i.ecr, align 4, !tbaa !28
  %i.edt = sext i32 %i.edk to i64
  %i.edu = getelementptr inbounds [4 x i8], ptr %i.edr, i64 %i.edt
  store i32 %i.edp, ptr %i.edu, align 4, !tbaa !8
  %i.edv = add nsw i32 %.475343, 1                ; 2 uses
  %i.edw = icmp slt i32 %i.edv, %i.dry
  br i1 %i.edw, label %.lr.ph5345, label %.preheader5075, !llvm.loop !314

bb.aci:                                           ; preds = %.preheader5075, %Vec_IntPush.exit4154
  %i.edx = phi i32 [ %.pre6035, %.preheader5075 ], [ %i.efb, %Vec_IntPush.exit4154 ] ; 3 uses
  %indvars.iv5758 = phi i64 [ %i.ecf, %.preheader5075 ], [ %indvars.iv.next5759, %Vec_IntPush.exit4154 ] ; 7 uses
  %indvars.iv5756 = phi i64 [ 0, %.preheader5075 ], [ %indvars.iv.next5757, %Vec_IntPush.exit4154 ] ; 2 uses
  %.12230.val2918 = load ptr, ptr %i.drd, align 8, !tbaa !160 ; 2 uses
  %.12230.val2919 = load ptr, ptr %i.drc, align 8, !tbaa !166
  %i.edy = getelementptr i8, ptr %.12230.val2919, i64 8
  %.12230.val2919.val = load ptr, ptr %i.edy, align 8, !tbaa !27
  %i.edz = getelementptr inbounds nuw [4 x i8], ptr %.12230.val2919.val, i64 %indvars.iv5756
  %i.eea = load i32, ptr %i.edz, align 4, !tbaa !8
  %i.eeb = sext i32 %i.eea to i64
  %i.eec = getelementptr inbounds [12 x i8], ptr %.12230.val2918, i64 %i.eeb
  %i.eed = ptrtoint ptr %i.eec to i64             ; 2 uses
  %i.eee = and i64 %i.eed, -2
  %i.eef = ptrtoint ptr %.12230.val2918 to i64
  %i.eeg = sub i64 %i.eee, %i.eef
  %i.eeh = sdiv exact i64 %i.eeg, 12
  %i.eei = trunc i64 %i.eeh to i32
  %i.eej = trunc i64 %i.eed to i32
  %i.eek = and i32 %i.eej, 1
  %i.eel = shl nsw i32 %i.eei, 1
  %i.eem = or disjoint i32 %i.eel, %i.eek
  %i.een = trunc nsw i64 %indvars.iv5758 to i32
  %i.eeo = icmp eq i32 %i.edx, %i.een
  br i1 %i.eeo, label %bb.acj, label %.Vec_IntPush.exit4154_crit_edge

.Vec_IntPush.exit4154_crit_edge:                  ; preds = %bb.aci
  %.pre6036 = load ptr, ptr %i.drn, align 8, !tbaa !27
  br label %Vec_IntPush.exit4154

bb.acj:                                           ; preds = %bb.aci
  %i.eep = icmp slt i64 %indvars.iv5758, 16
  br i1 %i.eep, label %bb.ack, label %bb.acn

bb.ack:                                           ; preds = %bb.acj
  %i.eeq = load ptr, ptr %i.drn, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i4152 = icmp eq ptr %i.eeq, null
  br i1 %.not9.i.i4152, label %bb.acm, label %bb.acl

bb.acl:                                           ; preds = %bb.ack
  %i.eer = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eeq, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i4150

bb.acm:                                           ; preds = %bb.ack
  %i.ees = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i4150

bb.acn:                                           ; preds = %bb.acj
  %i.eet = icmp samesign ult i64 %indvars.iv5758, 1073741823
  %indvars.iv5758.tr = trunc i64 %indvars.iv5758 to i32
  %i.eeu = shl i32 %indvars.iv5758.tr, 1
  %spec.select.i4147 = select i1 %i.eet, i32 %i.eeu, i32 2147483647 ; 4 uses
  %i.eev = sext i32 %spec.select.i4147 to i64
  %.not.i9.i4148 = icmp samesign ult i64 %indvars.iv5758, %i.eev
  %.pre6037 = load ptr, ptr %i.drn, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i4148, label %bb.aco, label %Vec_IntPush.exit4154

bb.aco:                                           ; preds = %bb.acn
  %.not9.i10.i4149 = icmp eq ptr %.pre6037, null
  %i.eew = zext nneg i32 %spec.select.i4147 to i64
  %i.eex = shl nuw nsw i64 %i.eew, 2              ; 2 uses
  br i1 %.not9.i10.i4149, label %bb.acq, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.eey = tail call ptr @realloc(ptr noundef nonnull %.pre6037, i64 noundef %i.eex) #25
  br label %Vec_IntGrow.exit11.sink.split.i4150

bb.acq:                                           ; preds = %bb.aco
  %i.eez = tail call noalias ptr @malloc(i64 noundef %i.eex) #26
  br label %Vec_IntGrow.exit11.sink.split.i4150

Vec_IntGrow.exit11.sink.split.i4150:              ; preds = %bb.acp, %bb.acq, %bb.acl, %bb.acm
  %storemerge4946 = phi ptr [ %i.ees, %bb.acm ], [ %i.eer, %bb.acl ], [ %i.eey, %bb.acp ], [ %i.eez, %bb.acq ] ; 2 uses
  %spec.select.sink.i4151 = phi i32 [ 16, %bb.acm ], [ 16, %bb.acl ], [ %spec.select.i4147, %bb.acp ], [ %spec.select.i4147, %bb.acq ] ; 2 uses
  store ptr %storemerge4946, ptr %i.drn, align 8, !tbaa !27
  store i32 %spec.select.sink.i4151, ptr %i.drk, align 8, !tbaa !26
  br label %Vec_IntPush.exit4154

Vec_IntPush.exit4154:                             ; preds = %.Vec_IntPush.exit4154_crit_edge, %bb.acn, %Vec_IntGrow.exit11.sink.split.i4150
  %i.efa = phi ptr [ %.pre6036, %.Vec_IntPush.exit4154_crit_edge ], [ %.pre6037, %bb.acn ], [ %storemerge4946, %Vec_IntGrow.exit11.sink.split.i4150 ]
  %i.efb = phi i32 [ %i.edx, %.Vec_IntPush.exit4154_crit_edge ], [ %i.edx, %bb.acn ], [ %spec.select.sink.i4151, %Vec_IntGrow.exit11.sink.split.i4150 ]
  %indvars.iv.next5759 = add nsw i64 %indvars.iv5758, 1 ; 2 uses
  %i.efc = getelementptr inbounds [4 x i8], ptr %i.efa, i64 %indvars.iv5758
  store i32 %i.eem, ptr %i.efc, align 4, !tbaa !8
  %indvars.iv.next5757 = add nuw nsw i64 %indvars.iv5756, 1 ; 2 uses
  %exitcond5764.not = icmp eq i64 %indvars.iv.next5757, %wide.trip.count5753
  br i1 %exitcond5764.not, label %bb.acr, label %bb.aci, !llvm.loop !315

bb.acr:                                           ; preds = %Vec_IntPush.exit4154
  %i.efd = trunc nsw i64 %indvars.iv.next5759 to i32
  store i32 %i.efd, ptr %i.drl, align 4, !tbaa !28
  %.12230.val2916 = load ptr, ptr %i.drd, align 8, !tbaa !160 ; 4 uses
  %.12230.val2917 = load ptr, ptr %i.drc, align 8, !tbaa !166
  %i.efe = getelementptr i8, ptr %.12230.val2917, i64 8
  %.12230.val2917.val = load ptr, ptr %i.efe, align 8, !tbaa !27 ; 2 uses
  %i.eff = getelementptr inbounds nuw [4 x i8], ptr %.12230.val2917.val, i64 %wide.trip.count5753
  %i.efg = load i32, ptr %i.eff, align 4, !tbaa !8
  %i.efh = zext nneg i32 %i.drv to i64
  %i.efi = getelementptr inbounds nuw [4 x i8], ptr %.12230.val2917.val, i64 %i.efh ; 2 uses
  %i.efj = getelementptr inbounds nuw i8, ptr %i.efi, i64 8
  %i.efk = load i32, ptr %i.efj, align 4, !tbaa !8
  %i.efl = getelementptr inbounds nuw i8, ptr %i.efi, i64 12
  %i.efm = load i32, ptr %i.efl, align 4, !tbaa !8
  %.neg5044 = xor i32 %i.drv, -1
  %i.efn = add nsw i32 %i.dry, %.neg5044
  %.promoted5349 = load i32, ptr %i.drp, align 4, !tbaa !28
  %i.efo = sext i32 %i.efn to i64
  %i.efp = sext i32 %.promoted5349 to i64
  %.pre6038 = load i32, ptr %i.dro, align 8, !tbaa !26
  br label %bb.acs

.preheader5074:                                   ; preds = %Vec_IntPush.exit4162
  %i.efq = sext i32 %i.efg to i64
  %i.efr = getelementptr inbounds [12 x i8], ptr %.12230.val2916, i64 %i.efq
  %i.efs = ptrtoint ptr %i.efr to i64             ; 2 uses
  %i.eft = and i64 %i.efs, -2
  %i.efu = ptrtoint ptr %.12230.val2916 to i64    ; 3 uses
  %i.efv = sub i64 %i.eft, %i.efu
  %i.efw = sdiv exact i64 %i.efv, 12
  %i.efx = trunc i64 %i.efw to i32
  %i.efy = trunc i64 %i.efs to i32
  %i.efz = and i32 %i.efy, 1
  %i.ega = shl nsw i32 %i.efx, 1
  %i.egb = or disjoint i32 %i.ega, %i.efz
  %i.egc = sext i32 %i.efk to i64
  %i.egd = getelementptr inbounds [12 x i8], ptr %.12230.val2916, i64 %i.egc
  %i.ege = ptrtoint ptr %i.egd to i64             ; 2 uses
  %i.egf = and i64 %i.ege, -2
  %i.egg = sub i64 %i.egf, %i.efu
  %i.egh = sdiv exact i64 %i.egg, 12
  %i.egi = trunc i64 %i.egh to i32
  %i.egj = trunc i64 %i.ege to i32
  %i.egk = and i32 %i.egj, 1
  %i.egl = shl nsw i32 %i.egi, 1
  %i.egm = or disjoint i32 %i.egl, %i.egk         ; 2 uses
  %i.egn = sext i32 %i.efm to i64
  %i.ego = getelementptr inbounds [12 x i8], ptr %.12230.val2916, i64 %i.egn
  %i.egp = ptrtoint ptr %i.ego to i64             ; 2 uses
  %i.egq = and i64 %i.egp, -2
  %i.egr = sub i64 %i.egq, %i.efu
  %i.egs = sdiv exact i64 %i.egr, 12
  %i.egt = trunc i64 %i.egs to i32
  %i.egu = trunc i64 %i.egp to i32
  %i.egv = and i32 %i.egu, 1
  %i.egw = shl nsw i32 %i.egt, 1
  %i.egx = or disjoint i32 %i.egw, %i.egv
  %i.egy = trunc nsw i64 %indvars.iv.next5768 to i32
  store i32 %i.egy, ptr %i.drp, align 4, !tbaa !28
  %.not2588 = icmp eq i32 %i.dsj, 0
  %i.egz = xor i32 %i.egb, 1                      ; 2 uses
  br label %bb.adb

bb.acs:                                           ; preds = %bb.acr, %Vec_IntPush.exit4162
  %i.eha = phi i32 [ %.pre6038, %bb.acr ], [ %i.eif, %Vec_IntPush.exit4162 ] ; 3 uses
  %indvars.iv5767 = phi i64 [ %i.efp, %bb.acr ], [ %indvars.iv.next5768, %Vec_IntPush.exit4162 ] ; 7 uses
  %indvars.iv5765 = phi i64 [ 0, %bb.acr ], [ %indvars.iv.next5766, %Vec_IntPush.exit4162 ] ; 2 uses
  %.12230.val2910 = load ptr, ptr %i.drd, align 8, !tbaa !160 ; 2 uses
  %.12230.val2911 = load ptr, ptr %i.drc, align 8, !tbaa !166
  %i.ehb = getelementptr i8, ptr %.12230.val2911, i64 8
  %.12230.val2911.val = load ptr, ptr %i.ehb, align 8, !tbaa !27
  %i.ehc = getelementptr [4 x i8], ptr %.12230.val2911.val, i64 %indvars.iv5765
  %i.ehd = getelementptr [4 x i8], ptr %i.ehc, i64 %i.efo
  %i.ehe = load i32, ptr %i.ehd, align 4, !tbaa !8
  %i.ehf = sext i32 %i.ehe to i64
  %i.ehg = getelementptr inbounds [12 x i8], ptr %.12230.val2910, i64 %i.ehf
  %i.ehh = ptrtoint ptr %i.ehg to i64             ; 2 uses
  %i.ehi = and i64 %i.ehh, -2
  %i.ehj = ptrtoint ptr %.12230.val2910 to i64
  %i.ehk = sub i64 %i.ehi, %i.ehj
  %i.ehl = sdiv exact i64 %i.ehk, 12
  %i.ehm = trunc i64 %i.ehl to i32
  %i.ehn = trunc i64 %i.ehh to i32
  %i.eho = and i32 %i.ehn, 1
  %i.ehp = shl nsw i32 %i.ehm, 1
  %i.ehq = or disjoint i32 %i.ehp, %i.eho
  %i.ehr = trunc nsw i64 %indvars.iv5767 to i32
  %i.ehs = icmp eq i32 %i.eha, %i.ehr
  br i1 %i.ehs, label %bb.act, label %.Vec_IntPush.exit4162_crit_edge

.Vec_IntPush.exit4162_crit_edge:                  ; preds = %bb.acs
  %.pre6039 = load ptr, ptr %i.drr, align 8, !tbaa !27
  br label %Vec_IntPush.exit4162

bb.act:                                           ; preds = %bb.acs
  %i.eht = icmp slt i64 %indvars.iv5767, 16
  br i1 %i.eht, label %bb.acu, label %bb.acx

bb.acu:                                           ; preds = %bb.act
  %i.ehu = load ptr, ptr %i.drr, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i4160 = icmp eq ptr %i.ehu, null
  br i1 %.not9.i.i4160, label %bb.acw, label %bb.acv

bb.acv:                                           ; preds = %bb.acu
  %i.ehv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ehu, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i4158

bb.acw:                                           ; preds = %bb.acu
  %i.ehw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i4158

bb.acx:                                           ; preds = %bb.act
  %i.ehx = icmp samesign ult i64 %indvars.iv5767, 1073741823
  %indvars.iv5767.tr = trunc i64 %indvars.iv5767 to i32
  %i.ehy = shl i32 %indvars.iv5767.tr, 1
  %spec.select.i4155 = select i1 %i.ehx, i32 %i.ehy, i32 2147483647 ; 4 uses
  %i.ehz = sext i32 %spec.select.i4155 to i64
  %.not.i9.i4156 = icmp samesign ult i64 %indvars.iv5767, %i.ehz
  %.pre6040 = load ptr, ptr %i.drr, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i4156, label %bb.acy, label %Vec_IntPush.exit4162

bb.acy:                                           ; preds = %bb.acx
  %.not9.i10.i4157 = icmp eq ptr %.pre6040, null
  %i.eia = zext nneg i32 %spec.select.i4155 to i64
  %i.eib = shl nuw nsw i64 %i.eia, 2              ; 2 uses
  br i1 %.not9.i10.i4157, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.eic = tail call ptr @realloc(ptr noundef nonnull %.pre6040, i64 noundef %i.eib) #25
  br label %Vec_IntGrow.exit11.sink.split.i4158

bb.ada:                                           ; preds = %bb.acy
  %i.eid = tail call noalias ptr @malloc(i64 noundef %i.eib) #26
  br label %Vec_IntGrow.exit11.sink.split.i4158

Vec_IntGrow.exit11.sink.split.i4158:              ; preds = %bb.acz, %bb.ada, %bb.acv, %bb.acw
  %storemerge4945 = phi ptr [ %i.ehw, %bb.acw ], [ %i.ehv, %bb.acv ], [ %i.eic, %bb.acz ], [ %i.eid, %bb.ada ] ; 2 uses
  %spec.select.sink.i4159 = phi i32 [ 16, %bb.acw ], [ 16, %bb.acv ], [ %spec.select.i4155, %bb.acz ], [ %spec.select.i4155, %bb.ada ] ; 2 uses
  store ptr %storemerge4945, ptr %i.drr, align 8, !tbaa !27
  store i32 %spec.select.sink.i4159, ptr %i.dro, align 8, !tbaa !26
  br label %Vec_IntPush.exit4162

Vec_IntPush.exit4162:                             ; preds = %.Vec_IntPush.exit4162_crit_edge, %bb.acx, %Vec_IntGrow.exit11.sink.split.i4158
  %i.eie = phi ptr [ %.pre6039, %.Vec_IntPush.exit4162_crit_edge ], [ %.pre6040, %bb.acx ], [ %storemerge4945, %Vec_IntGrow.exit11.sink.split.i4158 ]
  %i.eif = phi i32 [ %i.eha, %.Vec_IntPush.exit4162_crit_edge ], [ %i.eha, %bb.acx ], [ %spec.select.sink.i4159, %Vec_IntGrow.exit11.sink.split.i4158 ]
  %indvars.iv.next5768 = add nsw i64 %indvars.iv5767, 1 ; 2 uses
  %i.eig = getelementptr inbounds [4 x i8], ptr %i.eie, i64 %indvars.iv5767
  store i32 %i.ehq, ptr %i.eig, align 4, !tbaa !8
  %indvars.iv.next5766 = add nuw nsw i64 %indvars.iv5765, 1 ; 2 uses
  %exitcond5773.not = icmp eq i64 %indvars.iv.next5766, %wide.trip.count5753
  br i1 %exitcond5773.not, label %.preheader5074, label %bb.acs, !llvm.loop !316

bb.adb:                                           ; preds = %.preheader5074, %Gia_ManAppendCo.exit4177
  %indvars.iv5774 = phi i64 [ 0, %.preheader5074 ], [ %indvars.iv.next5775, %Gia_ManAppendCo.exit4177 ] ; 3 uses
  %.val2748 = load ptr, ptr %i.drn, align 8, !tbaa !27
  %i.eih = getelementptr inbounds nuw [4 x i8], ptr %.val2748, i64 %indvars.iv5774
  %i.eii = load i32, ptr %i.eih, align 4, !tbaa !8
  %.val2747 = load ptr, ptr %i.drr, align 8, !tbaa !27
  %i.eij = getelementptr inbounds nuw [4 x i8], ptr %.val2747, i64 %indvars.iv5774
  %i.eik = load i32, ptr %i.eij, align 4, !tbaa !8
  %i.eil = tail call i32 @Gia_ManHashMux(ptr noundef nonnull %.12230, i32 noundef %i.egx, i32 noundef %i.eii, i32 noundef %i.eik) #27 ; 2 uses
  br i1 %.not2588, label %bb.add, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %i.eim = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %.12230, i32 noundef %i.eil, i32 noundef %i.egz) #27
  %i.ein = tail call i32 @Gia_ManHashOr(ptr noundef nonnull %.12230, i32 noundef %i.eim, i32 noundef %i.egm) #27
  br label %bb.ade

bb.add:                                           ; preds = %bb.adb
  %i.eio = tail call i32 @Gia_ManHashOr(ptr noundef nonnull %.12230, i32 noundef %i.eil, i32 noundef %i.egm) #27
  %i.eip = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %.12230, i32 noundef %i.eio, i32 noundef %i.egz) #27
  br label %bb.ade

bb.ade:                                           ; preds = %bb.add, %bb.adc
  %.02215 = phi i32 [ %i.ein, %bb.adc ], [ %i.eip, %bb.add ] ; 2 uses
  %i.eiq = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %.12230) ; 8 uses
  %i.eir = load i64, ptr %i.eiq, align 4
  %i.eis = or i64 %i.eir, 2147483648              ; 2 uses
  store i64 %i.eis, ptr %i.eiq, align 4
  %.val20.i4163 = load ptr, ptr %i.drd, align 8, !tbaa !160
  %i.eit = ptrtoint ptr %i.eiq to i64             ; 2 uses
  %i.eiu = ptrtoint ptr %.val20.i4163 to i64
  %i.eiv = sub i64 %i.eit, %i.eiu
  %i.eiw = sdiv exact i64 %i.eiv, 12
  %i.eix = trunc i64 %i.eiw to i32
  %i.eiy = lshr i32 %.02215, 1
  %i.eiz = sub i32 %i.eix, %i.eiy
  %i.eja = and i32 %i.eiz, 536870911
  %i.ejb = zext nneg i32 %i.eja to i64
  %i.ejc = and i64 %i.eis, -1073741824
  %i.ejd = shl i32 %.02215, 29
  %i.eje = and i32 %i.ejd, 536870912
  %i.ejf = zext nneg i32 %i.eje to i64
  %i.ejg = or disjoint i64 %i.ejc, %i.ejf
  %i.ejh = or disjoint i64 %i.ejg, %i.ejb         ; 2 uses
  store i64 %i.ejh, ptr %i.eiq, align 4
  %i.eji = load ptr, ptr %i.dre, align 8, !tbaa !167
  %i.ejj = getelementptr i8, ptr %i.eji, i64 4
  %.val.i4164 = load i32, ptr %i.ejj, align 4, !tbaa !28
  %i.ejk = and i32 %.val.i4164, 536870911
  %i.ejl = zext nneg i32 %i.ejk to i64
  %i.ejm = shl nuw nsw i64 %i.ejl, 32
  %i.ejn = and i64 %i.ejh, -2305843004918726657
  %i.ejo = or disjoint i64 %i.ejn, %i.ejm
  store i64 %i.ejo, ptr %i.eiq, align 4
  %i.ejp = load ptr, ptr %i.dre, align 8, !tbaa !167 ; 6 uses
  %.val19.i4165 = load ptr, ptr %i.drd, align 8, !tbaa !160
  %i.ejq = ptrtoint ptr %.val19.i4165 to i64
  %i.ejr = sub i64 %i.eit, %i.ejq
  %i.ejs = sdiv exact i64 %i.ejr, 12
  %i.ejt = trunc i64 %i.ejs to i32
  %i.eju = getelementptr inbounds nuw i8, ptr %i.ejp, i64 4 ; 3 uses
  %i.ejv = load i32, ptr %i.eju, align 4, !tbaa !28 ; 7 uses
  %i.ejw = load i32, ptr %i.ejp, align 8, !tbaa !26
  %i.ejx = icmp eq i32 %i.ejv, %i.ejw
  br i1 %i.ejx, label %bb.adf, label %Vec_IntPush.exit.i4166

bb.adf:                                           ; preds = %bb.ade
  %i.ejy = icmp slt i32 %i.ejv, 16
  br i1 %i.ejy, label %bb.adg, label %bb.adj

bb.adg:                                           ; preds = %bb.adf
  %i.ejz = getelementptr inbounds nuw i8, ptr %i.ejp, i64 8 ; 2 uses
  %i.eka = load ptr, ptr %i.ejz, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i4175 = icmp eq ptr %i.eka, null
  br i1 %.not9.i.i.i4175, label %bb.adi, label %bb.adh

bb.adh:                                           ; preds = %bb.adg
  %i.ekb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eka, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i.i4176

bb.adi:                                           ; preds = %bb.adg
  %i.ekc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i.i4176

Vec_IntGrow.exit.i.i4176:                         ; preds = %bb.adi, %bb.adh
  %i.ekd = phi ptr [ %i.ekb, %bb.adh ], [ %i.ekc, %bb.adi ]
  store ptr %i.ekd, ptr %i.ejz, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i4172

bb.adj:                                           ; preds = %bb.adf
  %i.eke = icmp samesign ult i32 %i.ejv, 1073741823
  %i.ekf = shl nuw nsw i32 %i.ejv, 1
  %spec.select.i.i4169 = select i1 %i.eke, i32 %i.ekf, i32 2147483647 ; 3 uses
  %.not.i9.i.i4170 = icmp samesign ult i32 %i.ejv, %spec.select.i.i4169
  br i1 %.not.i9.i.i4170, label %bb.adk, label %Vec_IntPush.exit.i4166

bb.adk:                                           ; preds = %bb.adj
  %i.ekg = getelementptr inbounds nuw i8, ptr %i.ejp, i64 8 ; 2 uses
  %i.ekh = load ptr, ptr %i.ekg, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i.i4171 = icmp eq ptr %i.ekh, null
  %i.eki = zext nneg i32 %spec.select.i.i4169 to i64
  %i.ekj = shl nuw nsw i64 %i.eki, 2              ; 2 uses
  br i1 %.not9.i10.i.i4171, label %bb.adm, label %bb.adl

bb.adl:                                           ; preds = %bb.adk
  %i.ekk = tail call ptr @realloc(ptr noundef nonnull %i.ekh, i64 noundef %i.ekj) #25
  br label %bb.adn

bb.adm:                                           ; preds = %bb.adk
  %i.ekl = tail call noalias ptr @malloc(i64 noundef %i.ekj) #26
  br label %bb.adn

bb.adn:                                           ; preds = %bb.adm, %bb.adl
  %i.ekm = phi ptr [ %i.ekk, %bb.adl ], [ %i.ekl, %bb.adm ]
  store ptr %i.ekm, ptr %i.ekg, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i4172

Vec_IntGrow.exit11.sink.split.i.i4172:            ; preds = %bb.adn, %Vec_IntGrow.exit.i.i4176
  %spec.select.sink.i.i4173 = phi i32 [ %spec.select.i.i4169, %bb.adn ], [ 16, %Vec_IntGrow.exit.i.i4176 ]
  store i32 %spec.select.sink.i.i4173, ptr %i.ejp, align 8, !tbaa !26
  %.pre.i4174 = load i32, ptr %i.eju, align 4, !tbaa !28
  br label %Vec_IntPush.exit.i4166

Vec_IntPush.exit.i4166:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i4172, %bb.adj, %bb.ade
  %i.ekn = phi i32 [ %i.ejv, %bb.ade ], [ %i.ejv, %bb.adj ], [ %.pre.i4174, %Vec_IntGrow.exit11.sink.split.i.i4172 ] ; 2 uses
  %i.eko = getelementptr inbounds nuw i8, ptr %i.ejp, i64 8
  %i.ekp = load ptr, ptr %i.eko, align 8, !tbaa !27
  %i.ekq = add nsw i32 %i.ekn, 1
  store i32 %i.ekq, ptr %i.eju, align 4, !tbaa !28
  %i.ekr = sext i32 %i.ekn to i64
  %i.eks = getelementptr inbounds [4 x i8], ptr %i.ekp, i64 %i.ekr
  store i32 %i.ejt, ptr %i.eks, align 4, !tbaa !8
  %i.ekt = load ptr, ptr %i.drf, align 8, !tbaa !201
  %.not.i4167 = icmp eq ptr %i.ekt, null
  br i1 %.not.i4167, label %Gia_ManAppendCo.exit4177, label %bb.ado

bb.ado:                                           ; preds = %Vec_IntPush.exit.i4166
  %i.eku = load i64, ptr %i.eiq, align 4
  %i.ekv = and i64 %i.eku, 536870911
  %i.ekw = sub nsw i64 0, %i.ekv
  %i.ekx = getelementptr inbounds [12 x i8], ptr %i.eiq, i64 %i.ekw
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %.12230, ptr noundef nonnull %i.ekx, ptr noundef nonnull %i.eiq) #27
  br label %Gia_ManAppendCo.exit4177

Gia_ManAppendCo.exit4177:                         ; preds = %Vec_IntPush.exit.i4166, %bb.ado
  %indvars.iv.next5775 = add nuw nsw i64 %indvars.iv5774, 1 ; 2 uses
  %exitcond5778.not = icmp eq i64 %indvars.iv.next5775, %wide.trip.count5753
  br i1 %exitcond5778.not, label %bb.adp, label %bb.adb, !llvm.loop !317

bb.adp:                                           ; preds = %Gia_ManAppendCo.exit4177
  %i.eky = tail call i32 @If_LibBoxNum(ptr noundef %.12219) #27
  %i.ekz = add nsw i32 %i.eky, 1
  %i.ela = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull @.str.37, i32 noundef %i.ekz) #27 ; 0 uses
  %i.elb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #28
  %i.elc = add i64 %i.elb, 1
  %i.eld = tail call noalias ptr @malloc(i64 noundef %i.elc) #26 ; 2 uses
  %i.ele = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.eld, ptr noundef nonnull readonly dereferenceable(1) %i.f) #27 ; 0 uses
  %i.elf = tail call i32 @If_LibBoxNum(ptr noundef %.12219) #27
  %i.elg = add nsw i32 %i.elf, 1
  %i.elh = tail call ptr @If_BoxStart(ptr noundef nonnull %i.eld, i32 noundef %i.elg, i32 noundef %i.dry, i32 noundef %i.drw, i32 noundef 0, i32 noundef 0, i32 noundef 0) #27 ; 4 uses
  tail call void @If_LibBoxAdd(ptr noundef %.12219, ptr noundef %i.elh) #27
  %i.eli = getelementptr inbounds nuw i8, ptr %i.elh, i64 16 ; 2 uses
  %i.elj = getelementptr inbounds nuw i8, ptr %i.elh, i64 20 ; 2 uses
  %i.elk = load i32, ptr %i.eli, align 8, !tbaa !251
end_hunk_3
begin_hunk_4_@Gia_ManSetRegNum

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManDupRemapLiterals(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #4

declare ptr @Gia_ManDupZeroUndc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Gia_ManDupNormalize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Gia_ManTransferTiming(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @If_LibBoxFree(ptr noundef) local_unnamed_addr #4

declare ptr @Abc_FrameReadLibBox(...) local_unnamed_addr #4

declare void @Abc_FrameSetLibBox(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Extra_FileReadFloat(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.b = tail call i64 @ftell(ptr noundef %0)     ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  store i32 %i.c, ptr %1, align 4, !tbaa !8
  tail call void @rewind(ptr noundef %0)
  %i.d = sdiv i32 %i.c, 4
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #29 ; 2 uses
  %sext = shl i64 %i.b, 32
  %i.g = ashr exact i64 %sext, 32
  %i.h = tail call i64 @fread(ptr noundef %i.f, i64 noundef %i.g, i64 noundef 1, ptr noundef %0) ; 0 uses
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Extra_FileReadFloatContents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.58) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.c = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !8
  tail call void @rewind(ptr noundef nonnull %i.a)
  %i.e = sdiv i32 %i.d, 4
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #29 ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = tail call i64 @fread(ptr noundef %i.g, i64 noundef %i.h, i64 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.k
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define ptr @Wlc_BlastArray(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = call ptr @Extra_FileReadFloatContents(ptr noundef %0, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.d = sdiv i32 %i.c, 4
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !28
  store i32 100, ptr %i.f, align 8, !tbaa !26
  %i.h = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !27
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  store i32 0, ptr %i.k, align 4, !tbaa !28
  store i32 100, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !27
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !28
  store i32 100, ptr %i.n, align 8, !tbaa !26
  %i.p = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 100, ptr %i.r, align 8, !tbaa !26
  %i.t = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !27
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !28
  store i32 100, ptr %i.v, align 8, !tbaa !26
  %i.x = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !27
  %i.z = tail call ptr @Gia_ManStart(i32 noundef 10000) #27 ; 23 uses
  %i.aa = tail call noalias dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aa, ptr noundef nonnull align 1 dereferenceable(6) @.str.59, i64 6, i1 false) #27
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !217
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.z) #27
  %i.ab = icmp sgt i32 %i.c, 7                    ; 2 uses
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ac = shl i32 %i.e, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05392 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ad = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.z) ; 0 uses
  %i.ae = add nuw nsw i32 %.05392, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !376

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.af = load float, ptr %i.b, align 4, !tbaa !237
  %i.ag = fmul float %i.af, 6.553600e+04
  %i.ah = fptosi float %i.ag to i32
  %i.ai = add nsw i32 %i.ah, 128
  %i.aj = and i32 %i.ai, -256
  %i.ak = or disjoint i32 %i.aj, 128
  br label %bb.b

.preheader:                                       ; preds = %Vec_IntPush.exit
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.al, ptr %i.w, align 4, !tbaa !28
  store i32 %spec.select.sink.i94, ptr %i.v, align 8
  store ptr %storemerge9198, ptr %i.y, align 8
  br i1 %i.ab, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.preheader
  %i.am = getelementptr i8, ptr %i.z, i64 32      ; 8 uses
  %i.an = getelementptr i8, ptr %i.z, i64 64      ; 8 uses
  %smax147 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count = zext nneg i32 %smax147 to i64
  %.promoted107.pre = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %bb.k

bb.b:                                             ; preds = %._crit_edge, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %.0101 = phi i32 [ 0, %._crit_edge ], [ %i.bd, %Vec_IntPush.exit ] ; 2 uses
  %spec.select.sink.i95100 = phi i32 [ 100, %._crit_edge ], [ %spec.select.sink.i94, %Vec_IntPush.exit ] ; 3 uses
  %storemerge919799 = phi ptr [ %i.x, %._crit_edge ], [ %storemerge9198, %Vec_IntPush.exit ] ; 6 uses
  %i.ao = lshr i32 %i.ak, %.0101
  %i.ap = and i32 %i.ao, 1
  %i.aq = trunc nsw i64 %indvars.iv to i32
  %i.ar = icmp eq i32 %spec.select.sink.i95100, %i.aq
  br i1 %i.ar, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.as = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.as, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge919799, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge919799, i64 noundef 64) #25
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.au = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.av = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.aw = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 4 uses
  %i.ax = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ax
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge919799, null
  %i.ay = zext nneg i32 %spec.select.i to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %storemerge919799, i64 noundef %i.az) #25
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %bb.b, %bb.g
  %storemerge9198 = phi ptr [ %storemerge919799, %bb.b ], [ %storemerge919799, %bb.g ], [ %i.au, %bb.f ], [ %i.at, %bb.e ], [ %i.ba, %bb.i ], [ %i.bb, %bb.j ] ; 4 uses
  %spec.select.sink.i94 = phi i32 [ %spec.select.sink.i95100, %bb.b ], [ %spec.select.sink.i95100, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %storemerge9198, i64 %indvars.iv
  store i32 %i.ap, ptr %i.bc, align 4, !tbaa !8
  %i.bd = add nuw nsw i32 %.0101, 1               ; 2 uses
  %exitcond131.not = icmp eq i32 %i.bd, 20
  br i1 %exitcond131.not, label %.preheader, label %bb.b, !llvm.loop !377

bb.k:                                             ; preds = %.lr.ph125, %Wlc_BlastAdder.exit
  %.promoted107 = phi ptr [ %.promoted107.pre, %.lr.ph125 ], [ %.val57, %Wlc_BlastAdder.exit ] ; 3 uses
  %indvars.iv144 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next145, %Wlc_BlastAdder.exit ] ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next145
  %i.bf = load float, ptr %i.be, align 4, !tbaa !237
  store i32 0, ptr %i.g, align 4, !tbaa !28
  %.idx = shl nuw nsw i64 %indvars.iv144, 5       ; 8 uses
  %.promoted104 = load i32, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %.val59 = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %.val60 = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.bg = getelementptr i8, ptr %.val60, i64 8
  %.val60.val = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %.val60.val, i64 %.idx
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [12 x i8], ptr %.val59, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, -2
  %i.bn = ptrtoint ptr %.val59 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 12
  %i.bq = trunc i64 %i.bp to i32
  %i.br = trunc i64 %i.bl to i32
  %i.bs = and i32 %i.br, 1
  %i.bt = shl nsw i32 %i.bq, 1
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = icmp eq i32 %.promoted104, 0
  br i1 %i.bv, label %bb.l, label %Vec_IntPush.exit68

bb.l:                                             ; preds = %bb.k
  %.not9.i.i66 = icmp eq ptr %.promoted107, null
  br i1 %.not9.i.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted107, i64 noundef 64) #25
  br label %Vec_IntPush.exit68

bb.n:                                             ; preds = %bb.l
  %i.bx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit68

Vec_IntPush.exit68:                               ; preds = %bb.n, %bb.m, %bb.k
  %storemerge90109 = phi ptr [ %.promoted107, %bb.k ], [ %i.bw, %bb.m ], [ %i.bx, %bb.n ] ; 3 uses
  %spec.select.sink.i65105 = phi i32 [ %.promoted104, %bb.k ], [ 16, %bb.m ], [ 16, %bb.n ] ; 2 uses
  store i32 %i.bu, ptr %storemerge90109, align 4, !tbaa !8
  %.val59.1 = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %.val60.1 = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.by = getelementptr i8, ptr %.val60.1, i64 8
  %.val60.val.1 = load ptr, ptr %i.by, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %.val60.val.1, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [12 x i8], ptr %.val59.1, i64 %i.cc
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, -2
  %i.cg = ptrtoint ptr %.val59.1 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 12
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = trunc i64 %i.ce to i32
  %i.cl = and i32 %i.ck, 1
  %i.cm = shl nsw i32 %i.cj, 1
  %i.cn = or disjoint i32 %i.cm, %i.cl
  %i.co = icmp eq i32 %spec.select.sink.i65105, 1
  br i1 %i.co, label %bb.o, label %Vec_IntPush.exit68.1

bb.o:                                             ; preds = %Vec_IntPush.exit68
  %i.cp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge90109, i64 noundef 64) #25
  br label %Vec_IntPush.exit68.1

Vec_IntPush.exit68.1:                             ; preds = %bb.o, %Vec_IntPush.exit68
  %storemerge90109.1 = phi ptr [ %storemerge90109, %Vec_IntPush.exit68 ], [ %i.cp, %bb.o ] ; 4 uses
  %spec.select.sink.i65105.1 = phi i32 [ %spec.select.sink.i65105, %Vec_IntPush.exit68 ], [ 16, %bb.o ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %storemerge90109.1, i64 4
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !8
  %.val59.2 = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %.val60.2 = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.cr = getelementptr i8, ptr %.val60.2, i64 8
  %.val60.val.2 = load ptr, ptr %i.cr, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %.val60.val.2, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [12 x i8], ptr %.val59.2, i64 %i.cv
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = and i64 %i.cx, -2
  %i.cz = ptrtoint ptr %.val59.2 to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 12
  %i.dc = trunc i64 %i.db to i32
  %i.dd = trunc i64 %i.cx to i32
  %i.de = and i32 %i.dd, 1
  %i.df = shl nsw i32 %i.dc, 1
  %i.dg = or disjoint i32 %i.df, %i.de
  %i.dh = icmp eq i32 %spec.select.sink.i65105.1, 2
  br i1 %i.dh, label %bb.p, label %Vec_IntPush.exit68.2

bb.p:                                             ; preds = %Vec_IntPush.exit68.1
  %.not9.i.i66.2 = icmp eq ptr %storemerge90109.1, null
  br i1 %.not9.i.i66.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge90109.1, i64 noundef 64) #25
  br label %Vec_IntPush.exit68.2

bb.r:                                             ; preds = %bb.p
  %i.dj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit68.2

Vec_IntPush.exit68.2:                             ; preds = %bb.r, %bb.q, %Vec_IntPush.exit68.1
  %storemerge90109.2 = phi ptr [ %storemerge90109.1, %Vec_IntPush.exit68.1 ], [ %i.di, %bb.q ], [ %i.dj, %bb.r ] ; 4 uses
  %spec.select.sink.i65105.2 = phi i32 [ %spec.select.sink.i65105.1, %Vec_IntPush.exit68.1 ], [ 16, %bb.q ], [ 16, %bb.r ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %storemerge90109.2, i64 8
  store i32 %i.dg, ptr %i.dk, align 4, !tbaa !8
  %.val59.3 = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %.val60.3 = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.dl = getelementptr i8, ptr %.val60.3, i64 8
  %.val60.val.3 = load ptr, ptr %i.dl, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %.val60.val.3, i64 12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [12 x i8], ptr %.val59.3, i64 %i.dp
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = and i64 %i.dr, -2
  %i.dt = ptrtoint ptr %.val59.3 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 12
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = trunc i64 %i.dr to i32
  %i.dy = and i32 %i.dx, 1
  %i.dz = shl nsw i32 %i.dw, 1
  %i.ea = or disjoint i32 %i.dz, %i.dy
  %i.eb = icmp eq i32 %spec.select.sink.i65105.2, 3
  br i1 %i.eb, label %bb.s, label %Vec_IntPush.exit68.3

bb.s:                                             ; preds = %Vec_IntPush.exit68.2
  %.not9.i.i66.3 = icmp eq ptr %storemerge90109.2, null
  br i1 %.not9.i.i66.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge90109.2, i64 noundef 64) #25
  br label %Vec_IntPush.exit68.3

bb.u:                                             ; preds = %bb.s
  %i.ed = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit68.3

Vec_IntPush.exit68.3:                             ; preds = %bb.u, %bb.t, %Vec_IntPush.exit68.2
  %storemerge90109.3 = phi ptr [ %storemerge90109.2, %Vec_IntPush.exit68.2 ], [ %i.ec, %bb.t ], [ %i.ed, %bb.u ] ; 4 uses
  %spec.select.sink.i65105.3 = phi i32 [ %spec.select.sink.i65105.2, %Vec_IntPush.exit68.2 ], [ 16, %bb.t ], [ 16, %bb.u ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %storemerge90109.3, i64 12
  store i32 %i.ea, ptr %i.ee, align 4, !tbaa !8
  %.val59.4 = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %.val60.4 = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.ef = getelementptr i8, ptr %.val60.4, i64 8
  %.val60.val.4 = load ptr, ptr %i.ef, align 8, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %.val60.val.4, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [12 x i8], ptr %.val59.4, i64 %i.ej
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = and i64 %i.el, -2
  %i.en = ptrtoint ptr %.val59.4 to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = sdiv exact i64 %i.eo, 12
  %i.eq = trunc i64 %i.ep to i32
  %i.er = trunc i64 %i.el to i32
end_hunk_4
begin_hunk_5_@Wlc_BlastArray:bb.a

bb.br:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.lu) #27
  br label %Vec_IntFree.exit78

Vec_IntFree.exit78:                               ; preds = %Vec_IntFree.exit, %bb.br
  tail call void @free(ptr noundef nonnull %i.j) #27
  %i.lv = load ptr, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %.not.i79 = icmp eq ptr %i.lv, null
  br i1 %.not.i79, label %Vec_IntFree.exit80, label %bb.bs

bb.bs:                                            ; preds = %Vec_IntFree.exit78
  tail call void @free(ptr noundef nonnull %i.lv) #27
  br label %Vec_IntFree.exit80

Vec_IntFree.exit80:                               ; preds = %Vec_IntFree.exit78, %bb.bs
  tail call void @free(ptr noundef nonnull %i.n) #27
  %i.lw = load ptr, ptr %i.u, align 8, !tbaa !27  ; 2 uses
  %.not.i81 = icmp eq ptr %i.lw, null
  br i1 %.not.i81, label %Vec_IntFree.exit84, label %bb.bt

bb.bt:                                            ; preds = %Vec_IntFree.exit80
  tail call void @free(ptr noundef nonnull %i.lw) #27
  br label %Vec_IntFree.exit84

Vec_IntFree.exit84:                               ; preds = %Vec_IntFree.exit80, %bb.bt
  tail call void @free(ptr noundef nonnull %i.r) #27
  tail call void @free(ptr noundef nonnull %i.lc) #27
  tail call void @free(ptr noundef nonnull %i.v) #27
  %i.lx = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.z) #27
  tail call void @Gia_ManStop(ptr noundef nonnull %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.lx
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Wlc_ComputePerm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !28
  store i32 100, ptr %i.a, align 8, !tbaa !26
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !27
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !28
  store i32 100, ptr %i.e, align 8, !tbaa !26
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !27
  %i.i = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %.val4880 = load i32, ptr %i.j, align 4, !tbaa !28
  %i.k = icmp sgt i32 %.val4880, 0
  br i1 %i.k, label %.lr.ph, label %.split.us

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = getelementptr i8, ptr %0, i64 640
  br label %bb.l

.critedge.preheader:                              ; preds = %Vec_IntPush.exit58
  %i.n = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %i.f, align 4, !tbaa !28
  store i32 %spec.select.sink.i5592, ptr %i.e, align 8
  store ptr %storemerge7996, ptr %i.h, align 8
  %wide.trip.count = and i64 %indvars.iv.next113, 4294967295
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.critedge.preheader
  %.03799.us = phi i32 [ 0, %.critedge.preheader ], [ %i.al, %._crit_edge.us ] ; 3 uses
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.preheader.us, %bb.k
  %indvars.iv121 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next122, %bb.k ] ; 3 uses
  %.198.us = phi i32 [ 0, %.preheader.us ], [ %.2.us, %bb.k ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %storemerge7996, i64 %indvars.iv121
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = icmp slt i32 %.03799.us, %i.p
  br i1 %i.q, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.critedge2.us
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %storemerge7888, i64 %indvars.iv121
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = add nsw i32 %i.s, %.03799.us
  %i.u = load i32, ptr %i.b, align 4, !tbaa !28   ; 7 uses
  %i.v = load i32, ptr %i.a, align 8, !tbaa !26
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %.Vec_IntPush.exit66.us_crit_edge

.Vec_IntPush.exit66.us_crit_edge:                 ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !27
  br label %Vec_IntPush.exit66.us

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.u, 16
  br i1 %i.x, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i32 %i.u, 1073741823
  %i.z = shl nuw nsw i32 %i.u, 1
  %spec.select.i59.us = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %.not.i9.i60.us = icmp samesign ult i32 %i.u, %spec.select.i59.us
  %.pre132 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i60.us, label %bb.e, label %Vec_IntPush.exit66.us

bb.e:                                             ; preds = %bb.d
  %.not9.i10.i61.us = icmp eq ptr %.pre132, null
  %i.aa = zext nneg i32 %spec.select.i59.us to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %.not9.i10.i61.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %.pre132, i64 noundef %i.ab) #25
  br label %Vec_IntGrow.exit11.sink.split.i62.us

bb.g:                                             ; preds = %bb.e
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #26
  br label %Vec_IntGrow.exit11.sink.split.i62.us

bb.h:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.not9.i.i64.us = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i64.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i62.us

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i62.us

Vec_IntGrow.exit11.sink.split.i62.us:             ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %storemerge.us = phi ptr [ %i.ag, %bb.j ], [ %i.af, %bb.i ], [ %i.ac, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %spec.select.sink.i63.us = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i59.us, %bb.f ], [ %spec.select.i59.us, %bb.g ]
  store ptr %storemerge.us, ptr %i.d, align 8, !tbaa !27
  store i32 %spec.select.sink.i63.us, ptr %i.a, align 8, !tbaa !26
  br label %Vec_IntPush.exit66.us

Vec_IntPush.exit66.us:                            ; preds = %.Vec_IntPush.exit66.us_crit_edge, %Vec_IntGrow.exit11.sink.split.i62.us, %bb.d
  %i.ah = phi ptr [ %.pre, %.Vec_IntPush.exit66.us_crit_edge ], [ %storemerge.us, %Vec_IntGrow.exit11.sink.split.i62.us ], [ %.pre132, %bb.d ]
  %i.ai = add nsw i32 %i.u, 1
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !28
  %i.aj = sext i32 %i.u to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  store i32 %i.t, ptr %i.ak, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit66.us, %.critedge2.us
  %.2.us = phi i32 [ 1, %Vec_IntPush.exit66.us ], [ %.198.us, %.critedge2.us ] ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.critedge2.us, !llvm.loop !379

._crit_edge.us:                                   ; preds = %bb.k
  %i.al = add nuw nsw i32 %.03799.us, 1
  %.not.us = icmp eq i32 %.2.us, 0
  br i1 %.not.us, label %.split.us, label %.preheader.us, !llvm.loop !380

bb.l:                                             ; preds = %.lr.ph, %Vec_IntPush.exit58
  %indvars.iv114 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next115, %Vec_IntPush.exit58 ] ; 2 uses
  %indvars.iv112 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next113, %Vec_IntPush.exit58 ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit58 ] ; 7 uses
  %storemerge7995 = phi ptr [ %i.g, %.lr.ph ], [ %storemerge7996, %Vec_IntPush.exit58 ] ; 6 uses
  %spec.select.sink.i5593 = phi i32 [ 100, %.lr.ph ], [ %spec.select.sink.i5592, %Vec_IntPush.exit58 ] ; 3 uses
  %storemerge7887 = phi ptr [ %i.i, %.lr.ph ], [ %storemerge7888, %Vec_IntPush.exit58 ] ; 6 uses
  %spec.select.sink.i85 = phi i32 [ 100, %.lr.ph ], [ %spec.select.sink.i84, %Vec_IntPush.exit58 ] ; 3 uses
  %.03682 = phi i32 [ 0, %.lr.ph ], [ %i.by, %Vec_IntPush.exit58 ] ; 2 uses
  %.val49 = load ptr, ptr %i.l, align 8, !tbaa !27
  %.val50 = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %indvars.iv114
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %.val50, i64 %i.ao ; 2 uses
  %i.aq = trunc nsw i64 %indvars.iv112 to i32
  %i.ar = icmp eq i32 %spec.select.sink.i85, %i.aq
  br i1 %i.ar, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.as = icmp samesign ult i64 %indvars.iv112, 16
  br i1 %i.as, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i = icmp eq ptr %storemerge7887, null
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge7887, i64 noundef 64) #25
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.n
  %i.au = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.m
  %i.av = icmp samesign ult i64 %indvars.iv112, 1073741823
  %indvars.iv112.tr = trunc i64 %indvars.iv112 to i32
  %i.aw = shl i32 %indvars.iv112.tr, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 4 uses
  %i.ax = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv112, %i.ax
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i = icmp eq ptr %storemerge7887, null
  %i.ay = zext nneg i32 %spec.select.i to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %storemerge7887, i64 noundef %i.az) #25
  br label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.r
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.p, %bb.o, %bb.t, %bb.s, %bb.l, %bb.q
  %storemerge7888 = phi ptr [ %storemerge7887, %bb.l ], [ %storemerge7887, %bb.q ], [ %i.au, %bb.p ], [ %i.at, %bb.o ], [ %i.ba, %bb.s ], [ %i.bb, %bb.t ] ; 4 uses
  %spec.select.sink.i84 = phi i32 [ %spec.select.sink.i85, %bb.l ], [ %spec.select.sink.i85, %bb.q ], [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.t ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %storemerge7888, i64 %indvars.iv112
  store i32 %.03682, ptr %i.bc, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %.val42 = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr i8, ptr %i.ap, i64 12     ; 2 uses
  %.val43 = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bf = sub nsw i32 %.val42, %.val43
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = trunc nsw i64 %indvars.iv to i32
  %i.bj = icmp eq i32 %spec.select.sink.i5593, %i.bi
  br i1 %i.bj, label %bb.u, label %Vec_IntPush.exit58

bb.u:                                             ; preds = %Vec_IntPush.exit
  %i.bk = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bk, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not9.i.i56 = icmp eq ptr %storemerge7995, null
  br i1 %.not9.i.i56, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge7995, i64 noundef 64) #25
  br label %Vec_IntPush.exit58

bb.x:                                             ; preds = %bb.v
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit58

bb.y:                                             ; preds = %bb.u
  %i.bn = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bo = shl i32 %indvars.iv.tr, 1
  %spec.select.i51 = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %i.bp = sext i32 %spec.select.i51 to i64
  %.not.i9.i52 = icmp samesign ult i64 %indvars.iv, %i.bp
  br i1 %.not.i9.i52, label %bb.z, label %Vec_IntPush.exit58

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i53 = icmp eq ptr %storemerge7995, null
  %i.bq = zext nneg i32 %spec.select.i51 to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  br i1 %.not9.i10.i53, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %storemerge7995, i64 noundef %i.br) #25
  br label %Vec_IntPush.exit58

bb.ab:                                            ; preds = %bb.z
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #26
  br label %Vec_IntPush.exit58

Vec_IntPush.exit58:                               ; preds = %bb.x, %bb.w, %bb.ab, %bb.aa, %Vec_IntPush.exit, %bb.y
  %storemerge7996 = phi ptr [ %storemerge7995, %Vec_IntPush.exit ], [ %storemerge7995, %bb.y ], [ %i.bm, %bb.x ], [ %i.bl, %bb.w ], [ %i.bs, %bb.aa ], [ %i.bt, %bb.ab ] ; 5 uses
  %spec.select.sink.i5592 = phi i32 [ %spec.select.sink.i5593, %Vec_IntPush.exit ], [ %spec.select.sink.i5593, %bb.y ], [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i51, %bb.aa ], [ %spec.select.i51, %bb.ab ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %storemerge7996, i64 %indvars.iv
  store i32 %i.bh, ptr %i.bu, align 4, !tbaa !8
  %.val = load i32, ptr %i.bd, align 8, !tbaa !31
  %.val41 = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bv = sub nsw i32 %.val, %.val41
  %i.bw = tail call i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  %i.bx = add nuw nsw i32 %.03682, 1
  %i.by = add nuw nsw i32 %i.bx, %i.bw
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %.val48 = load i32, ptr %i.j, align 4, !tbaa !28
  %i.bz = sext i32 %.val48 to i64
  %i.ca = icmp slt i64 %indvars.iv.next115, %i.bz
  br i1 %i.ca, label %bb.l, label %.critedge.preheader, !llvm.loop !381

.split.us:                                        ; preds = %._crit_edge.us, %bb.a
  %.val44.us142 = phi ptr [ %i.g, %bb.a ], [ %storemerge7996, %._crit_edge.us ]
  %i.cb = phi ptr [ %i.i, %bb.a ], [ %storemerge7888, %._crit_edge.us ] ; 2 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %.split.us.thread

.split.us.thread:                                 ; preds = %.split.us
  tail call void @free(ptr noundef nonnull %i.cb) #27
  %.pre133 = load ptr, ptr %i.h, align 8, !tbaa !27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.split.us, %.split.us.thread
  %i.cc = phi ptr [ %.val44.us142, %.split.us ], [ %.pre133, %.split.us.thread ] ; 2 uses
  %.not.i67 = icmp eq ptr %i.cc, null
  br i1 %.not.i67, label %Vec_IntFree.exit68, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.cc) #27
  br label %Vec_IntFree.exit68

Vec_IntFree.exit68:                               ; preds = %Vec_IntFree.exit, %bb.ac
  tail call void @free(ptr noundef nonnull %i.e) #27
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !28  ; 8 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph.i, label %Vec_IntReverseOrder.exit

.lr.ph.i:                                         ; preds = %Vec_IntFree.exit68
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !27  ; 6 uses
  %i.cg = lshr i32 %i.cd, 1                       ; 3 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %xtraiter = and i64 %i.ch, 1
  %i.ci = icmp eq i32 %i.cg, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ch, 1073741822
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.ad ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ad ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cm = xor i32 %i.cl, -1
  %i.cn = add nsw i32 %i.cd, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8
  store i32 %i.cq, ptr %i.cj, align 4, !tbaa !8
  store i32 %i.ck, ptr %i.cp, align 4, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !8
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.cu = xor i32 %i.ct, -1
  %i.cv = add nsw i32 %i.cd, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  store i32 %i.cy, ptr %i.cr, align 4, !tbaa !8
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !130

Vec_IntReverseOrder.exit.loopexit.unr-lcssa:      ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_IntReverseOrder.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %Vec_IntReverseOrder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod146 = trunc i32 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add nsw i32 %i.cd, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  store i32 %i.dg, ptr %i.cz, align 4, !tbaa !8
  store i32 %i.da, ptr %i.df, align 4, !tbaa !8
  br label %Vec_IntReverseOrder.exit

Vec_IntReverseOrder.exit:                         ; preds = %.epil.preheader, %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, %Vec_IntFree.exit68
  %i.dh = icmp slt i32 %i.cd, %1
  br i1 %i.dh, label %.lr.ph101, label %bb.an

.lr.ph101:                                        ; preds = %Vec_IntReverseOrder.exit
  %.promoted104 = load i32, ptr %i.a, align 8, !tbaa !26
  %.promoted107 = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.di = sext i32 %i.cd to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph101, %Vec_IntPush.exit76
  %indvars.iv125 = phi i64 [ %i.di, %.lr.ph101 ], [ %indvars.iv.next126, %Vec_IntPush.exit76 ] ; 7 uses
  %storemerge77108 = phi ptr [ %.promoted107, %.lr.ph101 ], [ %storemerge77109, %Vec_IntPush.exit76 ] ; 6 uses
  %spec.select.sink.i73106 = phi i32 [ %.promoted104, %.lr.ph101 ], [ %spec.select.sink.i73105, %Vec_IntPush.exit76 ] ; 3 uses
  %.240100 = phi i32 [ %i.cd, %.lr.ph101 ], [ %i.dw, %Vec_IntPush.exit76 ] ; 2 uses
  %i.dj = trunc nsw i64 %indvars.iv125 to i32
  %i.dk = icmp eq i32 %spec.select.sink.i73106, %i.dj
  br i1 %i.dk, label %bb.af, label %Vec_IntPush.exit76

bb.af:                                            ; preds = %bb.ae
  %i.dl = icmp slt i64 %indvars.iv125, 16
  br i1 %i.dl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not9.i.i74 = icmp eq ptr %storemerge77108, null
  br i1 %.not9.i.i74, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge77108, i64 noundef 64) #25
  br label %Vec_IntPush.exit76

bb.ai:                                            ; preds = %bb.ag
  %i.dn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit76

bb.aj:                                            ; preds = %bb.af
  %i.do = icmp samesign ult i64 %indvars.iv125, 1073741823
  %indvars.iv125.tr = trunc i64 %indvars.iv125 to i32
  %i.dp = shl i32 %indvars.iv125.tr, 1
  %spec.select.i69 = select i1 %i.do, i32 %i.dp, i32 2147483647 ; 4 uses
  %i.dq = sext i32 %spec.select.i69 to i64
  %.not.i9.i70 = icmp samesign ult i64 %indvars.iv125, %i.dq
  br i1 %.not.i9.i70, label %bb.ak, label %Vec_IntPush.exit76

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i71 = icmp eq ptr %storemerge77108, null
  %i.dr = zext nneg i32 %spec.select.i69 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  br i1 %.not9.i10.i71, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %storemerge77108, i64 noundef %i.ds) #25
  br label %Vec_IntPush.exit76

bb.am:                                            ; preds = %bb.ak
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.ds) #26
  br label %Vec_IntPush.exit76

Vec_IntPush.exit76:                               ; preds = %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.aj
  %storemerge77109 = phi ptr [ %storemerge77108, %bb.ae ], [ %storemerge77108, %bb.aj ], [ %i.dn, %bb.ai ], [ %i.dm, %bb.ah ], [ %i.dt, %bb.al ], [ %i.du, %bb.am ] ; 3 uses
  %spec.select.sink.i73105 = phi i32 [ %spec.select.sink.i73106, %bb.ae ], [ %spec.select.sink.i73106, %bb.aj ], [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i69, %bb.al ], [ %spec.select.i69, %bb.am ] ; 2 uses
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %storemerge77109, i64 %indvars.iv125
  store i32 %.240100, ptr %i.dv, align 4, !tbaa !8
  %i.dw = add nsw i32 %.240100, 1                 ; 2 uses
  %exitcond128.not = icmp eq i32 %i.dw, %1
  br i1 %exitcond128.not, label %._crit_edge, label %bb.ae, !llvm.loop !382

._crit_edge:                                      ; preds = %Vec_IntPush.exit76
  %i.dx = trunc nsw i64 %indvars.iv.next126 to i32
  store i32 %i.dx, ptr %i.b, align 4, !tbaa !28
  store i32 %spec.select.sink.i73105, ptr %i.a, align 8
  store ptr %storemerge77109, ptr %i.d, align 8
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge, %Vec_IntReverseOrder.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Wlc_TransferPioNames(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  %i.b = alloca [1000 x i8], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !383  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Vec_PtrFreeP.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.g) #27
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !383  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.b
  %i.j = phi ptr [ %i.h, %.thread.i ], [ %i.d, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.j) #27
  store ptr null, ptr %i.c, align 8, !tbaa !383
  br label %Vec_PtrFreeP.exit

Vec_PtrFreeP.exit:                                ; preds = %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Vec_PtrFreeP.exit122, label %bb.d

bb.d:                                             ; preds = %Vec_PtrFreeP.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %.not.i120 = icmp eq ptr %i.o, null
  br i1 %.not.i120, label %bb.e, label %.thread.i121

.thread.i121:                                     ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.o) #27
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !383  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %.thread.i121, %bb.d
  %i.r = phi ptr [ %i.p, %.thread.i121 ], [ %i.l, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.r) #27
  store ptr null, ptr %i.k, align 8, !tbaa !383
  br label %Vec_PtrFreeP.exit122

Vec_PtrFreeP.exit122:                             ; preds = %Vec_PtrFreeP.exit, %bb.e
  %i.s = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %.val106 = load i32, ptr %i.s, align 8, !tbaa !243 ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %.val107 = load ptr, ptr %i.t, align 8, !tbaa !166
  %i.u = getelementptr i8, ptr %.val107, i64 4
  %.val107.val = load i32, ptr %i.u, align 4, !tbaa !28
  %i.v = sub nsw i32 %.val107.val, %.val106       ; 2 uses
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  %i.x = add i32 %i.v, -1
  %or.cond.i = icmp ult i32 %i.x, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.v ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !50
  store i32 %spec.store.select.i, ptr %i.w, align 8, !tbaa !236
  %.not.i123 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i123, label %Vec_PtrAlloc.exit, label %bb.f

bb.f:                                             ; preds = %Vec_PtrFreeP.exit122
  %i.z = sext i32 %spec.store.select.i to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #26
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %Vec_PtrFreeP.exit122, %bb.f
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %Vec_PtrFreeP.exit122 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !53
  store ptr %i.w, ptr %i.c, align 8, !tbaa !341
  %i.ae = getelementptr i8, ptr %1, i64 72        ; 3 uses
  %.val119 = load ptr, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr i8, ptr %.val119, i64 4
  %.val119.val = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ag = sub nsw i32 %.val119.val, %.val106      ; 2 uses
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  %i.ai = add i32 %i.ag, -1
  %or.cond.i124 = icmp ult i32 %i.ai, 7
  %spec.store.select.i125 = select i1 %or.cond.i124, i32 8, i32 %i.ag ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !50
  store i32 %spec.store.select.i125, ptr %i.ah, align 8, !tbaa !236
  %.not.i126 = icmp eq i32 %spec.store.select.i125, 0
  br i1 %.not.i126, label %Vec_PtrAlloc.exit127, label %bb.g

bb.g:                                             ; preds = %Vec_PtrAlloc.exit
  %i.ak = sext i32 %spec.store.select.i125 to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #26
  br label %Vec_PtrAlloc.exit127

Vec_PtrAlloc.exit127:                             ; preds = %Vec_PtrAlloc.exit, %bb.g
  %i.an = phi ptr [ %i.am, %bb.g ], [ null, %Vec_PtrAlloc.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !53
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !355
  %i.ap = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %.val94150 = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.aq = icmp sgt i32 %.val94150, 0
  br i1 %i.aq, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit127
  %i.ar = getelementptr i8, ptr %0, i64 56
  %i.as = getelementptr i8, ptr %0, i64 640
  br label %bb.h

.critedge.preheader:                              ; preds = %.loopexit148, %Vec_PtrAlloc.exit127
  %i.at = getelementptr i8, ptr %0, i64 68        ; 2 uses
  %.val97153 = load i32, ptr %i.at, align 4, !tbaa !28 ; 2 uses
  %i.au = icmp sgt i32 %.val97153, 0
  br i1 %i.au, label %.lr.ph155, label %.critedge3

.lr.ph155:                                        ; preds = %.critedge.preheader
  %i.av = getelementptr i8, ptr %0, i64 72
  %i.aw = getelementptr i8, ptr %0, i64 640
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %.loopexit148
  %.val94161 = phi i32 [ %.val94150, %.lr.ph ], [ %.val94, %.loopexit148 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit148 ] ; 2 uses
  %.val95 = load ptr, ptr %i.ar, align 8, !tbaa !27
  %.val96 = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8  ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [24 x i8], ptr %.val96, i64 %i.az ; 3 uses
  %.val110 = load i16, ptr %i.ba, align 8
  %i.bb = and i16 %.val110, 63
  %.not145 = icmp eq i16 %i.bb, 1
  br i1 %.not145, label %bb.i, label %.loopexit148

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call ptr @Wlc_ObjName(ptr noundef nonnull %0, i32 noundef %i.ay) #27
  %i.bd = getelementptr i8, ptr %i.ba, i64 8      ; 2 uses
  %.val86 = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr i8, ptr %i.ba, i64 12     ; 2 uses
  %.val87 = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bf = sub i32 %.val86, %.val87
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %Vec_PtrPush.exit
  %.0149 = phi i32 [ 0, %bb.i ], [ %i.cr, %Vec_PtrPush.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !33 ; 2 uses
  %i.bi = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bj = icmp slt i32 %i.bh, %i.bi
end_hunk_5
