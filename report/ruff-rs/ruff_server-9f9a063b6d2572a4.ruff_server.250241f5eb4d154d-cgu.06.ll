inline.NumInlined: 2671
inline.NumDeleted: 1505
begin_hunk_0_@_RNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB5_17RuffSettingsIndex3new:bb.a
  %i.dp = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store ptr %2, ptr %i.cp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %3, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %i.cp, ptr %i.co, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  store ptr @120, ptr %i.cq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.co, ptr %i.ds, align 8
  store ptr %i.cq, ptr %i.cr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr @54, ptr %i.dt, align 8
  store i64 1, ptr %i.cs, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.dq, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
  %i.du = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5104
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.g, label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit

bb.g:                                             ; preds = %bb.f
  %i.dw = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5104 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 6
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ugt i64 %i.dw, 3
  br i1 %i.dy, label %bb.h, label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit

bb.h:                                             ; preds = %bb.g
  %i.dz = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !noalias !5104, !nonnull !3, !align !67, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5104
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !3, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !3
  store i64 4, ptr %i.q, align 8, !noalias !5104
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.eb, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5104
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5104
  %i.ee = call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger() ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ee, 0      ; 2 uses
  %i.eg = extractvalue { ptr, ptr } %i.ee, 1      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !3, !nonnull !3
  %i.ej = call noundef zeroext i1 %i.ei(ptr noundef %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !inline_history !5107
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dz, ptr noundef nonnull %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5104
  br label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit

_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit: ; preds = %bb.f, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.m, %bb.l, %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store ptr null, ptr %i.ch, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 0, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.3.0..sroa_idx.i321 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.049.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.3.0..sroa_idx.i293 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  br label %bb.q

bb.l:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d
  %i.fd = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ff = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.fg = icmp ult i64 %i.ff, 6
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp samesign ugt i64 %i.ff, 3
  br i1 %i.fh, label %bb.n, label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.fi = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !3, !noundef !3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !3
  store i64 4, ptr %i.cn, align 8
  %.sroa.3103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.fk, ptr %.sroa.3103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.fm, ptr %.sroa.5104.0..sroa_idx, align 8
  %i.fn = tail call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger() ; 2 uses
  %i.fo = extractvalue { ptr, ptr } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fn, 1      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !3, !nonnull !3
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
  br i1 %i.fs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.ft = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store ptr %2, ptr %i.cj, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %3, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store ptr %i.cj, ptr %i.ci, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4108.0..sroa_idx, align 8
  store ptr @120, ptr %i.ck, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ci, ptr %i.fw, align 8
  store ptr %i.ck, ptr %i.cl, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @54, ptr %i.fx, align 8
  store i64 1, ptr %i.cm, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cl, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 1, ptr %.sroa.5111.0..sroa_idx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.fu, ptr %i.fy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fi, ptr noundef nonnull %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.k

bb.q:                                             ; preds = %bb.y, %bb.k
  %.sroa.15.0 = phi i1 [ %5, %bb.k ], [ true, %bb.y ]
  %.sroa.9.0350 = phi i64 [ %3, %bb.k ], [ %storemerge, %bb.y ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %2, %bb.k ], [ %storemerge210, %bb.y ] ; 4 uses
  %.sroa.019.0 = phi i8 [ 0, %bb.k ], [ %.sroa.019.1, %bb.y ] ; 3 uses
  %.not209 = icmp eq ptr %.sroa.0.0, null         ; 2 uses
  br i1 %.sroa.15.0, label %.preheader.preheader, label %bb.r, !prof !22

.preheader.preheader:                             ; preds = %bb.q
  br i1 %.not209, label %_RINvYNtNtCs2AWtUsOyxgP_3std4path9AncestorsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBM_3num7nonzero7NonZerojENCNvXs_NvBE_10advance_byB3_NtB2l_13SpecAdvanceBy15spec_advance_by0INtNtBM_6option6OptionB1I_EECs3aZOKTqqjPR_11ruff_server.exit, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %.not209, label %_RINvYNtNtCs2AWtUsOyxgP_3std4path9AncestorsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBM_3num7nonzero7NonZerojENCNvXs_NvBE_10advance_byB3_NtB2l_13SpecAdvanceBy15spec_advance_by0INtNtBM_6option6OptionB1I_EECs3aZOKTqqjPR_11ruff_server.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.9.0350)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.s
  %i.ga = extractvalue { ptr, i64 } %i.fz, 0      ; 3 uses
  %.not212 = icmp eq ptr %i.ga, null
  br i1 %.not212, label %_RINvYNtNtCs2AWtUsOyxgP_3std4path9AncestorsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBM_3num7nonzero7NonZerojENCNvXs_NvBE_10advance_byB3_NtB2l_13SpecAdvanceBy15spec_advance_by0INtNtBM_6option6OptionB1I_EECs3aZOKTqqjPR_11ruff_server.exit, label %bb.u

bb.t:                                             ; preds = %.preheader.preheader
  %i.gb = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.9.0350)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEEB1g_.exit: ; preds = %.thread382, %bb.dj
  br i1 %.sroa.074.1386, label %.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtBK_4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEEEB2x_.exit

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit:                      ; preds = %bb.fm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs3aZOKTqqjPR_11ruff_server.exit.i, %bb.v, %bb.u, %bb.t
  %lpad.loopexit439 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RINvYNtNtCs2AWtUsOyxgP_3std4path9AncestorsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBM_3num7nonzero7NonZerojENCNvXs_NvBE_10advance_byB3_NtB2l_13SpecAdvanceBy15spec_advance_by0INtNtBM_6option6OptionB1I_EECs3aZOKTqqjPR_11ruff_server.exit
  %lpad.loopexit.split-lp440 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvYNtNtCs2AWtUsOyxgP_3std4path9AncestorsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBM_3num7nonzero7NonZerojENCNvXs_NvBE_10advance_byB3_NtB2l_13SpecAdvanceBy15spec_advance_by0INtNtBM_6option6OptionB1I_EECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %.noexc, %.preheader.preheader, %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsNtCsiXichZnxgbf_6anyhow5ErrorEECs3aZOKTqqjPR_11ruff_server.exit
  %.sroa.039.0 = phi i8 [ %i.hn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsNtCsiXichZnxgbf_6anyhow5ErrorEECs3aZOKTqqjPR_11ruff_server.exit ], [ 2, %bb.r ], [ 2, %.preheader.preheader ], [ 2, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke fastcc void @_RNvMs1_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB5_12RuffSettings8fallback(ptr noalias noundef align 8 captures(address) dereferenceable(3056) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.noexc
  %i.gc = extractvalue { ptr, i64 } %i.fz, 1      ; 2 uses
  %i.gd = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.gc)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i64 } [ %i.gb, %bb.t ], [ %i.gd, %bb.u ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.9.0350, %bb.t ], [ %i.gc, %bb.u ] ; 2 uses
  %.sroa.022.0 = phi ptr [ %.sroa.0.0, %bb.t ], [ %i.ga, %bb.u ] ; 2 uses
  %storemerge = extractvalue { ptr, i64 } %.pn, 1
  %storemerge210 = extractvalue { ptr, i64 } %.pn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject13settings_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.022.0, i64 noundef %.sroa.9.0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %bb.v
  %i.ge = load i64, ptr %i.cg, align 8, !range !133, !noundef !3
  switch i64 %i.ge, label %bb.x [
    i64 -2, label %bb.fc
    i64 -1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.gf = load ptr, ptr %i.er, align 8, !nonnull !3, !noundef !3
  %i.gg = load i64, ptr %i.es, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %4, ptr %i.cd, align 8
  store ptr %2, ptr %i.et, align 8
  store i64 %3, ptr %i.eu, align 8
  invoke void @_RNvNtCs3ZkgueCtkyH_14ruff_workspace8resolver21resolve_root_settings(ptr noalias noundef nonnull sret([3032 x i8]) align 8 captures(none) dereferenceable(3032) %i.ce, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef %i.gg, ptr noundef nonnull %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, i8 noundef 3)
          to label %bb.aa unwind label %.thread549.a

bb.y:                                             ; preds = %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsiXichZnxgbf_6anyhow5ErrorECs3aZOKTqqjPR_11ruff_server.exit328, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server.exit
  %.sroa.019.1 = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsiXichZnxgbf_6anyhow5ErrorECs3aZOKTqqjPR_11ruff_server.exit328 ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server.exit ], [ %.sroa.019.0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.q

bb.z:                                             ; preds = %bb.fa, %.thread369
  br i1 %.sroa.073.4, label %.thread433, label %.thread

.thread549.a:                                     ; preds = %bb.x
  %lpad.loopexit444 = landingpad { ptr, i32 }
          cleanup
  br label %.thread433

.thread552:                                       ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aa:                                            ; preds = %bb.x
  %i.gh = load i64, ptr %i.ce, align 8, !range !23, !noundef !3
  %.not220 = icmp eq i64 %i.gh, -1
  br i1 %.not220, label %bb.dn, label %bb.ac

bb.ab:                                            ; preds = %bb.bc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread369

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3032) %i.cc, ptr noundef nonnull align 8 dereferenceable(3032) %i.ce, i64 3032, i1 false)
  %i.gi = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.gj = icmp ult i64 %i.gi, 2
  br i1 %i.gj, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.gk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.gk, label %bb.ae [
    i8 0, label %bb.an
    i8 1, label %bb.af
    i8 2, label %bb.af
  ], !prof !558

bb.ae:                                            ; preds = %bb.ad
  %i.gl = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news0_10___CALLSITE)
          to label %bb.ag unwind label %bb.dl     ; 2 uses

bb.af:                                            ; preds = %bb.ad, %bb.ad, %bb.ag
  %.sroa.035.0 = phi i8 [ %i.gl, %bb.ag ], [ %i.gk, %bb.ad ], [ %i.gk, %bb.ad ]
  %i.gm = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news0_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3
  %i.gn = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gm, i8 noundef %.sroa.035.0)
          to label %bb.ah unwind label %bb.dl

bb.ag:                                            ; preds = %bb.ae
  %i.go = icmp eq i8 %i.gl, 0
  br i1 %i.go, label %bb.an, label %bb.af

bb.ah:                                            ; preds = %bb.af
  br i1 %i.gn, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.gp = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news0_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.gr = load ptr, ptr %i.er, align 8, !nonnull !3, !noundef !3
  %i.gs = load i64, ptr %i.es, align 8, !noundef !3
  store ptr %i.gr, ptr %i.by, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.gs, ptr %i.gt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.by, ptr %i.bx, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4130.0..sroa_idx, align 8
  store ptr @121, ptr %i.bz, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bx, ptr %i.gu, align 8
  store ptr %i.bz, ptr %i.ca, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @54, ptr %i.gv, align 8
  store i64 1, ptr %i.cb, align 8
  %.sroa.037.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ca, ptr %.sroa.037.sroa.4.0..sroa_idx, align 8
  %.sroa.037.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 1, ptr %.sroa.037.sroa.5.0..sroa_idx, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.gq, ptr %.sroa.438.0..sroa_idx, align 8
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cb)
          to label %.noexc251 unwind label %bb.dl

.noexc251:                                        ; preds = %bb.ai
  %i.gw = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5108
  %i.gx = icmp eq i8 %i.gw, 0
  br i1 %i.gx, label %bb.aj, label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news2_0Bd_.exit

bb.aj:                                            ; preds = %.noexc251
  %i.gy = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5108 ; 2 uses
  %i.gz = icmp ult i64 %i.gy, 6
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp samesign ugt i64 %i.gy, 3
  br i1 %i.ha, label %bb.ak, label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news2_0Bd_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.hb = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news0_10___CALLSITE, align 8, !noalias !5108, !nonnull !3, !align !67, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5108
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !3, !noundef !3
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !noundef !3
  store i64 4, ptr %i.p, align 8, !noalias !5108
  %.sroa.3.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.hd, ptr %.sroa.3.0..sroa_idx.i249, align 8, !noalias !5108
  %.sroa.5.0..sroa_idx.i250 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.hf, ptr %.sroa.5.0..sroa_idx.i250, align 8, !noalias !5108
  %i.hg = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc252 unwind label %bb.dl ; 2 uses

.noexc252:                                        ; preds = %bb.ak
  %i.hh = extractvalue { ptr, ptr } %i.hg, 0      ; 2 uses
  %i.hi = extractvalue { ptr, ptr } %i.hg, 1      ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !invariant.load !3, !nonnull !3
  %i.hl = invoke noundef zeroext i1 %i.hk(ptr noundef %i.hh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %.noexc253 unwind label %bb.dl, !inline_history !5111

.noexc253:                                        ; preds = %.noexc252
  br i1 %i.hl, label %bb.al, label %.noexc254

bb.al:                                            ; preds = %.noexc253
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hb, ptr noundef nonnull %i.hh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cb)
          to label %.noexc254 unwind label %bb.dl

.noexc254:                                        ; preds = %bb.al, %.noexc253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5108
  br label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news2_0Bd_.exit

_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news2_0Bd_.exit: ; preds = %.noexc254, %bb.aj, %.noexc251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.am

bb.am:                                            ; preds = %bb.at, %bb.ao, %bb.an, %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news2_0Bd_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cc, i64 305
  %i.hn = load i8, ptr %i.hm, align 1, !range !507, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.022.0, i64 noundef %.sroa.9.0)
          to label %bb.av unwind label %bb.dl

bb.an:                                            ; preds = %bb.ag, %bb.ad, %bb.ac, %bb.ah
  %i.ho = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an
end_hunk_0
