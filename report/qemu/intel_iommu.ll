Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/intel_iommu?download=true
inline.NumInlined: 680
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vtd_do_iommu_translate:bb.a
  %i.cf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i157 = icmp eq i32 %i.cf, 0
  br i1 %.not.i157, label %trace_vtd_iotlb_cc_update.exit, label %bb.t, !prof !17

bb.t:                                             ; preds = %.thread
  %i.cg = load i16, ptr @_TRACE_VTD_IOTLB_CC_UPDATE_DSTATE, align 2
  %.not6.i158 = icmp eq i16 %i.cg, 0
  br i1 %.not6.i158, label %trace_vtd_iotlb_cc_update.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr @qemu_loglevel, align 4
  %i.ci = and i32 %i.ch, 32768
  %.not7.i = icmp eq i32 %i.ci, 0
  br i1 %.not7.i, label %trace_vtd_iotlb_cc_update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = and i32 %i.g, 255
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.250, i32 noundef %i.cj, i32 noundef %i.l, i64 noundef %i.cc, i64 noundef %i.ca, i32 noundef %i.cd, i32 noundef %i.ce) #17
  br label %trace_vtd_iotlb_cc_update.exit

trace_vtd_iotlb_cc_update.exit:                   ; preds = %.thread, %bb.t, %bb.u, %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.cl = load i32, ptr %i.ax, align 16
  store i32 %i.cl, ptr %i.av, align 8
  br label %bb.w

bb.w:                                             ; preds = %trace_vtd_iotlb_cc_hit.exit, %bb.n, %bb.o, %trace_vtd_iotlb_cc_update.exit
  %.val = load i64, ptr %19, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 4184 ; 9 uses
  %i.cn = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.x, label %.split

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %17, i8 0, i64 64, i1 false), !annotation !14
  %i.cp = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val, ptr noundef nonnull %17, i32 noundef %i.j)
  %.not.i159 = icmp eq i32 %i.cp, 0
  br i1 %.not.i159, label %vtd_dev_pt_enabled.exit, label %vtd_dev_pt_enabled.exit.thread

vtd_dev_pt_enabled.exit.thread:                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ah

.split:                                           ; preds = %bb.w
  %i.cq = and i64 %.val, 12
  %i.cr = icmp eq i64 %i.cq, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br i1 %i.cr, label %bb.y, label %bb.ah

vtd_dev_pt_enabled.exit:                          ; preds = %bb.x
  %.val7.i = load i64, ptr %17, align 8
  %i.cs = and i64 %.val7.i, 448
  %i.ct = icmp eq i64 %i.cs, 256
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br i1 %i.ct, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %.split, %vtd_dev_pt_enabled.exit
  %i.cu = and i64 %3, -4096                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 4095, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 3, ptr %i.cy, align 8
  %i.cz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i160 = icmp eq i32 %i.cz, 0
  br i1 %.not.i160, label %trace_vtd_translate_pt.exit, label %bb.z, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.da = load i16, ptr @_TRACE_VTD_TRANSLATE_PT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.da, 0
  br i1 %.not2.i, label %trace_vtd_translate_pt.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load i32, ptr @qemu_loglevel, align 4
  %i.dc = and i32 %i.db, 32768
  %.not3.i = icmp eq i32 %i.dc, 0
  br i1 %.not3.i, label %trace_vtd_translate_pt.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = and i32 %i.m, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.251, i32 noundef %i.dd, i64 noundef %i.cu) #17
  br label %trace_vtd_translate_pt.exit

trace_vtd_translate_pt.exit:                      ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.de = getelementptr i8, ptr %i.f, i64 4240
  %.val153 = load ptr, ptr %i.de, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i64 0, ptr %16, align 8, !annotation !14
  store i16 %i.n, ptr %16, align 8
  %i.df = call ptr @g_hash_table_find(ptr noundef %.val153, ptr noundef nonnull @vtd_find_as_by_sid_and_pasid, ptr noundef nonnull %16) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.not.i161 = icmp eq ptr %i.df, null
  br i1 %.not.i161, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %trace_vtd_translate_pt.exit
  %i.dg = call fastcc zeroext i1 @vtd_switch_address_space(ptr noundef nonnull %i.df)
  %not..i = xor i1 %i.dg, true
  %i.dh = zext i1 %not..i to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %trace_vtd_translate_pt.exit
  %.0.i162 = phi i32 [ 0, %trace_vtd_translate_pt.exit ], [ %i.dh, %bb.ac ]
  %i.di = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %vtd_pt_enable_fast_path.exit, label %bb.ae, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load i16, ptr @_TRACE_VTD_PT_ENABLE_FAST_PATH_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not2.i.i, label %vtd_pt_enable_fast_path.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i32, ptr @qemu_loglevel, align 4
  %i.dl = and i32 %i.dk, 32768
  %.not3.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not3.i.i, label %vtd_pt_enable_fast_path.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = and i32 %i.m, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.252, i32 noundef %i.dm, i32 noundef %.0.i162) #17
  br label %vtd_pt_enable_fast_path.exit

vtd_pt_enable_fast_path.exit:                     ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  br label %bb.cr

bb.ah:                                            ; preds = %.split, %vtd_dev_pt_enabled.exit.thread, %vtd_dev_pt_enabled.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 4166 ; 7 uses
  %i.do = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.dp = trunc nuw i8 %i.do to i1
  %.pre350 = load i8, ptr %i.cm, align 8, !range !15
  %i.dq = trunc nuw i8 %.pre350 to i1             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 6340 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 4             ; 3 uses
  br i1 %i.dp, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dq, label %vtd_get_iova_pgtbl_base.exit.i, label %.thread367

.thread367:                                       ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  br label %bb.bh

vtd_get_iova_pgtbl_base.exit.i:                   ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i = load i64, ptr %19, align 8
  %i.dt = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i, ptr noundef nonnull %15, i32 noundef %i.j) ; 0 uses
  %i.du = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.val6.i.i = load i64, ptr %i.dw, align 8
  %i.dx = load i64, ptr %15, align 8
  %.0.in.i.i = select i1 %i.dv, i64 %.val6.i.i, i64 %i.dx
  %.0.i.i = and i64 %.0.in.i.i, -4096
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.dy = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i65.i = load i64, ptr %19, align 8
  %i.ea = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i65.i, ptr noundef nonnull %14, i32 noundef %i.j) ; 0 uses
  %i.eb = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = lshr i32 %i.ef, 2
  %i.eh = and i32 %i.eg, 3
  %i.ei = or disjoint i32 %i.eh, 4
  br label %vtd_get_iova_level.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ej = load i64, ptr %14, align 8
  %i.ek = trunc i64 %i.ej to i32
  %i.el = lshr i32 %i.ek, 2
  %i.em = and i32 %i.el, 7
  %i.en = add nuw nsw i32 %i.em, 2
  br label %vtd_get_iova_level.exit.i

bb.am:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i63.i = load i64, ptr %i.eo, align 8
  %i.ep = trunc i64 %.val.i63.i to i32
  %i.eq = and i32 %i.ep, 7
  %i.er = add nuw nsw i32 %i.eq, 2
  br label %vtd_get_iova_level.exit.i

vtd_get_iova_level.exit.i:                        ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i64.i = phi i32 [ %i.ei, %bb.ak ], [ %i.en, %bb.al ], [ %i.er, %bb.am ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.es = load i8, ptr %i.dr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.et = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %vtd_get_iova_level.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i.i.i = load i64, ptr %19, align 8
  %i.ev = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i.i.i, ptr noundef nonnull %13, i32 noundef %i.j) ; 0 uses
  %i.ew = load i64, ptr %13, align 8
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = lshr i32 %i.ex, 2
  br label %vtd_iova_fs_check_canonical.exit.i

bb.ao:                                            ; preds = %vtd_get_iova_level.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val5.i.i.i.i = load i64, ptr %i.ez, align 8
  %i.fa = trunc i64 %.val5.i.i.i.i to i32
  br label %vtd_iova_fs_check_canonical.exit.i

vtd_iova_fs_check_canonical.exit.i:               ; preds = %bb.ao, %bb.an
  %.0.in.in.in.i.i.i.i = phi i32 [ %i.ey, %bb.an ], [ %i.fa, %bb.ao ]
  %.0.in.in.i.i.i.i = and i32 %.0.in.in.in.i.i.i.i, 7
  %.0.in.i.i.i.i = mul nuw nsw i32 %.0.in.in.i.i.i.i, 9
  %.0.i.i.i.i = add nuw nsw i32 %.0.in.i.i.i.i, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.fb = zext i8 %i.es to i32
  %i.fc = call i32 @llvm.umin.i32(i32 %.0.i.i.i.i, i32 %i.fb)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd                    ; 2 uses
  %i.ff = sub i64 0, %i.fe                        ; 2 uses
  %i.fg = lshr i64 %i.fe, 1
  %i.fh = and i64 %i.fg, %3
  %.not.i.i163 = icmp eq i64 %i.fh, 0
  %..i.i = select i1 %.not.i.i163, i64 0, i64 %i.ff
  %i.fi = and i64 %3, %i.ff
  %.0.i66.i = icmp eq i64 %i.fi, %..i.i
  br i1 %.0.i66.i, label %vtd_iova_level_offset.exit.lr.ph.i, label %bb.ap

bb.ap:                                            ; preds = %vtd_iova_fs_check_canonical.exit.i
  %i.fj = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_fspte.print_once_, ptr noundef nonnull @.str.253, ptr noundef nonnull @__func__.vtd_iova_to_fspte, i64 noundef %3, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

vtd_iova_level_offset.exit.lr.ph.i:               ; preds = %vtd_iova_fs_check_canonical.exit.i
  %i.fk = icmp ne i32 %6, 2
  %i.fl = zext nneg i8 %i.ds to i64
  %notmask.i.i = shl nsw i64 -1, %i.fl
  %i.fm = and i64 %notmask.i.i, 9223372036854771712
  %i.fn = xor i64 %i.fm, 9223372036854771712
  %.first_iter = icmp samesign ult i32 %.0.i64.i, 5
  br label %vtd_iova_level_offset.exit.i

vtd_iova_level_offset.exit.i:                     ; preds = %bb.bc, %vtd_iova_level_offset.exit.lr.ph.i
  %.2229 = phi i32 [ %.0.i64.i, %vtd_iova_level_offset.exit.lr.ph.i ], [ %i.hm, %bb.bc ] ; 14 uses
  %.1220 = phi i8 [ 1, %vtd_iova_level_offset.exit.lr.ph.i ], [ %i.gy, %bb.bc ]
  %.05993.i = phi i64 [ %.0.i.i, %vtd_iova_level_offset.exit.lr.ph.i ], [ %i.hl, %bb.bc ]
  %i.fo = mul nuw nsw i32 %.2229, 9
  %i.fp = add nuw nsw i32 %i.fo, 3
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = lshr i64 %3, %i.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !annotation !14
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = and i64 %i.fs, 4088
  %i.fu = add nuw i64 %i.ft, %.05993.i            ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.fv = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.fu, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext false) #17
  %.not.i67.i = icmp ne i32 %i.fv, 0
  %i.fw = load i64, ptr %i.c, align 8             ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = select i1 %.not.i67.i, i1 true, i1 %i.fx
  br i1 %i.fy, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %vtd_iova_level_offset.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.fz = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i70.i = load i64, ptr %19, align 8
  %i.gb = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i70.i, ptr noundef nonnull %12, i32 noundef %i.j) ; 0 uses
  %i.gc = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = lshr i32 %i.gg, 2
  %i.gi = and i32 %i.gh, 3
  %i.gj = or disjoint i32 %i.gi, 4
  br label %vtd_get_iova_level.exit71.i

bb.at:                                            ; preds = %bb.ar
  %i.gk = load i64, ptr %12, align 8
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = lshr i32 %i.gl, 2
  %i.gn = and i32 %i.gm, 7
  %i.go = add nuw nsw i32 %i.gn, 2
  br label %vtd_get_iova_level.exit71.i

bb.au:                                            ; preds = %bb.aq
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i68.i = load i64, ptr %i.gp, align 8
  %i.gq = trunc i64 %.val.i68.i to i32
  %i.gr = and i32 %i.gq, 7
  %i.gs = add nuw nsw i32 %i.gr, 2
  br label %vtd_get_iova_level.exit71.i

vtd_get_iova_level.exit71.i:                      ; preds = %bb.au, %bb.at, %bb.as
  %.0.i69.i = phi i32 [ %i.gj, %bb.as ], [ %i.go, %bb.at ], [ %i.gs, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.gt = icmp eq i32 %.2229, %.0.i69.i
  %..i.neg = select i1 %i.gt, i32 115, i32 112
  br label %vtd_iova_to_fspte.exit.thread

bb.av:                                            ; preds = %vtd_iova_level_offset.exit.i
  %i.gu = trunc i64 %i.fw to i1
  br i1 %i.gu, label %bb.aw, label %vtd_iova_to_fspte.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.gv = and i64 %i.fw, 4
  %.not.i165 = icmp eq i64 %i.gv, 0
  br i1 %.not.i165, label %vtd_iova_to_fspte.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = and i64 %i.fw, 2                        ; 2 uses
  %.lobit.i = lshr exact i64 %i.gw, 1
  %i.gx = trunc nuw nsw i64 %.lobit.i to i8
  %i.gy = and i8 %.1220, %i.gx                    ; 2 uses
  %i.gz = icmp eq i64 %i.gw, 0
  %or.cond.i = and i1 %i.fk, %i.gz
  %or.cond94.i = select i1 %4, i1 %or.cond.i, i1 false
  br i1 %or.cond94.i, label %vtd_is_recoverable_fault.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.first_iter, label %vtd_fspte_nonzero_rsvd.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @__assert_fail(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.1, i32 noundef 1928, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_fspte_nonzero_rsvd) #19
  unreachable

vtd_fspte_nonzero_rsvd.exit.i:                    ; preds = %bb.ay
  %i.ha = and i32 %.2229, 6
  %or.cond.i.i = icmp ne i32 %i.ha, 2
  %i.hb = and i64 %i.fw, 128                      ; 2 uses
  %.not11.i.i = icmp eq i64 %i.hb, 0
  %or.cond12.i.i = or i1 %or.cond.i.i, %.not11.i.i
  %i.hc = zext nneg i32 %.2229 to i64
  %.0.in.v.i.i = select i1 %or.cond12.i.i, ptr @vtd_fpte_rsvd, ptr @vtd_fpte_rsvd_large
  %.0.in.i73.i = getelementptr inbounds nuw [8 x i8], ptr %.0.in.v.i.i, i64 %i.hc
  %.0.i74.i = load i64, ptr %.0.in.i73.i, align 8
  %i.hd = and i64 %.0.i74.i, %i.fw
  %.not79.i = icmp eq i64 %i.hd, 0
  br i1 %.not79.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %vtd_fspte_nonzero_rsvd.exit.i
  %i.he = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_fspte.print_once_.254, ptr noundef nonnull @.str.255, ptr noundef nonnull @__func__.vtd_iova_to_fspte, i64 noundef %3, i32 noundef %.2229, i64 noundef %i.fw, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

bb.bb:                                            ; preds = %vtd_fspte_nonzero_rsvd.exit.i
  %i.hf = icmp eq i32 %.2229, 1
  %i.hg = icmp ne i64 %i.hb, 0
  %i.hh = or i1 %i.hf, %i.hg                      ; 2 uses
  %or.cond3.i = and i1 %4, %i.hh
  %spec.select.i = select i1 %or.cond3.i, i64 96, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hi = and i64 %spec.select.i, %i.fw
  %.not.i75.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i75.i, label %vtd_set_flag_in_pte.exit.i, label %vtd_set_flag_in_pte.exit.thread.i

vtd_set_flag_in_pte.exit.thread.i:                ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %vtd_set_flag_in_pte.exit._crit_edge.i

vtd_set_flag_in_pte.exit.i:                       ; preds = %bb.bb
  %i.hj = or i64 %spec.select.i, %i.fw
  store i64 %i.hj, ptr %i.b, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.hk = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.fu, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext true) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not62.i = icmp eq i32 %i.hk, 0
  br i1 %.not62.i, label %vtd_set_flag_in_pte.exit._crit_edge.i, label %vtd_iova_to_fspte.exit.thread

vtd_set_flag_in_pte.exit._crit_edge.i:            ; preds = %vtd_set_flag_in_pte.exit.i, %vtd_set_flag_in_pte.exit.thread.i
  br i1 %i.hh, label %vtd_pt_level_page_mask.exit, label %bb.bc

bb.bc:                                            ; preds = %vtd_set_flag_in_pte.exit._crit_edge.i
  %i.hl = and i64 %i.fw, %i.fn
  %i.hm = add nsw i32 %.2229, -1
  br label %vtd_iova_level_offset.exit.i

bb.bd:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  br i1 %i.dq, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i187 = load i64, ptr %19, align 8
  %i.hn = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i187, ptr noundef nonnull %11, i32 noundef %i.j) ; 0 uses
  %i.ho = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.val6.i.i188 = load i64, ptr %i.hq, align 8
  br label %vtd_get_iova_pgtbl_base.exit.i167

bb.bg:                                            ; preds = %bb.be
  %i.hr = load i64, ptr %11, align 8
  br label %vtd_get_iova_pgtbl_base.exit.i167

bb.bh:                                            ; preds = %.thread367, %bb.bd
  %.val7.i.i166 = load i64, ptr %19, align 8
  br label %vtd_get_iova_pgtbl_base.exit.i167

vtd_get_iova_pgtbl_base.exit.i167:                ; preds = %bb.bh, %bb.bg, %bb.bf
  %.0.in.i.i168 = phi i64 [ %.val6.i.i188, %bb.bf ], [ %i.hr, %bb.bg ], [ %.val7.i.i166, %bb.bh ]
  %.0.i.i169 = and i64 %.0.in.i.i168, -4096
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.hs = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i59.i = load i64, ptr %19, align 8
  %i.hu = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i59.i, ptr noundef nonnull %10, i32 noundef %i.j) ; 0 uses
  %i.hv = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = lshr i32 %i.hz, 2
  %i.ib = and i32 %i.ia, 3
  %i.ic = or disjoint i32 %i.ib, 4
  br label %vtd_get_iova_level.exit.i170

bb.bk:                                            ; preds = %bb.bi
  %i.id = load i64, ptr %10, align 8
  %i.ie = trunc i64 %i.id to i32
  %i.if = lshr i32 %i.ie, 2
  %i.ig = and i32 %i.if, 7
  %i.ih = add nuw nsw i32 %i.ig, 2
  br label %vtd_get_iova_level.exit.i170

bb.bl:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i167
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i57.i = load i64, ptr %i.ii, align 8
  %i.ij = trunc i64 %.val.i57.i to i32
  %i.ik = and i32 %i.ij, 7
  %i.il = add nuw nsw i32 %i.ik, 2
  br label %vtd_get_iova_level.exit.i170

vtd_get_iova_level.exit.i170:                     ; preds = %bb.bl, %bb.bk, %bb.bj
  %.0.i58.i = phi i32 [ %i.ic, %bb.bj ], [ %i.ih, %bb.bk ], [ %i.il, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.im = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %vtd_get_iova_level.exit.i170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i.i.i186 = load i64, ptr %19, align 8
  %i.io = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i.i.i186, ptr noundef nonnull %9, i32 noundef %i.j) ; 0 uses
  %i.ip = load i64, ptr %9, align 8
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = lshr i32 %i.iq, 2
  br label %vtd_iova_ss_range_check.exit.i

bb.bn:                                            ; preds = %vtd_get_iova_level.exit.i170
  %i.is = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val5.i.i.i.i171 = load i64, ptr %i.is, align 8
  %i.it = trunc i64 %.val5.i.i.i.i171 to i32
  br label %vtd_iova_ss_range_check.exit.i

vtd_iova_ss_range_check.exit.i:                   ; preds = %bb.bn, %bb.bm
  %.0.in.in.in.i.i.i.i172 = phi i32 [ %i.ir, %bb.bm ], [ %i.it, %bb.bn ]
  %.0.in.in.i.i.i.i173 = and i32 %.0.in.in.in.i.i.i.i172, 7
  %.0.in.i.i.i.i174 = mul nuw nsw i32 %.0.in.in.i.i.i.i173, 9
  %.0.i.i.i.i175 = add nuw nsw i32 %.0.in.i.i.i.i174, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.iu = zext i8 %i.ds to i32
  %i.iv = call i32 @llvm.umin.i32(i32 %.0.i.i.i.i175, i32 %i.iu)
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 %3, %i.iw
  %.not.i.i176 = icmp eq i64 %i.ix, 0
  br i1 %.not.i.i176, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %vtd_iova_ss_range_check.exit.i
  %i.iy = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_sspte.print_once_, ptr noundef nonnull @.str.257, ptr noundef nonnull @__func__.vtd_iova_to_sspte, i64 noundef %3, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

bb.bp:                                            ; preds = %vtd_iova_ss_range_check.exit.i
  %i.iz = select i1 %4, i64 2, i64 1
  %i.ja = zext nneg i8 %i.ds to i64
  %notmask.i.i178 = shl nsw i64 -1, %i.ja
  %i.jb = and i64 %notmask.i.i178, 9223372036854771712
  %i.jc = xor i64 %i.jb, 9223372036854771712
  br label %vtd_iova_level_offset.exit.i179

vtd_iova_level_offset.exit.i179:                  ; preds = %bb.cb, %bb.bp
  %.3225 = phi i8 [ 1, %bb.bp ], [ %i.kl, %bb.cb ]
  %.3 = phi i8 [ 1, %bb.bp ], [ %i.kn, %bb.cb ]
  %.055.i = phi i32 [ %.0.i58.i, %bb.bp ], [ %i.lb, %bb.cb ] ; 10 uses
  %.054.i = phi i64 [ %.0.i.i169, %bb.bp ], [ %i.la, %bb.cb ]
  %i.jd = mul nuw nsw i32 %.055.i, 9
  %i.je = add nuw nsw i32 %i.jd, 3
  %i.jf = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jg = lshr i64 %3, %i.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !14
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = and i64 %i.jh, 4088
  %i.jj = add nuw i64 %i.ji, %.054.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.jk = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.jj, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext false) #17
  %.not.i60.i = icmp ne i32 %i.jk, 0
  %i.jl = load i64, ptr %i.a, align 8             ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.jm = icmp eq i64 %i.jl, -1
  %i.jn = select i1 %.not.i60.i, i1 true, i1 %i.jm
  br i1 %i.jn, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %vtd_iova_level_offset.exit.i179
  %i.jo = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_sspte.print_once_.258, ptr noundef nonnull @.str.259, ptr noundef nonnull @__func__.vtd_iova_to_sspte, i64 noundef %3, i32 noundef %i.j) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.jp = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.jq = trunc nuw i8 %i.jp to i1
end_hunk_0
