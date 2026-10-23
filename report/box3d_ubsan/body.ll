Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/body?download=true
inline.NumInlined: 248
inline.NumDeleted: 40
begin_hunk_0_@b3Body_Disable:bb.a
  %.0135 = phi i32 [ %i.dv, %bb.ad ], [ %i.da, %.lr.ph137 ] ; 2 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !137 ; 3 uses
  %i.de = sext i32 %.0135 to i64                  ; 2 uses
  %i.df = getelementptr inbounds [232 x i8], ptr %i.dd, i64 %i.de ; 3 uses
  %i.dg = mul nsw i64 %i.de, 232
  %i.dh = ptrtoint ptr %i.dd to i64, !nosanitize !9 ; 3 uses
  %i.di = add i64 %i.dg, %i.dh, !nosanitize !9    ; 3 uses
  %i.dj = icmp ne ptr %i.dd, null, !nosanitize !9 ; 2 uses
  %i.dk = icmp eq i64 %i.di, 0
  %i.dl = xor i1 %i.dj, %i.dk
  %i.dm = icmp uge i64 %i.di, %i.dh, !nosanitize !9
  %i.dn = icmp slt i32 %.0135, 0
  %i.do = xor i1 %i.dn, %i.dm
  %i.dp = and i1 %i.dl, %i.do, !nosanitize !9
  br i1 %i.dp, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %.lr.ph137.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @333, i64 %i.dh, i64 %i.di) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %.lr.ph137.split
  %i.dq = ptrtoint ptr %i.df to i64, !nosanitize !9 ; 2 uses
  %i.dr = and i64 %i.dq, 7, !nosanitize !9
  %i.ds = icmp eq i64 %i.dr, 0, !nosanitize !9
  %i.dt = and i1 %i.dj, %i.ds
  br i1 %i.dt, label %bb.ad, label %bb.ac, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @334, i64 %i.dq) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !151 ; 2 uses
  call void @b3DestroyShapeProxy(ptr noundef nonnull %i.df, ptr noundef nonnull %i.dc) #10
  %.not54 = icmp eq i32 %i.dv, -1
  br i1 %.not54, label %._crit_edge138, label %.lr.ph137.split, !llvm.loop !343

._crit_edge138:                                   ; preds = %bb.ad, %._crit_edge
  call fastcc void @b3RemoveBodyFromIsland(ptr noundef %i.c, ptr noundef %i.ab)
  call void @b3TransferBody(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ab) #10
  call void @b3ValidateConnectivity(ptr noundef nonnull %i.c) #10
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.k, %._crit_edge138
  store i8 0, ptr %i.j, align 1, !tbaa !100
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

declare void @b3RecWrite_BodyDisable(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b3ValidateConnectivity(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b3Body_Enable(i64 %0) local_unnamed_addr #0 !func_sanitize !131 {
bb.a:
  %1 = alloca %struct.b3RecArgs_BodyEnable, align 8 ; 4 uses
  %2 = alloca %struct.b3Transform, align 8        ; 4 uses
  %.sroa.4.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 16 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !9 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.e) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 3 uses
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1, !nosanitize !9
  br i1 %i.m, label %bb.f, label %bb.g, !prof !71, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.n = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @3, i64 %i.n, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.o = extractvalue { i32, i1 } %i.l, 0, !nosanitize !9 ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = shl nsw i64 %i.p, 7
  %i.r = ptrtoint ptr %i.k to i64, !nosanitize !9 ; 3 uses
  %i.s = add i64 %i.q, %i.r, !nosanitize !9       ; 3 uses
  %i.t = icmp ne ptr %i.k, null, !nosanitize !9
  %i.u = icmp eq i64 %i.s, 0
  %i.v = xor i1 %i.t, %i.u
  %i.w = icmp uge i64 %i.s, %i.r, !nosanitize !9
  %i.x = icmp slt i32 %i.o, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !9
  br i1 %i.z, label %b3GetBodyFullId.exit, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @4, i64 %i.r, i64 %i.s) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3GetBodyFullId.exit:                             ; preds = %bb.g
  %i.aa = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.p
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 %0, ptr %1, align 8
  call void @b3RecWrite_BodyEnable(ptr noundef nonnull %i.i, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %.sroa.0.0.extract.trunc.i84 = trunc i64 %0 to i32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 3 uses
  %i.ad = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i84, i32 -1) ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1, !nosanitize !9
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !71, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %0, 4294967295
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @3, i64 %i.af, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.ag = extractvalue { i32, i1 } %i.ad, 0, !nosanitize !9 ; 2 uses
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nsw i64 %i.ah, 7
  %i.aj = ptrtoint ptr %i.ac to i64, !nosanitize !9 ; 3 uses
  %i.ak = add i64 %i.ai, %i.aj, !nosanitize !9    ; 3 uses
  %i.al = icmp ne ptr %i.ac, null, !nosanitize !9
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = xor i1 %i.al, %i.am
  %i.ao = icmp uge i64 %i.ak, %i.aj, !nosanitize !9
  %i.ap = icmp slt i32 %i.ag, 0
  %i.aq = xor i1 %i.ap, %i.ao
  %i.ar = and i1 %i.an, %i.aq, !nosanitize !9
  br i1 %i.ar, label %b3GetBodyFullId.exit85, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @4, i64 %i.aj, i64 %i.ak) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3GetBodyFullId.exit85:                           ; preds = %bb.k
  %i.as = getelementptr inbounds [128 x i8], ptr %i.ac, i64 %i.ah
  br label %bb.m

bb.m:                                             ; preds = %b3GetBodyFullId.exit, %b3GetBodyFullId.exit85
  %phi.call = phi ptr [ %i.aa, %b3GetBodyFullId.exit ], [ %i.as, %b3GetBodyFullId.exit85 ] ; 9 uses
  %i.at = icmp ne ptr %phi.call, null, !nosanitize !9
  %i.au = ptrtoint ptr %phi.call to i64, !nosanitize !9 ; 2 uses
  %i.av = and i64 %i.au, 7, !nosanitize !9
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !9
  %i.ax = and i1 %i.at, %i.aw, !nosanitize !9
  br i1 %i.ax, label %bb.o, label %bb.n, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @336, i64 %i.au) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %phi.call, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !75
  %.not77 = icmp eq i32 %i.az, 1
  br i1 %.not77, label %bb.p, label %bb.an

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 3920 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64, !nosanitize !9 ; 5 uses
  %i.be = add i64 %i.bd, 88, !nosanitize !9       ; 2 uses
  %i.bf = icmp ne ptr %i.bb, null, !nosanitize !9
  %i.bg = icmp ne i64 %i.be, 0
  %i.bh = icmp ult ptr %i.bb, inttoptr (i64 -88 to ptr)
  %i.bi = and i1 %i.bh, %i.bg
  %i.bj = and i1 %i.bf, %i.bi
  br i1 %i.bj, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @337, i64 %i.bd, i64 %i.be) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %phi.call, i64 120 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !116
  %i.bm = icmp eq i32 %i.bl, 0                    ; 3 uses
  %i.bn = select i1 %i.bm, i64 0, i64 2
  %.finite = select i1 %i.bm, i64 0, i64 176
  %i.bo = add i64 %.finite, %i.bd, !nosanitize !9 ; 2 uses
  %.not114 = icmp ult i64 %i.bo, %i.bd, !nosanitize !9
  br i1 %.not114, label %bb.s, label %bb.t, !prof !71, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @338, i64 %i.bd, i64 %i.bo) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %i.bb, i64 %i.bn
  call void @b3TransferBody(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bc, ptr noundef nonnull %phi.call) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef nonnull %i.c, ptr noundef nonnull %phi.call)
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !116
  %i.br = getelementptr inbounds nuw i8, ptr %phi.call, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !149 ; 2 uses
  %.not78304 = icmp eq i32 %i.bs, -1
  br i1 %.not78304, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 4080
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.058305 = phi i32 [ %i.cn, %bb.x ], [ %i.bs, %.lr.ph ] ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !137 ; 3 uses
  %i.bw = sext i32 %.058305 to i64                ; 2 uses
  %i.bx = getelementptr inbounds [232 x i8], ptr %i.bv, i64 %i.bw ; 3 uses
  %i.by = mul nsw i64 %i.bw, 232
  %i.bz = ptrtoint ptr %i.bv to i64, !nosanitize !9 ; 3 uses
  %i.ca = add i64 %i.by, %i.bz, !nosanitize !9    ; 3 uses
  %i.cb = icmp ne ptr %i.bv, null, !nosanitize !9 ; 2 uses
  %i.cc = icmp eq i64 %i.ca, 0
  %i.cd = xor i1 %i.cb, %i.cc
  %i.ce = icmp uge i64 %i.ca, %i.bz, !nosanitize !9
  %i.cf = icmp slt i32 %.058305, 0
  %i.cg = xor i1 %i.cf, %i.ce
  %i.ch = and i1 %i.cd, %i.cg, !nosanitize !9
  br i1 %i.ch, label %bb.v, label %bb.u, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %.lr.ph.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @339, i64 %i.bz, i64 %i.ca) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %.lr.ph.split
  %i.ci = ptrtoint ptr %i.bx to i64, !nosanitize !9 ; 2 uses
  %i.cj = and i64 %i.ci, 7, !nosanitize !9
  %i.ck = icmp eq i64 %i.cj, 0, !nosanitize !9
  %i.cl = and i1 %i.cb, %i.ck
  br i1 %i.cl, label %bb.x, label %bb.w, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @340, i64 %i.ci) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !151 ; 2 uses
  call void @b3CreateShapeProxy(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bu, i32 noundef %i.bq, ptr noundef nonnull byval(%struct.b3Transform) align 8 %2, i1 noundef zeroext true) #10
  %.not78 = icmp eq i32 %i.cn, -1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split, !llvm.loop !344

._crit_edge:                                      ; preds = %bb.x, %bb.t
  br i1 %i.bm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  call fastcc void @b3CreateIslandForBody(ptr noundef %i.c, i32 noundef 2, ptr noundef %phi.call)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %phi.call, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !132 ; 2 uses
  %.not80306 = icmp eq i32 %i.cp, -1
  br i1 %.not80306, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  br label %.lr.ph309.split.split.us

.lr.ph309.split.split.us:                         ; preds = %.lr.ph309, %bb.am
  %.057307.us = phi i32 [ %i.ds, %bb.am ], [ %i.cp, %.lr.ph309 ] ; 2 uses
  %i.cs = and i32 %.057307.us, 1
  %i.ct = ashr i32 %.057307.us, 1                 ; 2 uses
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !133 ; 3 uses
  %i.cv = sext i32 %i.ct to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [72 x i8], ptr %i.cu, i64 %i.cv ; 5 uses
  %i.cx = mul nsw i64 %i.cv, 72
  %i.cy = ptrtoint ptr %i.cu to i64, !nosanitize !9 ; 3 uses
  %i.cz = add i64 %i.cx, %i.cy, !nosanitize !9    ; 3 uses
  %i.da = icmp ne ptr %i.cu, null, !nosanitize !9 ; 2 uses
  %i.db = icmp eq i64 %i.cz, 0
  %i.dc = xor i1 %i.da, %i.db
  %i.dd = icmp uge i64 %i.cz, %i.cy, !nosanitize !9
  %i.de = icmp slt i32 %i.ct, 0
  %i.df = xor i1 %i.de, %i.dd
  %i.dg = and i1 %i.dc, %i.df, !nosanitize !9
  br i1 %i.dg, label %bb.aa, label %.split.us, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %.lr.ph309.split.split.us
  %i.dh = ptrtoint ptr %i.cw to i64, !nosanitize !9 ; 2 uses
  %i.di = and i64 %i.dh, 7, !nosanitize !9
  %i.dj = icmp eq i64 %i.di, 0, !nosanitize !9
  %i.dk = and i1 %i.da, %i.dj
  br i1 %i.dk, label %bb.ab, label %.split313.us, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 20 ; 4 uses
  %i.dm = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.dn = mul nuw nsw i64 %i.dm, 12
  %i.do = ptrtoint ptr %i.dl to i64, !nosanitize !9 ; 5 uses
  %i.dp = add i64 %i.dn, %i.do, !nosanitize !9    ; 2 uses
  %.not81.us = icmp ult i64 %i.dp, %i.do, !nosanitize !9
  br i1 %.not81.us, label %.split316.us, label %bb.ac, !prof !71, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !135 ; 2 uses
  %i.dt = load ptr, ptr %i.cr, align 8, !tbaa !70 ; 4 uses
  %i.du = load i32, ptr %i.dl, align 4, !tbaa !185 ; 2 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [128 x i8], ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = shl nsw i64 %i.dv, 7
  %i.dy = ptrtoint ptr %i.dt to i64, !nosanitize !9 ; 6 uses
  %i.dz = add i64 %i.dx, %i.dy, !nosanitize !9    ; 3 uses
  %i.ea = icmp ne ptr %i.dt, null, !nosanitize !9 ; 3 uses
  %i.eb = icmp eq i64 %i.dz, 0
  %i.ec = xor i1 %i.ea, %i.eb
  %i.ed = icmp uge i64 %i.dz, %i.dy, !nosanitize !9
  %i.ee = icmp slt i32 %i.du, 0
  %i.ef = xor i1 %i.ee, %i.ed
  %i.eg = and i1 %i.ec, %i.ef, !nosanitize !9
  br i1 %i.eg, label %bb.ad, label %.split329.us, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %.not82.us = icmp ugt ptr %i.dl, inttoptr (i64 -13 to ptr)
  br i1 %.not82.us, label %.split333.us, label %bb.ae, !prof !71, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !185 ; 2 uses
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [128 x i8], ptr %i.dt, i64 %i.ej ; 2 uses
  %i.el = shl nsw i64 %i.ej, 7
  %i.em = add i64 %i.el, %i.dy, !nosanitize !9    ; 3 uses
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = xor i1 %i.ea, %i.en
  %i.ep = icmp uge i64 %i.em, %i.dy, !nosanitize !9
  %i.eq = icmp slt i32 %i.ei, 0
  %i.er = xor i1 %i.eq, %i.ep
  %i.es = and i1 %i.eo, %i.er, !nosanitize !9
  br i1 %i.es, label %bb.af, label %.split339.us, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  %i.et = ptrtoint ptr %i.dw to i64, !nosanitize !9 ; 2 uses
  %i.eu = and i64 %i.et, 7, !nosanitize !9
  %i.ev = icmp eq i64 %i.eu, 0, !nosanitize !9
  %i.ew = and i1 %i.ea, %i.ev
  br i1 %i.ew, label %bb.ag, label %.split343.us, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !75 ; 3 uses
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.am, label %bb.ah, !llvm.loop !345

bb.ah:                                            ; preds = %bb.ag
  %i.fa = ptrtoint ptr %i.ek to i64, !nosanitize !9 ; 2 uses
  %i.fb = and i64 %i.fa, 7, !nosanitize !9
  %i.fc = icmp eq i64 %i.fb, 0, !nosanitize !9
  br i1 %i.fc, label %bb.ai, label %.split349.us, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !75 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.am, label %bb.aj, !llvm.loop !345

bb.aj:                                            ; preds = %bb.ai
  %i.fg = icmp eq i32 %i.ey, 0
  %spec.select.us = select i1 %i.fg, i32 %i.fe, i32 %i.ey ; 3 uses
  %i.fh = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.fi = sext i32 %spec.select.us to i64         ; 2 uses
  %i.fj = mul nsw i64 %i.fi, 88
  %i.fk = ptrtoint ptr %i.fh to i64, !nosanitize !9 ; 3 uses
  %i.fl = add i64 %i.fj, %i.fk, !nosanitize !9    ; 3 uses
  %i.fm = icmp ne ptr %i.fh, null, !nosanitize !9
  %i.fn = icmp eq i64 %i.fl, 0
  %i.fo = xor i1 %i.fm, %i.fn
  %i.fp = icmp uge i64 %i.fl, %i.fk, !nosanitize !9
  %i.fq = icmp slt i32 %spec.select.us, 0
  %i.fr = xor i1 %i.fq, %i.fp
  %i.fs = and i1 %i.fo, %i.fr, !nosanitize !9
  br i1 %i.fs, label %bb.ak, label %.split355.us, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.ft = getelementptr inbounds [88 x i8], ptr %i.fh, i64 %i.fi
  call void @b3TransferJoint(ptr noundef nonnull %i.c, ptr noundef %i.ft, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.cw) #10
  %.not83.us = icmp eq i32 %spec.select.us, 0
end_hunk_0
