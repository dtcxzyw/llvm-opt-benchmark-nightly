Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/commit-graph?download=true
inline.NumInlined: 313
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@verify_commit_graph:bb.a
  br i1 %.not35.i.i.i.i.i174.i, label %commit_graph_position.exit.thread.i.i164.i, label %commit_graph_position.exit.i.i175.i

commit_graph_position.exit.i.i175.i:              ; preds = %bb.bh
  %i.hn = zext nneg i32 %i.hi to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !59 ; 2 uses
  %.not.i.i176.i = icmp eq i32 %i.hp, -1
  br i1 %.not.i.i176.i, label %commit_graph_position.exit.thread.i.i164.i, label %find_commit_pos_in_graph.exit.thread.i169.i

commit_graph_position.exit.thread.i.i164.i:       ; preds = %commit_graph_position.exit.i.i175.i, %bb.bh, %bb.bg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %.lr.ph.i.i.i165.i

.lr.ph.i.i.i165.i:                                ; preds = %bb.bi, %commit_graph_position.exit.thread.i.i164.i
  %.013.i.i.i166.i = phi ptr [ %i.ib, %bb.bi ], [ %.01656, %commit_graph_position.exit.thread.i.i164.i ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.013.i.i.i166.i, i64 104
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !101
  %i.ht = getelementptr inbounds nuw i8, ptr %.013.i.i.i166.i, i64 112
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !104
  %i.hv = getelementptr inbounds nuw i8, ptr %.013.i.i.i166.i, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !91
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !84
  %i.hz = call i32 @bsearch_hash(ptr noundef nonnull %i.hq, ptr noundef %i.hs, ptr noundef %i.hu, i64 noundef %i.hy, ptr noundef nonnull %i.a) #22
  %.not9.i.i.i167.i = icmp eq i32 %i.hz, 0
  br i1 %.not9.i.i.i167.i, label %bb.bi, label %find_commit_pos_in_graph.exit.i168.i

bb.bi:                                            ; preds = %.lr.ph.i.i.i165.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.013.i.i.i166.i, i64 96
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !116 ; 2 uses
  %.not.i.i.i171.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i171.i, label %find_commit_pos_in_graph.exit.thread11.i172.i, label %.lr.ph.i.i.i165.i, !llvm.loop !3

find_commit_pos_in_graph.exit.thread11.i172.i:    ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %parse_commit_in_graph_one.exit177.i

find_commit_pos_in_graph.exit.i168.i:             ; preds = %.lr.ph.i.i.i165.i
  %i.ic = load i32, ptr %i.a, align 4, !tbaa !44
  %i.id = getelementptr inbounds nuw i8, ptr %.013.i.i.i166.i, i64 88
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !117
  %i.if = add i32 %i.ie, %i.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %find_commit_pos_in_graph.exit.thread.i169.i

find_commit_pos_in_graph.exit.thread.i169.i:      ; preds = %find_commit_pos_in_graph.exit.i168.i, %commit_graph_position.exit.i.i175.i
  %.110.i170.i = phi i32 [ %i.if, %find_commit_pos_in_graph.exit.i168.i ], [ %i.hp, %commit_graph_position.exit.i.i175.i ]
  %i.ig = call fastcc i32 @fill_commit_in_graph(ptr noundef nonnull %i.hd, ptr noundef nonnull readonly %.01656, i32 noundef %.110.i170.i) ; 0 uses
  br label %parse_commit_in_graph_one.exit177.i

parse_commit_in_graph_one.exit177.i:              ; preds = %find_commit_pos_in_graph.exit.thread.i169.i, %find_commit_pos_in_graph.exit.thread11.i172.i, %bb.bf
  %i.ih = load ptr, ptr %.091244.i, align 8, !tbaa !151 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %.090243.i, align 8, !tbaa !151
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.il = load i128, ptr %i.ii, align 1
  %i.im = load i128, ptr %i.ik, align 1
  %i.in = xor i128 %i.il, %i.im
  %i.io = getelementptr i8, ptr %i.ii, i64 16
  %i.ip = getelementptr i8, ptr %i.ik, i64 16
  %i.iq = load i128, ptr %i.io, align 1
  %i.ir = load i128, ptr %i.ip, align 1
  %i.is = xor i128 %i.iq, %i.ir
  %i.it = or i128 %i.in, %i.is
  %i.iu = icmp ne i128 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %.not.i179.not.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i179.not.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %parse_commit_in_graph_one.exit177.i
  %i.iw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !44
  %.not4.i180.i = icmp eq i32 %i.iw, 0
  br i1 %.not4.i180.i, label %_.exit182.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ix = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.122, i32 noundef 5) #22
  br label %_.exit182.i

_.exit182.i:                                      ; preds = %bb.bk, %bb.bj
  %.0.i181.i = phi ptr [ %i.ix, %bb.bk ], [ @.str.122, %bb.bj ]
  %i.iy = call ptr @oid_to_hex(ptr noundef nonnull %4) #22
  %i.iz = load ptr, ptr %.091244.i, align 8, !tbaa !151
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = call ptr @oid_to_hex(ptr noundef nonnull %i.ja) #22
  %i.jc = load ptr, ptr %.090243.i, align 8, !tbaa !151
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = call ptr @oid_to_hex(ptr noundef nonnull %i.jd) #22
  call void (ptr, ...) @graph_report(ptr noundef %.0.i181.i, ptr noundef %i.iy, ptr noundef %i.jb, ptr noundef %i.je)
  %.pre283.i = load ptr, ptr %.091244.i, align 8, !tbaa !151
  br label %bb.bl

bb.bl:                                            ; preds = %_.exit182.i, %parse_commit_in_graph_one.exit177.i
  %i.jf = phi ptr [ %.pre283.i, %_.exit182.i ], [ %i.ih, %parse_commit_in_graph_one.exit177.i ]
  %i.jg = getelementptr i8, ptr %i.jf, i64 72
  %.val124.i = load i32, ptr %i.jg, align 8, !tbaa !51 ; 2 uses
  %i.jh = udiv i32 %.val124.i, 32766              ; 2 uses
  %i.ji = urem i32 %.val124.i, 32766
  %i.jj = load i32, ptr @commit_graph_data_slab.2, align 8, !tbaa !54
  %.not.i.i.i183.i = icmp ugt i32 %i.jj, %i.jh
  br i1 %.not.i.i.i183.i, label %bb.bm, label %commit_graph_generation_from_graph.exit.i

bb.bm:                                            ; preds = %bb.bl
  %.pre.i.i.i.i = load ptr, ptr @commit_graph_data_slab.3, align 8, !tbaa !55
  %i.jk = zext nneg i32 %i.jh to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !57 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not35.i.i.i.i, label %commit_graph_generation_from_graph.exit.i, label %commit_graph_data_slab_peek.exit.i.i

commit_graph_data_slab_peek.exit.i.i:             ; preds = %bb.bm
  %i.jn = zext nneg i32 %i.ji to i64
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !59
  %i.jq = icmp eq i32 %i.jp, -1
  br i1 %i.jq, label %commit_graph_generation_from_graph.exit.i, label %bb.bn

bb.bn:                                            ; preds = %commit_graph_data_slab_peek.exit.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !60
  br label %commit_graph_generation_from_graph.exit.i

commit_graph_generation_from_graph.exit.i:        ; preds = %bb.bn, %commit_graph_data_slab_peek.exit.i.i, %bb.bm, %bb.bl
  %.0.i184.i = phi i64 [ %i.js, %bb.bn ], [ 9223372036854775807, %commit_graph_data_slab_peek.exit.i.i ], [ 9223372036854775807, %bb.bm ], [ 9223372036854775807, %bb.bl ]
  %spec.select.i = call i64 @llvm.umax.i64(i64 %.0.i184.i, i64 %.0242.i) ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.091244.i, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.090243.i, i64 8
  %.090.i = load ptr, ptr %i.ju, align 8, !tbaa !146 ; 2 uses
  %.091.i = load ptr, ptr %i.jt, align 8, !tbaa !146 ; 2 uses
  %.not112.i = icmp eq ptr %.091.i, null
  br i1 %.not112.i, label %._crit_edge247.i, label %.lr.ph246.i, !llvm.loop !304

._crit_edge247.i:                                 ; preds = %commit_graph_generation_from_graph.exit.i, %bb.bd
  %.0.lcssa.i = phi i64 [ 0, %bb.bd ], [ %spec.select.i, %commit_graph_generation_from_graph.exit.i ] ; 3 uses
  %.090.lcssa.i = phi ptr [ %.090239.i, %bb.bd ], [ %.090.i, %commit_graph_generation_from_graph.exit.i ]
  %.not114.i = icmp eq ptr %.090.lcssa.i, null
  br i1 %.not114.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge247.i
  %i.jv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !44
  %.not4.i185.i = icmp eq i32 %i.jv, 0
  br i1 %.not4.i185.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bo, %bb.be
  %.str.123.sink.i = phi ptr [ @.str.121, %bb.be ], [ @.str.123, %bb.bo ]
  %.0218.ph.ph.i = phi i64 [ %.0242.i, %bb.be ], [ %.0.lcssa.i, %bb.bo ]
  %i.jw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.123.sink.i, i32 noundef 5) #22
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bo, %bb.be
  %.0.i158.sink.i = phi ptr [ @.str.121, %bb.be ], [ @.str.123, %bb.bo ], [ %i.jw, %.sink.split.sink.split.i ]
  %.0218.ph.i = phi i64 [ %.0242.i, %bb.be ], [ %.0.lcssa.i, %bb.bo ], [ %.0218.ph.ph.i, %.sink.split.sink.split.i ]
  %i.jx = call ptr @oid_to_hex(ptr noundef nonnull %4) #22
  call void (ptr, ...) @graph_report(ptr noundef %.0.i158.sink.i, ptr noundef %i.jx)
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i, %._crit_edge247.i
  %.0218.i = phi i64 [ %.0.lcssa.i, %._crit_edge247.i ], [ %.0218.ph.i, %.sink.split.i ] ; 4 uses
  %i.jy = getelementptr i8, ptr %i.em, i64 72
  %.val.i = load i32, ptr %i.jy, align 8, !tbaa !51 ; 2 uses
  %i.jz = udiv i32 %.val.i, 32766                 ; 2 uses
  %i.ka = urem i32 %.val.i, 32766
  %i.kb = load i32, ptr @commit_graph_data_slab.2, align 8, !tbaa !54
  %.not.i.i.i188.i = icmp ugt i32 %i.kb, %i.jz
  br i1 %.not.i.i.i188.i, label %bb.bq, label %.thread313.thread323.i

bb.bq:                                            ; preds = %bb.bp
  %.pre.i.i.i190.i = load ptr, ptr @commit_graph_data_slab.3, align 8, !tbaa !55
  %i.kc = zext nneg i32 %i.jz to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i190.i, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !57 ; 2 uses
  %.not35.i.i.i191.i = icmp eq ptr %i.ke, null
  br i1 %.not35.i.i.i191.i, label %.thread313.i.thread, label %commit_graph_data_slab_peek.exit.i192.i

commit_graph_data_slab_peek.exit.i192.i:          ; preds = %bb.bq
  %i.kf = zext nneg i32 %i.ka to i64
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.ke, i64 %i.kf ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !59
  %i.ki = icmp eq i32 %i.kh, -1
  br i1 %i.ki, label %.thread313.i, label %commit_graph_generation_from_graph.exit193.i

commit_graph_generation_from_graph.exit193.i:     ; preds = %commit_graph_data_slab_peek.exit.i192.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !60
  %.fr.i = freeze i64 %i.kk
  %i.kl = icmp eq i64 %.fr.i, 0
  br i1 %i.kl, label %.thread313.thread.i, label %.thread313.i

.thread313.i:                                     ; preds = %commit_graph_generation_from_graph.exit193.i, %commit_graph_data_slab_peek.exit.i192.i
  %.not116.i = icmp eq ptr %.095251.i, null
  br i1 %.not116.i, label %commit_graph_data_slab_peek.exit.i198.i, label %.thread313.thread.i

.thread313.i.thread:                              ; preds = %bb.bq
  %.not116.i33 = icmp eq ptr %.095251.i, null
  br i1 %.not116.i33, label %.thread, label %.thread313.thread.i

.thread:                                          ; preds = %.thread313.i.thread
  %i.km = load i32, ptr %i.dz, align 4, !tbaa !95
  %i.kn = icmp eq i32 %i.km, 0
  %i.ko = icmp eq i64 %.0218.i, 1073741823
  %or.cond.i34 = and i1 %i.ko, %i.kn
  br label %commit_graph_generation.exit.i

.thread313.thread323.i:                           ; preds = %bb.bp
  %.not116324.i = icmp eq ptr %.095251.i, null
  br i1 %.not116324.i, label %.thread325.i, label %.thread313.thread.i

.thread325.i:                                     ; preds = %.thread313.thread323.i
  %i.kp = load i32, ptr %i.dz, align 4, !tbaa !95
  %i.kq = icmp eq i32 %i.kp, 0
  %i.kr = icmp eq i64 %.0218.i, 1073741823
  %or.cond326.i = and i1 %i.kr, %i.kq
  br label %commit_graph_generation.exit.i

commit_graph_data_slab_peek.exit.i198.i:          ; preds = %.thread313.i
  %5 = icmp eq i64 %.0218.i, 1073741823
  %6 = load i32, ptr %i.dz, align 4, !tbaa !95
  %i.ks = icmp eq i32 %6, 0
  %or.cond.i = and i1 %5, %i.ks
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !60 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.ku, 0
  %spec.select339.i = select i1 %.not6.i.i, i64 9223372036854775807, i64 %i.ku
  br label %commit_graph_generation.exit.i

commit_graph_generation.exit.i:                   ; preds = %.thread, %commit_graph_data_slab_peek.exit.i198.i, %.thread325.i
  %or.cond327.i = phi i1 [ %or.cond.i, %commit_graph_data_slab_peek.exit.i198.i ], [ %or.cond326.i, %.thread325.i ], [ %or.cond.i34, %.thread ]
  %.0.i195.i = phi i64 [ %spec.select339.i, %commit_graph_data_slab_peek.exit.i198.i ], [ 9223372036854775807, %.thread325.i ], [ 9223372036854775807, %.thread ] ; 2 uses
  %i.kv = add i64 %.0218.i, 1
  %i.kw = select i1 %or.cond327.i, i64 1073741823, i64 %i.kv ; 2 uses
  %i.kx = icmp ult i64 %.0.i195.i, %i.kw
  br i1 %i.kx, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %commit_graph_generation.exit.i
  %i.ky = load i32, ptr @git_gettext_enabled, align 4, !tbaa !44
  %.not4.i199.i = icmp eq i32 %i.ky, 0
  br i1 %.not4.i199.i, label %_.exit201.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.124, i32 noundef 5) #22
  br label %_.exit201.i

_.exit201.i:                                      ; preds = %bb.bs, %bb.br
  %.0.i200.i = phi ptr [ %i.kz, %bb.bs ], [ @.str.124, %bb.br ]
  %i.la = call ptr @oid_to_hex(ptr noundef nonnull %4) #22
  call void (ptr, ...) @graph_report(ptr noundef %.0.i200.i, ptr noundef %i.la, i64 noundef %.0.i195.i, i64 noundef %i.kw)
  br label %bb.bt

bb.bt:                                            ; preds = %_.exit201.i, %commit_graph_generation.exit.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.em, i64 48 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !124
  %i.ld = getelementptr inbounds nuw i8, ptr %i.eo, i64 48 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !124
  %.not117.i = icmp eq i64 %i.lc, %i.le
  br i1 %.not117.i, label %.thread313.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lf = load i32, ptr @git_gettext_enabled, align 4, !tbaa !44
  %.not4.i202.i = icmp eq i32 %i.lf, 0
  br i1 %.not4.i202.i, label %_.exit204.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.125, i32 noundef 5) #22
  br label %_.exit204.i

_.exit204.i:                                      ; preds = %bb.bv, %bb.bu
  %.0.i203.i = phi ptr [ %i.lg, %bb.bv ], [ @.str.125, %bb.bu ]
  %i.lh = call ptr @oid_to_hex(ptr noundef nonnull %4) #22
  %i.li = load i64, ptr %i.lb, align 8, !tbaa !124
  %i.lj = load i64, ptr %i.ld, align 8, !tbaa !124
  call void (ptr, ...) @graph_report(ptr noundef %.0.i203.i, ptr noundef %i.lh, i64 noundef %i.li, i64 noundef %i.lj)
  br label %.thread313.thread.i

.thread313.thread.i:                              ; preds = %.thread313.i.thread, %_.exit204.i, %bb.bt, %.thread313.thread323.i, %.thread313.i, %commit_graph_generation_from_graph.exit193.i, %_.exit152.i
  %.297.i = phi ptr [ %.095251.i, %_.exit152.i ], [ %.095251.i, %.thread313.i ], [ null, %_.exit204.i ], [ null, %bb.bt ], [ %.095251.i, %.thread313.thread323.i ], [ %i.em, %commit_graph_generation_from_graph.exit193.i ], [ %.095251.i, %.thread313.i.thread ] ; 3 uses
  %.294.i = phi ptr [ %.092252.i, %_.exit152.i ], [ %i.em, %.thread313.i ], [ %i.em, %_.exit204.i ], [ %i.em, %bb.bt ], [ %i.em, %.thread313.thread323.i ], [ %.092252.i, %commit_graph_generation_from_graph.exit193.i ], [ %i.em, %.thread313.i.thread ] ; 3 uses
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %i.lk = load i32, ptr %i.al, align 4, !tbaa !102
  %i.ll = zext i32 %i.lk to i64
  %i.lm = icmp samesign ult i64 %indvars.iv.next280.i, %i.ll
  br i1 %i.lm, label %bb.aj, label %._crit_edge254.i, !llvm.loop !305

._crit_edge254.i:                                 ; preds = %.thread313.thread.i
  %i.ln = icmp ne ptr %.297.i, null
  %i.lo = icmp ne ptr %.294.i, null
  %or.cond3.i = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %or.cond3.i, label %bb.bw, label %._crit_edge254.thread.i

bb.bw:                                            ; preds = %._crit_edge254.i
  %i.lp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !44
  %.not4.i205.i = icmp eq i32 %i.lp, 0
  br i1 %.not4.i205.i, label %_.exit207.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.126, i32 noundef 5) #22
  br label %_.exit207.i

_.exit207.i:                                      ; preds = %bb.bx, %bb.bw
  %.0.i206.i = phi ptr [ %i.lq, %bb.bx ], [ @.str.126, %bb.bw ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.297.i, i64 8
  %i.ls = call ptr @oid_to_hex(ptr noundef nonnull %i.lr) #22
  %i.lt = getelementptr inbounds nuw i8, ptr %.294.i, i64 8
  %i.lu = call ptr @oid_to_hex(ptr noundef nonnull %i.lt) #22
  call void (ptr, ...) @graph_report(ptr noundef %.0.i206.i, ptr noundef %i.ls, ptr noundef %i.lu)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !187
  br label %._crit_edge254.thread.i

._crit_edge254.thread.i:                          ; preds = %_.exit207.i, %._crit_edge254.i, %.preheader.i
  %i.lv = phi ptr [ %i.x, %.preheader.i ], [ %.pre, %_.exit207.i ], [ %i.x, %._crit_edge254.i ]
  %.2 = phi i64 [ %.03155, %.preheader.i ], [ %i.eb, %_.exit207.i ], [ %i.eb, %._crit_edge254.i ]
  %i.lw = load i32, ptr @verify_commit_graph_error, align 4, !tbaa !44
  br label %verify_one_commit_graph.exit

verify_one_commit_graph.exit:                     ; preds = %._crit_edge238.i, %._crit_edge254.thread.i
  %i.lx = phi ptr [ %i.lv, %._crit_edge254.thread.i ], [ %i.x, %._crit_edge238.i ]
  %.3 = phi i64 [ %.2, %._crit_edge254.thread.i ], [ %.03155, %._crit_edge238.i ]
  %.0103.i = phi i32 [ %i.lw, %._crit_edge254.thread.i ], [ %i.dv, %._crit_edge238.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ly = or i32 %.0103.i, %.01458                ; 2 uses
  br i1 %.not21, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %verify_one_commit_graph.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %.01656, i64 96
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !116 ; 2 uses
  %.not20 = icmp eq ptr %i.ma, null
  br i1 %.not20, label %bb.bz, label %bb.i, !llvm.loop !306

bb.bz:                                            ; preds = %verify_one_commit_graph.exit, %bb.by
  %i.mb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !44
  %.not4.i.i22 = icmp eq i32 %i.mb, 0
  br i1 %.not4.i.i22, label %stop_progress.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #22
  br label %stop_progress.exit

stop_progress.exit:                               ; preds = %bb.bz, %bb.ca
  %.0.i.i24 = phi ptr [ %i.mc, %bb.ca ], [ @.str.56, %bb.bz ]
  call void @stop_progress_msg(ptr noundef nonnull %i.c, ptr noundef %.0.i.i24) #22
  br label %bb.cb

bb.cb:                                            ; preds = %stop_progress.exit, %bb.b
  %.015 = phi i32 [ %i.ly, %stop_progress.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.015
}

; Function Attrs: cold nofree nounwind uwtable
define internal void @graph_report(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #12 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 1, ptr @verify_commit_graph_error, align 4, !tbaa !44
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !308
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #26 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !308
  %fputc = call i32 @fputc(i32 10, ptr %i.c)      ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare ptr @start_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @disable_commit_graph(ptr nofree noundef writeonly captures(none) initializes((532, 536)) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  store i32 1, ptr %i.a, align 4, !tbaa !119
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

declare i32 @bsearch_hash(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @insert_parent_or_die(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117
  %i.e = add i32 %i.d, %i.b
  %.not = icmp ult i32 %1, %i.e
  br i1 %.not, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i32 noundef %1) #23
  unreachable

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.019.i = phi ptr [ %i.j, %bb.c ], [ %0, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.019.i, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117  ; 3 uses
  %i.h = icmp ult i32 %1, %i.g
  br i1 %i.h, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.critedge16.i, label %.lr.ph.i, !llvm.loop !5

end_hunk_0
