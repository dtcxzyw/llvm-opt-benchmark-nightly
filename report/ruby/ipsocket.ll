inline.NumInlined: 107
inline.NumDeleted: 39
begin_hunk_0_@init_fast_fallback_inetsock_internal:bb.a
  %i.mv = getelementptr inbounds nuw i8, ptr %.7530856, i64 8
  %i.mw = load i64, ptr %i.mv, align 8            ; 2 uses
  %i.mx = icmp eq i64 %i.mu, -1
  %i.my = icmp eq i64 %i.mw, -1
  %.not6.not16.i = select i1 %i.mx, i1 true, i1 %i.my ; 2 uses
  %brmerge.i = or i1 %.not40.i, %.not6.not16.i
  %.mux.i = select i1 %.not6.not16.i, ptr null, ptr %.7530856
  br i1 %brmerge.i, label %select_expires_at.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mz = load i64, ptr %.1518, align 8, !tbaa !88 ; 2 uses
  %i.na = icmp eq i64 %i.mu, %i.mz
  br i1 %i.na, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nb = getelementptr inbounds nuw i8, ptr %.1518, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !90
  %i.nd = icmp sgt i64 %i.mw, %i.nc
  br i1 %i.nd, label %select_expires_at.exit.thread, label %select_expires_at.exit.thread1070

bb.cp:                                            ; preds = %bb.cn
  %i.ne = icmp sgt i64 %i.mu, %i.mz
  br i1 %i.ne, label %select_expires_at.exit.thread, label %select_expires_at.exit.thread1070

select_expires_at.exit.thread1070:                ; preds = %bb.ch, %bb.cg, %bb.cp, %bb.co
  %.not.i.i6801063.ph = phi i1 [ true, %bb.co ], [ true, %bb.cp ], [ %.not.i.i6801064, %bb.cg ], [ %.not.i.i6801064, %bb.ch ]
  %.sroa.38.48541060.ph = phi ptr [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.38.48541061, %bb.cg ], [ %.sroa.38.48541061, %bb.ch ]
  %.sroa.0.48551054.ph = phi ptr [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.0.48551055, %bb.cg ], [ %.sroa.0.48551055, %bb.ch ]
  %.75308561048.ph = phi ptr [ %.7530856, %bb.co ], [ %.7530856, %bb.cp ], [ %.75308561049, %bb.cg ], [ %.75308561049, %bb.ch ]
  %.35138571042.ph = phi ptr [ %.3513857, %bb.co ], [ %.3513857, %bb.cp ], [ %.35138571037, %bb.cg ], [ %.35138571037, %bb.ch ]
  %.44988581035.ph = phi i32 [ %.4498858, %bb.co ], [ %.4498858, %bb.cp ], [ %.44988581036, %bb.cg ], [ %.44988581036, %bb.ch ]
  %.44938591029.ph = phi i32 [ %.4493859, %bb.co ], [ %.4493859, %bb.cp ], [ %.44938591030, %bb.cg ], [ %.44938591030, %bb.ch ]
  %.34638601023.ph = phi ptr [ %.3463860, %bb.co ], [ %.3463860, %bb.cp ], [ %.34638601024, %bb.cg ], [ %.34638601024, %bb.ch ]
  %.sroa.18.38611017.ph = phi i32 [ %.sroa.18.3861, %bb.co ], [ %.sroa.18.3861, %bb.cp ], [ %.sroa.18.38611018, %bb.cg ], [ %.sroa.18.38611018, %bb.ch ]
  %.sroa.0233.38621011.ph = phi i32 [ %.sroa.0233.3862, %bb.co ], [ %.sroa.0233.3862, %bb.cp ], [ %.sroa.0233.38621012, %bb.cg ], [ %.sroa.0233.38621012, %bb.ch ]
  %.44598631005.ph = phi i32 [ %.4459863, %bb.co ], [ %.4459863, %bb.cp ], [ %.44598631006, %bb.cg ], [ %.44598631006, %bb.ch ]
  %.4864999.ph = phi i64 [ %.4864, %bb.co ], [ %.4864, %bb.cp ], [ %.48641000, %bb.cg ], [ %.48641000, %bb.ch ]
  %.2.i681.ph = phi ptr [ %.1518, %bb.co ], [ %.1518, %bb.cp ], [ %i.mh, %bb.cg ], [ %i.mh, %bb.ch ]
  br label %select_expires_at.exit.thread

select_expires_at.exit:                           ; preds = %bb.cl, %any_addrinfos.exit.thread.i, %bb.cm
  %.not.i.i6801063 = phi i1 [ %.not.i.i6801064, %any_addrinfos.exit.thread.i ], [ true, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %.sroa.38.48541060 = phi ptr [ %.sroa.38.48541061, %any_addrinfos.exit.thread.i ], [ null, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %.sroa.0.48551054 = phi ptr [ %.sroa.0.48551055, %any_addrinfos.exit.thread.i ], [ null, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %.75308561048 = phi ptr [ %.75308561049, %any_addrinfos.exit.thread.i ], [ %.7530856, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %.35138571042 = phi ptr [ %.35138571037, %any_addrinfos.exit.thread.i ], [ %.3513857, %bb.cm ], [ %.3513857, %bb.cl ] ; 2 uses
  %.44988581035 = phi i32 [ %.44988581036, %any_addrinfos.exit.thread.i ], [ %.4498858, %bb.cm ], [ %.4498858, %bb.cl ] ; 2 uses
  %.44938591029 = phi i32 [ %.44938591030, %any_addrinfos.exit.thread.i ], [ %.4493859, %bb.cm ], [ %.4493859, %bb.cl ] ; 2 uses
  %.34638601023 = phi ptr [ %.34638601024, %any_addrinfos.exit.thread.i ], [ %.3463860, %bb.cm ], [ %.3463860, %bb.cl ] ; 2 uses
  %.sroa.18.38611017 = phi i32 [ %.sroa.18.38611018, %any_addrinfos.exit.thread.i ], [ %.sroa.18.3861, %bb.cm ], [ %.sroa.18.3861, %bb.cl ] ; 2 uses
  %.sroa.0233.38621011 = phi i32 [ %.sroa.0233.38621012, %any_addrinfos.exit.thread.i ], [ %.sroa.0233.3862, %bb.cm ], [ %.sroa.0233.3862, %bb.cl ] ; 2 uses
  %.44598631005 = phi i32 [ %.44598631006, %any_addrinfos.exit.thread.i ], [ %.4459863, %bb.cm ], [ %.4459863, %bb.cl ] ; 2 uses
  %.4864999 = phi i64 [ %.48641000, %any_addrinfos.exit.thread.i ], [ %.4864, %bb.cm ], [ %.4864, %bb.cl ] ; 2 uses
  %.2.i681 = phi ptr [ %i.mh, %any_addrinfos.exit.thread.i ], [ %.mux.i, %bb.cm ], [ %.1518, %bb.cl ] ; 2 uses
  %.not581 = icmp eq ptr %.2.i681, null
  br i1 %.not581, label %select_expires_at.exit.thread880, label %select_expires_at.exit.thread

select_expires_at.exit.thread:                    ; preds = %select_expires_at.exit.thread1070, %bb.co, %bb.cp, %bb.ch, %bb.cg, %bb.ci, %select_expires_at.exit
  %.not.i.i6801066 = phi i1 [ %.not.i.i6801063, %select_expires_at.exit ], [ true, %bb.co ], [ true, %bb.cp ], [ %.not.i.i6801064, %bb.ch ], [ %.not.i.i6801064, %bb.cg ], [ true, %bb.ci ], [ %.not.i.i6801063.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.38.48541057 = phi ptr [ %.sroa.38.48541060, %select_expires_at.exit ], [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.38.48541061, %bb.ch ], [ %.sroa.38.48541061, %bb.cg ], [ null, %bb.ci ], [ %.sroa.38.48541060.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.0.48551051 = phi ptr [ %.sroa.0.48551054, %select_expires_at.exit ], [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.0.48551055, %bb.ch ], [ %.sroa.0.48551055, %bb.cg ], [ null, %bb.ci ], [ %.sroa.0.48551054.ph, %select_expires_at.exit.thread1070 ]
  %.75308561045 = phi ptr [ %.75308561048, %select_expires_at.exit ], [ %.7530856, %bb.co ], [ %.7530856, %bb.cp ], [ %.75308561049, %bb.ch ], [ %.75308561049, %bb.cg ], [ %.7530856, %bb.ci ], [ %.75308561048.ph, %select_expires_at.exit.thread1070 ]
  %.35138571039 = phi ptr [ %.35138571042, %select_expires_at.exit ], [ %.3513857, %bb.co ], [ %.3513857, %bb.cp ], [ %.35138571037, %bb.ch ], [ %.35138571037, %bb.cg ], [ %.3513857, %bb.ci ], [ %.35138571042.ph, %select_expires_at.exit.thread1070 ]
  %.44988581032 = phi i32 [ %.44988581035, %select_expires_at.exit ], [ %.4498858, %bb.co ], [ %.4498858, %bb.cp ], [ %.44988581036, %bb.ch ], [ %.44988581036, %bb.cg ], [ %.4498858, %bb.ci ], [ %.44988581035.ph, %select_expires_at.exit.thread1070 ]
  %.44938591026 = phi i32 [ %.44938591029, %select_expires_at.exit ], [ %.4493859, %bb.co ], [ %.4493859, %bb.cp ], [ %.44938591030, %bb.ch ], [ %.44938591030, %bb.cg ], [ %.4493859, %bb.ci ], [ %.44938591029.ph, %select_expires_at.exit.thread1070 ]
  %.34638601020 = phi ptr [ %.34638601023, %select_expires_at.exit ], [ %.3463860, %bb.co ], [ %.3463860, %bb.cp ], [ %.34638601024, %bb.ch ], [ %.34638601024, %bb.cg ], [ %.3463860, %bb.ci ], [ %.34638601023.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.18.38611014 = phi i32 [ %.sroa.18.38611017, %select_expires_at.exit ], [ %.sroa.18.3861, %bb.co ], [ %.sroa.18.3861, %bb.cp ], [ %.sroa.18.38611018, %bb.ch ], [ %.sroa.18.38611018, %bb.cg ], [ %.sroa.18.3861, %bb.ci ], [ %.sroa.18.38611017.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.0233.38621008 = phi i32 [ %.sroa.0233.38621011, %select_expires_at.exit ], [ %.sroa.0233.3862, %bb.co ], [ %.sroa.0233.3862, %bb.cp ], [ %.sroa.0233.38621012, %bb.ch ], [ %.sroa.0233.38621012, %bb.cg ], [ %.sroa.0233.3862, %bb.ci ], [ %.sroa.0233.38621011.ph, %select_expires_at.exit.thread1070 ]
  %.44598631002 = phi i32 [ %.44598631005, %select_expires_at.exit ], [ %.4459863, %bb.co ], [ %.4459863, %bb.cp ], [ %.44598631006, %bb.ch ], [ %.44598631006, %bb.cg ], [ %.4459863, %bb.ci ], [ %.44598631005.ph, %select_expires_at.exit.thread1070 ]
  %.4864996 = phi i64 [ %.4864999, %select_expires_at.exit ], [ %.4864, %bb.co ], [ %.4864, %bb.cp ], [ %.48641000, %bb.ch ], [ %.48641000, %bb.cg ], [ %.4864, %bb.ci ], [ %.4864999.ph, %select_expires_at.exit.thread1070 ]
  %.2.i681879 = phi ptr [ %.2.i681, %select_expires_at.exit ], [ %.7530856, %bb.co ], [ %.7530856, %bb.cp ], [ %.0533, %bb.ch ], [ %.0533, %bb.cg ], [ %.0533, %bb.ci ], [ %.2.i681.ph, %select_expires_at.exit.thread1070 ] ; 2 uses
  %.val628.a = load i64, ptr %.2.i681879, align 8, !tbaa !88
  %i.nf = getelementptr i8, ptr %.2.i681879, i64 8
  %.val629 = load i64, ptr %i.nf, align 8, !tbaa !90
  %i.ng = mul nsw i64 %.val629, 1000              ; 3 uses
  %i.nh = sub i64 %.val628.a, %.sroa.0146.0
  %.not.i683 = icmp slt i64 %i.ng, %.sroa.16.0    ; 2 uses
  %i.ni = add nsw i64 %i.ng, 1000000000
  %.pn.i = select i1 %.not.i683, i64 %i.ni, i64 %i.ng
  %i.nj = sext i1 %.not.i683 to i64
  %.sroa.0.0.i = add nsw i64 %i.nh, %i.nj
  %.sroa.6.0.i684 = sub nsw i64 %.pn.i, %.sroa.16.0
  %i.nk = trunc i64 %.sroa.6.0.i684 to i32
  %i.nl = sdiv i32 %i.nk, 1000
  %i.nm = sext i32 %i.nl to i64
  br label %any_addrinfos.exit688.thread.sink.split

select_expires_at.exit.thread880:                 ; preds = %bb.ck, %select_expires_at.exit
  %.not.i.i6801062 = phi i1 [ %.not.i.i6801063, %select_expires_at.exit ], [ true, %bb.ck ] ; 2 uses
  %.sroa.38.48541059 = phi ptr [ %.sroa.38.48541060, %select_expires_at.exit ], [ null, %bb.ck ] ; 4 uses
  %.sroa.0.48551053 = phi ptr [ %.sroa.0.48551054, %select_expires_at.exit ], [ null, %bb.ck ] ; 5 uses
  %.75308561047 = phi ptr [ %.75308561048, %select_expires_at.exit ], [ %.7530856, %bb.ck ] ; 5 uses
  %.35138571041 = phi ptr [ %.35138571042, %select_expires_at.exit ], [ %.3513857, %bb.ck ] ; 5 uses
  %.44988581034 = phi i32 [ %.44988581035, %select_expires_at.exit ], [ %.4498858, %bb.ck ] ; 5 uses
  %.44938591028 = phi i32 [ %.44938591029, %select_expires_at.exit ], [ %.4493859, %bb.ck ] ; 5 uses
  %.34638601022 = phi ptr [ %.34638601023, %select_expires_at.exit ], [ %.3463860, %bb.ck ] ; 5 uses
  %.sroa.18.38611016 = phi i32 [ %.sroa.18.38611017, %select_expires_at.exit ], [ %.sroa.18.3861, %bb.ck ] ; 5 uses
  %.sroa.0233.38621010 = phi i32 [ %.sroa.0233.38621011, %select_expires_at.exit ], [ %.sroa.0233.3862, %bb.ck ] ; 5 uses
  %.44598631004 = phi i32 [ %.44598631005, %select_expires_at.exit ], [ %.4459863, %bb.ck ] ; 5 uses
  %.4864998 = phi i64 [ %.4864999, %select_expires_at.exit ], [ %.4864, %bb.ck ] ; 5 uses
  %i.nn = icmp eq i32 %.sroa.21.2, 0
  %i.no = icmp ne i32 %.sroa.57.2, 0
  %or.cond10 = select i1 %i.nn, i1 true, i1 %i.no
  br i1 %or.cond10, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %select_expires_at.exit.thread880
  %i.np = icmp eq i32 %.sroa.57.2, 0
  %i.nq = icmp ne i32 %.sroa.21.2, 0
  %or.cond14 = or i1 %i.np, %i.nq
  br i1 %or.cond14, label %any_addrinfos.exit688.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %select_expires_at.exit.thread880
  br i1 %.not.i.i6801062, label %any_addrinfos.exit688, label %any_addrinfos.exit688.thread

any_addrinfos.exit688:                            ; preds = %bb.cr
  %.not1096 = icmp eq ptr %.sroa.38.48541059, null
  br i1 %.not1096, label %bb.cs, label %any_addrinfos.exit688.thread

bb.cs:                                            ; preds = %any_addrinfos.exit688
  %i.nr = load i32, ptr %i.z, align 4, !tbaa !60
  %i.ns = icmp slt i32 %i.nr, 1
  br i1 %i.ns, label %any_addrinfos.exit688.thread.sink.split, label %any_addrinfos.exit688.thread

any_addrinfos.exit688.thread.sink.split:          ; preds = %bb.cs, %select_expires_at.exit.thread
  %.sink1785 = phi i64 [ %.sroa.0.0.i, %select_expires_at.exit.thread ], [ 0, %bb.cs ]
  %.sink = phi i64 [ %i.nm, %select_expires_at.exit.thread ], [ 50000, %bb.cs ]
  %.not.i.i6801065.ph = phi i1 [ %.not.i.i6801066, %select_expires_at.exit.thread ], [ true, %bb.cs ]
  %.sroa.38.48541056.ph = phi ptr [ %.sroa.38.48541057, %select_expires_at.exit.thread ], [ null, %bb.cs ]
  %.sroa.0.48551050.ph = phi ptr [ %.sroa.0.48551051, %select_expires_at.exit.thread ], [ %.sroa.0.48551053, %bb.cs ]
  %.75308561044.ph = phi ptr [ %.75308561045, %select_expires_at.exit.thread ], [ %.75308561047, %bb.cs ]
  %.35138571038.ph = phi ptr [ %.35138571039, %select_expires_at.exit.thread ], [ %.35138571041, %bb.cs ]
  %.44988581031.ph = phi i32 [ %.44988581032, %select_expires_at.exit.thread ], [ %.44988581034, %bb.cs ]
  %.44938591025.ph = phi i32 [ %.44938591026, %select_expires_at.exit.thread ], [ %.44938591028, %bb.cs ]
  %.34638601019.ph = phi ptr [ %.34638601020, %select_expires_at.exit.thread ], [ %.34638601022, %bb.cs ]
  %.sroa.18.38611013.ph = phi i32 [ %.sroa.18.38611014, %select_expires_at.exit.thread ], [ %.sroa.18.38611016, %bb.cs ]
  %.sroa.0233.38621007.ph = phi i32 [ %.sroa.0233.38621008, %select_expires_at.exit.thread ], [ %.sroa.0233.38621010, %bb.cs ]
  %.44598631001.ph = phi i32 [ %.44598631002, %select_expires_at.exit.thread ], [ %.44598631004, %bb.cs ]
  %.4864995.ph = phi i64 [ %.4864996, %select_expires_at.exit.thread ], [ %.4864998, %bb.cs ]
  store i64 %.sink1785, ptr %3, align 8, !tbaa !17
  store i64 %.sink, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !17
  br label %any_addrinfos.exit688.thread

any_addrinfos.exit688.thread:                     ; preds = %any_addrinfos.exit688.thread.sink.split, %bb.cr, %bb.cq, %any_addrinfos.exit688, %bb.cs
  %.not.i.i6801065 = phi i1 [ %.not.i.i6801062, %bb.cq ], [ false, %bb.cr ], [ true, %bb.cs ], [ true, %any_addrinfos.exit688 ], [ %.not.i.i6801065.ph, %any_addrinfos.exit688.thread.sink.split ] ; 2 uses
  %.sroa.38.48541056 = phi ptr [ %.sroa.38.48541059, %bb.cq ], [ %.sroa.38.48541059, %bb.cr ], [ null, %bb.cs ], [ %.sroa.38.48541059, %any_addrinfos.exit688 ], [ %.sroa.38.48541056.ph, %any_addrinfos.exit688.thread.sink.split ] ; 6 uses
  %.sroa.0.48551050 = phi ptr [ %.sroa.0.48551053, %bb.cq ], [ %.sroa.0.48551053, %bb.cr ], [ %.sroa.0.48551053, %bb.cs ], [ %.sroa.0.48551053, %any_addrinfos.exit688 ], [ %.sroa.0.48551050.ph, %any_addrinfos.exit688.thread.sink.split ] ; 4 uses
  %.75308561044 = phi ptr [ %.75308561047, %bb.cq ], [ %.75308561047, %bb.cr ], [ %.75308561047, %bb.cs ], [ %.75308561047, %any_addrinfos.exit688 ], [ %.75308561044.ph, %any_addrinfos.exit688.thread.sink.split ] ; 3 uses
  %.35138571038 = phi ptr [ %.35138571041, %bb.cq ], [ %.35138571041, %bb.cr ], [ %.35138571041, %bb.cs ], [ %.35138571041, %any_addrinfos.exit688 ], [ %.35138571038.ph, %any_addrinfos.exit688.thread.sink.split ] ; 6 uses
  %.44988581031 = phi i32 [ %.44988581034, %bb.cq ], [ %.44988581034, %bb.cr ], [ %.44988581034, %bb.cs ], [ %.44988581034, %any_addrinfos.exit688 ], [ %.44988581031.ph, %any_addrinfos.exit688.thread.sink.split ]
  %.44938591025 = phi i32 [ %.44938591028, %bb.cq ], [ %.44938591028, %bb.cr ], [ %.44938591028, %bb.cs ], [ %.44938591028, %any_addrinfos.exit688 ], [ %.44938591025.ph, %any_addrinfos.exit688.thread.sink.split ]
  %.34638601019 = phi ptr [ %.34638601022, %bb.cq ], [ %.34638601022, %bb.cr ], [ %.34638601022, %bb.cs ], [ %.34638601022, %any_addrinfos.exit688 ], [ %.34638601019.ph, %any_addrinfos.exit688.thread.sink.split ] ; 7 uses
  %.sroa.18.38611013 = phi i32 [ %.sroa.18.38611016, %bb.cq ], [ %.sroa.18.38611016, %bb.cr ], [ %.sroa.18.38611016, %bb.cs ], [ %.sroa.18.38611016, %any_addrinfos.exit688 ], [ %.sroa.18.38611013.ph, %any_addrinfos.exit688.thread.sink.split ] ; 3 uses
  %.sroa.0233.38621007 = phi i32 [ %.sroa.0233.38621010, %bb.cq ], [ %.sroa.0233.38621010, %bb.cr ], [ %.sroa.0233.38621010, %bb.cs ], [ %.sroa.0233.38621010, %any_addrinfos.exit688 ], [ %.sroa.0233.38621007.ph, %any_addrinfos.exit688.thread.sink.split ] ; 3 uses
  %.44598631001 = phi i32 [ %.44598631004, %bb.cq ], [ %.44598631004, %bb.cr ], [ %.44598631004, %bb.cs ], [ %.44598631004, %any_addrinfos.exit688 ], [ %.44598631001.ph, %any_addrinfos.exit688.thread.sink.split ] ; 4 uses
  %.4864995 = phi i64 [ %.4864998, %bb.cq ], [ %.4864998, %bb.cr ], [ %.4864998, %bb.cs ], [ %.4864998, %any_addrinfos.exit688 ], [ %.4864995.ph, %any_addrinfos.exit688.thread.sink.split ]
  %.0486 = phi ptr [ null, %bb.cq ], [ null, %bb.cr ], [ null, %bb.cs ], [ null, %any_addrinfos.exit688 ], [ %3, %any_addrinfos.exit688.thread.sink.split ]
  call void @rb_fd_zero(ptr noundef nonnull %i.gh) #16
  %i.nt = load i32, ptr %i.z, align 4, !tbaa !60  ; 2 uses
  %i.nu = icmp slt i32 %i.nt, 1
  br i1 %i.nu, label %bb.cv, label %.lr.ph1302

._crit_edge1303:                                  ; preds = %bb.cu
  %i.nv = icmp sgt i32 %.2453, 0
  %i.nw = add nuw nsw i32 %.2453, 1
  %spec.select = select i1 %i.nv, i32 %i.nw, i32 0
  br label %bb.cv

.lr.ph1302:                                       ; preds = %any_addrinfos.exit688.thread, %bb.cu
  %i.nx = phi i32 [ %i.oc, %bb.cu ], [ %i.nt, %any_addrinfos.exit688.thread ]
  %indvars.iv1494 = phi i64 [ %indvars.iv.next1495, %bb.cu ], [ 0, %any_addrinfos.exit688.thread ] ; 2 uses
  %.04511300 = phi i32 [ %.2453, %bb.cu ], [ 0, %any_addrinfos.exit688.thread ] ; 2 uses
  %i.ny = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv1494
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !6  ; 3 uses
  %i.ob = icmp slt i32 %i.oa, 0
  br i1 %i.ob, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph1302
  %spec.select619.a = call i32 @llvm.smax.i32(i32 %i.oa, i32 %.04511300)
  call void @rb_fd_set(i32 noundef %i.oa, ptr noundef nonnull %i.gh) #16
  %.pre1508.a = load i32, ptr %i.z, align 4, !tbaa !60
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph1302, %bb.ct
  %i.oc = phi i32 [ %.pre1508.a, %bb.ct ], [ %i.nx, %.lr.ph1302 ] ; 2 uses
  %.2453 = phi i32 [ %spec.select619.a, %bb.ct ], [ %.04511300, %.lr.ph1302 ] ; 3 uses
  %indvars.iv.next1495 = add nuw nsw i64 %indvars.iv1494, 1 ; 2 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next1495, %i.od
  br i1 %i.oe, label %.lr.ph1302, label %._crit_edge1303, !llvm.loop !92

bb.cv:                                            ; preds = %._crit_edge1303, %any_addrinfos.exit688.thread
  %.0484 = phi i32 [ %spec.select, %._crit_edge1303 ], [ 0, %any_addrinfos.exit688.thread ] ; 2 uses
  call void @rb_fd_zero(ptr noundef nonnull %i.gi) #16
  %i.of = load i32, ptr %i.q, align 8, !tbaa !44
  %i.og = icmp sgt i32 %i.of, 1
  br i1 %i.og, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @rb_fd_set(i32 noundef %.0483, ptr noundef nonnull %i.gi) #16
  %spec.select620 = call i32 @llvm.smax.i32(i32 %i.gj, i32 %.0484)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.1485 = phi i32 [ %.0484, %bb.cv ], [ %spec.select620, %bb.cw ]
  %i.oh = call i32 @rb_thread_fd_select(i32 noundef %.1485, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gh, ptr noundef null, ptr noundef %.0486) #16
  store i32 %i.oh, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.oi = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #16
  %i.oj = icmp slt i32 %i.oi, 0
  br i1 %i.oj, label %bb.cy, label %current_clocktime_ts.exit694

bb.cy:                                            ; preds = %bb.cx
  %i.ok = call ptr @rb_errno_ptr() #16
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.ol, ptr noundef nonnull @.str.31) #17
  unreachable

current_clocktime_ts.exit694:                     ; preds = %bb.cx
  %.fca.0.load.i689 = load i64, ptr %1, align 8   ; 13 uses
  %.fca.1.load.i692 = load i64, ptr %.fca.1.gep.i691, align 8 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i695.a = icmp eq ptr %.0502, null
  br i1 %.not.i695.a, label %is_timeout_tv.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %current_clocktime_ts.exit694
  %i.om = load i64, ptr %.0502, align 8, !tbaa !88 ; 3 uses
  %i.on = icmp eq i64 %i.om, -1
  br i1 %i.on, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.oo = getelementptr inbounds nuw i8, ptr %.0502, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !90
  %i.oq = icmp eq i64 %i.op, -1
  br i1 %i.oq, label %is_timeout_tv.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.or = icmp sgt i64 %.fca.0.load.i689, %i.om
  br i1 %i.or, label %is_timeout_tv.exit.thread887, label %is_timeout_tv.exit

is_timeout_tv.exit:                               ; preds = %bb.db
  %i.os = getelementptr inbounds nuw i8, ptr %.0502, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !90
  %i.ou = mul nsw i64 %i.ot, 1000
  %i.ov = icmp ne i64 %.fca.0.load.i689, %i.om
  %.not11.i = icmp slt i64 %.fca.1.load.i692, %i.ou
  %or.cond.not.i.not = select i1 %i.ov, i1 true, i1 %.not11.i
  %cond.fr = freeze i1 %or.cond.not.i.not
  br i1 %cond.fr, label %is_timeout_tv.exit.thread, label %is_timeout_tv.exit.thread887

is_timeout_tv.exit.thread:                        ; preds = %bb.da, %current_clocktime_ts.exit694, %is_timeout_tv.exit
  br label %is_timeout_tv.exit.thread887

is_timeout_tv.exit.thread887:                     ; preds = %bb.db, %is_timeout_tv.exit, %is_timeout_tv.exit.thread
  %i.ow = phi ptr [ %.0502, %is_timeout_tv.exit.thread ], [ null, %is_timeout_tv.exit ], [ null, %bb.db ] ; 4 uses
  %.not.i696 = icmp eq ptr %.35138571038, null
  br i1 %.not.i696, label %is_timeout_tv.exit701.thread895, label %bb.dc

bb.dc:                                            ; preds = %is_timeout_tv.exit.thread887
  %i.ox = load i64, ptr %.35138571038, align 8, !tbaa !88 ; 3 uses
  %i.oy = icmp eq i64 %i.ox, -1
  br i1 %i.oy, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.oz = getelementptr inbounds nuw i8, ptr %.35138571038, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !90
  %i.pb = icmp eq i64 %i.pa, -1
  br i1 %i.pb, label %is_timeout_tv.exit701.thread895, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.pc = icmp sgt i64 %.fca.0.load.i689, %i.ox
  br i1 %i.pc, label %is_timeout_tv.exit701.thread895, label %is_timeout_tv.exit701

is_timeout_tv.exit701:                            ; preds = %bb.de
  %i.pd = getelementptr inbounds nuw i8, ptr %.35138571038, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !90
  %i.pf = mul nsw i64 %i.pe, 1000
  %i.pg = icmp ne i64 %.fca.0.load.i689, %i.ox
  %.not11.i697 = icmp slt i64 %.fca.1.load.i692, %i.pf
  %or.cond.not.i698.not = select i1 %i.pg, i1 true, i1 %.not11.i697
  %cond.fr891 = freeze i1 %or.cond.not.i698.not
  %spec.select1085 = select i1 %cond.fr891, ptr %.35138571038, ptr null
  br label %is_timeout_tv.exit701.thread895

is_timeout_tv.exit701.thread895:                  ; preds = %is_timeout_tv.exit701, %is_timeout_tv.exit.thread887, %bb.dd, %bb.de
  %i.ph = phi ptr [ null, %bb.de ], [ %spec.select1085, %is_timeout_tv.exit701 ], [ null, %is_timeout_tv.exit.thread887 ], [ %.35138571038, %bb.dd ] ; 3 uses
  %i.pi = load i32, ptr %i.a, align 4, !tbaa !6   ; 2 uses
  %i.pj = icmp slt i32 %i.pi, 0
  br i1 %i.pj, label %bb.df, label %bb.di

bb.df:                                            ; preds = %is_timeout_tv.exit701.thread895
  %i.pk = call ptr @rb_errno_ptr() #16
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !6
  %.not588.a = icmp eq i32 %i.pl, 0
  br i1 %.not588.a, label %thread-pre-split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pm = call ptr @rb_errno_ptr() #16
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !6
  %.not589 = icmp eq i32 %i.pn, 4
  br i1 %.not589, label %thread-pre-split, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.po = call ptr @rb_errno_ptr() #16
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.pp, ptr noundef nonnull @.str.29) #17
  unreachable

thread-pre-split:                                 ; preds = %bb.df, %bb.dg
  %.pr = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.di

bb.di:                                            ; preds = %thread-pre-split, %is_timeout_tv.exit701.thread895
  %i.pq = phi i32 [ %.pr, %thread-pre-split ], [ %i.pi, %is_timeout_tv.exit701.thread895 ]
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %bb.dj, label %bb.eq

bb.dj:                                            ; preds = %bb.di
  %i.ps = load i32, ptr %i.z, align 4, !tbaa !60  ; 2 uses
  %i.pt = icmp slt i32 %i.ps, 1
  br i1 %i.pt, label %any_addrinfos.exit725.thread, label %.lr.ph1307

.lr.ph1307:                                       ; preds = %bb.dj
  %.not1099.a = icmp eq ptr %.sroa.38.48541056, null
  %or.cond1106.a = select i1 %.not.i.i6801065, i1 %.not1099.a, i1 false
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph1307, %.thread901
  %i.pu = phi i32 [ %i.ps, %.lr.ph1307 ], [ %i.rr, %.thread901 ] ; 2 uses
  %indvars.iv1497 = phi i64 [ 0, %.lr.ph1307 ], [ %indvars.iv.next1498, %.thread901 ] ; 2 uses
  %.sroa.0233.41305 = phi i32 [ %.sroa.0233.38621007, %.lr.ph1307 ], [ %.sroa.0233.6907, %.thread901 ] ; 2 uses
  %.sroa.18.41304 = phi i32 [ %.sroa.18.38611013, %.lr.ph1307 ], [ %.sroa.18.6906, %.thread901 ] ; 2 uses
  %i.pv = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv1497
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !6  ; 8 uses
  %i.py = icmp slt i32 %i.px, 0
  br i1 %i.py, label %.thread901, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pz = call i32 @rb_fd_isset(i32 noundef %i.px, ptr noundef nonnull %i.gh) #22
  %.not591 = icmp eq i32 %i.pz, 0
  br i1 %.not591, label %.thread901, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i32 4, ptr %i.e, align 4, !tbaa !6
  %i.qa = call i32 @getsockopt(i32 noundef %i.px, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #16 ; 2 uses
  store i32 %i.qa, ptr %i.a, align 4, !tbaa !6
  %i.qb = icmp slt i32 %i.qa, 0
  br i1 %i.qb, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.qc = call ptr @rb_errno_ptr() #16
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !6  ; 3 uses
  %i.qe = call i32 @close(i32 noundef %i.px) #16  ; 0 uses
  %.pre1509.pre1510 = load i32, ptr %i.z, align 4, !tbaa !60 ; 2 uses
  br i1 %or.cond1106.a, label %bb.do, label %any_addrinfos.exit703.thread

bb.do:                                            ; preds = %bb.dn
  %i.qf = icmp sgt i32 %.pre1509.pre1510, 0
  %.not594 = icmp eq i32 %.sroa.75.1, 0
  %or.cond626 = or i1 %.not594, %i.qf
  br i1 %or.cond626, label %.loopexit1111.thread1602, label %bb.dp

.loopexit1111.thread1602:                         ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.loopexit1111.thread

bb.dp:                                            ; preds = %bb.do
  %i.qg = icmp slt i32 %.44598631001, 0           ; 2 uses
  %.3480.in.v = select i1 %i.qg, i64 48, i64 24
  %.3480.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.3480.in.v
  %.3474.in.v = select i1 %i.qg, i64 40, i64 16
  %.3474.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.3474.in.v
  %.3474 = load i64, ptr %.3474.in, align 8, !tbaa !17
  %.3480 = load i64, ptr %.3480.in, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %i.qd, ptr noundef %.34638601019, i64 noundef %.3474, i64 noundef %.3480) #17
  unreachable

bb.dq:                                            ; preds = %bb.dm
  %i.qh = load i32, ptr %i.d, align 4, !tbaa !6
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.qj = load ptr, ptr %i.y, align 8, !tbaa !59  ; 4 uses
  %i.qk = load i32, ptr %i.z, align 4, !tbaa !6   ; 3 uses
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %.lr.ph.preheader.i, label %.loopexit1114.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.dr
  %wide.trip.count.i = zext nneg i32 %i.qk to i64
  br label %.lr.ph.i704

.lr.ph.i704:                                      ; preds = %bb.ds, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ds ] ; 4 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.i
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !6
  %.not.i705 = icmp eq i32 %i.qn, %i.px
end_hunk_0
