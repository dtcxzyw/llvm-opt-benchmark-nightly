Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@is_checked_guard:bb.a
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !342 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !346
  %i.co = and i32 %i.cn, 1024
  %.not133 = icmp eq i32 %i.co, 0
  br i1 %.not133, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cp = icmp eq i8 %i.bx, 1
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !72
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.bt, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !72
  %i.cw = and i8 %i.cv, -2
  %switch161 = icmp eq i8 %i.cw, 4
  br i1 %switch161, label %.thread143, label %.thread

bb.z:                                             ; preds = %bb.x
  %i.cx = load i32, ptr %i.u, align 4, !tbaa !341
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !346
  %i.db = and i32 %i.da, 48
  %.not134 = icmp eq i32 %i.db, 0
  br i1 %.not134, label %.thread, label %.thread143

.thread143:                                       ; preds = %bb.y, %bb.z
  %i.dc = icmp eq i8 %i.cg, 1
  br i1 %i.dc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread143
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !72
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.bt, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !72
  %i.dj = and i8 %i.di, -2
  %switch163 = icmp eq i8 %i.dj, 4
  br i1 %switch163, label %.thread146, label %.thread

bb.ab:                                            ; preds = %.thread143
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !342
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !346
  %i.dp = and i32 %i.do, 48
  %.not137 = icmp eq i32 %i.dp, 0
  br i1 %.not137, label %.thread, label %.thread146

.thread146:                                       ; preds = %bb.o, %bb.n, %bb.aa, %bb.ab
  br label %.thread

bb.ac:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bt, i64 29
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !296
  %i.ds = and i8 %i.dr, 12
  %.not127 = icmp ne i8 %i.ds, 0
  %.pre165 = load i32, ptr %i.u, align 4, !tbaa !341 ; 3 uses
  %i.dt = icmp sgt i32 %.pre165, -1
  %or.cond = select i1 %.not127, i1 %i.dt, i1 false
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = zext nneg i32 %.pre165 to i64
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !346
  %i.dx = and i32 %i.dw, 1024
  %.not128 = icmp eq i32 %i.dx, 0
  br i1 %.not128, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dy = sext i32 %.pre165 to i64
  %i.dz = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !346
  %i.eb = and i32 %i.ea, 48
  %.not129 = icmp ne i32 %i.eb, 0
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.y, %bb.n, %bb.q, %bb.p, %bb.c, %bb.ad, %bb.ab, %bb.w, %bb.z, %.thread146, %bb.t, %bb.ae, %bb.l, %bb.k, %._crit_edge166, %bb.g, %bb.o, %bb.a, %bb.b
  %.9.shrunk = phi i1 [ false, %bb.o ], [ false, %bb.a ], [ %.not129, %bb.ae ], [ false, %bb.b ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.q ], [ false, %bb.k ], [ %.not126, %._crit_edge166 ], [ false, %bb.g ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.ab ], [ false, %bb.w ], [ false, %bb.z ], [ false, %bb.y ], [ true, %.thread146 ], [ false, %bb.t ], [ false, %bb.c ], [ false, %bb.p ]
  %.9 = zext i1 %.9.shrunk to i32
  ret i32 %.9
}

declare void @zend_build_cfg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_cfg_build_predecessors(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_cfg_compute_dominators_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_cfg_identify_loops(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_dfg_add_use_def_op(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @zend_array_type_info(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @instanceof_function_slow(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @smart_str_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_ir_RLOAD(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ir_set_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ir_STORE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jit_CONST_ADDR(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.c = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.b, i64 noundef %1) #34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !72
  %i.f = icmp eq i8 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8, !tbaa !72
  %i.h = trunc i64 %i.g to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %1) #34 ; 2 uses
  %i.j = sext i32 %i.i to i64
  store i64 %i.j, ptr %i.c, align 8, !tbaa !72
  store i32 4, ptr %i.d, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  ret i32 %.0
}

declare i32 @ir_const_u32(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ir_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @jit_SNAPSHOT(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !94
  %i.b = icmp eq i8 %i.a, 5
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8 ; 3 uses
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !348
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !237
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !238
  %i.q = add i32 %i.p, %i.n                       ; 2 uses
  %i.r = load <8 x ptr>, ptr @zend_jit_stub_handlers, align 64
  %i.s = insertelement <8 x ptr> poison, ptr %i.j, i64 0
  %i.t = shufflevector <8 x ptr> %i.s, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.u = icmp eq <8 x ptr> %i.r, %i.t
  %i.v = load <4 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 64), align 64
  %i.w = insertelement <4 x ptr> poison, ptr %i.j, i64 0
  %i.x = shufflevector <4 x ptr> %i.w, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.y = icmp eq <4 x ptr> %i.v, %i.x
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 96), align 32
  %i.aa = icmp eq ptr %i.z, %i.j
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 160), align 32
  %i.ac = icmp eq ptr %i.ab, %i.j
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 168), align 8
  %i.ae = icmp eq ptr %i.ad, %i.j
  %i.af = freeze <8 x i1> %i.u                    ; 2 uses
  %i.ag = freeze <4 x i1> %i.y
  %i.ah = shufflevector <8 x i1> %i.af, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ah, %i.ag
  %i.ai = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <8 x i1> %i.ai, <8 x i1> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ak = bitcast <8 x i1> %i.aj to i8
  %i.al = icmp ne i8 %i.ak, 0
  %op.rdx = select i1 %i.al, i1 true, i1 %i.aa
  %2 = freeze i1 %i.ac
  %3 = freeze i1 %op.rdx
  %4 = or i1 %3, %2
  %op.rdx155 = select i1 %4, i1 true, i1 %i.ae
  br i1 %op.rdx155, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71 ; 2 uses
  %i.ao = icmp slt i32 %1, 0
  br i1 %i.ao, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !34
  %i.as = add i32 %i.ar, 31
  %i.at = lshr i32 %i.as, 5                       ; 2 uses
  %.not16.i = icmp eq i32 %i.at, 0
  br i1 %.not16.i, label %zend_jit_exit_point_by_addr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.au = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !74
  %wide.trip.count.i = zext nneg i32 %i.at to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %i.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 124
  %.not13.i = icmp ult ptr %i.ax, %i.j
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not13.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.az = shl nuw i32 %i.ay, 5
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.i, %i.ba
  %i.bc = sdiv i64 %i.bb, 4
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add i32 %i.az, %i.bd
  br label %zend_jit_exit_point_by_addr.exit

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %zend_jit_exit_point_by_addr.exit, label %bb.e, !llvm.loop !0

zend_jit_exit_point_by_addr.exit:                 ; preds = %bb.g, %bb.d, %bb.f
  %.010.i = phi i32 [ %i.be, %bb.f ], [ -1, %bb.d ], [ -1, %bb.g ] ; 2 uses
  %i.bf = icmp ne i32 %.010.i, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = zext i32 %.010.i to i64                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !61
  %i.bm = and i32 %i.bl, 512                      ; 2 uses
  %.not = icmp ne i32 %i.bm, 0
  %spec.select113 = lshr exact i32 %i.bm, 8
  br label %bb.h

bb.h:                                             ; preds = %zend_jit_exit_point_by_addr.exit, %bb.c
  %.077 = phi i64 [ 0, %bb.c ], [ %i.bi, %zend_jit_exit_point_by_addr.exit ] ; 2 uses
  %i.bn = phi i1 [ false, %bb.c ], [ %.not, %zend_jit_exit_point_by_addr.exit ] ; 3 uses
  %.076 = phi i32 [ 0, %bb.c ], [ %spec.select113, %zend_jit_exit_point_by_addr.exit ] ; 2 uses
  %i.bo = icmp ne i32 %i.q, 0                     ; 2 uses
  %or.cond3 = or i1 %i.bo, %i.bn
  br i1 %or.cond3, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bq = zext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph.preheader ], [ %i.br, %bb.k ] ; 3 uses
  %i.br = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !82
  %i.bv = add i32 %i.bu, 1
  %or.cond5 = icmp ult i32 %i.bv, 2
  br i1 %or.cond5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !72
  %i.by = and i8 %i.bx, 2
  %.not83 = icmp eq i8 %i.by, 0
  br i1 %.not83, label %.thread116, label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.not82.wide = icmp eq i64 %i.br, 0
  br i1 %.not82.wide, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.i
  br i1 %i.bn, label %._crit_edge128.thread, label %bb.p

._crit_edge128.thread:                            ; preds = %._crit_edge
  %i.bz = tail call i32 @_ir_SNAPSHOT(ptr noundef nonnull %0, i32 noundef %.076) #34
  br label %bb.o

.thread116:                                       ; preds = %bb.j
  %i.ca = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cb = add i32 %.076, %i.ca
  %i.cc = tail call i32 @_ir_SNAPSHOT(ptr noundef nonnull %0, i32 noundef %i.cb) #34 ; 2 uses
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.thread116, %bb.n
  %indvars.iv135 = phi i64 [ 0, %.thread116 ], [ %indvars.iv.next136, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv135 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !82 ; 2 uses
  %i.cg = add i32 %i.cf, 1
  %or.cond9 = icmp ult i32 %i.cg, 2
  br i1 %or.cond9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph127
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !72
  %i.cj = and i8 %i.ci, 2
  %.not84 = icmp eq i8 %i.cj, 0
  br i1 %.not84, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph127
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ 0, %bb.m ], [ %i.cf, %bb.l ]
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next136 to i32
  tail call void @_ir_SNAPSHOT_SET_OP(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %i.ck, i32 noundef %.0) #34
  %exitcond.not = icmp eq i64 %indvars.iv.next136, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge128, label %.lr.ph127, !llvm.loop !700

._crit_edge128:                                   ; preds = %bb.n
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge128.thread, %._crit_edge128
  %.075121145147 = phi i32 [ 0, %._crit_edge128.thread ], [ %i.ca, %._crit_edge128 ] ; 2 uses
  %i.cl = phi i32 [ %i.bz, %._crit_edge128.thread ], [ %i.cc, %._crit_edge128 ] ; 2 uses
  %i.cm = add i32 %.075121145147, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !54
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.co, i64 %.077
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !72
  tail call void @_ir_SNAPSHOT_SET_OP(ptr noundef nonnull %0, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %i.cr) #34
  %i.cs = add i32 %.075121145147, 2
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %.077
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72
  tail call void @_ir_SNAPSHOT_SET_OP(ptr noundef nonnull %0, i32 noundef %i.cl, i32 noundef %i.cs, i32 noundef %i.cw) #34
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %._crit_edge, %bb.o, %._crit_edge128, %bb.h, %bb.a
  ret void
}

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ir_START(ptr noundef) local_unnamed_addr #4

declare i32 @_ir_SNAPSHOT(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ir_SNAPSHOT_SET_OP(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @zend_hash_index_lookup(ptr noundef, i64 noundef) #4

declare i32 @ir_unique_const_addr(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @zend_jit_opline_supports_reg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !113   ; 2 uses
  switch i8 %i.b, label %bb.gw [
    i8 117, label %bb.b
    i8 65, label %bb.b
    i8 116, label %bb.b
    i8 31, label %_ssa_op2_info.exit270.thread
    i8 20, label %_ssa_op2_info.exit270.thread
    i8 21, label %_ssa_op2_info.exit270.thread
    i8 18, label %_ssa_op2_info.exit270.thread
    i8 19, label %_ssa_op2_info.exit270.thread
    i8 16, label %_ssa_op2_info.exit270.thread
    i8 17, label %_ssa_op2_info.exit270.thread
    i8 48, label %_ssa_op2_info.exit270.thread
    i8 62, label %bb.e
    i8 22, label %bb.g
    i8 26, label %bb.h
    i8 1, label %bb.w
    i8 2, label %bb.w
    i8 3, label %bb.w
    i8 9, label %bb.aw
end_hunk_0
