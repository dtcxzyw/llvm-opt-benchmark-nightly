Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/fast-export?download=true
inline.NumInlined: 96
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cmd_fast_export:bb.a
    i32 3, label %.lr.ph141.preheader.i
    i32 4, label %bb.bq
    i32 5, label %.loopexit.i34
    i32 0, label %bb.bs
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.pi = load i32, ptr @git_gettext_enabled, align 4, !tbaa !39
  %.not4.i.i36 = icmp eq i32 %i.pi, 0
  br i1 %.not4.i.i36, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.108, i32 noundef 5) #18
  %.pre153.i = load i64, ptr %i.kx, align 8, !tbaa !34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.pk = phi i64 [ %.pre153.i, %bb.bn ], [ %i.pg, %bb.bm ]
  %.0.i.i37 = phi ptr [ %i.pj, %bb.bn ], [ @.str.108, %bb.bm ]
  %i.pl = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.pm = call ptr @oid_to_hex(ptr noundef nonnull %i.pl) #18
  call void (ptr, ...) @warning(ptr noundef %.0.i.i37, i64 noundef %i.pk, ptr noundef %i.pm) #18
  %.pre154.i = load i64, ptr %i.kx, align 8, !tbaa !34 ; 2 uses
  %.not149.i = icmp eq i64 %.pre154.i, 0
  br i1 %.not149.i, label %.loopexit.i34, label %.lr.ph141.preheader.i

.lr.ph141.preheader.i:                            ; preds = %bb.bo, %bb.bl
  %i.pn = phi i64 [ %.pre154.i, %bb.bo ], [ %i.pg, %bb.bl ]
  %.pre156.i = load ptr, ptr %6, align 8, !tbaa !35
  br label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %print_signature.exit.i, %.lr.ph141.preheader.i
  %i.po = phi i64 [ %i.py, %print_signature.exit.i ], [ %i.pn, %.lr.ph141.preheader.i ]
  %i.pp = phi ptr [ %i.pz, %print_signature.exit.i ], [ %.pre156.i, %.lr.ph141.preheader.i ] ; 2 uses
  %.0139.i = phi i64 [ %i.qa, %print_signature.exit.i ], [ 0, %.lr.ph141.preheader.i ] ; 2 uses
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %.0139.i ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !37 ; 4 uses
  %.not.i.i35 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i35, label %print_signature.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph141.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !41
  %i.pu = call ptr @get_signature_format(ptr noundef nonnull %i.pr) #18
  %i.pv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pr) #20
  %i.pw = trunc i64 %i.pv to i32
  %i.px = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.128, ptr noundef %i.pt, ptr noundef %i.pu, i32 noundef %i.pw, ptr noundef nonnull %i.pr) ; 0 uses
  %.pre155.i = load ptr, ptr %6, align 8, !tbaa !35
  %.pre157.i = load i64, ptr %i.kx, align 8, !tbaa !34
  br label %print_signature.exit.i

print_signature.exit.i:                           ; preds = %bb.bp, %.lr.ph141.i
  %i.py = phi i64 [ %i.po, %.lr.ph141.i ], [ %.pre157.i, %bb.bp ] ; 2 uses
  %i.pz = phi ptr [ %i.pp, %.lr.ph141.i ], [ %.pre155.i, %bb.bp ]
  %i.qa = add nuw i64 %.0139.i, 1                 ; 2 uses
  %i.qb = icmp ult i64 %i.qa, %i.py
  br i1 %i.qb, label %.lr.ph141.i, label %.loopexit.i34, !llvm.loop !109

bb.bq:                                            ; preds = %bb.bl
  %i.qc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !39
  %.not4.i130.i = icmp eq i32 %i.qc, 0
  br i1 %.not4.i130.i, label %_.exit132.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef 5) #18
  br label %_.exit132.i

_.exit132.i:                                      ; preds = %bb.br, %bb.bq
  %.0.i131.i = phi ptr [ %i.qd, %bb.br ], [ @.str.109, %bb.bq ]
  %i.qe = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.qf = call ptr @oid_to_hex(ptr noundef nonnull %i.qe) #18
  call void (ptr, ...) @warning(ptr noundef %.0.i131.i, ptr noundef %i.qf) #18
  br label %.loopexit.i34

bb.bs:                                            ; preds = %bb.bl
  %i.qg = call fastcc ptr @_(ptr noundef nonnull @.str.110)
  %i.qh = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.qi = call ptr @oid_to_hex(ptr noundef nonnull %i.qh) #18
  call void (ptr, ...) @die(ptr noundef %i.qg, ptr noundef %i.qi) #19
  unreachable

bb.bt:                                            ; preds = %bb.bl
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.55, i32 noundef 830, ptr noundef nonnull @.str.111, i32 noundef %i.ph) #19
  unreachable

.loopexit.i34:                                    ; preds = %print_signature.exit.i, %_.exit132.i, %bb.bo, %bb.bl
  call void @string_list_clear(ptr noundef nonnull %6, i32 noundef 0) #18
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i34, %bb.bk
  %i.qj = icmp eq ptr %.199.i, null               ; 4 uses
  %i.qk = icmp ne ptr %.0101136.i, null
  %or.cond5.i = and i1 %i.qk, %i.qj
  br i1 %or.cond5.i, label %.thread137.i, label %bb.bv

.thread137.i:                                     ; preds = %bb.bu
  %i.ql = load i64, ptr %i.e, align 8, !tbaa !67
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.qm, ptr noundef nonnull %.0101136.i) ; 0 uses
  br i1 %.not112.i, label %bb.bw, label %.sink.split.i

bb.bv:                                            ; preds = %bb.bu
  %brmerge.not.i = select i1 %i.qj, i1 %.not112.i, i1 false
  %.199.mux.i = select i1 %i.qj, ptr %i.me, ptr %.199.i
  br i1 %brmerge.not.i, label %bb.bw, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bv, %.thread137.i
  %.sink.i = phi ptr [ %.199.mux.i, %bb.bv ], [ %i.me, %.thread137.i ]
  %i.qo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink.i) #20
  %i.qp = trunc i64 %i.qo to i32
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i, %bb.bv, %.thread137.i
  %i.qq = phi i32 [ 0, %.thread137.i ], [ %i.qp, %.sink.split.i ], [ 0, %bb.bv ]
  %i.qr = select i1 %.not112.i, ptr @.str.60, ptr %i.me
  %i.qs = select i1 %i.qj, ptr %i.qr, ptr %.199.i
  %i.qt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %i.qq, ptr noundef nonnull %i.qs) ; 0 uses
  call void @free(ptr noundef %.199.i) #18
  %i.qu = load ptr, ptr @the_repository, align 8, !tbaa !21
  call void @repo_unuse_commit_buffer(ptr noundef %i.qu, ptr noundef nonnull %i.lc, ptr noundef nonnull %i.lf) #18
  %.097142.i = load ptr, ptr %i.mf, align 8, !tbaa !177 ; 2 uses
  %.not126143.i = icmp eq ptr %.097142.i, null
  br i1 %.not126143.i, label %._crit_edge148.i, label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %bb.bw, %bb.ch
  %.097145.i = phi ptr [ %.097.i, %bb.ch ], [ %.097142.i, %bb.bw ] ; 2 uses
  %.195144.i = phi i32 [ %.2.i, %bb.ch ], [ 0, %bb.bw ] ; 3 uses
  %i.qv = load ptr, ptr %.097145.i, align 8, !tbaa !52 ; 2 uses
  %i.qw = call ptr @lookup_decoration(ptr noundef nonnull @idnums, ptr noundef %i.qv) #18
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = trunc i64 %i.qx to i32                  ; 2 uses
  %i.qz = icmp ne i32 %i.qy, 0                    ; 2 uses
  %i.ra = load i32, ptr @reference_excluded_commits, align 4
  %i.rb = icmp ne i32 %i.ra, 0
  %or.cond7.i = select i1 %i.qz, i1 true, i1 %i.rb
  br i1 %or.cond7.i, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %.lr.ph147.i
  %i.rc = icmp eq i32 %.195144.i, 0
  %.str.114..str.115.i = select i1 %i.rc, ptr @.str.114, ptr @.str.115
  %i.rd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.114..str.115.i) ; 0 uses
  br i1 %i.qz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.re = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, i32 noundef %i.qy) ; 0 uses
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bx
  %i.rf = load i32, ptr @anonymize, align 4, !tbaa !39
  %.not128.i = icmp eq i32 %i.rf, 0
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.rh = call ptr @oid_to_hex(ptr noundef nonnull %i.rg) #18 ; 5 uses
  br i1 %.not128.i, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ri = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rh) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.rj = call i32 @memhash(ptr noundef nonnull %i.rh, i64 noundef %i.ri) #18
  store i32 %i.rj, ptr %i.ky, align 8, !tbaa !70
  store ptr null, ptr %5, align 8, !tbaa !71
  store ptr %i.rh, ptr %i.kz, align 8, !tbaa !73
  store i64 %i.ri, ptr %i.la, align 8, !tbaa !74
  %i.rk = call ptr @hashmap_get(ptr noundef nonnull @anonymized_seeds, ptr noundef nonnull %5, ptr noundef nonnull %5) #18 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i58, label %bb.cb, label %anonymize_oid.exit

bb.cb:                                            ; preds = %bb.ca
  %i.rl = call ptr @hashmap_get(ptr noundef nonnull @anonymize_oid.objs, ptr noundef nonnull %5, ptr noundef nonnull %5) #18 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.rl, null
  br i1 %.not12.i.i, label %bb.cc, label %anonymize_oid.exit

bb.cc:                                            ; preds = %bb.cb
  %i.rm = load i32, ptr %i.ky, align 8, !tbaa !75
  %i.rn = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 448
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !93
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.rs = call ptr @xmallocz(i64 noundef 64) #18
  %i.rt = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 448
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !93 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.rv, @hash_algos
  br i1 %.not.i.i.i.i, label %generate_fake_oid.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not.1.i.i.i.i = icmp eq ptr %i.rv, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i.i, label %generate_fake_oid.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not.2.i.i.i.i = icmp eq ptr %i.rv, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i.i = select i1 %.not.2.i.i.i.i, i32 2, i32 0
  br label %generate_fake_oid.exit.i

generate_fake_oid.exit.i:                         ; preds = %bb.ce, %bb.cd, %bb.cc
  %.2.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.ce ], [ 0, %bb.cc ], [ 1, %bb.cd ]
  store i32 %.2.i.i.i.i, ptr %i.lb, align 4, !tbaa !96
  %i.rw = and i64 %i.rr, 4294967295
  %i.rx = getelementptr inbounds nuw i8, ptr %4, i64 %i.rw
  %i.ry = getelementptr inbounds i8, ptr %i.rx, i64 -4
  %i.rz = load i32, ptr @generate_fake_oid.counter, align 4, !tbaa !39 ; 2 uses
  %i.sa = add i32 %i.rz, 1
  store i32 %i.sa, ptr @generate_fake_oid.counter, align 4, !tbaa !39
  %12 = call i32 @llvm.bswap.i32(i32 %i.rz)
  store i32 %12, ptr %i.ry, align 1, !tbaa !46
  %i.sb = call ptr @oid_to_hex_r(ptr noundef %i.rs, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.sc = call fastcc ptr @add_anonymized_entry(ptr noundef nonnull @anonymize_oid.objs, i32 noundef %i.rm, ptr noundef nonnull %i.rh, i64 noundef %i.ri, ptr noundef %i.sb)
  br label %anonymize_oid.exit

anonymize_oid.exit:                               ; preds = %bb.ca, %bb.cb, %generate_fake_oid.exit.i
  %.1.i.i = phi ptr [ %i.rl, %bb.cb ], [ %i.sc, %generate_fake_oid.exit.i ], [ %i.rk, %bb.ca ]
  %i.sd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.cf

bb.cf:                                            ; preds = %anonymize_oid.exit, %bb.bz
  %i.sf = phi ptr [ %i.se, %anonymize_oid.exit ], [ %i.rh, %bb.bz ]
  %puts129.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.sf) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.by
  %i.sg = add nsw i32 %.195144.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph147.i
  %.2.i = phi i32 [ %i.sg, %bb.cg ], [ %.195144.i, %.lr.ph147.i ]
  %i.sh = getelementptr inbounds nuw i8, ptr %.097145.i, i64 8
  %.097.i = load ptr, ptr %i.sh, align 8, !tbaa !177 ; 2 uses
  %.not126.i = icmp eq ptr %.097.i, null
  br i1 %.not126.i, label %._crit_edge148.i, label %.lr.ph147.i, !llvm.loop !110

._crit_edge148.i:                                 ; preds = %bb.ch, %bb.bw
  %i.si = load i32, ptr @full_tree, align 4, !tbaa !39
  %.not127.i = icmp eq i32 %i.si, 0
  br i1 %.not127.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge148.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge148.i
  %i.sj = call i32 @log_tree_diff_flush(ptr noundef nonnull %8) #18 ; 0 uses
  call void @string_list_clear(ptr noundef nonnull %10, i32 noundef 0) #18
  store i32 %i.ld, ptr %i.kv, align 8, !tbaa !176
  %i.sk = load ptr, ptr @stdout, align 8, !tbaa !97
  %i.sl = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.sk), !inline_history !0 ; 0 uses
  %i.sm = load i32, ptr @progress, align 4, !tbaa !39 ; 2 uses
  %.not.i133.i = icmp eq i32 %i.sm, 0
  br i1 %.not.i133.i, label %handle_commit.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sn = load i32, ptr @show_progress.counter, align 4, !tbaa !39
  %i.so = add nsw i32 %i.sn, 1                    ; 3 uses
  store i32 %i.so, ptr @show_progress.counter, align 4, !tbaa !39
  %i.sp = srem i32 %i.so, %i.sm
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.cl, label %handle_commit.exit

bb.cl:                                            ; preds = %bb.ck
  %i.sr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %i.so) ; 0 uses
  br label %handle_commit.exit

handle_commit.exit:                               ; preds = %bb.cj, %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ss = call ptr @get_revision(ptr noundef nonnull %8) #18 ; 2 uses
  %.not27 = icmp eq ptr %i.ss, null
  br i1 %.not27, label %._crit_edge75, label %bb.am, !llvm.loop !111

._crit_edge75:                                    ; preds = %handle_commit.exit, %bb.al
  store i32 0, ptr %i.ks, align 8, !tbaa !175
  call fastcc void @handle_tags_and_duplicates(ptr noundef nonnull @extra_refs)
  call fastcc void @handle_tags_and_duplicates(ptr noundef nonnull @tag_refs)
  %i.st = load i32, ptr getelementptr inbounds nuw (i8, ptr @refspecs, i64 12), align 4, !tbaa !170 ; 2 uses
  %i.su = icmp sgt i32 %i.st, 0
  br i1 %i.su, label %.lr.ph.preheader.i43, label %handle_deletes.exit

.lr.ph.preheader.i43:                             ; preds = %._crit_edge75
  %.pre6.i = load ptr, ptr @refspecs, align 8, !tbaa !178
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.cn, %.lr.ph.preheader.i43
  %i.sv = phi i32 [ %i.st, %.lr.ph.preheader.i43 ], [ %i.tj, %bb.cn ]
  %i.sw = phi ptr [ %.pre6.i, %.lr.ph.preheader.i43 ], [ %i.tk, %bb.cn ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47, %bb.cn ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [32 x i8], ptr %i.sw, i64 %indvars.iv.i45 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !180
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !46
  %.not.i46 = icmp eq i8 %i.ta, 0
  br i1 %.not.i46, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i44
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !181
  %i.td = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 448
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !93
  %i.tg = call ptr @null_oid(ptr noundef %i.tf) #18
  %i.th = call ptr @oid_to_hex(ptr noundef %i.tg) #18
  %i.ti = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.129, ptr noundef %i.tc, ptr noundef %i.th) ; 0 uses
  %.pre.i48 = load ptr, ptr @refspecs, align 8, !tbaa !178
  %.pre7.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @refspecs, i64 12), align 4, !tbaa !170
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i44
  %i.tj = phi i32 [ %i.sv, %.lr.ph.i44 ], [ %.pre7.i, %bb.cm ] ; 2 uses
  %i.tk = phi ptr [ %i.sw, %.lr.ph.i44 ], [ %.pre.i48, %bb.cm ]
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %i.tl = sext i32 %i.tj to i64
  %i.tm = icmp slt i64 %indvars.iv.next.i47, %i.tl
  br i1 %i.tm, label %.lr.ph.i44, label %handle_deletes.exit, !llvm.loop !112

handle_deletes.exit:                              ; preds = %bb.cn, %._crit_edge75
  %i.tn = load ptr, ptr %i.g, align 8, !tbaa !15  ; 4 uses
  %.not28 = icmp eq ptr %i.tn, null
  %i.to = load i32, ptr @last_idnum, align 4
  %.not29 = icmp eq i32 %i.hx, %i.to
  %or.cond32 = select i1 %.not28, i1 true, i1 %.not29
  br i1 %or.cond32, label %export_marks.exit, label %bb.co

bb.co:                                            ; preds = %handle_deletes.exit
  %i.tp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @idnums, i64 16), align 8, !tbaa !182
  %i.tq = call ptr @fopen_for_writing(ptr noundef nonnull %i.tn) #18 ; 4 uses
  %.not.i49 = icmp eq ptr %i.tq, null
  br i1 %.not.i49, label %bb.cp, label %.preheader.i

.preheader.i:                                     ; preds = %bb.co
  %i.tr = load i32, ptr getelementptr inbounds nuw (i8, ptr @idnums, i64 8), align 8, !tbaa !183 ; 2 uses
  %.not27.i50 = icmp eq i32 %i.tr, 0
  br i1 %.not27.i50, label %._crit_edge.i52, label %.lr.ph.i51

bb.cp:                                            ; preds = %bb.co
  %i.ts = call fastcc ptr @_(ptr noundef nonnull @.str.148)
  call void (ptr, ...) @die_errno(ptr noundef %i.ts, ptr noundef nonnull %i.tn) #19
  unreachable

.lr.ph.i51:                                       ; preds = %.preheader.i, %bb.cs
  %i.tt = phi i32 [ %i.ug, %bb.cs ], [ %i.tr, %.preheader.i ] ; 2 uses
  %.01724.i = phi ptr [ %i.uh, %bb.cs ], [ %i.tp, %.preheader.i ] ; 3 uses
  %.01823.i = phi i32 [ %i.ui, %bb.cs ], [ 0, %.preheader.i ]
  %i.tu = load ptr, ptr %.01724.i, align 8, !tbaa !185 ; 3 uses
  %.not21.i = icmp eq ptr %i.tu, null
  br i1 %.not21.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i51
  %i.tv = load i64, ptr %i.tu, align 4
  %i.tw = and i64 %i.tv, 14
  %i.tx = icmp eq i64 %i.tw, 2
  br i1 %i.tx, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ty = getelementptr inbounds nuw i8, ptr %.01724.i, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !186
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = trunc i64 %i.ua to i32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ud = call ptr @oid_to_hex(ptr noundef nonnull %i.uc) #18
  %i.ue = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.tq, ptr noundef nonnull @.str.149, i32 noundef %i.ub, ptr noundef %i.ud) #18
  %i.uf = icmp slt i32 %i.ue, 0
  br i1 %i.uf, label %._crit_edge.i52, label %._crit_edge28.i

._crit_edge28.i:                                  ; preds = %bb.cr
  %.pre.i57 = load i32, ptr getelementptr inbounds nuw (i8, ptr @idnums, i64 8), align 8, !tbaa !183
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge28.i, %bb.cq, %.lr.ph.i51
  %i.ug = phi i32 [ %.pre.i57, %._crit_edge28.i ], [ %i.tt, %bb.cq ], [ %i.tt, %.lr.ph.i51 ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.01724.i, i64 16
  %i.ui = add nuw i32 %.01823.i, 1                ; 2 uses
  %i.uj = icmp ult i32 %i.ui, %i.ug
  br i1 %i.uj, label %.lr.ph.i51, label %._crit_edge.i52, !llvm.loop !113

._crit_edge.i52:                                  ; preds = %bb.cs, %bb.cr, %.preheader.i
  %.0.i = phi i32 [ 0, %.preheader.i ], [ 0, %bb.cs ], [ 1, %bb.cr ]
  %i.uk = call i32 @ferror(ptr noundef nonnull %i.tq) #18
  %i.ul = or i32 %i.uk, %.0.i
  %i.um = call i32 @fclose(ptr noundef nonnull %i.tq)
  %i.un = or i32 %i.ul, %i.um
  %.not22.i53 = icmp eq i32 %i.un, 0
  br i1 %.not22.i53, label %export_marks.exit, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.i52
  %i.uo = load i32, ptr @git_gettext_enabled, align 4, !tbaa !39
  %.not4.i.i54 = icmp eq i32 %i.uo, 0
  br i1 %.not4.i.i54, label %_.exit.i55, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.up = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.150, i32 noundef 5) #18
  br label %_.exit.i55

_.exit.i55:                                       ; preds = %bb.cu, %bb.ct
  %.0.i.i56 = phi ptr [ %i.up, %bb.cu ], [ @.str.150, %bb.ct ]
  %i.uq = call i32 (ptr, ...) @error(ptr noundef %.0.i.i56, ptr noundef nonnull %i.tn) #18 ; 0 uses
  br label %export_marks.exit

export_marks.exit:                                ; preds = %_.exit.i55, %._crit_edge.i52, %handle_deletes.exit
  %i.ur = load i32, ptr @use_done_feature, align 4, !tbaa !39
  %.not30 = icmp eq i32 %i.ur, 0
end_hunk_0
begin_hunk_1_@depth_first
define internal i32 @depth_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.f = load ptr, ptr %.in, align 8, !tbaa !101  ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pn31 = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %.in30 = getelementptr inbounds nuw i8, ptr %.pn31, i64 40
  %i.j = load ptr, ptr %.in30, align 8, !tbaa !101 ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #20
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #20
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.n)
  %i.p = sext i32 %i.o to i64
  %i.q = tail call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, i64 noundef %i.p) #20 ; 2 uses
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = sub nsw i32 %i.n, %i.l                   ; 2 uses
  %.not33 = icmp eq i32 %i.r, 0
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.t = load i8, ptr %i.s, align 2, !tbaa !100
  %i.u = icmp eq i8 %i.t, 82
  %i.v = zext i1 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.x = load i8, ptr %i.w, align 2, !tbaa !100
  %i.y = icmp eq i8 %i.x, 82
  %.neg = sext i1 %i.y to i32
  %i.z = add nsw i32 %.neg, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %.0 = phi i32 [ %i.z, %bb.g ], [ %i.q, %bb.e ], [ %i.r, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_path(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @anonymize, align 4, !tbaa !39
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @quote_c_style(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0) #18
  %i.c = and i64 %i.b, 4294967295
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !97
  %i.e = tail call i64 @quote_c_style(ptr noundef %0, ptr noundef null, ptr noundef %i.d, i32 noundef 0) #18 ; 0 uses
  br label %print_path_1.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 32) #20
  %.not5.i = icmp eq ptr %i.f, null
  br i1 %.not5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, ptr noundef nonnull %0) ; 0 uses
  br label %print_path_1.exit

bb.f:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, ptr noundef nonnull %0) ; 0 uses
  br label %print_path_1.exit

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @anonymize_path(ptr noundef nonnull @print_path.anon, ptr noundef %0, ptr noundef nonnull @print_path.paths, ptr noundef nonnull @anonymize_path_component)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @print_path.anon, i64 16), align 8, !tbaa !103 ; 5 uses
  %i.j = tail call i64 @quote_c_style(ptr noundef %i.i, ptr noundef null, ptr noundef null, i32 noundef 0) #18
  %i.k = and i64 %i.j, 4294967295
  %.not.i2 = icmp eq i64 %i.k, 0
  br i1 %.not.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !97
  %i.m = tail call i64 @quote_c_style(ptr noundef %i.i, ptr noundef null, ptr noundef %i.l, i32 noundef 0) #18 ; 0 uses
  br label %print_path_1.exit4

bb.i:                                             ; preds = %bb.g
  %i.n = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 32) #20
  %.not5.i3 = icmp eq ptr %i.n, null
  br i1 %.not5.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, ptr noundef nonnull %i.i) ; 0 uses
  br label %print_path_1.exit4

bb.k:                                             ; preds = %bb.i
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, ptr noundef nonnull %i.i) ; 0 uses
  br label %print_path_1.exit4

print_path_1.exit4:                               ; preds = %bb.h, %bb.j, %bb.k
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @print_path.anon, i64 8), align 8, !tbaa !102
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @print_path.anon, i64 16), align 8, !tbaa !103 ; 2 uses
  %.not9.i = icmp eq ptr %i.q, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %print_path_1.exit4
  store i8 0, ptr %i.q, align 1, !tbaa !46
  br label %print_path_1.exit

bb.m:                                             ; preds = %print_path_1.exit4
  %i.r = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !46
  %.not10.i = icmp eq i8 %i.r, 0
  br i1 %.not10.i, label %print_path_1.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

print_path_1.exit:                                ; preds = %bb.m, %bb.l, %bb.f, %bb.e, %bb.c
  ret void
}

declare ptr @string_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @string_list_has_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @anonymize_oid(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.object_id, align 4          ; 6 uses
  %2 = alloca %struct.anonymized_entry_key, align 8 ; 10 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = tail call i32 @memhash(ptr noundef nonnull %0, i64 noundef %i.a) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.a, ptr %i.e, align 8, !tbaa !74
  %i.f = call ptr @hashmap_get(ptr noundef nonnull @anonymized_seeds, ptr noundef nonnull %2, ptr noundef nonnull %2) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %anonymize_str.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @hashmap_get(ptr noundef nonnull @anonymize_oid.objs, ptr noundef nonnull %2, ptr noundef nonnull %2) #18 ; 2 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %bb.c, label %anonymize_str.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8, !tbaa !75
  %i.i = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.n = call ptr @xmallocz(i64 noundef 64) #18
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93   ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq ptr %i.q, @hash_algos
  br i1 %.not.i.i.i, label %generate_fake_oid.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.1.i.i.i = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %generate_fake_oid.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.2.i.i.i = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %generate_fake_oid.exit

generate_fake_oid.exit:                           ; preds = %bb.c, %bb.d, %bb.e
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.2.i.i.i, ptr %i.r, align 4, !tbaa !96
  %i.s = and i64 %i.m, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr @generate_fake_oid.counter, align 4, !tbaa !39 ; 2 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @generate_fake_oid.counter, align 4, !tbaa !39
  %3 = call i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %3, ptr %i.u, align 1, !tbaa !46
  %i.x = call ptr @oid_to_hex_r(ptr noundef %i.n, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.y = call fastcc ptr @add_anonymized_entry(ptr noundef nonnull @anonymize_oid.objs, i32 noundef %i.h, ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef %i.x)
  br label %anonymize_str.exit

anonymize_str.exit:                               ; preds = %bb.a, %bb.b, %generate_fake_oid.exit
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.y, %generate_fake_oid.exit ], [ %i.f, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.aa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc void @anonymize_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.anonymized_entry_key, align 8 ; 10 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !46
  %.not16 = icmp eq i8 %i.a, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.017 = phi ptr [ %1, %.lr.ph ], [ %i.u, %bb.f ] ; 5 uses
  %i.g = call ptr @strchrnul(ptr noundef nonnull %.017, i32 noundef 47) #20 ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.017 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.k = call i32 @memhash(ptr noundef nonnull %.017, i64 noundef %i.j) #18
  store i32 %i.k, ptr %i.b, align 8, !tbaa !70
  store ptr null, ptr %4, align 8, !tbaa !71
  store ptr %.017, ptr %i.c, align 8, !tbaa !73
  store i64 %i.j, ptr %i.d, align 8, !tbaa !74
  %i.l = call ptr @hashmap_get(ptr noundef nonnull @anonymized_seeds, ptr noundef nonnull %4, ptr noundef nonnull %4) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %anonymize_str.exit

bb.c:                                             ; preds = %bb.b
  %i.m = call ptr @hashmap_get(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %4) #18 ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  br i1 %.not12.i, label %bb.d, label %anonymize_str.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.b, align 8, !tbaa !75
  %i.o = call ptr %3() #18, !inline_history !192
  %i.p = call fastcc ptr @add_anonymized_entry(ptr noundef %2, i32 noundef %i.n, ptr noundef nonnull %.017, i64 noundef %i.j, ptr noundef %i.o)
  br label %anonymize_str.exit

anonymize_str.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %.1.i = phi ptr [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.l, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #20
  call void @strbuf_add(ptr noundef %0, ptr noundef nonnull %i.r, i64 noundef %i.s) #18
  %i.t = load i8, ptr %i.g, align 1, !tbaa !46    ; 2 uses
  %.not14 = icmp eq i8 %i.t, 0
  br i1 %.not14, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %anonymize_str.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.v = load i64, ptr %0, align 8, !tbaa !104    ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.e
  %i.w = load i64, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %.neg.i = add i64 %i.w, 1                       ; 2 uses
  %.not.i15 = icmp eq i64 %i.v, %.neg.i
  br i1 %.not.i15, label %strbuf_avail.exit.thread.i, label %bb.f

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.e
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #18
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %bb.f

bb.f:                                             ; preds = %strbuf_avail.exit.thread.i, %strbuf_avail.exit.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.x = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.w, %strbuf_avail.exit.i ]
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !103
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %i.t, ptr %i.z, align 1, !tbaa !46
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !46
  %.pre = load i8, ptr %i.u, align 1, !tbaa !46
  %i.ad = icmp eq i8 %.pre, 0
  br i1 %i.ad, label %._crit_edge, label %bb.b, !llvm.loop !193

._crit_edge:                                      ; preds = %anonymize_str.exit, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @anonymize_path_component() #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.anonymize_tag.out, i64 24, i1 false)
  %i.a = load i32, ptr @anonymize_path_component.counter, align 4, !tbaa !39 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @anonymize_path_component.counter, align 4, !tbaa !39
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.88, i32 noundef %i.a) #18
  %i.c = call ptr @strbuf_detach(ptr noundef nonnull %0, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret ptr %i.c
}

declare i64 @quote_c_style(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #14

declare ptr @hashmap_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @xmallocz(i64 noundef) local_unnamed_addr #3

declare ptr @oid_to_hex_r(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_decoration(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @parse_commit_or_die(ptr noundef) local_unnamed_addr #3

declare ptr @repo_get_commit_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @find_commit_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @append_signatures_for_header(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 13 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.anonymize_tag.out, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = call ptr @find_commit_header(ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %find_commit_multiline_header.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

find_commit_multiline_header.exit.thread:         ; preds = %bb.d, %bb.a
  %.010.lcssa = phi ptr [ %1, %bb.a ], [ %.0.lcssa.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 3 uses
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.f, i64 noundef %i.g) #18
  %i.i = load i8, ptr %i.h, align 1, !tbaa !46
  %i.j = icmp eq i8 %i.i, 10
  br i1 %i.j, label %.lr.ph.i, label %find_commit_multiline_header.exit

.lr.ph.i:                                         ; preds = %bb.b, %strbuf_addch.exit.i
  %.017.i = phi ptr [ %i.o, %strbuf_addch.exit.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = icmp eq i8 %i.l, 32
  br i1 %i.m, label %bb.c, label %find_commit_multiline_header.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.017.i, i64 2 ; 3 uses
  %i.o = call ptr @strchrnul(ptr noundef nonnull %i.n, i32 noundef 10) #20 ; 4 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i
end_hunk_1
begin_hunk_2_@anonymize_ident_line:bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @anonymize_ident_line.buffers, i64 %i.b ; 8 uses
  %i.d = and i32 %i.a, 1
  %i.e = xor i32 %i.d, 1
  store i32 %i.e, ptr @anonymize_ident_line.which_buffer, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store i64 0, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %.not9.i = icmp eq ptr %i.h, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.h, align 1, !tbaa !46
  br label %strbuf_setlen.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !46
  %.not10.i = icmp eq i8 %i.i, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.b, %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 32) #20 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %strbuf_setlen.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.l
  %i.p = trunc i64 %i.o to i32
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.55, i32 noundef 592, ptr noundef nonnull @.str.124, i32 noundef %i.p, ptr noundef nonnull %i.j) #19
  unreachable

bb.f:                                             ; preds = %strbuf_setlen.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = sub i64 %i.r, %i.l
  tail call void @strbuf_add(ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, i64 noundef %i.s) #18
  %i.t = load ptr, ptr %1, align 8, !tbaa !15
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.r
  %i.w = call i32 @split_ident_line(ptr noundef nonnull %4, ptr noundef nonnull %i.q, i64 noundef %i.v) #18
  %i.x = icmp eq i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ne ptr %i.z, null
  %or.cond = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !196
  %i.ad = load ptr, ptr %4, align 8, !tbaa !197   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ah = call i32 @memhash(ptr noundef %i.ad, i64 noundef %i.ag) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !70
  store ptr null, ptr %3, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ag, ptr %i.ak, align 8, !tbaa !74
  %i.al = call ptr @hashmap_get(ptr noundef nonnull @anonymized_seeds, ptr noundef nonnull %3, ptr noundef nonnull %3) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.h, label %anonymize_str.exit

bb.h:                                             ; preds = %bb.g
  %i.am = call ptr @hashmap_get(ptr noundef nonnull @anonymize_ident_line.idents, ptr noundef nonnull %3, ptr noundef nonnull %3) #18 ; 2 uses
  %.not12.i = icmp eq ptr %i.am, null
  br i1 %.not12.i, label %bb.i, label %anonymize_str.exit

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.anonymize_tag.out, i64 24, i1 false)
  %i.ao = load i32, ptr @anonymize_ident.counter, align 4, !tbaa !39 ; 2 uses
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.126, i32 noundef %i.ao, i32 noundef %i.ao) #18
  %i.ap = load i32, ptr @anonymize_ident.counter, align 4, !tbaa !39
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr @anonymize_ident.counter, align 4, !tbaa !39
  %i.ar = call ptr @strbuf_detach(ptr noundef nonnull %2, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.as = call fastcc ptr @add_anonymized_entry(ptr noundef nonnull @anonymize_ident_line.idents, i32 noundef %i.an, ptr noundef %i.ad, i64 noundef %i.ag, ptr noundef %i.ar)
  br label %anonymize_str.exit

anonymize_str.exit:                               ; preds = %bb.g, %bb.h, %bb.i
  %.1.i = phi ptr [ %i.am, %bb.h ], [ %i.as, %bb.i ], [ %i.al, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #20
  call void @strbuf_add(ptr noundef nonnull %i.c, ptr noundef nonnull %i.au, i64 noundef %i.av) #18
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %anonymize_str.exit
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %.neg.i = add i64 %i.ax, 1                      ; 2 uses
  %.not.i26 = icmp eq i64 %i.aw, %.neg.i
  br i1 %.not.i26, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %anonymize_str.exit
  call void @strbuf_grow(ptr noundef nonnull %i.c, i64 noundef 1) #18
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.ay = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.ax, %strbuf_avail.exit.i ]
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !103
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 32, ptr %i.ba, align 1, !tbaa !46
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !46
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !198 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !199
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @strbuf_add(ptr noundef nonnull %i.c, ptr noundef %i.be, i64 noundef %i.bj) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @strbuf_add(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.125, i64 noundef 47) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %strbuf_addch.exit
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !103 ; 2 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !15
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store ptr %i.bm, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare ptr @xstrfmt(ptr noundef, ...) local_unnamed_addr #3

declare void @repo_unuse_commit_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @log_tree_diff_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @anonymize_ref_component() #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.anonymize_tag.out, i64 24, i1 false)
  %i.a = load i32, ptr @anonymize_ref_component.counter, align 4, !tbaa !39 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @anonymize_ref_component.counter, align 4, !tbaa !39
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.123, i32 noundef %i.a) #18
  %i.c = call ptr @strbuf_detach(ptr noundef nonnull %0, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret ptr %i.c
}

declare i32 @split_ident_line(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @reencode_string_len(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_signature_format(ptr noundef) local_unnamed_addr #3

declare ptr @null_oid(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @memmem(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare i64 @parse_signed_buffer(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fopen_for_writing(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"option", !10, i64 0, !10, i64 4, !14, i64 8, !13, i64 16, !16, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !13, i64 56, !16, i64 64, !13, i64 72, !16, i64 80, !13, i64 88}
!18 = !{!17, !14, i64 8}
!19 = !{!17, !13, i64 16}
!20 = !{!"p1 _ZTS10repository", !13, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS11commit_list", !13, i64 0}
!23 = !{!"strbuf", !16, i64 0, !16, i64 8, !14, i64 16}
!24 = !{!"p1 _ZTS16string_list_item", !13, i64 0}
!25 = !{!"string_list", !24, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !13, i64 32}
!26 = !{!"any p2 pointer", !13, i64 0}
!27 = !{!"ident_split", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!28 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!29 = !{!"p1 _ZTS6strmap", !13, i64 0}
!30 = !{!"p1 _ZTS9object_id", !13, i64 0}
!31 = !{!"p2 _ZTS13hashmap_entry", !26, i64 0}
!32 = !{!"hashmap", !31, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40}
!33 = !{!32, !13, i64 8}
!34 = !{!25, !16, i64 8}
!35 = !{!25, !24, i64 0}
!36 = !{!"string_list_item", !14, i64 0, !13, i64 8}
!37 = !{!36, !14, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!10, !10, i64 0}
!40 = !{!"p1 _ZTS6object", !13, i64 0}
!41 = !{!36, !13, i64 8}
!42 = !{!"object_id", !9, i64 0, !10, i64 32}
!43 = !{!"object", !10, i64 0, !10, i64 0, !10, i64 4, !42, i64 8}
!44 = !{!"tag", !43, i64 0, !40, i64 48, !14, i64 56, !16, i64 64}
!45 = !{!44, !40, i64 48}
!46 = !{!9, !9, i64 0}
!47 = !{!"p1 _ZTS4tree", !13, i64 0}
!48 = !{!"commit", !43, i64 0, !16, i64 48, !22, i64 56, !47, i64 64, !10, i64 72}
!49 = !{!48, !22, i64 56}
!50 = !{!"p1 _ZTS6commit", !13, i64 0}
!51 = !{!"commit_list", !50, i64 0, !22, i64 8}
!52 = !{!51, !50, i64 0}
!53 = !{!"p2 _ZTS13diff_filepair", !26, i64 0}
!54 = !{!"diff_queue_struct", !53, i64 0, !10, i64 8, !10, i64 12}
!55 = !{!54, !10, i64 12}
!56 = !{!54, !53, i64 0}
!57 = !{!"p1 _ZTS13diff_filepair", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"p1 _ZTS13diff_filespec", !13, i64 0}
!60 = !{!"p1 _ZTS9range_set", !13, i64 0}
!61 = !{!"short", !9, i64 0}
!62 = !{!"diff_filepair", !59, i64 0, !59, i64 8, !60, i64 16, !61, i64 24, !9, i64 26, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27}
!63 = !{!62, !59, i64 8}
!64 = !{!"p1 _ZTS15userdiff_driver", !13, i64 0}
!65 = !{!"diff_filespec", !42, i64 0, !14, i64 40, !13, i64 48, !13, i64 56, !16, i64 64, !10, i64 72, !10, i64 76, !61, i64 80, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !64, i64 88}
!66 = !{!65, !61, i64 80}
!67 = !{!16, !16, i64 0}
!68 = !{!"p1 _ZTS13hashmap_entry", !13, i64 0}
!69 = !{!"hashmap_entry", !68, i64 0, !10, i64 8}
!70 = !{!69, !10, i64 8}
!71 = !{!69, !68, i64 0}
!72 = !{!"anonymized_entry_key", !69, i64 0, !14, i64 16, !16, i64 24}
!73 = !{!72, !14, i64 16}
!74 = !{!72, !16, i64 24}
!75 = !{!72, !10, i64 8}
!76 = !{!"p1 _ZTS15object_database", !13, i64 0}
!77 = !{!"p1 _ZTS18parsed_object_pool", !13, i64 0}
!78 = !{!"p1 _ZTS9ref_store", !13, i64 0}
!79 = !{!"_Bool", !9, i64 0}
!80 = !{!"p1 _ZTS8mem_pool", !13, i64 0}
!81 = !{!"strmap", !32, i64 0, !80, i64 48, !10, i64 56}
!82 = !{!"repo_path_cache", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!83 = !{!"p1 _ZTS18fsmonitor_settings", !13, i64 0}
!84 = !{!"repo_settings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !83, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !10, i64 128, !14, i64 136}
!85 = !{!"p1 _ZTS10config_set", !13, i64 0}
!86 = !{!"p1 _ZTS15submodule_cache", !13, i64 0}
!87 = !{!"p1 _ZTS11index_state", !13, i64 0}
!88 = !{!"p1 _ZTS12remote_state", !13, i64 0}
!89 = !{!"p1 _ZTS13git_hash_algo", !13, i64 0}
!90 = !{!"repo_config_values", !14, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!91 = !{!"p1 _ZTS22promisor_remote_config", !13, i64 0}
!92 = !{!"repository", !14, i64 0, !14, i64 8, !76, i64 16, !77, i64 24, !78, i64 32, !79, i64 40, !81, i64 48, !81, i64 112, !82, i64 176, !14, i64 232, !14, i64 240, !14, i64 248, !79, i64 256, !79, i64 257, !14, i64 264, !84, i64 272, !85, i64 416, !86, i64 424, !87, i64 432, !88, i64 440, !89, i64 448, !89, i64 456, !90, i64 464, !10, i64 512, !14, i64 520, !10, i64 528, !10, i64 532, !29, i64 536, !10, i64 544, !81, i64 552, !25, i64 616, !14, i64 656, !91, i64 664, !10, i64 672, !10, i64 676, !10, i64 680, !10, i64 684, !10, i64 688, !79, i64 689, !79, i64 690}
!93 = !{!92, !89, i64 448}
!94 = !{!"git_hash_algo", !14, i64 0, !10, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !89, i64 104}
!95 = !{!94, !16, i64 16}
!96 = !{!42, !10, i64 32}
!97 = !{!28, !28, i64 0}
!98 = !{!92, !76, i64 16}
!99 = !{!62, !59, i64 0}
!100 = !{!62, !9, i64 26}
!101 = !{!65, !14, i64 40}
!102 = !{!23, !16, i64 8}
!103 = !{!23, !14, i64 16}
!104 = !{!23, !16, i64 0}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !38}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38}
!114 = !{!17, !10, i64 0}
!115 = !{!17, !10, i64 4}
!116 = !{!17, !16, i64 24}
!117 = !{!17, !14, i64 32}
!118 = !{!17, !14, i64 40}
!119 = !{!17, !10, i64 48}
!120 = !{!17, !13, i64 56}
!121 = !{!17, !16, i64 64}
!122 = !{!"p1 _ZTS16prio_queue_entry", !13, i64 0}
!123 = !{!"prio_queue", !13, i64 0, !16, i64 8, !13, i64 16, !16, i64 24, !16, i64 32, !122, i64 40}
!124 = !{!"p1 _ZTS18object_array_entry", !13, i64 0}
!125 = !{!"object_array", !10, i64 0, !10, i64 4, !124, i64 8}
!126 = !{!"p1 _ZTS17rev_cmdline_entry", !13, i64 0}
!127 = !{!"rev_cmdline_info", !10, i64 0, !10, i64 4, !126, i64 8}
!128 = !{!"p1 _ZTS27list_objects_filter_options", !13, i64 0}
!129 = !{!"list_objects_filter_options", !23, i64 0, !10, i64 24, !10, i64 28, !10, i64 28, !14, i64 32, !16, i64 40, !16, i64 48, !10, i64 56, !16, i64 64, !16, i64 72, !128, i64 80}
!130 = !{!"p2 omnipotent char", !26, i64 0}
!131 = !{!"strvec", !130, i64 0, !16, i64 8, !16, i64 16}
!132 = !{!"ref_exclusions", !25, i64 0, !131, i64 40, !9, i64 64}
!133 = !{!"p1 _ZTS13pathspec_item", !13, i64 0}
!134 = !{!"pathspec", !10, i64 0, !10, i64 4, !10, i64 4, !10, i64 4, !10, i64 8, !10, i64 12, !133, i64 16}
!135 = !{!"date_mode", !10, i64 0, !10, i64 4, !14, i64 8}
!136 = !{!"p1 _ZTS8log_info", !13, i64 0}
!137 = !{!"p1 _ZTS11string_list", !13, i64 0}
!138 = !{!"p1 _ZTS8grep_pat", !13, i64 0}
!139 = !{!"p2 _ZTS8grep_pat", !26, i64 0}
!140 = !{!"p1 _ZTS9grep_expr", !13, i64 0}
!141 = !{!"grep_opt", !138, i64 0, !139, i64 8, !138, i64 16, !139, i64 24, !140, i64 32, !20, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !9, i64 152, !10, i64 828, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !13, i64 856, !13, i64 864, !13, i64 872}
!142 = !{!"p1 _ZTS9git_graph", !13, i64 0}
!143 = !{!"p2 _ZTS17re_pattern_buffer", !26, i64 0}
!144 = !{!"diff_flags", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140}
!145 = !{!"p1 _ZTS6oidset", !13, i64 0}
!146 = !{!"p1 _ZTS20emitted_diff_symbols", !13, i64 0}
!147 = !{!"diff_options", !14, i64 0, !14, i64 8, !10, i64 16, !10, i64 20, !14, i64 24, !10, i64 32, !143, i64 40, !16, i64 48, !16, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !144, i64 96, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !14, i64 328, !10, i64 336, !14, i64 344, !10, i64 352, !10, i64 356, !130, i64 360, !16, i64 368, !16, i64 376, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !14, i64 400, !10, i64 408, !10, i64 412, !145, i64 416, !10, i64 424, !10, i64 428, !10, i64 432, !13, i64 440, !28, i64 448, !10, i64 456, !9, i64 460, !134, i64 464, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !10, i64 552, !146, i64 560, !10, i64 568, !10, i64 572, !20, i64 576, !29, i64 584, !10, i64 592, !10, i64 596, !10, i64 600}
!148 = !{!"p1 _ZTS16reflog_walk_info", !13, i64 0}
!149 = !{!"p1 _ZTS16decoration_entry", !13, i64 0}
!150 = !{!"decoration", !14, i64 0, !10, i64 8, !10, i64 12, !149, i64 16}
!151 = !{!"display_notes_opt", !10, i64 0, !25, i64 8}
!152 = !{!"p1 _ZTS13saved_parents", !13, i64 0}
!153 = !{!"p1 _ZTS16revision_sources", !13, i64 0}
!154 = !{!"p1 _ZTS14topo_walk_info", !13, i64 0}
!155 = !{!"p2 _ZTS12bloom_keyvec", !26, i64 0}
!156 = !{!"p1 _ZTS21bloom_filter_settings", !13, i64 0}
!157 = !{!"p1 _ZTS10tmp_objdir", !13, i64 0}
!158 = !{!"p1 int", !13, i64 0}
!159 = !{!"kh_oid_set", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !158, i64 16, !30, i64 24, !158, i64 32}
!160 = !{!"oidset", !159, i64 0}
!161 = !{!"rev_info", !22, i64 0, !123, i64 8, !125, i64 56, !20, i64 72, !125, i64 80, !127, i64 96, !129, i64 112, !132, i64 200, !14, i64 272, !14, i64 280, !14, i64 288, !134, i64 296, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 339, !10, i64 339, !10, i64 339, !10, i64 339, !10, i64 339, !10, i64 340, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 346, !10, i64 346, !10, i64 346, !10, i64 346, !10, i64 346, !135, i64 352, !10, i64 368, !10, i64 372, !10, i64 376, !10, i64 380, !136, i64 384, !10, i64 392, !10, i64 396, !14, i64 400, !14, i64 408, !10, i64 416, !14, i64 424, !14, i64 432, !27, i64 440, !137, i64 504, !10, i64 512, !14, i64 520, !14, i64 528, !10, i64 536, !10, i64 540, !10, i64 544, !137, i64 552, !141, i64 560, !142, i64 1440, !10, i64 1448, !10, i64 1452, !10, i64 1456, !10, i64 1460, !10, i64 1460, !16, i64 1464, !16, i64 1472, !16, i64 1480, !10, i64 1488, !10, i64 1492, !13, i64 1496, !13, i64 1504, !13, i64 1512, !147, i64 1520, !147, i64 2128, !148, i64 2736, !150, i64 2744, !150, i64 2768, !150, i64 2792, !151, i64 2816, !30, i64 2864, !30, i64 2872, !14, i64 2880, !14, i64 2888, !14, i64 2896, !131, i64 2904, !10, i64 2928, !14, i64 2936, !10, i64 2944, !10, i64 2948, !10, i64 2952, !150, i64 2960, !152, i64 2984, !22, i64 2992, !22, i64 3000, !14, i64 3008, !153, i64 3016, !154, i64 3024, !155, i64 3032, !10, i64 3040, !156, i64 3048, !10, i64 3056, !157, i64 3064, !160, i64 3072}
!162 = !{!161, !153, i64 3016}
!163 = !{!127, !10, i64 0}
!164 = !{!127, !126, i64 8}
!165 = !{!"rev_cmdline_entry", !40, i64 0, !14, i64 8, !10, i64 16, !10, i64 20}
!166 = !{!165, !10, i64 20}
!167 = !{!165, !14, i64 8}
!168 = !{!"p1 _ZTS12refspec_item", !13, i64 0}
!169 = !{!"refspec", !168, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!170 = !{!169, !10, i64 12}
!171 = !{!165, !40, i64 0}
!172 = !{!161, !13, i64 2040}
!173 = !{!161, !13, i64 2048}
end_hunk_2
