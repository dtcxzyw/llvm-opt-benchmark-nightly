inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@augment_automaton:bb.a
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.next.2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.dg = load i32, ptr @nstates, align 4, !tbaa !4
  %i.dh = trunc i32 %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 12 ; 2 uses
  %i.dj = sext i16 %i.s to i64                    ; 2 uses
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.dj
  store i16 %i.dh, ptr %i.dk, align 2, !tbaa !11
  %i.dl = load i16, ptr %i.f, align 2, !tbaa !61
  %i.dm = icmp slt i16 %i.s, %i.dl
  br i1 %i.dm, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph103, %bb.j
  %indvars.iv119 = phi i64 [ %i.dj, %.lr.ph103 ], [ %indvars.iv.next120, %bb.j ] ; 2 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %indvars.iv119
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !11
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.di, i64 %indvars.iv.next120
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !11
  %i.dr = load i16, ptr %i.f, align 2, !tbaa !61
  %i.ds = sext i16 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next120, %i.ds
  br i1 %i.dt, label %bb.j, label %._crit_edge104, !llvm.loop !83

._crit_edge104:                                   ; preds = %bb.j, %._crit_edge
  store ptr %i.bx, ptr @first_shift, align 8, !tbaa !65
  %i.du = load ptr, ptr @last_shift, align 8, !tbaa !65
  %i.dv = icmp eq ptr %i.du, %i.a
  br i1 %i.dv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge104
  store ptr %i.bx, ptr @last_shift, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge104, %bb.k
  tail call void @free(ptr noundef nonnull %i.a) #8
  %i.dw = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.dx = load i32, ptr @nstates, align 4, !tbaa !4
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i16 %i.dy, ptr %i.dz, align 8, !tbaa !29
  %i.ea = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 18
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !49
  %i.ed = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.dw, ptr %i.ed, align 8, !tbaa !53
  store ptr %i.dw, ptr @last_state, align 8, !tbaa !24
  %i.ee = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.ef = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 2 uses
  store i32 %i.eg, ptr @nstates, align 4, !tbaa !4
  %i.eh = trunc i32 %i.ef to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i16 %i.eh, ptr %i.ei, align 8, !tbaa !58
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  store i16 1, ptr %i.ej, align 2, !tbaa !61
  %i.ek = trunc i32 %i.eg to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i16 %i.ek, ptr %i.el, align 4, !tbaa !11
  %i.em = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.ee, ptr %i.em, align 8, !tbaa !74
  store ptr %i.ee, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.en = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 4 uses
  %i.eo = load ptr, ptr @first_shift, align 8, !tbaa !65
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 10
  store i16 1, ptr %i.ep, align 2, !tbaa !61
  %i.eq = load i32, ptr @nstates, align 4, !tbaa !4
  %i.er = trunc i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i16 %i.er, ptr %i.es, align 4, !tbaa !11
  store ptr %i.en, ptr @first_shift, align 8, !tbaa !65
  %i.et = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.eu = load i32, ptr @nstates, align 4, !tbaa !4
  %i.ev = trunc i32 %i.eu to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i16 %i.ev, ptr %i.ew, align 8, !tbaa !29
  %i.ex = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 18
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !49
  %i.fa = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.et, ptr %i.fa, align 8, !tbaa !53
  store ptr %i.et, ptr @last_state, align 8, !tbaa !24
  %i.fb = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.fc = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  store i32 %i.fd, ptr @nstates, align 4, !tbaa !4
  %i.fe = trunc i32 %i.fc to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i16 %i.fe, ptr %i.ff, align 8, !tbaa !58
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 10
  store i16 1, ptr %i.fg, align 2, !tbaa !61
  %i.fh = trunc i32 %i.fd to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i16 %i.fh, ptr %i.fi, align 4, !tbaa !11
  %i.fj = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.fb, ptr %i.fj, align 8, !tbaa !74
  store ptr %i.fb, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.fk = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 10
  store i16 1, ptr %i.fl, align 2, !tbaa !61
  %i.fm = load i32, ptr @nstates, align 4, !tbaa !4
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i16 %i.fn, ptr %i.fo, align 4, !tbaa !11
  store ptr %i.fk, ptr @first_shift, align 8, !tbaa !65
  store ptr %i.fk, ptr @last_shift, align 8, !tbaa !65
  %i.fp = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.fq = load i32, ptr @nstates, align 4, !tbaa !4
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i16 %i.fr, ptr %i.fs, align 8, !tbaa !29
  %i.ft = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.fu = trunc i32 %i.ft to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 18
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !49
  %i.fw = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !53
  store ptr %i.fp, ptr @last_state, align 8, !tbaa !24
  %i.fx = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.fy = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.fz = add nsw i32 %i.fy, 1                    ; 2 uses
  store i32 %i.fz, ptr @nstates, align 4, !tbaa !4
  %i.ga = trunc i32 %i.fy to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i16 %i.ga, ptr %i.gb, align 8, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 10
  store i16 1, ptr %i.gc, align 2, !tbaa !61
  %i.gd = trunc i32 %i.fz to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i16 %i.gd, ptr %i.ge, align 4, !tbaa !11
  %i.gf = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.fx, ptr %i.gf, align 8, !tbaa !74
  store ptr %i.fx, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.m, %._crit_edge114, %bb.l, %bb.n
  %i.gg = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  %i.gh = load i32, ptr @nstates, align 4, !tbaa !4
  %i.gi = trunc i32 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i16 %i.gi, ptr %i.gj, align 8, !tbaa !29
  %i.gk = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.gg, ptr %i.gk, align 8, !tbaa !53
  store ptr %i.gg, ptr @last_state, align 8, !tbaa !24
  %i.gl = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.gm = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gn = add nsw i32 %i.gm, 1                    ; 3 uses
  store i32 %i.gn, ptr @nstates, align 4, !tbaa !4
  %i.go = trunc i32 %i.gm to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i16 %i.go, ptr %i.gp, align 8, !tbaa !58
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 10
  store i16 1, ptr %i.gq, align 2, !tbaa !61
  %i.gr = trunc i32 %i.gn to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i16 %i.gr, ptr %i.gs, align 4, !tbaa !11
  %i.gt = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.gl, ptr %i.gt, align 8, !tbaa !74
  store ptr %i.gl, ptr @last_shift, align 8, !tbaa !65
  store i32 %i.gn, ptr @final_state, align 4, !tbaa !4
  %i.gu = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  %i.gv = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gw = add nsw i32 %i.gv, 1
  store i32 %i.gw, ptr @nstates, align 4, !tbaa !4
  %i.gx = trunc i32 %i.gv to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i16 %i.gx, ptr %i.gy, align 8, !tbaa !29
  %i.gz = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.gu, ptr %i.gz, align 8, !tbaa !53
  store ptr %i.gu, ptr @last_state, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -32768, 32768) i32 @get_state(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.b = sext i32 %0 to i64                       ; 7 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 7 uses
  %i.e = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 1                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult ptr %i.d, %i.g
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.o = add i64 %i.n, 2
  %umax.a = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.o)
  %i.p = xor i64 %i.n, -1
  %i.q = add i64 %umax.a, %i.p                    ; 2 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 14
  br i1 %min.iters.check, label %.lr.ph.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.s, -8                       ; 3 uses
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %i.d, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load88 = load <4 x i16>, ptr %i.w, align 2, !tbaa !11
  %i.x = sext <4 x i16> %wide.load to <4 x i32>
  %i.y = sext <4 x i16> %wide.load88 to <4 x i32>
  %i.z = add <4 x i32> %vec.phi, %i.x             ; 2 uses
  %i.aa = add <4 x i32> %vec.phi87, %i.y          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aa, %i.z
  %i.ac = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader157

.lr.ph.preheader157:                              ; preds = %.lr.ph.preheader, %middle.block
  %.050.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.03249.ph = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader157, %.lr.ph
  %.050 = phi i32 [ %i.ag, %.lr.ph ], [ %.050.ph, %.lr.ph.preheader157 ]
  %.03249 = phi ptr [ %i.ad, %.lr.ph ], [ %.03249.ph, %.lr.ph.preheader157 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03249, i64 2 ; 2 uses
  %i.ae = load i16, ptr %.03249, align 2, !tbaa !11
  %i.af = sext i16 %i.ae to i32
  %i.ag = add nsw i32 %.050, %i.af                ; 2 uses
  %i.ah = icmp ult ptr %i.ad, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.ac, %middle.block ], [ %i.ag, %.lr.ph ]
  %i.ai = srem i32 %.lcssa, 1009
  %i.aj = sext i32 %i.ai to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.0.lcssa
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.an = trunc i32 %0 to i16
  %i.ao = load ptr, ptr @kernel_base, align 8
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %.thread, %.preheader
  %.02957 = phi ptr [ %i.am, %.preheader ], [ %i.be, %.thread ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02957, i64 20
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !26
  %i.as = sext i16 %i.ar to i32
  %i.at = icmp eq i32 %i.as, %i.l
  br i1 %i.at, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.g
  br i1 %i.av, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.02957, i64 22
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %.13352 = phi ptr [ %i.ax, %.lr.ph54 ], [ %i.au, %.lr.ph54.preheader ] ; 2 uses
  %.03451 = phi ptr [ %i.az, %.lr.ph54 ], [ %i.aw, %.lr.ph54.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.13352, i64 2 ; 2 uses
  %i.ay = load i16, ptr %.13352, align 2, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.03451, i64 2
  %i.ba = load i16, ptr %.03451, align 2, !tbaa !11
  %.not41 = icmp eq i16 %i.ay, %i.ba              ; 2 uses
  %i.bb = icmp ult ptr %i.ax, %i.g
  %i.bc = select i1 %.not41, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph54, label %._crit_edge55, !llvm.loop !46

._crit_edge55:                                    ; preds = %.lr.ph54
  br i1 %.not41, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.b, %._crit_edge55
  %i.bd = getelementptr inbounds nuw i8, ptr %.02957, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47 ; 2 uses
  %.not40 = icmp eq ptr %i.be, null
  br i1 %.not40, label %bb.d, label %bb.b, !llvm.loop !48

bb.d:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %.02957, i64 8
  %i.bg = load i32, ptr @nstates, align 4, !tbaa !4
  %i.bh = icmp sgt i32 %i.bg, 32766
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @toomany(ptr noundef nonnull @.str) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bi = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.b
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8  ; 9 uses
  %i.bl = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.b
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr exact i64 %i.bq, 1
  %i.bs = trunc i64 %i.bq to i32
  %i.bt = and i32 %i.bs, -2
  %i.bu = add i32 %i.bt, 22
  %i.bv = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bu) #8 ; 9 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 18
  store i16 %i.an, ptr %i.bx, align 2, !tbaa !49
  %i.by = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.bz = trunc i32 %i.by to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i16 %i.bz, ptr %i.ca, align 8, !tbaa !29
  %i.cb = trunc i64 %i.br to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i16 %i.cb, ptr %i.cc, align 4, !tbaa !26
  %i.cd = icmp ult ptr %i.bk, %i.bn
  br i1 %i.cd, label %iter.check, label %new_state.exit

iter.check:                                       ; preds = %bb.f
  %i.ce = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 22 ; 6 uses
  %i.cg = add i64 %i.ce, 2
  %umax89 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.cg)
  %i.ch = xor i64 %i.ce, -1
  %i.ci = add i64 %umax89, %i.ch                  ; 3 uses
  %i.cj = lshr i64 %i.ci, 1
  %i.ck = add nuw i64 %i.cj, 1                    ; 5 uses
  %min.iters.check91.a = icmp ult i64 %i.ci, 6
  br i1 %min.iters.check91.a, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cl = sub i64 %i.bw, %i.bp
  %i.cm = add i64 %i.cl, 21
  %diff.check = icmp ult i64 %i.cm, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check92 = icmp ult i64 %i.ci, 30
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf94 = and i64 %i.ck, 12
  %n.vec95 = and i64 %i.ck, -16                   ; 4 uses
  %i.cn = shl i64 %n.vec95, 1                     ; 2 uses
  %i.co = getelementptr i8, ptr %i.bk, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.cn
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %i.cq = shl i64 %index97, 1                     ; 2 uses
  %next.gep98.a = getelementptr i8, ptr %i.bk, i64 %i.cq ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep98.a, i64 16
  %wide.load100.a = load <8 x i16>, ptr %next.gep98.a, align 2, !tbaa !11
  %wide.load101 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !11
  %i.cs = getelementptr i8, ptr %next.gep99, i64 16
  store <8 x i16> %wide.load100.a, ptr %next.gep99, align 2, !tbaa !11
  store <8 x i16> %wide.load101, ptr %i.cs, align 2, !tbaa !11
  %index.next102 = add nuw i64 %index97, 16       ; 2 uses
  %i.ct = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.ct, label %middle.block103, label %vector.body96, !llvm.loop !86

middle.block103:                                  ; preds = %vector.body96
  %cmp.n104 = icmp eq i64 %i.ck, %n.vec95
  br i1 %cmp.n104, label %new_state.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block103
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf94, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !37

end_hunk_0
