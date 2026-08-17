inline.NumInlined: 505
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@rtm_new_nexthop:bb.a
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.cr, label %.split40.us.i.i

.split40.us.i.i:                                  ; preds = %valid_group_nh.exit.us35.i.i, %valid_group_nh.exit.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg) #16
  %.not.i37.i.i = icmp eq ptr %2, null
  br i1 %.not.i37.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cr:                                            ; preds = %valid_group_nh.exit.i.i
  %i.hg = icmp eq i8 %.0218.i.i, 0
  %i.hh = getelementptr i8, ptr %i.gt, i64 24
  %i.hi = load i8, ptr %i.hh, align 8             ; 2 uses
  br i1 %i.hg, label %nh_check_attr_fdb_group.exit.thread12.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not16.i.i.i = icmp eq i8 %.0218.i.i, %i.hi
  br i1 %.not16.i.i.i, label %nh_check_attr_fdb_group.exit.thread12.i.i, label %.split42.us.i.i

.split42.us.i.i:                                  ; preds = %bb.cl, %bb.cs
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg.40) #16
  %.not17.i.i.i = icmp eq ptr %2, null
  br i1 %.not17.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

.split25.us.i.i:                                  ; preds = %valid_group_nh.exit.us.us.i.i, %valid_group_nh.exit.us.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group_rtnl.__msg.37) #16
  %.not34.i.i = icmp eq ptr %2, null
  br i1 %.not34.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nh_check_attr_fdb_group.exit.thread12.i.i:        ; preds = %bb.cs, %bb.cr
  %.2315.i.i = phi i8 [ %i.hi, %bb.cr ], [ %.0218.i.i, %bb.cs ]
  %indvars.iv.next73.i.i = add nuw nsw i64 %indvars.iv72.i.i, 1 ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %indvars.iv.next73.i.i, %wide.trip.count84.i.i
  br i1 %exitcond75.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.split.split.i.i, !llvm.loop !130

bb.ct:                                            ; preds = %bb.bv
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.hk, null
  br i1 %.not27.i, label %rtm_to_nh_config_rtnl.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %.val.i33 = load i32, ptr %i.hl, align 4        ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.val.i33, ptr %i.hm, align 4
  %.not28.i = icmp eq i32 %.val.i33, 0
  br i1 %.not28.i, label %._crit_edge.i, label %bb.cv

._crit_edge.i:                                    ; preds = %bb.cu
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.hn = call ptr @__dev_get_by_index(ptr noundef %.val, i32 noundef %.val.i33) #16 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.hn, ptr %i.ho, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.i
  %i.hp = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.hn, %bb.cv ] ; 3 uses
  %.not29.i = icmp eq ptr %i.hp, null
  br i1 %.not29.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg) #16
  %.not30.i = icmp eq ptr %2, null
  br i1 %.not30.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cy:                                            ; preds = %bb.cw
  %i.hq = getelementptr i8, ptr %i.hp, i64 176
  %i.hr = load i32, ptr %i.hq, align 16
  %i.hs = and i32 %i.hr, 1
  %.not31.i = icmp eq i32 %i.hs, 0
  br i1 %.not31.i, label %bb.cz, label %netif_carrier_ok.exit.i

bb.cz:                                            ; preds = %bb.cy
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg.35) #16
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

netif_carrier_ok.exit.i:                          ; preds = %bb.cy
  %i.ht = getelementptr i8, ptr %i.hp, i64 168
  %i.hu = load volatile i64, ptr %i.ht, align 8
  %.in.in.i.i = and i64 %i.hu, 4
  %.in.not.i.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %bb.da

bb.da:                                            ; preds = %netif_carrier_ok.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg.36) #16
  %.not33.i = icmp eq ptr %2, null
  br i1 %.not33.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nh_check_attr_group_rtnl.exit.sink.split.i:       ; preds = %bb.da, %bb.cz, %bb.cx, %.split25.us.i.i, %.split42.us.i.i, %.split40.us.i.i, %.split.us.i.i, %.split23.us.i.i, %.split21.us.i.i, %.loopexit.i.i
  %nh_check_attr_fdb_group.__msg.40.sink.i.sink.i = phi ptr [ @nh_check_attr_group_rtnl.__msg.37, %.split25.us.i.i ], [ @rtm_to_nh_config_rtnl.__msg.35, %bb.cz ], [ @rtm_to_nh_config_rtnl.__msg, %bb.cx ], [ @nh_check_attr_fdb_group.__msg, %.split40.us.i.i ], [ @valid_group_nh.__msg.39, %.split.us.i.i ], [ @valid_group_nh.__msg.38, %.split23.us.i.i ], [ @valid_group_nh.__msg, %.split21.us.i.i ], [ @nh_check_attr_group_rtnl.__msg, %.loopexit.i.i ], [ @nh_check_attr_fdb_group.__msg.40, %.split42.us.i.i ], [ @rtm_to_nh_config_rtnl.__msg.36, %bb.da ]
  %.0.ph.i = phi i32 [ -22, %.split25.us.i.i ], [ -100, %bb.cz ], [ -22, %bb.cx ], [ -22, %.split40.us.i.i ], [ -22, %.split.us.i.i ], [ -22, %.split23.us.i.i ], [ -22, %.split21.us.i.i ], [ -22, %.loopexit.i.i ], [ -22, %.split42.us.i.i ], [ -100, %bb.da ]
  store ptr %nh_check_attr_fdb_group.__msg.40.sink.i.sink.i, ptr %2, align 8
  br label %rtm_to_nh_config_rtnl.exit.thread

rtm_to_nh_config_rtnl.exit:                       ; preds = %nh_check_attr_fdb_group.exit.thread12.us36.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i, %nh_check_attr_fdb_group.exit.thread12.us.us.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i, %netif_carrier_ok.exit.i, %bb.ct, %bb.bw
  %i.hv = load i32, ptr %7, align 8
  %.not.i34 = icmp eq i32 %i.hv, 0
  br i1 %.not.i34, label %bb.db, label %bb.dh

bb.db:                                            ; preds = %rtm_to_nh_config_rtnl.exit
  %i.hw = getelementptr i8, ptr %.val, i64 892    ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 4            ; 2 uses
  %i.hy = add i32 %i.hx, 1                        ; 2 uses
  store i32 %i.hy, ptr %i.hw, align 4
  %i.hz = getelementptr i8, ptr %.val, i64 872
  br label %bb.dc

nexthop_find_by_id.exit.loopexit.i.i:             ; preds = %bb.dd
  %i.ia = add i32 %i.ic, 1                        ; 3 uses
  store i32 %i.ia, ptr %i.hw, align 4
  %i.ib = icmp eq i32 %i.ia, %i.hx
  br i1 %i.ib, label %nh_find_unused_id.exit.thread.i, label %bb.dc

nh_find_unused_id.exit.thread.i:                  ; preds = %nexthop_find_by_id.exit.loopexit.i.i
  store i32 0, ptr %7, align 8
  br label %bb.df

bb.dc:                                            ; preds = %nexthop_find_by_id.exit.loopexit.i.i, %bb.db
  %i.ic = phi i32 [ %i.hy, %bb.db ], [ %i.ia, %nexthop_find_by_id.exit.loopexit.i.i ] ; 5 uses
  %i.id = load volatile ptr, ptr %i.hz, align 8   ; 2 uses
  %.not32.i.i.i44 = icmp eq ptr %i.id, null
  br i1 %.not32.i.i.i44, label %nh_find_unused_id.exit.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.dc, %bb.de
  %i.ie = phi ptr [ %i.ik, %bb.de ], [ %i.id, %bb.dc ] ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 96
  %i.ig = load i32, ptr %i.if, align 8            ; 2 uses
  %i.ih = icmp ult i32 %i.ic, %i.ig
  br i1 %i.ih, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i.i.i45
  %i.ii = icmp ugt i32 %i.ic, %i.ig
  br i1 %i.ii, label %bb.de, label %nexthop_find_by_id.exit.loopexit.i.i

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i.i.i45
  %.sink.i.i.i46 = phi i64 [ 16, %.lr.ph.i.i.i45 ], [ 8, %bb.dd ]
  %i.ij = getelementptr i8, ptr %i.ie, i64 %.sink.i.i.i46
  %i.ik = load volatile ptr, ptr %i.ij, align 8   ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i47, label %nh_find_unused_id.exit.i, label %.lr.ph.i.i.i45

nh_find_unused_id.exit.i:                         ; preds = %bb.dc, %bb.de
  store i32 %i.ic, ptr %7, align 8
  %.not38.i = icmp eq i32 %i.ic, 0
  br i1 %.not38.i, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %nh_find_unused_id.exit.i, %nh_find_unused_id.exit.thread.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_add.__msg) #16
  %.not39.i = icmp eq ptr %2, null
  br i1 %.not39.i, label %nexthop_add.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store ptr @nexthop_add.__msg, ptr %2, align 8
  br label %nexthop_add.exit.thread

bb.dh:                                            ; preds = %nh_find_unused_id.exit.i, %rtm_to_nh_config_rtnl.exit
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.im = load ptr, ptr %i.il, align 8            ; 3 uses
  %.not40.i = icmp eq ptr %i.im, null
  br i1 %.not40.i, label %bb.el, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.in = getelementptr i8, ptr %i.im, i64 4
  %.val.i.i35 = load i16, ptr %i.im, align 2
  %i.io = add i16 %.val.i.i35, -4
  %i.ip = lshr i16 %i.io, 3                       ; 3 uses
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.ir = call noalias align 8 dereferenceable_or_null(136) ptr @__kmalloc_cache_noprof(ptr noundef %i.iq, i32 noundef 3520, i64 noundef 136) #20 ; 17 uses
  %.not.i125.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i125.i.i, label %nexthop_add.exit.thread, label %_kzalloc_noprof.exit.i.i.i

_kzalloc_noprof.exit.i.i.i:                       ; preds = %bb.di
  %i.is = getelementptr i8, ptr %i.ir, i64 24     ; 3 uses
  store volatile ptr %i.is, ptr %i.is, align 8
  %i.it = getelementptr i8, ptr %i.ir, i64 32
  store volatile ptr %i.is, ptr %i.it, align 8
  %i.iu = getelementptr i8, ptr %i.ir, i64 40     ; 3 uses
  store volatile ptr %i.iu, ptr %i.iu, align 8
  %i.iv = getelementptr i8, ptr %i.ir, i64 48
  store volatile ptr %i.iu, ptr %i.iv, align 8
  %i.iw = getelementptr i8, ptr %i.ir, i64 72     ; 3 uses
  store volatile ptr %i.iw, ptr %i.iw, align 8
  %i.ix = getelementptr i8, ptr %i.ir, i64 80
  store volatile ptr %i.iw, ptr %i.ix, align 8
  %i.iy = getelementptr i8, ptr %i.ir, i64 56     ; 3 uses
  store volatile ptr %i.iy, ptr %i.iy, align 8
  %i.iz = getelementptr i8, ptr %i.ir, i64 64
  store volatile ptr %i.iy, ptr %i.iz, align 8
  %i.ja = getelementptr i8, ptr %i.ir, i64 104
  store i32 0, ptr %i.ja, align 8
  %i.jb = getelementptr i8, ptr %i.ir, i64 102
  store i8 1, ptr %i.jb, align 2
  %i.jc = zext nneg i16 %i.ip to i64
  %i.jd = mul nuw nsw i64 %i.jc, 80
  %i.je = add nuw nsw i64 %i.jd, 24               ; 2 uses
  %i.jf = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.je, i32 noundef 3520) #19 ; 27 uses
  %.not.i126.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i126.i.i, label %bb.dj, label %_kzalloc_noprof.exit.i127.i.i

bb.dj:                                            ; preds = %_kzalloc_noprof.exit.i.i.i
  call void @kfree(ptr noundef nonnull %i.ir) #16
  br label %nexthop_add.exit.thread

_kzalloc_noprof.exit.i127.i.i:                    ; preds = %_kzalloc_noprof.exit.i.i.i
  %i.jg = getelementptr i8, ptr %i.jf, i64 8      ; 4 uses
  store i16 %i.ip, ptr %i.jg, align 8
  %i.jh = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.je, i32 noundef 3520) #19 ; 4 uses
  %.not.i129.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i129.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_kzalloc_noprof.exit.i127.i.i
  store ptr null, ptr %i.jf, align 8
  call void @kfree(ptr noundef nonnull %i.jf) #16
  call void @kfree(ptr noundef nonnull %i.ir) #16
  br label %nexthop_add.exit.thread

bb.dl:                                            ; preds = %_kzalloc_noprof.exit.i127.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i16 %i.ip, ptr %i.ji, align 8
  store ptr %i.jh, ptr %i.jf, align 8
  store ptr %i.jf, ptr %i.jh, align 8
  %i.jj = load i16, ptr %i.jg, align 8
  %.not163.i.i = icmp eq i16 %i.jj, 0
  br i1 %.not163.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %bb.dl
  %i.jk = getelementptr i8, ptr %.val, i64 872
  %i.jl = getelementptr i8, ptr %i.jf, i64 14
  %i.jm = getelementptr i8, ptr %i.jf, i64 24
  br label %bb.dm

bb.dm:                                            ; preds = %find_next_bit.exit.thread.i.i, %.lr.ph.i.i36
  %indvars.iv.i.i37 = phi i64 [ 0, %.lr.ph.i.i36 ], [ %indvars.iv.next.i.i41, %find_next_bit.exit.thread.i.i ] ; 6 uses
  %i.jn = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv.i.i37 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = load volatile ptr, ptr %i.jk, align 8   ; 2 uses
  %.not32.i.i42.i = icmp eq ptr %i.jp, null
  br i1 %.not32.i.i42.i, label %nexthop_find_by_id.exit.i.i38, label %.lr.ph.i.i43.i

.lr.ph.i.i43.i:                                   ; preds = %bb.dm, %bb.do
  %i.jq = phi ptr [ %i.jw, %bb.do ], [ %i.jp, %bb.dm ] ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 96
  %i.js = load i32, ptr %i.jr, align 8            ; 2 uses
  %i.jt = icmp ult i32 %i.jo, %i.js
  br i1 %i.jt, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i43.i
  %i.ju = icmp ugt i32 %i.jo, %i.js
  br i1 %i.ju, label %bb.do, label %nexthop_find_by_id.exit.i.i38

bb.do:                                            ; preds = %bb.dn, %.lr.ph.i.i43.i
  %.sink.i.i46.i = phi i64 [ 16, %.lr.ph.i.i43.i ], [ 8, %bb.dn ]
  %i.jv = getelementptr i8, ptr %i.jq, i64 %.sink.i.i46.i
  %i.jw = load volatile ptr, ptr %i.jv, align 8   ; 2 uses
  %.not.i136.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i136.i.i, label %nexthop_find_by_id.exit.i.i38, label %.lr.ph.i.i43.i

nexthop_find_by_id.exit.i.i38:                    ; preds = %bb.do, %bb.dn, %bb.dm
  %.lcssa.i.i.i = phi ptr [ null, %bb.dm ], [ null, %bb.do ], [ %i.jq, %bb.dn ] ; 5 uses
  %i.jx = getelementptr i8, ptr %.lcssa.i.i.i, i64 108 ; 7 uses
  %i.jy = load volatile i32, ptr %i.jx, align 4   ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.jy, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %nexthop_find_by_id.exit.i.i38, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ke, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.jy, %nexthop_find_by_id.exit.i.i38 ] ; 3 uses
  %i.jz = add i32 %.0.i.i.i.i.i.i, 1
  %i.ka = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jx, i32 %i.jz, ptr elementtype(i32) %i.jx, i32 %.0.i.i.i.i.i.i) #15, !srcloc !131 ; 2 uses
  %i.kb = extractvalue { i8, i32 } %i.ka, 0       ; 2 uses
  %i.kc = icmp ult i8 %i.kb, 2
  call void @llvm.assume(i1 %i.kc)
  %i.kd = trunc nuw i8 %i.kb to i1
  br i1 %i.kd, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !13

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.ke = extractvalue { i8, i32 } %i.ka, 1       ; 2 uses
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !132

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %nexthop_find_by_id.exit.i.i38
  %.2.i.i.i.i.i.i = phi i32 [ 0, %nexthop_find_by_id.exit.i.i38 ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.kg = add i32 %.2.i.i.i.i.i.i, 1
  %i.kh = or i32 %i.kg, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.kh, -1
  br i1 %.not.i.i.i.i.i.i, label %nexthop_get.exit.i.i, label %bb.dp, !prof !13

bb.dp:                                            ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.jx, i32 noundef 0) #16
  br label %nexthop_get.exit.i.i

nexthop_get.exit.i.i:                             ; preds = %bb.dp, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not.i.i39 = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not.i.i39, label %nexthop_put.exit.thread.loopexit.i.i, label %bb.dq

bb.dq:                                            ; preds = %nexthop_get.exit.i.i
  %i.ki = getelementptr i8, ptr %.lcssa.i.i.i, i64 128
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = getelementptr i8, ptr %i.kj, i64 24
  %i.kl = load i8, ptr %i.kk, align 8
  %i.km = icmp eq i8 %i.kl, 2
  br i1 %i.km, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i8 1, ptr %i.jl, align 2
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.kn = call noalias dereferenceable_or_null(8) ptr @pcpu_alloc_noprof(i64 noundef 8, i64 noundef 8, i1 noundef zeroext false, i32 noundef 3264) #19 ; 2 uses
  %.not121.i.i = icmp eq ptr %i.kn, null
  br i1 %.not121.i.i, label %.critedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ds
  %i.ko = load i64, ptr @__cpu_possible_mask, align 8
  br label %bb.dt

bb.dt:                                            ; preds = %find_next_bit.exit.i.i, %.preheader.i.i
  %i.kp = phi i64 [ 0, %.preheader.i.i ], [ %i.kw, %find_next_bit.exit.i.i ]
  %i.kq = shl nsw i64 -1, %i.kp
  %i.kr = and i64 %i.kq, %i.ko                    ; 2 uses
  %.not.i.i44.i = icmp eq i64 %i.kr, 0
  br i1 %.not.i.i44.i, label %find_next_bit.exit.thread.i.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.dt
  %i.ks = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.kr) #23, !srcloc !109 ; 2 uses
  %i.kt = and i64 %i.ks, 4294967232
  %i.ku = icmp ne i64 %i.kt, 0
  %i.kv = add nuw nsw i64 %i.ks, 1
  %i.kw = and i64 %i.kv, 4294967295               ; 2 uses
  %i.kx = icmp samesign ugt i64 %i.kw, 63
  %or.cond.i.i40 = select i1 %i.ku, i1 true, i1 %i.kx, !prof !133
  br i1 %or.cond.i.i40, label %find_next_bit.exit.thread.i.i, label %bb.dt, !prof !133, !llvm.loop !134

find_next_bit.exit.thread.i.i:                    ; preds = %find_next_bit.exit.i.i, %bb.dt
  %i.ky = getelementptr [80 x i8], ptr %i.jm, i64 %indvars.iv.i.i37 ; 6 uses
  %i.kz = getelementptr i8, ptr %i.ky, i64 8
  store ptr %i.kn, ptr %i.kz, align 8
  store ptr %.lcssa.i.i.i, ptr %i.ky, align 8
  %i.la = getelementptr i8, ptr %i.jn, i64 4
  %.val123.i.i = load i8, ptr %i.la, align 4
  %i.lb = getelementptr i8, ptr %i.jn, i64 5
  %.val124.i.i = load i8, ptr %i.lb, align 1
  %i.lc = zext i8 %.val124.i.i to i16
  %i.ld = shl nuw i16 %i.lc, 8
  %i.le = zext i8 %.val123.i.i to i16
  %i.lf = add nuw nsw i16 %i.le, 1
  %i.lg = add i16 %i.lf, %i.ld
  %i.lh = getelementptr i8, ptr %i.ky, i64 16
  store i16 %i.lg, ptr %i.lh, align 8
  %i.li = getelementptr i8, ptr %i.ky, i64 48     ; 3 uses
  %i.lj = getelementptr i8, ptr %.lcssa.i.i.i, i64 72 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8            ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 8
  store ptr %i.li, ptr %i.ll, align 8
  store ptr %i.lk, ptr %i.li, align 8
  %i.lm = getelementptr i8, ptr %i.ky, i64 56
  store ptr %i.lj, ptr %i.lm, align 8
  store volatile ptr %i.li, ptr %i.lj, align 8
  %i.ln = getelementptr i8, ptr %i.ky, i64 64
  store ptr %i.ir, ptr %i.ln, align 8
  %indvars.iv.next.i.i41 = add nuw nsw i64 %indvars.iv.i.i37, 1 ; 3 uses
  %i.lo = load i16, ptr %i.jg, align 8
  %i.lp = zext i16 %i.lo to i64
  %i.lq = icmp samesign ult i64 %indvars.iv.next.i.i41, %i.lp
  br i1 %i.lq, label %bb.dm, label %._crit_edge.loopexit.i.i, !llvm.loop !135

.critedge.i.i:                                    ; preds = %bb.ds
  %i.lr = trunc nuw nsw i64 %indvars.iv.i.i37 to i32 ; 3 uses
  %i.ls = getelementptr [80 x i8], ptr %i.jf, i64 %indvars.iv.i.i37
  %i.lt = getelementptr i8, ptr %i.ls, i64 32
  store ptr null, ptr %i.lt, align 8
  %i.lu = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jx, i32 -1, ptr elementtype(i32) %i.jx) #15, !inline_history !62, !srcloc !19 ; 2 uses
  %i.lv = icmp eq i32 %i.lu, 1
  br i1 %i.lv, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %.critedge.i.i
  %i.lw = icmp slt i32 %i.lu, 1
  br i1 %i.lw, label %bb.dv, label %nexthop_put.exit.thread.i.i, !prof !20

bb.dv:                                            ; preds = %bb.du
  call void @refcount_warn_saturate(ptr noundef %i.jx, i32 noundef 3) #16, !inline_history !62
  br label %nexthop_put.exit.thread.i.i

bb.dw:                                            ; preds = %.critedge.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !inline_history !62, !srcloc !21
  %i.lx = getelementptr i8, ptr %.lcssa.i.i.i, i64 112
  call void @call_rcu(ptr noundef %i.lx, ptr noundef nonnull @nexthop_free_rcu) #16, !inline_history !63
  br label %nexthop_put.exit.thread.i.i

._crit_edge.loopexit.i.i:                         ; preds = %find_next_bit.exit.thread.i.i
  %i.ly = trunc nuw nsw i64 %indvars.iv.next.i.i41 to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.dl
  %.0104.lcssa.i.i = phi i32 [ 0, %bb.dl ], [ %i.ly, %._crit_edge.loopexit.i.i ]
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ma = load i16, ptr %i.lz, align 8
  switch i16 %i.ma, label %bb.dy [
    i16 0, label %.sink.split.i.i
    i16 1, label %bb.dx
  ]

bb.dx:                                            ; preds = %._crit_edge.i.i
  %i.mb = load i32, ptr %7, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 50
  %i.md = load i16, ptr %i.mc, align 2            ; 2 uses
  %i.me = zext i16 %i.md to i64
  %i.mf = shl nuw nsw i64 %i.me, 5
  %i.mg = add nuw nsw i64 %i.mf, 144
  %i.mh = call noalias ptr @__vmalloc_noprof(i64 noundef %i.mg, i32 noundef 11712) #19 ; 15 uses
  %.not.i137.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i137.i.i, label %nexthop_put.exit.thread.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dx
  store ptr %.val, ptr %i.mh, align 8
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  store i32 %i.mb, ptr %i.mi, align 8
  %i.mj = getelementptr i8, ptr %i.mh, i64 16
  store i64 4503599625273344, ptr %i.mj, align 8
  %i.mk = getelementptr i8, ptr %i.mh, i64 24     ; 3 uses
  store volatile ptr %i.mk, ptr %i.mk, align 8
  %i.ml = getelementptr i8, ptr %i.mh, i64 32
  store volatile ptr %i.mk, ptr %i.ml, align 8
  %i.mm = getelementptr i8, ptr %i.mh, i64 40
  store ptr @nh_res_table_upkeep_dw, ptr %i.mm, align 8
  %i.mn = getelementptr i8, ptr %i.mh, i64 48
  call void @timer_init_key(ptr noundef %i.mn, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %i.mo = getelementptr i8, ptr %i.mh, i64 104    ; 3 uses
  store volatile ptr %i.mo, ptr %i.mo, align 8
  %i.mp = getelementptr i8, ptr %i.mh, i64 112
  store volatile ptr %i.mo, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = getelementptr i8, ptr %i.mh, i64 128
  store i32 %i.ms, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = getelementptr i8, ptr %i.mh, i64 132
  store i32 %i.mw, ptr %i.mx, align 4
  %i.my = getelementptr i8, ptr %i.mh, i64 136
  store i16 %i.md, ptr %i.my, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !136
  %i.mz = load ptr, ptr %i.jf, align 8
  %i.na = getelementptr i8, ptr %i.mz, i64 16
  store volatile ptr %i.mh, ptr %i.na, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !137
  %i.nb = getelementptr i8, ptr %i.jf, i64 16
  store volatile ptr %i.mh, ptr %i.nb, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.thread.i.i, %._crit_edge.i.i
  %.sink203.i.i = phi i64 [ 12, %.thread.i.i ], [ 11, %._crit_edge.i.i ]
  %8 = getelementptr i8, ptr %i.jf, i64 %.sink203.i.i
  store i8 1, ptr %8, align 1
  %i.nc = getelementptr i8, ptr %i.jf, i64 10
  store i8 1, ptr %i.nc, align 2
  br label %bb.dy

bb.dy:                                            ; preds = %.sink.split.i.i, %._crit_edge.i.i
  %i.nd = getelementptr i8, ptr %i.jf, i64 11     ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !range !11, !noundef !12 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.jf, i64 12
  %i.ng = load i8, ptr %i.nf, align 4, !range !11, !noundef !12
  %narrow.i.i = add nuw nsw i8 %i.ng, %i.ne
  %.not119.i.i = icmp eq i8 %narrow.i.i, 1
  br i1 %.not119.i.i, label %bb.ea, label %bb.dz, !prof !13

bb.dz:                                            ; preds = %bb.dy
  call void asm sideeffect "1161: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1161b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1161) #15, !srcloc !138
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.4, i32 2842, i32 2307, i64 16) #15, !srcloc !139
  call void asm sideeffect "1162: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1162b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1162) #15, !srcloc !140
  %.pre.i.i = load i8, ptr %i.nd, align 1, !range !11
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.nh = phi i8 [ %.pre.i.i, %bb.dz ], [ %i.ne, %bb.dy ]
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.eb, label %nh_hthr_group_rebalance.exit.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.nj = load i16, ptr %i.jg, align 8
  %.fr = freeze i16 %i.nj                         ; 5 uses
  %.not.i138.i.i = icmp eq i16 %.fr, 0
  br i1 %.not.i138.i.i, label %nh_hthr_group_rebalance.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.eb
  %wide.trip.count.i.i.i = zext i16 %.fr to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.nk = icmp ult i16 %.fr, 4
  br i1 %i.nk, label %.lr.ph.i139.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 65532
  br label %.lr.ph.i139.i.i

.lr.ph32.i.i.i.unr-lcssa:                         ; preds = %.lr.ph.i139.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.i.i, label %.lr.ph.i139.i.i.epil.preheader

.lr.ph.i139.i.i.epil.preheader:                   ; preds = %.lr.ph32.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.lr.ph32.i.i.i.unr-lcssa ]
  %.028.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.oo, %.lr.ph32.i.i.i.unr-lcssa ]
  %lcmp.mod415 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod415)
  br label %.lr.ph.i139.i.i.epil

.lr.ph.i139.i.i.epil:                             ; preds = %.lr.ph.i139.i.i.epil, %.lr.ph.i139.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i139.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i139.i.i.epil ] ; 2 uses
  %.028.i.i.i.epil = phi i32 [ %.028.i.i.i.epil.init, %.lr.ph.i139.i.i.epil.preheader ], [ %i.np, %.lr.ph.i139.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i139.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i139.i.i.epil ]
  %i.nl = getelementptr [80 x i8], ptr %i.jf, i64 %indvars.iv.i.i.i.epil
  %i.nm = getelementptr i8, ptr %i.nl, i64 40
  %i.nn = load i16, ptr %i.nm, align 8
  %i.no = zext i16 %i.nn to i32
  %i.np = add i32 %.028.i.i.i.epil, %i.no         ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph32.i.i.i, label %.lr.ph.i139.i.i.epil, !llvm.loop !141

.lr.ph32.i.i.i:                                   ; preds = %.lr.ph.i139.i.i.epil, %.lr.ph32.i.i.i.unr-lcssa
  %.lcssa374 = phi i32 [ %i.oo, %.lr.ph32.i.i.i.unr-lcssa ], [ %i.np, %.lr.ph.i139.i.i.epil ] ; 2 uses
  %i.nq = getelementptr i8, ptr %i.jf, i64 24     ; 3 uses
  %i.nr = lshr i32 %.lcssa374, 1
  %i.ns = zext nneg i32 %i.nr to i64              ; 3 uses
  %i.nt = zext i32 %.lcssa374 to i64              ; 3 uses
  %xtraiter416 = and i64 %wide.trip.count.i.i.i, 1
  %i.nu = icmp eq i16 %.fr, 1
  br i1 %i.nu, label %.epil.preheader, label %.lr.ph32.i.i.i.new

.lr.ph32.i.i.i.new:                               ; preds = %.lr.ph32.i.i.i
  %unroll_iter420 = and i64 %wide.trip.count.i.i.i, 65534
  br label %bb.ec

.lr.ph.i139.i.i:                                  ; preds = %.lr.ph.i139.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i139.i.i ] ; 5 uses
  %.028.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.oo, %.lr.ph.i139.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i139.i.i ]
  %i.nv = getelementptr [80 x i8], ptr %i.jf, i64 %indvars.iv.i.i.i
  %i.nw = getelementptr i8, ptr %i.nv, i64 40
  %i.nx = load i16, ptr %i.nw, align 8
  %i.ny = zext i16 %i.nx to i32
  %i.nz = add i32 %.028.i.i.i, %i.ny
  %i.oa = getelementptr [80 x i8], ptr %i.jf, i64 %indvars.iv.i.i.i
  %i.ob = getelementptr i8, ptr %i.oa, i64 120
  %i.oc = load i16, ptr %i.ob, align 8
  %i.od = zext i16 %i.oc to i32
  %i.oe = add i32 %i.nz, %i.od
  %i.of = getelementptr [80 x i8], ptr %i.jf, i64 %indvars.iv.i.i.i
  %i.og = getelementptr i8, ptr %i.of, i64 200
  %i.oh = load i16, ptr %i.og, align 8
  %i.oi = zext i16 %i.oh to i32
  %i.oj = add i32 %i.oe, %i.oi
  %i.ok = getelementptr [80 x i8], ptr %i.jf, i64 %indvars.iv.i.i.i
  %i.ol = getelementptr i8, ptr %i.ok, i64 280
  %i.om = load i16, ptr %i.ol, align 8
  %i.on = zext i16 %i.om to i32
  %i.oo = add i32 %i.oj, %i.on                    ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph32.i.i.i.unr-lcssa, label %.lr.ph.i139.i.i, !llvm.loop !87

bb.ec:                                            ; preds = %bb.ec, %.lr.ph32.i.i.i.new
  %indvars.iv35.i.i.i = phi i64 [ 0, %.lr.ph32.i.i.i.new ], [ %indvars.iv.next36.i.i.i.1, %bb.ec ] ; 3 uses
  %.02531.i.i.i = phi i32 [ 0, %.lr.ph32.i.i.i.new ], [ %i.pf, %bb.ec ]
  %niter421 = phi i64 [ 0, %.lr.ph32.i.i.i.new ], [ %niter421.next.1, %bb.ec ]
  %i.op = getelementptr [80 x i8], ptr %i.nq, i64 %indvars.iv35.i.i.i ; 2 uses
  %i.oq = getelementptr i8, ptr %i.op, i64 16
  %i.or = load i16, ptr %i.oq, align 8
  %i.os = zext i16 %i.or to i32
  %i.ot = add i32 %.02531.i.i.i, %i.os            ; 2 uses
  %i.ou = zext i32 %i.ot to i64
  %i.ov = shl nuw nsw i64 %i.ou, 31
  %i.ow = or disjoint i64 %i.ov, %i.ns
  %i.ox = udiv i64 %i.ow, %i.nt
  %i.oy = trunc i64 %i.ox to i32
  %i.oz = add i32 %i.oy, -1
  %i.pa = getelementptr i8, ptr %i.op, i64 24
  store volatile i32 %i.oz, ptr %i.pa, align 8
  %i.pb = getelementptr [80 x i8], ptr %i.nq, i64 %indvars.iv35.i.i.i ; 2 uses
  %i.pc = getelementptr i8, ptr %i.pb, i64 96
  %i.pd = load i16, ptr %i.pc, align 8
  %i.pe = zext i16 %i.pd to i32
  %i.pf = add i32 %i.ot, %i.pe                    ; 3 uses
  %i.pg = zext i32 %i.pf to i64
  %i.ph = shl nuw nsw i64 %i.pg, 31
  %i.pi = or disjoint i64 %i.ph, %i.ns
  %i.pj = udiv i64 %i.pi, %i.nt
  %i.pk = trunc i64 %i.pj to i32
  %i.pl = add i32 %i.pk, -1
  %i.pm = getelementptr i8, ptr %i.pb, i64 104
  store volatile i32 %i.pl, ptr %i.pm, align 8
  %indvars.iv.next36.i.i.i.1 = add nuw nsw i64 %indvars.iv35.i.i.i, 2 ; 2 uses
  %niter421.next.1 = add i64 %niter421, 2         ; 2 uses
  %niter421.ncmp.1 = icmp eq i64 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %nh_hthr_group_rebalance.exit.i.i.loopexit.unr-lcssa, label %bb.ec, !llvm.loop !88

nh_hthr_group_rebalance.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.ec
  %lcmp.mod418.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod418.not, label %nh_hthr_group_rebalance.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %nh_hthr_group_rebalance.exit.i.i.loopexit.unr-lcssa, %.lr.ph32.i.i.i
  %indvars.iv35.i.i.i.epil.init = phi i64 [ 0, %.lr.ph32.i.i.i ], [ %indvars.iv.next36.i.i.i.1, %nh_hthr_group_rebalance.exit.i.i.loopexit.unr-lcssa ]
  %.02531.i.i.i.epil.init = phi i32 [ 0, %.lr.ph32.i.i.i ], [ %i.pf, %nh_hthr_group_rebalance.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod419 = trunc i16 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod419)
  %i.pn = getelementptr [80 x i8], ptr %i.nq, i64 %indvars.iv35.i.i.i.epil.init ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 16
  %i.pp = load i16, ptr %i.po, align 8
  %i.pq = zext i16 %i.pp to i32
  %i.pr = add i32 %.02531.i.i.i.epil.init, %i.pq
  %i.ps = zext i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.ps, 31
  %i.pu = or disjoint i64 %i.pt, %i.ns
  %i.pv = udiv i64 %i.pu, %i.nt
  %i.pw = trunc i64 %i.pv to i32
  %i.px = add i32 %i.pw, -1
  %i.py = getelementptr i8, ptr %i.pn, i64 24
  store volatile i32 %i.px, ptr %i.py, align 8
  br label %nh_hthr_group_rebalance.exit.i.i

nh_hthr_group_rebalance.exit.i.i:                 ; preds = %.epil.preheader, %nh_hthr_group_rebalance.exit.i.i.loopexit.unr-lcssa, %bb.eb, %bb.ea
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 7
  %i.qa = load i8, ptr %i.pz, align 1
  %.not120.i.i = icmp eq i8 %i.qa, 0
  br i1 %.not120.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %nh_hthr_group_rebalance.exit.i.i
  %i.qb = getelementptr i8, ptr %i.jf, i64 13
  store i8 1, ptr %i.qb, align 1
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %nh_hthr_group_rebalance.exit.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 75
  %i.qd = load i8, ptr %i.qc, align 1, !range !11, !noundef !12
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.qf = getelementptr i8, ptr %i.jf, i64 15
  store i8 1, ptr %i.qf, align 1
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !142
  %i.qg = getelementptr i8, ptr %i.ir, i64 128
  store volatile ptr %i.jf, ptr %i.qg, align 8
  br label %nexthop_create_group.exit.i

nexthop_put.exit.thread.loopexit.i.i:             ; preds = %nexthop_get.exit.i.i
  %i.qh = trunc nuw nsw i64 %indvars.iv.i.i37 to i32
  br label %nexthop_put.exit.thread.i.i

end_hunk_0
