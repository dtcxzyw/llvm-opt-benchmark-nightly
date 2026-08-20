inline.NumInlined: 385
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@intel_bios_init:bb.a
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %bdb_find_section.exit.i38, label %parse_general_features.exit, !llvm.loop !15

bdb_find_section.exit.i38:                        ; preds = %bb.ad
  %i.ej = getelementptr i8, ptr %.011.i.i36, i64 23 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ej, null
  br i1 %.not.i39, label %bdb_find_section.exit.thread.i, label %bb.af

bdb_find_section.exit.thread.i:                   ; preds = %parse_general_features.exit, %bdb_find_section.exit.i38
  %i.ek = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i52.i = icmp eq ptr %i.ek, null
  br i1 %.not.i52.i, label %__drm_to_dev.exit.i41, label %bb.ae

bb.ae:                                            ; preds = %bdb_find_section.exit.thread.i
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  br label %__drm_to_dev.exit.i41

__drm_to_dev.exit.i41:                            ; preds = %bb.ae, %bdb_find_section.exit.thread.i
  %i.en = phi ptr [ %i.em, %bb.ae ], [ null, %bdb_find_section.exit.thread.i ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.en, i32 noundef 2, ptr noundef nonnull @.str.28) #16
  br label %parse_general_definitions.exit.preheader

bb.af:                                            ; preds = %bdb_find_section.exit.i38
  %i.eo = getelementptr i8, ptr %.011.i.i36, i64 20
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = icmp eq i8 %i.ep, 53
  br i1 %i.eq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.er = load i8, ptr %i.ej, align 1
  %i.es = icmp ugt i8 %i.er, 2
  br i1 %i.es, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr i8, ptr %.011.i.i36, i64 24
  %i.eu = load i32, ptr %i.et, align 4
  br label %get_blocksize.exit.i

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.ev = getelementptr i8, ptr %.011.i.i36, i64 21
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = zext i16 %i.ew to i32
  br label %get_blocksize.exit.i

get_blocksize.exit.i:                             ; preds = %bb.ai, %bb.ah
  %.0.i.i.i = phi i32 [ %i.eu, %bb.ah ], [ %i.ex, %bb.ai ] ; 2 uses
  %.mask.i = and i32 %.0.i.i.i, 65535             ; 2 uses
  %i.ey = trunc i32 %.0.i.i.i to i16
  %i.ez = icmp samesign ult i32 %.mask.i, 5
  br i1 %i.ez, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %get_blocksize.exit.i
  %i.fa = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i53.i = icmp eq ptr %i.fa, null
  br i1 %.not.i53.i, label %__drm_to_dev.exit54.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  br label %__drm_to_dev.exit54.i

__drm_to_dev.exit54.i:                            ; preds = %bb.ak, %bb.aj
  %i.fd = phi ptr [ %i.fc, %bb.ak ], [ null, %bb.aj ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fd, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %.mask.i) #16
  br label %parse_general_definitions.exit.preheader

bb.al:                                            ; preds = %get_blocksize.exit.i
  %i.fe = load i8, ptr %i.ej, align 1
  %i.ff = zext i8 %i.fe to i32                    ; 3 uses
  %i.fg = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i55.i = icmp eq ptr %i.fg, null
  br i1 %.not.i55.i, label %__drm_to_dev.exit56.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  br label %__drm_to_dev.exit56.i

__drm_to_dev.exit56.i:                            ; preds = %bb.am, %bb.al
  %i.fj = phi ptr [ %i.fi, %bb.am ], [ null, %bb.al ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fj, i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %i.ff) #16
  %i.fk = tail call zeroext i1 @intel_gmbus_is_valid_pin(ptr noundef %0, i32 noundef %i.ff) #16
  br i1 %i.fk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %__drm_to_dev.exit56.i
  store i32 %i.ff, ptr %i.l, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %__drm_to_dev.exit56.i
  %i.fl = getelementptr i8, ptr %.011.i.i36, i64 27 ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 1             ; 2 uses
  %i.fn = zext i8 %i.fm to i32                    ; 3 uses
  %i.fo = load i16, ptr %i.a, align 8             ; 9 uses
  %i.fp = icmp ugt i16 %i.fo, 264
  br i1 %i.fp, label %child_device_expected_size.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = icmp samesign ugt i16 %i.fo, 262
  br i1 %i.fq, label %child_device_expected_size.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = icmp samesign ugt i16 %i.fo, 255
  br i1 %i.fr, label %child_device_expected_size.exit.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fs = icmp samesign ugt i16 %i.fo, 215
  br i1 %i.fs, label %child_device_expected_size.exit.thread.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = icmp samesign ugt i16 %i.fo, 195
  br i1 %i.ft, label %child_device_expected_size.exit.thread.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fu = icmp eq i16 %i.fo, 195
  br i1 %i.fu, label %child_device_expected_size.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fv = icmp samesign ugt i16 %i.fo, 110
  br i1 %i.fv, label %child_device_expected_size.exit.thread.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fw = icmp samesign ugt i16 %i.fo, 105
  %..i.i.i = select i1 %i.fw, i32 27, i32 22
  br label %child_device_expected_size.exit.thread.i.i

child_device_expected_size.exit.i.i:              ; preds = %bb.ao
  %i.fx = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i40, label %__drm_to_dev.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %child_device_expected_size.exit.i.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.aw, %child_device_expected_size.exit.i.i
  %i.ga = phi ptr [ %i.fz, %bb.aw ], [ null, %child_device_expected_size.exit.i.i ]
  %i.gb = zext i16 %i.fo to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ga, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %i.gb, i32 noundef 44) #16
  br label %child_device_expected_size.exit.thread.i.i

child_device_expected_size.exit.thread.i.i:       ; preds = %__drm_to_dev.exit.i.i, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.0.i57.i = phi i32 [ 44, %__drm_to_dev.exit.i.i ], [ %..i.i.i, %bb.av ], [ 37, %bb.at ], [ 38, %bb.as ], [ 39, %bb.ar ], [ 40, %bb.aq ], [ 44, %bb.ap ], [ 33, %bb.au ] ; 2 uses
  %.not.i58.i = icmp eq i32 %.0.i57.i, %i.fn
  br i1 %.not.i58.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %child_device_expected_size.exit.thread.i.i
  %i.gc = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i, label %__drm_to_dev.exit18.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  br label %__drm_to_dev.exit18.i.i

__drm_to_dev.exit18.i.i:                          ; preds = %bb.ay, %bb.ax
  %i.gf = phi ptr [ %i.ge, %bb.ay ], [ null, %bb.ax ]
  %i.gg = load i16, ptr %i.a, align 8
  %i.gh = zext i16 %i.gg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gf, ptr noundef nonnull @.str.34, i32 noundef range(i32 0, 256) %i.fn, i32 noundef %.0.i57.i, i32 noundef %i.gh) #17
  br label %bb.az

bb.az:                                            ; preds = %__drm_to_dev.exit18.i.i, %child_device_expected_size.exit.thread.i.i
  %i.gi = icmp ugt i8 %i.fm, 32
  br i1 %i.gi, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i19.i.i, label %child_device_size_valid.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  br label %child_device_size_valid.exit.i

child_device_size_valid.exit.i:                   ; preds = %bb.bb, %bb.ba
  %i.gm = phi ptr [ %i.gl, %bb.bb ], [ null, %bb.ba ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gm, i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef range(i32 0, 256) %i.fn) #16
  br label %parse_general_definitions.exit.preheader

bb.bc:                                            ; preds = %bb.az
  %.lhs.trunc.i = add i16 %i.ey, -5               ; 2 uses
  %i.gn = load i8, ptr %i.fl, align 1
  %.rhs.trunc.i = zext i8 %i.gn to i16            ; 2 uses
  %i.go = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %i.gp = zext i16 %i.go to i32
  %.not69.i = icmp ult i16 %.lhs.trunc.i, %.rhs.trunc.i
  br i1 %.not69.i, label %_kzalloc_noprof.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bc
  %i.gq = getelementptr i8, ptr %.011.i.i36, i64 28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bh, %.lr.ph.i
  %.068.i = phi i32 [ 0, %.lr.ph.i ], [ %i.hl, %bb.bh ] ; 2 uses
  %i.gr = load i8, ptr %i.fl, align 1
  %i.gs = zext i8 %i.gr to i32
  %i.gt = mul i32 %.068.i, %i.gs
  %1 = sext i32 %i.gt to i64
  %i.gu = getelementptr i8, ptr %i.gq, i64 %1     ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 2
  %i.gw = load i16, ptr %i.gv, align 1            ; 2 uses
  %.not49.i = icmp eq i16 %i.gw, 0
  br i1 %.not49.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gx = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i59.i = icmp eq ptr %i.gx, null
  br i1 %.not.i59.i, label %_kzalloc_noprof.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  br label %_kzalloc_noprof.exit.i

_kzalloc_noprof.exit.i:                           ; preds = %bb.bf, %bb.be
  %i.ha = phi ptr [ %i.gz, %bb.bf ], [ null, %bb.be ]
  %i.hb = zext i16 %i.gw to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ha, i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %i.hb) #16
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.hd = tail call noalias align 8 dereferenceable_or_null(80) ptr @__kmalloc_cache_noprof(ptr noundef %i.hc, i32 noundef 3520, i64 noundef 80) #18 ; 5 uses
  %.not50.i = icmp eq ptr %i.hd, null
  br i1 %.not50.i, label %_kzalloc_noprof.exit._crit_edge.i, label %bb.bg

bb.bg:                                            ; preds = %_kzalloc_noprof.exit.i
  store ptr %0, ptr %i.hd, align 8
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = load i8, ptr %i.fl, align 1
  %i.hg = tail call i8 @llvm.umin.i8(i8 %i.hf, i8 44)
  %i.hh = zext nneg i8 %i.hg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.he, ptr align 1 %i.gu, i64 %i.hh, i1 false)
  %i.hi = getelementptr i8, ptr %i.hd, i64 64     ; 3 uses
  %i.hj = load ptr, ptr %i.c, align 8             ; 2 uses
  store ptr %i.hi, ptr %i.c, align 8
  store ptr %i.b, ptr %i.hi, align 8
  %i.hk = getelementptr i8, ptr %i.hd, i64 72
  store ptr %i.hj, ptr %i.hk, align 8
  store volatile ptr %i.hi, ptr %i.hj, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %i.hl = add nuw nsw i32 %.068.i, 1              ; 2 uses
  %i.hm = icmp samesign ult i32 %i.hl, %i.gp
  br i1 %i.hm, label %bb.bd, label %_kzalloc_noprof.exit._crit_edge.i, !llvm.loop !18

_kzalloc_noprof.exit._crit_edge.i:                ; preds = %bb.bh, %_kzalloc_noprof.exit.i, %bb.bc
  %i.hn = load volatile ptr, ptr %i.b, align 8
  %.not66.i = icmp eq ptr %i.hn, %i.b
  br i1 %.not66.i, label %bb.bi, label %parse_general_definitions.exit.preheader

bb.bi:                                            ; preds = %_kzalloc_noprof.exit._crit_edge.i
  %i.ho = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i62.i = icmp eq ptr %i.ho, null
  br i1 %.not.i62.i, label %__drm_to_dev.exit63.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  br label %__drm_to_dev.exit63.i

__drm_to_dev.exit63.i:                            ; preds = %bb.bj, %bb.bi
  %i.hr = phi ptr [ %i.hq, %bb.bj ], [ null, %bb.bi ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hr, i32 noundef 2, ptr noundef nonnull @.str.32) #16
  br label %parse_general_definitions.exit.preheader

parse_general_definitions.exit.preheader:         ; preds = %__drm_to_dev.exit.i41, %__drm_to_dev.exit54.i, %child_device_size_valid.exit.i, %_kzalloc_noprof.exit._crit_edge.i, %__drm_to_dev.exit63.i
  br label %parse_general_definitions.exit

parse_general_definitions.exit:                   ; preds = %parse_general_definitions.exit.preheader, %bb.bk
  %.011.in.i.i42 = phi ptr [ %.011.i.i43, %bb.bk ], [ %i.d, %parse_general_definitions.exit.preheader ]
  %.011.i.i43 = load ptr, ptr %.011.in.i.i42, align 8 ; 6 uses
  %.not.i.i44 = icmp eq ptr %.011.i.i43, %i.d
  br i1 %.not.i.i44, label %parse_driver_features.exit, label %bb.bk

bb.bk:                                            ; preds = %parse_general_definitions.exit
  %i.hs = getelementptr i8, ptr %.011.i.i43, i64 16
  %i.ht = load i32, ptr %i.hs, align 8
  %i.hu = icmp eq i32 %i.ht, 12
  br i1 %i.hu, label %bdb_find_section.exit.i45, label %parse_general_definitions.exit, !llvm.loop !15

bdb_find_section.exit.i45:                        ; preds = %bb.bk
  %i.hv = getelementptr i8, ptr %.011.i.i43, i64 23
  %.not.i46 = icmp eq ptr %i.hv, null
  br i1 %.not.i46, label %parse_driver_features.exit, label %bb.bl

bb.bl:                                            ; preds = %bdb_find_section.exit.i45
  %i.hw = load i16, ptr %i.r, align 8
  %i.hx = icmp ugt i16 %i.hw, 4
  br i1 %i.hx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hy = getelementptr i8, ptr %.011.i.i43, i64 30
  %i.hz = load i16, ptr %i.hy, align 1
  %i.ia = and i16 %i.hz, 6144
  %.not12.i = icmp eq i16 %i.ia, 2048
  br i1 %.not12.i, label %parse_driver_features.exit, label %bdb_find_section.exit.thread.sink.split.i

bb.bn:                                            ; preds = %bb.bl
  %i.ib = load i16, ptr %i.a, align 8
  %i.ic = icmp ugt i16 %i.ib, 133
  br i1 %i.ic, label %bb.bo, label %parse_compression_parameters.exit

bb.bo:                                            ; preds = %bb.bn
  %i.id = getelementptr i8, ptr %.011.i.i43, i64 30
  %i.ie = load i16, ptr %i.id, align 1
  %i.if = lshr i16 %i.ie, 11
  %i.ig = and i16 %i.if, 3
  switch i16 %i.ig, label %bdb_find_section.exit.thread.sink.split.i [
    i16 1, label %parse_driver_features.exit
    i16 3, label %parse_driver_features.exit
  ]

bdb_find_section.exit.thread.sink.split.i:        ; preds = %bb.bo, %bb.bm
  %i.ih = load i8, ptr %i.m, align 2
  %i.ii = and i8 %i.ih, -9
  store i8 %i.ii, ptr %i.m, align 2
  br label %parse_driver_features.exit

parse_driver_features.exit:                       ; preds = %parse_general_definitions.exit, %bdb_find_section.exit.i45, %bb.bm, %bb.bo, %bb.bo, %bdb_find_section.exit.thread.sink.split.i
  %.pr = load i16, ptr %i.a, align 8
  %i.ij = icmp ult i16 %.pr, 198
  br i1 %i.ij, label %parse_compression_parameters.exit, label %.preheader

.preheader:                                       ; preds = %parse_driver_features.exit, %bb.bp
  %.011.in.i.i48 = phi ptr [ %.011.i.i49, %bb.bp ], [ %i.d, %parse_driver_features.exit ]
  %.011.i.i49 = load ptr, ptr %.011.in.i.i48, align 8 ; 8 uses
  %.not.i.i50 = icmp eq ptr %.011.i.i49, %i.d
  br i1 %.not.i.i50, label %bdb_find_section.exit.thread.i59, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.ik = getelementptr i8, ptr %.011.i.i49, i64 16
  %i.il = load i32, ptr %i.ik, align 8
  %i.im = icmp eq i32 %i.il, 56
  br i1 %i.im, label %bdb_find_section.exit.i51, label %.preheader, !llvm.loop !15

bdb_find_section.exit.i51:                        ; preds = %bb.bp
  %i.in = getelementptr i8, ptr %.011.i.i49, i64 23 ; 2 uses
  %.not.i52 = icmp eq ptr %i.in, null
  br i1 %.not.i52, label %bdb_find_section.exit.thread.i59, label %bb.bq

bb.bq:                                            ; preds = %bdb_find_section.exit.i51
  %i.io = load i16, ptr %i.in, align 1
  %.not32.i = icmp eq i16 %i.io, 13
  br i1 %.not32.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ip = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i36.i = icmp eq ptr %i.ip, null
  br i1 %.not.i36.i, label %__drm_to_dev.exit.i53, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  br label %__drm_to_dev.exit.i53

__drm_to_dev.exit.i53:                            ; preds = %bb.bs, %bb.br
  %i.is = phi ptr [ %i.ir, %bb.bs ], [ null, %bb.br ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.is, i32 noundef 2, ptr noundef nonnull @.str.36) #16
  br label %parse_compression_parameters.exit

bb.bt:                                            ; preds = %bb.bq
  %i.it = getelementptr i8, ptr %.011.i.i49, i64 20
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = icmp eq i8 %i.iu, 53
  br i1 %i.iv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iw = getelementptr i8, ptr %.011.i.i49, i64 24
  %i.ix = load i32, ptr %i.iw, align 4
  br label %get_blocksize.exit.i54

bb.bv:                                            ; preds = %bb.bt
  %i.iy = getelementptr i8, ptr %.011.i.i49, i64 21
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = zext i16 %i.iz to i32
  br label %get_blocksize.exit.i54

get_blocksize.exit.i54:                           ; preds = %bb.bv, %bb.bu
  %.0.i.i.i55 = phi i32 [ %i.ix, %bb.bu ], [ %i.ja, %bb.bv ]
  %i.jb = and i32 %.0.i.i.i55, 65534
  %i.jc = icmp samesign ult i32 %i.jb, 210
  br i1 %i.jc, label %bb.bw, label %bdb_find_section.exit.thread.thread.i

bb.bw:                                            ; preds = %get_blocksize.exit.i54
  %i.jd = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i37.i = icmp eq ptr %i.jd, null
  br i1 %.not.i37.i, label %__drm_to_dev.exit38.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  br label %__drm_to_dev.exit38.i

__drm_to_dev.exit38.i:                            ; preds = %bb.bx, %bb.bw
  %i.jg = phi ptr [ %i.jf, %bb.bx ], [ null, %bb.bw ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.jg, i32 noundef 2, ptr noundef nonnull @.str.37) #16
  br label %parse_compression_parameters.exit

bdb_find_section.exit.thread.i59:                 ; preds = %.preheader, %bdb_find_section.exit.i51
end_hunk_0
