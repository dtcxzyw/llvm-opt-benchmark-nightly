Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Normalize?download=true
inline.NumInlined: 5126
inline.NumDeleted: 2027
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Luau10Normalizer16unionExternTypesERNS_20NormalizedExternTypeERKS1_:bb.a
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !119 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !111
  %i.bz = icmp eq ptr %i.bl, %i.by
  br i1 %i.bz, label %_ZNKSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ca = icmp eq ptr %i.bl, %i.cd
  br i1 %i.ca, label %_ZNKSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.cb, %bb.h ], [ %i.bw, %bb.g ]
  %i.cb = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !119 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !111 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = urem i64 %i.ce, %i.br
  %.not19.i.i.i.i.i = icmp eq i64 %i.cf, %i.bs
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %.preheader390, %..loopexit_crit_edge21.i.i.i.i.i
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.77) #35
  unreachable

_ZNKSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.bw, %bb.g ], [ %i.cb, %bb.h ] ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 6 uses
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !106 ; 2 uses
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !106
  %.not263367 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not263367, label %._crit_edge, label %.lr.ph370

.lr.ph370:                                        ; preds = %_ZNKSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit
  %.not.i.i.i67 = icmp eq ptr %i.bl, null         ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph370, %_ZN4Luau10Normalizer16unionExternTypesERNS_7TypeIdsERKS1_.exit129
  %.sroa.0231.0368 = phi ptr [ %i.ch, %.lr.ph370 ], [ %i.tt, %_ZN4Luau10Normalizer16unionExternTypesERNS_7TypeIdsERKS1_.exit129 ] ; 3 uses
  %i.ck = load ptr, ptr %.sroa.0231.0368, align 8, !tbaa !111 ; 15 uses
  %i.cl = load i64, ptr %i.r, align 8, !tbaa !122
  %.not.not.i.i.i55 = icmp eq i64 %i.cl, 0
  br i1 %.not.not.i.i.i55, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.j, %bb.k
  %.sroa.06.0.in.i.i.i64 = phi ptr [ %.sroa.06.0.i.i.i65, %bb.k ], [ %i.t, %bb.j ]
  %.sroa.06.0.i.i.i65 = load ptr, ptr %.sroa.06.0.in.i.i.i64, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.06.0.i.i.i65, null
  br i1 %.not.i.i.i66, label %.loopexit.i.i62, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i65, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !111
  %i.co = icmp eq ptr %i.ck, %i.cn
  br i1 %i.co, label %_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit, label %.preheader, !llvm.loop !13

bb.l:                                             ; preds = %bb.j
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = load i64, ptr %i.s, align 8, !tbaa !121 ; 2 uses
  %i.cr = urem i64 %i.cp, %i.cq                   ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !120
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i.i56 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i56, label %.loopexit.i.i62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !119 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !111
  %i.cy = icmp eq ptr %i.ck, %i.cx
  br i1 %i.cy, label %_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit, label %.lr.ph.i.i.i.i.i57

bb.n:                                             ; preds = %bb.o
  %i.cz = icmp eq ptr %i.ck, %i.dc
  br i1 %i.cz, label %_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !14

.lr.ph.i.i.i.i.i57:                               ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i58 = phi ptr [ %i.da, %bb.n ], [ %i.cv, %bb.m ]
  %i.da = load ptr, ptr %.020.i.i.i.i.i58, align 8, !tbaa !119 ; 4 uses
  %.not18.i.i.i.i.i59 = icmp eq ptr %i.da, null
  br i1 %.not18.i.i.i.i.i59, label %.loopexit.i.i62, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i57
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !111 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = urem i64 %i.dd, %i.cq
  %.not19.i.i.i.i.i60 = icmp eq i64 %i.de, %i.cr
  br i1 %.not19.i.i.i.i.i60, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i.i61, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i.i61:               ; preds = %bb.o
  br label %.loopexit.i.i62, !llvm.loop !14

.loopexit.i.i62:                                  ; preds = %bb.l, %.lr.ph.i.i.i.i.i57, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i61
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.77) #35
  unreachable

_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit: ; preds = %bb.n, %bb.k, %bb.m
  %.sroa.06.1.i.i.i63 = phi ptr [ %.sroa.06.0.i.i.i65, %bb.k ], [ %i.cv, %bb.m ], [ %i.da, %bb.n ] ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i63, i64 16 ; 12 uses
  br i1 %.not.i.i.i67, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit
  %i.dg = load i32, ptr %i.bl, align 8, !tbaa !163
  %i.dh = icmp eq i32 %i.dg, 11
  %i.di = select i1 %i.dh, ptr %i.cj, ptr null
  br label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.p, %_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit
  %i.dj = phi ptr [ %i.di, %bb.p ], [ null, %_ZNSt13unordered_mapIPKN4Luau4TypeENS0_7TypeIdsESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE2atERSA_.exit ] ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i4.i, label %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit, label %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit.thread

_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit:        ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.dk = call noundef zeroext i1 @_ZN4Luau10isSubclassEPKNS_10ExternTypeES2_(ptr noundef %i.dj, ptr noundef null)
  br i1 %i.dk, label %bb.q, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i84

_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit.thread: ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.dl = load i32, ptr %i.ck, align 8, !tbaa !163
  %i.dm = icmp eq i32 %i.dl, 11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.do = select i1 %i.dm, ptr %i.dn, ptr null
  %i.dp = call noundef zeroext i1 @_ZN4Luau10isSubclassEPKNS_10ExternTypeES2_(ptr noundef %i.dj, ptr noundef %i.do)
  br i1 %i.dp, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit.thread, %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit
  %i.dq = call ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %i.df) ; 2 uses
  %i.dr = call ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.df)
  %.not264365 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not264365, label %_ZN4Luau10Normalizer16unionExternTypesERNS_7TypeIdsERKS1_.exit129, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %_ZN4Luau7TypeIdsD2Ev.exit
  %.sroa.0220.0366 = phi ptr [ %i.km, %_ZN4Luau7TypeIdsD2Ev.exit ], [ %i.dq, %bb.q ] ; 3 uses
  %i.ds = load ptr, ptr %.sroa.0220.0366, align 8, !tbaa !111 ; 4 uses
  br i1 %.not.i.i.i67, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i69, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.dt = load i32, ptr %i.bl, align 8, !tbaa !163
  %i.du = icmp eq i32 %i.dt, 11
  %i.dv = select i1 %i.du, ptr %i.cj, ptr null
  br label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i69

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i69: ; preds = %bb.r, %.lr.ph
  %i.dw = phi ptr [ %i.dv, %bb.r ], [ null, %.lr.ph ] ; 2 uses
  %.not.i.i4.i70 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i4.i70, label %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit71, label %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit71.thread

_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit71:      ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i69
  %i.dx = call noundef zeroext i1 @_ZN4Luau10isSubclassEPKNS_10ExternTypeES2_(ptr noundef %i.dw, ptr noundef null)
  br i1 %i.dx, label %bb.s, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i80

_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit71.thread: ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.i69
  %i.dy = load i32, ptr %i.ds, align 8, !tbaa !163
  %i.dz = icmp eq i32 %i.dy, 11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.eb = select i1 %i.dz, ptr %i.ea, ptr null
  %i.ec = call noundef zeroext i1 @_ZN4Luau10isSubclassEPKNS_10ExternTypeES2_(ptr noundef %i.dw, ptr noundef %i.eb)
  br i1 %i.ec, label %bb.s, label %bb.bi

bb.s:                                             ; preds = %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit71.thread, %_ZN4LuauL10isSubclassEPKNS_4TypeES2_.exit71
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !202 ; 3 uses
  store i64 %i.ee, ptr %i.as, align 8, !tbaa !202
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !105 ; 3 uses
  store ptr %i.eg, ptr %i.at, align 8, !tbaa !105
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !230 ; 2 uses
  %.not.i.i.i72 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i72, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = shl i64 %i.ei, 4
  %i.ek = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #38 ; 4 uses
  store ptr %i.ek, ptr %7, align 8, !tbaa !104
  %i.el = load i64, ptr %i.eh, align 8, !tbaa !230
  %.not13.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not13.i.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ 0, %bb.t ] ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.012.i.i.i
  %i.en = load ptr, ptr %i.cg, align 8, !tbaa !104
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.012.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.ep = add nuw i64 %.012.i.i.i, 1              ; 4 uses
  %i.eq = load i64, ptr %i.eh, align 8, !tbaa !230
  %i.er = icmp ult i64 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph.i.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i.loopexit, !llvm.loop !18

_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i.loopexit: ; preds = %.lr.ph.i.i.i
  store i64 %i.ep, ptr %i.ar, align 8, !tbaa !230
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i

_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i: ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i.loopexit, %bb.t, %bb.s
  %i.es = phi i64 [ %i.ep, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i.loopexit ], [ 0, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.et = phi ptr [ %i.ek, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i.loopexit ], [ %i.ek, %bb.t ], [ null, %bb.s ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 56 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 64 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !110 ; 2 uses
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !109 ; 3 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i.i.i.i73, label %.noexc5.i, label %bb.u

bb.u:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i
  %i.fb = icmp ugt i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !50

.noexc.i.i.i:                                     ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc.i unwind label %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #36
          to label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge unwind label %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre450 = load ptr, ptr %i.eu, align 8, !tbaa !106 ; 2 uses
  %.pre451 = load ptr, ptr %i.ev, align 8, !tbaa !106
  %.pre455 = ptrtoint ptr %.pre451 to i64
  %.pre456 = ptrtoint ptr %.pre450 to i64
  br label %.noexc5.i

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i
  %.pre-phi457 = phi i64 [ %.pre456, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ez, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i ]
  %.pre-phi = phi i64 [ %.pre455, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ey, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i ]
  %i.fd = phi ptr [ %.pre450, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ex, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i ] ; 2 uses
  %i.fe = phi ptr [ %i.fc, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ null, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit.i ] ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fa ; 2 uses
  %i.fg = sub i64 %.pre-phi, %.pre-phi457         ; 4 uses
  %i.fh = icmp sgt i64 %i.fg, 8
  br i1 %i.fh, label %bb.v, label %bb.w, !prof !355

bb.v:                                             ; preds = %.noexc5.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fe, ptr align 8 %i.fd, i64 %i.fg, i1 false)
  br label %_ZN4Luau7TypeIdsC2ERKS0_.exit

bb.w:                                             ; preds = %.noexc5.i
  %i.fi = icmp eq i64 %i.fg, 8
  br i1 %i.fi, label %bb.x, label %_ZN4Luau7TypeIdsC2ERKS0_.exit

bb.x:                                             ; preds = %bb.w
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !111
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !111
  br label %_ZN4Luau7TypeIdsC2ERKS0_.exit

.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp715 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i6.i, label %common.resume, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.et) #32
  br label %common.resume

common.resume:                                    ; preds = %bb.dy, %.loopexit.split-lp, %.body, %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp715, %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp715, %bb.y ], [ %i.ud, %bb.dy ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau7TypeIdsC2ERKS0_.exit:                    ; preds = %bb.v, %bb.w, %bb.x
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 %i.fg ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 80
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !108 ; 3 uses
  store i64 %i.fm, ptr %i.aw, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  store ptr %i.bl, ptr %6, align 8, !tbaa !103, !alias.scope !545
  store ptr %i.et, ptr %i.ax, align 8, !tbaa !104, !alias.scope !545
  store i64 %i.es, ptr %i.ay, align 8, !tbaa !230, !alias.scope !545
  store i64 %i.ee, ptr %i.az, align 8, !tbaa !202, !alias.scope !545
  store ptr %i.eg, ptr %i.ba, align 8, !tbaa !105, !alias.scope !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 24, i1 false), !noalias !545
  store ptr %i.fe, ptr %i.bb, align 8, !tbaa !109, !alias.scope !545
  store ptr %i.fk, ptr %i.bc, align 8, !tbaa !110, !alias.scope !545
  store ptr %i.ff, ptr %i.bd, align 8, !tbaa !107, !alias.scope !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !noalias !545
  store i64 %i.fm, ptr %i.be, align 8, !tbaa !108, !alias.scope !545
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %1, ptr %4, align 8, !tbaa !351
  %i.fn = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #36
          to label %.noexc139 unwind label %bb.bf ; 18 uses

.noexc139:                                        ; preds = %_ZN4Luau7TypeIdsC2ERKS0_.exit
  store ptr null, ptr %i.fn, align 8, !tbaa !119
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.bl, ptr %i.fo, align 8, !tbaa !353
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  store ptr %i.et, ptr %i.fp, align 8, !tbaa !104
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %i.es, ptr %i.fq, align 8, !tbaa !230
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store i64 %i.ee, ptr %i.fr, align 8, !tbaa !202
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store ptr %i.eg, ptr %i.fs, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, i8 0, i64 24, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  store ptr %i.fe, ptr %i.ft, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  store ptr %i.fk, ptr %i.fu, align 8, !tbaa !110
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  store ptr %i.ff, ptr %i.fv, align 8, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  store i64 %i.fm, ptr %i.fw, align 8, !tbaa !108
  store ptr %i.fn, ptr %i.bf, align 8, !tbaa !354
  %i.fx = load i64, ptr %i.r, align 8, !tbaa !122 ; 2 uses
  %.not.not.i = icmp eq i64 %i.fx, 0
  br i1 %.not.not.i, label %.preheader381, label %.thread.i

.thread.i:                                        ; preds = %.noexc139
  %i.fy = ptrtoint ptr %i.bl to i64               ; 4 uses
  %i.fz = load i64, ptr %i.s, align 8, !tbaa !121 ; 5 uses
  %i.ga = urem i64 %i.fy, %i.fz                   ; 5 uses
  %i.gb = load ptr, ptr %1, align 8, !tbaa !120
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i135, label %.critedge27.i, label %bb.ab

.preheader381:                                    ; preds = %.noexc139, %bb.z
  %.sroa.032.0.in.i = phi ptr [ %.sroa.032.0.i, %bb.z ], [ %i.t, %.noexc139 ]
  %.sroa.032.0.i = load ptr, ptr %.sroa.032.0.in.i, align 8, !tbaa !119 ; 3 uses
  %.not.i138 = icmp eq ptr %.sroa.032.0.i, null
  br i1 %.not.i138, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader381
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.032.0.i, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !111
  %i.gg = icmp eq ptr %i.bl, %i.gf
  br i1 %i.gg, label %_ZNKSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NS0_7TypeIdsEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS5_m.exit.i, label %.preheader381, !llvm.loop !15

bb.aa:                                            ; preds = %.preheader381
  %i.gh = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.gi = load i64, ptr %i.s, align 8, !tbaa !121 ; 2 uses
  %i.gj = urem i64 %i.gh, %i.gi
  br label %.critedge27.i

bb.ab:                                            ; preds = %.thread.i
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !119 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !111
  %i.gn = icmp eq ptr %i.bl, %i.gm
  br i1 %i.gn, label %_ZNKSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NS0_7TypeIdsEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS5_m.exit.i, label %.lr.ph.i.i.i136

bb.ac:                                            ; preds = %bb.ad
  %i.go = icmp eq ptr %i.bl, %i.gr
  br i1 %i.go, label %_ZNKSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NS0_7TypeIdsEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS5_m.exit.i, label %.lr.ph.i.i.i136, !llvm.loop !14

.lr.ph.i.i.i136:                                  ; preds = %bb.ab, %bb.ac
  %.020.i.i.i137 = phi ptr [ %i.gp, %bb.ac ], [ %i.gk, %bb.ab ]
  %i.gp = load ptr, ptr %.020.i.i.i137, align 8, !tbaa !119 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not18.i.i.i, label %.critedge27.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !111 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = urem i64 %i.gs, %i.fz
  %.not19.i.i.i = icmp eq i64 %i.gt, %i.ga
  br i1 %.not19.i.i.i, label %bb.ac, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.ad
  br label %.critedge27.i, !llvm.loop !14

.critedge27.i:                                    ; preds = %.lr.ph.i.i.i136, %..loopexit_crit_edge21.i.i.i, %bb.aa, %.thread.i
  %i.gu = phi i64 [ %i.gi, %bb.aa ], [ %i.fz, %.thread.i ], [ %i.fz, %..loopexit_crit_edge21.i.i.i ], [ %i.fz, %.lr.ph.i.i.i136 ]
  %i.gv = phi i64 [ %i.gj, %bb.aa ], [ %i.ga, %.thread.i ], [ %i.ga, %..loopexit_crit_edge21.i.i.i ], [ %i.ga, %.lr.ph.i.i.i136 ]
  %i.gw = phi i64 [ %i.gh, %bb.aa ], [ %i.fy, %.thread.i ], [ %i.fy, %..loopexit_crit_edge21.i.i.i ], [ %i.fy, %.lr.ph.i.i.i136 ]
  %i.gx = load i64, ptr %i.ap, align 8, !tbaa !317
  %i.gy = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef %i.gu, i64 noundef %i.fx, i64 noundef 1)
          to label %.noexc197 unwind label %bb.av ; 2 uses

.noexc197:                                        ; preds = %.critedge27.i
  %i.gz = extractvalue { i8, i64 } %i.gy, 0
  %i.ha = trunc i8 %i.gz to i1
  br i1 %i.ha, label %bb.ae, label %.noexc197._crit_edge

.noexc197._crit_edge:                             ; preds = %.noexc197
  %.pre452 = load ptr, ptr %1, align 8, !tbaa !120
  br label %bb.aq

bb.ae:                                            ; preds = %.noexc197
  %i.hb = extractvalue { i8, i64 } %i.gy, 1       ; 7 uses
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.af, label %bb.ag, !prof !50

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.bg, align 8, !tbaa !356
  br label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NS0_7TypeIdsEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
end_hunk_0
