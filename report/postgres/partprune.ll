Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/partprune?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
begin_hunk_0_@gen_partprune_steps_internal:bb.a
  br i1 %i.hm, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge527
  %i.hn = call zeroext i1 @equal(ptr noundef nonnull %.0232.i.lcssa, ptr noundef %i.du) #5, !inline_history !21
  br i1 %i.hn, label %bb.ag, label %.critedge.i.a

bb.ag:                                            ; preds = %bb.af
  %i.ho = call i32 @get_commutator(i32 noundef %i.hl) #5, !inline_history !21 ; 2 uses
  %.not257.i = icmp eq i32 %i.ho, 0
  br i1 %.not257.i, label %.critedge.i.a, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge527
  %storemerge.i = phi ptr [ %.0232.i.lcssa, %._crit_edge527 ], [ %.0233.i.lcssa, %bb.ag ] ; 8 uses
  %.0231.i = phi i32 [ %i.hl, %._crit_edge527 ], [ %i.ho, %bb.ag ] ; 6 uses
  %i.hp = icmp eq i32 %i.ee, 0
  br i1 %i.hp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load i32, ptr %i.dl, align 8
  %i.hr = icmp eq i32 %i.ee, %i.hq
  br i1 %i.hr, label %bb.aj, label %.critedge.i.a

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hs = call zeroext i1 @op_in_opfamily(i32 noundef %.0231.i, i32 noundef %i.ea) #5, !inline_history !21 ; 3 uses
  br i1 %i.hs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @get_op_opfamily_properties(i32 noundef %.0231.i, i32 noundef %i.ea, i1 noundef zeroext false, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #5, !inline_history !21
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.ht = load i8, ptr %i.dw, align 8
  %.not258.i = icmp eq i8 %i.ht, 108
  br i1 %.not258.i, label %bb.am, label %.critedge.i.a

bb.am:                                            ; preds = %bb.al
  %i.hu = call i32 @get_negator(i32 noundef %.0231.i) #5, !inline_history !21 ; 4 uses
  %.not259.i = icmp eq i32 %i.hu, 0
  br i1 %.not259.i, label %.critedge.i.a, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hv = call zeroext i1 @op_in_opfamily(i32 noundef %i.hu, i32 noundef %i.ea) #5, !inline_history !21
  br i1 %i.hv, label %bb.ao, label %.critedge.i.a

bb.ao:                                            ; preds = %bb.an
  call void @get_op_opfamily_properties(i32 noundef %i.hu, i32 noundef %i.ea, i1 noundef zeroext false, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #5, !inline_history !21
  %i.hw = load i32, ptr %i.i, align 4
  %i.hx = icmp eq i32 %i.hw, 3
  br i1 %i.hx, label %bb.ap, label %.critedge.i.a

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %.0230.i.sink = phi i32 [ %.0231.i, %bb.ak ], [ %i.hu, %bb.ao ]
  %i.hy = call zeroext i1 @op_strict(i32 noundef %.0231.i) #5, !inline_history !21
  br i1 %i.hy, label %bb.aq, label %.critedge.i.a

bb.aq:                                            ; preds = %bb.ap
  %i.hz = load i32, ptr %storemerge.i, align 4
  %i.ia = icmp eq i32 %i.hz, 7
  br i1 %i.ia, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = load i32, ptr %i.ak, align 8
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %.critedge.i.a, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.id = call zeroext i1 @contain_var_clause(ptr noundef nonnull %storemerge.i) #5, !inline_history !21
  br i1 %i.id, label %.critedge.i.a, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = call zeroext i1 @contain_volatile_functions(ptr noundef nonnull %storemerge.i) #5, !inline_history !21
  br i1 %i.ie, label %.critedge.i.a, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8
  %i.if = load i32, ptr %storemerge.i, align 4
  %i.ig = icmp eq i32 %i.if, 8
  br i1 %i.ig, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ih = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.aw, label %pull_exec_paramids.exit198.thread

pull_exec_paramids.exit198.thread:                ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ik = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = call ptr @bms_add_member(ptr noundef null, i32 noundef %i.il) #5, !inline_history !7
  br label %pull_exec_paramids.exit198

bb.ax:                                            ; preds = %bb.au
  %i.in = call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %storemerge.i, ptr noundef nonnull @pull_exec_paramids_walker, ptr noundef nonnull %i.a) #5, !inline_history !7 ; 0 uses
  %.pre.i197 = load ptr, ptr %i.a, align 8
  br label %pull_exec_paramids.exit198

pull_exec_paramids.exit198:                       ; preds = %bb.aw, %bb.ax
  %i.io = phi ptr [ %.pre.i197, %bb.ax ], [ %i.im, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %pull_exec_paramids.exit198
  store i8 1, ptr %i.al, align 2
  %i.iq = load i32, ptr %i.ak, align 8
  %.not260.i = icmp eq i32 %i.iq, 2
  br i1 %.not260.i, label %bb.ba, label %.critedge.i.a

bb.az:                                            ; preds = %pull_exec_paramids.exit198.thread, %pull_exec_paramids.exit198
  store i8 1, ptr %i.am, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aq
  %i.ir = call signext i8 @op_volatile(i32 noundef %.0231.i) #5, !inline_history !21
  %.not261.i = icmp eq i8 %i.ir, 105
  br i1 %.not261.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.an, align 8
  %i.is = load i32, ptr %i.ak, align 8
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %.critedge.i.a, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iu = load i32, ptr %i.h, align 4             ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv729
  %i.iy = load i32, ptr %i.ix, align 4            ; 2 uses
  %i.iz = icmp eq i32 %i.iu, %i.iy
  br i1 %i.iz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw [48 x i8], ptr %i.jb, i64 %indvars.iv729
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 8
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %i.jf = load i8, ptr %i.dw, align 8
  switch i8 %i.jf, label %bb.bh [
    i8 108, label %bb.bf
    i8 114, label %bb.bf
    i8 104, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.jg = load ptr, ptr %i.dx, align 8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv729
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = call i32 @get_opfamily_proc(i32 noundef %i.ji, i32 noundef %i.iy, i32 noundef %i.iu, i16 noundef signext 1) #5, !inline_history !21
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %i.jk = load ptr, ptr %i.dx, align 8
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv729
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = call i32 @get_opfamily_proc(i32 noundef %i.jm, i32 noundef %i.iu, i32 noundef %i.iu, i16 noundef signext 2) #5, !inline_history !21
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.jo = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6, !inline_history !21 ; 0 uses
  %i.jp = load i8, ptr %i.dw, align 8
  %i.jq = sext i8 %i.jp to i32
  %i.jr = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.jq) #5, !inline_history !21 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2149, ptr noundef nonnull @__func__.match_clause_to_partition_key) #5, !inline_history !21
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.0228.i = phi i32 [ %i.jj, %bb.bf ], [ %i.jn, %bb.bg ] ; 2 uses
  %.not262.i = icmp eq i32 %.0228.i, 0
  br i1 %.not262.i, label %.critedge.i.a, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %.1229.i = phi i32 [ %i.je, %bb.bd ], [ %.0228.i, %bb.bi ]
  %i.js = call ptr @palloc(i64 noundef 32) #5, !inline_history !21 ; 7 uses
  store i32 %i.ef, ptr %i.js, align 8
  %i.jt = load i32, ptr %i.i, align 4
  %not. = xor i1 %i.hs, true
  %.sink740 = zext i1 %not. to i8
  %.sink = select i1 %i.hs, i32 %i.jt, i32 0
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i32 %.0230.i.sink, ptr %i.ju, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i8 %.sink740, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 28
  store i32 %.sink, ptr %i.jw, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %storemerge.i, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  store i32 %.1229.i, ptr %i.jy, align 8
  br label %.critedge.i.a

.critedge.i.a:                                    ; preds = %bb.bj, %bb.bi, %bb.bb, %bb.ay, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ag, %bb.af
  %.0219 = phi ptr [ %i.js, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bb ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.ay ], [ null, %bb.ap ], [ null, %bb.am ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.al ], [ null, %bb.ai ], [ null, %bb.ag ], [ null, %bb.af ]
  %.3.i = phi i32 [ 1, %bb.bj ], [ 0, %bb.bi ], [ 5, %bb.bb ], [ 5, %bb.ar ], [ 5, %bb.as ], [ 5, %bb.at ], [ 5, %bb.ay ], [ 5, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.an ], [ 5, %bb.al ], [ 0, %bb.ai ], [ 5, %bb.ag ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %match_clause_to_partition_key.exit

bb.bk:                                            ; preds = %bb.ac
  %i.jz = load i32, ptr %i.di, align 4            ; 5 uses
  %i.ka = load i32, ptr %i.dl, align 8
  %i.kb = load ptr, ptr %i.dm, align 8
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  %.val269.i = load ptr, ptr %i.kc, align 8       ; 2 uses
  %i.kd = load ptr, ptr %.val269.i, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.val269.i, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8            ; 13 uses
  %i.kg = call ptr @strip_noop_phvs(ptr noundef %i.kd) #5, !inline_history !21 ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = icmp eq i32 %i.kh, 27
  br i1 %i.ki, label %.lr.ph504, label %._crit_edge505

.lr.ph504:                                        ; preds = %bb.bk, %.lr.ph504
  %.0225.i502 = phi ptr [ %i.kk, %.lr.ph504 ], [ %i.kg, %bb.bk ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0225.i502, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8            ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = icmp eq i32 %i.kl, 27
  br i1 %i.km, label %.lr.ph504, label %._crit_edge505, !llvm.loop !24

._crit_edge505:                                   ; preds = %.lr.ph504, %bb.bk
  %.0225.i.lcssa = phi ptr [ %i.kg, %bb.bk ], [ %i.kk, %.lr.ph504 ] ; 2 uses
  %i.kn = call zeroext i1 @equal(ptr noundef nonnull %.0225.i.lcssa, ptr noundef %i.du) #5, !inline_history !21
  br i1 %i.kn, label %bb.bl, label %match_clause_to_partition_key.exit.thread

bb.bl:                                            ; preds = %._crit_edge505
  %i.ko = icmp eq i32 %i.ee, 0
  br i1 %i.ko, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kp = load i32, ptr %i.dl, align 8
  %i.kq = icmp eq i32 %i.ee, %i.kp
  br i1 %i.kq, label %bb.bn, label %match_clause_to_partition_key.exit.thread

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.kr = call zeroext i1 @op_in_opfamily(i32 noundef %i.jz, i32 noundef %i.ea) #5, !inline_history !21
  br i1 %i.kr, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ks = load i8, ptr %i.dw, align 8
  %.not.i191 = icmp eq i8 %i.ks, 108
  br i1 %.not.i191, label %bb.bp, label %match_clause_to_partition_key.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.kt = call i32 @get_negator(i32 noundef %i.jz) #5, !inline_history !21 ; 3 uses
  %.not251.i = icmp eq i32 %i.kt, 0
  br i1 %.not251.i, label %match_clause_to_partition_key.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ku = call zeroext i1 @op_in_opfamily(i32 noundef %i.kt, i32 noundef %i.ea) #5, !inline_history !21
  br i1 %i.ku, label %bb.br, label %match_clause_to_partition_key.exit.thread

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @get_op_opfamily_properties(i32 noundef %i.kt, i32 noundef %i.ea, i1 noundef zeroext false, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #5, !inline_history !21
  %i.kv = load i32, ptr %i.j, align 4
  %.not252.i = icmp eq i32 %i.kv, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br i1 %.not252.i, label %bb.bs, label %match_clause_to_partition_key.exit.thread

bb.bs:                                            ; preds = %bb.br, %bb.bn
  %i.kw = call zeroext i1 @op_strict(i32 noundef %i.jz) #5, !inline_history !21
  br i1 %i.kw, label %bb.bt, label %match_clause_to_partition_key.exit.thread275

bb.bt:                                            ; preds = %bb.bs
  %i.kx = load i32, ptr %i.kf, align 4
  %i.ky = icmp eq i32 %i.kx, 7
  br i1 %i.ky, label %bb.cd, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kz = load i32, ptr %i.ak, align 8
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %match_clause_to_partition_key.exit.thread275, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lb = call zeroext i1 @contain_var_clause(ptr noundef nonnull %i.kf) #5, !inline_history !21
  br i1 %i.lb, label %match_clause_to_partition_key.exit.thread275, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lc = call zeroext i1 @contain_volatile_functions(ptr noundef nonnull %i.kf) #5, !inline_history !21
  br i1 %i.lc, label %match_clause_to_partition_key.exit.thread275, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8
  %i.ld = load i32, ptr %i.kf, align 4
  %i.le = icmp eq i32 %i.ld, 8
  br i1 %i.le, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.bz, label %pull_exec_paramids.exit.thread

pull_exec_paramids.exit.thread:                   ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.li = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = call ptr @bms_add_member(ptr noundef null, i32 noundef %i.lj) #5, !inline_history !7
  br label %pull_exec_paramids.exit

bb.ca:                                            ; preds = %bb.bx
  %i.ll = call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %i.kf, ptr noundef nonnull @pull_exec_paramids_walker, ptr noundef nonnull %i.b) #5, !inline_history !7 ; 0 uses
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %pull_exec_paramids.exit

pull_exec_paramids.exit:                          ; preds = %bb.bz, %bb.ca
  %i.lm = phi ptr [ %.pre.i, %bb.ca ], [ %i.lk, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %pull_exec_paramids.exit
  store i8 1, ptr %i.al, align 2
  %i.lo = load i32, ptr %i.ak, align 8
  %.not253.i = icmp eq i32 %i.lo, 2
  br i1 %.not253.i, label %bb.cd, label %match_clause_to_partition_key.exit.thread275

bb.cc:                                            ; preds = %pull_exec_paramids.exit.thread, %pull_exec_paramids.exit
  store i8 1, ptr %i.am, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.bt
  %i.lp = call signext i8 @op_volatile(i32 noundef %i.jz) #5, !inline_history !21
  %.not254.i = icmp eq i8 %i.lp, 105
  br i1 %.not254.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i8 1, ptr %i.an, align 8
  %i.lq = load i32, ptr %i.ak, align 8
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %match_clause_to_partition_key.exit.thread275, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ls = load i32, ptr %i.kf, align 4
  switch i32 %i.ls, label %match_clause_to_partition_key.exit.thread275 [
    i32 7, label %bb.cg
    i32 35, label %bb.cl
  ]

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.lu = load i8, ptr %i.lt, align 8, !range !5, !noundef !6
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %match_clause_to_partition_key.exit.thread773, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.lx = load i64, ptr %i.lw, align 8
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = call ptr @pg_detoast_datum(ptr noundef %i.ly) #5, !inline_history !21 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 12 ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 4
  call void @get_typlenbyvalalign(i32 noundef %i.mb, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #5, !inline_history !21
  %i.mc = load i32, ptr %i.ma, align 4
  %i.md = load i16, ptr %i.m, align 2
  %i.me = sext i16 %i.md to i32
  %i.mf = load i8, ptr %i.n, align 1, !range !5, !noundef !6
  %i.mg = trunc nuw i8 %i.mf to i1
  %i.mh = load i8, ptr %i.o, align 1
  call void @deconstruct_array(ptr noundef %i.lz, i32 noundef %i.mc, i32 noundef %i.me, i1 noundef zeroext %i.mg, i8 noundef signext %i.mh, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #5, !inline_history !21
  %i.mi = load i32, ptr %i.r, align 4             ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph510, label %._crit_edge511

.lr.ph510:                                        ; preds = %bb.ch
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %.pre741.a = load ptr, ptr %i.q, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph510, %select.unfold
  %i.ml = phi i32 [ %i.mi, %.lr.ph510 ], [ %i.nd, %select.unfold ]
  %i.mm = phi ptr [ %.pre741.a, %.lr.ph510 ], [ %i.ne, %select.unfold ] ; 2 uses
  %indvars.iv726 = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next727, %select.unfold ] ; 3 uses
  %.0220.i507 = phi ptr [ null, %.lr.ph510 ], [ %.1221.i.ph, %select.unfold ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %indvars.iv726
  %i.mo = load i8, ptr %i.mn, align 1, !range !5, !noundef !6
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.cj, label %bb.ck
end_hunk_0
