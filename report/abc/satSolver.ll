Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver?download=true
inline.NumInlined: 548
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@sat_solver_minimize_assumptions:bb.a
  %i.lx = getelementptr i8, ptr %i.lw, i64 -4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !40
  %i.lz = sext i32 %i.lu to i64
  %i.ma = sext i32 %i.ly to i64
  %i.mb = sext i32 %i.lt to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %.lr.ph.i.i189
  %indvars.iv.i.i190 = phi i64 [ %i.lz, %.lr.ph.i.i189 ], [ %indvars.iv.next.i.i191, %bb.be ] ; 2 uses
  %indvars.iv.next.i.i191 = add nsw i64 %indvars.iv.i.i190, -1 ; 4 uses
  %i.mc = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %indvars.iv.next.i.i191
  %i.me = load i32, ptr %i.md, align 4, !tbaa !40
  %i.mf = ashr i32 %i.me, 1
  %.val41.i.i192 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.mg = sext i32 %i.mf to i64                   ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %.val41.i.i192, i64 %i.mg
  store i8 3, ptr %i.mh, align 1, !tbaa !32
  %i.mi = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.mg
  store i32 0, ptr %i.mj, align 4, !tbaa !40
  %.not37.i.i193 = icmp sgt i64 %indvars.iv.i.i190, %i.ma
  br i1 %.not37.i.i193, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mk = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.i191
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !40
  %.val43.i.i194 = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.mn = trunc i32 %i.mm to i8
  %i.mo = and i8 %i.mn, 1
  %i.mp = xor i8 %i.mo, 1
  %i.mq = getelementptr inbounds i8, ptr %.val43.i.i194, i64 %i.mg
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.not35.not.i.i195 = icmp sgt i64 %indvars.iv.next.i.i191, %i.mb
  br i1 %.not35.not.i.i195, label %bb.bc, label %._crit_edge.i.i182, !llvm.loop !5

._crit_edge.i.i182:                               ; preds = %bb.be, %bb.bb
  %i.mr = load i32, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  %.not36.not48.i.i183 = icmp sgt i32 %i.mr, %i.lt
  br i1 %.not36.not48.i.i183, label %.lr.ph51.i.i185, label %._crit_edge52.i.i184

.lr.ph51.i.i185:                                  ; preds = %._crit_edge.i.i182
  %i.ms = sext i32 %i.mr to i64
  %i.mt = sext i32 %i.lt to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph51.i.i185
  %indvars.iv54.i.i186 = phi i64 [ %i.ms, %.lr.ph51.i.i185 ], [ %indvars.iv.next55.i.i187, %bb.bf ]
  %indvars.iv.next55.i.i187 = add nsw i64 %indvars.iv54.i.i186, -1 ; 3 uses
  %i.mu = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv.next55.i.i187
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !40
  %i.mx = ashr i32 %i.mw, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.mx)
  %.not36.not.i.i188 = icmp sgt i64 %indvars.iv.next55.i.i187, %i.mt
  br i1 %.not36.not.i.i188, label %bb.bf, label %._crit_edge52.i.i184, !llvm.loop !6

._crit_edge52.i.i184:                             ; preds = %bb.bf, %._crit_edge.i.i182
  store i32 %i.lt, ptr %i.i, align 4, !tbaa !61
  store i32 %i.lt, ptr %i.n, align 8, !tbaa !62
  store i32 %i.lq, ptr %i.g, align 4, !tbaa !44
  br label %sat_solver_pop.exit196

sat_solver_pop.exit196:                           ; preds = %bb.ba, %._crit_edge52.i.i184
  %.val42.i.i178306 = phi i32 [ %.val42.i.i178, %bb.ba ], [ %i.lq, %._crit_edge52.i.i184 ]
  %i.my = add nuw nsw i32 %.7264, 1               ; 2 uses
  %exitcond300.not = icmp eq i32 %i.my, %i.ft
  br i1 %exitcond300.not, label %.loopexit, label %bb.ba, !llvm.loop !234

bb.bg:                                            ; preds = %bb.az
  %i.mz = and i32 %.tr219257, -2
  %i.na = icmp eq i32 %i.mz, 2
  br i1 %i.na, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nb = sext i32 %i.ft to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nb
  %i.nd = tail call i32 @sat_solver_minimize_assumptions(ptr noundef %0, ptr noundef %i.nc, i32 noundef %i.ae, i32 noundef %3)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.ne = phi i32 [ %i.nd, %bb.bh ], [ 1, %bb.bg ]
  br i1 %i.he, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.bi
  %.val42.i.i197.pre = load i32, ptr %i.g, align 4, !tbaa !44
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph262, %sat_solver_pop.exit215
  %.val42.i.i197 = phi i32 [ %.val42.i.i197.pre, %.lr.ph262 ], [ %.val42.i.i197304, %sat_solver_pop.exit215 ] ; 3 uses
  %.8260 = phi i32 [ 0, %.lr.ph262 ], [ %i.oo, %sat_solver_pop.exit215 ]
  %i.nf = load i32, ptr %i.f, align 8, !tbaa !82  ; 2 uses
  %i.ng = add nsw i32 %i.nf, -1                   ; 4 uses
  store i32 %i.ng, ptr %i.f, align 8, !tbaa !82
  %.not.i.not.i198 = icmp slt i32 %.val42.i.i197, %i.nf
  br i1 %.not.i.not.i198, label %sat_solver_pop.exit215, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val39.i.i199 = load ptr, ptr %i.h, align 8, !tbaa !41 ; 2 uses
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %.val39.i.i199, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !40 ; 6 uses
  %i.nk = load i32, ptr %i.i, align 4, !tbaa !61  ; 2 uses
  %.not35.not45.i.i200 = icmp sgt i32 %i.nk, %i.nj
  br i1 %.not35.not45.i.i200, label %.lr.ph.i.i208, label %._crit_edge.i.i201

.lr.ph.i.i208:                                    ; preds = %bb.bk
  %i.nl = sext i32 %.val42.i.i197 to i64
  %i.nm = getelementptr [4 x i8], ptr %.val39.i.i199, i64 %i.nl
  %i.nn = getelementptr i8, ptr %i.nm, i64 -4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !40
  %i.np = sext i32 %i.nk to i64
  %i.nq = sext i32 %i.no to i64
  %i.nr = sext i32 %i.nj to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.lr.ph.i.i208
  %indvars.iv.i.i209 = phi i64 [ %i.np, %.lr.ph.i.i208 ], [ %indvars.iv.next.i.i210, %bb.bn ] ; 2 uses
  %indvars.iv.next.i.i210 = add nsw i64 %indvars.iv.i.i209, -1 ; 4 uses
  %i.ns = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %indvars.iv.next.i.i210
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !40
  %i.nv = ashr i32 %i.nu, 1
  %.val41.i.i211 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.nw = sext i32 %i.nv to i64                   ; 3 uses
  %i.nx = getelementptr inbounds i8, ptr %.val41.i.i211, i64 %i.nw
  store i8 3, ptr %i.nx, align 1, !tbaa !32
  %i.ny = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.nw
  store i32 0, ptr %i.nz, align 4, !tbaa !40
  %.not37.i.i212 = icmp sgt i64 %indvars.iv.i.i209, %i.nq
  br i1 %.not37.i.i212, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oa = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %indvars.iv.next.i.i210
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !40
  %.val43.i.i213 = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.od = trunc i32 %i.oc to i8
  %i.oe = and i8 %i.od, 1
  %i.of = xor i8 %i.oe, 1
  %i.og = getelementptr inbounds i8, ptr %.val43.i.i213, i64 %i.nw
  store i8 %i.of, ptr %i.og, align 1, !tbaa !32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not35.not.i.i214 = icmp sgt i64 %indvars.iv.next.i.i210, %i.nr
  br i1 %.not35.not.i.i214, label %bb.bl, label %._crit_edge.i.i201, !llvm.loop !5

._crit_edge.i.i201:                               ; preds = %bb.bn, %bb.bk
  %i.oh = load i32, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  %.not36.not48.i.i202 = icmp sgt i32 %i.oh, %i.nj
  br i1 %.not36.not48.i.i202, label %.lr.ph51.i.i204, label %._crit_edge52.i.i203

.lr.ph51.i.i204:                                  ; preds = %._crit_edge.i.i201
  %i.oi = sext i32 %i.oh to i64
  %i.oj = sext i32 %i.nj to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph51.i.i204
  %indvars.iv54.i.i205 = phi i64 [ %i.oi, %.lr.ph51.i.i204 ], [ %indvars.iv.next55.i.i206, %bb.bo ]
  %indvars.iv.next55.i.i206 = add nsw i64 %indvars.iv54.i.i205, -1 ; 3 uses
  %i.ok = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %indvars.iv.next55.i.i206
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !40
  %i.on = ashr i32 %i.om, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.on)
  %.not36.not.i.i207 = icmp sgt i64 %indvars.iv.next55.i.i206, %i.oj
  br i1 %.not36.not.i.i207, label %bb.bo, label %._crit_edge52.i.i203, !llvm.loop !6

._crit_edge52.i.i203:                             ; preds = %bb.bo, %._crit_edge.i.i201
  store i32 %i.nj, ptr %i.i, align 4, !tbaa !61
  store i32 %i.nj, ptr %i.n, align 8, !tbaa !62
  store i32 %i.ng, ptr %i.g, align 4, !tbaa !44
  br label %sat_solver_pop.exit215

sat_solver_pop.exit215:                           ; preds = %bb.bj, %._crit_edge52.i.i203
  %.val42.i.i197304 = phi i32 [ %.val42.i.i197, %bb.bj ], [ %i.ng, %._crit_edge52.i.i203 ]
  %i.oo = add nuw nsw i32 %.8260, 1               ; 2 uses
  %exitcond299.not = icmp eq i32 %i.oo, %i.ft
  br i1 %exitcond299.not, label %._crit_edge263, label %bb.bj, !llvm.loop !235

._crit_edge263:                                   ; preds = %sat_solver_pop.exit215, %bb.bi
  %i.op = add nsw i32 %i.ne, %i.ft
  br label %.loopexit

.loopexit:                                        ; preds = %sat_solver_pop.exit196, %.preheader, %._crit_edge263, %bb.c
  %.0110 = phi i32 [ %i.ad, %bb.c ], [ %i.op, %._crit_edge263 ], [ %i.ft, %.preheader ], [ %i.ft, %sat_solver_pop.exit196 ]
  ret i32 %.0110
}

; Function Attrs: nounwind uwtable
define i32 @sat_solver_minimize_assumptions2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.f = load i32, ptr %1, align 4, !tbaa !40
  %i.g = xor i32 %i.f, 1                          ; 2 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %i.j = sext i32 %3 to i64
  store i64 %i.j, ptr %i.h, align 8, !tbaa !98
  %i.k = tail call i32 @sat_solver_push(ptr noundef %0, i32 noundef %i.g) ; 0 uses
  %i.l = tail call i32 @sat_solver_solve_internal(ptr noundef %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = add nsw i32 %i.n, -1                     ; 3 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !82
  %i.p = getelementptr i8, ptr %0, i64 316        ; 2 uses
  %.val42.i.i = load i32, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %.not.i.not.i = icmp slt i32 %.val42.i.i, %i.n
  br i1 %.not.i.not.i, label %sat_solver_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 320
  %.val39.i.i = load ptr, ptr %i.q, align 8, !tbaa !41 ; 2 uses
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val39.i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61   ; 2 uses
  %.not35.not45.i.i = icmp sgt i32 %i.v, %i.t
  br i1 %.not35.not45.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.w = sext i32 %.val42.i.i to i64
  %i.x = getelementptr [4 x i8], ptr %.val39.i.i, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = getelementptr i8, ptr %0, i64 216
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.z to i64
  %i.ag = sext i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 4 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = ashr i32 %i.aj, 1
  %.val41.i.i = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.val41.i.i, i64 %i.al
  store i8 3, ptr %i.am, align 1, !tbaa !32
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !66
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.al
  store i32 0, ptr %i.ao, align 4, !tbaa !40
  %.not37.i.i = icmp sgt i64 %indvars.iv.i.i, %i.af
  br i1 %.not37.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40
  %.val43.i.i = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 1
  %i.au = xor i8 %i.at, 1
  %i.av = getelementptr inbounds i8, ptr %.val43.i.i, i64 %i.al
  store i8 %i.au, ptr %i.av, align 1, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not35.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %i.ag
  br i1 %.not35.not.i.i, label %bb.d, label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !62 ; 2 uses
  %.not36.not48.i.i = icmp sgt i32 %i.ax, %i.t
  br i1 %.not36.not48.i.i, label %.lr.ph51.i.i, label %._crit_edge52.i.i

.lr.ph51.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = sext i32 %i.ax to i64
  %i.ba = sext i32 %i.t to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph51.i.i
  %indvars.iv54.i.i = phi i64 [ %i.az, %.lr.ph51.i.i ], [ %indvars.iv.next55.i.i, %bb.g ]
  %indvars.iv.next55.i.i = add nsw i64 %indvars.iv54.i.i, -1 ; 3 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv.next55.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !40
  %i.be = ashr i32 %i.bd, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.be)
  %.not36.not.i.i = icmp sgt i64 %indvars.iv.next55.i.i, %i.ba
  br i1 %.not36.not.i.i, label %bb.g, label %._crit_edge52.i.i, !llvm.loop !6

._crit_edge52.i.i:                                ; preds = %bb.g, %._crit_edge.i.i
  store i32 %i.t, ptr %i.u, align 4, !tbaa !61
  store i32 %i.t, ptr %i.aw, align 8, !tbaa !62
  store i32 %i.o, ptr %i.p, align 4, !tbaa !44
  br label %sat_solver_pop.exit

sat_solver_pop.exit:                              ; preds = %bb.b, %._crit_edge52.i.i
  %i.bf = icmp ne i32 %i.l, -1                    ; 2 uses
  br i1 %i.bf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sat_solver_pop.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bh = call i32 @sat_solver_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bg) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %sat_solver_pop.exit
  %i.bi = shl i64 %i.i, 32
  %i.bj = ashr exact i64 %i.bi, 32
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !98
  %i.bk = zext i1 %i.bf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.bn

bb.j:                                             ; preds = %bb.a
  %i.bl = sdiv i32 %2, 2                          ; 11 uses
  %i.bm = sub nsw i32 %2, %i.bl                   ; 2 uses
  %i.bn = icmp sgt i32 %2, 1                      ; 2 uses
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j
  %i.bo = sext i32 %i.bl to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bo
  %i.bq = tail call i32 @sat_solver_minimize_assumptions2(ptr noundef %0, ptr noundef %i.bp, i32 noundef %i.bm, i32 noundef %3)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 0, ptr %i.br, align 4, !tbaa !44
  br label %.preheader209

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.bl to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv279 = phi i32 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next280, %bb.ab ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ab ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.bu = tail call i32 @sat_solver_push(ptr noundef %0, i32 noundef %i.bt)
  %.not110 = icmp eq i32 %i.bu, 0
  br i1 %.not110, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 320
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cc = getelementptr i8, ptr %0, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ce = getelementptr i8, ptr %0, i64 216
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ci = getelementptr i8, ptr %0, i64 300       ; 3 uses
  %i.cj = getelementptr i8, ptr %0, i64 304       ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val42.i.i111.pre = load i32, ptr %i.by, align 4, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %sat_solver_pop.exit129
  %.val42.i.i111 = phi i32 [ %.val42.i.i111.pre, %.preheader ], [ %.val42.i.i111292, %sat_solver_pop.exit129 ] ; 3 uses
  %.0102239 = phi i32 [ %i.bw, %.preheader ], [ %i.fx, %sat_solver_pop.exit129 ] ; 2 uses
  %i.cl = load i32, ptr %i.bx, align 8, !tbaa !82 ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1                   ; 4 uses
  store i32 %i.cm, ptr %i.bx, align 8, !tbaa !82
  %.not.i.not.i112 = icmp slt i32 %.val42.i.i111, %i.cl
  br i1 %.not.i.not.i112, label %sat_solver_pop.exit129, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val39.i.i113 = load ptr, ptr %i.bz, align 8, !tbaa !41 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.val39.i.i113, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !40 ; 6 uses
  %i.cq = load i32, ptr %i.ca, align 4, !tbaa !61 ; 2 uses
  %.not35.not45.i.i114 = icmp sgt i32 %i.cq, %i.cp
  br i1 %.not35.not45.i.i114, label %.lr.ph.i.i122, label %._crit_edge.i.i115

.lr.ph.i.i122:                                    ; preds = %bb.l
  %i.cr = sext i32 %.val42.i.i111 to i64
  %i.cs = getelementptr [4 x i8], ptr %.val39.i.i113, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !40
  %i.cv = sext i32 %i.cq to i64
  %i.cw = sext i32 %i.cu to i64
  %i.cx = sext i32 %i.cp to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i122
  %indvars.iv.i.i123 = phi i64 [ %i.cv, %.lr.ph.i.i122 ], [ %indvars.iv.next.i.i124, %bb.o ] ; 2 uses
  %indvars.iv.next.i.i124 = add nsw i64 %indvars.iv.i.i123, -1 ; 4 uses
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !63
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i124
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40
  %i.db = ashr i32 %i.da, 1
  %.val41.i.i125 = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.val41.i.i125, i64 %i.dc
  store i8 3, ptr %i.dd, align 1, !tbaa !32
  %i.de = load ptr, ptr %i.cd, align 8, !tbaa !66
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dc
  store i32 0, ptr %i.df, align 4, !tbaa !40
  %.not37.i.i126 = icmp sgt i64 %indvars.iv.i.i123, %i.cw
  br i1 %.not37.i.i126, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !63
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i124
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !40
  %.val43.i.i127 = load ptr, ptr %i.ce, align 8, !tbaa !72
  %i.dj = trunc i32 %i.di to i8
  %i.dk = and i8 %i.dj, 1
  %i.dl = xor i8 %i.dk, 1
  %i.dm = getelementptr inbounds i8, ptr %.val43.i.i127, i64 %i.dc
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not35.not.i.i128 = icmp sgt i64 %indvars.iv.next.i.i124, %i.cx
  br i1 %.not35.not.i.i128, label %bb.m, label %._crit_edge.i.i115, !llvm.loop !5

._crit_edge.i.i115:                               ; preds = %bb.o, %bb.l
  %i.dn = load i32, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %.not36.not48.i.i116 = icmp sgt i32 %i.dn, %i.cp
  br i1 %.not36.not48.i.i116, label %.lr.ph51.i.i118, label %._crit_edge52.i.i117

.lr.ph51.i.i118:                                  ; preds = %._crit_edge.i.i115
  %i.do = sext i32 %i.dn to i64
  %i.dp = sext i32 %i.cp to i64
  %.pre294 = load ptr, ptr %i.cg, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %order_unassigned.exit, %.lr.ph51.i.i118
  %i.dq = phi ptr [ %.pre294, %.lr.ph51.i.i118 ], [ %i.fw, %order_unassigned.exit ] ; 3 uses
  %indvars.iv54.i.i119 = phi i64 [ %i.do, %.lr.ph51.i.i118 ], [ %indvars.iv.next55.i.i120, %order_unassigned.exit ]
  %indvars.iv.next55.i.i120 = add nsw i64 %indvars.iv54.i.i119, -1 ; 3 uses
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !63
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %indvars.iv.next55.i.i120
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !40
  %i.du = ashr i32 %i.dt, 1                       ; 2 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !40
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %bb.q, label %order_unassigned.exit

bb.q:                                             ; preds = %bb.p
  %.val.i = load i32, ptr %i.ci, align 4, !tbaa !44 ; 6 uses
  store i32 %.val.i, ptr %i.dw, align 4, !tbaa !40
  %i.dz = load i32, ptr %i.ch, align 8, !tbaa !45
  %i.ea = icmp eq i32 %.val.i, %i.dz
  %.pre296 = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 3 uses
  br i1 %i.ea, label %bb.r, label %veci_push.exit.i

bb.r:                                             ; preds = %bb.q
  %i.eb = icmp slt i32 %.val.i, 4
  %i.ec = shl nsw i32 %.val.i, 1
  %i.ed = lshr i32 %.val.i, 1
  %i.ee = mul nuw nsw i32 %i.ed, 3
  %i.ef = select i1 %i.eb, i32 %i.ec, i32 %i.ee   ; 3 uses
  %.not.i.i = icmp eq ptr %.pre296, null
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 2                    ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = tail call ptr @realloc(ptr noundef nonnull %.pre296, i64 noundef %i.eh) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.eh) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ek = phi ptr [ %i.ei, %bb.s ], [ %i.ej, %bb.t ] ; 3 uses
  store ptr %i.ek, ptr %i.cj, align 8, !tbaa !41
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.em = load i32, ptr %i.ch, align 8, !tbaa !45
  %i.en = sitofp i32 %i.em to double
  %i.eo = fmul nnan double %i.en, f0x3EB0000000000000
  %i.ep = sitofp i32 %i.ef to double
  %i.eq = fmul nnan double %i.ep, f0x3EB0000000000000
  %i.er = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.eo, double noundef %i.eq) ; 0 uses
  %i.es = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.et = tail call i32 @fflush(ptr noundef %i.es) ; 0 uses
  %.pre295.pre = load ptr, ptr %i.cj, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre295 = phi ptr [ %.pre295.pre, %bb.v ], [ %i.ek, %bb.u ]
  store i32 %i.ef, ptr %i.ch, align 8, !tbaa !45
  %.pre.i.i = load i32, ptr %i.ci, align 4, !tbaa !44
  %.pre.i188 = load ptr, ptr %i.cg, align 8, !tbaa !39
  br label %veci_push.exit.i

veci_push.exit.i:                                 ; preds = %bb.w, %bb.q
  %i.eu = phi ptr [ %.pre295, %bb.w ], [ %.pre296, %bb.q ] ; 5 uses
  %i.ev = phi ptr [ %.pre.i188, %bb.w ], [ %i.dq, %bb.q ] ; 4 uses
  %i.ew = phi i32 [ %.pre.i.i, %bb.w ], [ %.val.i, %bb.q ] ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ci, align 4, !tbaa !44
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ey
  store i32 %i.du, ptr %i.ez, align 4, !tbaa !40
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.dv
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !40 ; 3 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !40 ; 3 uses
  %.not31.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not31.i.i, label %..critedge_crit_edge.i.i, label %.lr.ph.i.i187

..critedge_crit_edge.i.i:                         ; preds = %veci_push.exit.i
  %.pre.i10.i = sext i32 %i.fe to i64
  br label %order_update.exit.i

.lr.ph.i.i187:                                    ; preds = %veci_push.exit.i
  %i.ff = load ptr, ptr %i.ck, align 8, !tbaa !34 ; 2 uses
  %i.fg = sext i32 %i.fe to i64                   ; 3 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i187
  %.02832.i.i = phi i32 [ %i.fb, %.lr.ph.i.i187 ], [ %.033.i.i, %bb.y ] ; 5 uses
  %.033.in.i.i = add nsw i32 %.02832.i.i, -1
  %.033.i.i = sdiv i32 %.033.in.i.i, 2            ; 3 uses
  %i.fj = sext i32 %.033.i.i to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !40 ; 2 uses
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !35
  %i.fp = icmp ugt i64 %i.fi, %i.fo
  br i1 %i.fp, label %bb.y, label %order_update.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fq = sext i32 %.02832.i.i to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fq
  store i32 %i.fl, ptr %i.fr, align 4, !tbaa !40
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fm
  store i32 %.02832.i.i, ptr %i.fs, align 4, !tbaa !40
  %.not.i9.i = icmp ult i32 %.02832.i.i, 3
  br i1 %.not.i9.i, label %order_update.exit.i, label %bb.x, !llvm.loop !0

order_update.exit.i:                              ; preds = %bb.y, %bb.x, %..critedge_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i10.i, %..critedge_crit_edge.i.i ], [ %i.fg, %bb.x ], [ %i.fg, %bb.y ]
  %.028.lcssa.i.i = phi i32 [ 0, %..critedge_crit_edge.i.i ], [ %.033.i.i, %bb.y ], [ %.02832.i.i, %bb.x ] ; 2 uses
  %i.ft = sext i32 %.028.lcssa.i.i to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ft
  store i32 %i.fe, ptr %i.fu, align 4, !tbaa !40
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.pre-phi.i.i
  store i32 %.028.lcssa.i.i, ptr %i.fv, align 4, !tbaa !40
  br label %order_unassigned.exit

order_unassigned.exit:                            ; preds = %bb.p, %order_update.exit.i
  %i.fw = phi ptr [ %i.dq, %bb.p ], [ %i.ev, %order_update.exit.i ]
  %.not36.not.i.i121 = icmp sgt i64 %indvars.iv.next55.i.i120, %i.dp
  br i1 %.not36.not.i.i121, label %bb.p, label %._crit_edge52.i.i117, !llvm.loop !6

._crit_edge52.i.i117:                             ; preds = %order_unassigned.exit, %._crit_edge.i.i115
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !61
  store i32 %i.cp, ptr %i.cf, align 8, !tbaa !62
  store i32 %i.cm, ptr %i.by, align 4, !tbaa !44
  br label %sat_solver_pop.exit129

sat_solver_pop.exit129:                           ; preds = %bb.k, %._crit_edge52.i.i117
  %.val42.i.i111292 = phi i32 [ %.val42.i.i111, %bb.k ], [ %i.cm, %._crit_edge52.i.i117 ]
  %i.fx = add nsw i32 %.0102239, -1
  %i.fy = icmp sgt i32 %.0102239, 0
  br i1 %i.fy, label %bb.k, label %bb.z, !llvm.loop !236

bb.z:                                             ; preds = %sat_solver_pop.exit129
  %i.fz = add nuw nsw i32 %i.bw, 1
  %.not246 = icmp sgt i32 %i.bl, %i.bw
  br i1 %.not246, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not247 = icmp slt i32 %indvars.iv279, %i.bl
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph242, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gb = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.gc = xor i32 %i.gb, 1
  store i32 %i.gc, ptr %i.c, align 4, !tbaa !40
  %i.gd = call i32 @sat_solver_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ga) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %.not247, label %._crit_edge243, label %bb.aa, !llvm.loop !237

._crit_edge243:                                   ; preds = %bb.aa, %bb.z
  %i.ge = call i32 @sat_solver_minimize_assumptions2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.fz, i32 noundef %3)
  br label %bb.bn

bb.ab:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next280 = add nuw nsw i32 %indvars.iv279, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !238

._crit_edge:                                      ; preds = %bb.ab
  %i.gf = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gf
  %i.gh = tail call i32 @sat_solver_minimize_assumptions2(ptr noundef %0, ptr noundef %i.gg, i32 noundef %i.bm, i32 noundef %3)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.gk = getelementptr i8, ptr %0, i64 320
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.gn = getelementptr i8, ptr %0, i64 208
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gp = getelementptr i8, ptr %0, i64 216
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.gt = getelementptr i8, ptr %0, i64 300       ; 3 uses
  %i.gu = getelementptr i8, ptr %0, i64 304       ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val42.i.i130.pre = load i32, ptr %i.gj, align 4, !tbaa !44
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %sat_solver_pop.exit148
  %.val42.i.i130 = phi i32 [ %.val42.i.i130.pre, %._crit_edge ], [ %.val42.i.i130282, %sat_solver_pop.exit148 ] ; 3 uses
  %.1215 = phi i32 [ 0, %._crit_edge ], [ %i.ki, %sat_solver_pop.exit148 ]
  %i.gw = load i32, ptr %i.gi, align 8, !tbaa !82 ; 2 uses
  %i.gx = add nsw i32 %i.gw, -1                   ; 4 uses
  store i32 %i.gx, ptr %i.gi, align 8, !tbaa !82
  %.not.i.not.i131 = icmp slt i32 %.val42.i.i130, %i.gw
  br i1 %.not.i.not.i131, label %sat_solver_pop.exit148, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val39.i.i132 = load ptr, ptr %i.gk, align 8, !tbaa !41 ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val39.i.i132, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !40 ; 6 uses
  %i.hb = load i32, ptr %i.gl, align 4, !tbaa !61 ; 2 uses
  %.not35.not45.i.i133 = icmp sgt i32 %i.hb, %i.ha
  br i1 %.not35.not45.i.i133, label %.lr.ph.i.i141, label %._crit_edge.i.i134

.lr.ph.i.i141:                                    ; preds = %bb.ad
  %i.hc = sext i32 %.val42.i.i130 to i64
  %i.hd = getelementptr [4 x i8], ptr %.val39.i.i132, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !40
  %i.hg = sext i32 %i.hb to i64
  %i.hh = sext i32 %i.hf to i64
  %i.hi = sext i32 %i.ha to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph.i.i141
  %indvars.iv.i.i142 = phi i64 [ %i.hg, %.lr.ph.i.i141 ], [ %indvars.iv.next.i.i143, %bb.ag ] ; 2 uses
  %indvars.iv.next.i.i143 = add nsw i64 %indvars.iv.i.i142, -1 ; 4 uses
  %i.hj = load ptr, ptr %i.gm, align 8, !tbaa !63
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %indvars.iv.next.i.i143
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !40
  %i.hm = ashr i32 %i.hl, 1
  %.val41.i.i144 = load ptr, ptr %i.gn, align 8, !tbaa !31
  %i.hn = sext i32 %i.hm to i64                   ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %.val41.i.i144, i64 %i.hn
  store i8 3, ptr %i.ho, align 1, !tbaa !32
  %i.hp = load ptr, ptr %i.go, align 8, !tbaa !66
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hn
  store i32 0, ptr %i.hq, align 4, !tbaa !40
  %.not37.i.i145 = icmp sgt i64 %indvars.iv.i.i142, %i.hh
  br i1 %.not37.i.i145, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hr = load ptr, ptr %i.gm, align 8, !tbaa !63
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next.i.i143
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !40
  %.val43.i.i146 = load ptr, ptr %i.gp, align 8, !tbaa !72
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = and i8 %i.hu, 1
  %i.hw = xor i8 %i.hv, 1
  %i.hx = getelementptr inbounds i8, ptr %.val43.i.i146, i64 %i.hn
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not35.not.i.i147 = icmp sgt i64 %indvars.iv.next.i.i143, %i.hi
  br i1 %.not35.not.i.i147, label %bb.ae, label %._crit_edge.i.i134, !llvm.loop !5

._crit_edge.i.i134:                               ; preds = %bb.ag, %bb.ad
  %i.hy = load i32, ptr %i.gq, align 8, !tbaa !62 ; 2 uses
  %.not36.not48.i.i135 = icmp sgt i32 %i.hy, %i.ha
  br i1 %.not36.not48.i.i135, label %.lr.ph51.i.i137, label %._crit_edge52.i.i136

.lr.ph51.i.i137:                                  ; preds = %._crit_edge.i.i134
  %i.hz = sext i32 %i.hy to i64
  %i.ia = sext i32 %i.ha to i64
  %.pre = load ptr, ptr %i.gr, align 8, !tbaa !39
  br label %bb.ah

bb.ah:                                            ; preds = %order_unassigned.exit205, %.lr.ph51.i.i137
  %i.ib = phi ptr [ %.pre, %.lr.ph51.i.i137 ], [ %i.kh, %order_unassigned.exit205 ] ; 3 uses
  %indvars.iv54.i.i138 = phi i64 [ %i.hz, %.lr.ph51.i.i137 ], [ %indvars.iv.next55.i.i139, %order_unassigned.exit205 ]
  %indvars.iv.next55.i.i139 = add nsw i64 %indvars.iv54.i.i138, -1 ; 3 uses
  %i.ic = load ptr, ptr %i.gm, align 8, !tbaa !63
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv.next55.i.i139
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !40
  %i.if = ashr i32 %i.ie, 1                       ; 2 uses
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !40
  %i.ij = icmp eq i32 %i.ii, -1
  br i1 %i.ij, label %bb.ai, label %order_unassigned.exit205

bb.ai:                                            ; preds = %bb.ah
  %.val.i189 = load i32, ptr %i.gt, align 4, !tbaa !44 ; 6 uses
  store i32 %.val.i189, ptr %i.ih, align 4, !tbaa !40
  %i.ik = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.il = icmp eq i32 %.val.i189, %i.ik
  %.pre285 = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 3 uses
  br i1 %i.il, label %bb.aj, label %veci_push.exit.i190

bb.aj:                                            ; preds = %bb.ai
  %i.im = icmp slt i32 %.val.i189, 4
  %i.in = shl nsw i32 %.val.i189, 1
  %i.io = lshr i32 %.val.i189, 1
  %i.ip = mul nuw nsw i32 %i.io, 3
  %i.iq = select i1 %i.im, i32 %i.in, i32 %i.ip   ; 3 uses
  %.not.i.i202 = icmp eq ptr %.pre285, null
  %i.ir = sext i32 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 2                    ; 2 uses
  br i1 %.not.i.i202, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.it = tail call ptr @realloc(ptr noundef nonnull %.pre285, i64 noundef %i.is) #29
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.is) #30
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.iv = phi ptr [ %i.it, %bb.ak ], [ %i.iu, %bb.al ] ; 3 uses
  store ptr %i.iv, ptr %i.gu, align 8, !tbaa !41
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ix = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul nnan double %i.iy, f0x3EB0000000000000
  %i.ja = sitofp i32 %i.iq to double
  %i.jb = fmul nnan double %i.ja, f0x3EB0000000000000
  %i.jc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.iz, double noundef %i.jb) ; 0 uses
  %i.jd = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.je = tail call i32 @fflush(ptr noundef %i.jd) ; 0 uses
  %.pre284.pre = load ptr, ptr %i.gu, align 8, !tbaa !41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre284 = phi ptr [ %.pre284.pre, %bb.an ], [ %i.iv, %bb.am ]
  store i32 %i.iq, ptr %i.gs, align 8, !tbaa !45
  %.pre.i.i203 = load i32, ptr %i.gt, align 4, !tbaa !44
  %.pre.i204 = load ptr, ptr %i.gr, align 8, !tbaa !39
  br label %veci_push.exit.i190

veci_push.exit.i190:                              ; preds = %bb.ao, %bb.ai
  %i.jf = phi ptr [ %.pre284, %bb.ao ], [ %.pre285, %bb.ai ] ; 5 uses
  %i.jg = phi ptr [ %.pre.i204, %bb.ao ], [ %i.ib, %bb.ai ] ; 4 uses
  %i.jh = phi i32 [ %.pre.i.i203, %bb.ao ], [ %.val.i189, %bb.ai ] ; 2 uses
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %i.gt, align 4, !tbaa !44
  %i.jj = sext i32 %i.jh to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jj
  store i32 %i.if, ptr %i.jk, align 4, !tbaa !40
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ig
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !40 ; 3 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !40 ; 3 uses
  %.not31.i.i191 = icmp eq i32 %i.jm, 0
  br i1 %.not31.i.i191, label %..critedge_crit_edge.i.i200, label %.lr.ph.i.i192

..critedge_crit_edge.i.i200:                      ; preds = %veci_push.exit.i190
  %.pre.i10.i201 = sext i32 %i.jp to i64
  br label %order_update.exit.i196

.lr.ph.i.i192:                                    ; preds = %veci_push.exit.i190
  %i.jq = load ptr, ptr %i.gv, align 8, !tbaa !34 ; 2 uses
  %i.jr = sext i32 %i.jp to i64                   ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !35
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i192
  %.02832.i.i193 = phi i32 [ %i.jm, %.lr.ph.i.i192 ], [ %.033.i.i195, %bb.aq ] ; 5 uses
  %.033.in.i.i194 = add nsw i32 %.02832.i.i193, -1
  %.033.i.i195 = sdiv i32 %.033.in.i.i194, 2      ; 3 uses
  %i.ju = sext i32 %.033.i.i195 to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !40 ; 2 uses
  %i.jx = sext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !35
  %i.ka = icmp ugt i64 %i.jt, %i.jz
end_hunk_0
begin_hunk_1_@sat_solver_minimize_assumptions2:bb.a
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !40
  %i.lb = load i32, ptr %i.kk, align 4, !tbaa !44 ; 5 uses
  %i.lc = load i32, ptr %i.kj, align 8, !tbaa !45
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.as, label %veci_push.exit

bb.as:                                            ; preds = %bb.ar
  %i.le = icmp slt i32 %i.lb, 4
  %i.lf = shl nsw i32 %i.lb, 1
  %i.lg = lshr i32 %i.lb, 1
  %i.lh = mul nuw nsw i32 %i.lg, 3
  %i.li = select i1 %i.le, i32 %i.lf, i32 %i.lh   ; 3 uses
  %.not.i = icmp eq ptr %.pre287, null
  %i.lj = sext i32 %i.li to i64
  %i.lk = shl nsw i64 %i.lj, 2                    ; 2 uses
  br i1 %.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ll = tail call ptr @realloc(ptr noundef nonnull %.pre287, i64 noundef %i.lk) #29
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.lm = tail call noalias ptr @malloc(i64 noundef %i.lk) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ln = phi ptr [ %i.ll, %bb.at ], [ %i.lm, %bb.au ] ; 3 uses
  store ptr %i.ln, ptr %i.kl, align 8, !tbaa !41
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lp = load i32, ptr %i.kj, align 8, !tbaa !45
  %i.lq = sitofp i32 %i.lp to double
  %i.lr = fmul nnan double %i.lq, f0x3EB0000000000000
  %i.ls = sitofp i32 %i.li to double
  %i.lt = fmul nnan double %i.ls, f0x3EB0000000000000
  %i.lu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.lr, double noundef %i.lt) ; 0 uses
  %i.lv = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.lw = tail call i32 @fflush(ptr noundef %i.lv) ; 0 uses
  %.pre286.pre = load ptr, ptr %i.kl, align 8, !tbaa !41
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pre286 = phi ptr [ %.pre286.pre, %bb.aw ], [ %i.ln, %bb.av ]
  store i32 %i.li, ptr %i.kj, align 8, !tbaa !45
  %.pre.i = load i32, ptr %i.kk, align 4, !tbaa !44
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.ar, %bb.ax
  %.pre287299 = phi ptr [ %.pre286, %bb.ax ], [ %.pre287, %bb.ar ] ; 2 uses
  %i.lx = phi i32 [ %.pre.i, %bb.ax ], [ %i.lb, %bb.ar ] ; 2 uses
  %i.ly = add nsw i32 %i.lx, 1
  store i32 %i.ly, ptr %i.kk, align 4, !tbaa !44
  %i.lz = sext i32 %i.lx to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %.pre287299, i64 %i.lz
  store i32 %i.la, ptr %i.ma, align 4, !tbaa !40
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %.preheader209, label %bb.ar, !llvm.loop !242

.preheader208:                                    ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223, %middle.block, %.preheader209
  br i1 %i.bn, label %.lr.ph225, label %.preheader207

.lr.ph225:                                        ; preds = %.preheader208
  %i.mb = getelementptr i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.mb, align 8, !tbaa !41 ; 7 uses
  %i.mc = sext i32 %i.kn to i64                   ; 2 uses
  %wide.trip.count268 = zext nneg i32 %i.bl to i64 ; 5 uses
  %invariant.gep344 = getelementptr [4 x i8], ptr %1, i64 %i.mc ; 6 uses
  %min.iters.check357 = icmp ult i32 %2, 32
  br i1 %min.iters.check357, label %scalar.ph356.preheader, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph225
  %.val355 = ptrtoaddr ptr %.val to i64
  %i.md = shl nsw i64 %i.mc, 2
  %i.me = add i64 %i.md, %i.a
  %i.mf = sub i64 %.val355, %i.me
  %diff.check359 = icmp ugt i64 %i.mf, -32
  br i1 %diff.check359, label %scalar.ph356.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck358
  %n.vec361 = and i64 %wide.trip.count268, 1073741816 ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %index363 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load364 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !40
  %wide.load365 = load <4 x i32>, ptr %i.mh, align 4, !tbaa !40
  %i.mi = getelementptr [4 x i8], ptr %invariant.gep344, i64 %index363 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 16
  store <4 x i32> %wide.load364, ptr %i.mi, align 4, !tbaa !40
  store <4 x i32> %wide.load365, ptr %i.mj, align 4, !tbaa !40
  %index.next366 = add nuw i64 %index363, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.mk, label %middle.block367, label %vector.body362, !llvm.loop !243

middle.block367:                                  ; preds = %vector.body362
  %cmp.n368 = icmp eq i64 %n.vec361, %wide.trip.count268
  br i1 %cmp.n368, label %.preheader207, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %vector.memcheck358, %.lr.ph225, %middle.block367
  %indvars.iv265.ph = phi i64 [ 0, %vector.memcheck358 ], [ 0, %.lr.ph225 ], [ %n.vec361, %middle.block367 ] ; 3 uses
  %xtraiter375 = and i64 %wide.trip.count268, 3   ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader, %scalar.ph356.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %scalar.ph356.prol ], [ %indvars.iv265.ph, %scalar.ph356.preheader ] ; 3 uses
  %prol.iter377 = phi i64 [ %prol.iter377.next, %scalar.ph356.prol ], [ 0, %scalar.ph356.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv265.prol
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !40
  %gep345.prol = getelementptr [4 x i8], ptr %invariant.gep344, i64 %indvars.iv265.prol
  store i32 %i.mm, ptr %gep345.prol, align 4, !tbaa !40
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol, !llvm.loop !244

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %indvars.iv265.unr = phi i64 [ %indvars.iv265.ph, %scalar.ph356.preheader ], [ %indvars.iv.next266.prol, %scalar.ph356.prol ]
  %i.mn = sub nsw i64 %indvars.iv265.ph, %wide.trip.count268
  %i.mo = icmp ugt i64 %i.mn, -4
  br i1 %i.mo, label %.preheader207, label %scalar.ph356

.lr.ph223:                                        ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.3, %.lr.ph223 ], [ %indvars.iv260.unr, %.lr.ph223.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv260
  %i.mp = load i32, ptr %gep, align 4, !tbaa !40
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv260
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !40
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next261
  %i.mr = load i32, ptr %gep.1, align 4, !tbaa !40
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next261
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !40
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next261.1
  %i.mt = load i32, ptr %gep.2, align 4, !tbaa !40
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next261.1
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !40
  %indvars.iv.next261.2 = add nuw nsw i64 %indvars.iv260, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next261.2
  %i.mv = load i32, ptr %gep.3, align 4, !tbaa !40
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next261.2
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !40
  %indvars.iv.next261.3 = add nuw nsw i64 %indvars.iv260, 4 ; 2 uses
  %exitcond264.not.3 = icmp eq i64 %indvars.iv.next261.3, %wide.trip.count263
  br i1 %exitcond264.not.3, label %.preheader208, label %.lr.ph223, !llvm.loop !245

.preheader207:                                    ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block367, %.preheader208
  br i1 %i.ko, label %.lr.ph228.preheader, label %._crit_edge229.thread

._crit_edge229.thread:                            ; preds = %.preheader207
  %i.mx = sext i32 %i.kn to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mx
  %i.mz = tail call i32 @sat_solver_minimize_assumptions2(ptr noundef nonnull %0, ptr noundef %i.my, i32 noundef %i.bl, i32 noundef %3)
  br label %._crit_edge233

.lr.ph228.preheader:                              ; preds = %.preheader207
  %wide.trip.count273 = zext nneg i32 %i.kn to i64
  br label %.lr.ph228

scalar.ph356:                                     ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356
  %indvars.iv265 = phi i64 [ %indvars.iv.next266.3, %scalar.ph356 ], [ %indvars.iv265.unr, %scalar.ph356.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv265
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !40
  %gep345 = getelementptr [4 x i8], ptr %invariant.gep344, i64 %indvars.iv265
  store i32 %i.nb, ptr %gep345, align 4, !tbaa !40
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next266
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !40
  %gep345.1 = getelementptr [4 x i8], ptr %invariant.gep344, i64 %indvars.iv.next266
  store i32 %i.nd, ptr %gep345.1, align 4, !tbaa !40
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next266.1
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !40
  %gep345.2 = getelementptr [4 x i8], ptr %invariant.gep344, i64 %indvars.iv.next266.1
  store i32 %i.nf, ptr %gep345.2, align 4, !tbaa !40
  %indvars.iv.next266.2 = add nuw nsw i64 %indvars.iv265, 3 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next266.2
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !40
  %gep345.3 = getelementptr [4 x i8], ptr %invariant.gep344, i64 %indvars.iv.next266.2
  store i32 %i.nh, ptr %gep345.3, align 4, !tbaa !40
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond269.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count268
  br i1 %exitcond269.not.3, label %.preheader207, label %scalar.ph356, !llvm.loop !246

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.bg
  %indvars.iv276 = phi i32 [ 1, %.lr.ph228.preheader ], [ %indvars.iv.next277, %bb.bg ] ; 2 uses
  %indvars.iv270 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next271, %bb.bg ] ; 4 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv270
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !40
  %i.nk = tail call i32 @sat_solver_push(ptr noundef %0, i32 noundef %i.nj)
  %.not = icmp eq i32 %i.nk, 0
  br i1 %.not, label %.preheader206, label %bb.bg

.preheader206:                                    ; preds = %.lr.ph228
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv270
  %i.nm = trunc nuw nsw i64 %indvars.iv270 to i32 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.no = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.np = getelementptr i8, ptr %0, i64 320
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ns = getelementptr i8, ptr %0, i64 208
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.nu = getelementptr i8, ptr %0, i64 216
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val42.i.i149.pre = load i32, ptr %i.no, align 4, !tbaa !44
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader206, %sat_solver_pop.exit167
  %.val42.i.i149 = phi i32 [ %.val42.i.i149.pre, %.preheader206 ], [ %.val42.i.i149290, %sat_solver_pop.exit167 ] ; 3 uses
  %.2104234 = phi i32 [ %i.nm, %.preheader206 ], [ %i.pf, %sat_solver_pop.exit167 ] ; 2 uses
  %i.nw = load i32, ptr %i.nn, align 8, !tbaa !82 ; 2 uses
  %i.nx = add nsw i32 %i.nw, -1                   ; 4 uses
  store i32 %i.nx, ptr %i.nn, align 8, !tbaa !82
  %.not.i.not.i150 = icmp slt i32 %.val42.i.i149, %i.nw
  br i1 %.not.i.not.i150, label %sat_solver_pop.exit167, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val39.i.i151 = load ptr, ptr %i.np, align 8, !tbaa !41 ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %.val39.i.i151, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !40 ; 6 uses
  %i.ob = load i32, ptr %i.nq, align 4, !tbaa !61 ; 2 uses
  %.not35.not45.i.i152 = icmp sgt i32 %i.ob, %i.oa
  br i1 %.not35.not45.i.i152, label %.lr.ph.i.i160, label %._crit_edge.i.i153

.lr.ph.i.i160:                                    ; preds = %bb.az
  %i.oc = sext i32 %.val42.i.i149 to i64
  %i.od = getelementptr [4 x i8], ptr %.val39.i.i151, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 -4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !40
  %i.og = sext i32 %i.ob to i64
  %i.oh = sext i32 %i.of to i64
  %i.oi = sext i32 %i.oa to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %.lr.ph.i.i160
  %indvars.iv.i.i161 = phi i64 [ %i.og, %.lr.ph.i.i160 ], [ %indvars.iv.next.i.i162, %bb.bc ] ; 2 uses
  %indvars.iv.next.i.i162 = add nsw i64 %indvars.iv.i.i161, -1 ; 4 uses
  %i.oj = load ptr, ptr %i.nr, align 8, !tbaa !63
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i162
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !40
  %i.om = ashr i32 %i.ol, 1
  %.val41.i.i163 = load ptr, ptr %i.ns, align 8, !tbaa !31
  %i.on = sext i32 %i.om to i64                   ; 3 uses
  %i.oo = getelementptr inbounds i8, ptr %.val41.i.i163, i64 %i.on
  store i8 3, ptr %i.oo, align 1, !tbaa !32
  %i.op = load ptr, ptr %i.nt, align 8, !tbaa !66
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.on
  store i32 0, ptr %i.oq, align 4, !tbaa !40
  %.not37.i.i164 = icmp sgt i64 %indvars.iv.i.i161, %i.oh
  br i1 %.not37.i.i164, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.or = load ptr, ptr %i.nr, align 8, !tbaa !63
  %i.os = getelementptr inbounds [4 x i8], ptr %i.or, i64 %indvars.iv.next.i.i162
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !40
  %.val43.i.i165 = load ptr, ptr %i.nu, align 8, !tbaa !72
  %i.ou = trunc i32 %i.ot to i8
  %i.ov = and i8 %i.ou, 1
  %i.ow = xor i8 %i.ov, 1
  %i.ox = getelementptr inbounds i8, ptr %.val43.i.i165, i64 %i.on
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not35.not.i.i166 = icmp sgt i64 %indvars.iv.next.i.i162, %i.oi
  br i1 %.not35.not.i.i166, label %bb.ba, label %._crit_edge.i.i153, !llvm.loop !5

._crit_edge.i.i153:                               ; preds = %bb.bc, %bb.az
  %i.oy = load i32, ptr %i.nv, align 8, !tbaa !62 ; 2 uses
  %.not36.not48.i.i154 = icmp sgt i32 %i.oy, %i.oa
  br i1 %.not36.not48.i.i154, label %.lr.ph51.i.i156, label %._crit_edge52.i.i155

.lr.ph51.i.i156:                                  ; preds = %._crit_edge.i.i153
  %i.oz = sext i32 %i.oy to i64
  %i.pa = sext i32 %i.oa to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph51.i.i156
  %indvars.iv54.i.i157 = phi i64 [ %i.oz, %.lr.ph51.i.i156 ], [ %indvars.iv.next55.i.i158, %bb.bd ]
  %indvars.iv.next55.i.i158 = add nsw i64 %indvars.iv54.i.i157, -1 ; 3 uses
  %i.pb = load ptr, ptr %i.nr, align 8, !tbaa !63
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.pb, i64 %indvars.iv.next55.i.i158
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !40
  %i.pe = ashr i32 %i.pd, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.pe)
  %.not36.not.i.i159 = icmp sgt i64 %indvars.iv.next55.i.i158, %i.pa
  br i1 %.not36.not.i.i159, label %bb.bd, label %._crit_edge52.i.i155, !llvm.loop !6

._crit_edge52.i.i155:                             ; preds = %bb.bd, %._crit_edge.i.i153
  store i32 %i.oa, ptr %i.nq, align 4, !tbaa !61
  store i32 %i.oa, ptr %i.nv, align 8, !tbaa !62
  store i32 %i.nx, ptr %i.no, align 4, !tbaa !44
  br label %sat_solver_pop.exit167

sat_solver_pop.exit167:                           ; preds = %bb.ay, %._crit_edge52.i.i155
  %.val42.i.i149290 = phi i32 [ %.val42.i.i149, %bb.ay ], [ %i.nx, %._crit_edge52.i.i155 ]
  %i.pf = add nsw i32 %.2104234, -1
  %i.pg = icmp sgt i32 %.2104234, 0
  br i1 %i.pg, label %bb.ay, label %bb.be, !llvm.loop !247

bb.be:                                            ; preds = %sat_solver_pop.exit167
  %i.ph = add nuw nsw i32 %i.nm, 1
  %.not244 = icmp sgt i32 %i.kn, %i.nm
  br i1 %.not244, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.be
  %i.pi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.not245 = icmp slt i32 %indvars.iv276, %i.kn
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph237, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.pj = load i32, ptr %i.nl, align 4, !tbaa !40
  %i.pk = xor i32 %i.pj, 1
  store i32 %i.pk, ptr %i.d, align 4, !tbaa !40
  %i.pl = call i32 @sat_solver_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.pi) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %.not245, label %._crit_edge238, label %bb.bf, !llvm.loop !248

._crit_edge238:                                   ; preds = %bb.bf, %bb.be
  %i.pm = call i32 @sat_solver_minimize_assumptions2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ph, i32 noundef %3)
  br label %bb.bn

bb.bg:                                            ; preds = %.lr.ph228
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  %indvars.iv.next277 = add nuw i32 %indvars.iv276, 1
  br i1 %exitcond274.not, label %._crit_edge229, label %.lr.ph228, !llvm.loop !249

._crit_edge229:                                   ; preds = %bb.bg
  %i.pn = zext nneg i32 %i.kn to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pn
  %i.pp = tail call i32 @sat_solver_minimize_assumptions2(ptr noundef %0, ptr noundef nonnull %i.po, i32 noundef %i.bl, i32 noundef %3)
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.pr = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.ps = getelementptr i8, ptr %0, i64 320
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.pv = getelementptr i8, ptr %0, i64 208
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.px = getelementptr i8, ptr %0, i64 216
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val42.i.i168.pre = load i32, ptr %i.pr, align 4, !tbaa !44
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge229, %sat_solver_pop.exit186
  %.val42.i.i168 = phi i32 [ %.val42.i.i168.pre, %._crit_edge229 ], [ %.val42.i.i168288, %sat_solver_pop.exit186 ] ; 3 uses
  %.6230 = phi i32 [ 0, %._crit_edge229 ], [ %i.ri, %sat_solver_pop.exit186 ]
  %i.pz = load i32, ptr %i.pq, align 8, !tbaa !82 ; 2 uses
  %i.qa = add nsw i32 %i.pz, -1                   ; 4 uses
  store i32 %i.qa, ptr %i.pq, align 8, !tbaa !82
  %.not.i.not.i169 = icmp slt i32 %.val42.i.i168, %i.pz
  br i1 %.not.i.not.i169, label %sat_solver_pop.exit186, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val39.i.i170 = load ptr, ptr %i.ps, align 8, !tbaa !41 ; 2 uses
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %.val39.i.i170, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !40 ; 6 uses
  %i.qe = load i32, ptr %i.pt, align 4, !tbaa !61 ; 2 uses
  %.not35.not45.i.i171 = icmp sgt i32 %i.qe, %i.qd
  br i1 %.not35.not45.i.i171, label %.lr.ph.i.i179, label %._crit_edge.i.i172

.lr.ph.i.i179:                                    ; preds = %bb.bi
  %i.qf = sext i32 %.val42.i.i168 to i64
  %i.qg = getelementptr [4 x i8], ptr %.val39.i.i170, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !40
  %i.qj = sext i32 %i.qe to i64
  %i.qk = sext i32 %i.qi to i64
  %i.ql = sext i32 %i.qd to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.lr.ph.i.i179
  %indvars.iv.i.i180 = phi i64 [ %i.qj, %.lr.ph.i.i179 ], [ %indvars.iv.next.i.i181, %bb.bl ] ; 2 uses
  %indvars.iv.next.i.i181 = add nsw i64 %indvars.iv.i.i180, -1 ; 4 uses
  %i.qm = load ptr, ptr %i.pu, align 8, !tbaa !63
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %indvars.iv.next.i.i181
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !40
  %i.qp = ashr i32 %i.qo, 1
  %.val41.i.i182 = load ptr, ptr %i.pv, align 8, !tbaa !31
  %i.qq = sext i32 %i.qp to i64                   ; 3 uses
  %i.qr = getelementptr inbounds i8, ptr %.val41.i.i182, i64 %i.qq
  store i8 3, ptr %i.qr, align 1, !tbaa !32
  %i.qs = load ptr, ptr %i.pw, align 8, !tbaa !66
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qq
  store i32 0, ptr %i.qt, align 4, !tbaa !40
  %.not37.i.i183 = icmp sgt i64 %indvars.iv.i.i180, %i.qk
  br i1 %.not37.i.i183, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qu = load ptr, ptr %i.pu, align 8, !tbaa !63
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %indvars.iv.next.i.i181
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !40
  %.val43.i.i184 = load ptr, ptr %i.px, align 8, !tbaa !72
  %i.qx = trunc i32 %i.qw to i8
  %i.qy = and i8 %i.qx, 1
  %i.qz = xor i8 %i.qy, 1
  %i.ra = getelementptr inbounds i8, ptr %.val43.i.i184, i64 %i.qq
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.not35.not.i.i185 = icmp sgt i64 %indvars.iv.next.i.i181, %i.ql
  br i1 %.not35.not.i.i185, label %bb.bj, label %._crit_edge.i.i172, !llvm.loop !5

._crit_edge.i.i172:                               ; preds = %bb.bl, %bb.bi
  %i.rb = load i32, ptr %i.py, align 8, !tbaa !62 ; 2 uses
  %.not36.not48.i.i173 = icmp sgt i32 %i.rb, %i.qd
  br i1 %.not36.not48.i.i173, label %.lr.ph51.i.i175, label %._crit_edge52.i.i174

.lr.ph51.i.i175:                                  ; preds = %._crit_edge.i.i172
  %i.rc = sext i32 %i.rb to i64
  %i.rd = sext i32 %i.qd to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph51.i.i175
  %indvars.iv54.i.i176 = phi i64 [ %i.rc, %.lr.ph51.i.i175 ], [ %indvars.iv.next55.i.i177, %bb.bm ]
  %indvars.iv.next55.i.i177 = add nsw i64 %indvars.iv54.i.i176, -1 ; 3 uses
  %i.re = load ptr, ptr %i.pu, align 8, !tbaa !63
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %indvars.iv.next55.i.i177
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !40
  %i.rh = ashr i32 %i.rg, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.rh)
  %.not36.not.i.i178 = icmp sgt i64 %indvars.iv.next55.i.i177, %i.rd
  br i1 %.not36.not.i.i178, label %bb.bm, label %._crit_edge52.i.i174, !llvm.loop !6

._crit_edge52.i.i174:                             ; preds = %bb.bm, %._crit_edge.i.i172
  store i32 %i.qd, ptr %i.pt, align 4, !tbaa !61
  store i32 %i.qd, ptr %i.py, align 8, !tbaa !62
  store i32 %i.qa, ptr %i.pr, align 4, !tbaa !44
  br label %sat_solver_pop.exit186

sat_solver_pop.exit186:                           ; preds = %bb.bh, %._crit_edge52.i.i174
  %.val42.i.i168288 = phi i32 [ %.val42.i.i168, %bb.bh ], [ %i.qa, %._crit_edge52.i.i174 ]
  %i.ri = add nuw nsw i32 %.6230, 1               ; 2 uses
  %exitcond275.not = icmp eq i32 %i.ri, %i.kn
  br i1 %exitcond275.not, label %._crit_edge233, label %bb.bh, !llvm.loop !250

._crit_edge233:                                   ; preds = %sat_solver_pop.exit186, %._crit_edge229.thread
  %i.rj = phi i32 [ %i.mz, %._crit_edge229.thread ], [ %i.pp, %sat_solver_pop.exit186 ]
  %i.rk = add nsw i32 %i.rj, %i.kn
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge233, %._crit_edge238, %._crit_edge243, %bb.i
  %.0 = phi i32 [ %i.bk, %bb.i ], [ %i.ge, %._crit_edge243 ], [ %i.pm, %._crit_edge238 ], [ %i.rk, %._crit_edge233 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sat_solver_nvars(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !33
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sat_solver_nclauses(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sat_solver_nconflicts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define void @sat_solver_store_alloc(ptr nofree noundef writeonly captures(none) initializes((616, 624)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr (...) @Sto_ManAlloc() #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.a, ptr %i.b, align 8, !tbaa !79
  ret void
}

declare ptr @Sto_ManAlloc(...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @sat_solver_store_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Sto_ManDumpClauses(ptr noundef nonnull %i.b, ptr noundef %1) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @Sto_ManDumpClauses(ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @Sto_ManFree(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i32 @sat_solver_store_change_last(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Sto_ManChangeLastClause(ptr noundef nonnull %i.b) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}
end_hunk_1
