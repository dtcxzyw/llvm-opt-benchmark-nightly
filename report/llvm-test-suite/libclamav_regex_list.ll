Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_regex_list?download=true
inline.NumInlined: 60
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@load_regex_matcher:bb.a
  %i.of = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i8 %.05.i.ph.i, ptr %i.of, align 8, !tbaa !31
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.087198.i, ptr noundef %i.ko)
  br label %tree_node_char_binsearch.exit.i

bb.cr:                                            ; preds = %bb.ar
  %i.og = load i32, ptr %i.dg, align 4, !tbaa !28
  %i.oh = icmp eq i32 %i.og, 2
  %i.oi = getelementptr inbounds nuw i8, ptr %.087198.i, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !20 ; 2 uses
  br i1 %i.oh, label %bb.cs, label %tree_node_get_children.exit.i166.i

bb.cs:                                            ; preds = %bb.cr
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !26
  %.not.i.i172.i = icmp eq ptr %i.ol, null
  %spec.select.i.i173.i = select i1 %.not.i.i172.i, ptr null, ptr %i.ok
  br label %tree_node_get_children.exit.i166.i

tree_node_get_children.exit.i166.i:               ; preds = %bb.cs, %bb.cr
  %i.om = phi ptr [ %spec.select.i.i173.i, %bb.cs ], [ %i.oj, %bb.cr ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.087198.i, i64 16
  %i.oo = load i8, ptr %i.on, align 8, !tbaa !35  ; 2 uses
  %i.op = icmp eq i8 %i.oo, 0
  %i.oq = icmp ne ptr %i.om, null
  %or.cond.i167.i = select i1 %i.op, i1 %i.oq, i1 false
  br i1 %or.cond.i167.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %tree_node_get_children.exit.i166.i
  %i.or = load ptr, ptr %i.om, align 8, !tbaa !26 ; 2 uses
  %.not.i170.i = icmp eq ptr %i.or, null
  %spec.select.i171.i = select i1 %.not.i170.i, ptr %.087198.i, ptr %i.or
  br label %tree_get_next.exit174.i

bb.cu:                                            ; preds = %tree_node_get_children.exit.i166.i
  %i.os = icmp slt i8 %i.oo, 2
  br i1 %i.os, label %tree_get_next.exit174.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ot = load ptr, ptr %i.om, align 8, !tbaa !26
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !37
  br label %tree_get_next.exit174.i

tree_get_next.exit174.i:                          ; preds = %bb.cv, %bb.cu, %bb.ct
  %.0.i169.i = phi ptr [ %i.ou, %bb.cv ], [ %spec.select.i171.i, %bb.ct ], [ %.087198.i, %bb.cu ]
  %i.ov = call ptr @cli_malloc(i64 noundef 32) #16 ; 8 uses
  %.not.i175.i = icmp eq ptr %i.ov, null
  br i1 %.not.i175.i, label %tree_node_alloc.exit176.i, label %bb.cw

bb.cw:                                            ; preds = %tree_get_next.exit174.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store i8 0, ptr %i.ow, align 8, !tbaa !35
  store ptr %.0.i169.i, ptr %i.ov, align 8, !tbaa !37
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 17
  store i8 1, ptr %i.ox, align 1, !tbaa !36
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  store ptr null, ptr %i.oy, align 8, !tbaa !20
  br label %tree_node_alloc.exit176.i

tree_node_alloc.exit176.i:                        ; preds = %bb.cw, %tree_get_next.exit174.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  store i32 3, ptr %i.oz, align 4, !tbaa !28
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.087198.i, ptr noundef %i.ov)
  br label %tree_node_char_binsearch.exit.i

.thread.i.loopexit:                               ; preds = %bb.ar, %bb.ar
  %i.pa = icmp eq i8 %.pre.i, 6
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %bb.aq, %bb.ap
  %i.pb = phi i1 [ false, %bb.ap ], [ true, %bb.aq ], [ %i.pa, %.thread.i.loopexit ]
  %i.pc = call ptr @cli_malloc(i64 noundef 16) #16 ; 6 uses
  %.not104.i = icmp eq ptr %i.pc, null
  br i1 %.not104.i, label %.thread127, label %bb.cx

bb.cx:                                            ; preds = %.thread.i
  %i.pd = call ptr @cli_strdup(ptr noundef nonnull %i.i) #16
  store ptr %i.pd, ptr %i.pc, align 8, !tbaa !34
  br i1 %i.pb, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.pe = call ptr @cli_malloc(i64 noundef 32) #16 ; 3 uses
  %.not105.i = icmp eq ptr %i.pe, null
  br i1 %.not105.i, label %.thread127, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pf = load ptr, ptr %5, align 8, !tbaa !20
  %i.pg = call i32 @cli_regcomp(ptr noundef nonnull %i.pe, ptr noundef %i.pf, i32 noundef 1) #16
  %.fr160 = freeze i32 %i.pg                      ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store ptr %i.pe, ptr %i.ph, align 8, !tbaa !33
  %.not106.i = icmp eq i32 %.fr160, 0
  br i1 %.not106.i, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.pi = call ptr @cli_malloc(i64 noundef 32) #16 ; 7 uses
  %.not107.i = icmp eq ptr %i.pi, null
  br i1 %.not107.i, label %.thread127, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store i32 4, ptr %i.pj, align 4, !tbaa !28
  store ptr %.087198.i, ptr %i.pi, align 8, !tbaa !37
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  store i8 0, ptr %i.pk, align 8, !tbaa !35
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  store ptr %i.pc, ptr %i.pl, align 8, !tbaa !20
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 17
  store i8 1, ptr %i.pm, align 1, !tbaa !36
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.087198.i, ptr noundef nonnull %i.pi)
  br label %add_pattern.exit

bb.dc:                                            ; preds = %bb.cx
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store ptr null, ptr %i.pn, align 8, !tbaa !33
  %i.po = getelementptr inbounds nuw i8, ptr %.087198.i, i64 16
  store i8 0, ptr %i.po, align 8, !tbaa !35
  %i.pp = getelementptr inbounds nuw i8, ptr %.087198.i, i64 24
  store ptr %i.pc, ptr %i.pp, align 8, !tbaa !20
  store i32 4, ptr %i.dg, align 4, !tbaa !28
  br label %add_pattern.exit

tree_node_char_binsearch.exit.i:                  ; preds = %bb.at, %tree_node_alloc.exit176.i, %select.unfold.i, %bb.cq, %bb.by, %bb.bx, %bb.bs, %stack_pop.exit.thread.i, %bb.bf, %bb.be, %tree_node_alloc.exit.thread._crit_edge.i.i, %bb.ar
  %.491.i = phi ptr [ %.087198.i, %bb.ar ], [ %i.ko, %select.unfold.i ], [ %i.jp, %bb.bx ], [ %.087198.i, %bb.bf ], [ %i.gn, %bb.bs ], [ %i.ov, %tree_node_alloc.exit176.i ], [ %i.ko, %bb.cq ], [ %i.jp, %bb.by ], [ %i.fa, %tree_node_alloc.exit.thread._crit_edge.i.i ], [ %.087198.i, %bb.be ], [ %i.gn, %stack_pop.exit.thread.i ], [ %i.ea, %bb.at ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.491.i, i64 12 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !28
  %.not102.i = icmp eq i32 %i.pr, 4
  br i1 %.not102.i, label %add_pattern.exit, label %.lr.ph.i105, !llvm.loop !71

add_pattern.exit:                                 ; preds = %tree_node_char_binsearch.exit.i, %stack_push.exit.i, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %functionality_level_check.exit

.thread127:                                       ; preds = %bb.da, %bb.cy, %.thread.i, %char_getclass.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread139

bb.dd:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ps = icmp eq i32 %.fr160, -114
  br i1 %i.ps, label %.thread139, label %functionality_level_check.exit.thread151

.thread121:                                       ; preds = %bb.y, %bb.z
  %or.cond103.v = phi i8 [ 77, %bb.z ], [ 72, %bb.y ]
  %i.pt = phi i8 [ %i.bs, %bb.z ], [ %i.bp, %bb.y ]
  %or.cond103 = icmp eq i8 %i.pt, %or.cond103.v
  br i1 %or.cond103, label %bb.de, label %functionality_level_check.exit.thread151

bb.de:                                            ; preds = %.thread121
  %i.pu = load i32, ptr %i.j, align 8, !tbaa !45
  %.not98 = icmp eq i32 %i.pu, 0
  %i.pv = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.pw = load i64, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  br i1 %.not98, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.px = add i64 %i.pw, 1                        ; 2 uses
  store i64 %i.px, ptr %i.k, align 8, !tbaa !21
  %i.py = mul i64 %i.px, 80
  %i.pz = call ptr @cli_realloc(ptr noundef %i.pv, i64 noundef %i.py) #16 ; 3 uses
  store ptr %i.pz, ptr %0, align 8, !tbaa !22
  %.not99 = icmp eq ptr %i.pz, null
  br i1 %.not99, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store ptr %i.pv, ptr %0, align 8, !tbaa !22
  br label %functionality_level_check.exit.thread151

bb.dh:                                            ; preds = %bb.df
  %i.qa = load i64, ptr %i.k, align 8, !tbaa !21
  %i.qb = getelementptr [80 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 -80    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, i8 0, i64 80, i1 false)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #16
  %i.qd = load i8, ptr @cli_ac_mindepth, align 1, !tbaa !20
  %i.qe = load i8, ptr @cli_ac_maxdepth, align 1, !tbaa !20
  %i.qf = call i32 @cli_ac_init(ptr noundef nonnull %i.qc, i8 noundef zeroext %i.qd, i8 noundef zeroext %i.qe) #16 ; 2 uses
  %.not100 = icmp eq i32 %i.qf, 0
  br i1 %.not100, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.13) #16
  br label %functionality_level_check.exit.thread151

bb.dj:                                            ; preds = %bb.dh
  store i32 0, ptr %i.j, align 8, !tbaa !45
  br label %bb.dl

bb.dk:                                            ; preds = %bb.de
  %i.qg = getelementptr [80 x i8], ptr %i.pv, i64 %i.pw
  %i.qh = getelementptr i8, ptr %i.qg, i64 -80
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %.1 = phi ptr [ %i.qc, %bb.dj ], [ %i.qh, %bb.dk ] ; 3 uses
  %i.qi = call ptr @cli_calloc(i64 noundef 1, i64 noundef 96) #16 ; 14 uses
  %.not.i107 = icmp eq ptr %i.qi, null
  br i1 %.not.i107, label %.thread139, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bm) #15 ; 15 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 74
  store i16 0, ptr %i.qk, align 2, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  store i32 0, ptr %i.ql, align 8, !tbaa !83
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  store i32 0, ptr %i.qm, align 4, !tbaa !84
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 72
  store i8 0, ptr %i.qo, align 8, !tbaa !85
  %i.qp = trunc i64 %i.qj to i16                  ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qn, i8 0, i64 16, i1 false)
  store i16 %i.qp, ptr %i.qq, align 8, !tbaa !86
  %i.qr = load i16, ptr %.1, align 8, !tbaa !93
  %6 = icmp ult i16 %i.qr, %i.qp
  br i1 %6, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i16 %i.qp, ptr %.1, align 8, !tbaa !93
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.qs = shl i64 %i.qj, 1
  %i.qt = call ptr @cli_malloc(i64 noundef %i.qs) #16 ; 11 uses
  store ptr %i.qt, ptr %i.qi, align 8, !tbaa !94
  %.not38.i = icmp eq ptr %i.qt, null
  br i1 %.not38.i, label %.thread142, label %.preheader.i108

.thread142:                                       ; preds = %bb.do
  call void @free(ptr noundef nonnull %i.qi) #16
  br label %.thread139

.preheader.i108:                                  ; preds = %bb.do
  %.not41.i = icmp eq i64 %i.qj, 0
  br i1 %.not41.i, label %._crit_edge.i111, label %iter.check

iter.check:                                       ; preds = %.preheader.i108
  %min.iters.check = icmp ult i64 %i.qj, 4
  br i1 %min.iters.check, label %.lr.ph.i109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qu = shl i64 %i.qj, 1
  %scevgep = getelementptr i8, ptr %i.qt, i64 %i.qu
  %scevgep373 = getelementptr i8, ptr %i.bl, i64 1
  %scevgep374 = getelementptr i8, ptr %scevgep373, i64 %i.qj
  %bound0 = icmp ult ptr %i.qt, %scevgep374
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check375 = icmp ult i64 %i.qj, 16
  br i1 %min.iters.check375, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qv = and i64 %i.qj, 12
  %n.vec = and i64 %i.qj, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %wide.load = load <8 x i8>, ptr %i.qw, align 1, !tbaa !20, !alias.scope !95
  %wide.load376 = load <8 x i8>, ptr %i.qx, align 1, !tbaa !20, !alias.scope !95
  %i.qy = sext <8 x i8> %wide.load to <8 x i16>
  %i.qz = sext <8 x i8> %wide.load376 to <8 x i16>
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %index ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store <8 x i16> %i.qy, ptr %i.ra, align 2, !tbaa !30, !alias.scope !96, !noalias !95
  store <8 x i16> %i.qz, ptr %i.rb, align 2, !tbaa !30, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rc = icmp eq i64 %index.next, %n.vec
  br i1 %i.rc, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qj, %n.vec
  br i1 %cmp.n, label %._crit_edge.i111, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i109.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.qj, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next380, %vec.epilog.vector.body ] ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index378
  %wide.load379 = load <4 x i8>, ptr %i.rd, align 1, !tbaa !20, !alias.scope !95
  %i.re = sext <4 x i8> %wide.load379 to <4 x i16>
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %index378
  store <4 x i16> %i.re, ptr %i.rf, align 2, !tbaa !30, !alias.scope !96, !noalias !95
  %index.next380 = add nuw i64 %index378, 4       ; 2 uses
  %i.rg = icmp eq i64 %index.next380, %n.vec377
  br i1 %i.rg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n381 = icmp eq i64 %i.qj, %n.vec377
  br i1 %cmp.n381, label %._crit_edge.i111, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec377, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.qj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol

.lr.ph.i109.prol:                                 ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109.prol
  %.040.i.prol = phi i64 [ %i.rl, %.lr.ph.i109.prol ], [ %.040.i.ph, %.lr.ph.i109.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i109.prol ], [ 0, %.lr.ph.i109.preheader ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.040.i.prol
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !20
  %i.rj = sext i8 %i.ri to i16
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %.040.i.prol
  store i16 %i.rj, ptr %i.rk, align 2, !tbaa !30
  %i.rl = add nuw i64 %.040.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol, !llvm.loop !77

.lr.ph.i109.prol.loopexit:                        ; preds = %.lr.ph.i109.prol, %.lr.ph.i109.preheader
  %.040.i.unr = phi i64 [ %.040.i.ph, %.lr.ph.i109.preheader ], [ %i.rl, %.lr.ph.i109.prol ]
  %i.rm = sub i64 %.040.i.ph, %i.qj
  %i.rn = icmp ugt i64 %i.rm, -4
  br i1 %i.rn, label %._crit_edge.i111, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109
  %.040.i = phi i64 [ %i.sh, %.lr.ph.i109 ], [ %.040.i.unr, %.lr.ph.i109.prol.loopexit ] ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.040.i
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !20
  %i.rq = sext i8 %i.rp to i16
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %.040.i
  store i16 %i.rq, ptr %i.rr, align 2, !tbaa !30
  %i.rs = add nuw i64 %.040.i, 1                  ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !20
  %i.rv = sext i8 %i.ru to i16
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %i.rs
  store i16 %i.rv, ptr %i.rw, align 2, !tbaa !30
  %i.rx = add nuw i64 %.040.i, 2                  ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !20
  %i.sa = sext i8 %i.rz to i16
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %i.rx
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !30
  %i.sc = add nuw i64 %.040.i, 3                  ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !20
  %i.sf = sext i8 %i.se to i16
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %i.sc
  store i16 %i.sf, ptr %i.sg, align 2, !tbaa !30
  %i.sh = add nuw i64 %.040.i, 4                  ; 2 uses
  %exitcond.not.i110.3 = icmp eq i64 %i.sh, %i.qj
  br i1 %exitcond.not.i110.3, label %._crit_edge.i111, label %.lr.ph.i109, !llvm.loop !78

._crit_edge.i111:                                 ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109, %middle.block, %vec.epilog.middle.block, %.preheader.i108
  %i.si = call ptr @cli_strdup(ptr noundef nonnull %i.i) #16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !100
  %i.sk = call i32 @cli_ac_addpatt(ptr noundef nonnull %.1, ptr noundef nonnull %i.qi) #16
  %.fr = freeze i32 %i.sk                         ; 2 uses
  %.not39.i112 = icmp eq i32 %.fr, 0
  br i1 %.not39.i112, label %functionality_level_check.exit, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.i111
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !100
  call void @free(ptr noundef %i.sm) #16
  %i.sn = load ptr, ptr %i.qi, align 8, !tbaa !94
  call void @free(ptr noundef %i.sn) #16
  call void @free(ptr noundef nonnull %i.qi) #16
  %i.so = icmp eq i32 %.fr, -114
  br i1 %i.so, label %.thread139, label %functionality_level_check.exit.thread151

.thread139:                                       ; preds = %bb.dl, %bb.dd, %.thread127, %.thread142, %bb.dp
  br label %functionality_level_check.exit.thread151

functionality_level_check.exit:                   ; preds = %._crit_edge.i111, %add_pattern.exit, %bb.s, %bb.r, %bb.h
  %.177 = phi i32 [ %.076199, %bb.h ], [ %.076199, %bb.s ], [ %.076199, %bb.r ], [ %i.bk, %._crit_edge.i111 ], [ %i.bk, %add_pattern.exit ]
  %i.sp = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 8192, ptr noundef nonnull %1)
  %.not92 = icmp eq ptr %i.sp, null
  br i1 %.not92, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %functionality_level_check.exit, %bb.g
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.sq, align 4, !tbaa !46
  %i.sr = load i32, ptr %i.b, align 8, !tbaa !19
  %.not.i113 = icmp eq i32 %i.sr, 0
  br i1 %.not.i113, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %._crit_edge
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.18) #16
  br label %functionality_level_check.exit.thread151

bb.dr:                                            ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19) #16
  %i.ss = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %.not10.i = icmp eq ptr %i.ss, null
  br i1 %.not10.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.su = load i64, ptr %i.st, align 8, !tbaa !21
  %i.sv = getelementptr [80 x i8], ptr %i.ss, i64 %i.su
  %i.sw = getelementptr i8, ptr %i.sv, i64 -80
  %i.sx = call i32 @cli_ac_buildtrie(ptr noundef %i.sw) #16 ; 2 uses
  %.not11.i = icmp eq i32 %i.sx, 0
  br i1 %.not11.i, label %bb.dt, label %functionality_level_check.exit.thread151

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.sy, align 8, !tbaa !45
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !44 ; 2 uses
end_hunk_0
