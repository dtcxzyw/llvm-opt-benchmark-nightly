Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/aclchk?download=true
inline.NumInlined: 186
inline.NumDeleted: 35
begin_hunk_0_@ExecGrantStmt_oids:bb.a
  %.1133.lcssa.i = phi i1 [ %.0132.i, %bb.ah ], [ %.0132.i, %.lr.ph.i ], [ true, %expand_col_privileges.exit.i ]
  %i.gm = icmp sgt i16 %i.dd, -8
  %or.cond223.i = and i1 %i.gm, %.1133.lcssa.i
  br i1 %or.cond223.i, label %.lr.ph219.i, label %.loopexit.i

.lr.ph219.i:                                      ; preds = %.critedge159.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  br label %bb.aq

bb.ai:                                            ; preds = %.lr.ph70
  %i.go = call fastcc i64 @string_to_privilege(ptr noundef %i.gk) ; 3 uses
  %i.gp = and i64 %i.go, 32728
  %.not156.i = icmp eq i64 %i.gp, 0
  br i1 %.not156.i, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.gr = call i32 @errcode(i32 noundef 16910080) #10 ; 0 uses
  %i.gs = call fastcc ptr @privilege_to_string(i64 noundef %i.go)
  %i.gt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.114, ptr noundef nonnull %i.gs) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2075, ptr noundef nonnull @__func__.ExecGrant_Relation) #10
  unreachable

.thread.i:                                        ; preds = %bb.ai, %.lr.ph70
  %.2177.i = phi i64 [ %i.go, %bb.ai ], [ 39, %.lr.ph70 ] ; 3 uses
  %i.gu = load i8, ptr %i.bt, align 1
  %i.gv = icmp ne i8 %i.gu, 83
  %i.gw = and i64 %.2177.i, 37
  %.not157.i = icmp eq i64 %i.gw, 0
  %or.cond160.i = or i1 %i.gv, %.not157.i
  br i1 %or.cond160.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.thread.i
  %i.gx = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #10
  br i1 %i.gx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gy = call i32 @errcode(i32 noundef 16910080) #10 ; 0 uses
  %i.gz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.115, ptr noundef nonnull %i.gd) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2088, ptr noundef nonnull @__func__.ExecGrant_Relation) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ha = and i64 %.2177.i, 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %.3.i = phi i64 [ %i.ha, %bb.am ], [ %.2177.i, %.thread.i ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8            ; 3 uses
  %.not.i164.i = icmp eq ptr %i.hc, null
  br i1 %.not.i164.i, label %expand_col_privileges.exit.i, label %.lr.ph.i165.i

.lr.ph.i165.i:                                    ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hf = load i32, ptr %i.hd, align 4
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph28.i.i, label %expand_col_privileges.exit.i

.lr.ph28.i.i:                                     ; preds = %.lr.ph.i165.i, %bb.ap
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ap ], [ 0, %.lr.ph.i165.i ] ; 2 uses
  %i.hh = load ptr, ptr %i.he, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.hm = call signext i16 @get_attnum(i32 noundef %i.bj, ptr noundef %i.hl) #10 ; 2 uses
  %i.hn = icmp eq i16 %i.hm, 0
  br i1 %i.hn, label %.split.i.i, label %bb.ao

.split.i.i:                                       ; preds = %.lr.ph28.i.i
  %i.ho = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.hp = call i32 @errcode(i32 noundef 50360452) #10 ; 0 uses
  %i.hq = call ptr @get_rel_name(i32 noundef %i.bj) #10
  %i.hr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.129, ptr noundef %i.hl, ptr noundef %i.hq) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1583, ptr noundef nonnull @__func__.expand_col_privileges) #10
  unreachable

bb.ao:                                            ; preds = %.lr.ph28.i.i
  %i.hs = add i16 %i.hm, 7                        ; 3 uses
  %i.ht = icmp sgt i16 %i.hs, 0
  %i.hu = sext i16 %i.hs to i32
  %.not21.i.i = icmp sgt i32 %i.df, %i.hu
  %or.cond.i166.i = and i1 %i.ht, %.not21.i.i
  br i1 %or.cond.i166.i, label %bb.ap, label %.split26.i.i

.split26.i.i:                                     ; preds = %bb.ao
  %i.hv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.hw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.130) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1586, ptr noundef nonnull @__func__.expand_col_privileges) #10
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.hx = zext nneg i16 %i.hs to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.hx ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = or i64 %i.hz, %.3.i
  store i64 %i.ia, ptr %i.hy, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ib = load i32, ptr %i.hd, align 4
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next.i.i, %i.ic
  br i1 %i.id, label %.lr.ph28.i.i, label %expand_col_privileges.exit.i

expand_col_privileges.exit.i:                     ; preds = %bb.ap, %.lr.ph.i165.i, %bb.an
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %i.ie = load i32, ptr %i.gb, align 4
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next.i, %i.if
  br i1 %i.ig, label %.lr.ph70, label %.critedge159.i

bb.aq:                                            ; preds = %bb.bb, %.lr.ph219.i
  %.0218.i = phi i16 [ 0, %.lr.ph219.i ], [ %i.lo, %bb.bb ] ; 3 uses
  %i.ih = sext i16 %.0218.i to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8            ; 4 uses
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.bb, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.il = add i16 %.0218.i, -7                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.u, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.v, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.w, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #10
  %i.im = sext i16 %i.il to i64
  %i.in = call ptr @SearchSysCache2(i32 noundef 7, i64 noundef %i.bk, i64 noundef %i.im) #10 ; 5 uses
  %.not.i167.i = icmp eq ptr %i.in, null
  br i1 %.not.i167.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.io = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ip = sext i16 %i.il to i32
  %i.iq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.116, i32 noundef %i.ip, i32 noundef %i.bj) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1673, ptr noundef nonnull @__func__.ExecGrant_Attribute) #10
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ir = getelementptr i8, ptr %i.in, i64 16
  %.val.i168.i = load ptr, ptr %i.ir, align 8     ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.val.i168.i, i64 22
  %i.it = load i8, ptr %i.is, align 2
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %.val.i168.i, i64 %i.iu
  %i.iw = call i64 @SysCacheGetAttr(i32 noundef 7, ptr noundef nonnull %i.in, i16 noundef signext 22, ptr noundef nonnull %i.r) #10
  %i.ix = load i8, ptr %i.r, align 1, !range !4, !noundef !5
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iz = call ptr @acldefault(i32 noundef 6, i32 noundef %i.el) #10
  store ptr null, ptr %i.x, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ja = inttoptr i64 %i.iw to ptr
  %i.jb = call ptr @pg_detoast_datum_copy(ptr noundef %i.ja) #10 ; 2 uses
  %i.jc = call i32 @aclmembers(ptr noundef %i.jb, ptr noundef nonnull %i.x) #10
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.051.i.i = phi ptr [ %i.iz, %bb.au ], [ %i.jb, %bb.av ] ; 6 uses
  %.0.i.i = phi i32 [ 0, %bb.au ], [ %i.jc, %bb.av ]
  %i.jd = call ptr @aclconcat(ptr noundef %i.eu, ptr noundef %.051.i.i) #10 ; 2 uses
  %i.je = load ptr, ptr %i.ar, align 8
  call void @select_best_grantor(ptr noundef %i.je, i64 noundef range(i64 1, 0) %i.ij, ptr noundef %i.jd, i32 noundef %i.el, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #10
  call void @pfree(ptr noundef %i.jd) #10
  %i.jf = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = load i64, ptr %i.t, align 8
  %i.ji = icmp eq i64 %i.ij, 39
  %i.jj = load i32, ptr %i.s, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jl = call fastcc i64 @restrict_and_check_grant(i1 noundef zeroext %i.jg, i64 noundef %i.jh, i1 noundef zeroext %i.ji, i64 noundef range(i64 1, 0) %i.ij, i32 noundef %i.bj, i32 noundef %i.jj, i32 noundef 6, ptr noundef nonnull %i.gn, i16 noundef signext %i.il, ptr noundef nonnull %i.jk) ; 2 uses
  %i.jm = load i8, ptr %0, align 8, !range !4, !noundef !5 ; 2 uses
  %i.jn = trunc nuw i8 %i.jm to i1                ; 2 uses
  %i.jo = load i32, ptr %i.at, align 8            ; 2 uses
  %i.jp = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.jq = load i32, ptr %i.s, align 4             ; 2 uses
  %i.jr = select i1 %i.jn, i32 1, i32 2           ; 2 uses
  %.not34.i.i = icmp eq ptr %i.jp, null
  br i1 %.not34.i.i, label %merge_acl_with_grant.exit.i, label %.lr.ph.i169.i

.lr.ph.i169.i:                                    ; preds = %bb.aw
  %i.js = load i8, ptr %i.as, align 8, !range !4, !noundef !5 ; 2 uses
  %i.jt = trunc nuw i8 %i.js to i1                ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 4 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %i.jw = and i8 %i.js, %i.jm
  %or.cond.i170.not.i = icmp eq i8 %i.jw, 0
  %.not.i171.i = xor i1 %i.jn, true               ; 2 uses
  %or.cond6.i.i = and i1 %.not.i171.i, %i.jt
  %or.cond9.i.i = or i1 %.not.i171.i, %i.jt
  %i.jx = shl nuw i64 %i.jl, 32                   ; 2 uses
  %i.jy = select i1 %or.cond9.i.i, i64 %i.jx, i64 0
  %i.jz = or disjoint i64 %i.jy, %i.jl
  %3 = select i1 %or.cond6.i.i, i64 %i.jx, i64 %i.jz ; 2 uses
  %i.ka = load i32, ptr %i.ju, align 4
  %i.kb = icmp sgt i32 %i.ka, 0                   ; 2 uses
  br i1 %or.cond.i170.not.i, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i169.i
  br i1 %i.kb, label %.lr.ph55.i.i, label %merge_acl_with_grant.exit.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph.split.us.split.i.i, %.lr.ph55.i.i
  %indvars.iv.i173.i = phi i64 [ %indvars.iv.next.i174.i, %.lr.ph55.i.i ], [ 0, %.lr.ph.split.us.split.i.i ] ; 2 uses
  %.037.us54.i.i = phi ptr [ %i.kf, %.lr.ph55.i.i ], [ %.051.i.i, %.lr.ph.split.us.split.i.i ] ; 2 uses
  %i.kc = load ptr, ptr %i.jv, align 8
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.i173.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ke = load i32, ptr %i.kd, align 8
  store i32 %i.ke, ptr %2, align 8
  store i32 %i.jq, ptr %i.az, align 4
  store i64 %3, ptr %i.ba, align 8
  %i.kf = call ptr @aclupdate(ptr noundef %.037.us54.i.i, ptr noundef nonnull %2, i32 noundef %i.jr, i32 noundef %i.el, i32 noundef %i.jo) #10 ; 2 uses
  call void @pfree(ptr noundef %.037.us54.i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %indvars.iv.next.i174.i = add nuw nsw i64 %indvars.iv.i173.i, 1 ; 2 uses
  %i.kg = load i32, ptr %i.ju, align 4
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next.i174.i, %i.kh
  br i1 %i.ki, label %.lr.ph55.i.i, label %merge_acl_with_grant.exit.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i169.i
  br i1 %i.kb, label %.lr.ph50.i.i, label %merge_acl_with_grant.exit.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph.split.split.i.i, %bb.ax
  %indvars.iv60.i.i = phi i64 [ %indvars.iv.next61.i.i, %bb.ax ], [ 0, %.lr.ph.split.split.i.i ] ; 2 uses
  %.03749.i.i = phi ptr [ %i.kq, %bb.ax ], [ %.051.i.i, %.lr.ph.split.split.i.i ] ; 2 uses
  %i.kj = load ptr, ptr %i.jv, align 8
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv60.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.kl = load i32, ptr %i.kk, align 8            ; 2 uses
  store i32 %i.kl, ptr %2, align 8
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %.split.us.i.i, label %bb.ax

.split.us.i.i:                                    ; preds = %.lr.ph50.i.i
  %i.kn = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ko = call i32 @errcode(i32 noundef 16910080) #10 ; 0 uses
  %i.kp = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.180) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 211, ptr noundef nonnull @__func__.merge_acl_with_grant) #10
  unreachable

bb.ax:                                            ; preds = %.lr.ph50.i.i
  store i32 %i.jq, ptr %i.az, align 4
  store i64 %3, ptr %i.ba, align 8
  %i.kq = call ptr @aclupdate(ptr noundef %.03749.i.i, ptr noundef nonnull %2, i32 noundef %i.jr, i32 noundef %i.el, i32 noundef %i.jo) #10 ; 2 uses
  call void @pfree(ptr noundef %.03749.i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %indvars.iv.next61.i.i = add nuw nsw i64 %indvars.iv60.i.i, 1 ; 2 uses
  %i.kr = load i32, ptr %i.ju, align 4
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp slt i64 %indvars.iv.next61.i.i, %i.ks
  br i1 %i.kt, label %.lr.ph50.i.i, label %merge_acl_with_grant.exit.i

merge_acl_with_grant.exit.i:                      ; preds = %bb.ax, %.lr.ph55.i.i, %.lr.ph.split.split.i.i, %.lr.ph.split.us.split.i.i, %bb.aw
  %.0.lcssa.i.i = phi ptr [ %.051.i.i, %bb.aw ], [ %.051.i.i, %.lr.ph.split.split.i.i ], [ %.051.i.i, %.lr.ph.split.us.split.i.i ], [ %i.kf, %.lr.ph55.i.i ], [ %i.kq, %bb.ax ] ; 5 uses
  %i.ku = call i32 @aclmembers(ptr noundef %.0.lcssa.i.i, ptr noundef nonnull %i.y) #10
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.critedge.i.i, label %bb.ay

.critedge.i.i:                                    ; preds = %merge_acl_with_grant.exit.i
  %i.ky = ptrtoint ptr %.0.lcssa.i.i to i64
  store i64 %i.ky, ptr %i.bd, align 8
  store i8 1, ptr %i.bc, align 1
  br label %bb.az

bb.ay:                                            ; preds = %merge_acl_with_grant.exit.i
  store i8 1, ptr %i.bb, align 1
  %i.kz = load i8, ptr %i.r, align 1, !range !4, !noundef !5
  %i.la = trunc nuw i8 %i.kz to i1
  store i8 1, ptr %i.bc, align 1
  br i1 %i.la, label %ExecGrant_Attribute.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i.i
  %i.lb = load ptr, ptr %i.be, align 8
  %i.lc = call ptr @heap_modify_tuple(ptr noundef nonnull %i.in, ptr noundef %i.lb, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #10 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  call void @CatalogTupleUpdate(ptr noundef %i.ak, ptr noundef nonnull %i.ld, ptr noundef %i.lc) #10
  %i.le = sext i16 %i.il to i32                   ; 2 uses
  %i.lf = load i8, ptr @creating_extension, align 1, !range !4, !noundef !5
  %i.lg = trunc nuw i8 %i.lf to i1
  %i.lh = load i8, ptr @binary_upgrade_record_init_privs, align 1, !range !4
  %i.li = trunc nuw i8 %i.lh to i1
  %or.cond.i.i.i = select i1 %i.lg, i1 true, i1 %i.li
  br i1 %or.cond.i.i.i, label %bb.ba, label %recordExtensionInitPriv.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.lj = load i32, ptr %i.kv, align 4
  %i.lk = icmp sgt i32 %i.lj, 0
  %i.ll = select i1 %i.lk, ptr %.0.lcssa.i.i, ptr null
  call fastcc void @recordExtensionInitPrivWorker(i32 noundef %i.bj, i32 noundef 1259, i32 noundef range(i32 -32768, 32768) %i.le, ptr noundef %i.ll)
  br label %recordExtensionInitPriv.exit.i.i

recordExtensionInitPriv.exit.i.i:                 ; preds = %bb.ba, %bb.az
  %i.lm = load ptr, ptr %i.x, align 8
  %i.ln = load ptr, ptr %i.y, align 8
  call void @updateAclDependencies(i32 noundef 1259, i32 noundef %i.bj, i32 noundef %i.le, i32 noundef %i.el, i32 noundef %.0.i.i, ptr noundef %i.lm, i32 noundef %i.ku, ptr noundef %i.ln) #10
  br label %ExecGrant_Attribute.exit.i

ExecGrant_Attribute.exit.i:                       ; preds = %recordExtensionInitPriv.exit.i.i, %bb.ay
  call void @pfree(ptr noundef nonnull %.0.lcssa.i.i) #10
  call void @ReleaseSysCache(ptr noundef nonnull %i.in) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #10
  br label %bb.bb

bb.bb:                                            ; preds = %ExecGrant_Attribute.exit.i, %bb.aq
  %i.lo = add i16 %.0218.i, 1                     ; 2 uses
  %i.lp = sext i16 %i.lo to i32
  %i.lq = icmp sgt i32 %i.df, %i.lp
  br i1 %i.lq, label %bb.aq, label %.loopexit.i, !llvm.loop !11

.loopexit.i:                                      ; preds = %bb.bb, %.critedge159.i
  call void @pfree(ptr noundef %i.eu) #10
  call void @pfree(ptr noundef %i.di) #10
  call void @ReleaseSysCache(ptr noundef nonnull %i.bl) #10
  call void @CommandCounterIncrement() #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #10
  %indvars.iv.next261.i = add nuw nsw i64 %indvars.iv260.i71, 1 ; 2 uses
  %i.lr = load i32, ptr %i.an, align 4
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp slt i64 %indvars.iv.next261.i, %i.ls
  br i1 %i.lt, label %.lr.ph72, label %ExecGrant_Relation.exit

ExecGrant_Relation.exit:                          ; preds = %.loopexit.i, %.lr.ph221.i, %bb.b
  call void @table_close(ptr noundef %i.ak, i32 noundef 3) #10
  call void @table_close(ptr noundef %i.aj, i32 noundef 3) #10
  br label %bb.ci

bb.bc:                                            ; preds = %bb.a
  tail call fastcc void @ExecGrant_common(ptr noundef %0, i32 noundef 1262, i64 noundef 3584, ptr noundef null)
  br label %bb.ci

bb.bd:                                            ; preds = %bb.a, %bb.a
  tail call fastcc void @ExecGrant_common(ptr noundef %0, i32 noundef 1247, i64 noundef 256, ptr noundef nonnull @ExecGrant_Type_check)
  br label %bb.ci

bb.be:                                            ; preds = %bb.a
  tail call fastcc void @ExecGrant_common(ptr noundef %0, i32 noundef 2328, i64 noundef 256, ptr noundef null)
  br label %bb.ci

bb.bf:                                            ; preds = %bb.a
  tail call fastcc void @ExecGrant_common(ptr noundef %0, i32 noundef 1417, i64 noundef 256, ptr noundef null)
  br label %bb.ci

bb.bg:                                            ; preds = %bb.a, %bb.a, %bb.a
  tail call fastcc void @ExecGrant_common(ptr noundef %0, i32 noundef 1255, i64 noundef 128, ptr noundef null)
  br label %bb.ci

bb.bh:                                            ; preds = %bb.a
  tail call fastcc void @ExecGrant_common(ptr noundef %0, i32 noundef 2612, i64 noundef 256, ptr noundef nonnull @ExecGrant_Language_check)
  br label %bb.ci

bb.bi:                                            ; preds = %bb.a
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 8, !range !4, !noundef !5
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i64 6, ptr %i.lx, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.ma = tail call ptr @table_open(i32 noundef 2995, i32 noundef 3) #10 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8            ; 3 uses
  %.not.i15 = icmp eq ptr %i.mc, null
  br i1 %.not.i15, label %ExecGrant_Largeobject.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 64 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ml = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.mn = load i32, ptr %i.md, align 4
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph68, label %ExecGrant_Largeobject.exit

.lr.ph68:                                         ; preds = %.lr.ph.i16, %recordExtensionInitPriv.exit.i20
  %indvars.iv.i1767 = phi i64 [ %indvars.iv.next.i21, %recordExtensionInitPriv.exit.i20 ], [ 0, %.lr.ph.i16 ] ; 2 uses
  %i.mp = load ptr, ptr %i.me, align 8
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.i1767
  %i.mr = load i32, ptr %i.mq, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.n, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.o, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.ms = zext i32 %i.mr to i64
  call void @ScanKeyInit(ptr noundef nonnull %1, i16 noundef signext 1, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.ms) #10
  %i.mt = call ptr @systable_beginscan(ptr noundef %i.ma, i32 noundef 2996, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %1) #10 ; 2 uses
  %i.mu = call ptr @systable_getnext(ptr noundef %i.mt) #10 ; 4 uses
  %.not57.i = icmp eq ptr %i.mu, null
  br i1 %.not57.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph68
  %i.mv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.mw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.106, i32 noundef %i.mr) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2333, ptr noundef nonnull @__func__.ExecGrant_Largeobject) #10
  unreachable

bb.bn:                                            ; preds = %.lr.ph68
  %i.mx = getelementptr i8, ptr %i.mu, i64 16
  %.val.i18 = load ptr, ptr %i.mx, align 8        ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.val.i18, i64 22
  %i.mz = load i8, ptr %i.my, align 2
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %i.na ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nd = load i32, ptr %i.nc, align 4            ; 4 uses
  %i.ne = load ptr, ptr %i.mf, align 8
  %i.nf = call fastcc i64 @heap_getattr(ptr noundef %i.mu, i32 noundef 3, ptr noundef %i.ne, ptr noundef %i.j)
  %i.ng = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.bo, label %bb.bp
end_hunk_0
