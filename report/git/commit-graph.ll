Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/commit-graph?download=true
inline.NumInlined: 313
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@write_graph_chunk_data:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !84
  %i.bt = call i32 @bsearch_hash(ptr noundef nonnull %i.bk, ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bs, ptr noundef nonnull %i.e) #22
  %.not9.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not9.i.i, label %bb.l, label %find_commit_pos_in_graph.exit

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !116 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %bb.m, label %.lr.ph.i.i, !llvm.loop !3

find_commit_pos_in_graph.exit:                    ; preds = %.lr.ph.i.i
  %i.bw = load i32, ptr %i.e, align 4, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 88
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !117
  %i.bz = add i32 %i.by, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %find_commit_pos_in_graph.exit.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %find_commit_pos_in_graph.exit.thread

find_commit_pos_in_graph.exit.thread:             ; preds = %commit_graph_position.exit.i, %bb.m, %find_commit_pos_in_graph.exit, %bb.h
  %.1 = phi i32 [ %i.ay, %bb.h ], [ %i.bz, %find_commit_pos_in_graph.exit ], [ %i.av, %bb.m ], [ %i.bj, %commit_graph_position.exit.i ] ; 2 uses
  %i.ca = icmp slt i32 %.1, 0
  br i1 %i.ca, label %find_commit_pos_in_graph.exit.thread..thread_crit_edge, label %bb.n

find_commit_pos_in_graph.exit.thread..thread_crit_edge: ; preds = %find_commit_pos_in_graph.exit.thread
  %.pre148 = load ptr, ptr %i.aq, align 8, !tbaa !151
  br label %.thread

.thread:                                          ; preds = %bb.i, %find_commit_pos_in_graph.exit.thread..thread_crit_edge
  %i.cb = phi ptr [ %.pre148, %find_commit_pos_in_graph.exit.thread..thread_crit_edge ], [ %.pre149, %bb.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = call ptr @oid_to_hex(ptr noundef nonnull %i.cc) #22
  %i.ce = load ptr, ptr %.064135, align 8, !tbaa !148
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = call ptr @oid_to_hex(ptr noundef nonnull %i.cf) #22
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 1263, ptr noundef nonnull @.str.104, ptr noundef %i.cd, ptr noundef %i.cg) #23
  unreachable

.thread114:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 112, ptr %i.c, align 4, !tbaa !44
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.n:                                             ; preds = %find_commit_pos_in_graph.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ch = call i32 @llvm.bswap.i32(i32 %.1)
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !44
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !194 ; 7 uses
  %.not75 = icmp eq ptr %i.cj, null
  br i1 %.not75, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !194
  %.not76 = icmp eq ptr %i.cl, null
  br i1 %.not76, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = or i32 %.061136, -2147483648
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !151
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !175
  %i.cr = call i32 @oid_pos(ptr noundef nonnull %i.co, ptr noundef %i.cp, i64 noundef %i.cq, ptr noundef nonnull @commit_to_oid) #22 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = load i32, ptr %i.o, align 8, !tbaa !185
  %i.cu = add i32 %i.ct, %i.cr
  br label %find_commit_pos_in_graph.exit99.thread

bb.s:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !179 ; 2 uses
  %.not77 = icmp eq ptr %i.cv, null
  %.pre147 = load ptr, ptr %i.cj, align 8, !tbaa !151 ; 3 uses
  br i1 %.not77, label %.thread125, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr i8, ptr %.pre147, i64 72
  %.val.i.i83 = load i32, ptr %i.cw, align 8, !tbaa !51 ; 2 uses
  %i.cx = udiv i32 %.val.i.i83, 32766             ; 2 uses
  %i.cy = urem i32 %.val.i.i83, 32766
  %i.cz = load i32, ptr @commit_graph_data_slab.2, align 8, !tbaa !54
  %.not.i.i.i.i84 = icmp ugt i32 %i.cz, %i.cx
  br i1 %.not.i.i.i.i84, label %bb.u, label %commit_graph_position.exit.thread.i85

bb.u:                                             ; preds = %bb.t
  %.pre.i.i.i.i95 = load ptr, ptr @commit_graph_data_slab.3, align 8, !tbaa !55
  %i.da = zext nneg i32 %i.cx to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i95, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !57 ; 2 uses
  %.not35.i.i.i.i96 = icmp eq ptr %i.dc, null
  br i1 %.not35.i.i.i.i96, label %commit_graph_position.exit.thread.i85, label %commit_graph_position.exit.i97

commit_graph_position.exit.i97:                   ; preds = %bb.u
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %.not.i98 = icmp eq i32 %i.df, -1
  br i1 %.not.i98, label %commit_graph_position.exit.thread.i85, label %find_commit_pos_in_graph.exit99.thread

commit_graph_position.exit.thread.i85:            ; preds = %commit_graph_position.exit.i97, %bb.u, %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre147, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %commit_graph_position.exit.thread.i85, %bb.v
  %.013.i.i88 = phi ptr [ %i.dr, %bb.v ], [ %i.cv, %commit_graph_position.exit.thread.i85 ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.013.i.i88, i64 104
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.i.i88, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !104
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i88, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !91
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !84
  %i.dp = call i32 @bsearch_hash(ptr noundef nonnull %i.dg, ptr noundef %i.di, ptr noundef %i.dk, i64 noundef %i.do, ptr noundef nonnull %i.b) #22
  %.not9.i.i89 = icmp eq i32 %i.dp, 0
  br i1 %.not9.i.i89, label %bb.v, label %find_commit_pos_in_graph.exit99

bb.v:                                             ; preds = %.lr.ph.i.i87
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i88, i64 96
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !116 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i94, label %bb.w, label %.lr.ph.i.i87, !llvm.loop !3

find_commit_pos_in_graph.exit99:                  ; preds = %.lr.ph.i.i87
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i88, i64 88
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !117
  %i.dv = add i32 %i.du, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %find_commit_pos_in_graph.exit99.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %find_commit_pos_in_graph.exit99.thread

find_commit_pos_in_graph.exit99.thread:           ; preds = %commit_graph_position.exit.i97, %bb.w, %find_commit_pos_in_graph.exit99, %bb.r
  %.4 = phi i32 [ %i.cu, %bb.r ], [ %i.dv, %find_commit_pos_in_graph.exit99 ], [ %i.cr, %bb.w ], [ %i.df, %commit_graph_position.exit.i97 ] ; 2 uses
  %i.dw = icmp slt i32 %.4, 0
  br i1 %i.dw, label %find_commit_pos_in_graph.exit99.thread..thread125_crit_edge, label %bb.x

find_commit_pos_in_graph.exit99.thread..thread125_crit_edge: ; preds = %find_commit_pos_in_graph.exit99.thread
  %.pre = load ptr, ptr %i.cj, align 8, !tbaa !151
  br label %.thread125

.thread125:                                       ; preds = %bb.s, %find_commit_pos_in_graph.exit99.thread..thread125_crit_edge
  %i.dx = phi ptr [ %.pre, %find_commit_pos_in_graph.exit99.thread..thread125_crit_edge ], [ %.pre147, %bb.s ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = call ptr @oid_to_hex(ptr noundef nonnull %i.dy) #22
  %i.ea = load ptr, ptr %.064135, align 8, !tbaa !148
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = call ptr @oid_to_hex(ptr noundef nonnull %i.eb) #22
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 1294, ptr noundef nonnull @.str.104, ptr noundef %i.dz, ptr noundef %i.ec) #23
  unreachable

bb.x:                                             ; preds = %.thread114, %bb.n, %bb.p, %find_commit_pos_in_graph.exit99.thread
  %.059117 = phi ptr [ %i.cj, %bb.p ], [ %i.cj, %find_commit_pos_in_graph.exit99.thread ], [ null, %bb.n ], [ null, %.thread114 ]
  %.5 = phi i32 [ %i.cm, %bb.p ], [ %.4, %find_commit_pos_in_graph.exit99.thread ], [ 1879048192, %bb.n ], [ 1879048192, %.thread114 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ed = call i32 @llvm.bswap.i32(i32 %.5)
  store i32 %i.ed, ptr %i.a, align 4, !tbaa !44
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not79 = icmp sgt i32 %.5, -1
  br i1 %.not79, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.x, %.preheader
  %.162 = phi i32 [ %i.ee, %.preheader ], [ %.061136, %bb.x ]
  %.160 = phi ptr [ %i.eg, %.preheader ], [ %.059117, %bb.x ]
  %i.ee = add i32 %.162, 1                        ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.160, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !194 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, null
  br i1 %.not80, label %.loopexit, label %.preheader, !llvm.loop !328

.loopexit:                                        ; preds = %.preheader, %bb.x
  %.263 = phi i32 [ %.061136, %bb.x ], [ %i.ee, %.preheader ]
  %i.eh = load ptr, ptr %.064135, align 8, !tbaa !148 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %2 = load i64, ptr %i.ei, align 8, !tbaa !124
  %sh.diff = lshr i64 %2, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.ej = and i32 %tr.sh.diff, 50331648
  store i32 %i.ej, ptr %i.f, align 4, !tbaa !44
  %i.ek = load ptr, ptr %i.p, align 8, !tbaa !163 ; 8 uses
  %i.el = getelementptr i8, ptr %i.eh, i64 72
  %.val = load i32, ptr %i.el, align 8, !tbaa !51 ; 2 uses
  %i.em = load i32, ptr %i.ek, align 8, !tbaa !128 ; 2 uses
  %i.en = udiv i32 %.val, %i.em                   ; 7 uses
  %i.eo = urem i32 %.val, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !129
  %.not.i.i100 = icmp ugt i32 %i.eq, %i.en
  br i1 %.not.i.i100, label %._crit_edge4.i.i, label %st_mult.exit.i.i

._crit_edge4.i.i:                                 ; preds = %.loopexit
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !130
  br label %bb.y

st_mult.exit.i.i:                                 ; preds = %.loopexit
  %i.er = add i32 %i.en, 1                        ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !130
  %i.ev = shl nuw nsw i64 %i.es, 3
  %i.ew = call ptr @xrealloc(ptr noundef %i.eu, i64 noundef %i.ev) #22 ; 4 uses
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !130
  %i.ex = load i32, ptr %i.ep, align 8, !tbaa !129 ; 9 uses
  %.not332.i.i = icmp ugt i32 %i.ex, %i.en
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i101.preheader

.lr.ph.i.i101.preheader:                          ; preds = %st_mult.exit.i.i
  %i.ey = add i32 %i.ex, 1
  %i.ez = add i32 %i.en, 1
  %i.fa = call i32 @llvm.umax.i32(i32 %i.ey, i32 %i.ez)
  %i.fb = sub i32 %i.fa, %i.ex                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.fb, 18
  br i1 %min.iters.check, label %.lr.ph.i.i101.preheader201, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i101.preheader
  %i.fc = add i32 %i.ex, 1
  %i.fd = add i32 %i.en, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.fc, i32 %i.fd)
  %i.fe = add i32 %umax, -1
  %i.ff = icmp ult i32 %i.fe, %i.ex
  br i1 %i.ff, label %.lr.ph.i.i101.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.fb, -4                      ; 3 uses
  %i.fg = add i32 %i.ex, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = add i32 %i.ex, %index
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.fj, align 8, !tbaa !131
  store <2 x ptr> splat (ptr null), ptr %i.fk, align 8, !tbaa !131
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.fl = icmp eq i32 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.fb, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i101.preheader201

.lr.ph.i.i101.preheader201:                       ; preds = %vector.scevcheck, %.lr.ph.i.i101.preheader, %middle.block
  %.0303.i.i.ph = phi i32 [ %i.ex, %vector.scevcheck ], [ %i.ex, %.lr.ph.i.i101.preheader ], [ %i.fg, %middle.block ]
  br label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %.lr.ph.i.i101.preheader201, %.lr.ph.i.i101
  %.0303.i.i = phi i32 [ %i.fo, %.lr.ph.i.i101 ], [ %.0303.i.i.ph, %.lr.ph.i.i101.preheader201 ] ; 2 uses
  %i.fm = zext i32 %.0303.i.i to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fm
  store ptr null, ptr %i.fn, align 8, !tbaa !131
  %i.fo = add i32 %.0303.i.i, 1                   ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.fo, %i.en
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i101, !llvm.loop !330

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i101, %middle.block, %st_mult.exit.i.i
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !129
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i, %._crit_edge4.i.i
  %i.fp = phi ptr [ %.pre.i.i, %._crit_edge4.i.i ], [ %i.ew, %._crit_edge.i.i ]
  %i.fq = zext i32 %i.en to i64                   ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !131 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.fs, null
  br i1 %.not34.i.i, label %bb.z, label %topo_level_slab_at.exit

bb.z:                                             ; preds = %bb.y
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.fu = load i32, ptr %i.ek, align 8, !tbaa !128
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !134
  %i.fy = zext i32 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 2
  %i.ga = call ptr @xcalloc(i64 noundef %i.fv, i64 noundef %i.fz) #22 ; 2 uses
  %i.gb = load ptr, ptr %i.ft, align 8, !tbaa !130
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fq
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !131
  br label %topo_level_slab_at.exit

topo_level_slab_at.exit:                          ; preds = %bb.y, %bb.z
  %i.gd = phi ptr [ %i.fs, %bb.y ], [ %i.ga, %bb.z ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !134
  %i.gg = mul i32 %i.gf, %i.eo
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !44
  %i.gk = shl i32 %i.gj, 2
  %i.gl = call i32 @llvm.bswap.i32(i32 %i.gk)
  %i.gm = load i32, ptr %i.f, align 4, !tbaa !44
  %i.gn = or i32 %i.gl, %i.gm
  store i32 %i.gn, ptr %i.f, align 4, !tbaa !44
  %i.go = load ptr, ptr %.064135, align 8, !tbaa !148
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !124
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = call i32 @llvm.bswap.i32(i32 %i.gr)
  store i32 %i.gs, ptr %i.q, align 4, !tbaa !44
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 8) #22
  %i.gt = getelementptr inbounds nuw i8, ptr %.064135, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.gu = icmp ult ptr %i.gt, %i.k
  br i1 %i.gu, label %bb.b, label %._crit_edge, !llvm.loop !331

._crit_edge:                                      ; preds = %topo_level_slab_at.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @write_graph_chunk_generation_data(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !175
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.01521 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148  ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !159
  %i.k = call i32 @repo_parse_commit_gently(ptr noundef %i.j, ptr noundef %i.i, i32 noundef 0) #22 ; 0 uses
  %i.l = getelementptr i8, ptr %i.i, i64 48
  %.val = load i64, ptr %i.l, align 8, !tbaa !124
  %i.m = getelementptr i8, ptr %i.i, i64 72
  %.val19 = load i32, ptr %i.m, align 8, !tbaa !51
  %i.n = and i64 %.val, 17179869183
  %i.o = call fastcc ptr @commit_graph_data_at(i32 %.val19)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  %i.r = sub i64 %i.q, %i.n                       ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.t = load i64, ptr %i.f, align 8, !tbaa !193
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.f, align 8, !tbaa !193
  call void @display_progress(ptr noundef %i.s, i64 noundef %i.u) #22
  %i.v = icmp ugt i64 %i.r, 2147483647            ; 2 uses
  %i.w = or disjoint i32 %.01521, -2147483648
  %i.x = zext i1 %i.v to i32
  %.1 = add nuw nsw i32 %.01521, %i.x
  %i.y = trunc i64 %i.r to i32
  %i.z = select i1 %i.v, i32 %i.w, i32 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = call i32 @llvm.bswap.i32(i32 %i.z)
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !44
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !175
  %i.ac = icmp ugt i64 %i.ab, %indvars.iv.next
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @write_graph_chunk_generation_data_overflow(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !175
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_0
