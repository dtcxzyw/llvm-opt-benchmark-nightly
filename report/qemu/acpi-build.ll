inline.NumInlined: 114
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@acpi_build:bb.a
  %i.fh = call ptr @object_resolve_path_type(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.203, ptr noundef null) #11 ; 2 uses
  %.not183 = icmp eq ptr %i.fh, null
  br i1 %.not183, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef nonnull %i.k) #11
  %i.fi = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fh, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, i32 noundef 19, ptr noundef nonnull @__func__.VMGENID) #11
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = load ptr, ptr %i.em, align 8
  %i.fm = load ptr, ptr %i.ez, align 16
  call void @vmgenid_build_acpi(ptr noundef %i.fi, ptr noundef nonnull %i.k, ptr noundef %i.fk, ptr noundef %i.fl, ptr noundef %i.fm) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fn = call ptr @object_resolve_path_type(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.174, ptr noundef null) #11 ; 2 uses
  %.not184 = icmp eq ptr %i.fn, null
  br i1 %.not184, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef nonnull %i.k) #11
  %i.fo = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175, i32 noundef 14, ptr noundef nonnull @__func__.VMCLOCK) #11
  %i.fp = load ptr, ptr %i.em, align 8
  %i.fq = load ptr, ptr %i.ez, align 16
  call void @vmclock_build_acpi(ptr noundef %i.fo, ptr noundef nonnull %i.k, ptr noundef %i.fp, ptr noundef %i.fq) #11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %i.de, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef nonnull %i.k) #11
  %i.fr = load ptr, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr @.str.156, ptr %7, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ft, i8 0, i64 7, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fv = load <2 x ptr>, ptr %i.ez, align 16
  store <2 x ptr> %i.fv, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  call void @acpi_table_begin(ptr noundef nonnull %7, ptr noundef nonnull %i.k) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 2156306945, i32 noundef 4) #11
  call void @build_append_gas(ptr noundef nonnull %i.k, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef 4275044352) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 0, i32 noundef 1) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 0, i32 noundef 2) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 0, i32 noundef 1) #11
  call void @acpi_table_end(ptr noundef %i.fr, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  switch i32 %.0.i.i198, label %bb.as [
    i32 0, label %bb.at
    i32 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef nonnull %i.k) #11
  %i.fx = load ptr, ptr %i.em, align 8            ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr @.str.176, ptr %6, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 2, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gb, i8 0, i64 7, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gd = load <2 x ptr>, ptr %i.ez, align 16
  store <2 x ptr> %i.gd, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i8 0, i64 16, i1 false)
  call void @acpi_table_begin(ptr noundef nonnull %6, ptr noundef nonnull %i.k) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 0, i32 noundef 2) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 65536, i32 noundef 4) #11
  %i.gf = load i32, ptr %i.eo, align 8
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 0, i32 noundef 8) #11
  %i.gg = call ptr @acpi_data_push(ptr noundef %i.fz, i32 noundef 65536) #11 ; 0 uses
  call void @bios_linker_loader_alloc(ptr noundef %i.fx, ptr noundef nonnull @.str.6, ptr noundef %i.fz, i32 noundef 1, i1 noundef zeroext false) #11
  call void @bios_linker_loader_add_pointer(ptr noundef %i.fx, ptr noundef nonnull @.str.2, i32 noundef %i.gf, i8 noundef zeroext 8, ptr noundef nonnull @.str.6, i32 noundef 0) #11
  call void @acpi_table_end(ptr noundef %i.fx, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef nonnull %i.k) #11
  %i.gh = load ptr, ptr %i.em, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = load ptr, ptr %i.ez, align 16
  %i.gl = load ptr, ptr %i.fb, align 8
  call void @build_tpm2(ptr noundef nonnull %i.k, ptr noundef %i.gh, ptr noundef %i.gj, ptr noundef %i.gk, ptr noundef %i.gl) #11
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 6 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = load i32, ptr %i.gn, align 8
  %.not186 = icmp eq i32 %i.go, 0
  br i1 %.not186, label %bb.bu, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef nonnull %i.k) #11
  %i.gp = load ptr, ptr %i.em, align 8
  %i.gq = call ptr @object_get_class(ptr noundef nonnull %1) #11
  %i.gr = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.gq, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #11
  %i.gs = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #11 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 368
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call ptr %i.gu(ptr noundef nonnull %1) #11, !inline_history !12 ; 3 uses
  %i.gw = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr @.str.177, ptr %5, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ha, i8 0, i64 7, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 1056
  %i.hd = load <2 x ptr>, ptr %i.hc, align 16
  store <2 x ptr> %i.hd, ptr %i.hb, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  call void @acpi_table_begin(ptr noundef nonnull %5, ptr noundef nonnull %i.k) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 1, i32 noundef 4) #11
  call void @build_append_int_noprefix(ptr noundef nonnull %i.k, i64 noundef 0, i32 noundef 8) #11
  %i.hf = load i32, ptr %i.gv, align 8
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.au
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ay ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [176 x i8], ptr %i.hh, i64 %indvars.iv.i ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load i64, ptr %i.hj, align 8            ; 2 uses
  %i.hl = load i64, ptr %i.hi, align 8            ; 3 uses
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp ult i32 %i.hm, 255
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 0, i32 noundef 1) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 16, i32 noundef 1) #11
  %sext113.i = shl i64 %i.hk, 32
  %i.ho = ashr exact i64 %sext113.i, 32
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef %i.ho, i32 noundef 1) #11
  %i.hp = and i64 %i.hl, 255
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef %i.hp, i32 noundef 1) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 1, i32 noundef 4) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 0, i32 noundef 1) #11
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 2, i32 noundef 1) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 24, i32 noundef 1) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 0, i32 noundef 2) #11
  %sext.i = shl i64 %i.hk, 32
  %i.hq = ashr exact i64 %sext.i, 32
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef %i.hq, i32 noundef 4) #11
  %i.hr = and i64 %i.hl, 4294967295
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef %i.hr, i32 noundef 4) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 1, i32 noundef 4) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sink.i = phi i32 [ 4, %bb.ax ], [ 3, %bb.aw ]
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 0, i32 noundef %.sink.i) #11
  call void @build_append_int_noprefix(ptr noundef %i.k, i64 noundef 0, i32 noundef 4) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hs = load i32, ptr %i.gv, align 8
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp slt i64 %indvars.iv.next.i, %i.ht
  br i1 %i.hu, label %bb.av, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.ay, %bb.au
  %i.hv = load i32, ptr %i.eo, align 8
  %i.hw = add i32 %i.gx, 1                        ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %.lr.ph119.i, label %._crit_edge120.i

.lr.ph119.i:                                      ; preds = %._crit_edge.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gs, i64 992 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gs, i64 1008
  %wide.trip.count.i = zext nneg i32 %i.hw to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bk, %.lr.ph119.i
  %indvars.iv126.i = phi i64 [ 1, %.lr.ph119.i ], [ %indvars.iv.next127.i, %bb.bk ] ; 2 uses
  %.0100116.i = phi i64 [ 0, %.lr.ph119.i ], [ %.2.i, %bb.bk ] ; 4 uses
  %i.ia = add nsw i64 %indvars.iv126.i, -1        ; 4 uses
  %i.ib = getelementptr inbounds [152 x i8], ptr %i.gy, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8            ; 4 uses
  %i.id = add i64 %i.ic, %.0100116.i              ; 8 uses
  %i.ie = icmp ult i64 %.0100116.i, 655361
  %i.if = icmp ugt i64 %i.id, 655360
  %or.cond.i = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %or.cond.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ig = add i64 %i.id, -655360                  ; 2 uses
  %.not109.i = icmp eq i64 %i.ic, %i.ig
  br i1 %.not109.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ih = sub i64 %i.ic, %i.ig
  %i.ii = trunc nuw nsw i64 %i.ia to i32
  call void @build_srat_memory(ptr noundef %i.k, i64 noundef %.0100116.i, i64 noundef %i.ih, i32 noundef %i.ii, i32 noundef 1) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ij = icmp ult i64 %i.id, 1048577
  br i1 %i.ij, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ik = add i64 %i.id, -1048576
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.az
  %.098.i = phi i64 [ 1048576, %bb.bd ], [ %.0100116.i, %bb.az ] ; 3 uses
  %.096.i = phi i64 [ %i.ik, %bb.bd ], [ %i.ic, %bb.az ] ; 2 uses
  %i.il = load i64, ptr %i.hy, align 16           ; 4 uses
  %.not110.i = icmp ule i64 %.098.i, %i.il
  %i.im = icmp ugt i64 %i.id, %i.il
  %or.cond114.i = select i1 %.not110.i, i1 %i.im, i1 false
  br i1 %or.cond114.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %.neg.i = sub i64 %i.il, %i.id
  %i.in = add i64 %.neg.i, %.096.i                ; 2 uses
  %.not111.i = icmp eq i64 %i.in, 0
  br i1 %.not111.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.io = trunc nuw nsw i64 %i.ia to i32
  call void @build_srat_memory(ptr noundef %i.k, i64 noundef %.098.i, i64 noundef %i.in, i32 noundef %i.io, i32 noundef 1) #11
  %.pre.i = load i64, ptr %i.hy, align 16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ip = phi i64 [ %.pre.i, %bb.bg ], [ %i.il, %bb.bf ]
  %i.iq = load i64, ptr %i.hz, align 16           ; 2 uses
  %i.ir = sub i64 %i.id, %i.ip                    ; 2 uses
  %i.is = add i64 %i.ir, %i.iq
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.1101.i = phi i64 [ %i.is, %bb.bh ], [ %i.id, %bb.be ] ; 2 uses
  %.199.i = phi i64 [ %i.iq, %bb.bh ], [ %.098.i, %bb.be ]
  %.197.i = phi i64 [ %i.ir, %bb.bh ], [ %.096.i, %bb.be ] ; 2 uses
  %.not112.i = icmp eq i64 %.197.i, 0
  br i1 %.not112.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.it = trunc nuw nsw i64 %i.ia to i32
  call void @build_srat_memory(ptr noundef %i.k, i64 noundef %.199.i, i64 noundef %.197.i, i32 noundef %i.it, i32 noundef 1) #11
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bc
  %.2.i = phi i64 [ %.1101.i, %bb.bi ], [ %.1101.i, %bb.bj ], [ 1048576, %bb.bc ]
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge120.i, label %bb.az, !llvm.loop !15

._crit_edge120.i:                                 ; preds = %bb.bk, %._crit_edge.i
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = load i8, ptr %i.iv, align 16, !range !7, !noundef !8
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge120.i
  call void @nvdimm_build_srat(ptr noundef %i.k) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge120.i
  call void @sgx_epc_build_srat(ptr noundef %i.k) #11
  %i.iy = load i32, ptr %i.eo, align 8
  %i.iz = sub i32 %i.iy, %i.hv
  %i.ja = udiv i32 %i.iz, 40                      ; 2 uses
  %i.jb = add i32 %i.gx, 2                        ; 2 uses
  %i.jc = icmp slt i32 %i.ja, %i.jb
  br i1 %i.jc, label %.lr.ph123.i, label %._crit_edge124.i

.lr.ph123.i:                                      ; preds = %bb.bm, %.lr.ph123.i
  %.095121.i = phi i32 [ %i.jd, %.lr.ph123.i ], [ %i.ja, %bb.bm ]
  call void @build_srat_memory(ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %i.jd = add nuw i32 %.095121.i, 1               ; 2 uses
  %exitcond129.not.i = icmp eq i32 %i.jd, %i.jb
  br i1 %exitcond129.not.i, label %._crit_edge124.i, label %.lr.ph123.i, !llvm.loop !16

._crit_edge124.i:                                 ; preds = %.lr.ph123.i, %bb.bm
  call void @build_srat_generic_affinity_structures(ptr noundef nonnull %i.k) #11
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %.not.i202 = icmp eq ptr %i.jf, null
  br i1 %.not.i202, label %build_srat.exit, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge124.i
  %i.jg = call ptr @g_array_new(i32 noundef 0, i32 noundef 1, i32 noundef 24) #11 ; 5 uses
  %i.jh = load ptr, ptr %i.gm, align 8
  %i.ji = load i32, ptr %i.jh, align 8
  %i.jj = add i32 %i.ji, -1                       ; 2 uses
  %i.jk = load ptr, ptr %i.je, align 8            ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 16           ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jn = call i64 @memory_region_size(ptr noundef nonnull %i.jm) #11
  %i.jo = add i64 %i.jn, %i.jl                    ; 2 uses
  %i.jp = call ptr @qdev_get_machine() #11
  %i.jq = call i32 @object_child_foreach_recursive(ptr noundef %i.jp, ptr noundef nonnull @sp_mem_collect_ranges_cb, ptr noundef %i.jg) #11 ; 0 uses
  call void @g_array_sort(ptr noundef %i.jg, ptr noundef nonnull @sp_mem_range_compare) #11
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8
  %.not.i.i203 = icmp eq i32 %i.js, 0
  br i1 %.not.i.i203, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bn, %bb.bp
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bp ], [ 0, %bb.bn ] ; 2 uses
  %.032.i.i = phi i64 [ %i.kf, %bb.bp ], [ %i.jl, %bb.bn ] ; 3 uses
  %i.jt = load ptr, ptr %i.jg, align 8
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %indvars.iv.i.i ; 5 uses
  %i.jv = load i64, ptr %i.ju, align 8            ; 3 uses
  %i.jw = icmp ult i64 %.032.i.i, %i.jv
  br i1 %i.jw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i
  %i.jx = sub nuw i64 %i.jv, %.032.i.i
  call void @build_srat_memory(ptr noundef %i.k, i64 noundef %.032.i.i, i64 noundef %i.jx, i32 noundef %i.jj, i32 noundef 3) #11
  %.pre.i.i = load i64, ptr %i.ju, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i.i
  %i.jy = phi i64 [ %.pre.i.i, %bb.bo ], [ %i.jv, %.lr.ph.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.kc = load i32, ptr %i.kb, align 8
  call void @build_srat_memory(ptr noundef %i.k, i64 noundef %i.jy, i64 noundef %i.ka, i32 noundef %i.kc, i32 noundef 1) #11
  %i.kd = load i64, ptr %i.ju, align 8
  %i.ke = load i64, ptr %i.jz, align 8
  %i.kf = add i64 %i.ke, %i.kd                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kg = load i32, ptr %i.jr, align 8
  %i.kh = zext i32 %i.kg to i64
  %i.ki = icmp samesign ult i64 %indvars.iv.next.i.i, %i.kh
  br i1 %i.ki, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %bb.bp, %bb.bn
  %.0.lcssa.i.i = phi i64 [ %i.jl, %bb.bn ], [ %i.kf, %bb.bp ] ; 3 uses
  %i.kj = icmp ult i64 %.0.lcssa.i.i, %i.jo
  br i1 %i.kj, label %bb.bq, label %build_srat_device_memory.exit.i

bb.bq:                                            ; preds = %._crit_edge.i.i
  %i.kk = sub nuw i64 %i.jo, %.0.lcssa.i.i
  call void @build_srat_memory(ptr noundef %i.k, i64 noundef %.0.lcssa.i.i, i64 noundef %i.kk, i32 noundef %i.jj, i32 noundef 3) #11
  br label %build_srat_device_memory.exit.i

build_srat_device_memory.exit.i:                  ; preds = %bb.bq, %._crit_edge.i.i
  call void @g_array_unref(ptr noundef nonnull %i.jg) #11
  br label %build_srat.exit

build_srat.exit:                                  ; preds = %._crit_edge124.i, %build_srat_device_memory.exit.i
  call void @acpi_table_end(ptr noundef %i.gp, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.kl = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i8, ptr %i.km, align 4, !range !7, !noundef !8
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %build_srat.exit
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef %i.k) #11
  %i.kp = load ptr, ptr %i.em, align 8
  %i.kq = load ptr, ptr %i.ez, align 16
  %i.kr = load ptr, ptr %i.fb, align 8
  call void @build_slit(ptr noundef %i.k, ptr noundef %i.kp, ptr noundef nonnull %1, ptr noundef %i.kq, ptr noundef %i.kr) #11
  %.pre = load ptr, ptr %i.gm, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %build_srat.exit
  %i.ks = phi ptr [ %.pre, %bb.br ], [ %i.kl, %build_srat.exit ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 5
  %i.ku = load i8, ptr %i.kt, align 1, !range !7, !noundef !8
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @acpi_add_table(ptr noundef %i.el, ptr noundef %i.k) #11
  %i.kw = load ptr, ptr %i.em, align 8
  %i.kx = load ptr, ptr %i.gm, align 8
  %i.ky = load ptr, ptr %i.ez, align 16
  %i.kz = load ptr, ptr %i.fb, align 8
end_hunk_0
