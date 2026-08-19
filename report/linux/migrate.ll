inline.NumInlined: 798
inline.NumDeleted: 281
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@__se_sys_move_pages:bb.a
  %i.fd = getelementptr [4 x i8], ptr %i.f, i64 %i.bh
  %i.fe = call i64 @llvm.read_register.i64(metadata !0)
  %i.ff = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.fd, i32 range(i32 -2147483648, 64) %i.fc, i64 4, i64 %i.fe) #9, !srcloc !104 ; 2 uses
  %i.fg = extractvalue { ptr, i64 } %i.ff, 0
  %i.fh = extractvalue { ptr, i64 } %i.ff, 1
  %i.fi = ptrtoint ptr %i.fg to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.fh)
  %sext.mask.i.i.i.i = and i64 %i.fi, 4294967295
  %.not.i118.i.i.i = icmp eq i64 %sext.mask.i.i.i.i, 0
  br i1 %.not.i118.i.i.i, label %bb.ax, label %store_status.exit.thread160.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fj = load volatile ptr, ptr %12, align 8
  %.not.i120.i.i.i = icmp eq ptr %i.fj, %12
  br i1 %.not.i120.i.i.i, label %store_status.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 %.1.i22.i.i, ptr %8, align 8
  store i32 0, ptr %i.bb, align 4
  store ptr null, ptr %i.bc, align 8
  store i32 3149002, ptr %i.bd, align 8
  store i32 3, ptr %i.be, align 4
  %i.fk = call i32 @migrate_pages(ptr noundef nonnull %12, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i64 noundef %i.bf, i32 noundef 2, i32 noundef 3, ptr noundef null) #11 ; 3 uses
  %.not.i.i121.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i121.i.i.i, label %bb.az, label %move_pages_and_store_status.exit129.i.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.fl = sub i32 %.083199.i.i.i, %.180.i.i.i
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i124.i.i.i, label %store_status.exit.i.i.i

bb.ba:                                            ; preds = %.lr.ph.i.i124.i.i.i
  %i.fn = add i32 %.01214.i.i126.i.i.i, 1         ; 2 uses
  %exitcond256.not.i.i.i = icmp eq i32 %i.fn, %.083199.i.i.i
  br i1 %exitcond256.not.i.i.i, label %store_status.exit.i.i.i, label %.lr.ph.i.i124.i.i.i, !llvm.loop !103

.lr.ph.i.i124.i.i.i:                              ; preds = %bb.az, %bb.ba
  %.01214.i.i126.i.i.i = phi i32 [ %i.fn, %bb.ba ], [ %.180.i.i.i, %bb.az ] ; 2 uses
  %i.fo = sext i32 %.01214.i.i126.i.i.i to i64
  %i.fp = getelementptr [4 x i8], ptr %i.f, i64 %i.fo
  %i.fq = call i64 @llvm.read_register.i64(metadata !0)
  %i.fr = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.fp, i32 range(i32 -1, 64) %.1.i22.i.i, i64 4, i64 %i.fq) #9, !srcloc !104 ; 2 uses
  %i.fs = extractvalue { ptr, i64 } %i.fr, 0
  %i.ft = extractvalue { ptr, i64 } %i.fr, 1
  %i.fu = ptrtoint ptr %i.fs to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.ft)
  %sext.mask.i.i127.i.i.i = and i64 %i.fu, 4294967295
  %.not.i17.i128.i.i.i = icmp eq i64 %sext.mask.i.i127.i.i.i, 0
  br i1 %.not.i17.i128.i.i.i, label %bb.ba, label %do_pages_move.exit.i.i

move_pages_and_store_status.exit129.i.i.i:        ; preds = %bb.ay
  call void @putback_movable_pages(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.fv = icmp sgt i32 %i.fk, 0
  %i.fw = sub i32 %i.av, %.083199.i.i.i
  %i.fx = select i1 %i.fv, i32 %i.fw, i32 0
  %.0.i122.i.i.i = add i32 %i.fx, %i.fk
  %.0.i122.fr.i.i.i = freeze i32 %.0.i122.i.i.i   ; 3 uses
  %.not110.i.i.i = icmp eq i32 %.0.i122.fr.i.i.i, 0
  br i1 %.not110.i.i.i, label %store_status.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %move_pages_and_store_status.exit129.i.i.i
  %i.fy = icmp sgt i32 %.0.i122.fr.i.i.i, 0
  %i.fz = sext i1 %i.fy to i32
  %spec.select.i23.i.i = add nsw i32 %.0.i122.fr.i.i.i, %i.fz
  br label %do_pages_move.exit.i.i

store_status.exit.i.i.i:                          ; preds = %bb.ba, %move_pages_and_store_status.exit129.i.i.i, %bb.az, %bb.ax, %add_folio_for_migration.exit.i.i.i
  %.286.i.i.i = phi i32 [ 1, %add_folio_for_migration.exit.i.i.i ], [ 0, %move_pages_and_store_status.exit129.i.i.i ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.ba ]
  %.2.i.i.i = phi i32 [ %.1.i22.i.i, %add_folio_for_migration.exit.i.i.i ], [ -1, %move_pages_and_store_status.exit129.i.i.i ], [ -1, %bb.ax ], [ -1, %bb.az ], [ -1, %bb.ba ] ; 2 uses
  %i.ga = add i32 %.083199.i.i.i, 1               ; 3 uses
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = icmp ugt i64 %1, %i.gb
  br i1 %i.gc, label %bb.r, label %store_status.exit.thread160.i.i.i, !llvm.loop !108

store_status.exit.thread160.i.i.i:                ; preds = %store_status.exit.i.i.i, %.lr.ph.i.i.i.i, %arch_test_bit.exit.i.i.i, %.split272.i.i.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  %.083194.i.i.i = phi i32 [ 0, %bb.q ], [ %.083199.i.i.i, %.lr.ph.i.i.i.i ], [ %.083199.i.i.i, %bb.s ], [ %.083199.i.i.i, %arch_test_bit.exit.i.i.i ], [ %.083199.i.i.i, %bb.v ], [ %.083199.i.i.i, %.split272.i.i.i ], [ %i.ga, %store_status.exit.i.i.i ], [ %.083199.i.i.i, %bb.u ], [ %.083199.i.i.i, %bb.t ] ; 3 uses
  %.387.i.i.i = phi i32 [ 0, %bb.q ], [ -14, %.lr.ph.i.i.i.i ], [ -14, %bb.s ], [ -13, %arch_test_bit.exit.i.i.i ], [ -19, %bb.v ], [ -19, %.split272.i.i.i ], [ %.286.i.i.i, %store_status.exit.i.i.i ], [ -14, %bb.u ], [ -14, %bb.t ] ; 2 uses
  %.382.i.i.i = phi i32 [ 0, %bb.q ], [ %.180.i.i.i, %.lr.ph.i.i.i.i ], [ %.079200.i.i.i, %bb.s ], [ %.079200.i.i.i, %arch_test_bit.exit.i.i.i ], [ %.079200.i.i.i, %bb.v ], [ %.079200.i.i.i, %.split272.i.i.i ], [ %.180.i.i.i, %store_status.exit.i.i.i ], [ %.079200.i.i.i, %bb.u ], [ %.079200.i.i.i, %bb.t ] ; 2 uses
  %.3.i.i.i = phi i32 [ -1, %bb.q ], [ %.1.i22.i.i, %.lr.ph.i.i.i.i ], [ %.078201.i.i.i, %bb.s ], [ %.078201.i.i.i, %arch_test_bit.exit.i.i.i ], [ %.078201.i.i.i, %bb.v ], [ %.078201.i.i.i, %.split272.i.i.i ], [ %.2.i.i.i, %store_status.exit.i.i.i ], [ %.078201.i.i.i, %bb.u ], [ %.078201.i.i.i, %bb.t ] ; 2 uses
  %i.gd = load volatile ptr, ptr %12, align 8
  %.not.i130.i.i.i = icmp eq ptr %i.gd, %12
  br i1 %.not.i130.i.i.i, label %move_pages_and_store_status.exit139.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %store_status.exit.thread160.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store i32 %.3.i.i.i, ptr %7, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ge, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 3149002, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 3, ptr %i.gh, align 4
  %i.gi = ptrtoint ptr %7 to i64
  %i.gj = call i32 @migrate_pages(ptr noundef nonnull %12, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i64 noundef %i.gi, i32 noundef 2, i32 noundef 3, ptr noundef null) #11 ; 3 uses
  %.not.i.i131.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i131.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @putback_movable_pages(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.gk = icmp sgt i32 %i.gj, 0
  %i.gl = trunc i64 %1 to i32
  %i.gm = sub i32 %i.gl, %.083194.i.i.i
  %i.gn = select i1 %i.gk, i32 %i.gm, i32 0
  %.0.i132.i.i.i = add i32 %i.gn, %i.gj
  br label %move_pages_and_store_status.exit139.i.i.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.go = sub i32 %.083194.i.i.i, %.382.i.i.i
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i134.i.i.i, label %move_pages_and_store_status.exit139.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i134.i.i.i
  %i.gq = add i32 %.01214.i.i136.i.i.i, 1         ; 2 uses
  %exitcond257.not.i.i.i = icmp eq i32 %i.gq, %.083194.i.i.i
  br i1 %exitcond257.not.i.i.i, label %move_pages_and_store_status.exit139.i.i.i, label %.lr.ph.i.i134.i.i.i, !llvm.loop !103

.lr.ph.i.i134.i.i.i:                              ; preds = %bb.be, %bb.bf
  %.01214.i.i136.i.i.i = phi i32 [ %i.gq, %bb.bf ], [ %.382.i.i.i, %bb.be ] ; 2 uses
  %i.gr = sext i32 %.01214.i.i136.i.i.i to i64
  %i.gs = getelementptr [4 x i8], ptr %i.f, i64 %i.gr
  %i.gt = call i64 @llvm.read_register.i64(metadata !0)
  %i.gu = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.gs, i32 range(i32 -1, 64) %.3.i.i.i, i64 4, i64 %i.gt) #9, !srcloc !104 ; 2 uses
  %i.gv = extractvalue { ptr, i64 } %i.gu, 0
  %i.gw = extractvalue { ptr, i64 } %i.gu, 1
  %i.gx = ptrtoint ptr %i.gv to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.gw)
  %sext.mask.i.i137.i.i.i = and i64 %i.gx, 4294967295
  %.not.i17.i138.i.i.i = icmp eq i64 %sext.mask.i.i137.i.i.i, 0
  br i1 %.not.i17.i138.i.i.i, label %bb.bf, label %move_pages_and_store_status.exit139.i.i.i

move_pages_and_store_status.exit139.i.i.i:        ; preds = %.lr.ph.i.i134.i.i.i, %bb.bf, %bb.be, %bb.bd, %store_status.exit.thread160.i.i.i
  %.014.i133.i.i.i = phi i32 [ 0, %store_status.exit.thread160.i.i.i ], [ %.0.i132.i.i.i, %bb.bd ], [ 0, %bb.be ], [ -14, %.lr.ph.i.i134.i.i.i ], [ 0, %bb.bf ]
  %i.gy = icmp slt i32 %.387.i.i.i, 0
  %spec.select111.i.i.i = select i1 %i.gy, i32 %.387.i.i.i, i32 %.014.i133.i.i.i
  br label %do_pages_move.exit.i.i

do_pages_move.exit.i.i:                           ; preds = %move_pages_and_store_status.exit.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i124.i.i.i, %move_pages_and_store_status.exit139.i.i.i, %bb.bb
  %.4.i.i.i = phi i32 [ %spec.select111.i.i.i, %move_pages_and_store_status.exit139.i.i.i ], [ -14, %.lr.ph.i.i124.i.i.i ], [ -14, %.lr.ph.i.i.i.i.i ], [ %spec.select.i23.i.i, %bb.bb ], [ %.0.i.i.i.i, %move_pages_and_store_status.exit.i.i.i ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @lru_disable_count, ptr nonnull elementtype(i32) @lru_disable_count) #9, !srcloc !109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.bw

bb.bg:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not58.i.i.i = icmp eq i64 %1, 0
  br i1 %.not58.i.i.i, label %do_pages_stat.exit.i.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !44
  %i.gz = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !83
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %i.hc = getelementptr i8, ptr %.0.i.i.i, i64 464 ; 2 uses
  %i.hd = getelementptr i8, ptr %.0.i.i.i, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %get_compat_pages_array.exit.i.i.i, %.lr.ph.i25.i.i
  %.02360.i.i.i = phi i64 [ %1, %.lr.ph.i25.i.i ], [ %i.it, %get_compat_pages_array.exit.i.i.i ] ; 2 uses
  %.02459.i.i.i = phi i64 [ 0, %.lr.ph.i25.i.i ], [ %i.is, %get_compat_pages_array.exit.i.i.i ] ; 4 uses
  %i.hg = call i64 @llvm.umin.i64(i64 %.02360.i.i.i, i64 16) ; 6 uses
  %i.hh = load i32, ptr %i.hb, align 8
  %i.hi = and i32 %i.hh, 2
  %.not.i.i.not.i26.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i.not.i26.i.i, label %copy_from_user.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hj = getelementptr [4 x i8], ptr %i.d, i64 %.02459.i.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.hk = call i64 @llvm.read_register.i64(metadata !0)
  %i.hl = getelementptr [4 x i8], ptr %i.hj, i64 %indvars.iv.i.i
  %i.hm = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.hl, i64 4, i64 %i.hk) #9, !srcloc !110 ; 3 uses
  %i.hn = extractvalue { ptr, i32, i64 } %i.hm, 0
  %i.ho = extractvalue { ptr, i32, i64 } %i.hm, 2
  %i.hp = ptrtoint ptr %i.hn to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.ho)
  %sext.mask.i.i27.i.i = and i64 %i.hp, 4294967295
  %.not.i.i28.i.i = icmp eq i64 %sext.mask.i.i27.i.i, 0
  br i1 %.not.i.i28.i.i, label %bb.bk, label %do_pages_stat.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.hq = extractvalue { ptr, i32, i64 } %i.hm, 1
  %i.hr = zext i32 %i.hq to i64
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store ptr %i.hs, ptr %i.ht, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.hg
  br i1 %exitcond.not.i, label %get_compat_pages_array.exit.thread.i.i.i, label %bb.bj, !llvm.loop !111

copy_from_user.exit.i.i.i:                        ; preds = %bb.bh
  %i.hu = shl nuw nsw i64 %i.hg, 3
  %i.hv = getelementptr [8 x i8], ptr %i.d, i64 %.02459.i.i.i
  %i.hw = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %i.hv, i64 noundef %i.hu) #10
  %.not26.i.i.i = icmp eq i64 %i.hw, 0
  br i1 %.not26.i.i.i, label %get_compat_pages_array.exit.thread.i.i.i, label %do_pages_stat.exit.i.i

get_compat_pages_array.exit.thread.i.i.i:         ; preds = %bb.bk, %copy_from_user.exit.i.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #9
          to label %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i [label %bb.bl], !srcloc !37

bb.bl:                                            ; preds = %get_compat_pages_array.exit.thread.i.i.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i

__mmap_lock_trace_start_locking.exit.i.i.i29.i.i: ; preds = %bb.bl, %get_compat_pages_array.exit.thread.i.i.i
  call void @down_read(ptr noundef %i.hc) #10
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #9
          to label %mmap_read_lock.exit.i.i30.i.i.preheader [label %bb.bm], !srcloc !37

bb.bm:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %.0.i.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit.i.i30.i.i.preheader

mmap_read_lock.exit.i.i30.i.i.preheader:          ; preds = %bb.bm, %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i
  br label %mmap_read_lock.exit.i.i30.i.i

mmap_read_lock.exit.i.i30.i.i:                    ; preds = %mmap_read_lock.exit.i.i30.i.i.preheader, %bb.bt
  %.02029.i.i.i.i = phi i64 [ %i.io, %bb.bt ], [ 0, %mmap_read_lock.exit.i.i30.i.i.preheader ]
  %.02128.i.i.i.i = phi ptr [ %i.in, %bb.bt ], [ %i.b, %mmap_read_lock.exit.i.i30.i.i.preheader ] ; 2 uses
  %.02227.i.i.i.i = phi ptr [ %i.im, %bb.bt ], [ %i.a, %mmap_read_lock.exit.i.i30.i.i.preheader ] ; 2 uses
  %i.hx = load ptr, ptr %.02227.i.i.i.i, align 8
  %i.hy = ptrtoint ptr %i.hx to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !annotation !44
  %i.hz = call ptr @mtree_load(ptr noundef %i.hd, i64 noundef %i.hy) #10 ; 3 uses
  %.not.i37.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i37.i.i.i, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %mmap_read_lock.exit.i.i30.i.i
  %i.ia = call ptr @folio_walk_start(ptr noundef nonnull %6, ptr noundef nonnull %i.hz, i64 noundef %i.hy, i32 noundef 1) #10 ; 3 uses
  %.not25.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not25.i.i.i.i, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ib = load i64, ptr @vmemmap_base, align 8
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ic, %i.ib
  %i.ie = ashr exact i64 %i.id, 6
  %i.if = load i64, ptr @zero_page_pfn, align 8
  %i.ig = icmp eq i64 %i.ie, %i.if
  br i1 %i.ig, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i.i.i = load i64, ptr %i.ia, align 16
  %i.ih = lshr i64 %.val.i.i.i.i, 58
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0.i38.i.i.i = phi i32 [ %i.ii, %bb.bp ], [ -14, %bb.bo ]
  %i.ij = load ptr, ptr %i.he, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ij) #10
  %i.ik = load i32, ptr %i.hf, align 8
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  call void @__rcu_read_unlock() #10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @vma_pgtable_walk_end(ptr noundef nonnull %i.hz) #10
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bn, %mmap_read_lock.exit.i.i30.i.i
  %.1.i.i.i.i = phi i32 [ %.0.i38.i.i.i, %bb.bs ], [ -14, %mmap_read_lock.exit.i.i30.i.i ], [ -2, %bb.bn ]
  store i32 %.1.i.i.i.i, ptr %.02128.i.i.i.i, align 4
  %i.im = getelementptr i8, ptr %.02227.i.i.i.i, i64 8
  %i.in = getelementptr i8, ptr %.02128.i.i.i.i, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.io = add nuw i64 %.02029.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.io, %i.hg
  br i1 %exitcond.not.i.i.i.i, label %bb.bu, label %mmap_read_lock.exit.i.i30.i.i, !llvm.loop !112

bb.bu:                                            ; preds = %bb.bt
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #9
          to label %do_pages_stat_array.exit.i.i.i [label %bb.bv], !srcloc !37

bb.bv:                                            ; preds = %bb.bu
  call void @__mmap_lock_do_trace_released(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %do_pages_stat_array.exit.i.i.i

do_pages_stat_array.exit.i.i.i:                   ; preds = %bb.bv, %bb.bu
  call void @up_read(ptr noundef %i.hc) #10
  %i.ip = getelementptr [4 x i8], ptr %i.f, i64 %.02459.i.i.i
  %i.iq = shl nuw nsw i64 %i.hg, 2
  %i.ir = call i64 @_copy_to_user(ptr noundef %i.ip, ptr noundef nonnull %i.b, i64 noundef %i.iq) #10
  %.not28.i.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not28.i.i.i, label %get_compat_pages_array.exit.i.i.i, label %do_pages_stat.exit.i.i

get_compat_pages_array.exit.i.i.i:                ; preds = %do_pages_stat_array.exit.i.i.i
  %i.is = add i64 %i.hg, %.02459.i.i.i
  %i.it = sub i64 %.02360.i.i.i, %i.hg            ; 2 uses
  %.not.i31.i.i = icmp eq i64 %i.it, 0
  br i1 %.not.i31.i.i, label %do_pages_stat.exit.i.i, label %bb.bh

do_pages_stat.exit.i.i:                           ; preds = %get_compat_pages_array.exit.i.i.i, %do_pages_stat_array.exit.i.i.i, %copy_from_user.exit.i.i.i, %bb.bj, %bb.bg
  %i.iu = phi i32 [ 0, %bb.bg ], [ -14, %bb.bj ], [ -14, %do_pages_stat_array.exit.i.i.i ], [ -14, %copy_from_user.exit.i.i.i ], [ 0, %get_compat_pages_array.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bw

bb.bw:                                            ; preds = %do_pages_stat.exit.i.i, %do_pages_move.exit.i.i
  %.0.i.i = phi i32 [ %.4.i.i.i, %do_pages_move.exit.i.i ], [ %i.iu, %do_pages_stat.exit.i.i ]
  call void @mmput(ptr noundef %.0.i.i.i) #10
  br label %__do_sys_move_pages.exit

__do_sys_move_pages.exit:                         ; preds = %bb.a, %bb.c, %find_mm_struct.exit.thread.i.i, %bb.bw
  %.018.i.i = phi i32 [ -22, %bb.a ], [ %i.al, %find_mm_struct.exit.thread.i.i ], [ %.0.i.i, %bb.bw ], [ -1, %bb.c ]
  %i.iv = sext i32 %.018.i.i to i64
  ret i64 %i.iv
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_move_pages(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call fastcc i64 @__se_sys_move_pages(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r) #11, !srcloc !113
  ret i64 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @pte_mkwrite(i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hugetlb_add_anon_rmap(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_add_anon_rmap_ptes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_add_file_rmap_ptes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mlock_drain_local() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @memcmp_pages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_remove_migration_pte(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"
end_hunk_0
