Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_regex_list?download=true
inline.NumInlined: 60
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@load_regex_matcher:bb.a
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i8 %.05.i.ph.i, ptr %i.oe, align 8, !tbaa !31
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.087198.i, ptr noundef %i.kn)
  br label %tree_node_char_binsearch.exit.i

bb.cr:                                            ; preds = %bb.ar
  %i.of = load i32, ptr %i.df, align 4, !tbaa !28
  %i.og = icmp eq i32 %i.of, 2
  %i.oh = getelementptr inbounds nuw i8, ptr %.087198.i, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !20 ; 2 uses
  br i1 %i.og, label %bb.cs, label %tree_node_get_children.exit.i166.i

bb.cs:                                            ; preds = %bb.cr
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !26
  %.not.i.i172.i = icmp eq ptr %i.ok, null
  %spec.select.i.i173.i = select i1 %.not.i.i172.i, ptr null, ptr %i.oj
  br label %tree_node_get_children.exit.i166.i

tree_node_get_children.exit.i166.i:               ; preds = %bb.cs, %bb.cr
  %i.ol = phi ptr [ %spec.select.i.i173.i, %bb.cs ], [ %i.oi, %bb.cr ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.087198.i, i64 16
  %i.on = load i8, ptr %i.om, align 8, !tbaa !35  ; 2 uses
  %i.oo = icmp eq i8 %i.on, 0
  %i.op = icmp ne ptr %i.ol, null
  %or.cond.i167.i = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %or.cond.i167.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %tree_node_get_children.exit.i166.i
  %i.oq = load ptr, ptr %i.ol, align 8, !tbaa !26 ; 2 uses
  %.not.i170.i = icmp eq ptr %i.oq, null
  %spec.select.i171.i = select i1 %.not.i170.i, ptr %.087198.i, ptr %i.oq
  br label %tree_get_next.exit174.i

bb.cu:                                            ; preds = %tree_node_get_children.exit.i166.i
  %i.or = icmp slt i8 %i.on, 2
  br i1 %i.or, label %tree_get_next.exit174.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.os = load ptr, ptr %i.ol, align 8, !tbaa !26
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !37
  br label %tree_get_next.exit174.i

tree_get_next.exit174.i:                          ; preds = %bb.cv, %bb.cu, %bb.ct
  %.0.i169.i = phi ptr [ %i.ot, %bb.cv ], [ %spec.select.i171.i, %bb.ct ], [ %.087198.i, %bb.cu ]
  %i.ou = call ptr @cli_malloc(i64 noundef 32) #16 ; 8 uses
  %.not.i175.i = icmp eq ptr %i.ou, null
  br i1 %.not.i175.i, label %tree_node_alloc.exit176.i, label %bb.cw

bb.cw:                                            ; preds = %tree_get_next.exit174.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store i8 0, ptr %i.ov, align 8, !tbaa !35
  store ptr %.0.i169.i, ptr %i.ou, align 8, !tbaa !37
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 17
  store i8 1, ptr %i.ow, align 1, !tbaa !36
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  store ptr null, ptr %i.ox, align 8, !tbaa !20
  br label %tree_node_alloc.exit176.i

tree_node_alloc.exit176.i:                        ; preds = %bb.cw, %tree_get_next.exit174.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  store i32 3, ptr %i.oy, align 4, !tbaa !28
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.087198.i, ptr noundef %i.ou)
  br label %tree_node_char_binsearch.exit.i

.thread.i.loopexit:                               ; preds = %bb.ar, %bb.ar
  %i.oz = icmp eq i8 %.pre.i, 6
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %bb.aq, %bb.ap
  %i.pa = phi i1 [ false, %bb.ap ], [ true, %bb.aq ], [ %i.oz, %.thread.i.loopexit ]
  %i.pb = call ptr @cli_malloc(i64 noundef 16) #16 ; 6 uses
  %.not104.i = icmp eq ptr %i.pb, null
  br i1 %.not104.i, label %.thread126, label %bb.cx

bb.cx:                                            ; preds = %.thread.i
  %i.pc = call ptr @cli_strdup(ptr noundef nonnull %i.i) #16
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !34
  br i1 %i.pa, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.pd = call ptr @cli_malloc(i64 noundef 32) #16 ; 3 uses
  %.not105.i = icmp eq ptr %i.pd, null
  br i1 %.not105.i, label %.thread126, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pe = load ptr, ptr %5, align 8, !tbaa !20
  %i.pf = call i32 @cli_regcomp(ptr noundef nonnull %i.pd, ptr noundef %i.pe, i32 noundef 1) #16
  %.fr159 = freeze i32 %i.pf                      ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store ptr %i.pd, ptr %i.pg, align 8, !tbaa !33
  %.not106.i = icmp eq i32 %.fr159, 0
  br i1 %.not106.i, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.ph = call ptr @cli_malloc(i64 noundef 32) #16 ; 7 uses
  %.not107.i = icmp eq ptr %i.ph, null
  br i1 %.not107.i, label %.thread126, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 4, ptr %i.pi, align 4, !tbaa !28
  store ptr %.087198.i, ptr %i.ph, align 8, !tbaa !37
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store i8 0, ptr %i.pj, align 8, !tbaa !35
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  store ptr %i.pb, ptr %i.pk, align 8, !tbaa !20
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 17
  store i8 1, ptr %i.pl, align 1, !tbaa !36
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.087198.i, ptr noundef nonnull %i.ph)
  br label %add_pattern.exit

bb.dc:                                            ; preds = %bb.cx
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store ptr null, ptr %i.pm, align 8, !tbaa !33
  %i.pn = getelementptr inbounds nuw i8, ptr %.087198.i, i64 16
  store i8 0, ptr %i.pn, align 8, !tbaa !35
  %i.po = getelementptr inbounds nuw i8, ptr %.087198.i, i64 24
  store ptr %i.pb, ptr %i.po, align 8, !tbaa !20
  store i32 4, ptr %i.df, align 4, !tbaa !28
  br label %add_pattern.exit

tree_node_char_binsearch.exit.i:                  ; preds = %bb.at, %tree_node_alloc.exit176.i, %select.unfold.i, %bb.cq, %bb.by, %bb.bx, %bb.bs, %stack_pop.exit.thread.i, %bb.bf, %bb.be, %tree_node_alloc.exit.thread._crit_edge.i.i, %bb.ar
  %.491.i = phi ptr [ %.087198.i, %bb.ar ], [ %i.kn, %select.unfold.i ], [ %i.jo, %bb.bx ], [ %.087198.i, %bb.bf ], [ %i.gm, %bb.bs ], [ %i.ou, %tree_node_alloc.exit176.i ], [ %i.kn, %bb.cq ], [ %i.jo, %bb.by ], [ %i.ez, %tree_node_alloc.exit.thread._crit_edge.i.i ], [ %.087198.i, %bb.be ], [ %i.gm, %stack_pop.exit.thread.i ], [ %i.dz, %bb.at ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.491.i, i64 12 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !28
  %.not102.i = icmp eq i32 %i.pq, 4
  br i1 %.not102.i, label %add_pattern.exit, label %.lr.ph.i105, !llvm.loop !71

add_pattern.exit:                                 ; preds = %tree_node_char_binsearch.exit.i, %stack_push.exit.i, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %functionality_level_check.exit

.thread126:                                       ; preds = %bb.da, %bb.cy, %.thread.i, %char_getclass.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread138

bb.dd:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.pr = icmp eq i32 %.fr159, -114
  br i1 %i.pr, label %.thread138, label %functionality_level_check.exit.thread150

.thread120:                                       ; preds = %bb.y, %bb.z
  %or.cond103.v = phi i8 [ 77, %bb.z ], [ 72, %bb.y ]
  %i.ps = phi i8 [ %i.br, %bb.z ], [ %i.bo, %bb.y ]
  %or.cond103 = icmp eq i8 %i.ps, %or.cond103.v
  br i1 %or.cond103, label %bb.de, label %functionality_level_check.exit.thread150

bb.de:                                            ; preds = %.thread120
  %i.pt = load i32, ptr %i.j, align 8, !tbaa !45
  %.not98 = icmp eq i32 %i.pt, 0
  %i.pu = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.pv = load i64, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  br i1 %.not98, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pw = add i64 %i.pv, 1                        ; 2 uses
  store i64 %i.pw, ptr %i.k, align 8, !tbaa !21
  %i.px = mul i64 %i.pw, 80
  %i.py = call ptr @cli_realloc(ptr noundef %i.pu, i64 noundef %i.px) #16 ; 3 uses
  store ptr %i.py, ptr %0, align 8, !tbaa !22
  %.not99 = icmp eq ptr %i.py, null
  br i1 %.not99, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store ptr %i.pu, ptr %0, align 8, !tbaa !22
  br label %functionality_level_check.exit.thread150

bb.dh:                                            ; preds = %bb.df
  %i.pz = load i64, ptr %i.k, align 8, !tbaa !21
  %i.qa = getelementptr [80 x i8], ptr %i.py, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 -80    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.qb, i8 0, i64 80, i1 false)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #16
  %i.qc = load i8, ptr @cli_ac_mindepth, align 1, !tbaa !20
  %i.qd = load i8, ptr @cli_ac_maxdepth, align 1, !tbaa !20
  %i.qe = call i32 @cli_ac_init(ptr noundef nonnull %i.qb, i8 noundef zeroext %i.qc, i8 noundef zeroext %i.qd) #16 ; 2 uses
  %.not100 = icmp eq i32 %i.qe, 0
  br i1 %.not100, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.13) #16
  br label %functionality_level_check.exit.thread150

bb.dj:                                            ; preds = %bb.dh
  store i32 0, ptr %i.j, align 8, !tbaa !45
  br label %bb.dl

bb.dk:                                            ; preds = %bb.de
  %i.qf = getelementptr [80 x i8], ptr %i.pu, i64 %i.pv
  %i.qg = getelementptr i8, ptr %i.qf, i64 -80
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %.1 = phi ptr [ %i.qb, %bb.dj ], [ %i.qg, %bb.dk ] ; 3 uses
  %i.qh = call ptr @cli_calloc(i64 noundef 1, i64 noundef 96) #16 ; 14 uses
  %.not.i107 = icmp eq ptr %i.qh, null
  br i1 %.not.i107, label %.thread138, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qi = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bl) #15 ; 16 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 74
  store i16 0, ptr %i.qj, align 2, !tbaa !82
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  store i32 0, ptr %i.qk, align 8, !tbaa !83
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 28
  store i32 0, ptr %i.ql, align 4, !tbaa !84
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qh, i64 72
  store i8 0, ptr %i.qn, align 8, !tbaa !85
  %i.qo = trunc i64 %i.qi to i16                  ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, i8 0, i64 16, i1 false)
  store i16 %i.qo, ptr %i.qp, align 8, !tbaa !86
  %6 = trunc i64 %i.qi to i32
  %7 = and i32 %6, 65535
  %i.qq = load i16, ptr %.1, align 8, !tbaa !93
  %8 = zext i16 %i.qq to i32
  %9 = icmp samesign ugt i32 %7, %8
  br i1 %9, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i16 %i.qo, ptr %.1, align 8, !tbaa !93
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.qr = shl i64 %i.qi, 1
  %i.qs = call ptr @cli_malloc(i64 noundef %i.qr) #16 ; 11 uses
  store ptr %i.qs, ptr %i.qh, align 8, !tbaa !94
  %.not38.i = icmp eq ptr %i.qs, null
  br i1 %.not38.i, label %.thread141, label %.preheader.i108

.thread141:                                       ; preds = %bb.do
  call void @free(ptr noundef nonnull %i.qh) #16
  br label %.thread138

.preheader.i108:                                  ; preds = %bb.do
  %.not41.i = icmp eq i64 %i.qi, 0
  br i1 %.not41.i, label %._crit_edge.i111, label %iter.check

iter.check:                                       ; preds = %.preheader.i108
  %min.iters.check = icmp ult i64 %i.qi, 4
  br i1 %min.iters.check, label %.lr.ph.i109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qt = shl i64 %i.qi, 1
  %scevgep = getelementptr i8, ptr %i.qs, i64 %i.qt
  %scevgep372 = getelementptr i8, ptr %i.bk, i64 1
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.qi
  %bound0 = icmp ult ptr %i.qs, %scevgep373
  %bound1 = icmp ult ptr %i.bl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.qi, 16
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qu = and i64 %i.qi, 12
  %n.vec = and i64 %i.qi, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %wide.load = load <8 x i8>, ptr %i.qv, align 1, !tbaa !20, !alias.scope !95
  %wide.load375 = load <8 x i8>, ptr %i.qw, align 1, !tbaa !20, !alias.scope !95
  %i.qx = sext <8 x i8> %wide.load to <8 x i16>
  %i.qy = sext <8 x i8> %wide.load375 to <8 x i16>
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %index ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <8 x i16> %i.qx, ptr %i.qz, align 2, !tbaa !30, !alias.scope !96, !noalias !95
  store <8 x i16> %i.qy, ptr %i.ra, align 2, !tbaa !30, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rb = icmp eq i64 %index.next, %n.vec
  br i1 %i.rb, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qi, %n.vec
  br i1 %cmp.n, label %._crit_edge.i111, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i109.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec376 = and i64 %i.qi, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index377 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index377
  %wide.load378 = load <4 x i8>, ptr %i.rc, align 1, !tbaa !20, !alias.scope !95
  %i.rd = sext <4 x i8> %wide.load378 to <4 x i16>
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %index377
  store <4 x i16> %i.rd, ptr %i.re, align 2, !tbaa !30, !alias.scope !96, !noalias !95
  %index.next379 = add nuw i64 %index377, 4       ; 2 uses
  %i.rf = icmp eq i64 %index.next379, %n.vec376
  br i1 %i.rf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n380 = icmp eq i64 %i.qi, %n.vec376
  br i1 %cmp.n380, label %._crit_edge.i111, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec376, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.qi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol

.lr.ph.i109.prol:                                 ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109.prol
  %.040.i.prol = phi i64 [ %i.rk, %.lr.ph.i109.prol ], [ %.040.i.ph, %.lr.ph.i109.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i109.prol ], [ 0, %.lr.ph.i109.preheader ]
  %i.rg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.040.i.prol
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !20
  %i.ri = sext i8 %i.rh to i16
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %.040.i.prol
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !30
  %i.rk = add nuw i64 %.040.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol, !llvm.loop !77

.lr.ph.i109.prol.loopexit:                        ; preds = %.lr.ph.i109.prol, %.lr.ph.i109.preheader
  %.040.i.unr = phi i64 [ %.040.i.ph, %.lr.ph.i109.preheader ], [ %i.rk, %.lr.ph.i109.prol ]
  %i.rl = sub i64 %.040.i.ph, %i.qi
  %i.rm = icmp ugt i64 %i.rl, -4
  br i1 %i.rm, label %._crit_edge.i111, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109
  %.040.i = phi i64 [ %i.sg, %.lr.ph.i109 ], [ %.040.i.unr, %.lr.ph.i109.prol.loopexit ] ; 6 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.040.i
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !20
  %i.rp = sext i8 %i.ro to i16
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %.040.i
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !30
  %i.rr = add nuw i64 %.040.i, 1                  ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !20
  %i.ru = sext i8 %i.rt to i16
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.rr
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !30
  %i.rw = add nuw i64 %.040.i, 2                  ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !20
  %i.rz = sext i8 %i.ry to i16
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.rw
  store i16 %i.rz, ptr %i.sa, align 2, !tbaa !30
  %i.sb = add nuw i64 %.040.i, 3                  ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !20
  %i.se = sext i8 %i.sd to i16
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.sb
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !30
  %i.sg = add nuw i64 %.040.i, 4                  ; 2 uses
  %exitcond.not.i110.3 = icmp eq i64 %i.sg, %i.qi
  br i1 %exitcond.not.i110.3, label %._crit_edge.i111, label %.lr.ph.i109, !llvm.loop !78

._crit_edge.i111:                                 ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109, %middle.block, %vec.epilog.middle.block, %.preheader.i108
  %i.sh = call ptr @cli_strdup(ptr noundef nonnull %i.i) #16
  %i.si = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  store ptr %i.sh, ptr %i.si, align 8, !tbaa !100
  %i.sj = call i32 @cli_ac_addpatt(ptr noundef nonnull %.1, ptr noundef nonnull %i.qh) #16
  %.fr = freeze i32 %i.sj                         ; 2 uses
  %.not39.i = icmp eq i32 %.fr, 0
  br i1 %.not39.i, label %functionality_level_check.exit, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.i111
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !100
  call void @free(ptr noundef %i.sl) #16
  %i.sm = load ptr, ptr %i.qh, align 8, !tbaa !94
  call void @free(ptr noundef %i.sm) #16
  call void @free(ptr noundef nonnull %i.qh) #16
  %i.sn = icmp eq i32 %.fr, -114
  br i1 %i.sn, label %.thread138, label %functionality_level_check.exit.thread150

.thread138:                                       ; preds = %bb.dl, %bb.dd, %.thread126, %.thread141, %bb.dp
  br label %functionality_level_check.exit.thread150

functionality_level_check.exit:                   ; preds = %._crit_edge.i111, %add_pattern.exit, %bb.s, %bb.r, %bb.h
  %.177 = phi i32 [ %.076198, %bb.h ], [ %.076198, %bb.s ], [ %.076198, %bb.r ], [ %i.bj, %._crit_edge.i111 ], [ %i.bj, %add_pattern.exit ]
  %i.so = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 8192, ptr noundef nonnull %1)
  %.not92 = icmp eq ptr %i.so, null
  br i1 %.not92, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %functionality_level_check.exit, %bb.g
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.sp, align 4, !tbaa !46
  %i.sq = load i32, ptr %i.b, align 8, !tbaa !19
  %.not.i112 = icmp eq i32 %i.sq, 0
  br i1 %.not.i112, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %._crit_edge
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.18) #16
  br label %functionality_level_check.exit.thread150

bb.dr:                                            ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19) #16
  %i.sr = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %.not10.i = icmp eq ptr %i.sr, null
  br i1 %.not10.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !21
  %i.su = getelementptr [80 x i8], ptr %i.sr, i64 %i.st
  %i.sv = getelementptr i8, ptr %i.su, i64 -80
  %i.sw = call i32 @cli_ac_buildtrie(ptr noundef %i.sv) #16 ; 2 uses
  %.not11.i = icmp eq i32 %i.sw, 0
  br i1 %.not11.i, label %bb.dt, label %functionality_level_check.exit.thread150

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.sx, align 8, !tbaa !45
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !44 ; 2 uses
end_hunk_0
