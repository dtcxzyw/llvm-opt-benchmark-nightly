inline.NumInlined: 1091
inline.NumDeleted: 619
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7Imf_3_46Header8channelsEv
declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 4 dereferenceable(13)) local_unnamed_addr #5

declare void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZN7Imf_3_46HeaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN7Imf_3_419MultiPartOutputFileC1EPKcPKNS_6HeaderEibi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7Imf_3_410idManifestERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN7Imf_3_410IDManifestC1ERKNS_20CompressedIDManifestE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6setIdsRKN7Imf_3_410IDManifestERNSt7__cxx114listINS4_I5matchSaIS5_EEESaIS7_EEEPPKciRKSt3mapINS3_12basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISJ_ESaISt4pairIKSJ_iEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %4) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::list.74", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::list.74", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %.not8.i.i = icmp eq ptr %i.h, %1
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listINS0_I5matchSaIS1_EEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.i, %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.09.i.i, align 8, !tbaa !64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 32) #27
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #27
  %.not.i.i = icmp eq ptr %i.i, %1
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS0_I5matchSaIS1_EEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !96

_ZNSt7__cxx114listINS0_I5matchSaIS1_EEESaIS3_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store ptr %1, ptr %i.m, align 8, !tbaa !61
  store ptr %1, ptr %1, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store i64 0, ptr %i.n, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.o, align 8, !tbaa !61
  store ptr %5, ptr %5, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !65
  %i.q = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 0, ptr %i.t, align 8, !tbaa !65
  store ptr %i.r, ptr %i.s, align 8, !tbaa !61
  store ptr %i.r, ptr %i.r, align 8, !tbaa !64
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %i.u = load i64, ptr %i.n, align 8, !tbaa !128
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.n, align 8, !tbaa !128
  %i.w = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %.not8.i.i89 = icmp eq ptr %i.w, %5
  br i1 %.not8.i.i89, label %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit, label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %_ZNSt7__cxx114listINS0_I5matchSaIS1_EEESaIS3_EE5clearEv.exit, %.lr.ph.i.i90
  %.09.i.i91 = phi ptr [ %i.x, %.lr.ph.i.i90 ], [ %i.w, %_ZNSt7__cxx114listINS0_I5matchSaIS1_EEESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.x = load ptr, ptr %.09.i.i91, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i91, i64 noundef 32) #27
  %.not.i.i92 = icmp eq ptr %i.x, %5
  br i1 %.not.i.i92, label %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit, label %.lr.ph.i.i90, !llvm.loop !95

_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit: ; preds = %.lr.ph.i.i90, %_ZNSt7__cxx114listINS0_I5matchSaIS1_EEESaIS3_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge456:                                   ; preds = %bb.da, %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit
  ret void

bb.b:                                             ; preds = %.lr.ph455, %bb.da
  %indvars.iv = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next, %bb.da ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 4 uses
  %i.an = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(6) @.str.24) #23
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %6, ptr %i.aj, align 8, !tbaa !61
  store ptr %6, ptr %6, align 8, !tbaa !64
  store i64 0, ptr %i.ak, align 8, !tbaa !65
  %i.ap = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 0, ptr %i.as, align 8, !tbaa !65
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !61
  store ptr %i.aq, ptr %i.aq, align 8, !tbaa !64
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %i.at = load i64, ptr %i.n, align 8, !tbaa !128
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.n, align 8, !tbaa !128
  %i.av = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %.not8.i.i100 = icmp eq ptr %i.av, %6
  br i1 %.not8.i.i100, label %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit104, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %bb.c, %.lr.ph.i.i101
  %.09.i.i102 = phi ptr [ %i.aw, %.lr.ph.i.i101 ], [ %i.av, %bb.c ] ; 2 uses
  %i.aw = load ptr, ptr %.09.i.i102, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i102, i64 noundef 32) #27
  %.not.i.i103 = icmp eq ptr %i.aw, %6
  br i1 %.not.i.i103, label %_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit104, label %.lr.ph.i.i101, !llvm.loop !95

_ZNSt7__cxx1110_List_baseI5matchSaIS1_EED2Ev.exit104: ; preds = %.lr.ph.i.i101, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.da

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.z, ptr %7, align 8, !tbaa !47
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.ax, ptr %i.g, align 8, !tbaa !48
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !28
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !48
  store i64 %i.ba, ptr %i.z, align 8, !tbaa !9
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.bb = phi ptr [ %i.az, %.noexc.i ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ax, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bc = load i8, ptr %i.am, align 1, !tbaa !9
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 1 %i.am, i64 %i.ax, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !48  ; 2 uses
  store i64 %i.bd, ptr %i.aa, align 8, !tbaa !25
  %i.be = load ptr, ptr %7, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.ab, ptr %8, align 8, !tbaa !47
  store i64 0, ptr %i.ac, align 8, !tbaa !25
  store i8 0, ptr %i.ab, align 8, !tbaa !9
  %i.bg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 58, i64 noundef 0) #24 ; 4 uses
  %.not = icmp eq i64 %i.bg, -1
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.bh = load i64, ptr %i.aa, align 8, !tbaa !25, !noalias !131
  store ptr %i.ad, ptr %9, align 8, !tbaa !47, !alias.scope !131
  %i.bi = load ptr, ptr %7, align 8, !tbaa !28, !noalias !131 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bh) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !131
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !tbaa !48, !noalias !131
  %i.bj = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bj, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.h
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc112 unwind label %bb.z  ; 2 uses

.noexc112:                                        ; preds = %.noexc10.i.i
  store ptr %i.bk, ptr %9, align 8, !tbaa !28, !alias.scope !131
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !48, !noalias !131
  store i64 %i.bl, ptr %i.ad, align 8, !tbaa !9, !alias.scope !131
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc112, %bb.h
  %i.bm = phi ptr [ %i.bk, %.noexc112 ], [ %i.ad, %bb.h ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !9
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bi, i64 %spec.select.i.i.i, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !48, !noalias !131 ; 2 uses
  store i64 %i.bo, ptr %i.ae, align 8, !tbaa !25, !alias.scope !131
  %i.bp = load ptr, ptr %9, align 8, !tbaa !28, !alias.scope !131
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !131
  %i.br = load ptr, ptr %8, align 8, !tbaa !28    ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.ab
  %i.bt = load ptr, ptr %9, align 8, !tbaa !28    ; 5 uses
  %i.bu = icmp eq ptr %i.bt, %i.ad                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.k
  br i1 %i.bu, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.k
  br i1 %i.bu, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bv = load i64, ptr %i.ae, align 8, !tbaa !25 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  switch i64 %i.bv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !9
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.by = load i64, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  store i64 %i.by, ptr %i.ac, align 8, !tbaa !25
  %i.bz = load ptr, ptr %8, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !9
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bt, ptr %8, align 8, !tbaa !28
  %i.cb = load <2 x i64>, ptr %i.ae, align 8, !tbaa !9
  store <2 x i64> %i.cb, ptr %i.ac, align 8, !tbaa !9
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cc = load i64, ptr %i.ab, align 8, !tbaa !9
  store ptr %i.bt, ptr %8, align 8, !tbaa !28
  %i.cd = load <2 x i64>, ptr %i.ae, align 8, !tbaa !9
  store <2 x i64> %i.cd, ptr %i.ac, align 8, !tbaa !9
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.br, ptr %9, align 8, !tbaa !28
  store i64 %i.cc, ptr %i.ad, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %9, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.ce = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.br, %bb.o ], [ %i.ad, %bb.p ]
  store i64 0, ptr %i.ae, align 8, !tbaa !25
  store i8 0, ptr %i.ce, align 1, !tbaa !9
  %i.cf = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ad
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ch = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cj = add nuw i64 %i.bg, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !25, !noalias !134 ; 3 uses
  %.not365 = icmp ult i64 %i.bg, %i.ck
  br i1 %.not365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i64 noundef %i.cj, i64 noundef %i.ck) #25
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.q
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.af, ptr %10, align 8, !tbaa !47, !alias.scope !134
  %i.cl = load ptr, ptr %7, align 8, !tbaa !28, !noalias !134
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj ; 2 uses
  %i.cn = sub nuw i64 %i.ck, %i.cj                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !134
  store i64 %i.cn, ptr %i.e, align 8, !tbaa !48, !noalias !134
  %i.co = icmp ugt i64 %i.cn, 15
  br i1 %i.co, label %.noexc10.i.i115, label %._crit_edge.i.i.i114

.noexc10.i.i115:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc117 unwind label %.loopexit ; 2 uses

.noexc117:                                        ; preds = %.noexc10.i.i115
  store ptr %i.cp, ptr %10, align 8, !tbaa !28, !alias.scope !134
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !48, !noalias !134
  store i64 %i.cq, ptr %i.af, align 8, !tbaa !9, !alias.scope !134
  br label %._crit_edge.i.i.i114

._crit_edge.i.i.i114:                             ; preds = %.noexc117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cr = phi ptr [ %i.cp, %.noexc117 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.cn, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i114
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !9
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !9
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %i.cm, i64 %i.cn, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i114
  %i.ct = load i64, ptr %i.e, align 8, !tbaa !48, !noalias !134 ; 2 uses
  store i64 %i.ct, ptr %i.ag, align 8, !tbaa !25, !alias.scope !134
  %i.cu = load ptr, ptr %10, align 8, !tbaa !28, !alias.scope !134
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !134
  %i.cw = load ptr, ptr %7, align 8, !tbaa !28    ; 6 uses
  %i.cx = icmp eq ptr %i.cw, %i.z
  %i.cy = load ptr, ptr %10, align 8, !tbaa !28   ; 5 uses
  %i.cz = icmp eq ptr %i.cy, %i.af                ; 2 uses
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i124: ; preds = %bb.t
  br i1 %i.cz, label %bb.u, label %.thread.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i119: ; preds = %bb.t
  br i1 %i.cz, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i120

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i124
  %i.da = load i64, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  switch i64 %i.da, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i122
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !9
  store i8 %i.dc, ptr %i.cw, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i122

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cy, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i122: ; preds = %bb.w, %bb.v, %bb.u
  %i.dd = load i64, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  store i64 %i.dd, ptr %i.aa, align 8, !tbaa !25
  %i.de = load ptr, ptr %7, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !9
  %.pre.i123 = load ptr, ptr %10, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit126

.thread.i125:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i124
  store ptr %i.cy, ptr %7, align 8, !tbaa !28
  %i.dg = load <2 x i64>, ptr %i.ag, align 8, !tbaa !9
  store <2 x i64> %i.dg, ptr %i.aa, align 8, !tbaa !9
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i120: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i119
  %i.dh = load i64, ptr %i.z, align 8, !tbaa !9
  store ptr %i.cy, ptr %7, align 8, !tbaa !28
  %i.di = load <2 x i64>, ptr %i.ag, align 8, !tbaa !9
  store <2 x i64> %i.di, ptr %i.aa, align 8, !tbaa !9
  %.not.i121 = icmp eq ptr %i.cw, null
  br i1 %.not.i121, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i120
  store ptr %i.cw, ptr %10, align 8, !tbaa !28
  store i64 %i.dh, ptr %i.af, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit126

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i120, %.thread.i125
  store ptr %i.af, ptr %10, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i122, %bb.x, %bb.y
  %i.dj = phi ptr [ %.pre.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i122 ], [ %i.cw, %bb.x ], [ %i.af, %bb.y ]
  store i64 0, ptr %i.ag, align 8, !tbaa !25
  store i8 0, ptr %i.dj, align 1, !tbaa !9
  %i.dk = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.af
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit126
  %i.dm = load i64, ptr %i.af, align 8, !tbaa !9
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ab

bb.z:                                             ; preds = %.noexc10.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body

.loopexit:                                        ; preds = %.noexc10.i.i115
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.body

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %bb.g
  %i.dp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.25, i64 noundef 0, i64 noundef 10) #24
  %i.dq = icmp eq i64 %i.dp, -1
  br i1 %i.dq, label %bb.ac, label %.preheader375

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac
  %i.ds = load i64, ptr %i.ac, align 8, !tbaa !25 ; 4 uses
  %i.dt = load ptr, ptr %8, align 8               ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.dv) ; 2 uses
  %i.dw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.dw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dz = call i32 @memcmp(ptr noundef %i.dy, ptr noundef %i.dt, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ad
  %i.ea = sub i64 %i.dv, %i.ds
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ea, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.eb = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.eb, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.eb, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ad, !llvm.loop !137

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ec = icmp eq ptr %.19.i.i.i, %i.ai
  br i1 %i.ec, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ds) ; 2 uses
  %i.ef = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ef, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ae
end_hunk_0
