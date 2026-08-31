Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.01?download=true
inline.NumInlined: 1293
inline.NumDeleted: 810
begin_hunk_0_@_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.p:                                             ; preds = %bb.a
  store i8 14, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.q:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !10699
  %i.w = load i8, ptr %i.v, align 1, !dbg !10699, !range !10704, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10705 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !10705
  %i.z = load i8, ptr %i.y, align 1, !dbg !10705, !range !3989, !noundef !13 ; 2 uses
  switch i8 %i.z, label %bb.dd [
    i8 -38, label %bb.db
    i8 -40, label %bb.dc
  ], !dbg !10709

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10710
  br label %bb.da, !dbg !10712

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10713
  br label %bb.da, !dbg !10712

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10715
  br label %bb.da, !dbg !10712

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10717
  br label %bb.da, !dbg !10712

bb.x:                                             ; preds = %bb.a
  store i8 22, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10719
  br label %bb.da, !dbg !10712

bb.z:                                             ; preds = %bb.a
  store i8 24, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.aa:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.ab:                                            ; preds = %bb.a
  store i8 26, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.ac:                                            ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10722), !dbg !10725
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !10727, !noalias !10722, !inline_history !10731 ; 5 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !10732, !alias.scope !10722, !nonnull !13, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10734), !dbg !10737
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058), !dbg !10743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10749), !dbg !10752, !noalias !10722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10753, !noalias !10759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10761, !noalias !10759
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !10761 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 55, !dbg !10772
  %i.af = load i8, ptr %i.ae, align 1, !dbg !10772, !range !4140, !alias.scope !10780, !noalias !10781, !noundef !13
  %i.ag = icmp eq i8 %i.af, -40, !dbg !10782
  br i1 %i.ag, label %bb.ad, label %bb.ae, !dbg !10782

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #20
          to label %.noexc unwind label %bb.al, !dbg !10783, !inline_history !10784

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !10785, !noalias !10781
  br label %.noexc, !dbg !10788

.noexc:                                           ; preds = %bb.ad, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !10789, !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10790, !noalias !10759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10791, !noalias !10759
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %bb.ah unwind label %bb.af, !dbg !10791, !noalias !10781, !inline_history !10792

bb.af:                                            ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 23, !dbg !10793
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !10793, !range !4140, !alias.scope !10800, !noalias !10759, !noundef !13
  %i.ak = icmp eq i8 %i.aj, -40, !dbg !10809
  br i1 %i.ak, label %bb.ag, label %bb.am, !dbg !10809, !prof !546

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.am unwind label %bb.ak, !dbg !10810, !noalias !10781, !inline_history !10792

bb.ah:                                            ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 64, !dbg !10811
  %i.am = load i8, ptr %i.al, align 8, !dbg !10811, !range !163, !alias.scope !10780, !noalias !10781, !noundef !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 56, !dbg !10812
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !10812, !alias.scope !10780, !noalias !10781, !noundef !13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null, !dbg !10812
  br i1 %.not.i.i, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit, label %bb.ai, !dbg !10815

bb.ai:                                            ; preds = %bb.ah
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !dbg !10816, !noalias !10781
  %i.aq = icmp slt i64 %i.ap, 0, !dbg !10825
  br i1 %i.aq, label %bb.aj, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit, !dbg !10825

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.trap(), !dbg !10827, !noalias !10722
  unreachable, !dbg !10827

bb.ak:                                            ; preds = %bb.ag
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !10828, !noalias !10781, !inline_history !10792
  unreachable, !dbg !10828

bb.al:                                            ; preds = %bb.ad
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.am, !dbg !10829

common.resume:                                    ; preds = %bb.cz, %bb.cp, %bb.bw, %bb.bu, %bb.bi, %bb.ax, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.am ], [ %eh.lpad-body22, %bb.ax ], [ %eh.lpad-body30, %bb.bi ], [ %eh.lpad-body38, %bb.bu ], [ %i.dp, %bb.bw ], [ %eh.lpad-body44, %bb.cp ], [ %eh.lpad-body49, %bb.cz ]
  resume { ptr, i32 } %common.resume.op, !dbg !10830

bb.am:                                            ; preds = %bb.al, %bb.ag, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.al ], [ %i.ah, %bb.ag ], [ %i.ah, %bb.af ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 72, i64 noundef 8) #17, !dbg !10831, !noalias !10722
  br label %common.resume, !dbg !10842

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.ai, %bb.ah
  %.sroa.058.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058, i64 32, !dbg !10828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !10828, !noalias !10843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.058, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !dbg !10828, !noalias !10843
  %2 = ptrtoint ptr %i.ao to i64, !dbg !10828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10844, !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10844, !noalias !10759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.058, i64 56, i1 false), !dbg !10845, !noalias !10848
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56, !dbg !10845
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10845, !noalias !10848
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64, !dbg !10845
  store i8 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10845, !noalias !10848
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.058), !dbg !10849
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10850
  store ptr %i.ab, ptr %i.at, align 8, !dbg !10850
  store i8 27, ptr %0, align 8, !dbg !10850
  br label %bb.da, !dbg !10712

bb.an:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10851
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10852), !dbg !10855
  %i.av = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !10857, !noalias !10852, !inline_history !10731 ; 5 uses
  %i.aw = load ptr, ptr %i.au, align 8, !dbg !10859, !alias.scope !10852, !nonnull !13, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10860), !dbg !10863
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059), !dbg !10865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10867), !dbg !10870, !noalias !10852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !10871, !noalias !10873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10875, !noalias !10873
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !10875 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 55, !dbg !10878
  %i.az = load i8, ptr %i.ay, align 1, !dbg !10878, !range !4140, !alias.scope !10882, !noalias !10883, !noundef !13
  %i.ba = icmp eq i8 %i.az, -40, !dbg !10884
  br i1 %i.ba, label %bb.ao, label %bb.ap, !dbg !10884

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #20
          to label %.noexc20 unwind label %bb.aw, !dbg !10885, !inline_history !10784

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !dbg !10886, !noalias !10883
  br label %.noexc20, !dbg !10888

.noexc20:                                         ; preds = %bb.ao, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !10889, !noalias !10873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10890, !noalias !10873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !10891, !noalias !10873
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %bb.as unwind label %bb.aq, !dbg !10891, !noalias !10883, !inline_history !10792

bb.aq:                                            ; preds = %.noexc20
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 23, !dbg !10892
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !10892, !range !4140, !alias.scope !10899, !noalias !10873, !noundef !13
  %i.be = icmp eq i8 %i.bd, -40, !dbg !10908
  br i1 %i.be, label %bb.ar, label %bb.ax, !dbg !10908, !prof !546

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ax unwind label %bb.av, !dbg !10909, !noalias !10883, !inline_history !10792

bb.as:                                            ; preds = %.noexc20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 64, !dbg !10910
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !10910, !range !163, !alias.scope !10882, !noalias !10883, !noundef !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 56, !dbg !10911
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !10911, !alias.scope !10882, !noalias !10883, !noundef !13 ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.bi, null, !dbg !10911
  br i1 %.not.i.i18, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit8, label %bb.at, !dbg !10913

bb.at:                                            ; preds = %bb.as
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !dbg !10914, !noalias !10883
  %i.bk = icmp slt i64 %i.bj, 0, !dbg !10918
  br i1 %i.bk, label %bb.au, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit8, !dbg !10918

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.trap(), !dbg !10919, !noalias !10852
  unreachable, !dbg !10919

bb.av:                                            ; preds = %bb.ar
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !10920, !noalias !10883, !inline_history !10792
  unreachable, !dbg !10920

bb.aw:                                            ; preds = %bb.ao
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !10921

bb.ax:                                            ; preds = %bb.aw, %bb.ar, %bb.aq
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.bm, %bb.aw ], [ %i.bb, %bb.ar ], [ %i.bb, %bb.aq ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 72, i64 noundef 8) #17, !dbg !10922, !noalias !10852
  br label %common.resume, !dbg !10929

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit8: ; preds = %bb.at, %bb.as
  %.sroa.059.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.059, i64 32, !dbg !10920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.059.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10920, !noalias !10930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.059, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !10920, !noalias !10930
  %3 = ptrtoint ptr %i.bi to i64, !dbg !10920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10931, !noalias !10873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10931, !noalias !10873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.059, i64 56, i1 false), !dbg !10932, !noalias !10934
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 56, !dbg !10932
  store i64 %3, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !10932, !noalias !10934
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 64, !dbg !10932
  store i8 %i.bg, ptr %.sroa.661.0..sroa_idx, align 8, !dbg !10932, !noalias !10934
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059), !dbg !10935
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10936
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !10936, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10937
  store ptr %i.av, ptr %i.bp, align 8, !dbg !10937
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10937
  store i64 %i.bo, ptr %i.bq, align 8, !dbg !10937
  store i8 28, ptr %0, align 8, !dbg !10937
  br label %bb.da, !dbg !10712

bb.ay:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10939), !dbg !10942
  %i.bs = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !10944, !noalias !10939, !inline_history !10731 ; 5 uses
  %i.bt = load ptr, ptr %i.br, align 8, !dbg !10946, !alias.scope !10939, !nonnull !13, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10947), !dbg !10950
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.063), !dbg !10952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10954), !dbg !10957, !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10958, !noalias !10960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10962, !noalias !10960
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32, !dbg !10962 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 55, !dbg !10965
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !10965, !range !4140, !alias.scope !10969, !noalias !10970, !noundef !13
  %i.bx = icmp eq i8 %i.bw, -40, !dbg !10971
  br i1 %i.bx, label %bb.az, label %bb.ba, !dbg !10971

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #20
          to label %.noexc28 unwind label %bb.bh, !dbg !10972, !inline_history !10784

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !dbg !10973, !noalias !10970
  br label %.noexc28, !dbg !10975

.noexc28:                                         ; preds = %bb.az, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !10976, !noalias !10960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10977, !noalias !10960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10978, !noalias !10960
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bt)
          to label %bb.bd unwind label %bb.bb, !dbg !10978, !noalias !10970, !inline_history !10792

bb.bb:                                            ; preds = %.noexc28
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 23, !dbg !10979
  %i.ca = load i8, ptr %i.bz, align 1, !dbg !10979, !range !4140, !alias.scope !10986, !noalias !10960, !noundef !13
  %i.cb = icmp eq i8 %i.ca, -40, !dbg !10995
  br i1 %i.cb, label %bb.bc, label %bb.bi, !dbg !10995, !prof !546

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bi unwind label %bb.bg, !dbg !10996, !noalias !10970, !inline_history !10792

bb.bd:                                            ; preds = %.noexc28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 64, !dbg !10997
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !10997, !range !163, !alias.scope !10969, !noalias !10970, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 56, !dbg !10998
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !10998, !alias.scope !10969, !noalias !10970, !noundef !13 ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.cf, null, !dbg !10998
  br i1 %.not.i.i26, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit10, label %bb.be, !dbg !11000

bb.be:                                            ; preds = %bb.bd
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8, !dbg !11001, !noalias !10970
  %i.ch = icmp slt i64 %i.cg, 0, !dbg !11005
  br i1 %i.ch, label %bb.bf, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit10, !dbg !11005

bb.bf:                                            ; preds = %bb.be
  tail call void @llvm.trap(), !dbg !11006, !noalias !10939
  unreachable, !dbg !11006

bb.bg:                                            ; preds = %bb.bc
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !11007, !noalias !10970, !inline_history !10792
  unreachable, !dbg !11007

bb.bh:                                            ; preds = %bb.az
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi, !dbg !11008

bb.bi:                                            ; preds = %bb.bh, %bb.bc, %bb.bb
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.cj, %bb.bh ], [ %i.by, %bb.bc ], [ %i.by, %bb.bb ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef 72, i64 noundef 8) #17, !dbg !11009, !noalias !10939
  br label %common.resume, !dbg !11016

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit10: ; preds = %bb.be, %bb.bd
  %.sroa.063.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.063, i64 32, !dbg !11007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.063.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !11007, !noalias !11017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.063, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !11007, !noalias !11017
  %4 = ptrtoint ptr %i.cf to i64, !dbg !11007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11018, !noalias !10960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11018, !noalias !10960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.063, i64 56, i1 false), !dbg !11019, !noalias !11021
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 56, !dbg !11019
  store i64 %4, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !11019, !noalias !11021
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 64, !dbg !11019
  store i8 %i.cd, ptr %.sroa.665.0..sroa_idx, align 8, !dbg !11019, !noalias !11021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.063), !dbg !11022
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11023
  store ptr %i.bs, ptr %i.ck, align 8, !dbg !11023
  store i8 29, ptr %0, align 8, !dbg !11023
  br label %bb.da, !dbg !10712

bb.bj:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11024
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11025
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl), !dbg !11027
  store i8 30, ptr %0, align 8, !dbg !11025
  br label %bb.da, !dbg !10712

bb.bk:                                            ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11029), !dbg !11032
  %i.co = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !11034, !noalias !11029, !inline_history !10731 ; 5 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !dbg !11036, !alias.scope !11029, !nonnull !13, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11037), !dbg !11040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.067), !dbg !11042
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11044), !dbg !11047, !noalias !11029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11048, !noalias !11050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11052, !noalias !11050
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !11052 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 55, !dbg !11055
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !11055, !range !4140, !alias.scope !11059, !noalias !11060, !noundef !13
  %i.ct = icmp eq i8 %i.cs, -40, !dbg !11061
  br i1 %i.ct, label %bb.bl, label %bb.bm, !dbg !11061

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #20
          to label %.noexc36 unwind label %bb.bt, !dbg !11062, !inline_history !10784

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !dbg !11063, !noalias !11060
  br label %.noexc36, !dbg !11065

.noexc36:                                         ; preds = %bb.bl, %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !11066, !noalias !11050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11067, !noalias !11050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11068, !noalias !11050
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cp)
          to label %bb.bp unwind label %bb.bn, !dbg !11068, !noalias !11060, !inline_history !10792

bb.bn:                                            ; preds = %.noexc36
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !11069
  %i.cw = load i8, ptr %i.cv, align 1, !dbg !11069, !range !4140, !alias.scope !11076, !noalias !11050, !noundef !13
  %i.cx = icmp eq i8 %i.cw, -40, !dbg !11085
  br i1 %i.cx, label %bb.bo, label %bb.bu, !dbg !11085, !prof !546

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bu unwind label %bb.bs, !dbg !11086, !noalias !11060, !inline_history !10792

bb.bp:                                            ; preds = %.noexc36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 64, !dbg !11087
  %i.cz = load i8, ptr %i.cy, align 8, !dbg !11087, !range !163, !alias.scope !11059, !noalias !11060, !noundef !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 56, !dbg !11088
  %i.db = load ptr, ptr %i.da, align 8, !dbg !11088, !alias.scope !11059, !noalias !11060, !noundef !13 ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.db, null, !dbg !11088
  br i1 %.not.i.i34, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit12, label %bb.bq, !dbg !11090

bb.bq:                                            ; preds = %bb.bp
  %i.dc = atomicrmw add ptr %i.db, i64 1 monotonic, align 8, !dbg !11091, !noalias !11060
  %i.dd = icmp slt i64 %i.dc, 0, !dbg !11095
  br i1 %i.dd, label %bb.br, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit12, !dbg !11095

bb.br:                                            ; preds = %bb.bq
  tail call void @llvm.trap(), !dbg !11096, !noalias !11029
  unreachable, !dbg !11096

bb.bs:                                            ; preds = %bb.bo
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !11097, !noalias !11060, !inline_history !10792
  unreachable, !dbg !11097

bb.bt:                                            ; preds = %bb.bl
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu, !dbg !11098

bb.bu:                                            ; preds = %bb.bt, %bb.bo, %bb.bn
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.df, %bb.bt ], [ %i.cu, %bb.bo ], [ %i.cu, %bb.bn ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef 72, i64 noundef 8) #17, !dbg !11099, !noalias !11029
  br label %common.resume, !dbg !11106

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit12: ; preds = %bb.bq, %bb.bp
  %.sroa.067.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.067, i64 32, !dbg !11097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !11097, !noalias !11107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.067, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !11097, !noalias !11107
  %5 = ptrtoint ptr %i.db to i64, !dbg !11097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11108, !noalias !11050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11108, !noalias !11050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.067, i64 56, i1 false), !dbg !11109, !noalias !11111
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56, !dbg !11109
  store i64 %5, ptr %.sroa.568.0..sroa_idx, align 8, !dbg !11109, !noalias !11111
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 64, !dbg !11109
  store i8 %i.cz, ptr %.sroa.669.0..sroa_idx, align 8, !dbg !11109, !noalias !11111
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.067), !dbg !11112
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !11113
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !11113, !range !163, !noundef !13
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11114
  store ptr %i.co, ptr %i.di, align 8, !dbg !11114
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11114
  store i8 %i.dh, ptr %i.dj, align 1, !dbg !11114
  store i8 31, ptr %0, align 8, !dbg !11114
  br label %bb.da, !dbg !10712

bb.bv:                                            ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11115
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !11116
  %i.dm = load i8, ptr %i.dl, align 1, !dbg !11116, !range !11123, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11124), !dbg !11127
  %i.dn = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !11128, !noalias !11124, !inline_history !11131 ; 3 uses
  %i.do = load ptr, ptr %i.dk, align 8, !dbg !11132, !alias.scope !11124, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11134, !noalias !11139
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do) #22
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit unwind label %bb.bw, !dbg !11142, !inline_history !11143

bb.bw:                                            ; preds = %bb.bv
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef 32, i64 noundef 8) #17, !dbg !11144, !noalias !11124
  br label %common.resume, !dbg !11155

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !11156, !noalias !11139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11159, !noalias !11139
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !11160
  %i.dr = load i8, ptr %i.dq, align 2, !dbg !11160, !range !163, !noundef !13
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11161
  store i8 %i.dm, ptr %i.ds, align 1, !dbg !11161
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11161
  store ptr %i.dn, ptr %i.dt, align 8, !dbg !11161
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !11161
  store i8 %i.dr, ptr %i.du, align 2, !dbg !11161
  store i8 32, ptr %0, align 8, !dbg !11161
  br label %bb.da, !dbg !10712

bb.bx:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11162
  br label %bb.da, !dbg !10712

bb.by:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11164
  br label %bb.da, !dbg !10712

bb.bz:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11166
  br label %bb.da, !dbg !10712

bb.ca:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11168
  br label %bb.da, !dbg !10712

bb.cb:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11171), !dbg !11174
  %i.dw = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !11176, !noalias !11171, !inline_history !11179 ; 4 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !dbg !11180, !alias.scope !11171, !nonnull !13, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11182), !dbg !11185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.071), !dbg !11188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11191), !dbg !11194, !noalias !11171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11195, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11201, !noalias !11199
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32, !dbg !11201 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 55, !dbg !11206
  %i.ea = load i8, ptr %i.dz, align 1, !dbg !11206, !range !4140, !alias.scope !11213, !noalias !11214, !noundef !13
  %i.eb = icmp eq i8 %i.ea, -40, !dbg !11215
  br i1 %i.eb, label %bb.cc, label %bb.cd, !dbg !11215

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #20
          to label %.noexc42 unwind label %bb.co, !dbg !11216, !inline_history !11217

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !dbg !11218, !noalias !11214
  br label %.noexc42, !dbg !11221

.noexc42:                                         ; preds = %bb.cc, %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !11222, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11223, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11224, !noalias !11199
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dx)
          to label %bb.ch unwind label %bb.cg, !dbg !11224, !noalias !11214, !inline_history !11225

bb.ce:                                            ; preds = %bb.cl, %bb.cg
  %.pn.i.i = phi { ptr, i32 } [ %i.ek, %bb.cl ], [ %i.ef, %bb.cg ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !11226
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !11226, !range !4140, !alias.scope !11233, !noalias !11214, !noundef !13
  %i.ee = icmp eq i8 %i.ed, -40, !dbg !11242
  br i1 %i.ee, label %bb.cf, label %bb.cp, !dbg !11242, !prof !546

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.cp unwind label %bb.cn, !dbg !11243

bb.cg:                                            ; preds = %.noexc42
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ch:                                            ; preds = %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !dbg !11244
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 56, !dbg !11245 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 79, !dbg !11245
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !11245, !range !3989, !alias.scope !11213, !noalias !11214, !noundef !13 ; 2 uses
  %.not.i.i41 = icmp eq i8 %i.ei, -38, !dbg !11245
  br i1 %.not.i.i41, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit, label %bb.ci, !dbg !11248

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11249, !noalias !11199
  %i.ej = icmp eq i8 %i.ei, -40, !dbg !11254
  br i1 %i.ej, label %bb.cj, label %bb.ck, !dbg !11254

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg)
          to label %bb.cm unwind label %bb.cl, !dbg !11257, !noalias !11214, !inline_history !11225

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !dbg !11258, !noalias !11214
  br label %bb.cm, !dbg !11261

bb.cl:                                            ; preds = %bb.cj
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %i.e) #19
          to label %bb.ce unwind label %bb.cn, !dbg !11262, !noalias !11214, !inline_history !11225

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(23) %i.c, i64 23, i1 false), !dbg !11263, !noalias !11199
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !11263
  %.sroa.46.0.copyload.i.i = load i8, ptr %.sroa.46.0..sroa_idx.i.i, align 1, !dbg !11263, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11264, !noalias !11199
  br label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit, !dbg !11265

bb.cn:                                            ; preds = %bb.cf, %bb.cl
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !11266, !noalias !11214, !inline_history !11225
  unreachable, !dbg !11266

bb.co:                                            ; preds = %bb.cc
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp, !dbg !11267

bb.cp:                                            ; preds = %bb.co, %bb.ce, %bb.cf
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.em, %bb.co ], [ %.pn.i.i, %bb.ce ], [ %.pn.i.i, %bb.cf ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef 80, i64 noundef 8) #17, !dbg !11268, !noalias !11171
  br label %common.resume, !dbg !11279

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.cm, %bb.ch
  %.sroa.4.0.i.i = phi i8 [ %.sroa.46.0.copyload.i.i, %bb.cm ], [ -38, %bb.ch ], !dbg !11280
  %.sroa.071.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071, i64 32, !dbg !11266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.071.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !11266, !noalias !11281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11266, !noalias !11281
  %.sroa.071.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071, i64 56, !dbg !11266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.071.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0.i.i, i64 23, i1 false), !dbg !11266, !noalias !11281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !dbg !11262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11262, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11262, !noalias !11199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(79) %i.dw, ptr noundef nonnull align 8 dereferenceable(79) %.sroa.071, i64 79, i1 false), !dbg !11282, !noalias !11285
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 79, !dbg !11282
  store i8 %.sroa.4.0.i.i, ptr %.sroa.672.0..sroa_idx, align 1, !dbg !11282, !noalias !11285
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.071), !dbg !11286
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11287
  store ptr %i.dw, ptr %i.en, align 8, !dbg !11287
  store i8 37, ptr %0, align 8, !dbg !11287
  br label %bb.da, !dbg !10712

bb.cq:                                            ; preds = %bb.a
  store i8 38, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.cr:                                            ; preds = %bb.a
  store i8 39, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.cs:                                            ; preds = %bb.a
  store i8 40, ptr %0, align 8, !dbg !10698
  br label %bb.da, !dbg !10698

bb.ct:                                            ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11289), !dbg !11292
  %i.ep = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeE13new_uninit_inCs4PheDXcg4wa_10polars_row(), !dbg !11294, !noalias !11289, !inline_history !11297 ; 6 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !dbg !11298, !alias.scope !11289, !nonnull !13, !noundef !13 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11300), !dbg !11303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11306), !dbg !11309, !noalias !11289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11312, !noalias !11316
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq)
          to label %.noexc47 unwind label %bb.cy, !dbg !11312, !inline_history !11318

.noexc47:                                         ; preds = %bb.ct
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24, !dbg !11319 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12944, !noalias !12940
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !12944, !noalias !12940
  %i.g = load i64, ptr %i.a, align 8, !dbg !12944, !range !9592, !noalias !12940, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1, !dbg !12950
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12951
  %i.j = load i64, ptr %i.i, align 8, !dbg !12951, !range !3799, !noalias !12940, !noundef !13 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12951 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, !dbg !12950, !prof !546

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !12952, !noalias !12940
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21, !dbg !12953, !noalias !12940
  unreachable, !dbg !12953

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !12954, !noalias !12940, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !12955
  tail call void @llvm.assume(i1 %i.n), !dbg !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12959, !noalias !12940
  store i64 %i.j, ptr %i.b, align 8, !dbg !12960, !noalias !12940
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12960
  store ptr %i.m, ptr %i.o, align 8, !dbg !12960, !noalias !12940
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12960 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f, !dbg !12961
  %i.r = icmp eq i64 %i.j, 0, !dbg !12974
  br i1 %i.r, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !12974

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.e, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.s, %bb.d ], [ %i.j, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i ]
  %i.s = add i64 %.sroa.10.021.i, -1, !dbg !12982 ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.023.i, %i.q, !dbg !12983
  br i1 %i.t, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.c, !dbg !12995

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !dbg !12996, !noalias !12998 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !12999
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16, !dbg !13002
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.022.i, !dbg !13005 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.u, 0, !dbg !13006 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.u, 1, !dbg !13006 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ], !dbg !13007
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ], !dbg !13007
  store ptr %i.y, ptr %i.x, align 8, !dbg !13015, !noalias !12998
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !13015
  store ptr %i.z, ptr %i.aa, align 8, !dbg !13015, !noalias !12998
  %i.ab = icmp eq i64 %i.s, 0, !dbg !12974
  br i1 %i.ab, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !12974

bb.e:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13016, !noalias !12998
  unreachable, !dbg !13016

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.p, align 8, !dbg !13017, !noalias !12940
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.g unwind label %bb.e, !dbg !13026, !noalias !12998

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !13016

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i
  store i64 %i.f, ptr %i.p, align 8, !dbg !13027, !noalias !12940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !13030, !noalias !13031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13026, !noalias !12940
  ret void, !dbg !13032
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13033 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.04 = alloca [56 x i8], align 8           ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13034
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13041
  %i.h = load ptr, ptr %i.g, align 8, !dbg !13041, !nonnull !13, !noundef !13 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !dbg !13055, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13056, !noalias !13061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13065, !noalias !13061
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 128102389400760776) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !13065, !noalias !13061
  %i.j = load i64, ptr %i.a, align 8, !dbg !13065, !range !9592, !noalias !13061, !noundef !13
  %i.k = trunc nuw i64 %i.j to i1, !dbg !13071
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13072
  %i.m = load i64, ptr %i.l, align 8, !dbg !13072, !range !3799, !noalias !13061, !noundef !13 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13072 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit, !dbg !13071, !prof !546

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !dbg !13073, !noalias !13061
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #21, !dbg !13074, !noalias !13061
  unreachable, !dbg !13074

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !dbg !13075, !noalias !13061, !nonnull !13, !noundef !13 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m, !dbg !13076
  tail call void @llvm.assume(i1 %i.q), !dbg !13078, !noalias !13061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13080, !noalias !13061
  store i64 %i.m, ptr %i.e, align 8, !dbg !13081, !noalias !13061
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13081
  store ptr %i.p, ptr %i.r, align 8, !dbg !13081, !noalias !13061
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !13081 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.i, !dbg !13082
  %i.u = icmp eq i64 %i.m, 0, !dbg !13094
  br i1 %i.u, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13094

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit
  %.sroa.04.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 32
  br label %bb.c, !dbg !13094

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.03.032 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %bb.m ] ; 7 uses
  %.sroa.7.031 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.m ] ; 3 uses
  %.sroa.10.030 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %bb.m ]
  %i.v = add i64 %.sroa.10.030, -1, !dbg !13099   ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.032, %i.t, !dbg !13100
  br i1 %i.w, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.d, !dbg !13109

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 72, !dbg !13110
  %i.y = add nuw nsw i64 %.sroa.7.031, 1, !dbg !13113
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04), !dbg !13116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13118), !dbg !13121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13122, !noalias !13124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13126, !noalias !13124
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 32, !dbg !13126 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 55, !dbg !13129
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !13129, !range !4140, !alias.scope !13118, !noalias !13133, !noundef !13
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !13134
  br i1 %i.ac, label %bb.e, label %bb.f, !dbg !13134

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #20
          to label %.noexc unwind label %.loopexit, !dbg !13135, !inline_history !13136

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !13137, !noalias !13133
  br label %.noexc, !dbg !13139

.noexc:                                           ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !13140, !noalias !13124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13141, !noalias !13124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13142, !noalias !13124
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.03.032)
          to label %bb.i unwind label %bb.g, !dbg !13142, !noalias !13133, !inline_history !13136

bb.g:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !13143
  %i.af = load i8, ptr %i.ae, align 1, !dbg !13143, !range !4140, !alias.scope !13150, !noalias !13124, !noundef !13
  %i.ag = icmp eq i8 %i.af, -40, !dbg !13159
  br i1 %i.ag, label %bb.h, label %bb.o, !dbg !13159, !prof !546

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !dbg !13160, !noalias !13133, !inline_history !13136

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 64, !dbg !13161
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !13161, !range !163, !alias.scope !13118, !noalias !13133, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 56, !dbg !13162
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !13162, !alias.scope !13118, !noalias !13133, !noundef !13 ; 3 uses
  %.not.i1 = icmp eq ptr %i.ak, null, !dbg !13162
  br i1 %.not.i1, label %bb.m, label %bb.j, !dbg !13164

bb.j:                                             ; preds = %bb.i
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !dbg !13165, !noalias !13133
  %i.am = icmp slt i64 %i.al, 0, !dbg !13169
  br i1 %i.am, label %bb.k, label %bb.m, !dbg !13169

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !13170, !noalias !13171
  unreachable, !dbg !13170

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13172, !noalias !13133, !inline_history !13136
  unreachable, !dbg !13172

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !13172, !noalias !13173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !13172, !noalias !13173
  %2 = ptrtoint ptr %i.ak to i64, !dbg !13172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13174, !noalias !13124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13174, !noalias !13124
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.7.031, !dbg !13175 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04, i64 56, i1 false), !dbg !13176, !noalias !13171
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56, !dbg !13192
  store i64 %2, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !13192, !noalias !13171
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64, !dbg !13192
  store i8 %i.ai, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !13192, !noalias !13171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !13193
  %i.ap = icmp eq i64 %i.v, 0, !dbg !13094
  br i1 %i.ap, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.c, !dbg !13094

bb.n:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13194, !noalias !13171, !inline_history !13195
  unreachable, !dbg !13194

bb.o:                                             ; preds = %.loopexit, %bb.h, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.031, ptr %i.s, align 8, !dbg !13196, !noalias !13171
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.e) #19
          to label %bb.p unwind label %bb.n, !dbg !13203, !noalias !13171, !inline_history !13195

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body, !dbg !13194

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.m, %bb.c, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit
  store i64 %i.i, ptr %i.s, align 8, !dbg !13204, !noalias !13061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !13207, !noalias !13208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13203, !noalias !13061
  ret void, !dbg !13209
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !13210 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13211
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13218
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13218, !nonnull !13, !noundef !13
  %i.e = load i64, ptr %i.b, align 8, !dbg !13232, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13233), !dbg !13236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13239, !noalias !13249
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !13239, !noalias !13249
  %i.f = load i64, ptr %i.a, align 8, !dbg !13239, !range !9592, !noalias !13249, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !13251
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13252
  %i.i = load i64, ptr %i.h, align 8, !dbg !13252, !range !3799, !noalias !13249, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13252 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, !dbg !13251, !prof !546

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !13253, !noalias !13249
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !13254, !noalias !13249
  unreachable, !dbg !13254

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !13255, !noalias !13249, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !13256
  tail call void @llvm.assume(i1 %i.m), !dbg !13258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13260, !noalias !13249
  store i64 %i.i, ptr %0, align 8, !dbg !13261, !alias.scope !13233, !noalias !13262
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13261
  store ptr %i.l, ptr %i.n, align 8, !dbg !13261, !alias.scope !13233, !noalias !13262
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13261 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !13261, !alias.scope !13233, !noalias !13262
  %.not.i = icmp eq i64 %i.e, 0, !dbg !13263
  br i1 %.not.i, label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.c, !dbg !13263

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i
  %i.p = shl nuw nsw i64 %i.e, 2, !dbg !13265
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %i.d, i64 %i.p, i1 false), !dbg !13265, !noalias !13233
  store i64 %i.e, ptr %i.o, align 8, !dbg !13270, !alias.scope !13233, !noalias !13262
  br label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, !dbg !13273

_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, %bb.c
  ret void, !dbg !13274
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13275 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13276
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13276, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13285
  %i.d = load i64, ptr %i.c, align 8, !dbg !13285, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13286), !dbg !13289
  %i.e = icmp eq i64 %i.d, 0, !dbg !13290
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !13290

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i, !dbg !13290 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1, !dbg !13290 ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !dbg !13290, !alias.scope !13286 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8, !dbg !13290
  %.val9.i = load ptr, ptr %i.h, align 8, !dbg !13290, !alias.scope !13286, !nonnull !13, !align !26, !noundef !13 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !dbg !13293, !invariant.load !13, !noalias !13286 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !13293
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !13293

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !dbg !13293, !noalias !13286

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !13295
  %i.k = load i64, ptr %i.j, align 8, !dbg !13295, !range !116, !invariant.load !13, !noalias !13286 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !13299
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i, label %bb.d, !dbg !13299

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !13295
  %i.n = load i64, ptr %i.m, align 8, !dbg !13300, !range !3721, !invariant.load !13, !noalias !13286
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #17, !dbg !13303, !noalias !13286
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i, !dbg !13308

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !13309
  %i.q = load i64, ptr %i.p, align 8, !dbg !13309, !range !116, !invariant.load !13, !noalias !13286 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !13313
  br i1 %i.r, label %.body.i, label %bb.f, !dbg !13313

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !13309
  %i.t = load i64, ptr %i.s, align 8, !dbg !13314, !range !3721, !invariant.load !13, !noalias !13286
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #17, !dbg !13317, !noalias !13286
  br label %.body.i, !dbg !13322

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d, !dbg !13290
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !13290

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1, !dbg !13290   ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !13290
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !13290

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d, !dbg !13290
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !13290

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17, !dbg !13290 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !dbg !13290, !alias.scope !13286
  %i.z = getelementptr i8, ptr %i.y, i64 8, !dbg !13290
  %.val7.i = load ptr, ptr %i.z, align 8, !dbg !13290, !alias.scope !13286, !nonnull !13, !align !26, !noundef !13
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row(ptr %.val.i, ptr nonnull %.val7.i) #19
          to label %bb.g unwind label %bb.h, !dbg !13290, !noalias !13286

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o, !dbg !13290

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13290, !noalias !13286
  unreachable, !dbg !13290

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i, %bb.a
  ret void, !dbg !13323
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13324 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13325
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13325, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13334
  %i.d = load i64, ptr %i.c, align 8, !dbg !13334, !noundef !13 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !13335
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13335

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !13335
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13335

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !13335
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !13335    ; 4 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.b, !dbg !13338

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !13335    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !13335
  br i1 %i.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i._crit_edge, label %.lr.ph3, !dbg !13335

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !13335
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i._crit_edge, label %.lr.ph3, !dbg !13335

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !13335
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i unwind label %bb.c, !dbg !13343
end_hunk_1
