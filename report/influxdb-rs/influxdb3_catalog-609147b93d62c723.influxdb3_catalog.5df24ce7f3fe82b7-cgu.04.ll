Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.04?download=true
inline.NumInlined: 2865
inline.NumDeleted: 825
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository12restore_user:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit69: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.ak:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getBO_ECs844E4pPEVZX_17influxdb3_catalog.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ci = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  %i.cj = load i64, ptr %i.ch, align 8, !noundef !5
  %i.ck = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull %i.ci, i64 noundef %i.cj, i64 noundef %2)
          to label %bb.aj unwind label %.loopexit.split-lp ; 0 uses

bb.al:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getBO_ECs844E4pPEVZX_17influxdb3_catalog.exit.thread
  call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !6586)
  call void @llvm.experimental.noalias.scope.decl(metadata !6587)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !6587, !noalias !6588, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6589
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB8_7catalog8versions2v36schema4user8UserInfoE6updateB1K_EB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(168) %i.e)
          to label %.noexc73 unwind label %.loopexit.split-lp

.noexc73:                                         ; preds = %bb.am
  %i.cn = load i64, ptr %i.b, align 8, !range !30, !noalias !6589, !noundef !5
  %.not.i72 = icmp eq i64 %i.cn, -1
  br i1 %.not.i72, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !6589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6589
  invoke void @_RNvXs_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryNtNtB6_5error12CatalogErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtB4_15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6UserIdEE4fromB6_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6589
  br label %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository11update_user.exit

bb.ao:                                            ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6589
  store i8 -1, ptr %0, align 8, !alias.scope !6586, !noalias !6590
  br label %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository11update_user.exit

_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository11update_user.exit: ; preds = %bb.ao, %.noexc74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !6591)
  call void @llvm.experimental.noalias.scope.decl(metadata !6592)
  %i.co = load ptr, ptr %i.h, align 8, !alias.scope !6593, !nonnull !5, !noundef !5
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !6593
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit76

bb.ap:                                            ; preds = %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository11update_user.exit
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit76

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit76: ; preds = %bb.ap, %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository11update_user.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.aq:                                            ; preds = %bb.j, %bb.ar
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ar:                                            ; preds = %.split.thread, %.noexc
  %.pn5978 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %.noexc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %3) #26
          to label %common.resume unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15get_by_oauth_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6607, !noalias !6608, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = tail call noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6610)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6611, !noalias !6612, !noundef !5 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !6611, !noalias !6612, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !6613 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.x = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentINtNtCscdodAO9FK5_5alloc4sync3ArceEE10equivalentCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !6614
  br i1 %i.x, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.d, !prof !19

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit.thread, !prof !12

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ag = tail call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4user8UserInfoE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.0.0 = phi ptr [ %i.ag, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECs844E4pPEVZX_17influxdb3_catalog.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15get_by_username(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = tail call noundef align 8 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1X_E12get_by_righteECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4user8UserInfoE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15oauth_id_exists(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyeECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15username_exists(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEIBP_NtCsbFlE7Gjht9i_12influxdb3_id6UserIdENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateE12contains_keyINtBR_7WrappereEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository16has_active_users(ptr noalias noundef readonly align 8 captures(none) dereferenceable(464) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not3.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not3.not, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6621, !noalias !6622, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !6623, !noundef !5
  %1 = trunc nuw i64 %i.i to i1                   ; 2 uses
  %.not = xor i1 %1, true
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.not.not.not.not = icmp eq ptr %i.j, %i.e
  %or.cond = select i1 %.not, i1 true, i1 %.not.not.not.not
  br i1 %or.cond, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.loopexit, label %.lr.ph

_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.loopexit: ; preds = %.lr.ph
  %.not.not.not.lcssa.ph = xor i1 %1, true
  br label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit

_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit: ; preds = %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.loopexit, %bb.a
  %.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %.not.not.not.lcssa.ph, %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_QNCNvMs1_B1X_NtB1X_14UserRepository12active_users0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.loopexit ]
  ret i1 %.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository17active_user_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsS_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB2c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENCNvMs1_B2W_NtB2W_14UserRepository12active_users0ENtNtNtB9_6traits8iterator8Iterator5countB36_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.sroa.0.0610.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.0610.i.i, align 8, !alias.scope !6628, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !13, !noalias !6629, !noundef !5
  %i.m = xor i64 %i.l, 1
  %i.n = add i64 %i.m, %.sroa.0.011.i.i           ; 2 uses
  %i.o = icmp eq ptr %i.j, %i.g
  br i1 %i.o, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENCNvMs1_B2W_NtB2W_14UserRepository12active_users0ENtNtNtB9_6traits8iterator8Iterator5countB36_.exit, label %.lr.ph.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENCNvMs1_B2W_NtB2W_14UserRepository12active_users0ENtNtNtB9_6traits8iterator8Iterator5countB36_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository19remove_oauth_lookup(ptr noalias noundef align 8 dereferenceable(464) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_RINvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6retainNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB31_14UserRepository19remove_oauth_lookup0EB3b_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository22remove_username_lookup(ptr noalias noundef align 8 dereferenceable(464) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1X_E14remove_by_leftBN_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6638)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6638, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !6639
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository24add_login_identity_oauth(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(464) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.p = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyeECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.m)
          to label %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15oauth_id_exists.exit unwind label %.split.thread

.noexc46:                                         ; preds = %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit51
  br i1 %.sroa.022.4, label %bb.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEBN_.exit53

.split.thread:                                    ; preds = %bb.f, %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15oauth_id_exists.exit: ; preds = %bb.a
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15oauth_id_exists.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.q = invoke noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4user8UserInfoE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.d unwind label %.split.thread ; 2 uses

bb.c:                                             ; preds = %_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository15oauth_id_exists.exit
  store i8 3, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.r = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6683
  store ptr %i.j, ptr %i.a, align 8, !noalias !6683
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3s_CsbFlE7Gjht9i_12influxdb3_idNtB6_6UserIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6683
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @124, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %.split.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6683
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.610.0..sroa_idx, i64 7, i1 false)
  %.sroa.612.0.copyload = load ptr, ptr %i.u, align 8
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.815.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 4, ptr %0, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.612.0.copyload, ptr %.sroa.534.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !6684)
  call void @llvm.experimental.noalias.scope.decl(metadata !6685)
  call void @llvm.experimental.noalias.scope.decl(metadata !6686)
  %i.v = load ptr, ptr %3, align 8, !alias.scope !6687, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !6687
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEBN_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEBN_.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %i.z = load i64, ptr %i.l, align 8, !noundef !5
  store ptr %i.y, ptr %i.h, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE8make_mutBR_(ptr noalias noundef align 8 dereferenceable(8) %i.i)
          to label %bb.m unwind label %.thread65

bb.k:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

.thread65:                                        ; preds = %bb.r, %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit, %bb.j
  %.sroa.022.3.ph = phi i1 [ true, %bb.j ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit ], [ false, %bb.p ], [ false, %bb.r ]
  %lpad.thr_comm63 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit51

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository24add_login_identity_oauth:bb.a
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEBN_.exit53

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEBN_.exit53 unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository25get_and_increment_next_id(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(464) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = tail call noundef i64 @_RNvXs3o_CsbFlE7Gjht9i_12influxdb3_idNtB6_6UserIdNtB6_9CatalogId4next(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  store i64 %i.c, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository27delete_login_identity_oauth(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(464) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 3 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = tail call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4user8UserInfoE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %i.g, align 8
  %i.j = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE8make_mutBR_(ptr noalias noundef align 8 dereferenceable(8) %i.g)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6732
  store ptr %i.h, ptr %i.a, align 8, !noalias !6732
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtB6_7Display3fmtCs844E4pPEVZX_17influxdb3_catalog, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6732
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @124, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6732
  %.sroa.611.0.copyload = load ptr, ptr %i.m, align 8
  store i8 4, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.l, i64 7, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit42

bb.d:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.w, %bb.j ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6733)
  call void @llvm.experimental.noalias.scope.decl(metadata !6734)
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !6735, !nonnull !5, !noundef !5
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !6735
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit unwind label %bb.s

bb.f:                                             ; preds = %bb.n, %bb.m, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6736)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6736, !noundef !5 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !6737
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.r, align 8
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit: ; preds = %bb.h, %bb.g, %bb.i
  store ptr null, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = load i64, ptr %2, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  invoke fastcc void @_RNvXs4_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_8UserInfoNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(168) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.z)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user18LoginIdentityOAuthEEB19_.exit
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB8_7catalog8versions2v36schema4user8UserInfoE6updateB1K_EB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(168) %i.e)
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aa = load i64, ptr %i.f, align 8, !range !30, !noundef !5
  %.not38 = icmp eq i64 %i.aa, -1
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryNtNtB6_5error12CatalogErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtB4_15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6UserIdEE4fromB6_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.q unwind label %bb.f

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_RINvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6retainNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB31_14UserRepository27delete_login_identity_oauths_0EB3b_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %bb.n
  store i8 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6738)
  call void @llvm.experimental.noalias.scope.decl(metadata !6739)
  %i.ac = load ptr, ptr %i.g, align 8, !alias.scope !6740, !nonnull !5, !noundef !5
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !6740
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit42

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit42: ; preds = %bb.p, %bb.o, %bb.c, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !6741)
  call void @llvm.experimental.noalias.scope.decl(metadata !6742)
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !6743, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !6743
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit42

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit42

bb.s:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository28get_deleted_user_by_oauth_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(464) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i
  %i.g = phi ptr [ %i.h, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6749)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !6749, !noalias !6750, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !13, !noalias !6751, !noundef !5
  %3 = trunc nuw i64 %i.k to i1
  br i1 %3, label %bb.b, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !noalias !6751, !noundef !5 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not3.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.o = load i64, ptr %i.n, align 8, !noalias !6751, !noundef !5
  %i.p = icmp eq i64 %i.o, %2
  br i1 %i.p, label %_RNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_14UserRepository28get_deleted_user_by_oauth_id0Bh_.exit.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i

_RNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_14UserRepository28get_deleted_user_by_oauth_id0Bh_.exit.i.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %1, i64 %2), !noalias !6751
  %bcmp.i.fr.i.i = freeze i32 %bcmp.i.i.i
  %i.r = icmp eq i32 %bcmp.i.fr.i.i, 0
  br i1 %i.r, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i: ; preds = %_RNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_14UserRepository28get_deleted_user_by_oauth_id0Bh_.exit.i.i, %bb.c, %bb.b, %.lr.ph.i
  %i.s = icmp eq ptr %i.h, %i.e
  br i1 %i.s, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.thread, label %.lr.ph.i

_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit: ; preds = %_RNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_14UserRepository28get_deleted_user_by_oauth_id0Bh_.exit.i.i
  %i.t = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.thread

_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i, %bb.a, %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoENCNvMs1_B1M_NtB1M_14UserRepository28get_deleted_user_by_oauth_id0E0B1W_.exit.i ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkRB1o_NCNvMs1_B1X_NtB1X_14UserRepository28get_deleted_user_by_oauth_id0E0INtNtNtB3t_3ops12control_flow11ControlFlowB4M_EEB27_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB5_14UserRepository30update_login_identity_password(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(464) %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 15 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  store i64 %2, ptr %i.k, align 8
  store ptr %3, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %4, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.m = invoke noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6UserIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4user8UserInfoE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.b unwind label %.split.thread ; 2 uses

.noexc:                                           ; preds = %bb.h, %bb.g
  br i1 %.sroa.043.2, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit86

.split.thread:                                    ; preds = %bb.o, %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8
  %i.n = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE8make_mutBR_(ptr noalias noundef align 8 dereferenceable(8) %i.i)
          to label %bb.j unwind label %bb.i       ; 5 uses

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6786
  store ptr %i.k, ptr %i.b, align 8, !noalias !6786
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3s_CsbFlE7Gjht9i_12influxdb3_idNtB6_6UserIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6786
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @125, ptr noundef nonnull %i.b)
          to label %bb.e unwind label %.split.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6786
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.69.0..sroa_idx, i64 7, i1 false)
  %.sroa.611.0.copyload = load ptr, ptr %i.o, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.655.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.814.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 4, ptr %0, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.554.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit80

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit80: ; preds = %bb.n, %bb.o, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6787)
  call void @llvm.experimental.noalias.scope.decl(metadata !6788)
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !6789, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !6789
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit80
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.g:                                             ; preds = %bb.p, %bb.i
  %.sroa.043.2 = phi i1 [ %.sroa.043.3, %bb.i ], [ false, %bb.p ]
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.ai, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  call void @llvm.experimental.noalias.scope.decl(metadata !6791)
  %i.s = load ptr, ptr %i.i, align 8, !alias.scope !6792, !nonnull !5, !noundef !5
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !6792
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %.noexc

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.x

bb.i:                                             ; preds = %bb.m, %bb.s, %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit76, %bb.c
  %.sroa.043.3 = phi i1 [ false, %bb.s ], [ false, %bb.q ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit76 ], [ true, %bb.m ], [ true, %bb.c ]
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.x = load i8, ptr %i.w, align 8, !range !11, !noundef !5
  %.not70 = icmp eq i8 %i.x, 2
  br i1 %.not70, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6793)
  call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !6795, !nonnull !5, !noundef !5
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !6795
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit76

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit76 unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6796
  store ptr %i.k, ptr %i.a, align 8, !noalias !6796
  %.sroa.42.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3s_CsbFlE7Gjht9i_12influxdb3_idNtB6_6UserIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i77, align 8, !noalias !6796
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull @125, ptr noundef nonnull %i.a)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6796
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.465.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.631.0..sroa_idx, i64 7, i1 false)
  %.sroa.633.0.copyload = load ptr, ptr %i.ae, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.667.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.836.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 4, ptr %0, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.633.0.copyload, ptr %.sroa.566.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6797)
  call void @llvm.experimental.noalias.scope.decl(metadata !6798)
  %i.af = load ptr, ptr %i.i, align 8, !alias.scope !6799, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !6799
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit80

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit80 unwind label %.split.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit80, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit84, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEB1k_.exit82
  ret void

bb.p:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessi_1__NtB5_23ColumnDefinitionDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB5_13OptionDecodertENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.e, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessl_1__NtB5_22TimestampColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit

_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessl_1__NtB5_22TimestampColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.g, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessl_1__NtB5_22TimestampColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.i, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.j)
  br i1 %i.k, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB5_13OptionDecodertENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.i)
  br i1 %i.m, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typesso_1__NtB5_16TagColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit

_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typesso_1__NtB5_16TagColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.i)
  br i1 %i.o, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typesso_1__NtB5_16TagColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.s = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(304) %i.r)
  br i1 %i.s, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.i

_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
  br i1 %i.u, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB5_13OptionDecodertENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.q)
  br i1 %i.w, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.q)
  br i1 %i.y, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj6_Kb1_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.q)
  br label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit

_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit: ; preds = %bb.c, %bb.d, %bb.b, %bb.h, %bb.g, %bb.f, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.i, %bb.e, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typesso_1__NtB5_16TagColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessl_1__NtB5_22TimestampColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typesso_1__NtB5_16TagColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit ], [ true, %bb.a ], [ true, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessl_1__NtB5_22TimestampColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit ], [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.g ], [ true, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.i ], [ true, %bb.f ], [ %i.aa, %bb.h ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessl_1__NtB5_22TimestampColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB5_13OptionDecodertENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typesso_1__NtB5_16TagColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB5_13OptionDecodertENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessr_1__NtB5_18FieldColumnDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(304) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.a, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.thread, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit

_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br i1 %i.c, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB5_13OptionDecodertENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br i1 %i.e, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br i1 %i.g, label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj6_Kb1_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br label %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.thread

_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit.thread: ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ true, %_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessf_1__NtB5_22FieldIdentifierDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate.exit ], [ true, %bb.b ], [ %i.i, %bb.d ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessu_1__NtB5_20FieldDataTypeDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj6_Kb1_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessx_1__NtB5_22FieldFamilyNameDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj2_Kb0_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = tail call noundef zeroext i1 @_RNvXs2_NtCs87O7Q65ve1k_7bitcode3strNtB5_10StrDecoderNtNtB7_5coder4View8populate(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4users1_1__NtBa_15LoginIdentitiesNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4users3_1__NtBa_29LoginIdentityUsernamePasswordNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB25_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 36)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4users5_1__NtBa_18LoginIdentityOAuthNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1U_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 25)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4users7_1__NtBa_16RefreshTokenInfoNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4users_1__NtBa_8UserInfoNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtBW_14UserRepository12active_users0INtB7_5FnMutTRRINtNtCscdodAO9FK5_5alloc4sync3ArcNtBW_8UserInfoEEE8call_mutB16_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !26, !noundef !5
  %i.a = load ptr, ptr %.val, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !13, !noundef !5
  %2 = trunc nuw i64 %i.c to i1
  %3 = xor i1 %2, true
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs2_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtBW_22RefreshTokenRepository15cleanup_expired0INtB7_5FnMutTRTRINtNtCscdodAO9FK5_5alloc4sync3ArceERNtBW_16RefreshTokenInfoEEE8call_mutB16_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !26, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !26, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !26, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = load i64, ptr %.val, align 8, !noundef !5
  %i.f = icmp slt i64 %i.d, %i.e
  br i1 %i.f, label %_RNCNvMs2_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_22RefreshTokenRepository15cleanup_expired0Bh_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %.val1, align 8, !range !13, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  br label %_RNCNvMs2_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_22RefreshTokenRepository15cleanup_expired0Bh_.exit

_RNCNvMs2_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4userNtB7_22RefreshTokenRepository15cleanup_expired0Bh_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records4nodeNtB5_11AckStopNodeNtNtB9_8registry13CatalogRecord5apply(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef align 8 dereferenceable(1680) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  store i32 %i.c, ptr %i.a, align 4
  call void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNtNtNtNtNtNtB8_7catalog8versions2v36schema4node14NodeDefinitionE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs1_NtNtB35_7records4nodeNtB3H_11AckStopNodeNtNtB35_8registry13CatalogRecord5apply0EB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records4nodeNtB5_11AckStopNodeNtNtB9_8registry13CatalogRecord5event(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 1), (4, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull %i.h, i64 noundef %i.g)
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i32, ptr %i.l, align 8, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.r, align 4
  store i8 21, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5tableNtB5_10AddColumnsNtNtB9_8registry13CatalogRecord5apply(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(1680) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !noundef !5
  store i32 %i.d, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !noundef !5
  store i32 %i.f, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs1_NtNtB37_7records5tableNtB3J_10AddColumnsNtNtB37_8registry13CatalogRecord5apply0EB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops4nodeNtB5_13AckStopNodeOpNtB7_9CatalogOp6output(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4node14NodeDefinitionE11get_by_nameB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  ret ptr %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops4nodeNtB5_13AckStopNodeOpNtB7_9CatalogOp7prepare(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = tail call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNtNtNtNtNtNtB7_7catalog8versions2v36schema4node14NodeDefinitionE11get_by_nameB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.o) ; 5 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.q, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %i.r, align 8 ; 2 uses
  %i.s = icmp ne i64 %.sroa.020.0.copyload, 4
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %.sroa.020.0.copyload, 3
  br i1 %i.t, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8225
  store ptr %i.l, ptr %i.g, align 8, !noalias !8225
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs844E4pPEVZX_17influxdb3_catalog, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8225
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @131, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8225
  %.sroa.611.0.copyload = load ptr, ptr %i.w, align 8
  store i8 4, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.v, i64 7, i1 false)
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.648.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEB1k_.exit66

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.y = load i32, ptr %i.x, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8226
  store i64 0, ptr %i.f, align 8, !noalias !8226
  %.sroa.42.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i54, align 8, !noalias !8226
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !8226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8226
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1610612768, ptr %i.z, align 8, !noalias !8226
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !8226
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !8226
  store ptr %i.f, ptr %i.e, align 8, !noalias !8226
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @223, ptr %i.aa, align 8, !noalias !8226
  %i.ab = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e, !noalias !8227

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #26
          to label %.body unwind label %bb.h, !noalias !8227

bb.f:                                             ; preds = %bb.d
  br i1 %i.ab, label %bb.g, label %bb.l, !prof !12

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #27
          to label %.noexc.i unwind label %bb.e, !noalias !8227

.noexc.i:                                         ; preds = %bb.g
  unreachable

end_hunk_2
