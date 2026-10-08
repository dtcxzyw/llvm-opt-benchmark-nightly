Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb17VariantColumnData10CheckpointERKNS_8RowGroupERNS_20ColumnCheckpointInfoERKNS_14BaseStatisticsE:bb.a
  %i.ar = invoke noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig3GetERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(408) %i.aq)
          to label %bb.j unwind label %bb.o       ; 5 uses

bb.j:                                             ; preds = %_ZNK6duckdb8RowGroup12GetTableInfoEv.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !213
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aw = invoke noundef i64 @_ZN6duckdb8Settings3GetINS_34VariantMinimumShreddingSizeSettingENS_8DBConfigEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEElEE5valueElE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(1360) %i.ar)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %bb.g, %_ZN6duckdb9make_uniqINS_28VariantColumnCheckpointStateEJRKNS_8RowGroupERNS_17VariantColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit76

bb.m:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !822   ; 3 uses
  %.not.i74 = icmp eq ptr %i.az, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit76, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i75

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i75: ; preds = %bb.m
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.az) #37, !inline_history !51
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit76

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit76: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i75, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %i.ay, %bb.m ], [ %i.ay, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.dg

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.o:                                             ; preds = %_ZNK6duckdb8RowGroup12GetTableInfoEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.p:                                             ; preds = %bb.k, %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.q:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load atomic i64, ptr %i.bg seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp ne i64 %i.aw, -1
  %i.bj = icmp uge i64 %i.bh, %i.aw
  %.0.i = and i1 %i.bi, %i.bj
  %narrow = and i1 %i.av, %.0.i
  br i1 %narrow, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 320 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !637 ; 2 uses
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp eq ptr %7, %i.bk
  br i1 %i.bm, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 %i.bl, ptr %7, align 8, !tbaa !637
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 321
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !426
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !426
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 328
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 336
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !269 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.br, align 8, !tbaa !318
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !206
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !206
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !269 ; 8 uses
  store <2 x ptr> %i.bu, ptr %i.bq, align 8, !tbaa !318
  %.not.i.i.i.i.i77 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i77, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cc, align 8, !tbaa !271
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !272
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !213
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #37, !inline_history !148
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !213
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #37, !inline_history !148
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.ab ], [ %i.cp, %bb.ac ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.ad, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !274

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #37
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ae:                                            ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.af:                                            ; preds = %bb.ar, %.thread
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ag:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN6duckdb17VariantColumnData15GetShreddedTypeEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %8, ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.ah

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.ag
  %i.ct = load i8, ptr %8, align 8, !tbaa !637
  store i8 %i.ct, ptr %7, align 8, !tbaa !637
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !426
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !426
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !318
  %i.da = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !318
  store <2 x ptr> %i.cz, ptr %i.cx, align 8, !tbaa !318
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !318
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.de

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.t, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ai unwind label %16        ; 2 uses

16:                                               ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ai:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1094
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !1095
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %.not51 = icmp eq i64 %i.di, 112
  br i1 %.not51, label %bb.bf, label %.thread

.thread:                                          ; preds = %bb.r, %bb.ai
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aj unwind label %bb.af     ; 3 uses

bb.aj:                                            ; preds = %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.dm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 noundef 0)
          to label %bb.ak unwind label %bb.ba

bb.ak:                                            ; preds = %bb.aj
  %i.dn = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm)
          to label %bb.al unwind label %bb.ba     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.do = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats18GetUnshreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.am unwind label %bb.ba

bb.am:                                            ; preds = %bb.al
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !213
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %9, ptr noundef nonnull align 8 dereferenceable(296) %i.dn, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.do)
          to label %bb.an unwind label %bb.ba

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 128 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1533 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 136 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1537
  %.not.i.i80 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i.i80, label %bb.ao, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.an
  %i.dw = load i64, ptr %9, align 8, !tbaa !822
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !822
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !1533
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86

bb.ao:                                            ; preds = %bb.an
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !1532 ; 10 uses
  %i.dz = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %bb.ap, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.ed = ashr exact i64 %i.eb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 1152921504606846975)
  %i.eh = select i1 %i.ef, i64 1152921504606846975, i64 %i.eg ; 3 uses
  %.not.i.i.i.i81 = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i81)
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #38
          to label %.noexc83 unwind label %bb.bb  ; 10 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  %i.el = load i64, ptr %9, align 8, !tbaa !822
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !822
  store ptr null, ptr %9, align 8, !tbaa !822
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dy, %i.dt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc83
  %i.em = add i64 %i.dz, -8
  %i.en = sub i64 %i.em, %i.ea                    ; 3 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader310, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.eq = and i64 %i.en, -8
  %i.er = add i64 %i.eq, 8                        ; 2 uses
  %i.es = getelementptr i8, ptr %i.ej, i64 %i.er
  %i.et = getelementptr i8, ptr %i.dy, i64 %i.er
  %bound0 = icmp ult ptr %i.ej, %i.et
  %bound1 = icmp ult ptr %i.dy, %i.es
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader310, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ep, 4611686018427387900     ; 3 uses
  %i.eu = shl i64 %n.vec, 3                       ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ej, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.dy, i64 %i.eu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.ex ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.dy, i64 %i.ex ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4295)
  call void @llvm.experimental.noalias.scope.decl(metadata !4296)
  %i.ey = getelementptr i8, ptr %next.gep230, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep230, align 8, !tbaa !822, !alias.scope !4297, !noalias !4295
  %wide.load231 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !822, !alias.scope !4297, !noalias !4295
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !822, !alias.scope !4298, !noalias !4297
  store <2 x i64> %wide.load231, ptr %i.ez, align 8, !tbaa !822, !alias.scope !4298, !noalias !4297
  %i.fa = getelementptr i8, ptr %next.gep230, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep230, align 8, !tbaa !822, !alias.scope !4297, !noalias !4295
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !822, !alias.scope !4297, !noalias !4295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !4267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader310

.lr.ph.i.i.i.i.i.i.i.preheader310:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ev, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dy, %vector.memcheck ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader310, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader310 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader310 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4295)
  call void @llvm.experimental.noalias.scope.decl(metadata !4296)
  %i.fc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !822, !alias.scope !4296, !noalias !4295
  store i64 %i.fc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !822, !alias.scope !4295, !noalias !4296
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !822, !alias.scope !4296, !noalias !4295
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i82 = icmp eq ptr %i.fd, %i.dt
  br i1 %.not.i.i.i.i.i.i.i82, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4268

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.noexc83 ], [ %i.ev, %middle.block ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dy) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.aq
  store ptr %i.ej, ptr %i.dk, align 8, !tbaa !1532
  store ptr %i.ff, ptr %i.ds, align 8, !tbaa !1533
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.fg, ptr %i.du, align 8, !tbaa !1537
  %.pr165 = load ptr, ptr %9, align 8, !tbaa !822 ; 3 uses
  %.not.i84 = icmp eq ptr %.pr165, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i85

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i85: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fh = load ptr, ptr %.pr165, align 8, !tbaa !213
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr165) #37, !inline_history !51
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1350
  %i.fm = load ptr, ptr %i.dl, align 8, !tbaa !1351
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ugt i64 %i.fp, 16
  br i1 %i.fq, label %bb.ar, label %bb.be

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86
  %i.fr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.as unwind label %bb.af     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.ft = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 noundef 1)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.fu = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft)
          to label %bb.au unwind label %bb.bc     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.fv = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats16GetShreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
end_hunk_0
